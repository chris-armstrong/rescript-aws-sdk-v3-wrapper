type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type roleArn = string
type version = string
type value = string
type utteranceString = string
type utterance = string
type userId = string
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type amazonawsString = string
type statusType = [@as("Missed") #Missed | @as("Detected") #Detected]
type status = [@as("NOT_BUILT") #NOT_BUILT | @as("FAILED") #FAILED | @as("READY_BASIC_TESTING") #READY_BASIC_TESTING | @as("READY") #READY | @as("BUILDING") #BUILDING]
type slotValueSelectionStrategy = [@as("TOP_RESOLUTION") #TOP_RESOLUTION | @as("ORIGINAL_VALUE") #ORIGINAL_VALUE]
type slotTypeName = string
type slotName = string
type slotDefaultValueString = string
type slotConstraint = [@as("Optional") #Optional | @as("Required") #Required]
type sessionTTL = int;
type responseCard = string
type resourceType = [@as("SLOT_TYPE") #SLOT_TYPE | @as("INTENT") #INTENT | @as("BOT") #BOT]
type resourcePrefix = string
type resourceArn = string
type regexPattern = string
type referenceType = [@as("BotChannel") #BotChannel | @as("BotAlias") #BotAlias | @as("Bot") #Bot | @as("Intent") #Intent]
type queryFilterString = string
type promptMaxAttempts = int;
type processBehavior = [@as("BUILD") #BUILD | @as("SAVE") #SAVE]
type priority = int;
type outputContextName = string
type obfuscationSetting = [@as("DEFAULT_OBFUSCATION") #DEFAULT_OBFUSCATION | @as("NONE") #NONE]
type numericalVersion = string
type nextToken = string
type name = string
type messageVersion = string
type mergeStrategy = [@as("FAIL_ON_CONFLICT") #FAIL_ON_CONFLICT | @as("OVERWRITE_LATEST") #OVERWRITE_LATEST]
type maxResults = int;
type logType = [@as("TEXT") #TEXT | @as("AUDIO") #AUDIO]
type locale = [@as("ja-JP") #ja_JP | @as("it-IT") #it_IT | @as("fr-CA") #fr_CA | @as("fr-FR") #fr_FR | @as("es-US") #es_US | @as("es-ES") #es_ES | @as("es-419") #es_419 | @as("en-US") #en_US | @as("en-GB") #en_GB | @as("en-AU") #en_AU | @as("de-DE") #de_DE]
type lambdaARN = string
type kmsKeyArn = string
type kendraIndexArn = string
type intentName = string
type inputContextName = string
type importStatus = [@as("FAILED") #FAILED | @as("COMPLETE") #COMPLETE | @as("IN_PROGRESS") #IN_PROGRESS]
type iamRoleArn = string
type groupNumber = int;
type fulfillmentActivityType = [@as("CodeHook") #CodeHook | @as("ReturnIntent") #ReturnIntent]
type exportType = [@as("LEX") #LEX | @as("ALEXA_SKILLS_KIT") #ALEXA_SKILLS_KIT]
type exportStatus = [@as("FAILED") #FAILED | @as("READY") #READY | @as("IN_PROGRESS") #IN_PROGRESS]
type destination = [@as("S3") #S3 | @as("CLOUDWATCH_LOGS") #CLOUDWATCH_LOGS]
type description = string
type customOrBuiltinSlotTypeName = string
type count = int;
type contextTurnsToLive = int;
type contextTimeToLiveInSeconds = int;
type contentType = [@as("CustomPayload") #CustomPayload | @as("SSML") #SSML | @as("PlainText") #PlainText]
type contentString = string
type confidenceThreshold = float;
type channelType = [@as("Kik") #Kik | @as("Twilio-Sms") #Twilio_Sms | @as("Slack") #Slack | @as("Facebook") #Facebook]
type channelStatus = [@as("FAILED") #FAILED | @as("CREATED") #CREATED | @as("IN_PROGRESS") #IN_PROGRESS]
type builtinSlotTypeSignature = string
type builtinIntentSignature = string
type botName = string
type botChannelName = string
type amazonawsBoolean = bool;
type blob = NodeJs.Buffer.t;
type amazonResourceName = string
type aliasNameOrListAll = string
type aliasName = string
type utteranceData = {
@as("lastUtteredDate") lastUtteredDate: amazonawsTimestamp,
@as("firstUtteredDate") firstUtteredDate: amazonawsTimestamp,
@as("distinctUsers") distinctUsers: count,
@as("count") count: count,
@as("utteranceString") utteranceString: utteranceString
}
type tagKeyList = array<tagKey>
type tag = {
@as("value") value: option<tagValue>,
@as("key") key: option<tagKey>
}
type synonymList = array<value>
type stringList = array<amazonawsString>
type slotUtteranceList = array<utterance>
type slotTypeRegexConfiguration = {
@as("pattern") pattern: option<regexPattern>
}
type slotTypeMetadata = {
@as("version") version: version,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("lastUpdatedDate") lastUpdatedDate: amazonawsTimestamp,
@as("description") description: description,
@as("name") name: slotTypeName
}
type slotDefaultValue = {
@as("defaultValue") defaultValue: option<slotDefaultValueString>
}
type resourceReference = {
@as("version") version: version,
@as("name") name: name
}
type outputContext = {
@as("turnsToLive") turnsToLive: option<contextTurnsToLive>,
@as("timeToLiveInSeconds") timeToLiveInSeconds: option<contextTimeToLiveInSeconds>,
@as("name") name: option<outputContextName>
}
type message = {
@as("groupNumber") groupNumber: groupNumber,
@as("content") content: option<contentString>,
@as("contentType") contentType: option<contentType>
}
type logSettingsResponse = {
@as("resourcePrefix") resourcePrefix: resourcePrefix,
@as("resourceArn") resourceArn: resourceArn,
@as("kmsKeyArn") kmsKeyArn: kmsKeyArn,
@as("destination") destination: destination,
@as("logType") logType: logType
}
type logSettingsRequest = {
@as("resourceArn") resourceArn: option<resourceArn>,
@as("kmsKeyArn") kmsKeyArn: kmsKeyArn,
@as("destination") destination: option<destination>,
@as("logType") logType: option<logType>
}
type localeList = array<locale>
type kendraConfiguration = {
@as("role") role: option<roleArn>,
@as("queryFilterString") queryFilterString: queryFilterString,
@as("kendraIndex") kendraIndex: option<kendraIndexArn>
}
type intentUtteranceList = array<utterance>
type intentMetadata = {
@as("version") version: version,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("lastUpdatedDate") lastUpdatedDate: amazonawsTimestamp,
@as("description") description: description,
@as("name") name: intentName
}
type intent = {
@as("intentVersion") intentVersion: option<version>,
@as("intentName") intentName: option<intentName>
}
type inputContext = {
@as("name") name: option<inputContextName>
}
type codeHook = {
@as("messageVersion") messageVersion: option<messageVersion>,
@as("uri") uri: option<lambdaARN>
}
type channelConfigurationMap = Js.Dict.t< amazonawsString>
type builtinIntentSlot = {
@as("name") name: amazonawsString
}
type botVersions = array<version>
type botMetadata = {
@as("version") version: version,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("lastUpdatedDate") lastUpdatedDate: amazonawsTimestamp,
@as("status") status: status,
@as("description") description: description,
@as("name") name: botName
}
type tagList = array<tag>
type slotTypeMetadataList = array<slotTypeMetadata>
type slotTypeConfiguration = {
@as("regexConfiguration") regexConfiguration: slotTypeRegexConfiguration
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
@as("codeHook") codeHook: codeHook,
@as("type") type_: option<fulfillmentActivityType>
}
type enumerationValue = {
@as("synonyms") synonyms: synonymList,
@as("value") value: option<value>
}
type builtinSlotTypeMetadata = {
@as("supportedLocales") supportedLocales: localeList,
@as("signature") signature: builtinSlotTypeSignature
}
type builtinIntentSlotList = array<builtinIntentSlot>
type builtinIntentMetadata = {
@as("supportedLocales") supportedLocales: localeList,
@as("signature") signature: builtinIntentSignature
}
type botMetadataList = array<botMetadata>
type botChannelAssociation = {
@as("failureReason") failureReason: amazonawsString,
@as("status") status: channelStatus,
@as("botConfiguration") botConfiguration: channelConfigurationMap,
@as("type") type_: channelType,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("botName") botName: botName,
@as("botAlias") botAlias: aliasName,
@as("description") description: description,
@as("name") name: botChannelName
}
type utteranceList = {
@as("utterances") utterances: listOfUtterance,
@as("botVersion") botVersion: version
}
type statement = {
@as("responseCard") responseCard: responseCard,
@as("messages") messages: option<messageList>
}
type slotTypeConfigurations = array<slotTypeConfiguration>
type slotDefaultValueSpec = {
@as("defaultValueList") defaultValueList: option<slotDefaultValueList>
}
type prompt = {
@as("responseCard") responseCard: responseCard,
@as("maxAttempts") maxAttempts: option<promptMaxAttempts>,
@as("messages") messages: option<messageList>
}
type enumerationValues = array<enumerationValue>
type conversationLogsResponse = {
@as("iamRoleArn") iamRoleArn: iamRoleArn,
@as("logSettings") logSettings: logSettingsResponseList
}
type conversationLogsRequest = {
@as("iamRoleArn") iamRoleArn: option<iamRoleArn>,
@as("logSettings") logSettings: option<logSettingsRequestList>
}
type builtinSlotTypeMetadataList = array<builtinSlotTypeMetadata>
type builtinIntentMetadataList = array<builtinIntentMetadata>
type botChannelAssociationList = array<botChannelAssociation>
type slot = {
@as("defaultValueSpec") defaultValueSpec: slotDefaultValueSpec,
@as("obfuscationSetting") obfuscationSetting: obfuscationSetting,
@as("responseCard") responseCard: responseCard,
@as("sampleUtterances") sampleUtterances: slotUtteranceList,
@as("priority") priority: priority,
@as("valueElicitationPrompt") valueElicitationPrompt: prompt,
@as("slotTypeVersion") slotTypeVersion: version,
@as("slotType") slotType: customOrBuiltinSlotTypeName,
@as("slotConstraint") slotConstraint: option<slotConstraint>,
@as("description") description: description,
@as("name") name: option<slotName>
}
type listsOfUtterances = array<utteranceList>
type followUpPrompt = {
@as("rejectionStatement") rejectionStatement: option<statement>,
@as("prompt") prompt: option<prompt>
}
type botAliasMetadata = {
@as("conversationLogs") conversationLogs: conversationLogsResponse,
@as("checksum") checksum: amazonawsString,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("lastUpdatedDate") lastUpdatedDate: amazonawsTimestamp,
@as("botName") botName: botName,
@as("botVersion") botVersion: version,
@as("description") description: description,
@as("name") name: aliasName
}
type slotList = array<slot>
type botAliasMetadataList = array<botAliasMetadata>
type clientType;
@module("@aws-sdk/client-lex") @new external createClient: unit => clientType = "LexModelBuildingServiceClient";
module GetExport = {
  type t;
  type request = {
@as("exportType") exportType: option<exportType>,
@as("resourceType") resourceType: option<resourceType>,
@as("version") version: option<numericalVersion>,
@as("name") name: option<name>
}
  type response = {
@as("url") url: amazonawsString,
@as("failureReason") failureReason: amazonawsString,
@as("exportStatus") exportStatus: exportStatus,
@as("exportType") exportType: exportType,
@as("resourceType") resourceType: resourceType,
@as("version") version: numericalVersion,
@as("name") name: name
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetExportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteUtterances = {
  type t;
  type request = {
@as("userId") userId: option<userId>,
@as("botName") botName: option<botName>
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteUtterancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBotChannelAssociation = {
  type t;
  type request = {
@as("botAlias") botAlias: option<aliasName>,
@as("botName") botName: option<botName>,
@as("name") name: option<botChannelName>
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteBotChannelAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetImport = {
  type t;
  type request = {
@as("importId") importId: option<amazonawsString>
}
  type response = {
@as("createdDate") createdDate: amazonawsTimestamp,
@as("failureReason") failureReason: stringList,
@as("importStatus") importStatus: importStatus,
@as("importId") importId: amazonawsString,
@as("mergeStrategy") mergeStrategy: mergeStrategy,
@as("resourceType") resourceType: resourceType,
@as("name") name: name
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetImportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBotChannelAssociation = {
  type t;
  type request = {
@as("botAlias") botAlias: option<aliasName>,
@as("botName") botName: option<botName>,
@as("name") name: option<botChannelName>
}
  type response = {
@as("failureReason") failureReason: amazonawsString,
@as("status") status: channelStatus,
@as("botConfiguration") botConfiguration: channelConfigurationMap,
@as("type") type_: channelType,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("botName") botName: botName,
@as("botAlias") botAlias: aliasName,
@as("description") description: description,
@as("name") name: botChannelName
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBotChannelAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSlotTypeVersion = {
  type t;
  type request = {
@as("version") version: option<numericalVersion>,
@as("name") name: option<slotTypeName>
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteSlotTypeVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSlotType = {
  type t;
  type request = {
@as("name") name: option<slotTypeName>
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteSlotTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteIntentVersion = {
  type t;
  type request = {
@as("version") version: option<numericalVersion>,
@as("name") name: option<intentName>
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteIntentVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteIntent = {
  type t;
  type request = {
@as("name") name: option<intentName>
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteIntentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBotVersion = {
  type t;
  type request = {
@as("version") version: option<numericalVersion>,
@as("name") name: option<botName>
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteBotVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBotAlias = {
  type t;
  type request = {
@as("botName") botName: option<botName>,
@as("name") name: option<aliasName>
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteBotAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBot = {
  type t;
  type request = {
@as("name") name: option<botName>
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteBotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagList>,
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartImport = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("mergeStrategy") mergeStrategy: option<mergeStrategy>,
@as("resourceType") resourceType: option<resourceType>,
@as("payload") payload: option<blob>
}
  type response = {
@as("createdDate") createdDate: amazonawsTimestamp,
@as("tags") tags: tagList,
@as("importStatus") importStatus: importStatus,
@as("importId") importId: amazonawsString,
@as("mergeStrategy") mergeStrategy: mergeStrategy,
@as("resourceType") resourceType: resourceType,
@as("name") name: name
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "StartImportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = {
@as("tags") tags: tagList
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSlotTypes = {
  type t;
  type request = {
@as("nameContains") nameContains: slotTypeName,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("slotTypes") slotTypes: slotTypeMetadataList
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetSlotTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSlotTypeVersions = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("name") name: option<slotTypeName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("slotTypes") slotTypes: slotTypeMetadataList
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetSlotTypeVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIntents = {
  type t;
  type request = {
@as("nameContains") nameContains: intentName,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("intents") intents: intentMetadataList
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetIntentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIntentVersions = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("name") name: option<intentName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("intents") intents: intentMetadataList
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetIntentVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBuiltinIntent = {
  type t;
  type request = {
@as("signature") signature: option<builtinIntentSignature>
}
  type response = {
@as("slots") slots: builtinIntentSlotList,
@as("supportedLocales") supportedLocales: localeList,
@as("signature") signature: builtinIntentSignature
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBuiltinIntentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBots = {
  type t;
  type request = {
@as("nameContains") nameContains: botName,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("bots") bots: botMetadataList
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBotVersions = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("name") name: option<botName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("bots") bots: botMetadataList
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBotVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutSlotType = {
  type t;
  type request = {
@as("slotTypeConfigurations") slotTypeConfigurations: slotTypeConfigurations,
@as("parentSlotTypeSignature") parentSlotTypeSignature: customOrBuiltinSlotTypeName,
@as("createVersion") createVersion: amazonawsBoolean,
@as("valueSelectionStrategy") valueSelectionStrategy: slotValueSelectionStrategy,
@as("checksum") checksum: amazonawsString,
@as("enumerationValues") enumerationValues: enumerationValues,
@as("description") description: description,
@as("name") name: option<slotTypeName>
}
  type response = {
@as("slotTypeConfigurations") slotTypeConfigurations: slotTypeConfigurations,
@as("parentSlotTypeSignature") parentSlotTypeSignature: customOrBuiltinSlotTypeName,
@as("createVersion") createVersion: amazonawsBoolean,
@as("valueSelectionStrategy") valueSelectionStrategy: slotValueSelectionStrategy,
@as("checksum") checksum: amazonawsString,
@as("version") version: version,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("lastUpdatedDate") lastUpdatedDate: amazonawsTimestamp,
@as("enumerationValues") enumerationValues: enumerationValues,
@as("description") description: description,
@as("name") name: slotTypeName
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "PutSlotTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutBotAlias = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("conversationLogs") conversationLogs: conversationLogsRequest,
@as("checksum") checksum: amazonawsString,
@as("botName") botName: option<botName>,
@as("botVersion") botVersion: option<version>,
@as("description") description: description,
@as("name") name: option<aliasName>
}
  type response = {
@as("tags") tags: tagList,
@as("conversationLogs") conversationLogs: conversationLogsResponse,
@as("checksum") checksum: amazonawsString,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("lastUpdatedDate") lastUpdatedDate: amazonawsTimestamp,
@as("botName") botName: botName,
@as("botVersion") botVersion: version,
@as("description") description: description,
@as("name") name: aliasName
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "PutBotAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutBot = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("createVersion") createVersion: amazonawsBoolean,
@as("detectSentiment") detectSentiment: amazonawsBoolean,
@as("childDirected") childDirected: option<amazonawsBoolean>,
@as("locale") locale: option<locale>,
@as("processBehavior") processBehavior: processBehavior,
@as("checksum") checksum: amazonawsString,
@as("voiceId") voiceId: amazonawsString,
@as("idleSessionTTLInSeconds") idleSessionTTLInSeconds: sessionTTL,
@as("abortStatement") abortStatement: statement,
@as("clarificationPrompt") clarificationPrompt: prompt,
@as("nluIntentConfidenceThreshold") nluIntentConfidenceThreshold: confidenceThreshold,
@as("enableModelImprovements") enableModelImprovements: amazonawsBoolean,
@as("intents") intents: intentList,
@as("description") description: description,
@as("name") name: option<botName>
}
  type response = {
@as("tags") tags: tagList,
@as("detectSentiment") detectSentiment: amazonawsBoolean,
@as("createVersion") createVersion: amazonawsBoolean,
@as("childDirected") childDirected: amazonawsBoolean,
@as("locale") locale: locale,
@as("version") version: version,
@as("checksum") checksum: amazonawsString,
@as("voiceId") voiceId: amazonawsString,
@as("idleSessionTTLInSeconds") idleSessionTTLInSeconds: sessionTTL,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("lastUpdatedDate") lastUpdatedDate: amazonawsTimestamp,
@as("failureReason") failureReason: amazonawsString,
@as("status") status: status,
@as("abortStatement") abortStatement: statement,
@as("clarificationPrompt") clarificationPrompt: prompt,
@as("nluIntentConfidenceThreshold") nluIntentConfidenceThreshold: confidenceThreshold,
@as("enableModelImprovements") enableModelImprovements: amazonawsBoolean,
@as("intents") intents: intentList,
@as("description") description: description,
@as("name") name: botName
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "PutBotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSlotType = {
  type t;
  type request = {
@as("version") version: option<version>,
@as("name") name: option<slotTypeName>
}
  type response = {
@as("slotTypeConfigurations") slotTypeConfigurations: slotTypeConfigurations,
@as("parentSlotTypeSignature") parentSlotTypeSignature: customOrBuiltinSlotTypeName,
@as("valueSelectionStrategy") valueSelectionStrategy: slotValueSelectionStrategy,
@as("checksum") checksum: amazonawsString,
@as("version") version: version,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("lastUpdatedDate") lastUpdatedDate: amazonawsTimestamp,
@as("enumerationValues") enumerationValues: enumerationValues,
@as("description") description: description,
@as("name") name: slotTypeName
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetSlotTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBuiltinSlotTypes = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("signatureContains") signatureContains: amazonawsString,
@as("locale") locale: locale
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("slotTypes") slotTypes: builtinSlotTypeMetadataList
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBuiltinSlotTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBuiltinIntents = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("signatureContains") signatureContains: amazonawsString,
@as("locale") locale: locale
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("intents") intents: builtinIntentMetadataList
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBuiltinIntentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBotChannelAssociations = {
  type t;
  type request = {
@as("nameContains") nameContains: botChannelName,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("botAlias") botAlias: option<aliasNameOrListAll>,
@as("botName") botName: option<botName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("botChannelAssociations") botChannelAssociations: botChannelAssociationList
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBotChannelAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBotAlias = {
  type t;
  type request = {
@as("botName") botName: option<botName>,
@as("name") name: option<aliasName>
}
  type response = {
@as("conversationLogs") conversationLogs: conversationLogsResponse,
@as("checksum") checksum: amazonawsString,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("lastUpdatedDate") lastUpdatedDate: amazonawsTimestamp,
@as("botName") botName: botName,
@as("botVersion") botVersion: version,
@as("description") description: description,
@as("name") name: aliasName
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBotAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBot = {
  type t;
  type request = {
@as("versionOrAlias") versionOrAlias: option<amazonawsString>,
@as("name") name: option<botName>
}
  type response = {
@as("detectSentiment") detectSentiment: amazonawsBoolean,
@as("childDirected") childDirected: amazonawsBoolean,
@as("locale") locale: locale,
@as("version") version: version,
@as("checksum") checksum: amazonawsString,
@as("voiceId") voiceId: amazonawsString,
@as("idleSessionTTLInSeconds") idleSessionTTLInSeconds: sessionTTL,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("lastUpdatedDate") lastUpdatedDate: amazonawsTimestamp,
@as("failureReason") failureReason: amazonawsString,
@as("status") status: status,
@as("abortStatement") abortStatement: statement,
@as("clarificationPrompt") clarificationPrompt: prompt,
@as("nluIntentConfidenceThreshold") nluIntentConfidenceThreshold: confidenceThreshold,
@as("enableModelImprovements") enableModelImprovements: amazonawsBoolean,
@as("intents") intents: intentList,
@as("description") description: description,
@as("name") name: botName
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSlotTypeVersion = {
  type t;
  type request = {
@as("checksum") checksum: amazonawsString,
@as("name") name: option<slotTypeName>
}
  type response = {
@as("slotTypeConfigurations") slotTypeConfigurations: slotTypeConfigurations,
@as("parentSlotTypeSignature") parentSlotTypeSignature: customOrBuiltinSlotTypeName,
@as("valueSelectionStrategy") valueSelectionStrategy: slotValueSelectionStrategy,
@as("checksum") checksum: amazonawsString,
@as("version") version: version,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("lastUpdatedDate") lastUpdatedDate: amazonawsTimestamp,
@as("enumerationValues") enumerationValues: enumerationValues,
@as("description") description: description,
@as("name") name: slotTypeName
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "CreateSlotTypeVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBotVersion = {
  type t;
  type request = {
@as("checksum") checksum: amazonawsString,
@as("name") name: option<botName>
}
  type response = {
@as("detectSentiment") detectSentiment: amazonawsBoolean,
@as("enableModelImprovements") enableModelImprovements: amazonawsBoolean,
@as("childDirected") childDirected: amazonawsBoolean,
@as("locale") locale: locale,
@as("version") version: version,
@as("checksum") checksum: amazonawsString,
@as("voiceId") voiceId: amazonawsString,
@as("idleSessionTTLInSeconds") idleSessionTTLInSeconds: sessionTTL,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("lastUpdatedDate") lastUpdatedDate: amazonawsTimestamp,
@as("failureReason") failureReason: amazonawsString,
@as("status") status: status,
@as("abortStatement") abortStatement: statement,
@as("clarificationPrompt") clarificationPrompt: prompt,
@as("intents") intents: intentList,
@as("description") description: description,
@as("name") name: botName
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "CreateBotVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUtterancesView = {
  type t;
  type request = {
@as("statusType") statusType: option<statusType>,
@as("botVersions") botVersions: option<botVersions>,
@as("botName") botName: option<botName>
}
  type response = {
@as("utterances") utterances: listsOfUtterances,
@as("botName") botName: botName
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetUtterancesViewCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutIntent = {
  type t;
  type request = {
@as("outputContexts") outputContexts: outputContextList,
@as("inputContexts") inputContexts: inputContextList,
@as("kendraConfiguration") kendraConfiguration: kendraConfiguration,
@as("createVersion") createVersion: amazonawsBoolean,
@as("checksum") checksum: amazonawsString,
@as("parentIntentSignature") parentIntentSignature: builtinIntentSignature,
@as("fulfillmentActivity") fulfillmentActivity: fulfillmentActivity,
@as("dialogCodeHook") dialogCodeHook: codeHook,
@as("conclusionStatement") conclusionStatement: statement,
@as("followUpPrompt") followUpPrompt: followUpPrompt,
@as("rejectionStatement") rejectionStatement: statement,
@as("confirmationPrompt") confirmationPrompt: prompt,
@as("sampleUtterances") sampleUtterances: intentUtteranceList,
@as("slots") slots: slotList,
@as("description") description: description,
@as("name") name: option<intentName>
}
  type response = {
@as("outputContexts") outputContexts: outputContextList,
@as("inputContexts") inputContexts: inputContextList,
@as("kendraConfiguration") kendraConfiguration: kendraConfiguration,
@as("createVersion") createVersion: amazonawsBoolean,
@as("checksum") checksum: amazonawsString,
@as("version") version: version,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("lastUpdatedDate") lastUpdatedDate: amazonawsTimestamp,
@as("parentIntentSignature") parentIntentSignature: builtinIntentSignature,
@as("fulfillmentActivity") fulfillmentActivity: fulfillmentActivity,
@as("dialogCodeHook") dialogCodeHook: codeHook,
@as("conclusionStatement") conclusionStatement: statement,
@as("followUpPrompt") followUpPrompt: followUpPrompt,
@as("rejectionStatement") rejectionStatement: statement,
@as("confirmationPrompt") confirmationPrompt: prompt,
@as("sampleUtterances") sampleUtterances: intentUtteranceList,
@as("slots") slots: slotList,
@as("description") description: description,
@as("name") name: intentName
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "PutIntentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIntent = {
  type t;
  type request = {
@as("version") version: option<version>,
@as("name") name: option<intentName>
}
  type response = {
@as("outputContexts") outputContexts: outputContextList,
@as("inputContexts") inputContexts: inputContextList,
@as("kendraConfiguration") kendraConfiguration: kendraConfiguration,
@as("checksum") checksum: amazonawsString,
@as("version") version: version,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("lastUpdatedDate") lastUpdatedDate: amazonawsTimestamp,
@as("parentIntentSignature") parentIntentSignature: builtinIntentSignature,
@as("fulfillmentActivity") fulfillmentActivity: fulfillmentActivity,
@as("dialogCodeHook") dialogCodeHook: codeHook,
@as("conclusionStatement") conclusionStatement: statement,
@as("followUpPrompt") followUpPrompt: followUpPrompt,
@as("rejectionStatement") rejectionStatement: statement,
@as("confirmationPrompt") confirmationPrompt: prompt,
@as("sampleUtterances") sampleUtterances: intentUtteranceList,
@as("slots") slots: slotList,
@as("description") description: description,
@as("name") name: intentName
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetIntentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBotAliases = {
  type t;
  type request = {
@as("nameContains") nameContains: aliasName,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("botName") botName: option<botName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("BotAliases") botAliases: botAliasMetadataList
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "GetBotAliasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateIntentVersion = {
  type t;
  type request = {
@as("checksum") checksum: amazonawsString,
@as("name") name: option<intentName>
}
  type response = {
@as("outputContexts") outputContexts: outputContextList,
@as("inputContexts") inputContexts: inputContextList,
@as("kendraConfiguration") kendraConfiguration: kendraConfiguration,
@as("checksum") checksum: amazonawsString,
@as("version") version: version,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("lastUpdatedDate") lastUpdatedDate: amazonawsTimestamp,
@as("parentIntentSignature") parentIntentSignature: builtinIntentSignature,
@as("fulfillmentActivity") fulfillmentActivity: fulfillmentActivity,
@as("dialogCodeHook") dialogCodeHook: codeHook,
@as("conclusionStatement") conclusionStatement: statement,
@as("followUpPrompt") followUpPrompt: followUpPrompt,
@as("rejectionStatement") rejectionStatement: statement,
@as("confirmationPrompt") confirmationPrompt: prompt,
@as("sampleUtterances") sampleUtterances: intentUtteranceList,
@as("slots") slots: slotList,
@as("description") description: description,
@as("name") name: intentName
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "CreateIntentVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
