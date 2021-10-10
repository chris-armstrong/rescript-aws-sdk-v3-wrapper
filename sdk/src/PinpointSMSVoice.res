type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-sms-voice") @new
external createClient: unit => awsServiceClient = "PinpointSMSVoiceClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __string = string
type wordCharactersWithDelimiters = string
type string_ = string
type nonEmptyString = string
type nextTokenString = string
@ocaml.doc("The types of events that are sent to the event destination.")
type eventType = [
  | @as("NO_ANSWER") #NO_ANSWER
  | @as("FAILED") #FAILED
  | @as("BUSY") #BUSY
  | @as("COMPLETED_CALL") #COMPLETED_CALL
  | @as("ANSWERED") #ANSWERED
  | @as("RINGING") #RINGING
  | @as("INITIATED_CALL") #INITIATED_CALL
]
type boolean_ = bool
@ocaml.doc(
  "An object that contains information about an event destination that sends data to Amazon SNS."
)
type snsDestination = {
  @ocaml.doc(
    "The Amazon Resource Name (ARN) of the Amazon SNS topic that you want to publish events to."
  )
  @as("TopicArn")
  topicArn: option<string_>,
}
@ocaml.doc("An object that defines a message that contains SSML-formatted text.")
type ssmlmessageType = {
  @ocaml.doc(
    "The name of the voice that you want to use to deliver the message. For a complete list of supported voices, see the Amazon Polly Developer Guide."
  )
  @as("VoiceId")
  voiceId: option<string_>,
  @ocaml.doc("The SSML-formatted text to deliver to the recipient.") @as("Text")
  text: option<nonEmptyString>,
  @ocaml.doc(
    "The language to use when delivering the message. For a complete list of supported languages, see the Amazon Polly Developer Guide."
  )
  @as("LanguageCode")
  languageCode: option<string_>,
}
@ocaml.doc("An object that defines a message that contains unformatted text.")
type plainTextMessageType = {
  @ocaml.doc(
    "The name of the voice that you want to use to deliver the message. For a complete list of supported voices, see the Amazon Polly Developer Guide."
  )
  @as("VoiceId")
  voiceId: option<string_>,
  @ocaml.doc("The plain (not SSML-formatted) text to deliver to the recipient.") @as("Text")
  text: option<nonEmptyString>,
  @ocaml.doc(
    "The language to use when delivering the message. For a complete list of supported languages, see the Amazon Polly Developer Guide."
  )
  @as("LanguageCode")
  languageCode: option<string_>,
}
@ocaml.doc(
  "An object that contains information about an event destination that sends data to Amazon Kinesis Data Firehose."
)
type kinesisFirehoseDestination = {
  @ocaml.doc(
    "The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose destination that you want to use in the event destination."
  )
  @as("IamRoleArn")
  iamRoleArn: option<string_>,
  @ocaml.doc(
    "The Amazon Resource Name (ARN) of an IAM role that can write data to an Amazon Kinesis Data Firehose stream."
  )
  @as("DeliveryStreamArn")
  deliveryStreamArn: option<string_>,
}
@ocaml.doc(
  "An array of EventDestination objects. Each EventDestination object includes ARNs and other information that define an event destination."
)
type eventTypes = array<eventType>
@ocaml.doc(
  "An array that contains all of the configuration sets in your Amazon Pinpoint account in the current AWS Region."
)
type configurationSets = array<wordCharactersWithDelimiters>
@ocaml.doc(
  "An object that contains information about an event destination that sends data to Amazon CloudWatch Logs."
)
type cloudWatchLogsDestination = {
  @ocaml.doc("The name of the Amazon CloudWatch Log Group that you want to record events in.")
  @as("LogGroupArn")
  logGroupArn: option<string_>,
  @ocaml.doc(
    "The Amazon Resource Name (ARN) of an Amazon Identity and Access Management (IAM) role that is able to write event data to an Amazon CloudWatch destination."
  )
  @as("IamRoleArn")
  iamRoleArn: option<string_>,
}
@ocaml.doc(
  "An object that defines a message that contains text formatted using Amazon Pinpoint Voice Instructions markup."
)
type callInstructionsMessageType = {
  @ocaml.doc(
    "The language to use when delivering the message. For a complete list of supported languages, see the Amazon Polly Developer Guide."
  )
  @as("Text")
  text: option<nonEmptyString>,
}
@ocaml.doc(
  "An object that contains a voice message and information about the recipient that you want to send it to."
)
type voiceMessageContent = {
  @as("SSMLMessage") ssmlmessage: option<ssmlmessageType>,
  @as("PlainTextMessage") plainTextMessage: option<plainTextMessageType>,
  @as("CallInstructionsMessage") callInstructionsMessage: option<callInstructionsMessageType>,
}
@ocaml.doc("An object that defines a single event destination.")
type eventDestinationDefinition = {
  @as("SnsDestination") snsDestination: option<snsDestination>,
  @as("MatchingEventTypes") matchingEventTypes: option<eventTypes>,
  @as("KinesisFirehoseDestination") kinesisFirehoseDestination: option<kinesisFirehoseDestination>,
  @ocaml.doc(
    "Indicates whether or not the event destination is enabled. If the event destination is enabled, then Amazon Pinpoint sends response data to the specified event destination."
  )
  @as("Enabled")
  enabled: option<boolean_>,
  @as("CloudWatchLogsDestination") cloudWatchLogsDestination: option<cloudWatchLogsDestination>,
}
@ocaml.doc("An object that defines an event destination.")
type eventDestination = {
  @as("SnsDestination") snsDestination: option<snsDestination>,
  @ocaml.doc("A name that identifies the event destination configuration.") @as("Name")
  name: option<string_>,
  @as("MatchingEventTypes") matchingEventTypes: option<eventTypes>,
  @as("KinesisFirehoseDestination") kinesisFirehoseDestination: option<kinesisFirehoseDestination>,
  @ocaml.doc(
    "Indicates whether or not the event destination is enabled. If the event destination is enabled, then Amazon Pinpoint sends response data to the specified event destination."
  )
  @as("Enabled")
  enabled: option<boolean_>,
  @as("CloudWatchLogsDestination") cloudWatchLogsDestination: option<cloudWatchLogsDestination>,
}
@ocaml.doc(
  "An array of EventDestination objects. Each EventDestination object includes ARNs and other information that define an event destination."
)
type eventDestinations = array<eventDestination>
@ocaml.doc("Pinpoint SMS and Voice Messaging public facing APIs")
module DeleteConfigurationSetEventDestination = {
  type t
  type request = {
    @ocaml.doc("EventDestinationName") @as("EventDestinationName") eventDestinationName: __string,
    @ocaml.doc("ConfigurationSetName") @as("ConfigurationSetName") configurationSetName: __string,
  }

