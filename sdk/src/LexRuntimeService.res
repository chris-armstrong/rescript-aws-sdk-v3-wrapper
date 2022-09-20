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
external createClient: unit => awsServiceClient = "LexRuntimeServiceClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type userId = string
type text = string
type synthesizedJsonString = string
type synthesizedJsonAttributesString = string
type synthesizedJsonActiveContextsString = string
type stringWithLength = string
type stringUrlWithLength = string
type string_ = string
type sentimentScore = string
type sentimentLabel = string
type sensitiveStringUnbounded = string
type sensitiveString = string
type parameterName = string
type messageFormatType = [
  | @as("Composite") #Composite
  | @as("SSML") #SSML
  | @as("CustomPayload") #CustomPayload
  | @as("PlainText") #PlainText
]
type intentSummaryCheckpointLabel = string
type intentName = string
type httpContentType = string
type fulfillmentState = [
  | @as("ReadyForFulfillment") #ReadyForFulfillment
  | @as("Failed") #Failed
  | @as("Fulfilled") #Fulfilled
]
type errorMessage = string
type double = float
type dialogState = [
  | @as("Failed") #Failed
  | @as("ReadyForFulfillment") #ReadyForFulfillment
  | @as("Fulfilled") #Fulfilled
  | @as("ElicitSlot") #ElicitSlot
  | @as("ConfirmIntent") #ConfirmIntent
  | @as("ElicitIntent") #ElicitIntent
]
type dialogActionType = [
  | @as("Delegate") #Delegate
  | @as("Close") #Close
  | @as("ElicitSlot") #ElicitSlot
  | @as("ConfirmIntent") #ConfirmIntent
  | @as("ElicitIntent") #ElicitIntent
]
type contentType = [
  | @as("application/vnd.amazonaws.card.generic") #Application_Vnd_Amazonaws_Card_Generic
]
type confirmationStatus = [@as("Denied") #Denied | @as("Confirmed") #Confirmed | @as("None") #None]
type buttonValueStringWithLength = string
type buttonTextStringWithLength = string
type botVersion = string
type botName = string
type botAlias = string
type blobStream = NodeJs.Buffer.t
type activeContextTurnsToLive = int
type activeContextTimeToLiveInSeconds = int
type activeContextName = string
type accept = string
type stringMap = Js.Dict.t<string_>
@ocaml.doc("<p>The sentiment expressed in an utterance.</p>
         <p>When the bot is configured to send utterances to Amazon Comprehend for
      sentiment analysis, this field structure contains the result of the
      analysis.</p>")
type sentimentResponse = {
  @ocaml.doc("<p>The likelihood that the sentiment was correctly inferred.</p>")
  sentimentScore: option<sentimentScore>,
  @ocaml.doc("<p>The inferred sentiment that Amazon Comprehend has the highest
      confidence in.</p>")
  sentimentLabel: option<sentimentLabel>,
}
@ocaml.doc("<p>Provides a score that indicates the confidence that Amazon Lex has that an
      intent is the one that satisfies the user's intent.</p>")
type intentConfidence = {
  @ocaml.doc("<p>A score that indicates how confident Amazon Lex is that an intent satisfies
      the user's intent. Ranges between 0.00 and 1.00. Higher scores indicate
      higher confidence.</p>")
  score: option<double>,
}
@ocaml.doc("<p>Represents an option to be shown on the client platform (Facebook,
      Slack, etc.)</p>")
type button = {
  @ocaml.doc("<p>The value sent to Amazon Lex when a user chooses the button. For
      example, consider button text \"NYC.\" When the user chooses the button, the
      value sent can be \"New York City.\"</p>")
  value: buttonValueStringWithLength,
  @ocaml.doc("<p>Text that is visible to the user on the button.</p>")
  text: buttonTextStringWithLength,
}
@ocaml.doc("<p>The length of time or number of turns that a context remains
      active.</p>")
type activeContextTimeToLive = {
  @ocaml.doc("<p>The number of conversation turns that the context should be active. A
      conversation turn is one <code>PostContent</code> or <code>PostText</code>
      request and the corresponding response from Amazon Lex.</p>")
  turnsToLive: option<activeContextTurnsToLive>,
  @ocaml.doc("<p>The number of seconds that the context should be active after it is
      first sent in a <code>PostContent</code> or <code>PostText</code>
      response. You can set the value between 5 and 86,400 seconds (24
      hours).</p>")
  timeToLiveInSeconds: option<activeContextTimeToLiveInSeconds>,
}
type activeContextParametersMap = Js.Dict.t<text>
type listOfButtons = array<button>
@ocaml.doc("<p>An intent that Amazon Lex suggests satisfies the user's intent. Includes
      the name of the intent, the confidence that Amazon Lex has that the user's
      intent is satisfied, and the slots defined for the intent.</p>")
type predictedIntent = {
  @ocaml.doc("<p>The slot and slot values associated with the predicted intent.</p>")
  slots: option<stringMap>,
  @ocaml.doc("<p>Indicates how confident Amazon Lex is that an intent satisfies the user's
      intent.</p>")
  nluIntentConfidence: option<intentConfidence>,
  @ocaml.doc("<p>The name of the intent that Amazon Lex suggests satisfies the user's
      intent.</p>")
  intentName: option<intentName>,
}
@ocaml.doc("<p>Provides information about the state of an intent. You can use this
      information to get the current state of an intent so that you can process
      the intent, or so that you can return the intent to its previous
      state.</p>")
type intentSummary = {
  @ocaml.doc("<p>The next slot to elicit from the user. If there is not slot to elicit,
      the field is blank.</p>")
  slotToElicit: option<string_>,
  @ocaml.doc("<p>The fulfillment state of the intent. The possible values are:</p>
         <ul>
            <li>
               <p>
                  <code>Failed</code> - The Lambda function associated with the
          intent failed to fulfill the intent.</p>
            </li>
            <li>
               <p>
                  <code>Fulfilled</code> - The intent has fulfilled by the Lambda
          function associated with the intent. </p>
            </li>
            <li>
               <p>
                  <code>ReadyForFulfillment</code> - All of the information
          necessary for the intent is present and the intent ready to be
          fulfilled by the client application.</p>
            </li>
         </ul>")
  fulfillmentState: option<fulfillmentState>,
  @ocaml.doc("<p>The next action that the bot should take in its interaction with the
      user. The possible values are:</p>
         <ul>
            <li>
               <p>
                  <code>ConfirmIntent</code> - The next action is asking the user if
          the intent is complete and ready to be fulfilled. This is a yes/no
          question such as \"Place the order?\"</p>
            </li>
            <li>
               <p>
                  <code>Close</code> - Indicates that the there will not be a
          response from the user. For example, the statement \"Your order has
          been placed\" does not require a response.</p>
            </li>
            <li>
               <p>
                  <code>ElicitIntent</code> - The next action is to determine the
          intent that the user wants to fulfill.</p>
            </li>
            <li>
               <p>
                  <code>ElicitSlot</code> - The next action is to elicit a slot
          value from the user.</p>
            </li>
         </ul>")
  dialogActionType: dialogActionType,
  @ocaml.doc("<p>The status of the intent after the user responds to the confirmation
      prompt. If the user confirms the intent, Amazon Lex sets this field to
        <code>Confirmed</code>. If the user denies the intent, Amazon Lex sets this
      value to <code>Denied</code>. The possible values are:</p>
         <ul>
            <li>
               <p>
                  <code>Confirmed</code> - The user has responded \"Yes\" to the
          confirmation prompt, confirming that the intent is complete and that
          it is ready to be fulfilled.</p>
            </li>
            <li>
               <p>
                  <code>Denied</code> - The user has responded \"No\" to the
          confirmation prompt.</p>
            </li>
            <li>
               <p>
                  <code>None</code> - The user has never been prompted for
          confirmation; or, the user was prompted but did not confirm or deny
          the prompt.</p>
            </li>
         </ul>")
  confirmationStatus: option<confirmationStatus>,
  @ocaml.doc("<p>Map of the slots that have been gathered and their values. </p>")
  slots: option<stringMap>,
  @ocaml.doc("<p>A user-defined label that identifies a particular intent. You can use
      this label to return to a previous intent. </p>
         <p>Use the <code>checkpointLabelFilter</code> parameter of the
        <code>GetSessionRequest</code> operation to filter the intents returned
      by the operation to those with only the specified label.</p>")
  checkpointLabel: option<intentSummaryCheckpointLabel>,
  @ocaml.doc("<p>The name of the intent.</p>") intentName: option<intentName>,
}
@ocaml.doc("<p>Describes the next action that the bot should take in its interaction
      with the user and provides information about the context in which the
      action takes place. Use the <code>DialogAction</code> data type to set the
      interaction to a specific state, or to return the interaction to a
      previous state.</p>")
type dialogAction = {
  @ocaml.doc("<ul>
            <li>
               <p>
                  <code>PlainText</code> - The message contains plain UTF-8
          text.</p>
            </li>
            <li>
               <p>
                  <code>CustomPayload</code> - The message is a custom format for
          the client.</p>
            </li>
            <li>
               <p>
                  <code>SSML</code> - The message contains text formatted for voice
          output.</p>
            </li>
            <li>
               <p>
                  <code>Composite</code> - The message contains an escaped JSON
          object containing one or more messages. For more information, see
            <a href=\"https://docs.aws.amazon.com/lex/latest/dg/howitworks-manage-prompts.html\">Message Groups</a>. </p>
            </li>
         </ul>")
  messageFormat: option<messageFormatType>,
  @ocaml.doc("<p>The message that should be shown to the user. If you don't specify a
      message, Amazon Lex will use the message configured for the intent.</p>")
  message: option<text>,
  @ocaml.doc("<p>The fulfillment state of the intent. The possible values are:</p>
         <ul>
            <li>
               <p>
                  <code>Failed</code> - The Lambda function associated with the
          intent failed to fulfill the intent.</p>
            </li>
            <li>
               <p>
                  <code>Fulfilled</code> - The intent has fulfilled by the Lambda
          function associated with the intent. </p>
            </li>
            <li>
               <p>
                  <code>ReadyForFulfillment</code> - All of the information
          necessary for the intent is present and the intent ready to be
          fulfilled by the client application.</p>
            </li>
         </ul>")
  fulfillmentState: option<fulfillmentState>,
  @ocaml.doc("<p>The name of the slot that should be elicited from the user.</p>")
  slotToElicit: option<string_>,
  @ocaml.doc("<p>Map of the slots that have been gathered and their values. </p>")
  slots: option<stringMap>,
  @ocaml.doc("<p>The name of the intent.</p>") intentName: option<intentName>,
  @ocaml.doc("<p>The next action that the bot should take in its interaction with the
      user. The possible values are:</p>
         <ul>
            <li>
               <p>
                  <code>ConfirmIntent</code> - The next action is asking the user if
          the intent is complete and ready to be fulfilled. This is a yes/no
          question such as \"Place the order?\"</p>
            </li>
            <li>
               <p>
                  <code>Close</code> - Indicates that the there will not be a
          response from the user. For example, the statement \"Your order has
          been placed\" does not require a response.</p>
            </li>
            <li>
               <p>
                  <code>Delegate</code> - The next action is determined by
          Amazon Lex.</p>
            </li>
            <li>
               <p>
                  <code>ElicitIntent</code> - The next action is to determine the
          intent that the user wants to fulfill.</p>
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
@ocaml.doc("<p>A context is a variable that contains information about the current
      state of the conversation between a user and Amazon Lex. Context can be set
      automatically by Amazon Lex when an intent is fulfilled, or it can be set at
      runtime using the <code>PutContent</code>, <code>PutText</code>, or
        <code>PutSession</code> operation.</p>")
type activeContext = {
  @ocaml.doc("<p>State variables for the current context. You can use these values as
      default values for slots in subsequent events.</p>")
  parameters: activeContextParametersMap,
  @ocaml.doc("<p>The length of time or number of turns that a context remains
      active.</p>")
  timeToLive: activeContextTimeToLive,
  @ocaml.doc("<p>The name of the context.</p>") name: activeContextName,
}
type intentSummaryList = array<intentSummary>
type intentList = array<predictedIntent>
@ocaml.doc("<p>Represents an option rendered to the user when a prompt is shown. It
      could be an image, a button, a link, or text. </p>")
type genericAttachment = {
  @ocaml.doc("<p>The list of options to show to the user.</p>") buttons: option<listOfButtons>,
  @ocaml.doc("<p>The URL of an image that is displayed to the user.</p>")
  imageUrl: option<stringUrlWithLength>,
  @ocaml.doc("<p>The URL of an attachment to the response card.</p>")
  attachmentLinkUrl: option<stringUrlWithLength>,
  @ocaml.doc("<p>The subtitle shown below the title.</p>") subTitle: option<stringWithLength>,
  @ocaml.doc("<p>The title of the option.</p>") title: option<stringWithLength>,
}
type activeContextsList = array<activeContext>
type genericAttachmentList = array<genericAttachment>
@ocaml.doc("<p>If you configure a response card when creating your bots, Amazon Lex
      substitutes the session attributes and slot values that are available, and
      then returns it. The response card can also come from a Lambda function (
        <code>dialogCodeHook</code> and <code>fulfillmentActivity</code> on an
      intent).</p>")
type responseCard = {
  @ocaml.doc("<p>An array of attachment objects representing options.</p>")
  genericAttachments: option<genericAttachmentList>,
  @ocaml.doc("<p>The content type of the response.</p>") contentType: option<contentType>,
  @ocaml.doc("<p>The version of the response card format.</p>") version: option<string_>,
}
@ocaml.doc("<p>Amazon Lex provides both build and runtime endpoints. Each endpoint
      provides a set of operations (API). Your conversational bot uses the
      runtime API to understand user utterances (user input text or voice). For
      example, suppose a user says \"I want pizza\", your bot sends this input to
      Amazon Lex using the runtime API. Amazon Lex recognizes that the user
      request is for the OrderPizza intent (one of the intents defined in the
      bot). Then Amazon Lex engages in user conversation on behalf of the bot to
      elicit required information (slot values, such as pizza size and crust
      type), and then performs fulfillment activity (that you configured when
      you created the bot). You use the build-time API to create and manage your
      Amazon Lex bot. For a list of build-time operations, see the build-time
      API, . </p>")
module PostContent = {
  type t
  type request = {
    @ocaml.doc("<p>A list of contexts active for the request. A context can be activated
      when a previous intent is fulfilled, or by including the context in the
      request,</p>
         <p>If you don't specify a list of contexts, Amazon Lex will use the current
      list of contexts for the session. If you specify an empty list, all
      contexts for the session are cleared.</p>")
    activeContexts: option<synthesizedJsonActiveContextsString>,
    @ocaml.doc("<p> User input in PCM or Opus audio format or text format as described in
      the <code>Content-Type</code> HTTP header. </p>
         <p>You can stream audio data to Amazon Lex or you can create a local buffer
      that captures all of the audio data before sending. In general, you get
      better performance if you stream audio data rather than buffering the data
      locally.</p>")
    inputStream: blobStream,
    @ocaml.doc("<p> You pass this value as the <code>Accept</code> HTTP header. </p>
         <p> The message Amazon Lex returns in the response can be either text or
      speech based on the <code>Accept</code> HTTP header value in the request. </p>
         <ul>
            <li>
               <p> If the value is <code>text/plain; charset=utf-8</code>, Amazon Lex
          returns text in the response. </p>
            </li>
            <li>
               <p> If the value begins with <code>audio/</code>, Amazon Lex returns
          speech in the response. Amazon Lex uses Amazon Polly to generate the speech
          (using the configuration you specified in the <code>Accept</code>
          header). For example, if you specify <code>audio/mpeg</code> as the
          value, Amazon Lex returns speech in the MPEG format.</p>
            </li>
            <li>
               <p>If the value is <code>audio/pcm</code>, the speech returned is
            <code>audio/pcm</code> in 16-bit, little endian format.
          </p>
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
                     <p>text/plain; charset=utf-8</p>
                  </li>
                  <li>
                     <p>audio/* (defaults to mpeg)</p>
                  </li>
               </ul>
            </li>
         </ul>")
    accept: option<accept>,
    @ocaml.doc("<p> You pass this value as the <code>Content-Type</code> HTTP header. </p>
         <p> Indicates the audio format or text. The header value must start with
      one of the following prefixes: </p>
         <ul>
            <li>
               <p>PCM format, audio data must be in little-endian byte order.</p>
               <ul>
                  <li>
                     <p>audio/l16; rate=16000; channels=1</p>
                  </li>
                  <li>
                     <p>audio/x-l16; sample-rate=16000; channel-count=1</p>
                  </li>
                  <li>
                     <p>audio/lpcm; sample-rate=8000; sample-size-bits=16;
              channel-count=1; is-big-endian=false </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Opus format</p>
               <ul>
                  <li>
                     <p>audio/x-cbr-opus-with-preamble; preamble-size=0;
              bit-rate=256000; frame-size-milliseconds=4</p>
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
    contentType: httpContentType,
    @ocaml.doc("<p>You pass this value as the <code>x-amz-lex-request-attributes</code>
      HTTP header.</p>
         <p>Request-specific information passed between Amazon Lex and a client
      application. The value must be a JSON serialized and base64 encoded map
      with string keys and values. The total size of the
        <code>requestAttributes</code> and <code>sessionAttributes</code>
      headers is limited to 12 KB.</p>
         <p>The namespace <code>x-amz-lex:</code> is reserved for special
      attributes. Don't create any request attributes with the prefix
        <code>x-amz-lex:</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs\">Setting Request Attributes</a>.</p>")
    requestAttributes: option<synthesizedJsonAttributesString>,
    @ocaml.doc("<p>You pass this value as the <code>x-amz-lex-session-attributes</code>
      HTTP header.</p>
         <p>Application-specific information passed between Amazon Lex and a client
      application. The value must be a JSON serialized and base64 encoded map
      with string keys and values. The total size of the
        <code>sessionAttributes</code> and <code>requestAttributes</code>
      headers is limited to 12 KB.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs\">Setting Session Attributes</a>.</p>")
    sessionAttributes: option<synthesizedJsonAttributesString>,
    @ocaml.doc("<p>The ID of the client application user. Amazon Lex uses this to identify a
      user's conversation with your bot. At runtime, each request must contain
      the <code>userID</code> field.</p>
         <p>To decide the user ID to use for your application, consider the
      following factors.</p>
         <ul>
            <li>
               <p>The <code>userID</code> field must not contain any personally
          identifiable information of the user, for example, name, personal
          identification numbers, or other end user personal information.</p>
            </li>
            <li>
               <p>If you want a user to start a conversation on one device and
          continue on another device, use a user-specific identifier.</p>
            </li>
            <li>
               <p>If you want the same user to be able to have two independent
          conversations on two different devices, choose a device-specific
          identifier.</p>
            </li>
            <li>
               <p>A user can't have two independent conversations with two different
          versions of the same bot. For example, a user can't have a
          conversation with the PROD and BETA versions of the same bot. If you
          anticipate that a user will need to have conversation with two
          different versions, for example, while testing, include the bot alias
          in the user ID to separate the two conversations.</p>
            </li>
         </ul>")
    userId: userId,
    @ocaml.doc("<p>Alias of the Amazon Lex bot.</p>") botAlias: botAlias,
    @ocaml.doc("<p>Name of the Amazon Lex bot.</p>") botName: botName,
  }
  type response = {
    @ocaml.doc("<p>A list of active contexts for the session. A context can be set when
      an intent is fulfilled or by calling the <code>PostContent</code>,
        <code>PostText</code>, or <code>PutSession</code> operation.</p>
         <p>You can use a context to control the intents that can follow up an
      intent, or to modify the operation of your application.</p>")
    activeContexts: option<synthesizedJsonActiveContextsString>,
    @ocaml.doc("<p>The unique identifier for the session.</p>") sessionId: option<string_>,
    @ocaml.doc("<p>The version of the bot that responded to the conversation. You can use
      this information to help determine if one version of a bot is performing
      better than another version.</p>")
    botVersion: option<botVersion>,
    @ocaml.doc("<p>The prompt (or statement) to convey to the user. This is based on the
      bot configuration and context. For example, if Amazon Lex did not understand
      the user intent, it sends the <code>clarificationPrompt</code> configured
      for the bot. If the intent requires confirmation before taking the
      fulfillment action, it sends the <code>confirmationPrompt</code>. Another
      example: Suppose that the Lambda function successfully fulfilled the
      intent, and sent a message to convey to the user. Then Amazon Lex sends that
      message in the response. </p>")
    audioStream: option<blobStream>,
    @ocaml.doc("<p>The text used to process the request.</p>
         <p>If the input was an audio stream, the
        <code>encodedInputTranscript</code> field contains the text extracted
      from the audio stream. This is the text that is actually processed to
      recognize intents and slot values. You can use this information to
      determine if Amazon Lex is correctly processing the audio that you send.</p>
         <p>The <code>encodedInputTranscript</code> field is base-64 encoded. You must 
      decode the field before you can use the value.</p>")
    encodedInputTranscript: option<sensitiveStringUnbounded>,
    @ocaml.doc("<p>The text used to process the request.</p>
         <p>You can use this field only in the de-DE, en-AU, en-GB, en-US, es-419,
      es-ES, es-US, fr-CA, fr-FR, and it-IT locales. In all other locales, the
        <code>inputTranscript</code> field is null. You should use the
        <code>encodedInputTranscript</code> field instead.</p>
         <p>If the input was an audio stream, the <code>inputTranscript</code>
      field contains the text extracted from the audio stream. This is the text
      that is actually processed to recognize intents and slot values. You can
      use this information to determine if Amazon Lex is correctly processing the
      audio that you send.</p>")
    inputTranscript: option<string_>,
    @ocaml.doc("<p> If the <code>dialogState</code> value is <code>ElicitSlot</code>,
      returns the name of the slot for which Amazon Lex is eliciting a value. </p>")
    slotToElicit: option<string_>,
    @ocaml.doc("<p>Identifies the current state of the user interaction. Amazon Lex returns
      one of the following values as <code>dialogState</code>. The client can
      optionally use this information to customize the user interface. </p>
         <ul>
            <li>
               <p>
                  <code>ElicitIntent</code> - Amazon Lex wants to elicit the user's intent.
          Consider the following examples: </p>
               <p> For example, a user might utter an intent (\"I want to order a
          pizza\"). If Amazon Lex cannot infer the user intent from this utterance, it
          will return this dialog state. </p>
            </li>
            <li>
               <p>
                  <code>ConfirmIntent</code> - Amazon Lex is expecting a \"yes\" or \"no\"
          response. </p>
               <p>For example, Amazon Lex wants user confirmation before fulfilling an
          intent. Instead of a simple \"yes\" or \"no\" response, a user might
          respond with additional information. For example, \"yes, but make it a
          thick crust pizza\" or \"no, I want to order a drink.\" Amazon Lex can process
          such additional information (in these examples, update the crust type
          slot or change the intent from OrderPizza to OrderDrink). </p>
            </li>
            <li>
               <p>
                  <code>ElicitSlot</code> - Amazon Lex is expecting the value of a slot for
          the current intent. </p>
               <p> For example, suppose that in the response Amazon Lex sends this
          message: \"What size pizza would you like?\". A user might reply with
          the slot value (e.g., \"medium\"). The user might also provide
          additional information in the response (e.g., \"medium thick crust
          pizza\"). Amazon Lex can process such additional information appropriately.
        </p>
            </li>
            <li>
               <p>
                  <code>Fulfilled</code> - Conveys that the Lambda function has
          successfully fulfilled the intent. </p>
            </li>
            <li>
               <p>
                  <code>ReadyForFulfillment</code> - Conveys that the client has to
          fulfill the request. </p>
            </li>
            <li>
               <p>
                  <code>Failed</code> - Conveys that the conversation with the user
          failed. </p>
               <p> This can happen for various reasons, including that the user does
          not provide an appropriate response to prompts from the service (you
          can configure how many times Amazon Lex can prompt a user for specific
          information), or if the Lambda function fails to fulfill the intent.
        </p>
            </li>
         </ul>")
    dialogState: option<dialogState>,
    @ocaml.doc("<p>The format of the response message. One of the following
      values:</p>
         <ul>
            <li>
               <p>
                  <code>PlainText</code> - The message contains plain UTF-8
          text.</p>
            </li>
            <li>
               <p>
                  <code>CustomPayload</code> - The message is a custom format for
          the client.</p>
            </li>
            <li>
               <p>
                  <code>SSML</code> - The message contains text formatted for voice
          output.</p>
            </li>
            <li>
               <p>
                  <code>Composite</code> - The message contains an escaped JSON
          object containing one or more messages from the groups that messages
          were assigned to when the intent was created.</p>
            </li>
         </ul>")
    messageFormat: option<messageFormatType>,
    @ocaml.doc("<p>The message to convey to the user. The message can come from the bot's
      configuration or from a Lambda function.</p>
         <p>If the intent is not configured with a Lambda function, or if the Lambda
      function returned <code>Delegate</code> as the
        <code>dialogAction.type</code> in its response, Amazon Lex decides on the
      next course of action and selects an appropriate message from the bot's
      configuration based on the current interaction context. For example, if
      Amazon Lex isn't able to understand user input, it uses a clarification prompt
      message.</p>
         <p>When you create an intent you can assign messages to groups. When
      messages are assigned to groups Amazon Lex returns one message from each group
      in the response. The message field is an escaped JSON string containing
      the messages. For more information about the structure of the JSON string
      returned, see <a>msg-prompts-formats</a>.</p>
         <p>If the Lambda function returns a message, Amazon Lex passes it to the client
      in its response.</p>
         <p>The <code>encodedMessage</code> field is base-64 encoded. You must 
      decode the field before you can use the value.</p>")
    encodedMessage: option<sensitiveString>,
    @ocaml.doc("<p>You can only use this field in the de-DE, en-AU, en-GB, en-US, es-419,
      es-ES, es-US, fr-CA, fr-FR, and it-IT locales. In all other locales, the
        <code>message</code> field is null. You should use the
        <code>encodedMessage</code> field instead.</p>
         <p>The message to convey to the user. The message can come from the bot's
      configuration or from a Lambda function.</p>
         <p>If the intent is not configured with a Lambda function, or if the Lambda
      function returned <code>Delegate</code> as the
        <code>dialogAction.type</code> in its response, Amazon Lex decides on the
      next course of action and selects an appropriate message from the bot's
      configuration based on the current interaction context. For example, if
      Amazon Lex isn't able to understand user input, it uses a clarification prompt
      message.</p>
         <p>When you create an intent you can assign messages to groups. When
      messages are assigned to groups Amazon Lex returns one message from each group
      in the response. The message field is an escaped JSON string containing
      the messages. For more information about the structure of the JSON string
      returned, see <a>msg-prompts-formats</a>.</p>
         <p>If the Lambda function returns a message, Amazon Lex passes it to the client
      in its response.</p>")
    message: option<text>,
    @ocaml.doc("<p>The sentiment expressed in an utterance.</p>
         <p>When the bot is configured to send utterances to Amazon Comprehend for
      sentiment analysis, this field contains the result of the analysis.</p>")
    sentimentResponse: option<string_>,
    @ocaml.doc("<p> Map of key/value pairs representing the session-specific context
      information. </p>")
    sessionAttributes: option<synthesizedJsonString>,
    @ocaml.doc("<p>Map of zero or more intent slots (name/value pairs) Amazon Lex detected
      from the user input during the conversation. The field is base-64
      encoded.</p>
         <p>Amazon Lex creates a resolution list containing likely values for a slot.
      The value that it returns is determined by the
        <code>valueSelectionStrategy</code> selected when the slot type was
      created or updated. If <code>valueSelectionStrategy</code> is set to
        <code>ORIGINAL_VALUE</code>, the value provided by the user is returned,
      if the user value is similar to the slot values. If
        <code>valueSelectionStrategy</code> is set to
        <code>TOP_RESOLUTION</code> Amazon Lex returns the first value in the
      resolution list or, if there is no resolution list, null. If you don't
      specify a <code>valueSelectionStrategy</code>, the default is
        <code>ORIGINAL_VALUE</code>.</p>")
    slots: option<synthesizedJsonString>,
    @ocaml.doc("<p>One to four alternative intents that may be applicable to the user's
      intent.</p>
         <p>Each alternative includes a score that indicates how confident Amazon Lex
      is that the intent matches the user's intent. The intents are sorted by
      the confidence score.</p>")
    alternativeIntents: option<synthesizedJsonString>,
    @ocaml.doc("<p>Provides a score that indicates how confident Amazon Lex is that the
      returned intent is the one that matches the user's intent. The score is
      between 0.0 and 1.0.</p>
         <p>The score is a relative score, not an absolute score. The score may
      change based on improvements to Amazon Lex. </p>")
    nluIntentConfidence: option<synthesizedJsonString>,
    @ocaml.doc("<p>Current user intent that Amazon Lex is aware of.</p>")
    intentName: option<intentName>,
    @ocaml.doc("<p>Content type as specified in the <code>Accept</code> HTTP header in
      the request.</p>")
    contentType: option<httpContentType>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "PostContentCommand"
  let make = (
    ~inputStream,
    ~contentType,
    ~userId,
    ~botAlias,
    ~botName,
    ~activeContexts=?,
    ~accept=?,
    ~requestAttributes=?,
    ~sessionAttributes=?,
    (),
  ) =>
    new({
      activeContexts,
      inputStream,
      accept,
      contentType,
      requestAttributes,
      sessionAttributes,
      userId,
      botAlias,
      botName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteSession = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the user associated with the session data.</p>")
    userId: userId,
    @ocaml.doc("<p>The alias in use for the bot that contains the session data.</p>")
    botAlias: botAlias,
    @ocaml.doc("<p>The name of the bot that contains the session data.</p>") botName: botName,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for the session.</p>") sessionId: option<string_>,
    @ocaml.doc("<p>The ID of the client application user.</p>") userId: option<userId>,
    @ocaml.doc("<p>The alias in use for the bot associated with the session data.</p>")
    botAlias: option<botAlias>,
    @ocaml.doc("<p>The name of the bot associated with the session data.</p>")
    botName: option<botName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteSessionCommand"
  let make = (~userId, ~botAlias, ~botName, ()) => new({userId, botAlias, botName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutSession = {
  type t
  type request = {
    @ocaml.doc("<p>A list of contexts active for the request. A context can be activated
      when a previous intent is fulfilled, or by including the context in the
      request,</p>
         <p>If you don't specify a list of contexts, Amazon Lex will use the current
      list of contexts for the session. If you specify an empty list, all
      contexts for the session are cleared.</p>")
    activeContexts: option<activeContextsList>,
    @ocaml.doc("<p>The message that Amazon Lex returns in the response can be either text or
      speech based depending on the value of this field.</p>
         <ul>
            <li>
               <p>If the value is <code>text/plain; charset=utf-8</code>, Amazon Lex
          returns text in the response.</p>
            </li>
            <li>
               <p>If the value begins with <code>audio/</code>, Amazon Lex returns speech
          in the response. Amazon Lex uses Amazon Polly to generate the speech in the
          configuration that you specify. For example, if you specify
            <code>audio/mpeg</code> as the value, Amazon Lex returns speech in the
          MPEG format.</p>
            </li>
            <li>
               <p>If the value is <code>audio/pcm</code>, the speech is returned as
            <code>audio/pcm</code> in 16-bit, little endian format.</p>
            </li>
            <li>
               <p>The following are the accepted values:</p>
               <ul>
                  <li>
                     <p>
                        <code>audio/mpeg</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>audio/ogg</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>audio/pcm</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>audio/*</code> (defaults to mpeg)</p>
                  </li>
                  <li>
                     <p>
                        <code>text/plain; charset=utf-8</code>
                     </p>
                  </li>
               </ul>
            </li>
         </ul>")
    accept: option<accept>,
    @ocaml.doc("<p>A summary of the recent intents for the bot. You can use the intent
      summary view to set a checkpoint label on an intent and modify attributes
      of intents. You can also use it to remove or add intent summary objects to
      the list.</p>
         <p>An intent that you modify or add to the list must make sense for the
      bot. For example, the intent name must be valid for the bot. You must
      provide valid values for:</p>
         <ul>
            <li>
               <p>
                  <code>intentName</code>
               </p>
            </li>
            <li>
               <p>slot names</p>
            </li>
            <li>
               <p>
                  <code>slotToElict</code>
               </p>
            </li>
         </ul>
         <p>If you send the <code>recentIntentSummaryView</code> parameter in a
        <code>PutSession</code> request, the contents of the new summary view
      replaces the old summary view. For example, if a <code>GetSession</code>
      request returns three intents in the summary view and you call
        <code>PutSession</code> with one intent in the summary view, the next
      call to <code>GetSession</code> will only return one intent.</p>")
    recentIntentSummaryView: option<intentSummaryList>,
    @ocaml.doc("<p>Sets the next action that the bot should take to fulfill the
      conversation.</p>")
    dialogAction: option<dialogAction>,
    @ocaml.doc("<p>Map of key/value pairs representing the session-specific context
      information. It contains application information passed between Amazon Lex and
      a client application.</p>")
    sessionAttributes: option<stringMap>,
    @ocaml.doc("<p>The ID of the client application user. Amazon Lex uses this to identify a
      user's conversation with your bot. </p>")
    userId: userId,
    @ocaml.doc("<p>The alias in use for the bot that contains the session data.</p>")
    botAlias: botAlias,
    @ocaml.doc("<p>The name of the bot that contains the session data.</p>") botName: botName,
  }
  type response = {
    @ocaml.doc("<p>A list of active contexts for the session.</p>")
    activeContexts: option<synthesizedJsonActiveContextsString>,
    @ocaml.doc("<p>A unique identifier for the session.</p>") sessionId: option<string_>,
    @ocaml.doc("<p>The audio version of the message to convey to the user.</p>")
    audioStream: option<blobStream>,
    @ocaml.doc("<p>If the <code>dialogState</code> is <code>ElicitSlot</code>, returns
      the name of the slot for which Amazon Lex is eliciting a value.</p>")
    slotToElicit: option<string_>,
    @ocaml.doc("<p></p>
         <ul>
            <li>
               <p>
                  <code>ConfirmIntent</code> - Amazon Lex is expecting a \"yes\" or \"no\"
          response to confirm the intent before fulfilling an intent.</p>
            </li>
            <li>
               <p>
                  <code>ElicitIntent</code> - Amazon Lex wants to elicit the user's
          intent.</p>
            </li>
            <li>
               <p>
                  <code>ElicitSlot</code> - Amazon Lex is expecting the value of a slot
          for the current intent.</p>
            </li>
            <li>
               <p>
                  <code>Failed</code> - Conveys that the conversation with the user
          has failed. This can happen for various reasons, including the user
          does not provide an appropriate response to prompts from the service,
          or if the Lambda function fails to fulfill the intent.</p>
            </li>
            <li>
               <p>
                  <code>Fulfilled</code> - Conveys that the Lambda function has
          sucessfully fulfilled the intent.</p>
            </li>
            <li>
               <p>
                  <code>ReadyForFulfillment</code> - Conveys that the client has to
          fulfill the intent.</p>
            </li>
         </ul>")
    dialogState: option<dialogState>,
    @ocaml.doc("<p>The format of the response message. One of the following
      values:</p>
         <ul>
            <li>
               <p>
                  <code>PlainText</code> - The message contains plain UTF-8
          text.</p>
            </li>
            <li>
               <p>
                  <code>CustomPayload</code> - The message is a custom format for
          the client.</p>
            </li>
            <li>
               <p>
                  <code>SSML</code> - The message contains text formatted for voice
          output.</p>
            </li>
            <li>
               <p>
                  <code>Composite</code> - The message contains an escaped JSON
          object containing one or more messages from the groups that messages
          were assigned to when the intent was created.</p>
            </li>
         </ul>")
    messageFormat: option<messageFormatType>,
    @ocaml.doc("<p>The next message that should be presented to the user.</p>
         <p>The <code>encodedMessage</code> field is base-64 encoded. You must 
      decode the field before you can use the value.</p>")
    encodedMessage: option<sensitiveString>,
    @ocaml.doc("<p>The next message that should be presented to the user.</p>
         <p>You can only use this field in the de-DE, en-AU, en-GB, en-US, es-419,
      es-ES, es-US, fr-CA, fr-FR, and it-IT locales. In all other locales, the
        <code>message</code> field is null. You should use the
        <code>encodedMessage</code> field instead.</p>")
    message: option<text>,
    @ocaml.doc("<p>Map of key/value pairs representing session-specific context
      information.</p>")
    sessionAttributes: option<synthesizedJsonString>,
    @ocaml.doc("<p>Map of zero or more intent slots Amazon Lex detected from the user input
      during the conversation.</p>
         <p>Amazon Lex creates a resolution list containing likely values for a slot.
      The value that it returns is determined by the
        <code>valueSelectionStrategy</code> selected when the slot type was
      created or updated. If <code>valueSelectionStrategy</code> is set to
        <code>ORIGINAL_VALUE</code>, the value provided by the user is returned,
      if the user value is similar to the slot values. If
        <code>valueSelectionStrategy</code> is set to
        <code>TOP_RESOLUTION</code> Amazon Lex returns the first value in the
      resolution list or, if there is no resolution list, null. If you don't
      specify a <code>valueSelectionStrategy</code> the default is
        <code>ORIGINAL_VALUE</code>. </p>")
    slots: option<synthesizedJsonString>,
    @ocaml.doc("<p>The name of the current intent.</p>") intentName: option<intentName>,
    @ocaml.doc("<p>Content type as specified in the <code>Accept</code> HTTP header in
      the request.</p>")
    contentType: option<httpContentType>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "PutSessionCommand"
  let make = (
    ~userId,
    ~botAlias,
    ~botName,
    ~activeContexts=?,
    ~accept=?,
    ~recentIntentSummaryView=?,
    ~dialogAction=?,
    ~sessionAttributes=?,
    (),
  ) =>
    new({
      activeContexts,
      accept,
      recentIntentSummaryView,
      dialogAction,
      sessionAttributes,
      userId,
      botAlias,
      botName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSession = {
  type t
  type request = {
    @ocaml.doc("<p>A string used to filter the intents returned in the
        <code>recentIntentSummaryView</code> structure. </p>
         <p>When you specify a filter, only intents with their
        <code>checkpointLabel</code> field set to that string are
      returned.</p>")
    checkpointLabelFilter: option<intentSummaryCheckpointLabel>,
    @ocaml.doc("<p>The ID of the client application user. Amazon Lex uses this to identify a
      user's conversation with your bot. </p>")
    userId: userId,
    @ocaml.doc("<p>The alias in use for the bot that contains the session data.</p>")
    botAlias: botAlias,
    @ocaml.doc("<p>The name of the bot that contains the session data.</p>") botName: botName,
  }
  type response = {
    @ocaml.doc("<p>A list of active contexts for the session. A context can be set when
      an intent is fulfilled or by calling the <code>PostContent</code>,
        <code>PostText</code>, or <code>PutSession</code> operation.</p>
         <p>You can use a context to control the intents that can follow up an
      intent, or to modify the operation of your application.</p>")
    activeContexts: option<activeContextsList>,
    @ocaml.doc("<p>Describes the current state of the bot.</p>") dialogAction: option<dialogAction>,
    @ocaml.doc("<p>A unique identifier for the session.</p>") sessionId: option<string_>,
    @ocaml.doc("<p>Map of key/value pairs representing the session-specific context
      information. It contains application information passed between Amazon Lex and
      a client application.</p>")
    sessionAttributes: option<stringMap>,
    @ocaml.doc("<p>An array of information about the intents used in the session. The
      array can contain a maximum of three summaries. If more than three intents
      are used in the session, the <code>recentIntentSummaryView</code>
      operation contains information about the last three intents used.</p>
         <p>If you set the <code>checkpointLabelFilter</code> parameter in the
      request, the array contains only the intents with the specified
      label.</p>")
    recentIntentSummaryView: option<intentSummaryList>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetSessionCommand"
  let make = (~userId, ~botAlias, ~botName, ~checkpointLabelFilter=?, ()) =>
    new({checkpointLabelFilter, userId, botAlias, botName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PostText = {
  type t
  type request = {
    @ocaml.doc("<p>A list of contexts active for the request. A context can be activated
      when a previous intent is fulfilled, or by including the context in the
      request,</p>
         <p>If you don't specify a list of contexts, Amazon Lex will use the current
      list of contexts for the session. If you specify an empty list, all
      contexts for the session are cleared.</p>")
    activeContexts: option<activeContextsList>,
    @ocaml.doc("<p>The text that the user entered (Amazon Lex interprets this text).</p>")
    inputText: text,
    @ocaml.doc("<p>Request-specific information passed between Amazon Lex and a client
      application.</p>
         <p>The namespace <code>x-amz-lex:</code> is reserved for special
      attributes. Don't create any request attributes with the prefix
        <code>x-amz-lex:</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs\">Setting Request Attributes</a>.</p>")
    requestAttributes: option<stringMap>,
    @ocaml.doc("<p>Application-specific information passed between Amazon Lex and a client
      application.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs\">Setting Session Attributes</a>.</p>")
    sessionAttributes: option<stringMap>,
    @ocaml.doc("<p>The ID of the client application user. Amazon Lex uses this to identify a
      user's conversation with your bot. At runtime, each request must contain
      the <code>userID</code> field.</p>
         <p>To decide the user ID to use for your application, consider the
      following factors.</p>
         <ul>
            <li>
               <p>The <code>userID</code> field must not contain any personally
          identifiable information of the user, for example, name, personal
          identification numbers, or other end user personal information.</p>
            </li>
            <li>
               <p>If you want a user to start a conversation on one device and
          continue on another device, use a user-specific identifier.</p>
            </li>
            <li>
               <p>If you want the same user to be able to have two independent
          conversations on two different devices, choose a device-specific
          identifier.</p>
            </li>
            <li>
               <p>A user can't have two independent conversations with two different
          versions of the same bot. For example, a user can't have a
          conversation with the PROD and BETA versions of the same bot. If you
          anticipate that a user will need to have conversation with two
          different versions, for example, while testing, include the bot alias
          in the user ID to separate the two conversations.</p>
            </li>
         </ul>")
    userId: userId,
    @ocaml.doc("<p>The alias of the Amazon Lex bot.</p>") botAlias: botAlias,
    @ocaml.doc("<p>The name of the Amazon Lex bot.</p>") botName: botName,
  }
  type response = {
    @ocaml.doc("<p>A list of active contexts for the session. A context can be set when
      an intent is fulfilled or by calling the <code>PostContent</code>,
        <code>PostText</code>, or <code>PutSession</code> operation.</p>
         <p>You can use a context to control the intents that can follow up an
      intent, or to modify the operation of your application.</p>")
    activeContexts: option<activeContextsList>,
    @ocaml.doc("<p>The version of the bot that responded to the conversation. You can use
      this information to help determine if one version of a bot is performing
      better than another version.</p>")
    botVersion: option<botVersion>,
    @ocaml.doc("<p>A unique identifier for the session.</p>") sessionId: option<string_>,
    @ocaml.doc("<p>Represents the options that the user has to respond to the current
      prompt. Response Card can come from the bot configuration (in the
      Amazon Lex console, choose the settings button next to a slot) or from a
      code hook (Lambda function). </p>")
    responseCard: option<responseCard>,
    @ocaml.doc("<p>If the <code>dialogState</code> value is <code>ElicitSlot</code>,
      returns the name of the slot for which Amazon Lex is eliciting a value. </p>")
    slotToElicit: option<string_>,
    @ocaml.doc("<p> Identifies the current state of the user interaction. Amazon Lex returns
      one of the following values as <code>dialogState</code>. The client can
      optionally use this information to customize the user interface. </p>
         <ul>
            <li>
               <p>
                  <code>ElicitIntent</code> - Amazon Lex wants to elicit user intent. </p>
               <p>For example, a user might utter an intent (\"I want to order a
          pizza\"). If Amazon Lex cannot infer the user intent from this utterance, it
          will return this dialogState.</p>
            </li>
            <li>
               <p>
                  <code>ConfirmIntent</code> - Amazon Lex is expecting a \"yes\" or \"no\"
          response. </p>
               <p> For example, Amazon Lex wants user confirmation before fulfilling an
          intent. </p>
               <p>Instead of a simple \"yes\" or \"no,\" a user might respond with
          additional information. For example, \"yes, but make it thick crust
          pizza\" or \"no, I want to order a drink\". Amazon Lex can process such
          additional information (in these examples, update the crust type slot
          value, or change intent from OrderPizza to OrderDrink).</p>
            </li>
            <li>
               <p>
                  <code>ElicitSlot</code> - Amazon Lex is expecting a slot value for the
          current intent. </p>
               <p>For example, suppose that in the response Amazon Lex sends this
          message: \"What size pizza would you like?\". A user might reply with
          the slot value (e.g., \"medium\"). The user might also provide
          additional information in the response (e.g., \"medium thick crust
          pizza\"). Amazon Lex can process such additional information appropriately.
        </p>
            </li>
            <li>
               <p>
                  <code>Fulfilled</code> - Conveys that the Lambda function configured
          for the intent has successfully fulfilled the intent. </p>

            </li>
            <li>
               <p>
                  <code>ReadyForFulfillment</code> - Conveys that the client has to
          fulfill the intent. </p>
            </li>
            <li>
               <p>
                  <code>Failed</code> - Conveys that the conversation with the user
          failed. </p>
               <p> This can happen for various reasons including that the user did
          not provide an appropriate response to prompts from the service (you
          can configure how many times Amazon Lex can prompt a user for specific
          information), or the Lambda function failed to fulfill the intent.
        </p>
            </li>
         </ul>")
    dialogState: option<dialogState>,
    @ocaml.doc("<p>The format of the response message. One of the following
      values:</p>
         <ul>
            <li>
               <p>
                  <code>PlainText</code> - The message contains plain UTF-8
          text.</p>
            </li>
            <li>
               <p>
                  <code>CustomPayload</code> - The message is a custom format
          defined by the Lambda function.</p>
            </li>
            <li>
               <p>
                  <code>SSML</code> - The message contains text formatted for voice
          output.</p>
            </li>
            <li>
               <p>
                  <code>Composite</code> - The message contains an escaped JSON
          object containing one or more messages from the groups that messages
          were assigned to when the intent was created.</p>
            </li>
         </ul>")
    messageFormat: option<messageFormatType>,
    @ocaml.doc("<p>The sentiment expressed in and utterance.</p>
         <p>When the bot is configured to send utterances to Amazon Comprehend for
      sentiment analysis, this field contains the result of the analysis.</p>")
    sentimentResponse: option<sentimentResponse>,
    @ocaml.doc("<p>The message to convey to the user. The message can come from the bot's
      configuration or from a Lambda function.</p>
         <p>If the intent is not configured with a Lambda function, or if the Lambda
      function returned <code>Delegate</code> as the
        <code>dialogAction.type</code> its response, Amazon Lex decides on the next
      course of action and selects an appropriate message from the bot's
      configuration based on the current interaction context. For example, if
      Amazon Lex isn't able to understand user input, it uses a clarification prompt
      message.</p>
         <p>When you create an intent you can assign messages to groups. When
      messages are assigned to groups Amazon Lex returns one message from each group
      in the response. The message field is an escaped JSON string containing
      the messages. For more information about the structure of the JSON string
      returned, see <a>msg-prompts-formats</a>.</p>
         <p>If the Lambda function returns a message, Amazon Lex passes it to the client
      in its response.</p>")
    message: option<text>,
    @ocaml.doc("<p>A map of key-value pairs representing the session-specific context
      information.</p>")
    sessionAttributes: option<stringMap>,
    @ocaml.doc("<p> The intent slots that Amazon Lex detected from the user input in the
      conversation. </p>
         <p>Amazon Lex creates a resolution list containing likely values for a slot.
      The value that it returns is determined by the
        <code>valueSelectionStrategy</code> selected when the slot type was
      created or updated. If <code>valueSelectionStrategy</code> is set to
        <code>ORIGINAL_VALUE</code>, the value provided by the user is returned,
      if the user value is similar to the slot values. If
        <code>valueSelectionStrategy</code> is set to
        <code>TOP_RESOLUTION</code> Amazon Lex returns the first value in the
      resolution list or, if there is no resolution list, null. If you don't
      specify a <code>valueSelectionStrategy</code>, the default is
        <code>ORIGINAL_VALUE</code>.</p>")
    slots: option<stringMap>,
    @ocaml.doc("<p>One to four alternative intents that may be applicable to the user's
      intent.</p>
         <p>Each alternative includes a score that indicates how confident Amazon Lex
      is that the intent matches the user's intent. The intents are sorted by
      the confidence score.</p>")
    alternativeIntents: option<intentList>,
    @ocaml.doc("<p>Provides a score that indicates how confident Amazon Lex is that the
      returned intent is the one that matches the user's intent. The score is
      between 0.0 and 1.0. For more information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/confidence-scores.html\">Confidence Scores</a>.</p>
         <p>The score is a relative score, not an absolute score. The score may
      change based on improvements to Amazon Lex.</p>")
    nluIntentConfidence: option<intentConfidence>,
    @ocaml.doc("<p>The current user intent that Amazon Lex is aware of.</p>")
    intentName: option<intentName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "PostTextCommand"
  let make = (
    ~inputText,
    ~userId,
    ~botAlias,
    ~botName,
    ~activeContexts=?,
    ~requestAttributes=?,
    ~sessionAttributes=?,
    (),
  ) =>
    new({
      activeContexts,
      inputText,
      requestAttributes,
      sessionAttributes,
      userId,
      botAlias,
      botName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
