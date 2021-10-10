type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-sns") @new external createClient: unit => awsServiceClient = "SNSClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type topicName = string
type topicARN = string
type token = string
type subscriptionARN = string
type subject = string
type protocol = string
type nextToken = string
type messageStructure = string
type messageId = string
type message = string
type label = string
type delegate = string
type boolean_ = bool
type authenticateOnUnsubscribe = string
type attributeValue = string
type attributeName = string
type action = string
type account = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type string_ = string
@ocaml.doc("Enum listing out all supported destination phone number verification statuses. The following enum values are
        supported.
        1. PENDING : The destination phone number is pending verification.
        2. VERIFIED : The destination phone number is verified.")
type smssandboxPhoneNumberVerificationStatus = [@as("Verified") #Verified | @as("Pending") #Pending]
@ocaml.doc("Enum listing out all supported route types. The following enum values are supported.
        1. Transactional : Non-marketing traffic
        2. Promotional : Marketing
        3. Premium : Premium routes for OTP delivery to the carriers")
type routeType = [
  | @as("Premium") #Premium
  | @as("Promotional") #Promotional
  | @as("Transactional") #Transactional
]
type phoneNumberString = string
type phoneNumber = string
@ocaml.doc("String of Origination/Destination address including phone numbers and email addresses")
type otpcode = string
@ocaml.doc("Enum listing out all supported number capabilities.")
type numberCapability = [@as("VOICE") #VOICE | @as("MMS") #MMS | @as("SMS") #SMS]
type maxItemsListOriginationNumbers = int
type maxItems = int
@ocaml.doc("Supported language code for sending OTP message")
type languageCodeString = [
  | @as("zh-TW") #Zh_TW
  | @as("zh-CN") #Zh_CN
  | @as("kr-KR") #Kr_KR
  | @as("pt-BR") #Pt_BR
  | @as("ja-JP") #Ja_JP
  | @as("it-IT") #It_IT
  | @as("fr-FR") #Fr_FR
  | @as("fr-CA") #Fr_CA
  | @as("de-DE") #De_DE
  | @as("es-ES") #Es_ES
  | @as("es-419") #Es_419
  | @as("en-GB") #En_GB
  | @as("en-US") #En_US
]
@ocaml.doc(
  "The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. For example, GB or US."
)
type iso2CountryCode = string
type endpoint2 = string
type binary = NodeJs.Buffer.t
type amazonResourceName = string
type topicAttributesMap = Js.Dict.t<attributeValue>
@ocaml.doc("<p>A wrapper type for the topic's Amazon Resource Name (ARN). To retrieve a topic's
            attributes, use <code>GetTopicAttributes</code>.</p>")
type topic = {@ocaml.doc("<p>The topic's ARN.</p>") @as("TopicArn") topicArn: option<topicARN>}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>The list of tags to be added to the specified topic.</p>")
type tag = {
  @ocaml.doc("<p>The optional value portion of the tag.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>The required key portion of the tag.</p>") @as("Key") key: tagKey,
}
type subscriptionAttributesMap = Js.Dict.t<attributeValue>
@ocaml.doc("<p>A wrapper type for the attributes of an Amazon SNS subscription.</p>")
type subscription = {
  @ocaml.doc("<p>The ARN of the subscription's topic.</p>") @as("TopicArn")
  topicArn: option<topicARN>,
  @ocaml.doc("<p>The subscription's endpoint (format depends on the protocol).</p>") @as("Endpoint")
  endpoint: option<endpoint2>,
  @ocaml.doc("<p>The subscription's protocol.</p>") @as("Protocol") protocol: option<protocol>,
  @ocaml.doc("<p>The subscription's owner.</p>") @as("Owner") owner: option<account>,
  @ocaml.doc("<p>The subscription's ARN.</p>") @as("SubscriptionArn")
  subscriptionArn: option<subscriptionARN>,
}
@ocaml.doc("<p>A verified or pending destination phone number in the SMS sandbox.</p>
        <p>When you start using Amazon SNS to send SMS messages, your AWS account is in the
                <i>SMS sandbox</i>. The SMS sandbox provides a safe environment for 
                you to try Amazon SNS features without risking your reputation as an SMS sender. While your 
                account is in the SMS sandbox, you can use all of the features of Amazon SNS. However, you can send 
                SMS messages only to verified destination phone numbers. For more information, including how to 
                move out of the sandbox to send messages without restrictions, 
                see <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html\">SMS sandbox</a> in 
                the <i>Amazon SNS Developer Guide</i>.</p>")
type smssandboxPhoneNumber = {
  @ocaml.doc("<p>The destination phone number's verification status.</p>") @as("Status")
  status: option<smssandboxPhoneNumberVerificationStatus>,
  @ocaml.doc("<p>The destination phone number.</p>") @as("PhoneNumber")
  phoneNumber: option<phoneNumberString>,
}
type phoneNumberList = array<phoneNumber>
@ocaml.doc("List of number capability (SMS,MMS,Voice).")
type numberCapabilityList = array<numberCapability>
@ocaml.doc("<p>The user-specified message attribute value. For string data types, the value attribute
            has the same restrictions on the content as the message body. For more information, see
                <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_Publish.html\">Publish</a>.</p>
        <p>Name, type, and value must not be empty or null. In addition, the message body should
            not be empty or null. All parts of the message attribute, including name, type, and
            value, are included in the message size restriction, which is currently 256 KB (262,144
            bytes). For more information, see <a href=\"https://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html\">Amazon SNS message attributes</a> and
                <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html\">Publishing
                to a mobile phone</a> in the <i>Amazon SNS Developer Guide.</i>
         </p>")
type messageAttributeValue = {
  @ocaml.doc("<p>Binary type attributes can store any binary data, for example, compressed data,
            encrypted data, or images.</p>")
  @as("BinaryValue")
  binaryValue: option<binary>,
  @ocaml.doc("<p>Strings are Unicode with UTF8 binary encoding. For a list of code values, see <a href=\"https://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters\">ASCII Printable
                Characters</a>.</p>")
  @as("StringValue")
  stringValue: option<string_>,
  @ocaml.doc("<p>Amazon SNS supports the following logical data types: String, String.Array, Number, and
            Binary. For more information, see <a href=\"https://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html#SNSMessageAttributes.DataTypes\">Message
                Attribute Data Types</a>.</p>")
  @as("DataType")
  dataType: string_,
}
type mapStringToString = Js.Dict.t<string_>
type listString = array<string_>
type delegatesList = array<delegate>
type actionsList = array<action>
type topicsList = array<topic>
type tagList_ = array<tag>
type subscriptionsList = array<subscription>
type smssandboxPhoneNumberList = array<smssandboxPhoneNumber>
@ocaml.doc("<p>Platform application object.</p>")
type platformApplication = {
  @ocaml.doc("<p>Attributes for platform application object.</p>") @as("Attributes")
  attributes: option<mapStringToString>,
  @ocaml.doc("<p>PlatformApplicationArn for platform application object.</p>")
  @as("PlatformApplicationArn")
  platformApplicationArn: option<string_>,
}
@ocaml.doc("<p>A list of phone numbers and their metadata.</p>")
type phoneNumberInformation = {
  @ocaml.doc("<p>The capabilities of each phone number.</p>") @as("NumberCapabilities")
  numberCapabilities: option<numberCapabilityList>,
  @ocaml.doc("<p>The list of supported routes.</p>") @as("RouteType") routeType: option<routeType>,
  @ocaml.doc(
    "<p>The two-character code for the country or region, in ISO 3166-1 alpha-2 format.</p>"
  )
  @as("Iso2CountryCode")
  iso2CountryCode: option<iso2CountryCode>,
  @ocaml.doc("<p>The status of the phone number.</p>") @as("Status") status: option<string_>,
  @ocaml.doc("<p>The phone number.</p>") @as("PhoneNumber") phoneNumber: option<string_>,
  @ocaml.doc("<p>The date and time when the phone number was created.</p>") @as("CreatedAt")
  createdAt: option<timestamp_>,
}
type messageAttributeMap = Js.Dict.t<messageAttributeValue>
@ocaml.doc("<p>Endpoint for mobile app and device.</p>")
type endpoint = {
  @ocaml.doc("<p>Attributes for endpoint.</p>") @as("Attributes")
  attributes: option<mapStringToString>,
  @ocaml.doc("<p>EndpointArn for mobile app and device.</p>") @as("EndpointArn")
  endpointArn: option<string_>,
}
@ocaml.doc("List of customer owned phone numbers.")
type phoneNumberInformationList = array<phoneNumberInformation>
type listOfPlatformApplications = array<platformApplication>
type listOfEndpoints = array<endpoint>
@ocaml.doc("<fullname>Amazon Simple Notification Service</fullname>
        <p>Amazon Simple Notification Service (Amazon SNS) is a web service that enables you to build
            distributed web-enabled applications. Applications can use Amazon SNS to easily push
            real-time notification messages to interested subscribers over multiple delivery
            protocols. For more information about this product see the <a href=\"http://aws.amazon.com/sns/\">Amazon SNS product page</a>. For detailed information about Amazon SNS features
            and their associated API calls, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/\">Amazon SNS Developer Guide</a>. </p>
        <p>For information on the permissions you need to use this API, see <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sns-authentication-and-access-control.html\">Identity and access management in Amazon SNS</a> in the <i>Amazon SNS Developer
                Guide.</i>
         </p>
        <p>We also provide SDKs that enable you to access Amazon SNS from your preferred programming
            language. The SDKs contain functionality that automatically takes care of tasks such as:
            cryptographically signing your service requests, retrying requests, and handling error
            responses. For a list of available SDKs, go to <a href=\"http://aws.amazon.com/tools/\">Tools for Amazon Web Services</a>. </p>")
module VerifySMSSandboxPhoneNumber = {
  type t
  type request = {
    @ocaml.doc("<p>The OTP sent to the destination number from the
                <code>CreateSMSSandBoxPhoneNumber</code> call.</p>")
    @as("OneTimePassword")
    oneTimePassword: otpcode,
    @ocaml.doc("<p>The destination phone number to verify.</p>") @as("PhoneNumber")
    phoneNumber: phoneNumberString,
  }

  @module("@aws-sdk/client-sns") @new
  external new: request => t = "VerifySMSSandboxPhoneNumberCommand"
  let make = (~oneTimePassword, ~phoneNumber, ()) =>
    new({oneTimePassword: oneTimePassword, phoneNumber: phoneNumber})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module Unsubscribe = {
  type t
  @ocaml.doc("<p>Input for Unsubscribe action.</p>")
  type request = {
    @ocaml.doc("<p>The ARN of the subscription to be deleted.</p>") @as("SubscriptionArn")
    subscriptionArn: subscriptionARN,
  }

  @module("@aws-sdk/client-sns") @new external new: request => t = "UnsubscribeCommand"
  let make = (~subscriptionArn, ()) => new({subscriptionArn: subscriptionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetTopicAttributes = {
  type t
  @ocaml.doc("<p>Input for SetTopicAttributes action.</p>")
  type request = {
    @ocaml.doc("<p>The new value for the attribute.</p>") @as("AttributeValue")
    attributeValue: option<attributeValue>,
    @ocaml.doc("<p>A map of attributes with their corresponding values.</p>
        <p>The following lists the names, descriptions, and values of the special request
            parameters that the <code>SetTopicAttributes</code> action uses:</p>
        <ul>
            <li>
                <p>
                  <code>DeliveryPolicy</code> – The policy that defines how Amazon SNS retries
                    failed deliveries to HTTP/S endpoints.</p>
            </li>
            <li>
                <p>
                  <code>DisplayName</code> – The display name to use for a topic with SMS
                    subscriptions.</p>
            </li>
            <li>
                <p>
                  <code>Policy</code> – The policy that defines who can access your
                    topic. By default, only the topic owner can publish or subscribe to the
                    topic.</p>
            </li>
         </ul>
        
        <p>The following attribute applies only to <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html\">server-side-encryption</a>:</p>
        <ul>
            <li>
                <p>
                    <code>KmsMasterKeyId</code> – The ID of an AWS-managed customer master
                    key (CMK) for Amazon SNS or a custom CMK. For more information, see <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms\">Key
                        Terms</a>. For more examples, see <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters\">KeyId</a> in the <i>AWS Key Management Service API
                        Reference</i>. </p>
            </li>
         </ul>
        
        
        <p>The following attribute applies only to <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sns-fifo-topics.html\">FIFO topics</a>:</p>
        <ul>
            <li>
               <p>
                    <code>ContentBasedDeduplication</code> –  Enables content-based deduplication for
                    FIFO topics.</p>
               
                <ul>
                  <li>
                        <p>By default, <code>ContentBasedDeduplication</code> is set to <code>false</code>.
                            If you create a FIFO topic and this attribute is <code>false</code>, you must
                            specify a value for the <code>MessageDeduplicationId</code> parameter for the
                            <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_Publish.html\">Publish</a> action. </p>
                    </li>
                  <li>
                        <p>When you set <code>ContentBasedDeduplication</code> to <code>true</code>, 
                            Amazon SNS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using 
                            the body of the message (but not the attributes of the message).</p>
                        <p>(Optional) To override the generated value, you can specify a value
                            for the <code>MessageDeduplicationId</code> parameter for the <code>Publish</code>
                            action.</p>
                     </li>
               </ul>
            </li>
         </ul>")
    @as("AttributeName")
    attributeName: attributeName,
    @ocaml.doc("<p>The ARN of the topic to modify.</p>") @as("TopicArn") topicArn: topicARN,
  }

  @module("@aws-sdk/client-sns") @new external new: request => t = "SetTopicAttributesCommand"
  let make = (~attributeName, ~topicArn, ~attributeValue=?, ()) =>
    new({attributeValue: attributeValue, attributeName: attributeName, topicArn: topicArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetSubscriptionAttributes = {
  type t
  @ocaml.doc("<p>Input for SetSubscriptionAttributes action.</p>")
  type request = {
    @ocaml.doc("<p>The new value for the attribute in JSON format.</p>") @as("AttributeValue")
    attributeValue: option<attributeValue>,
    @ocaml.doc("<p>A map of attributes with their corresponding values.</p>
        <p>The following lists the names, descriptions, and values of the special request
            parameters that this action uses:</p>
        <ul>
            <li>
                <p>
                  <code>DeliveryPolicy</code> – The policy that defines how Amazon SNS retries
                    failed deliveries to HTTP/S endpoints.</p>
            </li>
            <li>
                <p>
                  <code>FilterPolicy</code> – The simple JSON object that lets your
                    subscriber receive only a subset of messages, rather than receiving every
                    message published to the topic.</p>
            </li>
            <li>
                <p>
                  <code>RawMessageDelivery</code> – When set to <code>true</code>,
                    enables raw message delivery to Amazon SQS or HTTP/S endpoints. This eliminates the
                    need for the endpoints to process JSON formatting, which is otherwise created
                    for Amazon SNS metadata.</p>
            </li>
            <li>
                <p>
                  <code>RedrivePolicy</code> – When specified, sends undeliverable messages to the specified Amazon SQS dead-letter queue. 
    Messages that can't be delivered due to client errors (for example, when the subscribed endpoint is unreachable)
    or server errors (for example, when the service that powers the subscribed endpoint becomes unavailable) are held 
    in the dead-letter queue for further analysis or reprocessing.</p>
            </li>
         </ul>
        
        
        <p>The following attribute applies only to Amazon Kinesis Data Firehose delivery stream subscriptions:</p>
         <ul>
            <li>
               <p>
                  <code>SubscriptionRoleArn</code> – The ARN of the IAM role that has the following:</p>
                <ul>
                  <li>
                        <p>Permission to write to the Kinesis Data Firehose delivery stream</p>
                    </li>
                  <li>
                        <p>Amazon SNS listed as a trusted entity</p>
                    </li>
               </ul>
                <p>Specifying a valid ARN for this attribute is required for Kinesis Data Firehose delivery stream subscriptions. 
                For more information, see <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html\">Fanout 
                    to Kinesis Data Firehose delivery streams</a> in the <i>Amazon SNS Developer Guide</i>.</p>
                    </li>
         </ul>")
    @as("AttributeName")
    attributeName: attributeName,
    @ocaml.doc("<p>The ARN of the subscription to modify.</p>") @as("SubscriptionArn")
    subscriptionArn: subscriptionARN,
  }

  @module("@aws-sdk/client-sns") @new
  external new: request => t = "SetSubscriptionAttributesCommand"
  let make = (~attributeName, ~subscriptionArn, ~attributeValue=?, ()) =>
    new({
      attributeValue: attributeValue,
      attributeName: attributeName,
      subscriptionArn: subscriptionArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemovePermission = {
  type t
  @ocaml.doc("<p>Input for RemovePermission action.</p>")
  type request = {
    @ocaml.doc("<p>The unique label of the statement you want to remove.</p>") @as("Label")
    label: label,
    @ocaml.doc("<p>The ARN of the topic whose access control policy you wish to modify.</p>")
    @as("TopicArn")
    topicArn: topicARN,
  }

  @module("@aws-sdk/client-sns") @new external new: request => t = "RemovePermissionCommand"
  let make = (~label, ~topicArn, ()) => new({label: label, topicArn: topicArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module OptInPhoneNumber = {
  type t
  @ocaml.doc("<p>Input for the OptInPhoneNumber action.</p>")
  type request = {
    @ocaml.doc("<p>The phone number to opt in. Use E.164 format.</p>") phoneNumber: phoneNumber,
  }

  @module("@aws-sdk/client-sns") @new external new: request => t = "OptInPhoneNumberCommand"
  let make = (~phoneNumber, ()) => new({phoneNumber: phoneNumber})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetSMSSandboxAccountStatus = {
  type t

  type response = {
    @ocaml.doc("<p>Indicates whether the calling account is in the SMS sandbox.</p>")
    @as("IsInSandbox")
    isInSandbox: boolean_,
  }
  @module("@aws-sdk/client-sns") @new external new: unit => t = "GetSMSSandboxAccountStatusCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTopic = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the topic you want to delete.</p>") @as("TopicArn")
    topicArn: topicARN,
  }

  @module("@aws-sdk/client-sns") @new external new: request => t = "DeleteTopicCommand"
  let make = (~topicArn, ()) => new({topicArn: topicArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSMSSandboxPhoneNumber = {
  type t
  type request = {
    @ocaml.doc("<p>The destination phone number to delete.</p>") @as("PhoneNumber")
    phoneNumber: phoneNumberString,
  }

  @module("@aws-sdk/client-sns") @new
  external new: request => t = "DeleteSMSSandboxPhoneNumberCommand"
  let make = (~phoneNumber, ()) => new({phoneNumber: phoneNumber})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePlatformApplication = {
  type t
  @ocaml.doc("<p>Input for DeletePlatformApplication action.</p>")
  type request = {
    @ocaml.doc("<p>PlatformApplicationArn of platform application object to delete.</p>")
    @as("PlatformApplicationArn")
    platformApplicationArn: string_,
  }

  @module("@aws-sdk/client-sns") @new
  external new: request => t = "DeletePlatformApplicationCommand"
  let make = (~platformApplicationArn, ()) => new({platformApplicationArn: platformApplicationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEndpoint = {
  type t
  @ocaml.doc("<p>Input for DeleteEndpoint action.</p>")
  type request = {
    @ocaml.doc("<p>EndpointArn of endpoint to delete.</p>") @as("EndpointArn") endpointArn: string_,
  }

  @module("@aws-sdk/client-sns") @new external new: request => t = "DeleteEndpointCommand"
  let make = (~endpointArn, ()) => new({endpointArn: endpointArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateSMSSandboxPhoneNumber = {
  type t
  type request = {
    @ocaml.doc("<p>The language to use for sending the OTP. The default value is
            <code>en-US</code>.</p>")
    @as("LanguageCode")
    languageCode: option<languageCodeString>,
    @ocaml.doc("<p>The destination phone number to verify. On verification, Amazon SNS adds this phone number
            to the list of verified phone numbers that you can send SMS messages to.</p>")
    @as("PhoneNumber")
    phoneNumber: phoneNumberString,
  }

  @module("@aws-sdk/client-sns") @new
  external new: request => t = "CreateSMSSandboxPhoneNumberCommand"
  let make = (~phoneNumber, ~languageCode=?, ()) =>
    new({languageCode: languageCode, phoneNumber: phoneNumber})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ConfirmSubscription = {
  type t
  @ocaml.doc("<p>Input for ConfirmSubscription action.</p>")
  type request = {
    @ocaml.doc("<p>Disallows unauthenticated unsubscribes of the subscription. If the value of this
            parameter is <code>true</code> and the request has an AWS signature, then only the topic
            owner and the subscription owner can unsubscribe the endpoint. The unsubscribe action
            requires AWS authentication. </p>")
    @as("AuthenticateOnUnsubscribe")
    authenticateOnUnsubscribe: option<authenticateOnUnsubscribe>,
    @ocaml.doc(
      "<p>Short-lived token sent to an endpoint during the <code>Subscribe</code> action.</p>"
    )
    @as("Token")
    token: token,
    @ocaml.doc("<p>The ARN of the topic for which you wish to confirm a subscription.</p>")
    @as("TopicArn")
    topicArn: topicARN,
  }
  @ocaml.doc("<p>Response for ConfirmSubscriptions action.</p>")
  type response = {
    @ocaml.doc("<p>The ARN of the created subscription.</p>") @as("SubscriptionArn")
    subscriptionArn: option<subscriptionARN>,
  }
  @module("@aws-sdk/client-sns") @new external new: request => t = "ConfirmSubscriptionCommand"
  let make = (~token, ~topicArn, ~authenticateOnUnsubscribe=?, ()) =>
    new({authenticateOnUnsubscribe: authenticateOnUnsubscribe, token: token, topicArn: topicArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CheckIfPhoneNumberIsOptedOut = {
  type t
  @ocaml.doc("<p>The input for the <code>CheckIfPhoneNumberIsOptedOut</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The phone number for which you want to check the opt out status.</p>")
    phoneNumber: phoneNumber,
  }
  @ocaml.doc("<p>The response from the <code>CheckIfPhoneNumberIsOptedOut</code> action.</p>")
  type response = {
    @ocaml.doc("<p>Indicates whether the phone number is opted out:</p>
        <ul>
            <li>
                <p>
                    <code>true</code> – The phone number is opted out, meaning you cannot publish
                    SMS messages to it.</p>
            </li>
            <li>
                <p>
                    <code>false</code> – The phone number is opted in, meaning you can publish SMS
                    messages to it.</p>
            </li>
         </ul>")
    isOptedOut: option<boolean_>,
  }
  @module("@aws-sdk/client-sns") @new
  external new: request => t = "CheckIfPhoneNumberIsOptedOutCommand"
  let make = (~phoneNumber, ()) => new({phoneNumber: phoneNumber})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tag keys to remove from the specified topic.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the topic from which to remove tags.</p>") @as("ResourceArn")
    resourceArn: amazonResourceName,
  }

  @module("@aws-sdk/client-sns") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module Subscribe = {
  type t
  @ocaml.doc("<p>Input for Subscribe action.</p>")
  type request = {
    @ocaml.doc("<p>Sets whether the response from the <code>Subscribe</code> request includes the
            subscription ARN, even if the subscription is not yet confirmed.</p>
        <p>If you set this parameter to <code>true</code>, the response includes the ARN in all
            cases, even if the subscription is not yet confirmed. In addition to the ARN for
            confirmed subscriptions, the response also includes the <code>pending
                subscription</code> ARN value for subscriptions that aren't yet confirmed. A
            subscription becomes confirmed when the subscriber calls the
                <code>ConfirmSubscription</code> action with a confirmation token.</p>
        <p></p>
        <p>The default value is <code>false</code>.</p>")
    @as("ReturnSubscriptionArn")
    returnSubscriptionArn: option<boolean_>,
    @ocaml.doc("<p>A map of attributes with their corresponding values.</p>
        <p>The following lists the names, descriptions, and values of the special request
            parameters that the <code>SetTopicAttributes</code> action uses:</p>
        <ul>
            <li>
                <p>
                  <code>DeliveryPolicy</code> – The policy that defines how Amazon SNS retries
                    failed deliveries to HTTP/S endpoints.</p>
            </li>
            <li>
                <p>
                  <code>FilterPolicy</code> – The simple JSON object that lets your
                    subscriber receive only a subset of messages, rather than receiving every
                    message published to the topic.</p>
            </li>
            <li>
                <p>
                  <code>RawMessageDelivery</code> – When set to <code>true</code>,
                    enables raw message delivery to Amazon SQS or HTTP/S endpoints. This eliminates the
                    need for the endpoints to process JSON formatting, which is otherwise created
                    for Amazon SNS metadata.</p>
            </li>
            <li>
                <p>
                  <code>RedrivePolicy</code> – When specified, sends undeliverable messages to the specified Amazon SQS dead-letter queue. 
    Messages that can't be delivered due to client errors (for example, when the subscribed endpoint is unreachable)
    or server errors (for example, when the service that powers the subscribed endpoint becomes unavailable) are held 
    in the dead-letter queue for further analysis or reprocessing.</p>
            </li>
         </ul>
        
        
        <p>The following attribute applies only to Amazon Kinesis Data Firehose delivery stream subscriptions:</p>
         <ul>
            <li>
               <p>
                  <code>SubscriptionRoleArn</code> – The ARN of the IAM role that has the following:</p>
                <ul>
                  <li>
                        <p>Permission to write to the Kinesis Data Firehose delivery stream</p>
                    </li>
                  <li>
                        <p>Amazon SNS listed as a trusted entity</p>
                    </li>
               </ul>
                <p>Specifying a valid ARN for this attribute is required for Kinesis Data Firehose delivery stream subscriptions. 
                For more information, see <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html\">Fanout 
                    to Kinesis Data Firehose delivery streams</a> in the <i>Amazon SNS Developer Guide</i>.</p>
                    </li>
         </ul>")
    @as("Attributes")
    attributes: option<subscriptionAttributesMap>,
    @ocaml.doc("<p>The endpoint that you want to receive notifications. Endpoints vary by
            protocol:</p>
        <ul>
            <li>
                <p>For the <code>http</code> protocol, the (public) endpoint is a URL beginning
                    with <code>http://</code>.</p>
            </li>
            <li>
                <p>For the <code>https</code> protocol, the (public) endpoint is a URL beginning
                    with <code>https://</code>.</p>
            </li>
            <li>
                <p>For the <code>email</code> protocol, the endpoint is an email address.</p>
            </li>
            <li>
                <p>For the <code>email-json</code> protocol, the endpoint is an email
                    address.</p>
            </li>
            <li>
                <p>For the <code>sms</code> protocol, the endpoint is a phone number of an
                    SMS-enabled device.</p>
            </li>
            <li>
                <p>For the <code>sqs</code> protocol, the endpoint is the ARN of an Amazon SQS
                    queue.</p>
            </li>
            <li>
                <p>For the <code>application</code> protocol, the endpoint is the EndpointArn of
                    a mobile app and device.</p>
            </li>
            <li>
                <p>For the <code>lambda</code> protocol, the endpoint is the ARN of an AWS Lambda
                    function.</p>
            </li>
            <li>
                <p>For the <code>firehose</code> protocol, the endpoint is the ARN of an Amazon
                    Kinesis Data Firehose delivery stream.</p>
            </li>
         </ul>")
    @as("Endpoint")
    endpoint: option<endpoint2>,
    @ocaml.doc("<p>The protocol that you want to use. Supported protocols include:</p>
        <ul>
            <li>
                <p>
                  <code>http</code> – delivery of JSON-encoded message via HTTP
                    POST</p>
            </li>
            <li>
                <p>
                  <code>https</code> – delivery of JSON-encoded message via HTTPS
                    POST</p>
            </li>
            <li>
                <p>
                  <code>email</code> – delivery of message via SMTP</p>
            </li>
            <li>
                <p>
                  <code>email-json</code> – delivery of JSON-encoded message via
                    SMTP</p>
            </li>
            <li>
                <p>
                  <code>sms</code> – delivery of message via SMS</p>
            </li>
            <li>
                <p>
                  <code>sqs</code> – delivery of JSON-encoded message to an Amazon SQS
                    queue</p>
            </li>
            <li>
                <p>
                  <code>application</code> – delivery of JSON-encoded message to an
                    EndpointArn for a mobile app and device</p>
            </li>
            <li>
                <p>
                  <code>lambda</code> – delivery of JSON-encoded message to an AWS Lambda
                    function</p>
            </li>
            <li>
                <p>
                  <code>firehose</code> – delivery of JSON-encoded message to an Amazon
                    Kinesis Data Firehose delivery stream.</p>
            </li>
         </ul>")
    @as("Protocol")
    protocol: protocol,
    @ocaml.doc("<p>The ARN of the topic you want to subscribe to.</p>") @as("TopicArn")
    topicArn: topicARN,
  }
  @ocaml.doc("<p>Response for Subscribe action.</p>")
  type response = {
    @ocaml.doc("<p>The ARN of the subscription if it is confirmed, or the string \"pending confirmation\"
            if the subscription requires confirmation. However, if the API request parameter
                <code>ReturnSubscriptionArn</code> is true, then the value is always the
            subscription ARN, even if the subscription requires confirmation.</p>")
    @as("SubscriptionArn")
    subscriptionArn: option<subscriptionARN>,
  }
  @module("@aws-sdk/client-sns") @new external new: request => t = "SubscribeCommand"
  let make = (~protocol, ~topicArn, ~returnSubscriptionArn=?, ~attributes=?, ~endpoint=?, ()) =>
    new({
      returnSubscriptionArn: returnSubscriptionArn,
      attributes: attributes,
      endpoint: endpoint,
      protocol: protocol,
      topicArn: topicArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetSMSAttributes = {
  type t
  @ocaml.doc("<p>The input for the SetSMSAttributes action.</p>")
  type request = {
    @ocaml.doc("<p>The default settings for sending SMS messages from your account. You can set values
            for the following attribute names:</p>
        <p>
            <code>MonthlySpendLimit</code> – The maximum amount in USD that you are willing to spend
            each month to send SMS messages. When Amazon SNS determines that sending an SMS message would
            incur a cost that exceeds this limit, it stops sending SMS messages within
            minutes.</p>
        <important>
            <p>Amazon SNS stops sending SMS messages within minutes of the limit being crossed. During
                that interval, if you continue to send SMS messages, you will incur costs that
                exceed your limit.</p>
        </important>
        <p>By default, the spend limit is set to the maximum allowed by Amazon SNS. If you want to
            raise the limit, submit an <a href=\"https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-sns\">SNS Limit Increase case</a>. For <b>New limit
                value</b>, enter your desired monthly spend limit. In the <b>Use Case Description</b> field, explain that you are requesting
            an SMS monthly spend limit increase.</p>
        <p>
            <code>DeliveryStatusIAMRole</code> – The ARN of the IAM role that allows Amazon SNS to write
            logs about SMS deliveries in CloudWatch Logs. For each SMS message that you send, Amazon SNS
            writes a log that includes the message price, the success or failure status, the reason
            for failure (if the message failed), the message dwell time, and other
            information.</p>
        <p>
            <code>DeliveryStatusSuccessSamplingRate</code> – The percentage of successful SMS
            deliveries for which Amazon SNS will write logs in CloudWatch Logs. The value can be an
            integer from 0 - 100. For example, to write logs only for failed deliveries, set this
            value to <code>0</code>. To write logs for 10% of your successful deliveries, set it to
                <code>10</code>.</p>
        <p>
            <code>DefaultSenderID</code> – A string, such as your business brand, that is displayed
            as the sender on the receiving device. Support for sender IDs varies by country. The
            sender ID can be 1 - 11 alphanumeric characters, and it must contain at least one
            letter.</p>
        <p>
            <code>DefaultSMSType</code> – The type of SMS message that you will send by default. You
            can assign the following values:</p>
        <ul>
            <li>
                <p>
                    <code>Promotional</code> – (Default) Noncritical messages, such as marketing
                    messages. Amazon SNS optimizes the message delivery to incur the lowest cost.</p>
            </li>
            <li>
                <p>
                    <code>Transactional</code> – Critical messages that support customer
                    transactions, such as one-time passcodes for multi-factor authentication. Amazon
                    SNS optimizes the message delivery to achieve the highest reliability.</p>
            </li>
         </ul>
        <p>
            <code>UsageReportS3Bucket</code> – The name of the Amazon S3 bucket to receive daily SMS
            usage reports from Amazon SNS. Each day, Amazon SNS will deliver a usage report as a CSV file to
            the bucket. The report includes the following information for each SMS message that was
            successfully delivered by your account:</p>
        <ul>
            <li>
                <p>Time that the message was published (in UTC)</p>
            </li>
            <li>
                <p>Message ID</p>
            </li>
            <li>
                <p>Destination phone number</p>
            </li>
            <li>
                <p>Message type</p>
            </li>
            <li>
                <p>Delivery status</p>
            </li>
            <li>
                <p>Message price (in USD)</p>
            </li>
            <li>
                <p>Part number (a message is split into multiple parts if it is too long for a
                    single message)</p>
            </li>
            <li>
                <p>Total number of parts</p>
            </li>
         </ul>
        <p>To receive the report, the bucket must have a policy that allows the Amazon SNS service
            principle to perform the <code>s3:PutObject</code> and <code>s3:GetBucketLocation</code>
            actions.</p>
        <p>For an example bucket policy and usage report, see <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sms_stats.html\">Monitoring SMS Activity</a> in the
                <i>Amazon SNS Developer Guide</i>.</p>")
    attributes: mapStringToString,
  }

  @module("@aws-sdk/client-sns") @new external new: request => t = "SetSMSAttributesCommand"
  let make = (~attributes, ()) => new({attributes: attributes})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetPlatformApplicationAttributes = {
  type t
  @ocaml.doc("<p>Input for SetPlatformApplicationAttributes action.</p>")
  type request = {
    @ocaml.doc("<p>A map of the platform application attributes. Attributes in this map include the
            following:</p>
        <ul>
            <li>
                <p>
                    <code>PlatformCredential</code> – The credential received from the
                    notification service. For <code>APNS</code> and <code>APNS_SANDBOX</code>,
                        <code>PlatformCredential</code> is <code>private key</code>. For
                        <code>GCM</code> (Firebase Cloud Messaging), <code>PlatformCredential</code>
                    is <code>API key</code>. For <code>ADM</code>, <code>PlatformCredential</code>
                    is <code>client secret</code>.</p>
            </li>
            <li>
                <p>
                    <code>PlatformPrincipal</code> – The principal received from the
                    notification service. For <code>APNS</code> and <code>APNS_SANDBOX</code>,
                        <code>PlatformPrincipal</code> is <code>SSL certificate</code>. For
                        <code>GCM</code> (Firebase Cloud Messaging), there is no
                        <code>PlatformPrincipal</code>. For <code>ADM</code>,
                        <code>PlatformPrincipal</code> is <code>client id</code>.</p>
            </li>
            <li>
                <p>
                    <code>EventEndpointCreated</code> – Topic ARN to which
                        <code>EndpointCreated</code> event notifications are sent.</p>
            </li>
            <li>
                <p>
                    <code>EventEndpointDeleted</code> – Topic ARN to which
                        <code>EndpointDeleted</code> event notifications are sent.</p>
            </li>
            <li>
                <p>
                    <code>EventEndpointUpdated</code> – Topic ARN to which
                        <code>EndpointUpdate</code> event notifications are sent.</p>
            </li>
            <li>
                <p>
                    <code>EventDeliveryFailure</code> – Topic ARN to which
                        <code>DeliveryFailure</code> event notifications are sent upon Direct
                    Publish delivery failure (permanent) to one of the application's
                    endpoints.</p>
            </li>
            <li>
                <p>
                    <code>SuccessFeedbackRoleArn</code> – IAM role ARN used to give Amazon SNS
                    write access to use CloudWatch Logs on your behalf.</p>
            </li>
            <li>
                <p>
                    <code>FailureFeedbackRoleArn</code> – IAM role ARN used to give Amazon SNS
                    write access to use CloudWatch Logs on your behalf.</p>
            </li>
            <li>
                <p>
                    <code>SuccessFeedbackSampleRate</code> – Sample rate percentage (0-100)
                    of successfully delivered messages.</p>
            </li>
         </ul>")
    @as("Attributes")
    attributes: mapStringToString,
    @ocaml.doc("<p>PlatformApplicationArn for SetPlatformApplicationAttributes action.</p>")
    @as("PlatformApplicationArn")
    platformApplicationArn: string_,
  }

  @module("@aws-sdk/client-sns") @new
  external new: request => t = "SetPlatformApplicationAttributesCommand"
  let make = (~attributes, ~platformApplicationArn, ()) =>
    new({attributes: attributes, platformApplicationArn: platformApplicationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetEndpointAttributes = {
  type t
  @ocaml.doc("<p>Input for SetEndpointAttributes action.</p>")
  type request = {
    @ocaml.doc("<p>A map of the endpoint attributes. Attributes in this map include the following:</p>
        <ul>
            <li>
                <p>
                    <code>CustomUserData</code> – arbitrary user data to associate with the
                    endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and
                    less than 2KB.</p>
            </li>
            <li>
                <p>
                    <code>Enabled</code> – flag that enables/disables delivery to the
                    endpoint. Amazon SNS will set this to false when a notification service indicates to
                    Amazon SNS that the endpoint is invalid. Users can set it back to true, typically
                    after updating Token.</p>
            </li>
            <li>
                <p>
                    <code>Token</code> – device token, also referred to as a registration id,
                    for an app and mobile device. This is returned from the notification service
                    when an app and mobile device are registered with the notification
                    service.</p>
            </li>
         </ul>")
    @as("Attributes")
    attributes: mapStringToString,
    @ocaml.doc("<p>EndpointArn used for SetEndpointAttributes action.</p>") @as("EndpointArn")
    endpointArn: string_,
  }

  @module("@aws-sdk/client-sns") @new external new: request => t = "SetEndpointAttributesCommand"
  let make = (~attributes, ~endpointArn, ()) =>
    new({attributes: attributes, endpointArn: endpointArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListPhoneNumbersOptedOut = {
  type t
  @ocaml.doc("<p>The input for the <code>ListPhoneNumbersOptedOut</code> action.</p>")
  type request = {
    @ocaml.doc("<p>A <code>NextToken</code> string is used when you call the
                <code>ListPhoneNumbersOptedOut</code> action to retrieve additional records that are
            available after the first page of results.</p>")
    nextToken: option<string_>,
  }
  @ocaml.doc("<p>The response from the <code>ListPhoneNumbersOptedOut</code> action.</p>")
  type response = {
    @ocaml.doc("<p>A <code>NextToken</code> string is returned when you call the
                <code>ListPhoneNumbersOptedOut</code> action if additional records are available
            after the first page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of phone numbers that are opted out of receiving SMS messages. The list is
            paginated, and each page can contain up to 100 phone numbers.</p>")
    phoneNumbers: option<phoneNumberList>,
  }
  @module("@aws-sdk/client-sns") @new external new: request => t = "ListPhoneNumbersOptedOutCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTopicAttributes = {
  type t
  @ocaml.doc("<p>Input for GetTopicAttributes action.</p>")
  type request = {
    @ocaml.doc("<p>The ARN of the topic whose properties you want to get.</p>") @as("TopicArn")
    topicArn: topicARN,
  }
  @ocaml.doc("<p>Response for GetTopicAttributes action.</p>")
  type response = {
    @ocaml.doc("<p>A map of the topic's attributes. Attributes in this map include the following:</p>
        <ul>
            <li>
                <p>
                  <code>DeliveryPolicy</code> – The JSON serialization of the topic's
                    delivery policy.</p>
            </li>
            <li>
                <p>
                  <code>DisplayName</code> – The human-readable name used in the
                        <code>From</code> field for notifications to <code>email</code> and
                        <code>email-json</code> endpoints.</p>
            </li>
            <li>
                <p>
                  <code>Owner</code> – The AWS account ID of the topic's owner.</p>
            </li>
            <li>
                <p>
                  <code>Policy</code> – The JSON serialization of the topic's access
                    control policy.</p>
            </li>
            <li>
                <p>
                  <code>SubscriptionsConfirmed</code> – The number of confirmed
                    subscriptions for the topic.</p>
            </li>
            <li>
                <p>
                  <code>SubscriptionsDeleted</code> – The number of deleted subscriptions
                    for the topic.</p>
            </li>
            <li>
                <p>
                  <code>SubscriptionsPending</code> – The number of subscriptions pending
                    confirmation for the topic.</p>
            </li>
            <li>
                <p>
                  <code>TopicArn</code> – The topic's ARN.</p>
            </li>
            <li>
                <p>
                  <code>EffectiveDeliveryPolicy</code> – The JSON serialization of the
                    effective delivery policy, taking system defaults into account.</p>
            </li>
         </ul>
        
        <p>The following attribute applies only to <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html\">server-side-encryption</a>:</p>
        <ul>
            <li>
                <p>
                  <code>KmsMasterKeyId</code> - The ID of an AWS-managed customer master key
                    (CMK) for Amazon SNS or a custom CMK. For more information, see <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms\">Key
                        Terms</a>. For more examples, see <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters\">KeyId</a> in the <i>AWS Key Management Service API
                        Reference</i>.</p>
            </li>
         </ul>
        
        
        <p>The following attributes apply only to <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sns-fifo-topics.html\">FIFO topics</a>:</p>
        <ul>
            <li>
               <p>
                  <code>FifoTopic</code> – When this is set to <code>true</code>, a FIFO
                topic is created.</p>
            </li>
            <li>
               <p>
                    <code>ContentBasedDeduplication</code> –  Enables content-based deduplication for
                    FIFO topics.</p>
               
                <ul>
                  <li>
                        <p>By default, <code>ContentBasedDeduplication</code> is set to <code>false</code>.
                            If you create a FIFO topic and this attribute is <code>false</code>, you must
                            specify a value for the <code>MessageDeduplicationId</code> parameter for the
                            <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_Publish.html\">Publish</a> action. </p>
                    </li>
                  <li>
                        <p>When you set <code>ContentBasedDeduplication</code> to <code>true</code>, 
                            Amazon SNS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using 
                            the body of the message (but not the attributes of the message).</p>
                        <p>(Optional) To override the generated value, you can specify a value
                            for the <code>MessageDeduplicationId</code> parameter for the <code>Publish</code>
                            action.</p>
                     </li>
               </ul>
            </li>
         </ul>")
    @as("Attributes")
    attributes: option<topicAttributesMap>,
  }
  @module("@aws-sdk/client-sns") @new external new: request => t = "GetTopicAttributesCommand"
  let make = (~topicArn, ()) => new({topicArn: topicArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSubscriptionAttributes = {
  type t
  @ocaml.doc("<p>Input for GetSubscriptionAttributes.</p>")
  type request = {
    @ocaml.doc("<p>The ARN of the subscription whose properties you want to get.</p>")
    @as("SubscriptionArn")
    subscriptionArn: subscriptionARN,
  }
  @ocaml.doc("<p>Response for GetSubscriptionAttributes action.</p>")
  type response = {
    @ocaml.doc("<p>A map of the subscription's attributes. Attributes in this map include the
            following:</p>
        <ul>
            <li>
                <p>
                    <code>ConfirmationWasAuthenticated</code> – <code>true</code> if the
                    subscription confirmation request was authenticated.</p>
            </li>
            <li>
                <p>
                    <code>DeliveryPolicy</code> – The JSON serialization of the
                    subscription's delivery policy.</p>
            </li>
            <li>
                <p>
                    <code>EffectiveDeliveryPolicy</code> – The JSON serialization of the
                    effective delivery policy that takes into account the topic delivery policy and
                    account system defaults.</p>
            </li>
            <li>
                <p>
                    <code>FilterPolicy</code> – The filter policy JSON that is assigned to
                    the subscription. For more information, see <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sns-message-filtering.html\">Amazon SNS Message
                        Filtering</a> in the <i>Amazon SNS Developer Guide</i>.</p>
            </li>
            <li>
                <p>
                    <code>Owner</code> – The AWS account ID of the subscription's
                    owner.</p>
            </li>
            <li>
                <p>
                    <code>PendingConfirmation</code> – <code>true</code> if the subscription
                    hasn't been confirmed. To confirm a pending subscription, call the
                        <code>ConfirmSubscription</code> action with a confirmation token.</p>
            </li>
            <li>
                <p>
                    <code>RawMessageDelivery</code> – <code>true</code> if raw message
                    delivery is enabled for the subscription. Raw messages are free of JSON
                    formatting and can be sent to HTTP/S and Amazon SQS endpoints.</p>
            </li>
            <li>
                <p>
                  <code>RedrivePolicy</code> – When specified, sends undeliverable messages to the specified Amazon SQS dead-letter queue. 
    Messages that can't be delivered due to client errors (for example, when the subscribed endpoint is unreachable)
    or server errors (for example, when the service that powers the subscribed endpoint becomes unavailable) are held 
    in the dead-letter queue for further analysis or reprocessing.</p>
            </li>
            <li>
                <p>
                    <code>SubscriptionArn</code> – The subscription's ARN.</p>
            </li>
            <li>
                <p>
                    <code>TopicArn</code> – The topic ARN that the subscription is associated
                    with.</p>
            </li>
         </ul>
        
        <p>The following attribute applies only to Amazon Kinesis Data Firehose delivery stream subscriptions:</p>
         <ul>
            <li>
               <p>
                  <code>SubscriptionRoleArn</code> – The ARN of the IAM role that has the following:</p>
                <ul>
                  <li>
                        <p>Permission to write to the Kinesis Data Firehose delivery stream</p>
                    </li>
                  <li>
                        <p>Amazon SNS listed as a trusted entity</p>
                    </li>
               </ul>
                <p>Specifying a valid ARN for this attribute is required for Kinesis Data Firehose delivery stream subscriptions. 
                For more information, see <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html\">Fanout 
                    to Kinesis Data Firehose delivery streams</a> in the <i>Amazon SNS Developer Guide</i>.</p>
                    </li>
         </ul>")
    @as("Attributes")
    attributes: option<subscriptionAttributesMap>,
  }
  @module("@aws-sdk/client-sns") @new
  external new: request => t = "GetSubscriptionAttributesCommand"
  let make = (~subscriptionArn, ()) => new({subscriptionArn: subscriptionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSMSAttributes = {
  type t
  @ocaml.doc("<p>The input for the <code>GetSMSAttributes</code> request.</p>")
  type request = {
    @ocaml.doc("<p>A list of the individual attribute names, such as <code>MonthlySpendLimit</code>, for
            which you want values.</p>
        <p>For all attribute names, see <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_SetSMSAttributes.html\">SetSMSAttributes</a>.</p>
        <p>If you don't use this parameter, Amazon SNS returns all SMS attributes.</p>")
    attributes: option<listString>,
  }
  @ocaml.doc("<p>The response from the <code>GetSMSAttributes</code> request.</p>")
  type response = {
    @ocaml.doc("<p>The SMS attribute names and their values.</p>")
    attributes: option<mapStringToString>,
  }
  @module("@aws-sdk/client-sns") @new external new: request => t = "GetSMSAttributesCommand"
  let make = (~attributes=?, ()) => new({attributes: attributes})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPlatformApplicationAttributes = {
  type t
  @ocaml.doc("<p>Input for GetPlatformApplicationAttributes action.</p>")
  type request = {
    @ocaml.doc("<p>PlatformApplicationArn for GetPlatformApplicationAttributesInput.</p>")
    @as("PlatformApplicationArn")
    platformApplicationArn: string_,
  }
  @ocaml.doc("<p>Response for GetPlatformApplicationAttributes action.</p>")
  type response = {
    @ocaml.doc("<p>Attributes include the following:</p>
        <ul>
            <li>
                <p>
                    <code>EventEndpointCreated</code> – Topic ARN to which EndpointCreated
                    event notifications should be sent.</p>
            </li>
            <li>
                <p>
                    <code>EventEndpointDeleted</code> – Topic ARN to which EndpointDeleted
                    event notifications should be sent.</p>
            </li>
            <li>
                <p>
                    <code>EventEndpointUpdated</code> – Topic ARN to which EndpointUpdate
                    event notifications should be sent.</p>
            </li>
            <li>
                <p>
                    <code>EventDeliveryFailure</code> – Topic ARN to which DeliveryFailure
                    event notifications should be sent upon Direct Publish delivery failure
                    (permanent) to one of the application's endpoints.</p>
            </li>
         </ul>")
    @as("Attributes")
    attributes: option<mapStringToString>,
  }
  @module("@aws-sdk/client-sns") @new
  external new: request => t = "GetPlatformApplicationAttributesCommand"
  let make = (~platformApplicationArn, ()) => new({platformApplicationArn: platformApplicationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEndpointAttributes = {
  type t
  @ocaml.doc("<p>Input for GetEndpointAttributes action.</p>")
  type request = {
    @ocaml.doc("<p>EndpointArn for GetEndpointAttributes input.</p>") @as("EndpointArn")
    endpointArn: string_,
  }
  @ocaml.doc("<p>Response from GetEndpointAttributes of the EndpointArn.</p>")
  type response = {
    @ocaml.doc("<p>Attributes include the following:</p>
        <ul>
            <li>
                <p>
                    <code>CustomUserData</code> – arbitrary user data to associate with the
                    endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and
                    less than 2KB.</p>
            </li>
            <li>
                <p>
                    <code>Enabled</code> – flag that enables/disables delivery to the
                    endpoint. Amazon SNS will set this to false when a notification service indicates to
                    Amazon SNS that the endpoint is invalid. Users can set it back to true, typically
                    after updating Token.</p>
            </li>
            <li>
                <p>
                    <code>Token</code> – device token, also referred to as a registration id,
                    for an app and mobile device. This is returned from the notification service
                    when an app and mobile device are registered with the notification
                    service.</p>
                <note>
                    <p>The device token for the iOS platform is returned in lowercase.</p>
                </note>
            </li>
         </ul>")
    @as("Attributes")
    attributes: option<mapStringToString>,
  }
  @module("@aws-sdk/client-sns") @new external new: request => t = "GetEndpointAttributesCommand"
  let make = (~endpointArn, ()) => new({endpointArn: endpointArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePlatformEndpoint = {
  type t
  @ocaml.doc("<p>Input for CreatePlatformEndpoint action.</p>")
  type request = {
    @ocaml.doc(
      "<p>For a list of attributes, see <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_SetEndpointAttributes.html\">SetEndpointAttributes</a>.</p>"
    )
    @as("Attributes")
    attributes: option<mapStringToString>,
    @ocaml.doc("<p>Arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The
            data must be in UTF-8 format and less than 2KB.</p>")
    @as("CustomUserData")
    customUserData: option<string_>,
    @ocaml.doc("<p>Unique identifier created by the notification service for an app on a device. The
            specific name for Token will vary, depending on which notification service is being
            used. For example, when using APNS as the notification service, you need the device
            token. Alternatively, when using GCM (Firebase Cloud Messaging) or ADM, the device token
            equivalent is called the registration ID.</p>")
    @as("Token")
    token: string_,
    @ocaml.doc("<p>PlatformApplicationArn returned from CreatePlatformApplication is used to create a an
            endpoint.</p>")
    @as("PlatformApplicationArn")
    platformApplicationArn: string_,
  }
  @ocaml.doc("<p>Response from CreateEndpoint action.</p>")
  type response = {
    @ocaml.doc("<p>EndpointArn returned from CreateEndpoint action.</p>") @as("EndpointArn")
    endpointArn: option<string_>,
  }
  @module("@aws-sdk/client-sns") @new external new: request => t = "CreatePlatformEndpointCommand"
  let make = (~token, ~platformApplicationArn, ~attributes=?, ~customUserData=?, ()) =>
    new({
      attributes: attributes,
      customUserData: customUserData,
      token: token,
      platformApplicationArn: platformApplicationArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePlatformApplication = {
  type t
  @ocaml.doc("<p>Input for CreatePlatformApplication action.</p>")
  type request = {
    @ocaml.doc(
      "<p>For a list of attributes, see <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_SetPlatformApplicationAttributes.html\">SetPlatformApplicationAttributes</a>.</p>"
    )
    @as("Attributes")
    attributes: mapStringToString,
    @ocaml.doc("<p>The following platforms are supported: ADM (Amazon Device Messaging), APNS (Apple Push
            Notification Service), APNS_SANDBOX, and GCM (Firebase Cloud Messaging).</p>")
    @as("Platform")
    platform: string_,
    @ocaml.doc("<p>Application names must be made up of only uppercase and lowercase ASCII letters,
            numbers, underscores, hyphens, and periods, and must be between 1 and 256 characters
            long.</p>")
    @as("Name")
    name: string_,
  }
  @ocaml.doc("<p>Response from CreatePlatformApplication action.</p>")
  type response = {
    @ocaml.doc("<p>PlatformApplicationArn is returned.</p>") @as("PlatformApplicationArn")
    platformApplicationArn: option<string_>,
  }
  @module("@aws-sdk/client-sns") @new
  external new: request => t = "CreatePlatformApplicationCommand"
  let make = (~attributes, ~platform, ~name, ()) =>
    new({attributes: attributes, platform: platform, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddPermission = {
  type t
  type request = {
    @ocaml.doc("<p>The action you want to allow for the specified principal(s).</p>
        <p>Valid values: Any Amazon SNS action name, for example <code>Publish</code>.</p>")
    @as("ActionName")
    actionName: actionsList,
    @ocaml.doc("<p>The AWS account IDs of the users (principals) who will be given access to the
            specified actions. The users must have AWS accounts, but do not need to be signed up for
            this service.</p>")
    @as("AWSAccountId")
    awsaccountId: delegatesList,
    @ocaml.doc("<p>A unique identifier for the new policy statement.</p>") @as("Label")
    label: label,
    @ocaml.doc("<p>The ARN of the topic whose access control policy you wish to modify.</p>")
    @as("TopicArn")
    topicArn: topicARN,
  }

  @module("@aws-sdk/client-sns") @new external new: request => t = "AddPermissionCommand"
  let make = (~actionName, ~awsaccountId, ~label, ~topicArn, ()) =>
    new({actionName: actionName, awsaccountId: awsaccountId, label: label, topicArn: topicArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be added to the specified topic. A tag consists of a required key and an
            optional value.</p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The ARN of the topic to which to add tags.</p>") @as("ResourceArn")
    resourceArn: amazonResourceName,
  }

  @module("@aws-sdk/client-sns") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module Publish = {
  type t
  @ocaml.doc("<p>Input for Publish action.</p>")
  type request = {
    @ocaml.doc("<p>This parameter applies only to FIFO (first-in-first-out) topics. The
                <code>MessageGroupId</code> can contain up to 128 alphanumeric characters (a-z, A-Z,
            0-9) and punctuation <code>(!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~)</code>.</p>
        <p>The <code>MessageGroupId</code> is a tag that specifies that a message belongs to a
            specific message group. Messages that belong to the same message group are processed in
            a FIFO manner (however, messages in different message groups might be processed out of
            order). Every message must include a <code>MessageGroupId</code>.</p>")
    @as("MessageGroupId")
    messageGroupId: option<string_>,
    @ocaml.doc("<p>This parameter applies only to FIFO (first-in-first-out) topics. The
                <code>MessageDeduplicationId</code> can contain up to 128 alphanumeric characters
            (a-z, A-Z, 0-9) and punctuation
            <code>(!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~)</code>.</p>
        <p>Every message must have a unique <code>MessageDeduplicationId</code>, which is a token
            used for deduplication of sent messages. If a message with a particular
                <code>MessageDeduplicationId</code> is sent successfully, any message sent with the
            same <code>MessageDeduplicationId</code> during the 5-minute deduplication interval is
            treated as a duplicate. </p>
        <p>If the topic has <code>ContentBasedDeduplication</code> set, the system generates a
                <code>MessageDeduplicationId</code> based on the contents of the message. Your
                <code>MessageDeduplicationId</code> overrides the generated one.</p>")
    @as("MessageDeduplicationId")
    messageDeduplicationId: option<string_>,
    @ocaml.doc("<p>Message attributes for Publish action.</p>") @as("MessageAttributes")
    messageAttributes: option<messageAttributeMap>,
    @ocaml.doc("<p>Set <code>MessageStructure</code> to <code>json</code> if you want to send a different
            message for each protocol. For example, using one publish action, you can send a short
            message to your SMS subscribers and a longer message to your email subscribers. If you
            set <code>MessageStructure</code> to <code>json</code>, the value of the
                <code>Message</code> parameter must: </p>
        <ul>
            <li>
                <p>be a syntactically valid JSON object; and</p>
            </li>
            <li>
                <p>contain at least a top-level JSON key of \"default\" with a value that is a
                    string.</p>
            </li>
         </ul>
        <p>You can define other top-level keys that define the message you want to send to a
            specific transport protocol (e.g., \"http\").</p>
        <p>Valid value: <code>json</code>
        </p>")
    @as("MessageStructure")
    messageStructure: option<messageStructure>,
    @ocaml.doc("<p>Optional parameter to be used as the \"Subject\" line when the message is delivered to
            email endpoints. This field will also be included, if present, in the standard JSON
            messages delivered to other endpoints.</p>
        <p>Constraints: Subjects must be ASCII text that begins with a letter, number, or
            punctuation mark; must not include line breaks or control characters; and must be less
            than 100 characters long.</p>")
    @as("Subject")
    subject: option<subject>,
    @ocaml.doc("<p>The message you want to send.</p>
        <p>If you are publishing to a topic and you want to send the same message to all
            transport protocols, include the text of the message as a String value. If you want to
            send different messages for each transport protocol, set the value of the
                <code>MessageStructure</code> parameter to <code>json</code> and use a JSON object
            for the <code>Message</code> parameter. 
        </p>
        <p></p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>With the exception of SMS, messages must be UTF-8 encoded strings and at most
                    256 KB in size (262,144 bytes, not 262,144 characters).</p>
            </li>
            <li>
                <p>For SMS, each message can contain up to 140 characters. This character limit
                    depends on the encoding schema. For example, an SMS message can contain 160 GSM
                    characters, 140 ASCII characters, or 70 UCS-2 characters.</p>
                <p>If you publish a message that exceeds this size limit, Amazon SNS sends the message
                    as multiple messages, each fitting within the size limit. Messages aren't
                    truncated mid-word but are cut off at whole-word boundaries.</p>
                <p>The total size limit for a single SMS <code>Publish</code> action is 1,600
                    characters.</p>
            </li>
         </ul>
        <p>JSON-specific constraints:</p>
        <ul>
            <li>
                <p>Keys in the JSON object that correspond to supported transport protocols must
                    have simple JSON string values.</p>
            </li>
            <li>
                <p>The values will be parsed (unescaped) before they are used in outgoing
                    messages.</p>
            </li>
            <li>
                <p>Outbound notifications are JSON encoded (meaning that the characters will be
                    reescaped for sending).</p>
            </li>
            <li>
                <p>Values have a minimum length of 0 (the empty string, \"\", is allowed).</p>
            </li>
            <li>
                <p>Values have a maximum length bounded by the overall message size (so,
                    including multiple protocols may limit message sizes).</p>
            </li>
            <li>
                <p>Non-string values will cause the key to be ignored.</p>
            </li>
            <li>
                <p>Keys that do not correspond to supported transport protocols are
                    ignored.</p>
            </li>
            <li>
                <p>Duplicate keys are not allowed.</p>
            </li>
            <li>
                <p>Failure to parse or validate any key or value in the message will cause the
                        <code>Publish</code> call to return an error (no partial delivery).</p>
            </li>
         </ul>")
    @as("Message")
    message: message,
    @ocaml.doc("<p>The phone number to which you want to deliver an SMS message. Use E.164 format.</p>
        <p>If you don't specify a value for the <code>PhoneNumber</code> parameter, you must
            specify a value for the <code>TargetArn</code> or <code>TopicArn</code>
            parameters.</p>")
    @as("PhoneNumber")
    phoneNumber: option<string_>,
    @ocaml.doc("<p>If you don't specify a value for the <code>TargetArn</code> parameter, you must
            specify a value for the <code>PhoneNumber</code> or <code>TopicArn</code>
            parameters.</p>")
    @as("TargetArn")
    targetArn: option<string_>,
    @ocaml.doc("<p>The topic you want to publish to.</p>
        <p>If you don't specify a value for the <code>TopicArn</code> parameter, you must specify
            a value for the <code>PhoneNumber</code> or <code>TargetArn</code> parameters.</p>")
    @as("TopicArn")
    topicArn: option<topicARN>,
  }
  @ocaml.doc("<p>Response for Publish action.</p>")
  type response = {
    @ocaml.doc("<p>This response element applies only to FIFO (first-in-first-out) topics. </p>
        <p>The sequence number is a large, non-consecutive number that Amazon SNS assigns to each
            message. The length of <code>SequenceNumber</code> is 128 bits.
                <code>SequenceNumber</code> continues to increase for each
                <code>MessageGroupId</code>.</p>")
    @as("SequenceNumber")
    sequenceNumber: option<string_>,
    @ocaml.doc("<p>Unique identifier assigned to the published message.</p>
        <p>Length Constraint: Maximum 100 characters</p>")
    @as("MessageId")
    messageId: option<messageId>,
  }
  @module("@aws-sdk/client-sns") @new external new: request => t = "PublishCommand"
  let make = (
    ~message,
    ~messageGroupId=?,
    ~messageDeduplicationId=?,
    ~messageAttributes=?,
    ~messageStructure=?,
    ~subject=?,
    ~phoneNumber=?,
    ~targetArn=?,
    ~topicArn=?,
    (),
  ) =>
    new({
      messageGroupId: messageGroupId,
      messageDeduplicationId: messageDeduplicationId,
      messageAttributes: messageAttributes,
      messageStructure: messageStructure,
      subject: subject,
      message: message,
      phoneNumber: phoneNumber,
      targetArn: targetArn,
      topicArn: topicArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTopics = {
  type t
  type request = {
    @ocaml.doc("<p>Token returned by the previous <code>ListTopics</code> request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @ocaml.doc("<p>Response for ListTopics action.</p>")
  type response = {
    @ocaml.doc("<p>Token to pass along to the next <code>ListTopics</code> request. This element is
            returned if there are additional topics to retrieve.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of topic ARNs.</p>") @as("Topics") topics: option<topicsList>,
  }
  @module("@aws-sdk/client-sns") @new external new: request => t = "ListTopicsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the topic for which to list tags.</p>") @as("ResourceArn")
    resourceArn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>The tags associated with the specified topic.</p>") @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-sns") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSubscriptionsByTopic = {
  type t
  @ocaml.doc("<p>Input for ListSubscriptionsByTopic action.</p>")
  type request = {
    @ocaml.doc(
      "<p>Token returned by the previous <code>ListSubscriptionsByTopic</code> request.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN of the topic for which you wish to find subscriptions.</p>")
    @as("TopicArn")
    topicArn: topicARN,
  }
  @ocaml.doc("<p>Response for ListSubscriptionsByTopic action.</p>")
  type response = {
    @ocaml.doc("<p>Token to pass along to the next <code>ListSubscriptionsByTopic</code> request. This
            element is returned if there are more subscriptions to retrieve.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of subscriptions.</p>") @as("Subscriptions")
    subscriptions: option<subscriptionsList>,
  }
  @module("@aws-sdk/client-sns") @new external new: request => t = "ListSubscriptionsByTopicCommand"
  let make = (~topicArn, ~nextToken=?, ()) => new({nextToken: nextToken, topicArn: topicArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSubscriptions = {
  type t
  @ocaml.doc("<p>Input for ListSubscriptions action.</p>")
  type request = {
    @ocaml.doc("<p>Token returned by the previous <code>ListSubscriptions</code> request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @ocaml.doc("<p>Response for ListSubscriptions action</p>")
  type response = {
    @ocaml.doc("<p>Token to pass along to the next <code>ListSubscriptions</code> request. This element
            is returned if there are more subscriptions to retrieve.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of subscriptions.</p>") @as("Subscriptions")
    subscriptions: option<subscriptionsList>,
  }
  @module("@aws-sdk/client-sns") @new external new: request => t = "ListSubscriptionsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSMSSandboxPhoneNumbers = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of phone numbers to return.</p>") @as("MaxResults")
    maxResults: option<maxItems>,
    @ocaml.doc("<p>Token that the previous <code>ListSMSSandboxPhoneNumbersInput</code> request
            returns.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A <code>NextToken</code> string is returned when you call the
            <code>ListSMSSandboxPhoneNumbersInput</code> operation if additional pages of
            records are available.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of the calling account's pending and verified phone numbers.</p>")
    @as("PhoneNumbers")
    phoneNumbers: smssandboxPhoneNumberList,
  }
  @module("@aws-sdk/client-sns") @new
  external new: request => t = "ListSMSSandboxPhoneNumbersCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTopic = {
  type t
  @ocaml.doc("<p>Input for CreateTopic action.</p>")
  type request = {
    @ocaml.doc("<p>The list of tags to add to a new topic.</p>
        <note>
            <p>To be able to tag a topic on creation, you must have the
                    <code>sns:CreateTopic</code> and <code>sns:TagResource</code>
                permissions.</p>
        </note>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A map of attributes with their corresponding values.</p>
        <p>The following lists the names, descriptions, and values of the special request
            parameters that the <code>CreateTopic</code> action uses:</p>
        <ul>
            <li>
                <p>
                  <code>DeliveryPolicy</code> – The policy that defines how Amazon SNS retries
                    failed deliveries to HTTP/S endpoints.</p>
            </li>
            <li>
                <p>
                  <code>DisplayName</code> – The display name to use for a topic with SMS
                    subscriptions.</p>
            </li>
            <li>
                <p>
                  <code>FifoTopic</code> – Set to true to create a FIFO topic.</p>
            </li>
            <li>
                <p>
                  <code>Policy</code> – The policy that defines who can access your
                    topic. By default, only the topic owner can publish or subscribe to the
                    topic.</p>
            </li>
         </ul>
        
        <p>The following attribute applies only to <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html\">server-side
            encryption</a>:</p>
        <ul>
            <li>
                <p>
                    <code>KmsMasterKeyId</code> – The ID of an AWS managed customer master
                    key (CMK) for Amazon SNS or a custom CMK. For more information, see <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms\">Key
                        Terms</a>. For more examples, see <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters\">KeyId</a> in the <i>AWS Key Management Service API
                        Reference</i>. </p>
            </li>
         </ul>
        
        
        <p>The following attributes apply only to <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sns-fifo-topics.html\">FIFO topics</a>:</p>
        <ul>
            <li>
               <p>
                  <code>FifoTopic</code> – When this is set to <code>true</code>, a FIFO
                topic is created.</p>
            </li>
            <li>
               <p>
                    <code>ContentBasedDeduplication</code> –  Enables content-based deduplication for
                    FIFO topics.</p>
               
                <ul>
                  <li>
                        <p>By default, <code>ContentBasedDeduplication</code> is set to <code>false</code>.
                            If you create a FIFO topic and this attribute is <code>false</code>, you must
                            specify a value for the <code>MessageDeduplicationId</code> parameter for the
                            <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_Publish.html\">Publish</a> action. </p>
                    </li>
                  <li>
                        <p>When you set <code>ContentBasedDeduplication</code> to <code>true</code>, 
                            Amazon SNS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using 
                            the body of the message (but not the attributes of the message).</p>
                        <p>(Optional) To override the generated value, you can specify a value
                            for the <code>MessageDeduplicationId</code> parameter for the <code>Publish</code>
                            action.</p>
                     </li>
               </ul>
            </li>
         </ul>")
    @as("Attributes")
    attributes: option<topicAttributesMap>,
    @ocaml.doc("<p>The name of the topic you want to create.</p>
        <p>Constraints: Topic names must be made up of only uppercase and lowercase ASCII
            letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters
            long.</p>
        <p>For a FIFO (first-in-first-out) topic, the name must end with the <code>.fifo</code>
            suffix. </p>")
    @as("Name")
    name: topicName,
  }
  @ocaml.doc("<p>Response from CreateTopic action.</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) assigned to the created topic.</p>")
    @as("TopicArn")
    topicArn: option<topicARN>,
  }
  @module("@aws-sdk/client-sns") @new external new: request => t = "CreateTopicCommand"
  let make = (~name, ~tags=?, ~attributes=?, ()) =>
    new({tags: tags, attributes: attributes, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPlatformApplications = {
  type t
  @ocaml.doc("<p>Input for ListPlatformApplications action.</p>")
  type request = {
    @ocaml.doc("<p>NextToken string is used when calling ListPlatformApplications action to retrieve
            additional records that are available after the first page results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @ocaml.doc("<p>Response for ListPlatformApplications action.</p>")
  type response = {
    @ocaml.doc("<p>NextToken string is returned when calling ListPlatformApplications action if
            additional records are available after the first page results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>Platform applications returned when calling ListPlatformApplications action.</p>"
    )
    @as("PlatformApplications")
    platformApplications: option<listOfPlatformApplications>,
  }
  @module("@aws-sdk/client-sns") @new external new: request => t = "ListPlatformApplicationsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOriginationNumbers = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of origination numbers to return.</p>") @as("MaxResults")
    maxResults: option<maxItemsListOriginationNumbers>,
    @ocaml.doc(
      "<p>Token that the previous <code>ListOriginationNumbers</code> request returns.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A list of the calling account's verified and pending origination numbers.</p>")
    @as("PhoneNumbers")
    phoneNumbers: option<phoneNumberInformationList>,
    @ocaml.doc("<p>A <code>NextToken</code> string is returned when you call the
                <code>ListOriginationNumbers</code> operation if additional pages of records are
            available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-sns") @new external new: request => t = "ListOriginationNumbersCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEndpointsByPlatformApplication = {
  type t
  @ocaml.doc("<p>Input for ListEndpointsByPlatformApplication action.</p>")
  type request = {
    @ocaml.doc("<p>NextToken string is used when calling ListEndpointsByPlatformApplication action to
            retrieve additional records that are available after the first page results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>PlatformApplicationArn for ListEndpointsByPlatformApplicationInput action.</p>")
    @as("PlatformApplicationArn")
    platformApplicationArn: string_,
  }
  @ocaml.doc("<p>Response for ListEndpointsByPlatformApplication action.</p>")
  type response = {
    @ocaml.doc("<p>NextToken string is returned when calling ListEndpointsByPlatformApplication action if
            additional records are available after the first page results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Endpoints returned for ListEndpointsByPlatformApplication action.</p>")
    @as("Endpoints")
    endpoints: option<listOfEndpoints>,
  }
  @module("@aws-sdk/client-sns") @new
  external new: request => t = "ListEndpointsByPlatformApplicationCommand"
  let make = (~platformApplicationArn, ~nextToken=?, ()) =>
    new({nextToken: nextToken, platformApplicationArn: platformApplicationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
