type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type integer_ = int
type long = float
type roleArn = string
type version = string
type value = string
type utteranceString = string
type utterance = string
type userId = string
type timestamp_ = Js.Date.t;
type tagValue = string
type tagKey = string
type string_ = string
type statusType = [@as("Missed") #Missed | @as("Detected") #Detected]
type status = [@as("NOT_BUILT") #NOTBUILT | @as("FAILED") #FAILED | @as("READY_BASIC_TESTING") #READYBASICTESTING | @as("READY") #READY | @as("BUILDING") #BUILDING]
type slotValueSelectionStrategy = [@as("TOP_RESOLUTION") #TOPRESOLUTION | @as("ORIGINAL_VALUE") #ORIGINALVALUE]
type slotTypeName = string
type slotName = string
type slotDefaultValueString = string
type slotConstraint = [@as("Optional") #Optional | @as("Required") #Required]
type sessionTTL = int
type responseCard = string
type resourceType = [@as("SLOT_TYPE") #SLOTTYPE | @as("INTENT") #INTENT | @as("BOT") #BOT]
type resourcePrefix = string
type resourceArn = string
type regexPattern = string
type referenceType = [@as("BotChannel") #BotChannel | @as("BotAlias") #BotAlias | @as("Bot") #Bot | @as("Intent") #Intent]
type queryFilterString = string
type promptMaxAttempts = int
type processBehavior = [@as("BUILD") #BUILD | @as("SAVE") #SAVE]
type priority = int
type outputContextName = string
type obfuscationSetting = [@as("DEFAULT_OBFUSCATION") #DEFAULTOBFUSCATION | @as("NONE") #NONE]
type numericalVersion = string
type nextToken = string
type name = string
type messageVersion = string
type mergeStrategy = [@as("FAIL_ON_CONFLICT") #FAILONCONFLICT | @as("OVERWRITE_LATEST") #OVERWRITELATEST]
type maxResults = int
type logType = [@as("TEXT") #TEXT | @as("AUDIO") #AUDIO]
type locale = [@as("ja-JP") #JaJP | @as("it-IT") #ItIT | @as("fr-CA") #FrCA | @as("fr-FR") #FrFR | @as("es-US") #EsUS | @as("es-ES") #EsES | @as("es-419") #Es419 | @as("en-US") #EnUS | @as("en-GB") #EnGB | @as("en-AU") #EnAU | @as("de-DE") #DeDE]
type lambdaARN = string
type kmsKeyArn = string
type kendraIndexArn = string
type intentName = string
type inputContextName = string
type importStatus = [@as("FAILED") #FAILED | @as("COMPLETE") #COMPLETE | @as("IN_PROGRESS") #INPROGRESS]
type iamRoleArn = string
type groupNumber = int
type fulfillmentActivityType = [@as("CodeHook") #CodeHook | @as("ReturnIntent") #ReturnIntent]
type exportType = [@as("LEX") #LEX | @as("ALEXA_SKILLS_KIT") #ALEXASKILLSKIT]
type exportStatus = [@as("FAILED") #FAILED | @as("READY") #READY | @as("IN_PROGRESS") #INPROGRESS]
type destination = [@as("S3") #S3 | @as("CLOUDWATCH_LOGS") #CLOUDWATCHLOGS]
type description = string
type customOrBuiltinSlotTypeName = string
type count = int
type contextTurnsToLive = int
type contextTimeToLiveInSeconds = int
type contentType = [@as("CustomPayload") #CustomPayload | @as("SSML") #SSML | @as("PlainText") #PlainText]
type contentString = string
type confidenceThreshold = float
type channelType = [@as("Kik") #Kik | @as("Twilio-Sms") #TwilioSms | @as("Slack") #Slack | @as("Facebook") #Facebook]
type channelStatus = [@as("FAILED") #FAILED | @as("CREATED") #CREATED | @as("IN_PROGRESS") #INPROGRESS]
type builtinSlotTypeSignature = string
type builtinIntentSignature = string
type botName = string
type botChannelName = string
type boolean_ = bool
type blob = NodeJs.Buffer.t
type amazonResourceName = string
type aliasNameOrListAll = string
type aliasName = string
type utteranceData = {
lastUtteredDate: option<timestamp_>,
firstUtteredDate: option<timestamp_>,
distinctUsers: option<count>,
count: option<count>,
utteranceString: option<utteranceString>
}
type tagKeyList = array<tagKey>
type tag = {
value: tagValue,
key: tagKey
}
type synonymList = array<value>
type stringList = array<string_>
type slotUtteranceList = array<utterance>
type slotTypeRegexConfiguration = {
pattern: regexPattern
}
type slotTypeMetadata = {
version: option<version>,
createdDate: option<timestamp_>,
lastUpdatedDate: option<timestamp_>,
description: option<description>,
name: option<slotTypeName>
}
type slotDefaultValue = {
defaultValue: slotDefaultValueString
}
type resourceReference = {
version: option<version>,
name: option<name>
}
type outputContext = {
turnsToLive: contextTurnsToLive,
timeToLiveInSeconds: contextTimeToLiveInSeconds,
name: outputContextName
}
type message = {
groupNumber: option<groupNumber>,
content: contentString,
contentType: contentType
}
type logSettingsResponse = {
resourcePrefix: option<resourcePrefix>,
resourceArn: option<resourceArn>,
kmsKeyArn: option<kmsKeyArn>,
destination: option<destination>,
logType: option<logType>
}
type logSettingsRequest = {
resourceArn: resourceArn,
kmsKeyArn: option<kmsKeyArn>,
destination: destination,
logType: logType
}
type localeList = array<locale>
type kendraConfiguration = {
role: roleArn,
queryFilterString: option<queryFilterString>,
kendraIndex: kendraIndexArn
}
type intentUtteranceList = array<utterance>
type intentMetadata = {
version: option<version>,
createdDate: option<timestamp_>,
lastUpdatedDate: option<timestamp_>,
description: option<description>,
name: option<intentName>
}
type intent = {
intentVersion: version,
intentName: intentName
}
type inputContext = {
name: inputContextName
}
type codeHook = {
messageVersion: messageVersion,
uri: lambdaARN
}
type channelConfigurationMap = Js.Dict.t< string_>
type builtinIntentSlot = {
name: option<string_>
}
type botVersions = array<version>
type botMetadata = {
version: option<version>,
createdDate: option<timestamp_>,
lastUpdatedDate: option<timestamp_>,
status: option<status>,
description: option<description>,
name: option<botName>
}
type tagList_ = array<tag>
type slotTypeMetadataList = array<slotTypeMetadata>
type slotTypeConfiguration = {
regexConfiguration: option<slotTypeRegexConfiguration>
}
type slotDefaultValueList = array<slotDefaultValue>
type outputContextList = array<outputContext>
type messageList = array<message>
type logSettingsResponseList = array<logSettingsResponse>
type logSettingsRequestList = array<logSettingsRequest>
type listOfUtterance = array<utteranceData>
type intentMetadataList = array<intentMetadata>
type intentList = array<intent>
type inputContextList = array<inputContext>
type fulfillmentActivity = {
codeHook: option<codeHook>,
@as("type") type_: fulfillmentActivityType
}
type enumerationValue = {
synonyms: option<synonymList>,
value: value
}
type builtinSlotTypeMetadata = {
supportedLocales: option<localeList>,
signature: option<builtinSlotTypeSignature>
}
type builtinIntentSlotList = array<builtinIntentSlot>
type builtinIntentMetadata = {
supportedLocales: option<localeList>,
signature: option<builtinIntentSignature>
}
type botMetadataList = array<botMetadata>
type botChannelAssociation = {
failureReason: option<string_>,
status: option<channelStatus>,
botConfiguration: option<channelConfigurationMap>,
@as("type") type_: option<channelType>,
createdDate: option<timestamp_>,
botName: option<botName>,
botAlias: option<aliasName>,
description: option<description>,
name: option<botChannelName>
}
type utteranceList = {
utterances: option<listOfUtterance>,
botVersion: option<version>
}
type statement = {
responseCard: option<responseCard>,
messages: messageList
}
type slotTypeConfigurations = array<slotTypeConfiguration>
type slotDefaultValueSpec = {
defaultValueList: slotDefaultValueList
}
type prompt = {
responseCard: option<responseCard>,
maxAttempts: promptMaxAttempts,
messages: messageList
}
type enumerationValues = array<enumerationValue>
type conversationLogsResponse = {
iamRoleArn: option<iamRoleArn>,
logSettings: option<logSettingsResponseList>
}
type conversationLogsRequest = {
iamRoleArn: iamRoleArn,
logSettings: logSettingsRequestList
}
type builtinSlotTypeMetadataList = array<builtinSlotTypeMetadata>
type builtinIntentMetadataList = array<builtinIntentMetadata>
type botChannelAssociationList = array<botChannelAssociation>
type slot = {
defaultValueSpec: option<slotDefaultValueSpec>,
obfuscationSetting: option<obfuscationSetting>,
responseCard: option<responseCard>,
sampleUtterances: option<slotUtteranceList>,
priority: option<priority>,
valueElicitationPrompt: option<prompt>,
slotTypeVersion: option<version>,
slotType: option<customOrBuiltinSlotTypeName>,
slotConstraint: slotConstraint,
description: option<description>,
name: slotName
}
type listsOfUtterances = array<utteranceList>
type followUpPrompt = {
rejectionStatement: statement,
prompt: prompt
}
type botAliasMetadata = {
conversationLogs: option<conversationLogsResponse>,
checksum: option<string_>,
createdDate: option<timestamp_>,
lastUpdatedDate: option<timestamp_>,
botName: option<botName>,
botVersion: option<version>,
description: option<description>,
name: option<aliasName>
}
type slotList = array<slot>
type botAliasMetadataList = array<botAliasMetadata>
type awsServiceClient;
@module("@aws-sdk/client-lex") @new external createClient: unit => awsServiceClient = "LexModelBuildingServiceClient";
module GetExport = {
  type t;
  type request = {
exportType: exportType,
resourceType: resourceType,
version: numericalVersion,
name: name
}
  type response = {
url: option<string_>,
failureReason: option<string_>,
exportStatus: option<exportStatus>,
exportType: option<exportType>,
resourceType: option<resourceType>,
version: option<numericalVersion>,
name: option<name>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetExportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteUtterances = {
  type t;
  type request = {
userId: userId,
botName: botName
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteUtterancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteBotChannelAssociation = {
  type t;
  type request = {
botAlias: aliasName,
botName: botName,
name: botChannelName
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteBotChannelAssociationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
resourceArn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetImport = {
  type t;
  type request = {
importId: string_
}
  type response = {
createdDate: option<timestamp_>,
failureReason: option<stringList>,
importStatus: option<importStatus>,
importId: option<string_>,
mergeStrategy: option<mergeStrategy>,
resourceType: option<resourceType>,
name: option<name>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetImportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBotChannelAssociation = {
  type t;
  type request = {
botAlias: aliasName,
botName: botName,
name: botChannelName
}
  type response = {
failureReason: option<string_>,
status: option<channelStatus>,
botConfiguration: option<channelConfigurationMap>,
@as("type") type_: option<channelType>,
createdDate: option<timestamp_>,
botName: option<botName>,
botAlias: option<aliasName>,
description: option<description>,
name: option<botChannelName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBotChannelAssociationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSlotTypeVersion = {
  type t;
  type request = {
version: numericalVersion,
name: slotTypeName
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteSlotTypeVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteSlotType = {
  type t;
  type request = {
name: slotTypeName
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteSlotTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteIntentVersion = {
  type t;
  type request = {
version: numericalVersion,
name: intentName
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteIntentVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteIntent = {
  type t;
  type request = {
name: intentName
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteIntentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteBotVersion = {
  type t;
  type request = {
version: numericalVersion,
name: botName
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteBotVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteBotAlias = {
  type t;
  type request = {
botName: botName,
name: aliasName
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteBotAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteBot = {
  type t;
  type request = {
name: botName
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteBotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagList_,
resourceArn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartImport = {
  type t;
  type request = {
tags: option<tagList_>,
mergeStrategy: mergeStrategy,
resourceType: resourceType,
payload: blob
}
  type response = {
createdDate: option<timestamp_>,
tags: option<tagList_>,
importStatus: option<importStatus>,
importId: option<string_>,
mergeStrategy: option<mergeStrategy>,
resourceType: option<resourceType>,
name: option<name>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "StartImportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: amazonResourceName
}
  type response = {
tags: option<tagList_>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSlotTypes = {
  type t;
  type request = {
nameContains: option<slotTypeName>,
maxResults: option<maxResults>,
nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
slotTypes: option<slotTypeMetadataList>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetSlotTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSlotTypeVersions = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
name: slotTypeName
}
  type response = {
nextToken: option<nextToken>,
slotTypes: option<slotTypeMetadataList>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetSlotTypeVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetIntents = {
  type t;
  type request = {
nameContains: option<intentName>,
maxResults: option<maxResults>,
nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
intents: option<intentMetadataList>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetIntentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetIntentVersions = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
name: intentName
}
  type response = {
nextToken: option<nextToken>,
intents: option<intentMetadataList>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetIntentVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBuiltinIntent = {
  type t;
  type request = {
signature: builtinIntentSignature
}
  type response = {
slots: option<builtinIntentSlotList>,
supportedLocales: option<localeList>,
signature: option<builtinIntentSignature>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBuiltinIntentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBots = {
  type t;
  type request = {
nameContains: option<botName>,
maxResults: option<maxResults>,
nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
bots: option<botMetadataList>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBotsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBotVersions = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
name: botName
}
  type response = {
nextToken: option<nextToken>,
bots: option<botMetadataList>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBotVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutSlotType = {
  type t;
  type request = {
slotTypeConfigurations: option<slotTypeConfigurations>,
parentSlotTypeSignature: option<customOrBuiltinSlotTypeName>,
createVersion: option<boolean_>,
valueSelectionStrategy: option<slotValueSelectionStrategy>,
checksum: option<string_>,
enumerationValues: option<enumerationValues>,
description: option<description>,
name: slotTypeName
}
  type response = {
slotTypeConfigurations: option<slotTypeConfigurations>,
parentSlotTypeSignature: option<customOrBuiltinSlotTypeName>,
createVersion: option<boolean_>,
valueSelectionStrategy: option<slotValueSelectionStrategy>,
checksum: option<string_>,
version: option<version>,
createdDate: option<timestamp_>,
lastUpdatedDate: option<timestamp_>,
enumerationValues: option<enumerationValues>,
description: option<description>,
name: option<slotTypeName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "PutSlotTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutBotAlias = {
  type t;
  type request = {
tags: option<tagList_>,
conversationLogs: option<conversationLogsRequest>,
checksum: option<string_>,
botName: botName,
botVersion: version,
description: option<description>,
name: aliasName
}
  type response = {
tags: option<tagList_>,
conversationLogs: option<conversationLogsResponse>,
checksum: option<string_>,
createdDate: option<timestamp_>,
lastUpdatedDate: option<timestamp_>,
botName: option<botName>,
botVersion: option<version>,
description: option<description>,
name: option<aliasName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "PutBotAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutBot = {
  type t;
  type request = {
tags: option<tagList_>,
createVersion: option<boolean_>,
detectSentiment: option<boolean_>,
childDirected: boolean_,
locale: locale,
processBehavior: option<processBehavior>,
checksum: option<string_>,
voiceId: option<string_>,
idleSessionTTLInSeconds: option<sessionTTL>,
abortStatement: option<statement>,
clarificationPrompt: option<prompt>,
nluIntentConfidenceThreshold: option<confidenceThreshold>,
enableModelImprovements: option<boolean_>,
intents: option<intentList>,
description: option<description>,
name: botName
}
  type response = {
tags: option<tagList_>,
detectSentiment: option<boolean_>,
createVersion: option<boolean_>,
childDirected: option<boolean_>,
locale: option<locale>,
version: option<version>,
checksum: option<string_>,
voiceId: option<string_>,
idleSessionTTLInSeconds: option<sessionTTL>,
createdDate: option<timestamp_>,
lastUpdatedDate: option<timestamp_>,
failureReason: option<string_>,
status: option<status>,
abortStatement: option<statement>,
clarificationPrompt: option<prompt>,
nluIntentConfidenceThreshold: option<confidenceThreshold>,
enableModelImprovements: option<boolean_>,
intents: option<intentList>,
description: option<description>,
name: option<botName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "PutBotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSlotType = {
  type t;
  type request = {
version: version,
name: slotTypeName
}
  type response = {
slotTypeConfigurations: option<slotTypeConfigurations>,
parentSlotTypeSignature: option<customOrBuiltinSlotTypeName>,
valueSelectionStrategy: option<slotValueSelectionStrategy>,
checksum: option<string_>,
version: option<version>,
createdDate: option<timestamp_>,
lastUpdatedDate: option<timestamp_>,
enumerationValues: option<enumerationValues>,
description: option<description>,
name: option<slotTypeName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetSlotTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBuiltinSlotTypes = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
signatureContains: option<string_>,
locale: option<locale>
}
  type response = {
nextToken: option<nextToken>,
slotTypes: option<builtinSlotTypeMetadataList>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBuiltinSlotTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBuiltinIntents = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
signatureContains: option<string_>,
locale: option<locale>
}
  type response = {
nextToken: option<nextToken>,
intents: option<builtinIntentMetadataList>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBuiltinIntentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBotChannelAssociations = {
  type t;
  type request = {
nameContains: option<botChannelName>,
maxResults: option<maxResults>,
nextToken: option<nextToken>,
botAlias: aliasNameOrListAll,
botName: botName
}
  type response = {
nextToken: option<nextToken>,
botChannelAssociations: option<botChannelAssociationList>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBotChannelAssociationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBotAlias = {
  type t;
  type request = {
botName: botName,
name: aliasName
}
  type response = {
conversationLogs: option<conversationLogsResponse>,
checksum: option<string_>,
createdDate: option<timestamp_>,
lastUpdatedDate: option<timestamp_>,
botName: option<botName>,
botVersion: option<version>,
description: option<description>,
name: option<aliasName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBotAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBot = {
  type t;
  type request = {
versionOrAlias: string_,
name: botName
}
  type response = {
detectSentiment: option<boolean_>,
childDirected: option<boolean_>,
locale: option<locale>,
version: option<version>,
checksum: option<string_>,
voiceId: option<string_>,
idleSessionTTLInSeconds: option<sessionTTL>,
createdDate: option<timestamp_>,
lastUpdatedDate: option<timestamp_>,
failureReason: option<string_>,
status: option<status>,
abortStatement: option<statement>,
clarificationPrompt: option<prompt>,
nluIntentConfidenceThreshold: option<confidenceThreshold>,
enableModelImprovements: option<boolean_>,
intents: option<intentList>,
description: option<description>,
name: option<botName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSlotTypeVersion = {
  type t;
  type request = {
checksum: option<string_>,
name: slotTypeName
}
  type response = {
slotTypeConfigurations: option<slotTypeConfigurations>,
parentSlotTypeSignature: option<customOrBuiltinSlotTypeName>,
valueSelectionStrategy: option<slotValueSelectionStrategy>,
checksum: option<string_>,
version: option<version>,
createdDate: option<timestamp_>,
lastUpdatedDate: option<timestamp_>,
enumerationValues: option<enumerationValues>,
description: option<description>,
name: option<slotTypeName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "CreateSlotTypeVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBotVersion = {
  type t;
  type request = {
checksum: option<string_>,
name: botName
}
  type response = {
detectSentiment: option<boolean_>,
enableModelImprovements: option<boolean_>,
childDirected: option<boolean_>,
locale: option<locale>,
version: option<version>,
checksum: option<string_>,
voiceId: option<string_>,
idleSessionTTLInSeconds: option<sessionTTL>,
createdDate: option<timestamp_>,
lastUpdatedDate: option<timestamp_>,
failureReason: option<string_>,
status: option<status>,
abortStatement: option<statement>,
clarificationPrompt: option<prompt>,
intents: option<intentList>,
description: option<description>,
name: option<botName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "CreateBotVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetUtterancesView = {
  type t;
  type request = {
statusType: statusType,
botVersions: botVersions,
botName: botName
}
  type response = {
utterances: option<listsOfUtterances>,
botName: option<botName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetUtterancesViewCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutIntent = {
  type t;
  type request = {
outputContexts: option<outputContextList>,
inputContexts: option<inputContextList>,
kendraConfiguration: option<kendraConfiguration>,
createVersion: option<boolean_>,
checksum: option<string_>,
parentIntentSignature: option<builtinIntentSignature>,
fulfillmentActivity: option<fulfillmentActivity>,
dialogCodeHook: option<codeHook>,
conclusionStatement: option<statement>,
followUpPrompt: option<followUpPrompt>,
rejectionStatement: option<statement>,
confirmationPrompt: option<prompt>,
sampleUtterances: option<intentUtteranceList>,
slots: option<slotList>,
description: option<description>,
name: intentName
}
  type response = {
outputContexts: option<outputContextList>,
inputContexts: option<inputContextList>,
kendraConfiguration: option<kendraConfiguration>,
createVersion: option<boolean_>,
checksum: option<string_>,
version: option<version>,
createdDate: option<timestamp_>,
lastUpdatedDate: option<timestamp_>,
parentIntentSignature: option<builtinIntentSignature>,
fulfillmentActivity: option<fulfillmentActivity>,
dialogCodeHook: option<codeHook>,
conclusionStatement: option<statement>,
followUpPrompt: option<followUpPrompt>,
rejectionStatement: option<statement>,
confirmationPrompt: option<prompt>,
sampleUtterances: option<intentUtteranceList>,
slots: option<slotList>,
description: option<description>,
name: option<intentName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "PutIntentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetIntent = {
  type t;
  type request = {
version: version,
name: intentName
}
  type response = {
outputContexts: option<outputContextList>,
inputContexts: option<inputContextList>,
kendraConfiguration: option<kendraConfiguration>,
checksum: option<string_>,
version: option<version>,
createdDate: option<timestamp_>,
lastUpdatedDate: option<timestamp_>,
parentIntentSignature: option<builtinIntentSignature>,
fulfillmentActivity: option<fulfillmentActivity>,
dialogCodeHook: option<codeHook>,
conclusionStatement: option<statement>,
followUpPrompt: option<followUpPrompt>,
rejectionStatement: option<statement>,
confirmationPrompt: option<prompt>,
sampleUtterances: option<intentUtteranceList>,
slots: option<slotList>,
description: option<description>,
name: option<intentName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetIntentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBotAliases = {
  type t;
  type request = {
nameContains: option<aliasName>,
maxResults: option<maxResults>,
nextToken: option<nextToken>,
botName: botName
}
  type response = {
nextToken: option<nextToken>,
@as("BotAliases") botAliases: option<botAliasMetadataList>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBotAliasesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateIntentVersion = {
  type t;
  type request = {
checksum: option<string_>,
name: intentName
}
  type response = {
outputContexts: option<outputContextList>,
inputContexts: option<inputContextList>,
kendraConfiguration: option<kendraConfiguration>,
checksum: option<string_>,
version: option<version>,
createdDate: option<timestamp_>,
lastUpdatedDate: option<timestamp_>,
parentIntentSignature: option<builtinIntentSignature>,
fulfillmentActivity: option<fulfillmentActivity>,
dialogCodeHook: option<codeHook>,
conclusionStatement: option<statement>,
followUpPrompt: option<followUpPrompt>,
rejectionStatement: option<statement>,
confirmationPrompt: option<prompt>,
sampleUtterances: option<intentUtteranceList>,
slots: option<slotList>,
description: option<description>,
name: option<intentName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "CreateIntentVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
