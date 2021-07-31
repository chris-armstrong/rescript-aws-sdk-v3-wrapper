type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type text = string
type amazonawsString = string
type sessionId = string
type sentimentType = [@as("POSITIVE") #POSITIVE | @as("NEUTRAL") #NEUTRAL | @as("NEGATIVE") #NEGATIVE | @as("MIXED") #MIXED]
type sensitiveNonEmptyString = string
type playbackInterruptionReason = [@as("VOICE_START_DETECTED") #VOICE_START_DETECTED | @as("TEXT_DETECTED") #TEXT_DETECTED | @as("DTMF_START_DETECTED") #DTMF_START_DETECTED]
type parameterName = string
type nonEmptyString = string
type messageContentType = [@as("SSML") #SSML | @as("PlainText") #PlainText | @as("ImageResponseCard") #ImageResponseCard | @as("CustomPayload") #CustomPayload]
type localeId = string
type intentState = [@as("Waiting") #Waiting | @as("ReadyForFulfillment") #ReadyForFulfillment | @as("InProgress") #InProgress | @as("Fulfilled") #Fulfilled | @as("Failed") #Failed]
type inputMode = [@as("DTMF") #DTMF | @as("Speech") #Speech | @as("Text") #Text]
type eventId = string
type epochMillis = float;
type amazonawsDouble = float;
type dialogActionType = [@as("ElicitSlot") #ElicitSlot | @as("ElicitIntent") #ElicitIntent | @as("Delegate") #Delegate | @as("ConfirmIntent") #ConfirmIntent | @as("Close") #Close]
type dTMFRegex = string
type conversationMode = [@as("TEXT") #TEXT | @as("AUDIO") #AUDIO]
type confirmationState = [@as("None") #None | @as("Denied") #Denied | @as("Confirmed") #Confirmed]
type buttonValue = string
type buttonText = string
type botIdentifier = string
type botAliasIdentifier = string
type amazonawsBoolean = bool;
type blobStream = NodeJs.Buffer.t;
type audioChunk = NodeJs.Buffer.t;
type attachmentUrl = string
type attachmentTitle = string
type activeContextTurnsToLive = int;
type activeContextTimeToLiveInSeconds = int;
type activeContextName = string
exception ValidationException;
type transcriptEvent = {
@as("eventId") eventId: eventId,
@as("transcript") transcript: amazonawsString
}
exception ThrottlingException;
type textInputEvent = {
@as("clientTimestampMillis") clientTimestampMillis: epochMillis,
@as("eventId") eventId: eventId,
@as("text") text: option<text>
}
type stringMap = Js.Dict.t< amazonawsString>
type stringList = array<nonEmptyString>
type sentimentScore = {
@as("mixed") mixed: amazonawsDouble,
@as("neutral") neutral: amazonawsDouble,
@as("negative") negative: amazonawsDouble,
@as("positive") positive: amazonawsDouble
}
exception ResourceNotFoundException;
type playbackInterruptionEvent = {
@as("eventId") eventId: eventId,
@as("causedByEventId") causedByEventId: eventId,
@as("eventReason") eventReason: playbackInterruptionReason
}
type playbackCompletionEvent = {
@as("clientTimestampMillis") clientTimestampMillis: epochMillis,
@as("eventId") eventId: eventId
}
exception InternalServerException;
type heartbeatEvent = {
@as("eventId") eventId: eventId
}
type disconnectionEvent = {
@as("clientTimestampMillis") clientTimestampMillis: epochMillis,
@as("eventId") eventId: eventId
}
type dialogAction = {
@as("slotToElicit") slotToElicit: nonEmptyString,
@as("type") type_: option<dialogActionType>
}
exception DependencyFailedException;
type dTMFInputEvent = {
@as("clientTimestampMillis") clientTimestampMillis: epochMillis,
@as("eventId") eventId: eventId,
@as("inputCharacter") inputCharacter: option<dTMFRegex>
}
exception ConflictException;
type confidenceScore = {
@as("score") score: amazonawsDouble
}
type button = {
@as("value") value: option<buttonValue>,
@as("text") text: option<buttonText>
}
exception BadGatewayException;
type audioResponseEvent = {
@as("eventId") eventId: eventId,
@as("contentType") contentType: nonEmptyString,
@as("audioChunk") audioChunk: audioChunk
}
type audioInputEvent = {
@as("clientTimestampMillis") clientTimestampMillis: epochMillis,
@as("eventId") eventId: eventId,
@as("contentType") contentType: option<nonEmptyString>,
@as("audioChunk") audioChunk: audioChunk
}
type activeContextTimeToLive = {
@as("turnsToLive") turnsToLive: option<activeContextTurnsToLive>,
@as("timeToLiveInSeconds") timeToLiveInSeconds: option<activeContextTimeToLiveInSeconds>
}
type activeContextParametersMap = Js.Dict.t< text>
exception AccessDeniedException;
type value = {
@as("resolvedValues") resolvedValues: stringList,
@as("interpretedValue") interpretedValue: option<nonEmptyString>,
@as("originalValue") originalValue: nonEmptyString
}
type sentimentResponse = {
@as("sentimentScore") sentimentScore: sentimentScore,
@as("sentiment") sentiment: sentimentType
}
type buttonsList = array<button>
type activeContext = {
@as("contextAttributes") contextAttributes: activeContextParametersMap,
@as("timeToLive") timeToLive: option<activeContextTimeToLive>,
@as("name") name: option<activeContextName>
}
type slot = {
@as("value") value: value
}
type imageResponseCard = {
@as("buttons") buttons: buttonsList,
@as("imageUrl") imageUrl: attachmentUrl,
@as("subtitle") subtitle: attachmentTitle,
@as("title") title: option<attachmentTitle>
}
type activeContextsList = array<activeContext>
type slots = Js.Dict.t< slot>
type message = {
@as("imageResponseCard") imageResponseCard: imageResponseCard,
@as("contentType") contentType: messageContentType,
@as("content") content: text
}
type messages = array<message>
type intent = {
@as("confirmationState") confirmationState: confirmationState,
@as("state") state: intentState,
@as("slots") slots: slots,
@as("name") name: option<nonEmptyString>
}
type textResponseEvent = {
@as("eventId") eventId: eventId,
@as("messages") messages: messages
}
type sessionState = {
@as("originatingRequestId") originatingRequestId: nonEmptyString,
@as("sessionAttributes") sessionAttributes: stringMap,
@as("activeContexts") activeContexts: activeContextsList,
@as("intent") intent: intent,
@as("dialogAction") dialogAction: dialogAction
}
type interpretation = {
@as("intent") intent: intent,
@as("sentimentResponse") sentimentResponse: sentimentResponse,
@as("nluConfidence") nluConfidence: confidenceScore
}
type interpretations = array<interpretation>
type configurationEvent = {
@as("clientTimestampMillis") clientTimestampMillis: epochMillis,
@as("eventId") eventId: eventId,
@as("disablePlayback") disablePlayback: amazonawsBoolean,
@as("welcomeMessages") welcomeMessages: messages,
@as("sessionState") sessionState: sessionState,
@as("responseContentType") responseContentType: option<nonEmptyString>,
@as("requestAttributes") requestAttributes: stringMap
}
type startConversationRequestEventStream = DisconnectionEvent(disconnectionEvent) | PlaybackCompletionEvent(playbackCompletionEvent) | TextInputEvent(textInputEvent) | DTMFInputEvent(dTMFInputEvent) | AudioInputEvent(audioInputEvent) | ConfigurationEvent(configurationEvent);
type intentResultEvent = {
@as("eventId") eventId: eventId,
@as("sessionId") sessionId: sessionId,
@as("requestAttributes") requestAttributes: stringMap,
@as("sessionState") sessionState: sessionState,
@as("interpretations") interpretations: interpretations,
@as("inputMode") inputMode: inputMode
}
type startConversationResponseEventStream = BadGatewayException(badGatewayException) | DependencyFailedException(dependencyFailedException) | ConflictException(conflictException) | InternalServerException(internalServerException) | ThrottlingException(throttlingException) | ValidationException(validationException) | ResourceNotFoundException(resourceNotFoundException) | AccessDeniedException(accessDeniedException) | HeartbeatEvent(heartbeatEvent) | AudioResponseEvent(audioResponseEvent) | TextResponseEvent(textResponseEvent) | IntentResultEvent(intentResultEvent) | TranscriptEvent(transcriptEvent) | PlaybackInterruptionEvent(playbackInterruptionEvent);
type clientType;
@module("@aws-sdk/client-lex") @new external createClient: unit => clientType = "LexRuntimeV2Client";
module RecognizeUtterance = {
  type t;
  type request = {
@as("inputStream") inputStream: blobStream,
@as("responseContentType") responseContentType: nonEmptyString,
@as("requestContentType") requestContentType: option<nonEmptyString>,
@as("requestAttributes") requestAttributes: sensitiveNonEmptyString,
@as("sessionState") sessionState: sensitiveNonEmptyString,
@as("sessionId") sessionId: option<sessionId>,
@as("localeId") localeId: option<localeId>,
@as("botAliasId") botAliasId: option<botAliasIdentifier>,
@as("botId") botId: option<botIdentifier>
}
  type response = {
@as("audioStream") audioStream: blobStream,
@as("inputTranscript") inputTranscript: nonEmptyString,
@as("sessionId") sessionId: sessionId,
@as("requestAttributes") requestAttributes: nonEmptyString,
@as("sessionState") sessionState: nonEmptyString,
@as("interpretations") interpretations: nonEmptyString,
@as("messages") messages: nonEmptyString,
@as("contentType") contentType: nonEmptyString,
@as("inputMode") inputMode: nonEmptyString
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "RecognizeUtteranceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSession = {
  type t;
  type request = {
@as("sessionId") sessionId: option<sessionId>,
@as("localeId") localeId: option<localeId>,
@as("botAliasId") botAliasId: option<botAliasIdentifier>,
@as("botId") botId: option<botIdentifier>
}
  type response = {
@as("sessionId") sessionId: sessionId,
@as("localeId") localeId: localeId,
@as("botAliasId") botAliasId: botAliasIdentifier,
@as("botId") botId: botIdentifier
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutSession = {
  type t;
  type request = {
@as("responseContentType") responseContentType: nonEmptyString,
@as("requestAttributes") requestAttributes: stringMap,
@as("sessionState") sessionState: option<sessionState>,
@as("messages") messages: messages,
@as("sessionId") sessionId: option<sessionId>,
@as("localeId") localeId: option<localeId>,
@as("botAliasId") botAliasId: option<botAliasIdentifier>,
@as("botId") botId: option<botIdentifier>
}
  type response = {
@as("audioStream") audioStream: blobStream,
@as("sessionId") sessionId: sessionId,
@as("requestAttributes") requestAttributes: nonEmptyString,
@as("sessionState") sessionState: nonEmptyString,
@as("messages") messages: nonEmptyString,
@as("contentType") contentType: nonEmptyString
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "PutSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RecognizeText = {
  type t;
  type request = {
@as("requestAttributes") requestAttributes: stringMap,
@as("sessionState") sessionState: sessionState,
@as("text") text: option<text>,
@as("sessionId") sessionId: option<sessionId>,
@as("localeId") localeId: option<localeId>,
@as("botAliasId") botAliasId: option<botAliasIdentifier>,
@as("botId") botId: option<botIdentifier>
}
  type response = {
@as("sessionId") sessionId: sessionId,
@as("requestAttributes") requestAttributes: stringMap,
@as("interpretations") interpretations: interpretations,
@as("sessionState") sessionState: sessionState,
@as("messages") messages: messages
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "RecognizeTextCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSession = {
  type t;
  type request = {
@as("sessionId") sessionId: option<sessionId>,
@as("localeId") localeId: option<localeId>,
@as("botAliasId") botAliasId: option<botAliasIdentifier>,
@as("botId") botId: option<botIdentifier>
}
  type response = {
@as("sessionState") sessionState: sessionState,
@as("interpretations") interpretations: interpretations,
@as("messages") messages: messages,
@as("sessionId") sessionId: nonEmptyString
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartConversation = {
  type t;
  type request = {
@as("requestEventStream") requestEventStream: option<startConversationRequestEventStream>,
@as("conversationMode") conversationMode: conversationMode,
@as("sessionId") sessionId: option<sessionId>,
@as("localeId") localeId: option<localeId>,
@as("botAliasId") botAliasId: option<botAliasIdentifier>,
@as("botId") botId: option<botIdentifier>
}
  type response = {
@as("responseEventStream") responseEventStream: startConversationResponseEventStream
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "StartConversationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