  @module("@aws-sdk/client-sms-voice") @new
  external new: request => t = "DeleteConfigurationSetEventDestinationCommand"
  let make = (~eventDestinationName, ~configurationSetName, ()) =>
    new({eventDestinationName: eventDestinationName, configurationSetName: configurationSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteConfigurationSet = {
  type t
  type request = {
    @ocaml.doc("ConfigurationSetName") @as("ConfigurationSetName") configurationSetName: __string,
  }

  @module("@aws-sdk/client-sms-voice") @new
  external new: request => t = "DeleteConfigurationSetCommand"
  let make = (~configurationSetName, ()) => new({configurationSetName: configurationSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateConfigurationSet = {
  type t
  @ocaml.doc("A request to create a new configuration set.")
  type request = {
    @ocaml.doc("The name that you want to give the configuration set.") @as("ConfigurationSetName")
    configurationSetName: option<wordCharactersWithDelimiters>,
  }

  @module("@aws-sdk/client-sms-voice") @new
  external new: request => t = "CreateConfigurationSetCommand"
  let make = (~configurationSetName=?, ()) => new({configurationSetName: configurationSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListConfigurationSets = {
  type t
  type request = {
    @ocaml.doc("Used to specify the number of items that should be returned in the response.")
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc(
      "A token returned from a previous call to the API that indicates the position in the list of results."
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  @ocaml.doc(
    "An object that contains information about the configuration sets for your account in the current region."
  )
  type response = {
    @ocaml.doc(
      "A token returned from a previous call to ListConfigurationSets to indicate the position in the list of configuration sets."
    )
    @as("NextToken")
    nextToken: option<nextTokenString>,
    @ocaml.doc(
      "An object that contains a list of configuration sets for your account in the current region."
    )
    @as("ConfigurationSets")
    configurationSets: option<configurationSets>,
  }
  @module("@aws-sdk/client-sms-voice") @new
  external new: request => t = "ListConfigurationSetsCommand"
  let make = (~pageSize=?, ~nextToken=?, ()) => new({pageSize: pageSize, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateConfigurationSetEventDestination = {
  type t
  @ocaml.doc("UpdateConfigurationSetEventDestinationRequest")
  type request = {
    @ocaml.doc("EventDestinationName") @as("EventDestinationName") eventDestinationName: __string,
    @as("EventDestination") eventDestination: option<eventDestinationDefinition>,
    @ocaml.doc("ConfigurationSetName") @as("ConfigurationSetName") configurationSetName: __string,
  }

  @module("@aws-sdk/client-sms-voice") @new
  external new: request => t = "UpdateConfigurationSetEventDestinationCommand"
  let make = (~eventDestinationName, ~configurationSetName, ~eventDestination=?, ()) =>
    new({
      eventDestinationName: eventDestinationName,
      eventDestination: eventDestination,
      configurationSetName: configurationSetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SendVoiceMessage = {
  type t
  @ocaml.doc("SendVoiceMessageRequest")
  type request = {
    @ocaml.doc(
      "The phone number that Amazon Pinpoint should use to send the voice message. This isn't necessarily the phone number that appears on recipients' devices when they receive the message, because you can specify a CallerId parameter in the request."
    )
    @as("OriginationPhoneNumber")
    originationPhoneNumber: option<nonEmptyString>,
    @ocaml.doc("The phone number that you want to send the voice message to.")
    @as("DestinationPhoneNumber")
    destinationPhoneNumber: option<nonEmptyString>,
    @as("Content") content: option<voiceMessageContent>,
    @ocaml.doc("The name of the configuration set that you want to use to send the message.")
    @as("ConfigurationSetName")
    configurationSetName: option<wordCharactersWithDelimiters>,
    @ocaml.doc(
      "The phone number that appears on recipients' devices when they receive the message."
    )
    @as("CallerId")
    callerId: option<string_>,
  }
  @ocaml.doc(
    "An object that that contains the Message ID of a Voice message that was sent successfully."
  )
  type response = {
    @ocaml.doc("A unique identifier for the voice message.") @as("MessageId")
    messageId: option<string_>,
  }
  @module("@aws-sdk/client-sms-voice") @new external new: request => t = "SendVoiceMessageCommand"
  let make = (
    ~originationPhoneNumber=?,
    ~destinationPhoneNumber=?,
    ~content=?,
    ~configurationSetName=?,
    ~callerId=?,
    (),
  ) =>
    new({
      originationPhoneNumber: originationPhoneNumber,
      destinationPhoneNumber: destinationPhoneNumber,
      content: content,
      configurationSetName: configurationSetName,
      callerId: callerId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConfigurationSetEventDestination = {
  type t
  @ocaml.doc("Create a new event destination in a configuration set.")
  type request = {
    @ocaml.doc("A name that identifies the event destination.") @as("EventDestinationName")
    eventDestinationName: option<nonEmptyString>,
    @as("EventDestination") eventDestination: option<eventDestinationDefinition>,
    @ocaml.doc("ConfigurationSetName") @as("ConfigurationSetName") configurationSetName: __string,
  }

  @module("@aws-sdk/client-sms-voice") @new
  external new: request => t = "CreateConfigurationSetEventDestinationCommand"
  let make = (~configurationSetName, ~eventDestinationName=?, ~eventDestination=?, ()) =>
    new({
      eventDestinationName: eventDestinationName,
      eventDestination: eventDestination,
      configurationSetName: configurationSetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetConfigurationSetEventDestinations = {
  type t
  type request = {
    @ocaml.doc("ConfigurationSetName") @as("ConfigurationSetName") configurationSetName: __string,
  }
  @ocaml.doc("An object that contains information about an event destination.")
  type response = {@as("EventDestinations") eventDestinations: option<eventDestinations>}
  @module("@aws-sdk/client-sms-voice") @new
  external new: request => t = "GetConfigurationSetEventDestinationsCommand"
  let make = (~configurationSetName, ()) => new({configurationSetName: configurationSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
