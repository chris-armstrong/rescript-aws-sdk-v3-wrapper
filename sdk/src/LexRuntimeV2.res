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
type styleType = [
  | @as("SpellByWord") #SpellByWord
  | @as("SpellByLetter") #SpellByLetter
  | @as("Default") #Default
]
type string_ = string
type shape = [@as("List") #List | @as("Scalar") #Scalar]
type sessionId = string
type sentimentType = [
  | @as("POSITIVE") #POSITIVE
  | @as("NEUTRAL") #NEUTRAL
  | @as("NEGATIVE") #NEGATIVE
  | @as("MIXED") #MIXED
]
type sensitiveNonEmptyString = string
type runtimeHintPhrase = string
type playbackInterruptionReason = [
  | @as("VOICE_START_DETECTED") #VOICE_START_DETECTED
  | @as("TEXT_DETECTED") #TEXT_DETECTED
  | @as("DTMF_START_DETECTED") #DTMF_START_DETECTED
]
type parameterName = string
type nonEmptyString = string
type name = string
type messageContentType = [
  | @as("SSML") #SSML
  | @as("PlainText") #PlainText
  | @as("ImageResponseCard") #ImageResponseCard
  | @as("CustomPayload") #CustomPayload
]
type localeId = string
type intentState = [
  | @as("FulfillmentInProgress") #FulfillmentInProgress
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
  | @as("None") #None
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
@ocaml.doc("<p></p>")
type validationException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: string_,
}
@ocaml.doc("<p>Event sent from Amazon Lex V2 to your client application that contains a
         transcript of voice audio. </p>")
type transcriptEvent = {
  @ocaml.doc("<p>A unique identifier of the event sent by Amazon Lex V2. The identifier is in
         the form <code>RESPONSE-N</code>, where N is a number starting with one
         and incremented for each event sent by Amazon Lex V2 in the current
         session.</p>")
  eventId: option<eventId>,
  @ocaml.doc("<p>The transcript of the voice audio from the user.</p>") transcript: option<string_>,
}
@ocaml.doc("<p></p>")
type throttlingException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: string_,
}
@ocaml.doc("<p>The event sent from your client application to Amazon Lex V2 with text input
         from the user.</p>")
type textInputEvent = {
  @ocaml.doc("<p>A timestamp set by the client of the date and time that the event
         was sent to Amazon Lex V2.</p>")
  clientTimestampMillis: option<epochMillis>,
  @ocaml.doc("<p>A unique identifier that your application assigns to the event. You
         can use this to identify events in logs.</p>")
  eventId: option<eventId>,
  @ocaml.doc("<p>The text from the user. Amazon Lex V2 processes this as a complete
         statement.</p>")
  text: text,
}
type stringMap = Js.Dict.t<string_>
type stringList = array<nonEmptyString>
@ocaml.doc("<p>The individual sentiment responses for the utterance.</p>")
type sentimentScore = {
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend has in the accuracy
         of its detection of the <code>MIXED</code> sentiment.</p>")
  mixed: option<double>,
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend has in the accuracy
         of its detection of the <code>NEUTRAL</code> sentiment.</p>")
  neutral: option<double>,
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend has in the accuracy
         of its detection of the <code>NEGATIVE</code> sentiment.</p>")
  negative: option<double>,
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend has in the accuracy
         of its detection of the <code>POSITIVE</code> sentiment.</p>")
  positive: option<double>,
}
@ocaml.doc("<p>Provides the phrase that Amazon Lex V2 should look for in the user's input
         to the bot.</p>")
type runtimeHintValue = {
  @ocaml.doc("<p>The phrase that Amazon Lex V2 should look for in the user's input to the
         bot.</p>")
  phrase: runtimeHintPhrase,
}
@ocaml.doc("<p></p>")
type resourceNotFoundException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: string_,
}
@ocaml.doc("<p>Event sent from Amazon Lex V2 to indicate to the client application should
         stop playback of audio. For example, if the client is playing a prompt
         that asks for the user's telephone number, the user might start to say
         the phone number before the prompt is complete. Amazon Lex V2 sends this event
         to the client application to indicate that the user is responding and
         that Amazon Lex V2 is processing their input.</p>")
type playbackInterruptionEvent = {
  @ocaml.doc("<p>A unique identifier of the event sent by Amazon Lex V2. The identifier is in
         the form <code>RESPONSE-N</code>, where N is a number starting with one
         and incremented for each event sent by Amazon Lex V2 in the current
         session.</p>")
  eventId: option<eventId>,
  @ocaml.doc("<p>The identifier of the event that contained the audio, DTMF, or text
         that caused the interruption.</p>")
  causedByEventId: option<eventId>,
  @ocaml.doc("<p>Indicates the type of user input that Amazon Lex V2 detected.</p>")
  eventReason: option<playbackInterruptionReason>,
}
@ocaml.doc("<p>Event sent from the client application to Amazon Lex V2 to indicate that
         playback of audio is complete and that Amazon Lex V2 should start processing
         the user's input.</p>")
type playbackCompletionEvent = {
  @ocaml.doc("<p>A timestamp set by the client of the date and time that the event
         was sent to Amazon Lex V2.</p>")
  clientTimestampMillis: option<epochMillis>,
  @ocaml.doc("<p>A unique identifier that your application assigns to the event. You
         can use this to identify events in logs.</p>")
  eventId: option<eventId>,
}
@ocaml.doc("<p></p>")
type internalServerException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: string_,
}
@ocaml.doc("<p>Event that Amazon Lex V2 sends to indicate that the stream is still open
         between the client application and Amazon Lex V2 </p>")
type heartbeatEvent = {
  @ocaml.doc("<p>A unique identifier of the event sent by Amazon Lex V2. The identifier is in
         the form <code>RESPONSE-N</code>, where N is a number starting with one
         and incremented for each event sent by Amazon Lex V2 in the current
         session.</p>")
  eventId: option<eventId>,
}
@ocaml.doc("<p>A notification from the client that it is disconnecting from Amazon Lex V2.
         Sending a <code>DisconnectionEvent</code> event is optional, but can
         help identify a conversation in logs.</p>")
type disconnectionEvent = {
  @ocaml.doc("<p>A timestamp set by the client of the date and time that the event
         was sent to Amazon Lex V2.</p>")
  clientTimestampMillis: option<epochMillis>,
  @ocaml.doc("<p>A unique identifier that your application assigns to the event. You
         can use this to identify events in logs.</p>")
  eventId: option<eventId>,
}
@ocaml.doc("<p>The next action that Amazon Lex V2 should take.</p>")
type dialogAction = {
  @ocaml.doc("<p>Configures the slot to use spell-by-letter or spell-by-word style.
         When you use a style on a slot, users can spell out their input to make
         it clear to your bot.</p>
         <ul>
            <li>
               <p>Spell by letter - \"b\" \"o\" \"b\"</p>
            </li>
            <li>
               <p>Spell by word - \"b as in boy\" \"o as in oscar\" \"b as in
               boy\"</p>
            </li>
         </ul>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/using-spelling.html\">
            Using spelling to enter slot values </a>.</p>")
  slotElicitationStyle: option<styleType>,
  @ocaml.doc("<p>The name of the slot that should be elicited from the user.</p>")
  slotToElicit: option<nonEmptyString>,
  @ocaml.doc("<p>The next action that the bot should take in its interaction with the
         user. The possible values are:</p>
         <ul>
            <li>
               <p>
                  <code>Close</code> - Indicates that there will not be a
               response from the user. For example, the statement \"Your order
               has been placed\" does not require a response.</p>
            </li>
            <li>
               <p>
                  <code>ConfirmIntent</code> - The next action is asking the
               user if the intent is complete and ready to be fulfilled. This is
               a yes/no question such as \"Place the order?\"</p>
            </li>
            <li>
               <p>
                  <code>Delegate</code> - The next action is determined by
               Amazon Lex V2.</p>
            </li>
            <li>
               <p>
                  <code>ElicitSlot</code> - The next action is to elicit a slot
               value from the user.</p>
            </li>
         </ul>")
  @as("type")
  type_: dialogActionType,
}
@ocaml.doc("<p></p>")
type dependencyFailedException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: string_,
}
@ocaml.doc("<p>A DTMF character sent from the client application. DTMF characters
         are typically sent from a phone keypad to represent numbers. For
         example, you can have Amazon Lex V2 process a credit card number input from a
         phone.</p>")
type dtmfinputEvent = {
  @ocaml.doc("<p>A timestamp set by the client of the date and time that the event
         was sent to Amazon Lex V2.</p>")
  clientTimestampMillis: option<epochMillis>,
  @ocaml.doc("<p>A unique identifier that your application assigns to the event. You
         can use this to identify events in logs.</p>")
  eventId: option<eventId>,
  @ocaml.doc("<p>The DTMF character that the user pressed. The allowed characters are
         A - D, 0 - 9, # and *.</p>")
  inputCharacter: dtmfregex,
}
@ocaml.doc("<p></p>")
type conflictException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: string_,
}
@ocaml.doc("<p>Provides a score that indicates the confidence that Amazon Lex V2 has that
         an intent is the one that satisfies the user's intent.</p>")
type confidenceScore = {
  @ocaml.doc("<p>A score that indicates how confident Amazon Lex V2 is that an intent
         satisfies the user's intent. Ranges between 0.00 and 1.00. Higher
         scores indicate higher confidence.</p>")
  score: option<double>,
}
@ocaml.doc("<p>A button that appears on a response card show to the user.</p>")
type button = {
  @ocaml.doc("<p>The value returned to Amazon Lex V2 when a user chooses the button.</p>")
  value: buttonValue,
  @ocaml.doc("<p>The text that is displayed on the button.</p>") text: buttonText,
}
@ocaml.doc("<p></p>")
type badGatewayException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: string_,
}
@ocaml.doc("<p>An event sent from Amazon Lex V2 to your client application containing audio
         to play to the user. </p>")
type audioResponseEvent = {
  @ocaml.doc("<p>A unique identifier of the event sent by Amazon Lex V2. The identifier is in
         the form <code>RESPONSE-N</code>, where N is a number starting with one
         and incremented for each event sent by Amazon Lex V2 in the current
         session.</p>")
  eventId: option<eventId>,
  @ocaml.doc("<p>The encoding of the audio chunk. This is the same as the encoding
         configure in the <code>contentType</code> field of the
            <code>ConfigurationEvent</code>.</p>")
  contentType: option<nonEmptyString>,
  @ocaml.doc("<p>A chunk of the audio to play. </p>") audioChunk: option<audioChunk>,
}
@ocaml.doc("<p>Represents a chunk of audio sent from the client application to
         Amazon Lex V2. The audio is all or part of an utterance from the user.</p>
         <p>Amazon Lex V2 accumulates audio chunks until it recognizes a natural pause
         in speech before processing the input.</p>")
type audioInputEvent = {
  @ocaml.doc("<p>A timestamp set by the client of the date and time that the event
         was sent to Amazon Lex V2.</p>")
  clientTimestampMillis: option<epochMillis>,
  @ocaml.doc("<p>A unique identifier that your application assigns to the event. You
         can use this to identify events in logs.</p>")
  eventId: option<eventId>,
  @ocaml.doc("<p>The encoding used for the audio chunk. You must use 8 KHz PCM 16-bit
         mono-channel little-endian format. The value of the field should
         be:</p>
         <p>
            <code>audio/lpcm; sample-rate=8000; sample-size-bits=16;
            channel-count=1; is-big-endian=false</code>
         </p>")
  contentType: nonEmptyString,
  @ocaml.doc("<p>An encoded stream of audio.</p>") audioChunk: option<audioChunk>,
}
@ocaml.doc("<p>The time that a context is active. You can specify the time to live
         in seconds or in conversation turns.</p>")
type activeContextTimeToLive = {
  @ocaml.doc("<p>The number of turns that the context is active. You can specify up
         to 20 turns. Each request and response from the bot is a turn.</p>")
  turnsToLive: activeContextTurnsToLive,
  @ocaml.doc("<p>The number of seconds that the context is active. You can specify
         between 5 and 86400 seconds (24 hours).</p>")
  timeToLiveInSeconds: activeContextTimeToLiveInSeconds,
}
type activeContextParametersMap = Js.Dict.t<text>
@ocaml.doc("<p></p>")
type accessDeniedException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  message: string_,
}
@ocaml.doc("<p>The value of a slot.</p>")
type value = {
  @ocaml.doc("<p>A list of additional values that have been recognized for the
         slot.</p>")
  resolvedValues: option<stringList>,
  @ocaml.doc("<p>The value that Amazon Lex V2 determines for the slot. The actual value
         depends on the setting of the value selection strategy for the bot. You
         can choose to use the value entered by the user, or you can have Amazon Lex V2
         choose the first value in the <code>resolvedValues</code> list.</p>")
  interpretedValue: nonEmptyString,
  @ocaml.doc("<p>The text of the utterance from the user that was entered for the
         slot.</p>")
  originalValue: option<nonEmptyString>,
}
@ocaml.doc("<p>Provides information about the sentiment expressed in a user's
         response in a conversation. Sentiments are determined using Amazon
         Comprehend. Sentiments are only returned if they are enabled for the
         bot.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/how-sentiment.html\">
            Determine Sentiment </a> in the <i>Amazon Comprehend
            developer guide</i>.</p>")
type sentimentResponse = {
  sentimentScore: option<sentimentScore>,
  @ocaml.doc("<p>The overall sentiment expressed in the user's response. This is the
         sentiment most likely expressed by the user based on the analysis by
         Amazon Comprehend.</p>")
  sentiment: option<sentimentType>,
}
type runtimeHintValuesList = array<runtimeHintValue>
type buttonsList = array<button>
@ocaml.doc("<p>Contains information about the contexts that a user is using in a
         session. You can configure Amazon Lex V2 to set a context when an intent is
         fulfilled, or you can set a context using the , , or  operations.</p>
         <p>Use a context to indicate to Amazon Lex V2 intents that should be used as
         follow-up intents. For example, if the active context is
            <code>order-fulfilled</code>, only intents that have
            <code>order-fulfilled</code> configured as a trigger are considered
         for follow up.</p>")
type activeContext = {
  @ocaml.doc("<p>A list of contexts active for the request. A context can be
         activated when a previous intent is fulfilled, or by including the
         context in the request.</p>
         <p>If you don't specify a list of contexts, Amazon Lex V2 will use the current
         list of contexts for the session. If you specify an empty list, all
         contexts for the session are cleared. </p>")
  contextAttributes: activeContextParametersMap,
  @ocaml.doc("<p>Indicates the number of turns or seconds that the context is active.
         Once the time to live expires, the context is no longer returned in a
         response.</p>")
  timeToLive: activeContextTimeToLive,
  @ocaml.doc("<p>The name of the context.</p>") name: activeContextName,
}
@ocaml.doc("<p>Provides an array of phrases that should be given preference when
         resolving values for a slot.</p>")
type runtimeHintDetails = {
  @ocaml.doc("<p>One or more strings that Amazon Lex V2 should look for in the input to the
         bot. Each phrase is given preference when deciding on slot
         values.</p>")
  runtimeHintValues: runtimeHintValuesList,
}
@ocaml.doc("<p>A card that is shown to the user by a messaging platform. You define
         the contents of the card, the card is displayed by the platform. </p>
         <p>When you use a response card, the response from the user is
         constrained to the text associated with a button on the card.</p>")
type imageResponseCard = {
  @ocaml.doc("<p>A list of buttons that should be displayed on the response card. The
         arrangement of the buttons is determined by the platform that displays
         the button.</p>")
  buttons: option<buttonsList>,
  @ocaml.doc("<p>The URL of an image to display on the response card. The image URL
         must be publicly available so that the platform displaying the response
         card has access to the image.</p>")
  imageUrl: option<attachmentUrl>,
  @ocaml.doc("<p>The subtitle to display on the response card. The format of the
         subtitle is determined by the platform displaying the response
         card.</p>")
  subtitle: option<attachmentTitle>,
  @ocaml.doc("<p>The title to display on the response card. The format of the title
         is determined by the platform displaying the response card.</p>")
  title: attachmentTitle,
}
type activeContextsList = array<activeContext>
type slotHintsSlotMap = Js.Dict.t<runtimeHintDetails>
@ocaml.doc("<p>Container for text that is returned to the customer..</p>")
type message = {
  imageResponseCard: option<imageResponseCard>,
  @ocaml.doc("<p>Indicates the type of response.</p>") contentType: messageContentType,
  @ocaml.doc("<p>The text of the message.</p>") content: option<text>,
}
type slotHintsIntentMap = Js.Dict.t<slotHintsSlotMap>
type messages = array<message>
@ocaml.doc("<p>The event sent from Amazon Lex V2 to your application with text to present
         to the user.</p>")
type textResponseEvent = {
  @ocaml.doc("<p>A unique identifier of the event sent by Amazon Lex V2. The identifier is in
         the form <code>RESPONSE-N</code>, where N is a number starting with one
         and incremented for each event sent by Amazon Lex V2 in the current
         session.</p>")
  eventId: option<eventId>,
  @ocaml.doc("<p>A list of messages to send to the user. Messages are ordered based
         on the order that you returned the messages from your Lambda function
         or the order that the messages are defined in the bot.</p>")
  messages: option<messages>,
}
@ocaml.doc("<p>You can provide Amazon Lex V2 with hints to the phrases that a customer is
         likely to use for a slot. When a slot with hints is resolved, the
         phrases in the runtime hints are preferred in the resolution. You can
         provide hints for a maximum of 100 intents. You can provide a maximum
         of 100 slots.</p>
         <p>Before you can use runtime hints with an existing bot, you must
         first rebuild the bot.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/using-hints.xml\">Using hints to improve
            accuracy</a>.</p>")
type runtimeHints = {
  @ocaml.doc("<p>A list of the slots in the intent that should have runtime hints
         added, and the phrases that should be added for each slot.</p>
         <p>The first level of the <code>slotHints</code> map is the name of the
         intent. The second level is the name of the slot within the intent. For
         more information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/using-hints.xml\">Using hints to improve
            accuracy</a>.</p>
         <p>The intent name and slot name must exist.</p>")
  slotHints: option<slotHintsIntentMap>,
}
type rec values = array<slot>
and slot = {
  @ocaml.doc("<p>A list of one or more values that the user provided for the slot.
         For example, if a for a slot that elicits pizza toppings, the values
         might be \"pepperoni\" and \"pineapple.\" </p>")
  values: option<values>,
  @ocaml.doc("<p>When the <code>shape</code> value is <code>List</code>, it indicates
         that the <code>values</code> field contains a list of slot values. When
         the value is <code>Scalar</code>, it indicates that the
            <code>value</code> field contains a single value.</p>")
  shape: option<shape>,
  @ocaml.doc("<p>The current value of the slot.</p>") value: option<value>,
}
type slots = Js.Dict.t<slot>
@ocaml.doc("<p>The current intent that Amazon Lex V2 is attempting to fulfill.</p>")
type intent = {
  @ocaml.doc("<p>Contains information about whether fulfillment of the intent has
         been confirmed.</p>")
  confirmationState: option<confirmationState>,
  @ocaml.doc("<p>Contains fulfillment information for the intent. </p>") state: option<intentState>,
  @ocaml.doc("<p>A map of all of the slots for the intent. The name of the slot maps
         to the value of the slot. If a slot has not been filled, the value is
         null.</p>")
  slots: option<slots>,
  @ocaml.doc("<p>The name of the intent.</p>") name: nonEmptyString,
}
@ocaml.doc("<p>The state of the user's session with Amazon Lex V2.</p>")
type sessionState = {
  @ocaml.doc("<p>Hints for phrases that a customer is likely to use 
      for a slot. Amazon Lex V2 uses the hints to help determine the correct
      value of a slot.</p>")
  runtimeHints: option<runtimeHints>,
  @ocaml.doc("<p>A unique identifier for a specific request.</p>")
  originatingRequestId: option<nonEmptyString>,
  @ocaml.doc("<p>Map of key/value pairs representing session-specific context
         information. It contains application information passed between Amazon Lex V2
         and a client application.</p>")
  sessionAttributes: option<stringMap>,
  @ocaml.doc("<p>One or more contexts that indicate to Amazon Lex V2 the context of a
         request. When a context is active, Amazon Lex V2 considers intents with the
         matching context as a trigger as the next intent in a session.</p>")
  activeContexts: option<activeContextsList>,
  @ocaml.doc("<p>The active intent that Amazon Lex V2 is processing.</p>") intent: option<intent>,
  @ocaml.doc("<p>The next step that Amazon Lex V2 should take in the conversation with a
         user.</p>")
  dialogAction: option<dialogAction>,
}
@ocaml.doc("<p>An intent that Amazon Lex V2 determined might satisfy the user's utterance.
         The intents are ordered by the confidence score. </p>")
type interpretation = {
  @ocaml.doc("<p>A list of intents that might satisfy the user's utterance. The
         intents are ordered by the confidence score.</p>")
  intent: option<intent>,
  @ocaml.doc("<p>The sentiment expressed in an utterance. </p>
         <p>When the bot is configured to send utterances to Amazon Comprehend
         for sentiment analysis, this field contains the result of the
         analysis.</p>")
  sentimentResponse: option<sentimentResponse>,
  @ocaml.doc("<p>Determines the threshold where Amazon Lex V2 will insert the
            <code>AMAZON.FallbackIntent</code>,
            <code>AMAZON.KendraSearchIntent</code>, or both when returning
         alternative intents in a response. <code>AMAZON.FallbackIntent</code>
         and <code>AMAZON.KendraSearchIntent</code> are only inserted if they
         are configured for the bot.</p>")
  nluConfidence: option<confidenceScore>,
}
type interpretations = array<interpretation>
@ocaml.doc("<p>The initial event sent from the application to Amazon Lex V2 to configure
         the conversation, including session and request attributes and the
         response content type.</p>")
type configurationEvent = {
  @ocaml.doc("<p>A timestamp set by the client of the date and time that the event
         was sent to Amazon Lex V2.</p>")
  clientTimestampMillis: option<epochMillis>,
  @ocaml.doc("<p>A unique identifier that your application assigns to the event. You
         can use this to identify events in logs.</p>")
  eventId: option<eventId>,
  @ocaml.doc("<p>Determines whether Amazon Lex V2 should send audio responses to the client
         application. 
      </p>
         <p>Set this field to false when the client is operating in a playback
         mode where audio responses are played to the user. If the client isn't
         operating in playback mode, such as a text chat application, set this
         to true so that Amazon Lex V2 doesn't wait for the prompt to finish playing on
         the client.</p>")
  disablePlayback: option<boolean_>,
  @ocaml.doc("<p>A list of messages to send to the user.</p>") welcomeMessages: option<messages>,
  sessionState: option<sessionState>,
  @ocaml.doc("<p>The message that Amazon Lex V2 returns in the response can be either text or
         speech based on the <code>responseContentType</code> value.</p>
         <ul>
            <li>
               <p>If the value is <code>text/plain;charset=utf-8</code>, Amazon Lex V2
               returns text in the response.</p>
            </li>
            <li>
               <p>If the value begins with <code>audio/</code>, Amazon Lex V2 returns
               speech in the response. Amazon Lex V2 uses Amazon Polly to generate the speech
               using the configuration that you specified in the
                  <code>requestContentType</code> parameter. For example, if you
               specify <code>audio/mpeg</code> as the value, Amazon Lex V2 returns
               speech in the MPEG format.</p>
            </li>
            <li>
               <p>If the value is <code>audio/pcm</code>, the speech returned is
               audio/pcm in 16-bit, little-endian format.</p>
            </li>
            <li>
               <p>The following are the accepted values:</p>
               <ul>
                  <li>
                     <p>audio/mpeg</p>
                  </li>
                  <li>
                     <p>audio/ogg</p>
                  </li>
                  <li>
                     <p>audio/pcm</p>
                  </li>
                  <li>
                     <p>audio/* (defaults to mpeg)</p>
                  </li>
                  <li>
                     <p>text/plain; charset=utf-8</p>
                  </li>
               </ul>
            </li>
         </ul>")
  responseContentType: nonEmptyString,
  @ocaml.doc("<p>Request-specific information passed between the client application
         and Amazon Lex V2.</p>
         <p>The namespace <code>x-amz-lex:</code> is reserved for special
         attributes. Don't create any request attributes for prefix
            <code>x-amz-lex:</code>.</p>")
  requestAttributes: option<stringMap>,
}
@ocaml.doc("<p>Represents a stream of events between your application and
         Amazon Lex V2.</p>")
type startConversationRequestEventStream = {
  @ocaml.doc("<p>Event sent from the client application to indicate to Amazon Lex V2 that the
         conversation is over.</p>")
  @as("DisconnectionEvent")
  disconnectionEvent: option<disconnectionEvent>,
  @ocaml.doc("<p>Event sent from the client application to Amazon Lex V2 to indicate that it
         has finished playing audio and that Amazon Lex V2 should start listening for
         user input.</p>")
  @as("PlaybackCompletionEvent")
  playbackCompletionEvent: option<playbackCompletionEvent>,
  @ocaml.doc("<p>Text sent from your client application to Amazon Lex V2. Each
            <code>TextInputEvent</code> is processed individually.</p>")
  @as("TextInputEvent")
  textInputEvent: option<textInputEvent>,
  @ocaml.doc("<p>DTMF information sent to Amazon Lex V2 by your application. Amazon Lex V2
         accumulates the DMTF information from when the user sends the first
         character and ends</p>
         <ul>
            <li>
               <p>when there's a pause longer that the value configured for the
               end timeout.</p>
            </li>
            <li>
               <p>when there's a digit that is the configured end
               character.</p>
            </li>
            <li>
               <p>when Amazon Lex V2 accumulates characters equal to the maximum DTMF
               character configuration.</p>
            </li>
         </ul>")
  @as("DTMFInputEvent")
  dtmfinputEvent: option<dtmfinputEvent>,
  @ocaml.doc("<p>Speech audio sent from your client application to Amazon Lex V2. Audio
         starts accumulating when Amazon Lex V2 identifies a voice and continues until a
         natural pause in the speech is found before processing.</p>")
  @as("AudioInputEvent")
  audioInputEvent: option<audioInputEvent>,
  @ocaml.doc("<p>Configuration information sent from your client application to
         Amazon Lex V2</p>")
  @as("ConfigurationEvent")
  configurationEvent: option<configurationEvent>,
}
module StartConversationRequestEventStream = {
  type t =
    | DisconnectionEvent(disconnectionEvent)
    | PlaybackCompletionEvent(playbackCompletionEvent)
    | TextInputEvent(textInputEvent)
    | DTMFInputEvent(dtmfinputEvent)
    | AudioInputEvent(audioInputEvent)
    | ConfigurationEvent(configurationEvent)
  exception StartConversationRequestEventStreamUnspecified
  let classify = value =>
    switch value {
    | {disconnectionEvent: Some(x)} => DisconnectionEvent(x)
    | {playbackCompletionEvent: Some(x)} => PlaybackCompletionEvent(x)
    | {textInputEvent: Some(x)} => TextInputEvent(x)
    | {dtmfinputEvent: Some(x)} => DTMFInputEvent(x)
    | {audioInputEvent: Some(x)} => AudioInputEvent(x)
    | {configurationEvent: Some(x)} => ConfigurationEvent(x)
    | _ => raise(StartConversationRequestEventStreamUnspecified)
    }

  let make = value =>
    switch value {
    | DisconnectionEvent(x) => {
        disconnectionEvent: Some(x),
        playbackCompletionEvent: None,
        textInputEvent: None,
        dtmfinputEvent: None,
        audioInputEvent: None,
        configurationEvent: None,
      }
    | PlaybackCompletionEvent(x) => {
        playbackCompletionEvent: Some(x),
        disconnectionEvent: None,
        textInputEvent: None,
        dtmfinputEvent: None,
        audioInputEvent: None,
        configurationEvent: None,
      }
    | TextInputEvent(x) => {
        textInputEvent: Some(x),
        disconnectionEvent: None,
        playbackCompletionEvent: None,
        dtmfinputEvent: None,
        audioInputEvent: None,
        configurationEvent: None,
      }
    | DTMFInputEvent(x) => {
        dtmfinputEvent: Some(x),
        disconnectionEvent: None,
        playbackCompletionEvent: None,
        textInputEvent: None,
        audioInputEvent: None,
        configurationEvent: None,
      }
    | AudioInputEvent(x) => {
        audioInputEvent: Some(x),
        disconnectionEvent: None,
        playbackCompletionEvent: None,
        textInputEvent: None,
        dtmfinputEvent: None,
        configurationEvent: None,
      }
    | ConfigurationEvent(x) => {
        configurationEvent: Some(x),
        disconnectionEvent: None,
        playbackCompletionEvent: None,
        textInputEvent: None,
        dtmfinputEvent: None,
        audioInputEvent: None,
      }
    }
}
@ocaml.doc("<p>Contains the current state of the conversation between the client
         application and Amazon Lex V2.</p>")
type intentResultEvent = {
  @ocaml.doc("<p>A unique identifier of the event sent by Amazon Lex V2. The identifier is in
         the form <code>RESPONSE-N</code>, where N is a number starting with one
         and incremented for each event sent by Amazon Lex V2 in the current
         session.</p>")
  eventId: option<eventId>,
  @ocaml.doc("<p>The identifier of the session in use.</p>") sessionId: option<sessionId>,
  @ocaml.doc("<p>The attributes sent in the request.</p>") requestAttributes: option<stringMap>,
  sessionState: option<sessionState>,
  @ocaml.doc("<p>A list of intents that Amazon Lex V2 determined might satisfy the user's
         utterance.</p>

         <p>Each interpretation includes the intent, a score that indicates how
         confident Amazon Lex V2 is that the interpretation is the correct one, and an
         optional sentiment response that indicates the sentiment expressed in
         the utterance.</p>")
  interpretations: option<interpretations>,
  @ocaml.doc("<p>Indicates whether the input to the operation was text or
         speech.</p>")
  inputMode: option<inputMode>,
}
@ocaml.doc("<p>Represents a stream of events between Amazon Lex V2 and your
         application.</p>")
type startConversationResponseEventStream = {
  @as("BadGatewayException") badGatewayException: option<badGatewayException>,
  @as("DependencyFailedException") dependencyFailedException: option<dependencyFailedException>,
  @ocaml.doc("<p>Exception thrown when two clients are using the same AWS account,
         Amazon Lex V2 bot, and session ID.</p>")
  @as("ConflictException")
  conflictException: option<conflictException>,
  @ocaml.doc("<p>An error occurred with Amazon Lex V2.</p>") @as("InternalServerException")
  internalServerException: option<internalServerException>,
  @ocaml.doc("<p>Exception thrown when your application exceeds the maximum number of
         concurrent requests. </p>")
  @as("ThrottlingException")
  throttlingException: option<throttlingException>,
  @ocaml.doc("<p>Exception thrown when one or more parameters could not be validated.
         The <code>message</code> contains the name of the field that isn't
         valid.</p>")
  @as("ValidationException")
  validationException: option<validationException>,
  @ocaml.doc("<p>Exception thrown if one of the input parameters points to a resource
         that does not exist. For example, if the bot ID specified does not
         exist.</p>")
  @as("ResourceNotFoundException")
  resourceNotFoundException: option<resourceNotFoundException>,
  @ocaml.doc("<p>Exception thrown when the credentials passed with the request are
         invalid or expired. Also thrown when the credentials in the request do
         not have permission to access the <code>StartConversation</code>
         operation.</p>")
  @as("AccessDeniedException")
  accessDeniedException: option<accessDeniedException>,
  @as("HeartbeatEvent") heartbeatEvent: option<heartbeatEvent>,
  @as("AudioResponseEvent") audioResponseEvent: option<audioResponseEvent>,
  @as("TextResponseEvent") textResponseEvent: option<textResponseEvent>,
  @ocaml.doc("<p>Event sent from Amazon Lex V2 to the client application containing the
         current state of the conversation between the user and Amazon Lex V2.</p>")
  @as("IntentResultEvent")
  intentResultEvent: option<intentResultEvent>,
  @as("TranscriptEvent") transcriptEvent: option<transcriptEvent>,
  @as("PlaybackInterruptionEvent") playbackInterruptionEvent: option<playbackInterruptionEvent>,
}
module StartConversationResponseEventStream = {
  type t =
    | BadGatewayException(badGatewayException)
    | DependencyFailedException(dependencyFailedException)
    | ConflictException(conflictException)
    | InternalServerException(internalServerException)
    | ThrottlingException(throttlingException)
    | ValidationException(validationException)
    | ResourceNotFoundException(resourceNotFoundException)
    | AccessDeniedException(accessDeniedException)
    | HeartbeatEvent(heartbeatEvent)
    | AudioResponseEvent(audioResponseEvent)
    | TextResponseEvent(textResponseEvent)
    | IntentResultEvent(intentResultEvent)
    | TranscriptEvent(transcriptEvent)
    | PlaybackInterruptionEvent(playbackInterruptionEvent)
  exception StartConversationResponseEventStreamUnspecified
  let classify = value =>
    switch value {
    | {badGatewayException: Some(x)} => BadGatewayException(x)
    | {dependencyFailedException: Some(x)} => DependencyFailedException(x)
    | {conflictException: Some(x)} => ConflictException(x)
    | {internalServerException: Some(x)} => InternalServerException(x)
    | {throttlingException: Some(x)} => ThrottlingException(x)
    | {validationException: Some(x)} => ValidationException(x)
    | {resourceNotFoundException: Some(x)} => ResourceNotFoundException(x)
    | {accessDeniedException: Some(x)} => AccessDeniedException(x)
    | {heartbeatEvent: Some(x)} => HeartbeatEvent(x)
    | {audioResponseEvent: Some(x)} => AudioResponseEvent(x)
    | {textResponseEvent: Some(x)} => TextResponseEvent(x)
    | {intentResultEvent: Some(x)} => IntentResultEvent(x)
    | {transcriptEvent: Some(x)} => TranscriptEvent(x)
    | {playbackInterruptionEvent: Some(x)} => PlaybackInterruptionEvent(x)
    | _ => raise(StartConversationResponseEventStreamUnspecified)
    }

  let make = value =>
    switch value {
    | BadGatewayException(x) => {
        badGatewayException: Some(x),
        dependencyFailedException: None,
        conflictException: None,
        internalServerException: None,
        throttlingException: None,
        validationException: None,
        resourceNotFoundException: None,
        accessDeniedException: None,
        heartbeatEvent: None,
        audioResponseEvent: None,
        textResponseEvent: None,
        intentResultEvent: None,
        transcriptEvent: None,
        playbackInterruptionEvent: None,
      }
    | DependencyFailedException(x) => {
        dependencyFailedException: Some(x),
        badGatewayException: None,
        conflictException: None,
        internalServerException: None,
        throttlingException: None,
        validationException: None,
        resourceNotFoundException: None,
        accessDeniedException: None,
        heartbeatEvent: None,
        audioResponseEvent: None,
        textResponseEvent: None,
        intentResultEvent: None,
        transcriptEvent: None,
        playbackInterruptionEvent: None,
      }
    | ConflictException(x) => {
        conflictException: Some(x),
        badGatewayException: None,
        dependencyFailedException: None,
        internalServerException: None,
        throttlingException: None,
        validationException: None,
        resourceNotFoundException: None,
        accessDeniedException: None,
        heartbeatEvent: None,
        audioResponseEvent: None,
        textResponseEvent: None,
        intentResultEvent: None,
        transcriptEvent: None,
        playbackInterruptionEvent: None,
      }
    | InternalServerException(x) => {
        internalServerException: Some(x),
        badGatewayException: None,
        dependencyFailedException: None,
        conflictException: None,
        throttlingException: None,
        validationException: None,
        resourceNotFoundException: None,
        accessDeniedException: None,
        heartbeatEvent: None,
        audioResponseEvent: None,
        textResponseEvent: None,
        intentResultEvent: None,
        transcriptEvent: None,
        playbackInterruptionEvent: None,
      }
    | ThrottlingException(x) => {
        throttlingException: Some(x),
        badGatewayException: None,
        dependencyFailedException: None,
        conflictException: None,
        internalServerException: None,
        validationException: None,
        resourceNotFoundException: None,
        accessDeniedException: None,
        heartbeatEvent: None,
        audioResponseEvent: None,
        textResponseEvent: None,
        intentResultEvent: None,
        transcriptEvent: None,
        playbackInterruptionEvent: None,
      }
    | ValidationException(x) => {
        validationException: Some(x),
        badGatewayException: None,
        dependencyFailedException: None,
        conflictException: None,
        internalServerException: None,
        throttlingException: None,
        resourceNotFoundException: None,
        accessDeniedException: None,
        heartbeatEvent: None,
        audioResponseEvent: None,
        textResponseEvent: None,
        intentResultEvent: None,
        transcriptEvent: None,
        playbackInterruptionEvent: None,
      }
    | ResourceNotFoundException(x) => {
        resourceNotFoundException: Some(x),
        badGatewayException: None,
        dependencyFailedException: None,
        conflictException: None,
        internalServerException: None,
        throttlingException: None,
        validationException: None,
        accessDeniedException: None,
        heartbeatEvent: None,
        audioResponseEvent: None,
        textResponseEvent: None,
        intentResultEvent: None,
        transcriptEvent: None,
        playbackInterruptionEvent: None,
      }
    | AccessDeniedException(x) => {
        accessDeniedException: Some(x),
        badGatewayException: None,
        dependencyFailedException: None,
        conflictException: None,
        internalServerException: None,
        throttlingException: None,
        validationException: None,
        resourceNotFoundException: None,
        heartbeatEvent: None,
        audioResponseEvent: None,
        textResponseEvent: None,
        intentResultEvent: None,
        transcriptEvent: None,
        playbackInterruptionEvent: None,
      }
    | HeartbeatEvent(x) => {
        heartbeatEvent: Some(x),
        badGatewayException: None,
        dependencyFailedException: None,
        conflictException: None,
        internalServerException: None,
        throttlingException: None,
        validationException: None,
        resourceNotFoundException: None,
        accessDeniedException: None,
        audioResponseEvent: None,
        textResponseEvent: None,
        intentResultEvent: None,
        transcriptEvent: None,
        playbackInterruptionEvent: None,
      }
    | AudioResponseEvent(x) => {
        audioResponseEvent: Some(x),
        badGatewayException: None,
        dependencyFailedException: None,
        conflictException: None,
        internalServerException: None,
        throttlingException: None,
        validationException: None,
        resourceNotFoundException: None,
        accessDeniedException: None,
        heartbeatEvent: None,
        textResponseEvent: None,
        intentResultEvent: None,
        transcriptEvent: None,
        playbackInterruptionEvent: None,
      }
    | TextResponseEvent(x) => {
        textResponseEvent: Some(x),
        badGatewayException: None,
        dependencyFailedException: None,
        conflictException: None,
        internalServerException: None,
        throttlingException: None,
        validationException: None,
        resourceNotFoundException: None,
        accessDeniedException: None,
        heartbeatEvent: None,
        audioResponseEvent: None,
        intentResultEvent: None,
        transcriptEvent: None,
        playbackInterruptionEvent: None,
      }
    | IntentResultEvent(x) => {
        intentResultEvent: Some(x),
        badGatewayException: None,
        dependencyFailedException: None,
        conflictException: None,
        internalServerException: None,
        throttlingException: None,
        validationException: None,
        resourceNotFoundException: None,
        accessDeniedException: None,
        heartbeatEvent: None,
        audioResponseEvent: None,
        textResponseEvent: None,
        transcriptEvent: None,
        playbackInterruptionEvent: None,
      }
    | TranscriptEvent(x) => {
        transcriptEvent: Some(x),
        badGatewayException: None,
        dependencyFailedException: None,
        conflictException: None,
        internalServerException: None,
        throttlingException: None,
        validationException: None,
        resourceNotFoundException: None,
        accessDeniedException: None,
        heartbeatEvent: None,
        audioResponseEvent: None,
        textResponseEvent: None,
        intentResultEvent: None,
        playbackInterruptionEvent: None,
      }
    | PlaybackInterruptionEvent(x) => {
        playbackInterruptionEvent: Some(x),
        badGatewayException: None,
        dependencyFailedException: None,
        conflictException: None,
        internalServerException: None,
        throttlingException: None,
        validationException: None,
        resourceNotFoundException: None,
        accessDeniedException: None,
        heartbeatEvent: None,
        audioResponseEvent: None,
        textResponseEvent: None,
        intentResultEvent: None,
        transcriptEvent: None,
      }
    }
}
@ocaml.doc("<p></p>")
module RecognizeUtterance = {
  type t
  type request = {
    @ocaml.doc("<p>User input in PCM or Opus audio format or text format as described
         in the <code>requestContentType</code> parameter.</p>")
    inputStream: option<blobStream>,
    @ocaml.doc("<p>The message that Amazon Lex V2 returns in the response can be either text or
         speech based on the <code>responseContentType</code> value.</p>
         <ul>
            <li>
               <p>If the value is <code>text/plain;charset=utf-8</code>, Amazon Lex V2
               returns text in the response.</p>
            </li>
            <li>
               <p>If the value begins with <code>audio/</code>, Amazon Lex V2 returns
               speech in the response. Amazon Lex V2 uses Amazon Polly to generate the speech
               using the configuration that you specified in the
                  <code>requestContentType</code> parameter. For example, if you
               specify <code>audio/mpeg</code> as the value, Amazon Lex V2 returns
               speech in the MPEG format.</p>
            </li>
            <li>
               <p>If the value is <code>audio/pcm</code>, the speech returned is
                  <code>audio/pcm</code> at 16 KHz in 16-bit, little-endian
               format.</p>
            </li>
            <li>
               <p>The following are the accepted values:</p>
               <ul>
                  <li>
                     <p>audio/mpeg</p>
                  </li>
                  <li>
                     <p>audio/ogg</p>
                  </li>
                  <li>
                     <p>audio/pcm (16 KHz)</p>
                  </li>
                  <li>
                     <p>audio/* (defaults to mpeg)</p>
                  </li>
                  <li>
                     <p>text/plain; charset=utf-8</p>
                  </li>
               </ul>
            </li>
         </ul>")
    responseContentType: option<nonEmptyString>,
    @ocaml.doc("<p>Indicates the format for audio input or that the content is text.
         The header must start with one of the following prefixes:</p>
         <ul>
            <li>
               <p>PCM format, audio data must be in little-endian byte
               order.</p>
               <ul>
                  <li>
                     <p>audio/l16; rate=16000; channels=1</p>
                  </li>
                  <li>
                     <p>audio/x-l16; sample-rate=16000; channel-count=1</p>
                  </li>
                  <li>
                     <p>audio/lpcm; sample-rate=8000; sample-size-bits=16;
                     channel-count=1; is-big-endian=false</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Opus format</p>
               <ul>
                  <li>
                     <p>audio/x-cbr-opus-with-preamble;preamble-size=0;bit-rate=256000;frame-size-milliseconds=4</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Text format</p>
               <ul>
                  <li>
                     <p>text/plain; charset=utf-8</p>
                  </li>
               </ul>
            </li>
         </ul>")
    requestContentType: nonEmptyString,
    @ocaml.doc("<p>Request-specific information passed between the client application
         and Amazon Lex V2 </p>
         <p>The namespace <code>x-amz-lex:</code> is reserved for special
         attributes. Don't create any request attributes for prefix
            <code>x-amz-lex:</code>.</p>
         <p>The <code>requestAttributes</code> field must be compressed using
         gzip and then base64 encoded before sending to Amazon Lex V2.</p>")
    requestAttributes: option<sensitiveNonEmptyString>,
    @ocaml.doc("<p>Sets the state of the session with the user. You can use this to set
         the current intent, attributes, context, and dialog action. Use the
         dialog action to determine the next step that Amazon Lex V2 should use in the
         conversation with the user.</p>
         <p>The <code>sessionState</code> field must be compressed using gzip
         and then base64 encoded before sending to Amazon Lex V2.</p>")
    sessionState: option<sensitiveNonEmptyString>,
    @ocaml.doc("<p>The identifier of the session in use.</p>") sessionId: sessionId,
    @ocaml.doc("<p>The locale where the session is in use.</p>") localeId: localeId,
    @ocaml.doc("<p>The alias identifier in use for the bot that should receive the
         request.</p>")
    botAliasId: botAliasIdentifier,
    @ocaml.doc("<p>The identifier of the bot that should receive the request.</p>")
    botId: botIdentifier,
  }
  type response = {
    @ocaml.doc("<p>The prompt or statement to send to the user. This is based on the
         bot configuration and context. For example, if Amazon Lex V2 did not understand
         the user intent, it sends the <code>clarificationPrompt</code>
         configured for the bot. If the intent requires confirmation before
         taking the fulfillment action, it sends the
            <code>confirmationPrompt</code>. Another example: Suppose that the
         Lambda function successfully fulfilled the intent, and sent a message
         to convey to the user. Then Amazon Lex V2 sends that message in the
         response.</p>")
    audioStream: option<blobStream>,
    @ocaml.doc("<p>The text used to process the request.</p>
         <p>If the input was an audio stream, the <code>inputTranscript</code>
         field contains the text extracted from the audio stream. This is the
         text that is actually processed to recognize intents and slot values.
         You can use this information to determine if Amazon Lex V2 is correctly
         processing the audio that you send.</p>
         <p>The <code>inputTranscript</code> field is compressed with gzip and
         then base64 encoded. Before you can use the contents of the field, you
         must decode and decompress the contents. See the example for a simple
         function to decode and decompress the contents.</p>")
    inputTranscript: option<nonEmptyString>,
    @ocaml.doc("<p>The identifier of the session in use.</p>") sessionId: option<sessionId>,
    @ocaml.doc("<p>The attributes sent in the request.</p>
         <p>The <code>requestAttributes</code> field is compressed with gzip and
         then base64 encoded. Before you can use the contents of the field, you
         must decode and decompress the contents.</p>")
    requestAttributes: option<nonEmptyString>,
    @ocaml.doc("<p>Represents the current state of the dialog between the user and the
         bot.</p>
         <p>Use this to determine the progress of the conversation and what the
         next action might be.</p>
         <p>The <code>sessionState</code> field is compressed with gzip and then
         base64 encoded. Before you can use the contents of the field, you must
         decode and decompress the contents. See the example for a simple
         function to decode and decompress the contents.</p>")
    sessionState: option<nonEmptyString>,
    @ocaml.doc("<p>A list of intents that Amazon Lex V2 determined might satisfy the user's
         utterance.</p>
         <p>Each interpretation includes the intent, a score that indicates how
         confident Amazon Lex V2 is that the interpretation is the correct one, and an
         optional sentiment response that indicates the sentiment expressed in
         the utterance.</p>
         <p>The <code>interpretations</code> field is compressed with gzip and
         then base64 encoded. Before you can use the contents of the field, you
         must decode and decompress the contents. See the example for a simple
         function to decode and decompress the contents.</p>")
    interpretations: option<nonEmptyString>,
    @ocaml.doc("<p>A list of messages that were last sent to the user. The messages are
         ordered based on the order that you returned the messages from your
         Lambda function or the order that the messages are defined in the
         bot.</p>
         <p>The <code>messages</code> field is compressed with gzip and then
         base64 encoded. Before you can use the contents of the field, you must
         decode and decompress the contents. See the example for a simple
         function to decode and decompress the contents.</p>")
    messages: option<nonEmptyString>,
    @ocaml.doc("<p>Content type as specified in the <code>responseContentType</code> in
         the request.</p>")
    contentType: option<nonEmptyString>,
    @ocaml.doc("<p>Indicates whether the input mode to the operation was text or
         speech. 
      </p>")
    inputMode: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "RecognizeUtteranceCommand"
  let make = (
    ~requestContentType,
    ~sessionId,
    ~localeId,
    ~botAliasId,
    ~botId,
    ~inputStream=?,
    ~responseContentType=?,
    ~requestAttributes=?,
    ~sessionState=?,
    (),
  ) =>
    new({
      inputStream,
      responseContentType,
      requestContentType,
      requestAttributes,
      sessionState,
      sessionId,
      localeId,
      botAliasId,
      botId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteSession = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the session to delete.</p>") sessionId: sessionId,
    @ocaml.doc("<p>The locale where the session is in use.</p>") localeId: localeId,
    @ocaml.doc("<p>The alias identifier in use for the bot that contains the session
         data.</p>")
    botAliasId: botAliasIdentifier,
    @ocaml.doc("<p>The identifier of the bot that contains the session data.</p>")
    botId: botIdentifier,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the deleted session.</p>") sessionId: option<sessionId>,
    @ocaml.doc("<p>The locale where the session was used.</p>") localeId: option<localeId>,
    @ocaml.doc("<p>The alias identifier in use for the bot that contained the session
         data.</p>")
    botAliasId: option<botAliasIdentifier>,
    @ocaml.doc("<p>The identifier of the bot that contained the session data.</p>")
    botId: option<botIdentifier>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteSessionCommand"
  let make = (~sessionId, ~localeId, ~botAliasId, ~botId, ()) =>
    new({sessionId, localeId, botAliasId, botId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutSession = {
  type t
  type request = {
    @ocaml.doc("<p>The message that Amazon Lex V2 returns in the response can be either text or
         speech depending on the value of this parameter. </p>
         <ul>
            <li>
               <p>If the value is <code>text/plain; charset=utf-8</code>, Amazon Lex V2
               returns text in the response.</p>
            </li>
         </ul>")
    responseContentType: option<nonEmptyString>,
    @ocaml.doc("<p>Request-specific information passed between Amazon Lex V2 and the client
         application.</p>
         <p>The namespace <code>x-amz-lex:</code> is reserved for special
         attributes. Don't create any request attributes with the prefix
            <code>x-amz-lex:</code>.</p>")
    requestAttributes: option<stringMap>,
    @ocaml.doc("<p>Sets the state of the session with the user. You can use this to set
         the current intent, attributes, context, and dialog action. Use the
         dialog action to determine the next step that Amazon Lex V2 should use in the
         conversation with the user.</p>")
    sessionState: sessionState,
    @ocaml.doc("<p>A list of messages to send to the user. Messages are sent in the
         order that they are defined in the list.</p>")
    messages: option<messages>,
    @ocaml.doc("<p>The identifier of the session that receives the session data.</p>")
    sessionId: sessionId,
    @ocaml.doc("<p>The locale where the session is in use.</p>") localeId: localeId,
    @ocaml.doc("<p>The alias identifier of the bot that receives the session
         data.</p>")
    botAliasId: botAliasIdentifier,
    @ocaml.doc("<p>The identifier of the bot that receives the session data.</p>")
    botId: botIdentifier,
  }
  type response = {
    @ocaml.doc("<p>If the requested content type was audio, the audio version of the
         message to convey to the user.</p>")
    audioStream: option<blobStream>,
    @ocaml.doc("<p>The identifier of the session that received the data.</p>")
    sessionId: option<sessionId>,
    @ocaml.doc("<p>Request-specific information passed between the client application
         and Amazon Lex V2. These are the same as the <code>requestAttribute</code>
         parameter in the call to the <code>PutSession</code> operation.</p>")
    requestAttributes: option<nonEmptyString>,
    @ocaml.doc("<p>Represents the current state of the dialog between the user and the
         bot.</p>
         <p>Use this to determine the progress of the conversation and what the
         next action may be.</p>")
    sessionState: option<nonEmptyString>,
    @ocaml.doc("<p>A list of messages that were last sent to the user. The messages are
         ordered based on how you return the messages from you Lambda function
         or the order that the messages are defined in the bot.</p>")
    messages: option<nonEmptyString>,
    @ocaml.doc("<p>The type of response. Same as the type specified in the
            <code>responseContentType</code> field in the request.</p>")
    contentType: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "PutSessionCommand"
  let make = (
    ~sessionState,
    ~sessionId,
    ~localeId,
    ~botAliasId,
    ~botId,
    ~responseContentType=?,
    ~requestAttributes=?,
    ~messages=?,
    (),
  ) =>
    new({
      responseContentType,
      requestAttributes,
      sessionState,
      messages,
      sessionId,
      localeId,
      botAliasId,
      botId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RecognizeText = {
  type t
  type request = {
    @ocaml.doc("<p>Request-specific information passed between the client application
         and Amazon Lex V2 </p>
         <p>The namespace <code>x-amz-lex:</code> is reserved for special
         attributes. Don't create any request attributes with the prefix
            <code>x-amz-lex:</code>.</p>")
    requestAttributes: option<stringMap>,
    @ocaml.doc("<p>The current state of the dialog between the user and the bot.</p>")
    sessionState: option<sessionState>,
    @ocaml.doc("<p>The text that the user entered. Amazon Lex V2 interprets this text.</p>")
    text: text,
    @ocaml.doc("<p>The identifier of the user session that is having the
         conversation.</p>")
    sessionId: sessionId,
    @ocaml.doc("<p>The locale where the session is in use.</p>") localeId: localeId,
    @ocaml.doc("<p>The alias identifier in use for the bot that processes the
         request.</p>")
    botAliasId: botAliasIdentifier,
    @ocaml.doc("<p>The identifier of the bot that processes the request.</p>") botId: botIdentifier,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the session in use.</p>") sessionId: option<sessionId>,
    @ocaml.doc("<p>The attributes sent in the request.</p>") requestAttributes: option<stringMap>,
    @ocaml.doc("<p>A list of intents that Amazon Lex V2 determined might satisfy the user's
         utterance. </p>
         <p>Each interpretation includes the intent, a score that indicates now
         confident Amazon Lex V2 is that the interpretation is the correct one, and an
         optional sentiment response that indicates the sentiment expressed in
         the utterance.</p>")
    interpretations: option<interpretations>,
    @ocaml.doc("<p>Represents the current state of the dialog between the user and the
         bot. </p>
         <p>Use this to determine the progress of the conversation and what the
         next action may be.</p>")
    sessionState: option<sessionState>,
    @ocaml.doc("<p>A list of messages last sent to the user. The messages are ordered
         based on the order that you returned the messages from your Lambda
         function or the order that the messages are defined in the bot.</p>")
    messages: option<messages>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "RecognizeTextCommand"
  let make = (
    ~text,
    ~sessionId,
    ~localeId,
    ~botAliasId,
    ~botId,
    ~requestAttributes=?,
    ~sessionState=?,
    (),
  ) => new({requestAttributes, sessionState, text, sessionId, localeId, botAliasId, botId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSession = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the session to return.</p>") sessionId: sessionId,
    @ocaml.doc("<p>The locale where the session is in use.</p>") localeId: localeId,
    @ocaml.doc("<p>The alias identifier in use for the bot that contains the session
         data.</p>")
    botAliasId: botAliasIdentifier,
    @ocaml.doc("<p>The identifier of the bot that contains the session data.</p>")
    botId: botIdentifier,
  }
  type response = {
    @ocaml.doc("<p>Represents the current state of the dialog between the user and the
         bot.</p>
         <p>You can use this to determine the progress of the conversation and
         what the next action might be.</p>")
    sessionState: option<sessionState>,
    @ocaml.doc("<p>A list of intents that Amazon Lex V2 determined might satisfy the user's
         utterance. </p>
         <p>Each interpretation includes the intent, a score that indicates how
         confident Amazon Lex V2 is that the interpretation is the correct one, and an
         optional sentiment response that indicates the sentiment expressed in
         the utterance.</p>")
    interpretations: option<interpretations>,
    @ocaml.doc("<p>A list of messages that were last sent to the user. The messages are
         ordered based on the order that your returned the messages from your
         Lambda function or the order that messages are defined in the bot.
      </p>")
    messages: option<messages>,
    @ocaml.doc("<p>The identifier of the returned session.</p>") sessionId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetSessionCommand"
  let make = (~sessionId, ~localeId, ~botAliasId, ~botId, ()) =>
    new({sessionId, localeId, botAliasId, botId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartConversation = {
  type t
  type request = {
    @ocaml.doc("<p>Represents the stream of events to Amazon Lex V2 from your application. The
         events are encoded as HTTP/2 data frames.</p>")
    requestEventStream: startConversationRequestEventStream,
    @ocaml.doc("<p>The conversation type that you are using the Amazon Lex V2. If the
         conversation mode is <code>AUDIO</code> you can send both audio and
         DTMF information. If the mode is <code>TEXT</code> you can only send
         text.</p>")
    conversationMode: option<conversationMode>,
    @ocaml.doc("<p>The identifier of the user session that is having the
         conversation.</p>")
    sessionId: sessionId,
    @ocaml.doc("<p>The locale where the session is in use.</p>") localeId: localeId,
    @ocaml.doc("<p>The alias identifier in use for the bot that processes the
         request.</p>")
    botAliasId: botAliasIdentifier,
    @ocaml.doc("<p>The identifier of the bot to process the request.</p>") botId: botIdentifier,
  }
  type response = {
    @ocaml.doc("<p>Represents the stream of events from Amazon Lex V2 to your application. The
         events are encoded as HTTP/2 data frames.</p>")
    responseEventStream: option<startConversationResponseEventStream>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "StartConversationCommand"
  let make = (
    ~requestEventStream,
    ~sessionId,
    ~localeId,
    ~botAliasId,
    ~botId,
    ~conversationMode=?,
    (),
  ) => new({requestEventStream, conversationMode, sessionId, localeId, botAliasId, botId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
