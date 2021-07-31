type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-lex") @new
external createClient: unit => awsServiceClient = "LexRuntimeV2Client"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type text = string
type string_ = string
type sessionId = string
type sentimentType = [
  | @as("POSITIVE") #POSITIVE
  | @as("NEUTRAL") #NEUTRAL
  | @as("NEGATIVE") #NEGATIVE
  | @as("MIXED") #MIXED
]
type sensitiveNonEmptyString = string
type playbackInterruptionReason = [
  | @as("VOICE_START_DETECTED") #VOICE_START_DETECTED
  | @as("TEXT_DETECTED") #TEXT_DETECTED
  | @as("DTMF_START_DETECTED") #DTMF_START_DETECTED
]
type parameterName = string
type nonEmptyString = string
type messageContentType = [
  | @as("SSML") #SSML
  | @as("PlainText") #PlainText
  | @as("ImageResponseCard") #ImageResponseCard
  | @as("CustomPayload") #CustomPayload
]
type localeId = string
type intentState = [
  | @as("Waiting") #Waiting
  | @as("ReadyForFulfillment") #ReadyForFulfillment
  | @as("InProgress") #InProgress
  | @as("Fulfilled") #Fulfilled
  | @as("Failed") #Failed
]
type inputMode = [@as("DTMF") #DTMF | @as("Speech") #Speech | @as("Text") #Text]
type eventId = string
type epochMillis = float
type double = float
type dialogActionType = [
  | @as("ElicitSlot") #ElicitSlot
  | @as("ElicitIntent") #ElicitIntent
  | @as("Delegate") #Delegate
  | @as("ConfirmIntent") #ConfirmIntent
  | @as("Close") #Close
]
type dtmfregex = string
type conversationMode = [@as("TEXT") #TEXT | @as("AUDIO") #AUDIO]
type confirmationState = [@as("None") #None | @as("Denied") #Denied | @as("Confirmed") #Confirmed]
type buttonValue = string
type buttonText = string
type botIdentifier = string
type botAliasIdentifier = string
type boolean_ = bool
type blobStream = NodeJs.Buffer.t
type audioChunk = NodeJs.Buffer.t
type attachmentUrl = string
type attachmentTitle = string
type activeContextTurnsToLive = int
type activeContextTimeToLiveInSeconds = int
type activeContextName = string
type validationException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: string_,
}
type transcriptEvent = {
  eventId: option<eventId>,
  transcript: option<string_>,
}
type throttlingException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: string_,
}
type textInputEvent = {
  clientTimestampMillis: option<epochMillis>,
  eventId: option<eventId>,
  text: text,
}
type stringMap = Js.Dict.t<string_>
type stringList = array<nonEmptyString>
type sentimentScore = {
  mixed: option<double>,
  neutral: option<double>,
  negative: option<double>,
  positive: option<double>,
}
type resourceNotFoundException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: string_,
}
type playbackInterruptionEvent = {
  eventId: option<eventId>,
  causedByEventId: option<eventId>,
  eventReason: option<playbackInterruptionReason>,
}
type playbackCompletionEvent = {
  clientTimestampMillis: option<epochMillis>,
  eventId: option<eventId>,
}
type internalServerException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: string_,
}
type heartbeatEvent = {eventId: option<eventId>}
type disconnectionEvent = {
  clientTimestampMillis: option<epochMillis>,
  eventId: option<eventId>,
}
type dialogAction = {
  slotToElicit: option<nonEmptyString>,
  @as("type") type_: dialogActionType,
}
type dependencyFailedException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: string_,
}
type dtmfinputEvent = {
  clientTimestampMillis: option<epochMillis>,
  eventId: option<eventId>,
  inputCharacter: dtmfregex,
}
type conflictException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: string_,
}
type confidenceScore = {score: option<double>}
type button = {
  value: buttonValue,
  text: buttonText,
}
type badGatewayException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: string_,
}
type audioResponseEvent = {
  eventId: option<eventId>,
  contentType: option<nonEmptyString>,
  audioChunk: option<audioChunk>,
}
type audioInputEvent = {
  clientTimestampMillis: option<epochMillis>,
  eventId: option<eventId>,
  contentType: nonEmptyString,
  audioChunk: option<audioChunk>,
}
type activeContextTimeToLive = {
  turnsToLive: activeContextTurnsToLive,
  timeToLiveInSeconds: activeContextTimeToLiveInSeconds,
}
type activeContextParametersMap = Js.Dict.t<text>
type accessDeniedException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: string_,
}
type value = {
  resolvedValues: option<stringList>,
  interpretedValue: nonEmptyString,
  originalValue: option<nonEmptyString>,
}
type sentimentResponse = {
  sentimentScore: option<sentimentScore>,
  sentiment: option<sentimentType>,
}
type buttonsList = array<button>
type activeContext = {
  contextAttributes: option<activeContextParametersMap>,
  timeToLive: activeContextTimeToLive,
  name: activeContextName,
}
type slot = {value: option<value>}
type imageResponseCard = {
  buttons: option<buttonsList>,
  imageUrl: option<attachmentUrl>,
  subtitle: option<attachmentTitle>,
  title: attachmentTitle,
}
type activeContextsList = array<activeContext>
type slots = Js.Dict.t<slot>
type message = {
  imageResponseCard: option<imageResponseCard>,
  contentType: option<messageContentType>,
  content: option<text>,
}
type messages = array<message>
type intent = {
  confirmationState: option<confirmationState>,
  state: option<intentState>,
  slots: option<slots>,
  name: nonEmptyString,
}
type textResponseEvent = {
  eventId: option<eventId>,
  messages: option<messages>,
}
type sessionState = {
  originatingRequestId: option<nonEmptyString>,
  sessionAttributes: option<stringMap>,
  activeContexts: option<activeContextsList>,
  intent: option<intent>,
  dialogAction: option<dialogAction>,
}
type interpretation = {
  intent: option<intent>,
  sentimentResponse: option<sentimentResponse>,
  nluConfidence: option<confidenceScore>,
}
type interpretations = array<interpretation>
type configurationEvent = {
  clientTimestampMillis: option<epochMillis>,
  eventId: option<eventId>,
  disablePlayback: option<boolean_>,
  welcomeMessages: option<messages>,
  sessionState: option<sessionState>,
  responseContentType: nonEmptyString,
  requestAttributes: option<stringMap>,
}
type startConversationRequestEventStream = {
  @as("DisconnectionEvent") disconnectionEvent: option<disconnectionEvent>,
  @as("PlaybackCompletionEvent") playbackCompletionEvent: option<playbackCompletionEvent>,
  @as("TextInputEvent") textInputEvent: option<textInputEvent>,
  @as("DTMFInputEvent") dtmfinputEvent: option<dtmfinputEvent>,
  @as("AudioInputEvent") audioInputEvent: option<audioInputEvent>,
  @as("ConfigurationEvent") configurationEvent: option<configurationEvent>,
}
type intentResultEvent = {
  eventId: option<eventId>,
  sessionId: option<sessionId>,
  requestAttributes: option<stringMap>,
  sessionState: option<sessionState>,
  interpretations: option<interpretations>,
  inputMode: option<inputMode>,
}
type startConversationResponseEventStream = {
  @as("BadGatewayException") badGatewayException: option<badGatewayException>,
  @as("DependencyFailedException") dependencyFailedException: option<dependencyFailedException>,
  @as("ConflictException") conflictException: option<conflictException>,
  @as("InternalServerException") internalServerException: option<internalServerException>,
  @as("ThrottlingException") throttlingException: option<throttlingException>,
  @as("ValidationException") validationException: option<validationException>,
  @as("ResourceNotFoundException") resourceNotFoundException: option<resourceNotFoundException>,
  @as("AccessDeniedException") accessDeniedException: option<accessDeniedException>,
  @as("HeartbeatEvent") heartbeatEvent: option<heartbeatEvent>,
  @as("AudioResponseEvent") audioResponseEvent: option<audioResponseEvent>,
  @as("TextResponseEvent") textResponseEvent: option<textResponseEvent>,
  @as("IntentResultEvent") intentResultEvent: option<intentResultEvent>,
  @as("TranscriptEvent") transcriptEvent: option<transcriptEvent>,
  @as("PlaybackInterruptionEvent") playbackInterruptionEvent: option<playbackInterruptionEvent>,
}

