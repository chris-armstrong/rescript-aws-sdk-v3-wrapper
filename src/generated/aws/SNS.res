type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type integer_ = int
type long = float
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
type timestamp_ = Js.Date.t;
type tagValue = string
type tagKey = string
type string_ = string
type smssandboxPhoneNumberVerificationStatus = [@as("Verified") #Verified | @as("Pending") #Pending]
type routeType = [@as("Premium") #Premium | @as("Promotional") #Promotional | @as("Transactional") #Transactional]
type phoneNumberString = string
type phoneNumber = string
type otpcode = string
type numberCapability = [@as("VOICE") #VOICE | @as("MMS") #MMS | @as("SMS") #SMS]
type maxItemsListOriginationNumbers = int
type maxItems = int
type languageCodeString = [@as("zh-TW") #ZhTW | @as("zh-CN") #ZhCN | @as("kr-KR") #KrKR | @as("pt-BR") #PtBR | @as("ja-JP") #JaJP | @as("it-IT") #ItIT | @as("fr-FR") #FrFR | @as("fr-CA") #FrCA | @as("de-DE") #DeDE | @as("es-ES") #EsES | @as("es-419") #Es419 | @as("en-GB") #EnGB | @as("en-US") #EnUS]
type iso2CountryCode = string
type endpoint2 = string
type binary = NodeJs.Buffer.t
type amazonResourceName = string
type topicAttributesMap = Js.Dict.t< attributeValue>
type topic = {
@as("TopicArn") topicArn: option<topicARN>
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type subscriptionAttributesMap = Js.Dict.t< attributeValue>
type subscription = {
@as("TopicArn") topicArn: option<topicARN>,
@as("Endpoint") endpoint: option<endpoint2>,
@as("Protocol") protocol: option<protocol>,
@as("Owner") owner: option<account>,
@as("SubscriptionArn") subscriptionArn: option<subscriptionARN>
}
type smssandboxPhoneNumber = {
@as("Status") status: option<smssandboxPhoneNumberVerificationStatus>,
@as("PhoneNumber") phoneNumber: option<phoneNumberString>
}
type phoneNumberList = array<phoneNumber>
type numberCapabilityList = array<numberCapability>
type messageAttributeValue = {
@as("BinaryValue") binaryValue: option<binary>,
@as("StringValue") stringValue: option<string_>,
@as("DataType") dataType: string_
}
type mapStringToString = Js.Dict.t< string_>
type listString = array<string_>
type delegatesList = array<delegate>
type actionsList = array<action>
type topicsList = array<topic>
type tagList_ = array<tag>
type subscriptionsList = array<subscription>
type smssandboxPhoneNumberList = array<smssandboxPhoneNumber>
type platformApplication = {
@as("Attributes") attributes: option<mapStringToString>,
@as("PlatformApplicationArn") platformApplicationArn: option<string_>
}
type phoneNumberInformation = {
@as("NumberCapabilities") numberCapabilities: option<numberCapabilityList>,
@as("RouteType") routeType: option<routeType>,
@as("Iso2CountryCode") iso2CountryCode: option<iso2CountryCode>,
@as("Status") status: option<string_>,
@as("PhoneNumber") phoneNumber: option<string_>,
@as("CreatedAt") createdAt: option<timestamp_>
}
type messageAttributeMap = Js.Dict.t< messageAttributeValue>
type endpoint = {
@as("Attributes") attributes: option<mapStringToString>,
@as("EndpointArn") endpointArn: option<string_>
}
type phoneNumberInformationList = array<phoneNumberInformation>
type listOfPlatformApplications = array<platformApplication>
type listOfEndpoints = array<endpoint>
type awsServiceClient;
@module("@aws-sdk/client-sns") @new external createClient: unit => awsServiceClient = "SNSClient";
module VerifySMSSandboxPhoneNumber = {
  type t;
  type request = {
@as("OneTimePassword") oneTimePassword: otpcode,
@as("PhoneNumber") phoneNumber: phoneNumberString
}
  type response = unit
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "VerifySMSSandboxPhoneNumberCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module Unsubscribe = {
  type t;
  type request = {
@as("SubscriptionArn") subscriptionArn: subscriptionARN
}
  
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "UnsubscribeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module SetTopicAttributes = {
  type t;
  type request = {
@as("AttributeValue") attributeValue: option<attributeValue>,
@as("AttributeName") attributeName: attributeName,
@as("TopicArn") topicArn: topicARN
}
  
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "SetTopicAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module SetSubscriptionAttributes = {
  type t;
  type request = {
@as("AttributeValue") attributeValue: option<attributeValue>,
@as("AttributeName") attributeName: attributeName,
@as("SubscriptionArn") subscriptionArn: subscriptionARN
}
  
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "SetSubscriptionAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RemovePermission = {
  type t;
  type request = {
@as("Label") label: label,
@as("TopicArn") topicArn: topicARN
}
  
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "RemovePermissionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module OptInPhoneNumber = {
  type t;
  type request = {
phoneNumber: phoneNumber
}
  type response = unit
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "OptInPhoneNumberCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSMSSandboxAccountStatus = {
  type t;
  type request = unit
  type response = {
@as("IsInSandbox") isInSandbox: boolean_
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "GetSMSSandboxAccountStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTopic = {
  type t;
  type request = {
@as("TopicArn") topicArn: topicARN
}
  
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "DeleteTopicCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteSMSSandboxPhoneNumber = {
  type t;
  type request = {
@as("PhoneNumber") phoneNumber: phoneNumberString
}
  type response = unit
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "DeleteSMSSandboxPhoneNumberCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeletePlatformApplication = {
  type t;
  type request = {
@as("PlatformApplicationArn") platformApplicationArn: string_
}
  
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "DeletePlatformApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteEndpoint = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: string_
}
  
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "DeleteEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CreateSMSSandboxPhoneNumber = {
  type t;
  type request = {
@as("LanguageCode") languageCode: option<languageCodeString>,
@as("PhoneNumber") phoneNumber: phoneNumberString
}
  type response = unit
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "CreateSMSSandboxPhoneNumberCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ConfirmSubscription = {
  type t;
  type request = {
@as("AuthenticateOnUnsubscribe") authenticateOnUnsubscribe: option<authenticateOnUnsubscribe>,
@as("Token") token: token,
@as("TopicArn") topicArn: topicARN
}
  type response = {
@as("SubscriptionArn") subscriptionArn: option<subscriptionARN>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "ConfirmSubscriptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CheckIfPhoneNumberIsOptedOut = {
  type t;
  type request = {
phoneNumber: phoneNumber
}
  type response = {
isOptedOut: option<boolean_>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "CheckIfPhoneNumberIsOptedOutCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
@as("ResourceArn") resourceArn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module Subscribe = {
  type t;
  type request = {
@as("ReturnSubscriptionArn") returnSubscriptionArn: option<boolean_>,
@as("Attributes") attributes: option<subscriptionAttributesMap>,
@as("Endpoint") endpoint: option<endpoint2>,
@as("Protocol") protocol: protocol,
@as("TopicArn") topicArn: topicARN
}
  type response = {
@as("SubscriptionArn") subscriptionArn: option<subscriptionARN>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "SubscribeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetSMSAttributes = {
  type t;
  type request = {
attributes: mapStringToString
}
  type response = unit
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "SetSMSAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetPlatformApplicationAttributes = {
  type t;
  type request = {
@as("Attributes") attributes: mapStringToString,
@as("PlatformApplicationArn") platformApplicationArn: string_
}
  
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "SetPlatformApplicationAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module SetEndpointAttributes = {
  type t;
  type request = {
@as("Attributes") attributes: mapStringToString,
@as("EndpointArn") endpointArn: string_
}
  
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "SetEndpointAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListPhoneNumbersOptedOut = {
  type t;
  type request = {
nextToken: option<string_>
}
  type response = {
nextToken: option<string_>,
phoneNumbers: option<phoneNumberList>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "ListPhoneNumbersOptedOutCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTopicAttributes = {
  type t;
  type request = {
@as("TopicArn") topicArn: topicARN
}
  type response = {
@as("Attributes") attributes: option<topicAttributesMap>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "GetTopicAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSubscriptionAttributes = {
  type t;
  type request = {
@as("SubscriptionArn") subscriptionArn: subscriptionARN
}
  type response = {
@as("Attributes") attributes: option<subscriptionAttributesMap>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "GetSubscriptionAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSMSAttributes = {
  type t;
  type request = {
attributes: option<listString>
}
  type response = {
attributes: option<mapStringToString>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "GetSMSAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetPlatformApplicationAttributes = {
  type t;
  type request = {
@as("PlatformApplicationArn") platformApplicationArn: string_
}
  type response = {
@as("Attributes") attributes: option<mapStringToString>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "GetPlatformApplicationAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEndpointAttributes = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: string_
}
  type response = {
@as("Attributes") attributes: option<mapStringToString>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "GetEndpointAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePlatformEndpoint = {
  type t;
  type request = {
@as("Attributes") attributes: option<mapStringToString>,
@as("CustomUserData") customUserData: option<string_>,
@as("Token") token: string_,
@as("PlatformApplicationArn") platformApplicationArn: string_
}
  type response = {
@as("EndpointArn") endpointArn: option<string_>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "CreatePlatformEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePlatformApplication = {
  type t;
  type request = {
@as("Attributes") attributes: mapStringToString,
@as("Platform") platform: string_,
@as("Name") name: string_
}
  type response = {
@as("PlatformApplicationArn") platformApplicationArn: option<string_>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "CreatePlatformApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddPermission = {
  type t;
  type request = {
@as("ActionName") actionName: actionsList,
@as("AWSAccountId") awsaccountId: delegatesList,
@as("Label") label: label,
@as("TopicArn") topicArn: topicARN
}
  
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "AddPermissionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
@as("ResourceArn") resourceArn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module Publish = {
  type t;
  type request = {
@as("MessageGroupId") messageGroupId: option<string_>,
@as("MessageDeduplicationId") messageDeduplicationId: option<string_>,
@as("MessageAttributes") messageAttributes: option<messageAttributeMap>,
@as("MessageStructure") messageStructure: option<messageStructure>,
@as("Subject") subject: option<subject>,
@as("Message") message: message,
@as("PhoneNumber") phoneNumber: option<string_>,
@as("TargetArn") targetArn: option<string_>,
@as("TopicArn") topicArn: option<topicARN>
}
  type response = {
@as("SequenceNumber") sequenceNumber: option<string_>,
@as("MessageId") messageId: option<messageId>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "PublishCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTopics = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Topics") topics: option<topicsList>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "ListTopicsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: amazonResourceName
}
  type response = {
@as("Tags") tags: option<tagList_>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSubscriptionsByTopic = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("TopicArn") topicArn: topicARN
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Subscriptions") subscriptions: option<subscriptionsList>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "ListSubscriptionsByTopicCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSubscriptions = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Subscriptions") subscriptions: option<subscriptionsList>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "ListSubscriptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSMSSandboxPhoneNumbers = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxItems>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("PhoneNumbers") phoneNumbers: smssandboxPhoneNumberList
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "ListSMSSandboxPhoneNumbersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTopic = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("Attributes") attributes: option<topicAttributesMap>,
@as("Name") name: topicName
}
  type response = {
@as("TopicArn") topicArn: option<topicARN>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "CreateTopicCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPlatformApplications = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("PlatformApplications") platformApplications: option<listOfPlatformApplications>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "ListPlatformApplicationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListOriginationNumbers = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxItemsListOriginationNumbers>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("PhoneNumbers") phoneNumbers: option<phoneNumberInformationList>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "ListOriginationNumbersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEndpointsByPlatformApplication = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("PlatformApplicationArn") platformApplicationArn: string_
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("Endpoints") endpoints: option<listOfEndpoints>
}
  @module("@aws-sdk/client-sns") @new external new_: (request) => t = "ListEndpointsByPlatformApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
