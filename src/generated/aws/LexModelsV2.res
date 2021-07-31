type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type voiceId = string
type value = string
type utterance = string
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type stillWaitingResponseTimeout = int;
type stillWaitingResponseFrequency = int;
type sortOrder = [@as("Descending") #Descending | @as("Ascending") #Ascending]
type slotValueResolutionStrategy = [@as("TopResolution") #TopResolution | @as("OriginalValue") #OriginalValue]
type slotTypeSortAttribute = [@as("LastUpdatedDateTime") #LastUpdatedDateTime | @as("SlotTypeName") #SlotTypeName]
type slotTypeSignature = string
type slotTypeFilterOperator = [@as("EQ") #EQ | @as("CO") #CO]
type slotTypeFilterName = [@as("SlotTypeName") #SlotTypeName]
type slotSortAttribute = [@as("LastUpdatedDateTime") #LastUpdatedDateTime | @as("SlotName") #SlotName]
type slotFilterOperator = [@as("EQ") #EQ | @as("CO") #CO]
type slotFilterName = [@as("SlotName") #SlotName]
type slotDefaultValueString = string
type slotConstraint = [@as("Optional") #Optional | @as("Required") #Required]
type skipResourceInUseCheck = bool;
type sessionTTL = int;
type servicePrincipal = string
type sSMLMessageValue = string
type s3BucketArn = string
type roleArn = string
type revisionId = string
type retryAfterSeconds = int;
type resourceCount = int;
type regexPattern = string
type queryFilterString = string
type promptMaxRetries = int;
type priorityValue = int;
type principalArn = string
type presignedS3Url = string
type policy = string
type plainTextMessageValue = string
type operation = string
type obfuscationSettingType = [@as("DefaultObfuscation") #DefaultObfuscation | @as("None") #None]
type numericalBotVersion = string
type nextToken = string
type name = string
type mergeStrategy = [@as("FailOnConflict") #FailOnConflict | @as("Overwrite") #Overwrite]
type maxResults = int;
type logPrefix = string
type localeName = string
type localeId = string
type lambdaARN = string
type kmsKeyArn = string
type kendraIndexArn = string
type intentSortAttribute = [@as("LastUpdatedDateTime") #LastUpdatedDateTime | @as("IntentName") #IntentName]
type intentSignature = string
type intentFilterOperator = [@as("EQ") #EQ | @as("CO") #CO]
type intentFilterName = [@as("IntentName") #IntentName]
type importedResourceId = string
type importStatus = [@as("Deleting") #Deleting | @as("Failed") #Failed | @as("Completed") #Completed | @as("InProgress") #InProgress]
type importSortAttribute = [@as("LastUpdatedDateTime") #LastUpdatedDateTime]
type importFilterOperator = [@as("EQ") #EQ | @as("CO") #CO]
type importFilterName = [@as("ImportResourceType") #ImportResourceType]
type importExportFilePassword = string
type importExportFileFormat = [@as("LexJson") #LexJson]
type id = string
type filterValue = string
type failureReason = string
type exportStatus = [@as("Deleting") #Deleting | @as("Failed") #Failed | @as("Completed") #Completed | @as("InProgress") #InProgress]
type exportSortAttribute = [@as("LastUpdatedDateTime") #LastUpdatedDateTime]
type exportFilterOperator = [@as("EQ") #EQ | @as("CO") #CO]
type exportFilterName = [@as("ExportResourceType") #ExportResourceType]
type exceptionMessage = string
type effect = [@as("Deny") #Deny | @as("Allow") #Allow]
type draftBotVersion = string
type description = string
type customPayloadValue = string
type contextTurnsToLive = int;
type contextTimeToLiveInSeconds = int;
type confidenceThreshold = float;
type conditionValue = string
type conditionOperator = string
type conditionKey = string
type codeHookInterfaceVersion = string
type cloudWatchLogGroupArn = string
type childDirected = bool;
type buttonValue = string
type buttonText = string
type builtInsMaxResults = int;
type builtInSlotTypeSortAttribute = [@as("SlotTypeSignature") #SlotTypeSignature]
type builtInOrCustomSlotTypeId = string
type builtInIntentSortAttribute = [@as("IntentSignature") #IntentSignature]
type boxedBoolean = bool;
type botVersionSortAttribute = [@as("BotVersion") #BotVersion]
type botVersion = string
type botStatus = [@as("Importing") #Importing | @as("Versioning") #Versioning | @as("Failed") #Failed | @as("Deleting") #Deleting | @as("Inactive") #Inactive | @as("Available") #Available | @as("Creating") #Creating]
type botSortAttribute = [@as("BotName") #BotName]
type botLocaleStatus = [@as("Importing") #Importing | @as("NotBuilt") #NotBuilt | @as("Deleting") #Deleting | @as("Failed") #Failed | @as("ReadyExpressTesting") #ReadyExpressTesting | @as("Built") #Built | @as("Building") #Building | @as("Creating") #Creating]
type botLocaleSortAttribute = [@as("BotLocaleName") #BotLocaleName]
type botLocaleHistoryEventDescription = string
type botLocaleFilterOperator = [@as("EQ") #EQ | @as("CO") #CO]
type botLocaleFilterName = [@as("BotLocaleName") #BotLocaleName]
type botFilterOperator = [@as("EQ") #EQ | @as("CO") #CO]
type botFilterName = [@as("BotName") #BotName]
type botAliasStatus = [@as("Failed") #Failed | @as("Deleting") #Deleting | @as("Available") #Available | @as("Creating") #Creating]
type botAliasId = string
type amazonawsBoolean = bool;
type attachmentUrl = string
type attachmentTitle = string
type amazonResourceName = string
type voiceSettings = {
@as("voiceId") voiceId: option<voiceId>
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type slotValueRegexFilter = {
@as("pattern") pattern: option<regexPattern>
}
type slotTypeSummary = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("parentSlotTypeSignature") parentSlotTypeSignature: slotTypeSignature,
@as("description") description: description,
@as("slotTypeName") slotTypeName: name,
@as("slotTypeId") slotTypeId: id
}
type slotTypeSortBy = {
@as("order") order: option<sortOrder>,
@as("attribute") attribute: option<slotTypeSortAttribute>
}
type slotSortBy = {
@as("order") order: option<sortOrder>,
@as("attribute") attribute: option<slotSortAttribute>
}
type slotPriority = {
@as("slotId") slotId: option<id>,
@as("priority") priority: option<priorityValue>
}
type slotDefaultValue = {
@as("defaultValue") defaultValue: option<slotDefaultValueString>
}
type sentimentAnalysisSettings = {
@as("detectSentiment") detectSentiment: option<amazonawsBoolean>
}
type sampleValue = {
@as("value") value: option<value>
}
type sampleUtterance = {
@as("utterance") utterance: option<utterance>
}
type sSMLMessage = {
@as("value") value: option<sSMLMessageValue>
}
type s3BucketLogDestination = {
@as("logPrefix") logPrefix: option<logPrefix>,
@as("s3BucketArn") s3BucketArn: option<s3BucketArn>,
@as("kmsKeyArn") kmsKeyArn: kmsKeyArn
}
type principal = {
@as("arn") arn: principalArn,
@as("service") service: servicePrincipal
}
type plainTextMessage = {
@as("value") value: option<plainTextMessageValue>
}
type outputContext = {
@as("turnsToLive") turnsToLive: option<contextTurnsToLive>,
@as("timeToLiveInSeconds") timeToLiveInSeconds: option<contextTimeToLiveInSeconds>,
@as("name") name: option<name>
}
type operationList = array<operation>
type obfuscationSetting = {
@as("obfuscationSettingType") obfuscationSettingType: option<obfuscationSettingType>
}
type lambdaCodeHook = {
@as("codeHookInterfaceVersion") codeHookInterfaceVersion: option<codeHookInterfaceVersion>,
@as("lambdaARN") lambdaARN: option<lambdaARN>
}
type kendraConfiguration = {
@as("queryFilterString") queryFilterString: queryFilterString,
@as("queryFilterStringEnabled") queryFilterStringEnabled: amazonawsBoolean,
@as("kendraIndex") kendraIndex: option<kendraIndexArn>
}
type intentSortBy = {
@as("order") order: option<sortOrder>,
@as("attribute") attribute: option<intentSortAttribute>
}
type inputContext = {
@as("name") name: option<name>
}
type importSummary = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("mergeStrategy") mergeStrategy: mergeStrategy,
@as("importStatus") importStatus: importStatus,
@as("importedResourceName") importedResourceName: name,
@as("importedResourceId") importedResourceId: importedResourceId,
@as("importId") importId: id
}
type importSortBy = {
@as("order") order: option<sortOrder>,
@as("attribute") attribute: option<importSortAttribute>
}
type fulfillmentCodeHookSettings = {
@as("enabled") enabled: option<amazonawsBoolean>
}
type filterValues = array<filterValue>
type failureReasons = array<failureReason>
type exportSortBy = {
@as("order") order: option<sortOrder>,
@as("attribute") attribute: option<exportSortAttribute>
}
type dialogCodeHookSettings = {
@as("enabled") enabled: option<amazonawsBoolean>
}
type dataPrivacy = {
@as("childDirected") childDirected: option<childDirected>
}
type customPayload = {
@as("value") value: option<customPayloadValue>
}
type conditionKeyValueMap = Js.Dict.t< conditionValue>
type cloudWatchLogGroupLogDestination = {
@as("logPrefix") logPrefix: option<logPrefix>,
@as("cloudWatchLogGroupArn") cloudWatchLogGroupArn: option<cloudWatchLogGroupArn>
}
type button = {
@as("value") value: option<buttonValue>,
@as("text") text: option<buttonText>
}
type builtInSlotTypeSummary = {
@as("description") description: description,
@as("slotTypeSignature") slotTypeSignature: slotTypeSignature
}
type builtInSlotTypeSortBy = {
@as("order") order: option<sortOrder>,
@as("attribute") attribute: option<builtInSlotTypeSortAttribute>
}
type builtInIntentSummary = {
@as("description") description: description,
@as("intentSignature") intentSignature: intentSignature
}
type builtInIntentSortBy = {
@as("order") order: option<sortOrder>,
@as("attribute") attribute: option<builtInIntentSortAttribute>
}
type botVersionSummary = {
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("botStatus") botStatus: botStatus,
@as("description") description: description,
@as("botVersion") botVersion: botVersion,
@as("botName") botName: name
}
type botVersionSortBy = {
@as("order") order: option<sortOrder>,
@as("attribute") attribute: option<botVersionSortAttribute>
}
type botVersionLocaleDetails = {
@as("sourceBotVersion") sourceBotVersion: option<botVersion>
}
type botSummary = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("latestBotVersion") latestBotVersion: numericalBotVersion,
@as("botStatus") botStatus: botStatus,
@as("description") description: description,
@as("botName") botName: name,
@as("botId") botId: id
}
type botSortBy = {
@as("order") order: option<sortOrder>,
@as("attribute") attribute: option<botSortAttribute>
}
type botLocaleSummary = {
@as("lastBuildSubmittedDateTime") lastBuildSubmittedDateTime: amazonawsTimestamp,
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("botLocaleStatus") botLocaleStatus: botLocaleStatus,
@as("description") description: description,
@as("localeName") localeName: localeName,
@as("localeId") localeId: localeId
}
type botLocaleSortBy = {
@as("order") order: option<sortOrder>,
@as("attribute") attribute: option<botLocaleSortAttribute>
}
type botLocaleHistoryEvent = {
@as("eventDate") eventDate: option<amazonawsTimestamp>,
@as("event") event: option<botLocaleHistoryEventDescription>
}
type botLocaleExportSpecification = {
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<botVersion>,
@as("botId") botId: option<id>
}
type botExportSpecification = {
@as("botVersion") botVersion: option<botVersion>,
@as("botId") botId: option<id>
}
type botAliasSummary = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("botAliasStatus") botAliasStatus: botAliasStatus,
@as("botVersion") botVersion: botVersion,
@as("description") description: description,
@as("botAliasName") botAliasName: name,
@as("botAliasId") botAliasId: botAliasId
}
type botAliasHistoryEvent = {
@as("endDate") endDate: amazonawsTimestamp,
@as("startDate") startDate: amazonawsTimestamp,
@as("botVersion") botVersion: botVersion
}
type textLogDestination = {
@as("cloudWatch") cloudWatch: option<cloudWatchLogGroupLogDestination>
}
type synonymList = array<sampleValue>
type slotValueSelectionSetting = {
@as("regexFilter") regexFilter: slotValueRegexFilter,
@as("resolutionStrategy") resolutionStrategy: option<slotValueResolutionStrategy>
}
type slotTypeSummaryList = array<slotTypeSummary>
type slotTypeFilter = {
@as("operator") operator: option<slotTypeFilterOperator>,
@as("values") values: option<filterValues>,
@as("name") name: option<slotTypeFilterName>
}
type slotPrioritiesList = array<slotPriority>
type slotFilter = {
@as("operator") operator: option<slotFilterOperator>,
@as("values") values: option<filterValues>,
@as("name") name: option<slotFilterName>
}
type slotDefaultValueList = array<slotDefaultValue>
type sampleUtterancesList = array<sampleUtterance>
type principalList = array<principal>
type outputContextsList = array<outputContext>
type intentFilter = {
@as("operator") operator: option<intentFilterOperator>,
@as("values") values: option<filterValues>,
@as("name") name: option<intentFilterName>
}
type inputContextsList = array<inputContext>
type importSummaryList = array<importSummary>
type importFilter = {
@as("operator") operator: option<importFilterOperator>,
@as("values") values: option<filterValues>,
@as("name") name: option<importFilterName>
}
type exportResourceSpecification = {
@as("botLocaleExportSpecification") botLocaleExportSpecification: botLocaleExportSpecification,
@as("botExportSpecification") botExportSpecification: botExportSpecification
}
type exportFilter = {
@as("operator") operator: option<exportFilterOperator>,
@as("values") values: option<filterValues>,
@as("name") name: option<exportFilterName>
}
type conditionMap = Js.Dict.t< conditionKeyValueMap>
type codeHookSpecification = {
@as("lambdaCodeHook") lambdaCodeHook: option<lambdaCodeHook>
}
type buttonsList = array<button>
type builtInSlotTypeSummaryList = array<builtInSlotTypeSummary>
type builtInIntentSummaryList = array<builtInIntentSummary>
type botVersionSummaryList = array<botVersionSummary>
type botVersionLocaleSpecification = Js.Dict.t< botVersionLocaleDetails>
type botSummaryList = array<botSummary>
type botLocaleSummaryList = array<botLocaleSummary>
type botLocaleImportSpecification = {
@as("voiceSettings") voiceSettings: voiceSettings,
@as("nluIntentConfidenceThreshold") nluIntentConfidenceThreshold: confidenceThreshold,
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<draftBotVersion>,
@as("botId") botId: option<id>
}
type botLocaleHistoryEventsList = array<botLocaleHistoryEvent>
type botLocaleFilter = {
@as("operator") operator: option<botLocaleFilterOperator>,
@as("values") values: option<filterValues>,
@as("name") name: option<botLocaleFilterName>
}
type botImportSpecification = {
@as("testBotAliasTags") testBotAliasTags: tagMap,
@as("botTags") botTags: tagMap,
@as("idleSessionTTLInSeconds") idleSessionTTLInSeconds: sessionTTL,
@as("dataPrivacy") dataPrivacy: option<dataPrivacy>,
@as("roleArn") roleArn: option<roleArn>,
@as("botName") botName: option<name>
}
type botFilter = {
@as("operator") operator: option<botFilterOperator>,
@as("values") values: option<filterValues>,
@as("name") name: option<botFilterName>
}
type botAliasSummaryList = array<botAliasSummary>
type botAliasHistoryEventsList = array<botAliasHistoryEvent>
type audioLogDestination = {
@as("s3Bucket") s3Bucket: option<s3BucketLogDestination>
}
type textLogSetting = {
@as("destination") destination: option<textLogDestination>,
@as("enabled") enabled: option<amazonawsBoolean>
}
type slotTypeValue = {
@as("synonyms") synonyms: synonymList,
@as("sampleValue") sampleValue: sampleValue
}
type slotTypeFilters = array<slotTypeFilter>
type slotFilters = array<slotFilter>
type slotDefaultValueSpecification = {
@as("defaultValueList") defaultValueList: option<slotDefaultValueList>
}
type intentSummary = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("outputContexts") outputContexts: outputContextsList,
@as("inputContexts") inputContexts: inputContextsList,
@as("parentIntentSignature") parentIntentSignature: intentSignature,
@as("description") description: description,
@as("intentName") intentName: name,
@as("intentId") intentId: id
}
type intentFilters = array<intentFilter>
type importResourceSpecification = {
@as("botLocaleImportSpecification") botLocaleImportSpecification: botLocaleImportSpecification,
@as("botImportSpecification") botImportSpecification: botImportSpecification
}
type importFilters = array<importFilter>
type imageResponseCard = {
@as("buttons") buttons: buttonsList,
@as("imageUrl") imageUrl: attachmentUrl,
@as("subtitle") subtitle: attachmentTitle,
@as("title") title: option<attachmentTitle>
}
type exportSummary = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("exportStatus") exportStatus: exportStatus,
@as("fileFormat") fileFormat: importExportFileFormat,
@as("resourceSpecification") resourceSpecification: exportResourceSpecification,
@as("exportId") exportId: id
}
type exportFilters = array<exportFilter>
type botLocaleFilters = array<botLocaleFilter>
type botFilters = array<botFilter>
type botAliasLocaleSettings = {
@as("codeHookSpecification") codeHookSpecification: codeHookSpecification,
@as("enabled") enabled: option<amazonawsBoolean>
}
type audioLogSetting = {
@as("destination") destination: option<audioLogDestination>,
@as("enabled") enabled: option<amazonawsBoolean>
}
type textLogSettingsList = array<textLogSetting>
type slotTypeValues = array<slotTypeValue>
type message = {
@as("imageResponseCard") imageResponseCard: imageResponseCard,
@as("ssmlMessage") ssmlMessage: sSMLMessage,
@as("customPayload") customPayload: customPayload,
@as("plainTextMessage") plainTextMessage: plainTextMessage
}
type intentSummaryList = array<intentSummary>
type exportSummaryList = array<exportSummary>
type botAliasLocaleSettingsMap = Js.Dict.t< botAliasLocaleSettings>
type audioLogSettingsList = array<audioLogSetting>
type messageVariationsList = array<message>
type conversationLogSettings = {
@as("audioLogSettings") audioLogSettings: audioLogSettingsList,
@as("textLogSettings") textLogSettings: textLogSettingsList
}
type messageGroup = {
@as("variations") variations: messageVariationsList,
@as("message") message: option<message>
}
type messageGroupsList = array<messageGroup>
type stillWaitingResponseSpecification = {
@as("allowInterrupt") allowInterrupt: boxedBoolean,
@as("timeoutInSeconds") timeoutInSeconds: option<stillWaitingResponseTimeout>,
@as("frequencyInSeconds") frequencyInSeconds: option<stillWaitingResponseFrequency>,
@as("messageGroups") messageGroups: option<messageGroupsList>
}
type responseSpecification = {
@as("allowInterrupt") allowInterrupt: boxedBoolean,
@as("messageGroups") messageGroups: option<messageGroupsList>
}
type promptSpecification = {
@as("allowInterrupt") allowInterrupt: boxedBoolean,
@as("maxRetries") maxRetries: option<promptMaxRetries>,
@as("messageGroups") messageGroups: option<messageGroupsList>
}
type waitAndContinueSpecification = {
@as("stillWaitingResponse") stillWaitingResponse: stillWaitingResponseSpecification,
@as("continueResponse") continueResponse: option<responseSpecification>,
@as("waitingResponse") waitingResponse: option<responseSpecification>
}
type slotSummary = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("valueElicitationPromptSpecification") valueElicitationPromptSpecification: promptSpecification,
@as("slotTypeId") slotTypeId: builtInOrCustomSlotTypeId,
@as("slotConstraint") slotConstraint: slotConstraint,
@as("description") description: description,
@as("slotName") slotName: name,
@as("slotId") slotId: id
}
type intentConfirmationSetting = {
@as("declinationResponse") declinationResponse: option<responseSpecification>,
@as("promptSpecification") promptSpecification: option<promptSpecification>
}
type intentClosingSetting = {
@as("closingResponse") closingResponse: option<responseSpecification>
}
type slotValueElicitationSetting = {
@as("waitAndContinueSpecification") waitAndContinueSpecification: waitAndContinueSpecification,
@as("sampleUtterances") sampleUtterances: sampleUtterancesList,
@as("promptSpecification") promptSpecification: promptSpecification,
@as("slotConstraint") slotConstraint: option<slotConstraint>,
@as("defaultValueSpecification") defaultValueSpecification: slotDefaultValueSpecification
}
type slotSummaryList = array<slotSummary>
type clientType;
@module("@aws-sdk/client-lex") @new external createClient: unit => clientType = "LexModelsV2Client";
module UpdateResourcePolicy = {
  type t;
  type request = {
@as("expectedRevisionId") expectedRevisionId: revisionId,
@as("policy") policy: option<policy>,
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = {
@as("revisionId") revisionId: revisionId,
@as("resourceArn") resourceArn: amazonResourceName
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "UpdateResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeResourcePolicy = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = {
@as("revisionId") revisionId: revisionId,
@as("policy") policy: policy,
@as("resourceArn") resourceArn: amazonResourceName
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DescribeResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSlotType = {
  type t;
  type request = {
@as("skipResourceInUseCheck") skipResourceInUseCheck: skipResourceInUseCheck,
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<draftBotVersion>,
@as("botId") botId: option<id>,
@as("slotTypeId") slotTypeId: option<id>
}
  
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DeleteSlotTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSlot = {
  type t;
  type request = {
@as("intentId") intentId: option<id>,
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<draftBotVersion>,
@as("botId") botId: option<id>,
@as("slotId") slotId: option<id>
}
  
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DeleteSlotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteResourcePolicyStatement = {
  type t;
  type request = {
@as("expectedRevisionId") expectedRevisionId: revisionId,
@as("statementId") statementId: option<name>,
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = {
@as("revisionId") revisionId: revisionId,
@as("resourceArn") resourceArn: amazonResourceName
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DeleteResourcePolicyStatementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteResourcePolicy = {
  type t;
  type request = {
@as("expectedRevisionId") expectedRevisionId: revisionId,
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = {
@as("revisionId") revisionId: revisionId,
@as("resourceArn") resourceArn: amazonResourceName
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DeleteResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteIntent = {
  type t;
  type request = {
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<draftBotVersion>,
@as("botId") botId: option<id>,
@as("intentId") intentId: option<id>
}
  
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DeleteIntentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteImport = {
  type t;
  type request = {
@as("importId") importId: option<id>
}
  type response = {
@as("importStatus") importStatus: importStatus,
@as("importId") importId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DeleteImportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteExport = {
  type t;
  type request = {
@as("exportId") exportId: option<id>
}
  type response = {
@as("exportStatus") exportStatus: exportStatus,
@as("exportId") exportId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DeleteExportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBotVersion = {
  type t;
  type request = {
@as("skipResourceInUseCheck") skipResourceInUseCheck: skipResourceInUseCheck,
@as("botVersion") botVersion: option<numericalBotVersion>,
@as("botId") botId: option<id>
}
  type response = {
@as("botStatus") botStatus: botStatus,
@as("botVersion") botVersion: numericalBotVersion,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DeleteBotVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBotLocale = {
  type t;
  type request = {
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<draftBotVersion>,
@as("botId") botId: option<id>
}
  type response = {
@as("botLocaleStatus") botLocaleStatus: botLocaleStatus,
@as("localeId") localeId: localeId,
@as("botVersion") botVersion: draftBotVersion,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DeleteBotLocaleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBotAlias = {
  type t;
  type request = {
@as("skipResourceInUseCheck") skipResourceInUseCheck: skipResourceInUseCheck,
@as("botId") botId: option<id>,
@as("botAliasId") botAliasId: option<botAliasId>
}
  type response = {
@as("botAliasStatus") botAliasStatus: botAliasStatus,
@as("botId") botId: id,
@as("botAliasId") botAliasId: botAliasId
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DeleteBotAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBot = {
  type t;
  type request = {
@as("skipResourceInUseCheck") skipResourceInUseCheck: skipResourceInUseCheck,
@as("botId") botId: option<id>
}
  type response = {
@as("botStatus") botStatus: botStatus,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DeleteBotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUploadUrl = {
  type t;
  type request = unit
  type response = {
@as("uploadUrl") uploadUrl: presignedS3Url,
@as("importId") importId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "CreateUploadUrlCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateResourcePolicy = {
  type t;
  type request = {
@as("policy") policy: option<policy>,
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = {
@as("revisionId") revisionId: revisionId,
@as("resourceArn") resourceArn: amazonResourceName
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "CreateResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BuildBotLocale = {
  type t;
  type request = {
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<draftBotVersion>,
@as("botId") botId: option<id>
}
  type response = {
@as("lastBuildSubmittedDateTime") lastBuildSubmittedDateTime: amazonawsTimestamp,
@as("botLocaleStatus") botLocaleStatus: botLocaleStatus,
@as("localeId") localeId: localeId,
@as("botVersion") botVersion: draftBotVersion,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "BuildBotLocaleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBotLocale = {
  type t;
  type request = {
@as("voiceSettings") voiceSettings: voiceSettings,
@as("nluIntentConfidenceThreshold") nluIntentConfidenceThreshold: option<confidenceThreshold>,
@as("description") description: description,
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<draftBotVersion>,
@as("botId") botId: option<id>
}
  type response = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("failureReasons") failureReasons: failureReasons,
@as("botLocaleStatus") botLocaleStatus: botLocaleStatus,
@as("voiceSettings") voiceSettings: voiceSettings,
@as("nluIntentConfidenceThreshold") nluIntentConfidenceThreshold: confidenceThreshold,
@as("description") description: description,
@as("localeName") localeName: localeName,
@as("localeId") localeId: localeId,
@as("botVersion") botVersion: draftBotVersion,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "UpdateBotLocaleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBot = {
  type t;
  type request = {
@as("idleSessionTTLInSeconds") idleSessionTTLInSeconds: option<sessionTTL>,
@as("dataPrivacy") dataPrivacy: option<dataPrivacy>,
@as("roleArn") roleArn: option<roleArn>,
@as("description") description: description,
@as("botName") botName: option<name>,
@as("botId") botId: option<id>
}
  type response = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("botStatus") botStatus: botStatus,
@as("idleSessionTTLInSeconds") idleSessionTTLInSeconds: sessionTTL,
@as("dataPrivacy") dataPrivacy: dataPrivacy,
@as("roleArn") roleArn: roleArn,
@as("description") description: description,
@as("botName") botName: name,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "UpdateBotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceARN") resourceARN: option<amazonResourceName>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBotVersion = {
  type t;
  type request = {
@as("botVersion") botVersion: option<numericalBotVersion>,
@as("botId") botId: option<id>
}
  type response = {
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("failureReasons") failureReasons: failureReasons,
@as("botStatus") botStatus: botStatus,
@as("idleSessionTTLInSeconds") idleSessionTTLInSeconds: sessionTTL,
@as("dataPrivacy") dataPrivacy: dataPrivacy,
@as("roleArn") roleArn: roleArn,
@as("description") description: description,
@as("botVersion") botVersion: numericalBotVersion,
@as("botName") botName: name,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DescribeBotVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBot = {
  type t;
  type request = {
@as("botId") botId: option<id>
}
  type response = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("botStatus") botStatus: botStatus,
@as("idleSessionTTLInSeconds") idleSessionTTLInSeconds: sessionTTL,
@as("dataPrivacy") dataPrivacy: dataPrivacy,
@as("roleArn") roleArn: roleArn,
@as("description") description: description,
@as("botName") botName: name,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DescribeBotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBotLocale = {
  type t;
  type request = {
@as("voiceSettings") voiceSettings: voiceSettings,
@as("nluIntentConfidenceThreshold") nluIntentConfidenceThreshold: option<confidenceThreshold>,
@as("description") description: description,
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<draftBotVersion>,
@as("botId") botId: option<id>
}
  type response = {
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("botLocaleStatus") botLocaleStatus: botLocaleStatus,
@as("voiceSettings") voiceSettings: voiceSettings,
@as("nluIntentConfidenceThreshold") nluIntentConfidenceThreshold: confidenceThreshold,
@as("description") description: description,
@as("localeId") localeId: localeId,
@as("localeName") localeName: localeName,
@as("botVersion") botVersion: draftBotVersion,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "CreateBotLocaleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBot = {
  type t;
  type request = {
@as("testBotAliasTags") testBotAliasTags: tagMap,
@as("botTags") botTags: tagMap,
@as("idleSessionTTLInSeconds") idleSessionTTLInSeconds: option<sessionTTL>,
@as("dataPrivacy") dataPrivacy: option<dataPrivacy>,
@as("roleArn") roleArn: option<roleArn>,
@as("description") description: description,
@as("botName") botName: option<name>
}
  type response = {
@as("testBotAliasTags") testBotAliasTags: tagMap,
@as("botTags") botTags: tagMap,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("botStatus") botStatus: botStatus,
@as("idleSessionTTLInSeconds") idleSessionTTLInSeconds: sessionTTL,
@as("dataPrivacy") dataPrivacy: dataPrivacy,
@as("roleArn") roleArn: roleArn,
@as("description") description: description,
@as("botName") botName: name,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "CreateBotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateExport = {
  type t;
  type request = {
@as("filePassword") filePassword: importExportFilePassword,
@as("exportId") exportId: option<id>
}
  type response = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("exportStatus") exportStatus: exportStatus,
@as("fileFormat") fileFormat: importExportFileFormat,
@as("resourceSpecification") resourceSpecification: exportResourceSpecification,
@as("exportId") exportId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "UpdateExportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBuiltInSlotTypes = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: builtInsMaxResults,
@as("sortBy") sortBy: builtInSlotTypeSortBy,
@as("localeId") localeId: option<localeId>
}
  type response = {
@as("localeId") localeId: localeId,
@as("nextToken") nextToken: nextToken,
@as("builtInSlotTypeSummaries") builtInSlotTypeSummaries: builtInSlotTypeSummaryList
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "ListBuiltInSlotTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBuiltInIntents = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: builtInsMaxResults,
@as("sortBy") sortBy: builtInIntentSortBy,
@as("localeId") localeId: option<localeId>
}
  type response = {
@as("localeId") localeId: localeId,
@as("nextToken") nextToken: nextToken,
@as("builtInIntentSummaries") builtInIntentSummaries: builtInIntentSummaryList
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "ListBuiltInIntentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBotVersions = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("sortBy") sortBy: botVersionSortBy,
@as("botId") botId: option<id>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("botVersionSummaries") botVersionSummaries: botVersionSummaryList,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "ListBotVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBotAliases = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("botId") botId: option<id>
}
  type response = {
@as("botId") botId: id,
@as("nextToken") nextToken: nextToken,
@as("botAliasSummaries") botAliasSummaries: botAliasSummaryList
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "ListBotAliasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeExport = {
  type t;
  type request = {
@as("exportId") exportId: option<id>
}
  type response = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("downloadUrl") downloadUrl: presignedS3Url,
@as("failureReasons") failureReasons: failureReasons,
@as("exportStatus") exportStatus: exportStatus,
@as("fileFormat") fileFormat: importExportFileFormat,
@as("resourceSpecification") resourceSpecification: exportResourceSpecification,
@as("exportId") exportId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DescribeExportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBotLocale = {
  type t;
  type request = {
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<botVersion>,
@as("botId") botId: option<id>
}
  type response = {
@as("botLocaleHistoryEvents") botLocaleHistoryEvents: botLocaleHistoryEventsList,
@as("lastBuildSubmittedDateTime") lastBuildSubmittedDateTime: amazonawsTimestamp,
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("failureReasons") failureReasons: failureReasons,
@as("botLocaleStatus") botLocaleStatus: botLocaleStatus,
@as("slotTypesCount") slotTypesCount: resourceCount,
@as("intentsCount") intentsCount: resourceCount,
@as("voiceSettings") voiceSettings: voiceSettings,
@as("nluIntentConfidenceThreshold") nluIntentConfidenceThreshold: confidenceThreshold,
@as("description") description: description,
@as("localeName") localeName: localeName,
@as("localeId") localeId: localeId,
@as("botVersion") botVersion: botVersion,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DescribeBotLocaleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateResourcePolicyStatement = {
  type t;
  type request = {
@as("expectedRevisionId") expectedRevisionId: revisionId,
@as("condition") condition: conditionMap,
@as("action") action: option<operationList>,
@as("principal") principal: option<principalList>,
@as("effect") effect: option<effect>,
@as("statementId") statementId: option<name>,
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = {
@as("revisionId") revisionId: revisionId,
@as("resourceArn") resourceArn: amazonResourceName
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "CreateResourcePolicyStatementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateExport = {
  type t;
  type request = {
@as("filePassword") filePassword: importExportFilePassword,
@as("fileFormat") fileFormat: option<importExportFileFormat>,
@as("resourceSpecification") resourceSpecification: option<exportResourceSpecification>
}
  type response = {
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("exportStatus") exportStatus: exportStatus,
@as("fileFormat") fileFormat: importExportFileFormat,
@as("resourceSpecification") resourceSpecification: exportResourceSpecification,
@as("exportId") exportId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "CreateExportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBotVersion = {
  type t;
  type request = {
@as("botVersionLocaleSpecification") botVersionLocaleSpecification: option<botVersionLocaleSpecification>,
@as("description") description: description,
@as("botId") botId: option<id>
}
  type response = {
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("botStatus") botStatus: botStatus,
@as("botVersionLocaleSpecification") botVersionLocaleSpecification: botVersionLocaleSpecification,
@as("botVersion") botVersion: numericalBotVersion,
@as("description") description: description,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "CreateBotVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartImport = {
  type t;
  type request = {
@as("filePassword") filePassword: importExportFilePassword,
@as("mergeStrategy") mergeStrategy: option<mergeStrategy>,
@as("resourceSpecification") resourceSpecification: option<importResourceSpecification>,
@as("importId") importId: option<id>
}
  type response = {
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("importStatus") importStatus: importStatus,
@as("mergeStrategy") mergeStrategy: mergeStrategy,
@as("resourceSpecification") resourceSpecification: importResourceSpecification,
@as("importId") importId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "StartImportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSlotTypes = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("filters") filters: slotTypeFilters,
@as("sortBy") sortBy: slotTypeSortBy,
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<botVersion>,
@as("botId") botId: option<id>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("slotTypeSummaries") slotTypeSummaries: slotTypeSummaryList,
@as("localeId") localeId: localeId,
@as("botVersion") botVersion: botVersion,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "ListSlotTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListImports = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("filters") filters: importFilters,
@as("sortBy") sortBy: importSortBy,
@as("botVersion") botVersion: draftBotVersion,
@as("botId") botId: id
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("importSummaries") importSummaries: importSummaryList,
@as("botVersion") botVersion: draftBotVersion,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "ListImportsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBots = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("filters") filters: botFilters,
@as("sortBy") sortBy: botSortBy
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("botSummaries") botSummaries: botSummaryList
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "ListBotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBotLocales = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("filters") filters: botLocaleFilters,
@as("sortBy") sortBy: botLocaleSortBy,
@as("botVersion") botVersion: option<botVersion>,
@as("botId") botId: option<id>
}
  type response = {
@as("botLocaleSummaries") botLocaleSummaries: botLocaleSummaryList,
@as("nextToken") nextToken: nextToken,
@as("botVersion") botVersion: botVersion,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "ListBotLocalesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeImport = {
  type t;
  type request = {
@as("importId") importId: option<id>
}
  type response = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("failureReasons") failureReasons: failureReasons,
@as("importStatus") importStatus: importStatus,
@as("mergeStrategy") mergeStrategy: mergeStrategy,
@as("importedResourceName") importedResourceName: name,
@as("importedResourceId") importedResourceId: importedResourceId,
@as("resourceSpecification") resourceSpecification: importResourceSpecification,
@as("importId") importId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DescribeImportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSlotType = {
  type t;
  type request = {
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<draftBotVersion>,
@as("botId") botId: option<id>,
@as("parentSlotTypeSignature") parentSlotTypeSignature: slotTypeSignature,
@as("valueSelectionSetting") valueSelectionSetting: option<slotValueSelectionSetting>,
@as("slotTypeValues") slotTypeValues: slotTypeValues,
@as("description") description: description,
@as("slotTypeName") slotTypeName: option<name>,
@as("slotTypeId") slotTypeId: option<id>
}
  type response = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("localeId") localeId: localeId,
@as("botVersion") botVersion: draftBotVersion,
@as("botId") botId: id,
@as("parentSlotTypeSignature") parentSlotTypeSignature: slotTypeSignature,
@as("valueSelectionSetting") valueSelectionSetting: slotValueSelectionSetting,
@as("slotTypeValues") slotTypeValues: slotTypeValues,
@as("description") description: description,
@as("slotTypeName") slotTypeName: name,
@as("slotTypeId") slotTypeId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "UpdateSlotTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIntents = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("filters") filters: intentFilters,
@as("sortBy") sortBy: intentSortBy,
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<botVersion>,
@as("botId") botId: option<id>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("intentSummaries") intentSummaries: intentSummaryList,
@as("localeId") localeId: localeId,
@as("botVersion") botVersion: botVersion,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "ListIntentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListExports = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("filters") filters: exportFilters,
@as("sortBy") sortBy: exportSortBy,
@as("botVersion") botVersion: botVersion,
@as("botId") botId: id
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("exportSummaries") exportSummaries: exportSummaryList,
@as("botVersion") botVersion: botVersion,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "ListExportsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSlotType = {
  type t;
  type request = {
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<botVersion>,
@as("botId") botId: option<id>,
@as("slotTypeId") slotTypeId: option<id>
}
  type response = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("localeId") localeId: localeId,
@as("botVersion") botVersion: botVersion,
@as("botId") botId: id,
@as("parentSlotTypeSignature") parentSlotTypeSignature: slotTypeSignature,
@as("valueSelectionSetting") valueSelectionSetting: slotValueSelectionSetting,
@as("slotTypeValues") slotTypeValues: slotTypeValues,
@as("description") description: description,
@as("slotTypeName") slotTypeName: name,
@as("slotTypeId") slotTypeId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DescribeSlotTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSlotType = {
  type t;
  type request = {
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<draftBotVersion>,
@as("botId") botId: option<id>,
@as("parentSlotTypeSignature") parentSlotTypeSignature: slotTypeSignature,
@as("valueSelectionSetting") valueSelectionSetting: option<slotValueSelectionSetting>,
@as("slotTypeValues") slotTypeValues: slotTypeValues,
@as("description") description: description,
@as("slotTypeName") slotTypeName: option<name>
}
  type response = {
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("localeId") localeId: localeId,
@as("botVersion") botVersion: draftBotVersion,
@as("botId") botId: id,
@as("parentSlotTypeSignature") parentSlotTypeSignature: slotTypeSignature,
@as("valueSelectionSetting") valueSelectionSetting: slotValueSelectionSetting,
@as("slotTypeValues") slotTypeValues: slotTypeValues,
@as("description") description: description,
@as("slotTypeName") slotTypeName: name,
@as("slotTypeId") slotTypeId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "CreateSlotTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBotAlias = {
  type t;
  type request = {
@as("botId") botId: option<id>,
@as("sentimentAnalysisSettings") sentimentAnalysisSettings: sentimentAnalysisSettings,
@as("conversationLogSettings") conversationLogSettings: conversationLogSettings,
@as("botAliasLocaleSettings") botAliasLocaleSettings: botAliasLocaleSettingsMap,
@as("botVersion") botVersion: botVersion,
@as("description") description: description,
@as("botAliasName") botAliasName: option<name>,
@as("botAliasId") botAliasId: option<botAliasId>
}
  type response = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("botId") botId: id,
@as("botAliasStatus") botAliasStatus: botAliasStatus,
@as("sentimentAnalysisSettings") sentimentAnalysisSettings: sentimentAnalysisSettings,
@as("conversationLogSettings") conversationLogSettings: conversationLogSettings,
@as("botAliasLocaleSettings") botAliasLocaleSettings: botAliasLocaleSettingsMap,
@as("botVersion") botVersion: botVersion,
@as("description") description: description,
@as("botAliasName") botAliasName: name,
@as("botAliasId") botAliasId: botAliasId
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "UpdateBotAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBotAlias = {
  type t;
  type request = {
@as("botId") botId: option<id>,
@as("botAliasId") botAliasId: option<botAliasId>
}
  type response = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("botId") botId: id,
@as("botAliasStatus") botAliasStatus: botAliasStatus,
@as("botAliasHistoryEvents") botAliasHistoryEvents: botAliasHistoryEventsList,
@as("sentimentAnalysisSettings") sentimentAnalysisSettings: sentimentAnalysisSettings,
@as("conversationLogSettings") conversationLogSettings: conversationLogSettings,
@as("botAliasLocaleSettings") botAliasLocaleSettings: botAliasLocaleSettingsMap,
@as("botVersion") botVersion: botVersion,
@as("description") description: description,
@as("botAliasName") botAliasName: name,
@as("botAliasId") botAliasId: botAliasId
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DescribeBotAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBotAlias = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("botId") botId: option<id>,
@as("sentimentAnalysisSettings") sentimentAnalysisSettings: sentimentAnalysisSettings,
@as("conversationLogSettings") conversationLogSettings: conversationLogSettings,
@as("botAliasLocaleSettings") botAliasLocaleSettings: botAliasLocaleSettingsMap,
@as("botVersion") botVersion: numericalBotVersion,
@as("description") description: description,
@as("botAliasName") botAliasName: option<name>
}
  type response = {
@as("tags") tags: tagMap,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("botId") botId: id,
@as("botAliasStatus") botAliasStatus: botAliasStatus,
@as("sentimentAnalysisSettings") sentimentAnalysisSettings: sentimentAnalysisSettings,
@as("conversationLogSettings") conversationLogSettings: conversationLogSettings,
@as("botAliasLocaleSettings") botAliasLocaleSettings: botAliasLocaleSettingsMap,
@as("botVersion") botVersion: numericalBotVersion,
@as("description") description: description,
@as("botAliasName") botAliasName: name,
@as("botAliasId") botAliasId: botAliasId
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "CreateBotAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateIntent = {
  type t;
  type request = {
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<draftBotVersion>,
@as("botId") botId: option<id>,
@as("kendraConfiguration") kendraConfiguration: kendraConfiguration,
@as("outputContexts") outputContexts: outputContextsList,
@as("inputContexts") inputContexts: inputContextsList,
@as("intentClosingSetting") intentClosingSetting: intentClosingSetting,
@as("intentConfirmationSetting") intentConfirmationSetting: intentConfirmationSetting,
@as("slotPriorities") slotPriorities: slotPrioritiesList,
@as("fulfillmentCodeHook") fulfillmentCodeHook: fulfillmentCodeHookSettings,
@as("dialogCodeHook") dialogCodeHook: dialogCodeHookSettings,
@as("sampleUtterances") sampleUtterances: sampleUtterancesList,
@as("parentIntentSignature") parentIntentSignature: intentSignature,
@as("description") description: description,
@as("intentName") intentName: option<name>,
@as("intentId") intentId: option<id>
}
  type response = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("localeId") localeId: localeId,
@as("botVersion") botVersion: draftBotVersion,
@as("botId") botId: id,
@as("kendraConfiguration") kendraConfiguration: kendraConfiguration,
@as("outputContexts") outputContexts: outputContextsList,
@as("inputContexts") inputContexts: inputContextsList,
@as("intentClosingSetting") intentClosingSetting: intentClosingSetting,
@as("intentConfirmationSetting") intentConfirmationSetting: intentConfirmationSetting,
@as("slotPriorities") slotPriorities: slotPrioritiesList,
@as("fulfillmentCodeHook") fulfillmentCodeHook: fulfillmentCodeHookSettings,
@as("dialogCodeHook") dialogCodeHook: dialogCodeHookSettings,
@as("sampleUtterances") sampleUtterances: sampleUtterancesList,
@as("parentIntentSignature") parentIntentSignature: intentSignature,
@as("description") description: description,
@as("intentName") intentName: name,
@as("intentId") intentId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "UpdateIntentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeIntent = {
  type t;
  type request = {
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<botVersion>,
@as("botId") botId: option<id>,
@as("intentId") intentId: option<id>
}
  type response = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("localeId") localeId: localeId,
@as("botVersion") botVersion: draftBotVersion,
@as("botId") botId: id,
@as("kendraConfiguration") kendraConfiguration: kendraConfiguration,
@as("outputContexts") outputContexts: outputContextsList,
@as("inputContexts") inputContexts: inputContextsList,
@as("intentClosingSetting") intentClosingSetting: intentClosingSetting,
@as("intentConfirmationSetting") intentConfirmationSetting: intentConfirmationSetting,
@as("slotPriorities") slotPriorities: slotPrioritiesList,
@as("fulfillmentCodeHook") fulfillmentCodeHook: fulfillmentCodeHookSettings,
@as("dialogCodeHook") dialogCodeHook: dialogCodeHookSettings,
@as("sampleUtterances") sampleUtterances: sampleUtterancesList,
@as("parentIntentSignature") parentIntentSignature: intentSignature,
@as("description") description: description,
@as("intentName") intentName: name,
@as("intentId") intentId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DescribeIntentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateIntent = {
  type t;
  type request = {
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<draftBotVersion>,
@as("botId") botId: option<id>,
@as("kendraConfiguration") kendraConfiguration: kendraConfiguration,
@as("outputContexts") outputContexts: outputContextsList,
@as("inputContexts") inputContexts: inputContextsList,
@as("intentClosingSetting") intentClosingSetting: intentClosingSetting,
@as("intentConfirmationSetting") intentConfirmationSetting: intentConfirmationSetting,
@as("fulfillmentCodeHook") fulfillmentCodeHook: fulfillmentCodeHookSettings,
@as("dialogCodeHook") dialogCodeHook: dialogCodeHookSettings,
@as("sampleUtterances") sampleUtterances: sampleUtterancesList,
@as("parentIntentSignature") parentIntentSignature: intentSignature,
@as("description") description: description,
@as("intentName") intentName: option<name>
}
  type response = {
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("localeId") localeId: localeId,
@as("botVersion") botVersion: draftBotVersion,
@as("botId") botId: id,
@as("kendraConfiguration") kendraConfiguration: kendraConfiguration,
@as("outputContexts") outputContexts: outputContextsList,
@as("inputContexts") inputContexts: inputContextsList,
@as("intentClosingSetting") intentClosingSetting: intentClosingSetting,
@as("intentConfirmationSetting") intentConfirmationSetting: intentConfirmationSetting,
@as("fulfillmentCodeHook") fulfillmentCodeHook: fulfillmentCodeHookSettings,
@as("dialogCodeHook") dialogCodeHook: dialogCodeHookSettings,
@as("sampleUtterances") sampleUtterances: sampleUtterancesList,
@as("parentIntentSignature") parentIntentSignature: intentSignature,
@as("description") description: description,
@as("intentName") intentName: name,
@as("intentId") intentId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "CreateIntentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSlot = {
  type t;
  type request = {
@as("intentId") intentId: option<id>,
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<draftBotVersion>,
@as("botId") botId: option<id>,
@as("obfuscationSetting") obfuscationSetting: obfuscationSetting,
@as("valueElicitationSetting") valueElicitationSetting: option<slotValueElicitationSetting>,
@as("slotTypeId") slotTypeId: option<builtInOrCustomSlotTypeId>,
@as("description") description: description,
@as("slotName") slotName: option<name>,
@as("slotId") slotId: option<id>
}
  type response = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("intentId") intentId: id,
@as("localeId") localeId: localeId,
@as("botVersion") botVersion: draftBotVersion,
@as("botId") botId: id,
@as("obfuscationSetting") obfuscationSetting: obfuscationSetting,
@as("valueElicitationSetting") valueElicitationSetting: slotValueElicitationSetting,
@as("slotTypeId") slotTypeId: builtInOrCustomSlotTypeId,
@as("description") description: description,
@as("slotName") slotName: name,
@as("slotId") slotId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "UpdateSlotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSlots = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("filters") filters: slotFilters,
@as("sortBy") sortBy: slotSortBy,
@as("intentId") intentId: option<id>,
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<botVersion>,
@as("botId") botId: option<id>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("slotSummaries") slotSummaries: slotSummaryList,
@as("intentId") intentId: id,
@as("localeId") localeId: localeId,
@as("botVersion") botVersion: botVersion,
@as("botId") botId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "ListSlotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSlot = {
  type t;
  type request = {
@as("intentId") intentId: option<id>,
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<botVersion>,
@as("botId") botId: option<id>,
@as("slotId") slotId: option<id>
}
  type response = {
@as("lastUpdatedDateTime") lastUpdatedDateTime: amazonawsTimestamp,
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("intentId") intentId: id,
@as("localeId") localeId: localeId,
@as("botVersion") botVersion: botVersion,
@as("botId") botId: id,
@as("obfuscationSetting") obfuscationSetting: obfuscationSetting,
@as("valueElicitationSetting") valueElicitationSetting: slotValueElicitationSetting,
@as("slotTypeId") slotTypeId: builtInOrCustomSlotTypeId,
@as("description") description: description,
@as("slotName") slotName: name,
@as("slotId") slotId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "DescribeSlotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSlot = {
  type t;
  type request = {
@as("intentId") intentId: option<id>,
@as("localeId") localeId: option<localeId>,
@as("botVersion") botVersion: option<draftBotVersion>,
@as("botId") botId: option<id>,
@as("obfuscationSetting") obfuscationSetting: obfuscationSetting,
@as("valueElicitationSetting") valueElicitationSetting: option<slotValueElicitationSetting>,
@as("slotTypeId") slotTypeId: option<builtInOrCustomSlotTypeId>,
@as("description") description: description,
@as("slotName") slotName: option<name>
}
  type response = {
@as("creationDateTime") creationDateTime: amazonawsTimestamp,
@as("intentId") intentId: id,
@as("localeId") localeId: localeId,
@as("botVersion") botVersion: draftBotVersion,
@as("botId") botId: id,
@as("obfuscationSetting") obfuscationSetting: obfuscationSetting,
@as("valueElicitationSetting") valueElicitationSetting: slotValueElicitationSetting,
@as("slotTypeId") slotTypeId: builtInOrCustomSlotTypeId,
@as("description") description: description,
@as("slotName") slotName: name,
@as("slotId") slotId: id
}
  @module("@aws-sdk/client-lex") @new external new_: (Js.Promise.t<request>) => t = "CreateSlotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
