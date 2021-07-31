type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type __string = string
type wordCharactersWithDelimiters = string
type string_ = string
type nonEmptyString = string
type nextTokenString = string
type eventType = [@as("NO_ANSWER") #NOANSWER | @as("FAILED") #FAILED | @as("BUSY") #BUSY | @as("COMPLETED_CALL") #COMPLETEDCALL | @as("ANSWERED") #ANSWERED | @as("RINGING") #RINGING | @as("INITIATED_CALL") #INITIATEDCALL]
type boolean_ = bool
type snsDestination = {
@as("TopicArn") topicArn: option<string_>
}
type ssmlmessageType = {
@as("VoiceId") voiceId: option<string_>,
@as("Text") text: option<nonEmptyString>,
@as("LanguageCode") languageCode: option<string_>
}
type plainTextMessageType = {
@as("VoiceId") voiceId: option<string_>,
@as("Text") text: option<nonEmptyString>,
@as("LanguageCode") languageCode: option<string_>
}
type kinesisFirehoseDestination = {
@as("IamRoleArn") iamRoleArn: option<string_>,
@as("DeliveryStreamArn") deliveryStreamArn: option<string_>
}
type eventTypes = array<eventType>
type configurationSets = array<wordCharactersWithDelimiters>
type cloudWatchLogsDestination = {
@as("LogGroupArn") logGroupArn: option<string_>,
@as("IamRoleArn") iamRoleArn: option<string_>
}
type callInstructionsMessageType = {
@as("Text") text: option<nonEmptyString>
}
type voiceMessageContent = {
@as("SSMLMessage") ssmlmessage: option<ssmlmessageType>,
@as("PlainTextMessage") plainTextMessage: option<plainTextMessageType>,
@as("CallInstructionsMessage") callInstructionsMessage: option<callInstructionsMessageType>
}
type eventDestinationDefinition = {
@as("SnsDestination") snsDestination: option<snsDestination>,
@as("MatchingEventTypes") matchingEventTypes: option<eventTypes>,
@as("KinesisFirehoseDestination") kinesisFirehoseDestination: option<kinesisFirehoseDestination>,
@as("Enabled") enabled: option<boolean_>,
@as("CloudWatchLogsDestination") cloudWatchLogsDestination: option<cloudWatchLogsDestination>
}
type eventDestination = {
@as("SnsDestination") snsDestination: option<snsDestination>,
@as("Name") name: option<string_>,
@as("MatchingEventTypes") matchingEventTypes: option<eventTypes>,
@as("KinesisFirehoseDestination") kinesisFirehoseDestination: option<kinesisFirehoseDestination>,
@as("Enabled") enabled: option<boolean_>,
@as("CloudWatchLogsDestination") cloudWatchLogsDestination: option<cloudWatchLogsDestination>
}
type eventDestinations = array<eventDestination>
type awsServiceClient;
@module("@aws-sdk/client-sms-voice") @new external createClient: unit => awsServiceClient = "PinpointSMSVoiceClient";
module DeleteConfigurationSetEventDestination = {
  type t;
  type request = {
@as("EventDestinationName") eventDestinationName: __string,
@as("ConfigurationSetName") configurationSetName: __string
}
  type response = unit
  @module("@aws-sdk/client-sms-voice") @new external new_: (request) => t = "DeleteConfigurationSetEventDestinationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteConfigurationSet = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: __string
}
  type response = unit
  @module("@aws-sdk/client-sms-voice") @new external new_: (request) => t = "DeleteConfigurationSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationSet = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: option<wordCharactersWithDelimiters>
}
  type response = unit
  @module("@aws-sdk/client-sms-voice") @new external new_: (request) => t = "CreateConfigurationSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListConfigurationSets = {
  type t;
  type request = {
@as("PageSize") pageSize: option<__string>,
@as("NextToken") nextToken: option<__string>
}
  type response = {
@as("NextToken") nextToken: option<nextTokenString>,
@as("ConfigurationSets") configurationSets: option<configurationSets>
}
  @module("@aws-sdk/client-sms-voice") @new external new_: (request) => t = "ListConfigurationSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateConfigurationSetEventDestination = {
  type t;
  type request = {
@as("EventDestinationName") eventDestinationName: __string,
@as("EventDestination") eventDestination: option<eventDestinationDefinition>,
@as("ConfigurationSetName") configurationSetName: __string
}
  type response = unit
  @module("@aws-sdk/client-sms-voice") @new external new_: (request) => t = "UpdateConfigurationSetEventDestinationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendVoiceMessage = {
  type t;
  type request = {
@as("OriginationPhoneNumber") originationPhoneNumber: option<nonEmptyString>,
@as("DestinationPhoneNumber") destinationPhoneNumber: option<nonEmptyString>,
@as("Content") content: option<voiceMessageContent>,
@as("ConfigurationSetName") configurationSetName: option<wordCharactersWithDelimiters>,
@as("CallerId") callerId: option<string_>
}
  type response = {
@as("MessageId") messageId: option<string_>
}
  @module("@aws-sdk/client-sms-voice") @new external new_: (request) => t = "SendVoiceMessageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationSetEventDestination = {
  type t;
  type request = {
@as("EventDestinationName") eventDestinationName: option<nonEmptyString>,
@as("EventDestination") eventDestination: option<eventDestinationDefinition>,
@as("ConfigurationSetName") configurationSetName: __string
}
  type response = unit
  @module("@aws-sdk/client-sms-voice") @new external new_: (request) => t = "CreateConfigurationSetEventDestinationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetConfigurationSetEventDestinations = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: __string
}
  type response = {
@as("EventDestinations") eventDestinations: option<eventDestinations>
}
  @module("@aws-sdk/client-sms-voice") @new external new_: (request) => t = "GetConfigurationSetEventDestinationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
