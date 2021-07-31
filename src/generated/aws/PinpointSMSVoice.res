type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __string = string
type wordCharactersWithDelimiters = string
type amazonawsString = string
type nonEmptyString = string
type nextTokenString = string
type eventType = [@as("NO_ANSWER") #NO_ANSWER | @as("FAILED") #FAILED | @as("BUSY") #BUSY | @as("COMPLETED_CALL") #COMPLETED_CALL | @as("ANSWERED") #ANSWERED | @as("RINGING") #RINGING | @as("INITIATED_CALL") #INITIATED_CALL]
type amazonawsBoolean = bool;
type snsDestination = {
@as("TopicArn") topicArn: amazonawsString
}
type sSMLMessageType = {
@as("VoiceId") voiceId: amazonawsString,
@as("Text") text: nonEmptyString,
@as("LanguageCode") languageCode: amazonawsString
}
type plainTextMessageType = {
@as("VoiceId") voiceId: amazonawsString,
@as("Text") text: nonEmptyString,
@as("LanguageCode") languageCode: amazonawsString
}
type kinesisFirehoseDestination = {
@as("IamRoleArn") iamRoleArn: amazonawsString,
@as("DeliveryStreamArn") deliveryStreamArn: amazonawsString
}
type eventTypes = array<eventType>
type configurationSets = array<wordCharactersWithDelimiters>
type cloudWatchLogsDestination = {
@as("LogGroupArn") logGroupArn: amazonawsString,
@as("IamRoleArn") iamRoleArn: amazonawsString
}
type callInstructionsMessageType = {
@as("Text") text: nonEmptyString
}
type voiceMessageContent = {
@as("SSMLMessage") sSMLMessage: sSMLMessageType,
@as("PlainTextMessage") plainTextMessage: plainTextMessageType,
@as("CallInstructionsMessage") callInstructionsMessage: callInstructionsMessageType
}
type eventDestinationDefinition = {
@as("SnsDestination") snsDestination: snsDestination,
@as("MatchingEventTypes") matchingEventTypes: eventTypes,
@as("KinesisFirehoseDestination") kinesisFirehoseDestination: kinesisFirehoseDestination,
@as("Enabled") enabled: amazonawsBoolean,
@as("CloudWatchLogsDestination") cloudWatchLogsDestination: cloudWatchLogsDestination
}
type eventDestination = {
@as("SnsDestination") snsDestination: snsDestination,
@as("Name") name: amazonawsString,
@as("MatchingEventTypes") matchingEventTypes: eventTypes,
@as("KinesisFirehoseDestination") kinesisFirehoseDestination: kinesisFirehoseDestination,
@as("Enabled") enabled: amazonawsBoolean,
@as("CloudWatchLogsDestination") cloudWatchLogsDestination: cloudWatchLogsDestination
}
type eventDestinations = array<eventDestination>
type clientType;
@module("@aws-sdk/client-sms-voice") @new external createClient: unit => clientType = "PinpointSMSVoiceClient";
module DeleteConfigurationSetEventDestination = {
  type t;
  type request = {
@as("EventDestinationName") eventDestinationName: option<__string>,
@as("ConfigurationSetName") configurationSetName: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-sms-voice") @new external new_: (Js.Promise.t<request>) => t = "DeleteConfigurationSetEventDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConfigurationSet = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-sms-voice") @new external new_: (Js.Promise.t<request>) => t = "DeleteConfigurationSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationSet = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: wordCharactersWithDelimiters
}
  type response = unit
  @module("@aws-sdk/client-sms-voice") @new external new_: (Js.Promise.t<request>) => t = "CreateConfigurationSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConfigurationSets = {
  type t;
  type request = {
@as("PageSize") pageSize: __string,
@as("NextToken") nextToken: __string
}
  type response = {
@as("NextToken") nextToken: nextTokenString,
@as("ConfigurationSets") configurationSets: configurationSets
}
  @module("@aws-sdk/client-sms-voice") @new external new_: (Js.Promise.t<request>) => t = "ListConfigurationSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConfigurationSetEventDestination = {
  type t;
  type request = {
@as("EventDestinationName") eventDestinationName: option<__string>,
@as("EventDestination") eventDestination: eventDestinationDefinition,
@as("ConfigurationSetName") configurationSetName: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-sms-voice") @new external new_: (Js.Promise.t<request>) => t = "UpdateConfigurationSetEventDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendVoiceMessage = {
  type t;
  type request = {
@as("OriginationPhoneNumber") originationPhoneNumber: nonEmptyString,
@as("DestinationPhoneNumber") destinationPhoneNumber: nonEmptyString,
@as("Content") content: voiceMessageContent,
@as("ConfigurationSetName") configurationSetName: wordCharactersWithDelimiters,
@as("CallerId") callerId: amazonawsString
}
  type response = {
@as("MessageId") messageId: amazonawsString
}
  @module("@aws-sdk/client-sms-voice") @new external new_: (Js.Promise.t<request>) => t = "SendVoiceMessageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationSetEventDestination = {
  type t;
  type request = {
@as("EventDestinationName") eventDestinationName: nonEmptyString,
@as("EventDestination") eventDestination: eventDestinationDefinition,
@as("ConfigurationSetName") configurationSetName: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-sms-voice") @new external new_: (Js.Promise.t<request>) => t = "CreateConfigurationSetEventDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConfigurationSetEventDestinations = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: option<__string>
}
  type response = {
@as("EventDestinations") eventDestinations: eventDestinations
}
  @module("@aws-sdk/client-sms-voice") @new external new_: (Js.Promise.t<request>) => t = "GetConfigurationSetEventDestinationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