module RecognizeUtterance = {
  type t
  type request = {
    inputStream: option<blobStream>,
    responseContentType: option<nonEmptyString>,
    requestContentType: nonEmptyString,
    requestAttributes: option<sensitiveNonEmptyString>,
    sessionState: option<sensitiveNonEmptyString>,
    sessionId: sessionId,
    localeId: localeId,
    botAliasId: botAliasIdentifier,
    botId: botIdentifier,
  }
  type response = {
    audioStream: option<blobStream>,
    inputTranscript: option<nonEmptyString>,
    sessionId: option<sessionId>,
    requestAttributes: option<nonEmptyString>,
    sessionState: option<nonEmptyString>,
    interpretations: option<nonEmptyString>,
    messages: option<nonEmptyString>,
    contentType: option<nonEmptyString>,
    inputMode: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-lex") @new external new_: request => t = "RecognizeUtteranceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSession = {
  type t
  type request = {
    sessionId: sessionId,
    localeId: localeId,
    botAliasId: botAliasIdentifier,
    botId: botIdentifier,
  }
  type response = {
    sessionId: option<sessionId>,
    localeId: option<localeId>,
    botAliasId: option<botAliasIdentifier>,
    botId: option<botIdentifier>,
  }
  @module("@aws-sdk/client-lex") @new external new_: request => t = "DeleteSessionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutSession = {
  type t
  type request = {
    responseContentType: option<nonEmptyString>,
    requestAttributes: option<stringMap>,
    sessionState: sessionState,
    messages: option<messages>,
    sessionId: sessionId,
    localeId: localeId,
    botAliasId: botAliasIdentifier,
    botId: botIdentifier,
  }
  type response = {
    audioStream: option<blobStream>,
    sessionId: option<sessionId>,
    requestAttributes: option<nonEmptyString>,
    sessionState: option<nonEmptyString>,
    messages: option<nonEmptyString>,
    contentType: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-lex") @new external new_: request => t = "PutSessionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RecognizeText = {
  type t
  type request = {
    requestAttributes: option<stringMap>,
    sessionState: option<sessionState>,
    text: text,
    sessionId: sessionId,
    localeId: localeId,
    botAliasId: botAliasIdentifier,
    botId: botIdentifier,
  }
  type response = {
    sessionId: option<sessionId>,
    requestAttributes: option<stringMap>,
    interpretations: option<interpretations>,
    sessionState: option<sessionState>,
    messages: option<messages>,
  }
  @module("@aws-sdk/client-lex") @new external new_: request => t = "RecognizeTextCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSession = {
  type t
  type request = {
    sessionId: sessionId,
    localeId: localeId,
    botAliasId: botAliasIdentifier,
    botId: botIdentifier,
  }
  type response = {
    sessionState: option<sessionState>,
    interpretations: option<interpretations>,
    messages: option<messages>,
    sessionId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-lex") @new external new_: request => t = "GetSessionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartConversation = {
  type t
  type request = {
    requestEventStream: startConversationRequestEventStream,
    conversationMode: option<conversationMode>,
    sessionId: sessionId,
    localeId: localeId,
    botAliasId: botAliasIdentifier,
    botId: botIdentifier,
  }
  type response = {responseEventStream: option<startConversationResponseEventStream>}
  @module("@aws-sdk/client-lex") @new external new_: request => t = "StartConversationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
