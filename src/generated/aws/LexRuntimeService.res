type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type userId = string
type text = string
type synthesizedJsonString = string
type synthesizedJsonAttributesString = string
type synthesizedJsonActiveContextsString = string
type stringWithLength = string
type stringUrlWithLength = string
type amazonawsString = string
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
type amazonawsDouble = float;
type dialogState = [@as("Failed") #Failed | @as("ReadyForFulfillment") #ReadyForFulfillment | @as("Fulfilled") #Fulfilled | @as("ElicitSlot") #ElicitSlot | @as("ConfirmIntent") #ConfirmIntent | @as("ElicitIntent") #ElicitIntent]
type dialogActionType = [@as("Delegate") #Delegate | @as("Close") #Close | @as("ElicitSlot") #ElicitSlot | @as("ConfirmIntent") #ConfirmIntent | @as("ElicitIntent") #ElicitIntent]
type contentType = [@as("application/vnd.amazonaws.card.generic") #application_vnd_amazonaws_card_generic]
type confirmationStatus = [@as("Denied") #Denied | @as("Confirmed") #Confirmed | @as("None") #None]
type buttonValueStringWithLength = string
type buttonTextStringWithLength = string
type botVersion = string
type botName = string
type botAlias = string
type blobStream = NodeJs.Buffer.t;
type activeContextTurnsToLive = int;
type activeContextTimeToLiveInSeconds = int;
type activeContextName = string
type accept = string
type stringMap = Js.Dict.t< amazonawsString>
type sentimentResponse = {
@as("sentimentScore") sentimentScore: sentimentScore,
@as("sentimentLabel") sentimentLabel: sentimentLabel
}
type intentConfidence = {
@as("score") score: amazonawsDouble
}
type button = {
@as("value") value: option<buttonValueStringWithLength>,
@as("text") text: option<buttonTextStringWithLength>
}
type activeContextTimeToLive = {
@as("turnsToLive") turnsToLive: activeContextTurnsToLive,
@as("timeToLiveInSeconds") timeToLiveInSeconds: activeContextTimeToLiveInSeconds
}
type activeContextParametersMap = Js.Dict.t< text>
type listOfButtons = array<button>
type predictedIntent = {
@as("slots") slots: stringMap,
@as("nluIntentConfidence") nluIntentConfidence: intentConfidence,
@as("intentName") intentName: intentName
}
type intentSummary = {
@as("slotToElicit") slotToElicit: amazonawsString,
@as("fulfillmentState") fulfillmentState: fulfillmentState,
@as("dialogActionType") dialogActionType: option<dialogActionType>,
@as("confirmationStatus") confirmationStatus: confirmationStatus,
@as("slots") slots: stringMap,
@as("checkpointLabel") checkpointLabel: intentSummaryCheckpointLabel,
@as("intentName") intentName: intentName
}
type dialogAction = {
@as("messageFormat") messageFormat: messageFormatType,
@as("message") message: text,
@as("fulfillmentState") fulfillmentState: fulfillmentState,
@as("slotToElicit") slotToElicit: amazonawsString,
@as("slots") slots: stringMap,
@as("intentName") intentName: intentName,
@as("type") type_: option<dialogActionType>
}
type activeContext = {
@as("parameters") parameters: option<activeContextParametersMap>,
@as("timeToLive") timeToLive: option<activeContextTimeToLive>,
@as("name") name: option<activeContextName>
}
type intentSummaryList = array<intentSummary>
type intentList = array<predictedIntent>
type genericAttachment = {
@as("buttons") buttons: listOfButtons,
@as("imageUrl") imageUrl: stringUrlWithLength,
@as("attachmentLinkUrl") attachmentLinkUrl: stringUrlWithLength,
@as("subTitle") subTitle: stringWithLength,
@as("title") title: stringWithLength
}
type activeContextsList = array<activeContext>
type genericAttachmentList = array<genericAttachment>
type responseCard = {
@as("genericAttachments") genericAttachments: genericAttachmentList,
@as("contentType") contentType: contentType,
@as("version") version: amazonawsString
}
type clientType;
@module("@aws-sdk/client-lex") @new external createClient: unit => clientType = "LexRuntimeServiceClient";
module PostContent = {
  type t;
  type request = {
@as("activeContexts") activeContexts: synthesizedJsonActiveContextsString,
@as("inputStream") inputStream: option<blobStream>,
@as("accept") accept: accept,
@as("contentType") contentType: option<httpContentType>,
@as("requestAttributes") requestAttributes: synthesizedJsonAttributesString,
@as("sessionAttributes") sessionAttributes: synthesizedJsonAttributesString,
@as("userId") userId: option<userId>,
@as("botAlias") botAlias: option<botAlias>,
@as("botName") botName: option<botName>
}
  type response = {
@as("activeContexts") activeContexts: synthesizedJsonActiveContextsString,
@as("sessionId") sessionId: amazonawsString,
@as("botVersion") botVersion: botVersion,
@as("audioStream") audioStream: blobStream,
@as("encodedInputTranscript") encodedInputTranscript: sensitiveStringUnbounded,
@as("inputTranscript") inputTranscript: amazonawsString,
@as("slotToElicit") slotToElicit: amazonawsString,
@as("dialogState") dialogState: dialogState,
@as("messageFormat") messageFormat: messageFormatType,
@as("encodedMessage") encodedMessage: sensitiveString,
@as("message") message: text,
@as("sentimentResponse") sentimentResponse: amazonawsString,
@as("sessionAttributes") sessionAttributes: synthesizedJsonString,
@as("slots") slots: synthesizedJsonString,
@as("alternativeIntents") alternativeIntents: synthesizedJsonString,
@as("nluIntentConfidence") nluIntentConfidence: synthesizedJsonString,
@as("intentName") intentName: intentName,
@as("contentType") contentType: httpContentType
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "PostContentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSession = {
  type t;
  type request = {
@as("userId") userId: option<userId>,
@as("botAlias") botAlias: option<botAlias>,
@as("botName") botName: option<botName>
}
  type response = {
@as("sessionId") sessionId: amazonawsString,
@as("userId") userId: userId,
@as("botAlias") botAlias: botAlias,
@as("botName") botName: botName
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DeleteSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutSession = {
  type t;
  type request = {
@as("activeContexts") activeContexts: activeContextsList,
@as("accept") accept: accept,
@as("recentIntentSummaryView") recentIntentSummaryView: intentSummaryList,
@as("dialogAction") dialogAction: dialogAction,
@as("sessionAttributes") sessionAttributes: stringMap,
@as("userId") userId: option<userId>,
@as("botAlias") botAlias: option<botAlias>,
@as("botName") botName: option<botName>
}
  type response = {
@as("activeContexts") activeContexts: synthesizedJsonActiveContextsString,
@as("sessionId") sessionId: amazonawsString,
@as("audioStream") audioStream: blobStream,
@as("slotToElicit") slotToElicit: amazonawsString,
@as("dialogState") dialogState: dialogState,
@as("messageFormat") messageFormat: messageFormatType,
@as("encodedMessage") encodedMessage: sensitiveString,
@as("message") message: text,
@as("sessionAttributes") sessionAttributes: synthesizedJsonString,
@as("slots") slots: synthesizedJsonString,
@as("intentName") intentName: intentName,
@as("contentType") contentType: httpContentType
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "PutSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSession = {
  type t;
  type request = {
@as("checkpointLabelFilter") checkpointLabelFilter: intentSummaryCheckpointLabel,
@as("userId") userId: option<userId>,
@as("botAlias") botAlias: option<botAlias>,
@as("botName") botName: option<botName>
}
  type response = {
@as("activeContexts") activeContexts: activeContextsList,
@as("dialogAction") dialogAction: dialogAction,
@as("sessionId") sessionId: amazonawsString,
@as("sessionAttributes") sessionAttributes: stringMap,
@as("recentIntentSummaryView") recentIntentSummaryView: intentSummaryList
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "GetSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PostText = {
  type t;
  type request = {
@as("activeContexts") activeContexts: activeContextsList,
@as("inputText") inputText: option<text>,
@as("requestAttributes") requestAttributes: stringMap,
@as("sessionAttributes") sessionAttributes: stringMap,
@as("userId") userId: option<userId>,
@as("botAlias") botAlias: option<botAlias>,
@as("botName") botName: option<botName>
}
  type response = {
@as("activeContexts") activeContexts: activeContextsList,
@as("botVersion") botVersion: botVersion,
@as("sessionId") sessionId: amazonawsString,
@as("responseCard") responseCard: responseCard,
@as("slotToElicit") slotToElicit: amazonawsString,
@as("dialogState") dialogState: dialogState,
@as("messageFormat") messageFormat: messageFormatType,
@as("sentimentResponse") sentimentResponse: sentimentResponse,
@as("message") message: text,
@as("sessionAttributes") sessionAttributes: stringMap,
@as("slots") slots: stringMap,
@as("alternativeIntents") alternativeIntents: intentList,
@as("nluIntentConfidence") nluIntentConfidence: intentConfidence,
@as("intentName") intentName: intentName
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "PostTextCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
