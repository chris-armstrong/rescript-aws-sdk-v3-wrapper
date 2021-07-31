type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
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
type boolean = bool;
type authenticateOnUnsubscribe = string
type attributeValue = string
type attributeName = string
type action = string
type account = string
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type amazonawsString = string
type sMSSandboxPhoneNumberVerificationStatus = [@as("Verified") #Verified | @as("Pending") #Pending]
type routeType = [@as("Premium") #Premium | @as("Promotional") #Promotional | @as("Transactional") #Transactional]
type phoneNumberString = string
type phoneNumber = string
type oTPCode = string
type numberCapability = [@as("VOICE") #VOICE | @as("MMS") #MMS | @as("SMS") #SMS]
type maxItemsListOriginationNumbers = int;
type maxItems = int;
type languageCodeString = [@as("zh-TW") #zh_TW | @as("zh-CN") #zh_CN | @as("kr-KR") #kr_KR | @as("pt-BR") #pt_BR | @as("ja-JP") #ja_JP | @as("it-IT") #it_IT | @as("fr-FR") #fr_FR | @as("fr-CA") #fr_CA | @as("de-DE") #de_DE | @as("es-ES") #es_ES | @as("es-419") #es_419 | @as("en-GB") #en_GB | @as("en-US") #en_US]
type iso2CountryCode = string
type endpoint2 = string
type binary = NodeJs.Buffer.t;
type amazonResourceName = string
type topicAttributesMap = Js.Dict.t< attributeValue>
type topic = {
@as("TopicArn") topicArn: topicARN
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type subscriptionAttributesMap = Js.Dict.t< attributeValue>
type subscription = {
@as("TopicArn") topicArn: topicARN,
@as("Endpoint") endpoint: endpoint2,
@as("Protocol") protocol: protocol,
@as("Owner") owner: account,
@as("SubscriptionArn") subscriptionArn: subscriptionARN
}
type sMSSandboxPhoneNumber = {
@as("Status") status: sMSSandboxPhoneNumberVerificationStatus,
@as("PhoneNumber") phoneNumber: phoneNumberString
}
type phoneNumberList = array<phoneNumber>
type numberCapabilityList = array<numberCapability>
type messageAttributeValue = {
@as("BinaryValue") binaryValue: binary,
@as("StringValue") stringValue: amazonawsString,
@as("DataType") dataType: option<amazonawsString>
}
type mapStringToString = Js.Dict.t< amazonawsString>
type listString = array<amazonawsString>
type delegatesList = array<delegate>
type actionsList = array<action>
type topicsList = array<topic>
type tagList = array<tag>
type subscriptionsList = array<subscription>
type sMSSandboxPhoneNumberList = array<sMSSandboxPhoneNumber>
type platformApplication = {
@as("Attributes") attributes: mapStringToString,
@as("PlatformApplicationArn") platformApplicationArn: amazonawsString
}
type phoneNumberInformation = {
@as("NumberCapabilities") numberCapabilities: numberCapabilityList,
@as("RouteType") routeType: routeType,
@as("Iso2CountryCode") iso2CountryCode: iso2CountryCode,
@as("Status") status: amazonawsString,
@as("PhoneNumber") phoneNumber: amazonawsString,
@as("CreatedAt") createdAt: amazonawsTimestamp
}
type messageAttributeMap = Js.Dict.t< messageAttributeValue>
type endpoint = {
@as("Attributes") attributes: mapStringToString,
@as("EndpointArn") endpointArn: amazonawsString
}
type phoneNumberInformationList = array<phoneNumberInformation>
type listOfPlatformApplications = array<platformApplication>
type listOfEndpoints = array<endpoint>
type clientType;
@module("@aws-sdk/client-sns") @new external createClient: unit => clientType = "SNSClient";
module VerifySMSSandboxPhoneNumber = {
  type t;
  type request = {
@as("OneTimePassword") oneTimePassword: option<oTPCode>,
@as("PhoneNumber") phoneNumber: option<phoneNumberString>
}
  type response = unit
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "VerifySMSSandboxPhoneNumberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module Unsubscribe = {
  type t;
  type request = {
@as("SubscriptionArn") subscriptionArn: option<subscriptionARN>
}
  
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "UnsubscribeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SetTopicAttributes = {
  type t;
  type request = {
@as("AttributeValue") attributeValue: attributeValue,
@as("AttributeName") attributeName: option<attributeName>,
@as("TopicArn") topicArn: option<topicARN>
}
  
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "SetTopicAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SetSubscriptionAttributes = {
  type t;
  type request = {
@as("AttributeValue") attributeValue: attributeValue,
@as("AttributeName") attributeName: option<attributeName>,
@as("SubscriptionArn") subscriptionArn: option<subscriptionARN>
}
  
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "SetSubscriptionAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RemovePermission = {
  type t;
  type request = {
@as("Label") label: option<label>,
@as("TopicArn") topicArn: option<topicARN>
}
  
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "RemovePermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module OptInPhoneNumber = {
  type t;
  type request = {
@as("phoneNumber") phoneNumber: option<phoneNumber>
}
  type response = unit
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "OptInPhoneNumberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSMSSandboxAccountStatus = {
  type t;
  type request = unit
  type response = {
@as("IsInSandbox") isInSandbox: option<boolean>
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "GetSMSSandboxAccountStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTopic = {
  type t;
  type request = {
@as("TopicArn") topicArn: option<topicARN>
}
  
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "DeleteTopicCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSMSSandboxPhoneNumber = {
  type t;
  type request = {
@as("PhoneNumber") phoneNumber: option<phoneNumberString>
}
  type response = unit
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "DeleteSMSSandboxPhoneNumberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePlatformApplication = {
  type t;
  type request = {
@as("PlatformApplicationArn") platformApplicationArn: option<amazonawsString>
}
  
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "DeletePlatformApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteEndpoint = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: option<amazonawsString>
}
  
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "DeleteEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateSMSSandboxPhoneNumber = {
  type t;
  type request = {
@as("LanguageCode") languageCode: languageCodeString,
@as("PhoneNumber") phoneNumber: option<phoneNumberString>
}
  type response = unit
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "CreateSMSSandboxPhoneNumberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ConfirmSubscription = {
  type t;
  type request = {
@as("AuthenticateOnUnsubscribe") authenticateOnUnsubscribe: authenticateOnUnsubscribe,
@as("Token") token: option<token>,
@as("TopicArn") topicArn: option<topicARN>
}
  type response = {
@as("SubscriptionArn") subscriptionArn: subscriptionARN
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "ConfirmSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CheckIfPhoneNumberIsOptedOut = {
  type t;
  type request = {
@as("phoneNumber") phoneNumber: option<phoneNumber>
}
  type response = {
@as("isOptedOut") isOptedOut: boolean
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "CheckIfPhoneNumberIsOptedOutCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module Subscribe = {
  type t;
  type request = {
@as("ReturnSubscriptionArn") returnSubscriptionArn: boolean,
@as("Attributes") attributes: subscriptionAttributesMap,
@as("Endpoint") endpoint: endpoint2,
@as("Protocol") protocol: option<protocol>,
@as("TopicArn") topicArn: option<topicARN>
}
  type response = {
@as("SubscriptionArn") subscriptionArn: subscriptionARN
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "SubscribeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetSMSAttributes = {
  type t;
  type request = {
@as("attributes") attributes: option<mapStringToString>
}
  type response = unit
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "SetSMSAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetPlatformApplicationAttributes = {
  type t;
  type request = {
@as("Attributes") attributes: option<mapStringToString>,
@as("PlatformApplicationArn") platformApplicationArn: option<amazonawsString>
}
  
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "SetPlatformApplicationAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SetEndpointAttributes = {
  type t;
  type request = {
@as("Attributes") attributes: option<mapStringToString>,
@as("EndpointArn") endpointArn: option<amazonawsString>
}
  
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "SetEndpointAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListPhoneNumbersOptedOut = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("phoneNumbers") phoneNumbers: phoneNumberList
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "ListPhoneNumbersOptedOutCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTopicAttributes = {
  type t;
  type request = {
@as("TopicArn") topicArn: option<topicARN>
}
  type response = {
@as("Attributes") attributes: topicAttributesMap
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "GetTopicAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSubscriptionAttributes = {
  type t;
  type request = {
@as("SubscriptionArn") subscriptionArn: option<subscriptionARN>
}
  type response = {
@as("Attributes") attributes: subscriptionAttributesMap
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "GetSubscriptionAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSMSAttributes = {
  type t;
  type request = {
@as("attributes") attributes: listString
}
  type response = {
@as("attributes") attributes: mapStringToString
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "GetSMSAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPlatformApplicationAttributes = {
  type t;
  type request = {
@as("PlatformApplicationArn") platformApplicationArn: option<amazonawsString>
}
  type response = {
@as("Attributes") attributes: mapStringToString
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "GetPlatformApplicationAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEndpointAttributes = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: option<amazonawsString>
}
  type response = {
@as("Attributes") attributes: mapStringToString
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "GetEndpointAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePlatformEndpoint = {
  type t;
  type request = {
@as("Attributes") attributes: mapStringToString,
@as("CustomUserData") customUserData: amazonawsString,
@as("Token") token: option<amazonawsString>,
@as("PlatformApplicationArn") platformApplicationArn: option<amazonawsString>
}
  type response = {
@as("EndpointArn") endpointArn: amazonawsString
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "CreatePlatformEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePlatformApplication = {
  type t;
  type request = {
@as("Attributes") attributes: option<mapStringToString>,
@as("Platform") platform: option<amazonawsString>,
@as("Name") name: option<amazonawsString>
}
  type response = {
@as("PlatformApplicationArn") platformApplicationArn: amazonawsString
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "CreatePlatformApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddPermission = {
  type t;
  type request = {
@as("ActionName") actionName: option<actionsList>,
@as("AWSAccountId") aWSAccountId: option<delegatesList>,
@as("Label") label: option<label>,
@as("TopicArn") topicArn: option<topicARN>
}
  
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "AddPermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module Publish = {
  type t;
  type request = {
@as("MessageGroupId") messageGroupId: amazonawsString,
@as("MessageDeduplicationId") messageDeduplicationId: amazonawsString,
@as("MessageAttributes") messageAttributes: messageAttributeMap,
@as("MessageStructure") messageStructure: messageStructure,
@as("Subject") subject: subject,
@as("Message") message: option<message>,
@as("PhoneNumber") phoneNumber: amazonawsString,
@as("TargetArn") targetArn: amazonawsString,
@as("TopicArn") topicArn: topicARN
}
  type response = {
@as("SequenceNumber") sequenceNumber: amazonawsString,
@as("MessageId") messageId: messageId
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "PublishCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTopics = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Topics") topics: topicsList
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "ListTopicsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<amazonResourceName>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSubscriptionsByTopic = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("TopicArn") topicArn: option<topicARN>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Subscriptions") subscriptions: subscriptionsList
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "ListSubscriptionsByTopicCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSubscriptions = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Subscriptions") subscriptions: subscriptionsList
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "ListSubscriptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSMSSandboxPhoneNumbers = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxItems,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("PhoneNumbers") phoneNumbers: option<sMSSandboxPhoneNumberList>
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "ListSMSSandboxPhoneNumbersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTopic = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Attributes") attributes: topicAttributesMap,
@as("Name") name: option<topicName>
}
  type response = {
@as("TopicArn") topicArn: topicARN
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "CreateTopicCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPlatformApplications = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("PlatformApplications") platformApplications: listOfPlatformApplications
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "ListPlatformApplicationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOriginationNumbers = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxItemsListOriginationNumbers,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("PhoneNumbers") phoneNumbers: phoneNumberInformationList,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "ListOriginationNumbersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEndpointsByPlatformApplication = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("PlatformApplicationArn") platformApplicationArn: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Endpoints") endpoints: listOfEndpoints
}
  @module("@aws-sdk/client-sns") @new external new_: (Js.Promise.t<request>) => t = "ListEndpointsByPlatformApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
