type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-lex") @new external createClient: unit => awsServiceClient = "LexRuntimeServiceClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
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
type messageFormatType = [@as("Composite") #Composite | @as("SSML") #SSML | @as("CustomPayload") #CustomPayload | @as("PlainText") #PlainText]
type intentSummaryCheckpointLabel = string
type intentName = string
type httpContentType = string
type fulfillmentState = [@as("ReadyForFulfillment") #ReadyForFulfillment | @as("Failed") #Failed | @as("Fulfilled") #Fulfilled]
type errorMessage = string
type double = float
type dialogState = [@as("Failed") #Failed | @as("ReadyForFulfillment") #ReadyForFulfillment | @as("Fulfilled") #Fulfilled | @as("ElicitSlot") #ElicitSlot | @as("ConfirmIntent") #ConfirmIntent | @as("ElicitIntent") #ElicitIntent]
type dialogActionType = [@as("Delegate") #Delegate | @as("Close") #Close | @as("ElicitSlot") #ElicitSlot | @as("ConfirmIntent") #ConfirmIntent | @as("ElicitIntent") #ElicitIntent]
type contentType = [@as("application/vnd.amazonaws.card.generic") #Application_Vnd_Amazonaws_Card_Generic]
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
type sentimentResponse = {
sentimentScore: option<sentimentScore>,
  sentimentLabel: option<sentimentLabel>
}
type intentConfidence = {
score: option<double>
}
type button = {
value: buttonValueStringWithLength,
  text: buttonTextStringWithLength
}
type activeContextTimeToLive = {
turnsToLive: option<activeContextTurnsToLive>,
  timeToLiveInSeconds: option<activeContextTimeToLiveInSeconds>
}
type activeContextParametersMap = Js.Dict.t<text>
type listOfButtons = array<button>
type predictedIntent = {
slots: option<stringMap>,
  nluIntentConfidence: option<intentConfidence>,
  intentName: option<intentName>
}
type intentSummary = {
slotToElicit: option<string_>,
  fulfillmentState: option<fulfillmentState>,
  dialogActionType: dialogActionType,
  confirmationStatus: option<confirmationStatus>,
  slots: option<stringMap>,
  checkpointLabel: option<intentSummaryCheckpointLabel>,
  intentName: option<intentName>
}
type dialogAction = {
messageFormat: option<messageFormatType>,
  message: option<text>,
  fulfillmentState: option<fulfillmentState>,
  slotToElicit: option<string_>,
  slots: option<stringMap>,
  intentName: option<intentName>,
  @as("type") type_: dialogActionType
}
type activeContext = {
parameters: activeContextParametersMap,
  timeToLive: activeContextTimeToLive,
  name: activeContextName
}
type intentSummaryList = array<intentSummary>
type intentList = array<predictedIntent>
type genericAttachment = {
buttons: option<listOfButtons>,
  imageUrl: option<stringUrlWithLength>,
  attachmentLinkUrl: option<stringUrlWithLength>,
  subTitle: option<stringWithLength>,
  title: option<stringWithLength>
}
type activeContextsList = array<activeContext>
type genericAttachmentList = array<genericAttachment>
type responseCard = {
genericAttachments: option<genericAttachmentList>,
  contentType: option<contentType>,
  version: option<string_>
}

module PostContent = {
  type t;
  type request = {
activeContexts: option<synthesizedJsonActiveContextsString>,
  inputStream: blobStream,
  accept: option<accept>,
  contentType: httpContentType,
  requestAttributes: option<synthesizedJsonAttributesString>,
  sessionAttributes: option<synthesizedJsonAttributesString>,
  userId: userId,
  botAlias: botAlias,
  botName: botName
}
  type response = {
activeContexts: option<synthesizedJsonActiveContextsString>,
  sessionId: option<string_>,
  botVersion: option<botVersion>,
  audioStream: option<blobStream>,
  encodedInputTranscript: option<sensitiveStringUnbounded>,
  inputTranscript: option<string_>,
  slotToElicit: option<string_>,
  dialogState: option<dialogState>,
  messageFormat: option<messageFormatType>,
  encodedMessage: option<sensitiveString>,
  message: option<text>,
  sentimentResponse: option<string_>,
  sessionAttributes: option<synthesizedJsonString>,
  slots: option<synthesizedJsonString>,
  alternativeIntents: option<synthesizedJsonString>,
  nluIntentConfidence: option<synthesizedJsonString>,
  intentName: option<intentName>,
  contentType: option<httpContentType>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "PostContentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSession = {
  type t;
  type request = {
userId: userId,
  botAlias: botAlias,
  botName: botName
}
  type response = {
sessionId: option<string_>,
  userId: option<userId>,
  botAlias: option<botAlias>,
  botName: option<botName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteSessionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutSession = {
  type t;
  type request = {
activeContexts: option<activeContextsList>,
  accept: option<accept>,
  recentIntentSummaryView: option<intentSummaryList>,
  dialogAction: option<dialogAction>,
  sessionAttributes: option<stringMap>,
  userId: userId,
  botAlias: botAlias,
  botName: botName
}
  type response = {
activeContexts: option<synthesizedJsonActiveContextsString>,
  sessionId: option<string_>,
  audioStream: option<blobStream>,
  slotToElicit: option<string_>,
  dialogState: option<dialogState>,
  messageFormat: option<messageFormatType>,
  encodedMessage: option<sensitiveString>,
  message: option<text>,
  sessionAttributes: option<synthesizedJsonString>,
  slots: option<synthesizedJsonString>,
  intentName: option<intentName>,
  contentType: option<httpContentType>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "PutSessionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSession = {
  type t;
  type request = {
checkpointLabelFilter: option<intentSummaryCheckpointLabel>,
  userId: userId,
  botAlias: botAlias,
  botName: botName
}
  type response = {
activeContexts: option<activeContextsList>,
  dialogAction: option<dialogAction>,
  sessionId: option<string_>,
  sessionAttributes: option<stringMap>,
  recentIntentSummaryView: option<intentSummaryList>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetSessionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PostText = {
  type t;
  type request = {
activeContexts: option<activeContextsList>,
  inputText: text,
  requestAttributes: option<stringMap>,
  sessionAttributes: option<stringMap>,
  userId: userId,
  botAlias: botAlias,
  botName: botName
}
  type response = {
activeContexts: option<activeContextsList>,
  botVersion: option<botVersion>,
  sessionId: option<string_>,
  responseCard: option<responseCard>,
  slotToElicit: option<string_>,
  dialogState: option<dialogState>,
  messageFormat: option<messageFormatType>,
  sentimentResponse: option<sentimentResponse>,
  message: option<text>,
  sessionAttributes: option<stringMap>,
  slots: option<stringMap>,
  alternativeIntents: option<intentList>,
  nluIntentConfidence: option<intentConfidence>,
  intentName: option<intentName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "PostTextCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
