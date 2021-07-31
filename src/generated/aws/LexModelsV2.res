type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-lex") @new external createClient: unit => awsServiceClient = "LexModelsV2Client";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type voiceId = string
type value = string
type utterance = string
type timestamp_ = Js.Date.t;
type tagValue = string
type tagKey = string
type stillWaitingResponseTimeout = int
type stillWaitingResponseFrequency = int
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
type skipResourceInUseCheck = bool
type sessionTTL = int
type servicePrincipal = string
type ssmlmessageValue = string
type s3BucketArn = string
type roleArn = string
type revisionId = string
type retryAfterSeconds = int
type resourceCount = int
type regexPattern = string
type queryFilterString = string
type promptMaxRetries = int
type priorityValue = int
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
type maxResults = int
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
type contextTurnsToLive = int
type contextTimeToLiveInSeconds = int
type confidenceThreshold = float
type conditionValue = string
type conditionOperator = string
type conditionKey = string
type codeHookInterfaceVersion = string
type cloudWatchLogGroupArn = string
type childDirected = bool
type buttonValue = string
type buttonText = string
type builtInsMaxResults = int
type builtInSlotTypeSortAttribute = [@as("SlotTypeSignature") #SlotTypeSignature]
type builtInOrCustomSlotTypeId = string
type builtInIntentSortAttribute = [@as("IntentSignature") #IntentSignature]
type boxedBoolean = bool
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
type boolean_ = bool
type attachmentUrl = string
type attachmentTitle = string
type amazonResourceName = string
type voiceSettings = {
voiceId: voiceId
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type slotValueRegexFilter = {
pattern: regexPattern
}
type slotTypeSummary = {
lastUpdatedDateTime: option<timestamp_>,
  parentSlotTypeSignature: option<slotTypeSignature>,
  description: option<description>,
  slotTypeName: option<name>,
  slotTypeId: option<id>
}
type slotTypeSortBy = {
order: sortOrder,
  attribute: slotTypeSortAttribute
}
type slotSortBy = {
order: sortOrder,
  attribute: slotSortAttribute
}
type slotPriority = {
slotId: id,
  priority: priorityValue
}
type slotDefaultValue = {
defaultValue: slotDefaultValueString
}
type sentimentAnalysisSettings = {
detectSentiment: boolean_
}
type sampleValue = {
value: value
}
type sampleUtterance = {
utterance: utterance
}
type ssmlmessage = {
value: ssmlmessageValue
}
type s3BucketLogDestination = {
logPrefix: logPrefix,
  s3BucketArn: s3BucketArn,
  kmsKeyArn: option<kmsKeyArn>
}
type principal = {
arn: option<principalArn>,
  service: option<servicePrincipal>
}
type plainTextMessage = {
value: plainTextMessageValue
}
type outputContext = {
turnsToLive: contextTurnsToLive,
  timeToLiveInSeconds: contextTimeToLiveInSeconds,
  name: name
}
type operationList = array<operation>
type obfuscationSetting = {
obfuscationSettingType: obfuscationSettingType
}
type lambdaCodeHook = {
codeHookInterfaceVersion: codeHookInterfaceVersion,
  lambdaARN: lambdaARN
}
type kendraConfiguration = {
queryFilterString: option<queryFilterString>,
  queryFilterStringEnabled: option<boolean_>,
  kendraIndex: kendraIndexArn
}
type intentSortBy = {
order: sortOrder,
  attribute: intentSortAttribute
}
type inputContext = {
name: name
}
type importSummary = {
lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  mergeStrategy: option<mergeStrategy>,
  importStatus: option<importStatus>,
  importedResourceName: option<name>,
  importedResourceId: option<importedResourceId>,
  importId: option<id>
}
type importSortBy = {
order: sortOrder,
  attribute: importSortAttribute
}
type fulfillmentCodeHookSettings = {
enabled: boolean_
}
type filterValues = array<filterValue>
type failureReasons = array<failureReason>
type exportSortBy = {
order: sortOrder,
  attribute: exportSortAttribute
}
type dialogCodeHookSettings = {
enabled: boolean_
}
type dataPrivacy = {
childDirected: childDirected
}
type customPayload = {
value: customPayloadValue
}
type conditionKeyValueMap = Js.Dict.t<conditionValue>
type cloudWatchLogGroupLogDestination = {
logPrefix: logPrefix,
  cloudWatchLogGroupArn: cloudWatchLogGroupArn
}
type button = {
value: buttonValue,
  text: buttonText
}
type builtInSlotTypeSummary = {
description: option<description>,
  slotTypeSignature: option<slotTypeSignature>
}
type builtInSlotTypeSortBy = {
order: sortOrder,
  attribute: builtInSlotTypeSortAttribute
}
type builtInIntentSummary = {
description: option<description>,
  intentSignature: option<intentSignature>
}
type builtInIntentSortBy = {
order: sortOrder,
  attribute: builtInIntentSortAttribute
}
type botVersionSummary = {
creationDateTime: option<timestamp_>,
  botStatus: option<botStatus>,
  description: option<description>,
  botVersion: option<botVersion>,
  botName: option<name>
}
type botVersionSortBy = {
order: sortOrder,
  attribute: botVersionSortAttribute
}
type botVersionLocaleDetails = {
sourceBotVersion: botVersion
}
type botSummary = {
lastUpdatedDateTime: option<timestamp_>,
  latestBotVersion: option<numericalBotVersion>,
  botStatus: option<botStatus>,
  description: option<description>,
  botName: option<name>,
  botId: option<id>
}
type botSortBy = {
order: sortOrder,
  attribute: botSortAttribute
}
type botLocaleSummary = {
lastBuildSubmittedDateTime: option<timestamp_>,
  lastUpdatedDateTime: option<timestamp_>,
  botLocaleStatus: option<botLocaleStatus>,
  description: option<description>,
  localeName: option<localeName>,
  localeId: option<localeId>
}
type botLocaleSortBy = {
order: sortOrder,
  attribute: botLocaleSortAttribute
}
type botLocaleHistoryEvent = {
eventDate: timestamp_,
  event: botLocaleHistoryEventDescription
}
type botLocaleExportSpecification = {
localeId: localeId,
  botVersion: botVersion,
  botId: id
}
type botExportSpecification = {
botVersion: botVersion,
  botId: id
}
type botAliasSummary = {
lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  botAliasStatus: option<botAliasStatus>,
  botVersion: option<botVersion>,
  description: option<description>,
  botAliasName: option<name>,
  botAliasId: option<botAliasId>
}
type botAliasHistoryEvent = {
endDate: option<timestamp_>,
  startDate: option<timestamp_>,
  botVersion: option<botVersion>
}
type textLogDestination = {
cloudWatch: cloudWatchLogGroupLogDestination
}
type synonymList = array<sampleValue>
type slotValueSelectionSetting = {
regexFilter: option<slotValueRegexFilter>,
  resolutionStrategy: slotValueResolutionStrategy
}
type slotTypeSummaryList = array<slotTypeSummary>
type slotTypeFilter = {
operator: slotTypeFilterOperator,
  values: filterValues,
  name: slotTypeFilterName
}
type slotPrioritiesList = array<slotPriority>
type slotFilter = {
operator: slotFilterOperator,
  values: filterValues,
  name: slotFilterName
}
type slotDefaultValueList = array<slotDefaultValue>
type sampleUtterancesList = array<sampleUtterance>
type principalList = array<principal>
type outputContextsList = array<outputContext>
type intentFilter = {
operator: intentFilterOperator,
  values: filterValues,
  name: intentFilterName
}
type inputContextsList = array<inputContext>
type importSummaryList = array<importSummary>
type importFilter = {
operator: importFilterOperator,
  values: filterValues,
  name: importFilterName
}
type exportResourceSpecification = {
botLocaleExportSpecification: option<botLocaleExportSpecification>,
  botExportSpecification: option<botExportSpecification>
}
type exportFilter = {
operator: exportFilterOperator,
  values: filterValues,
  name: exportFilterName
}
type conditionMap = Js.Dict.t<conditionKeyValueMap>
type codeHookSpecification = {
lambdaCodeHook: lambdaCodeHook
}
type buttonsList = array<button>
type builtInSlotTypeSummaryList = array<builtInSlotTypeSummary>
type builtInIntentSummaryList = array<builtInIntentSummary>
type botVersionSummaryList = array<botVersionSummary>
type botVersionLocaleSpecification = Js.Dict.t<botVersionLocaleDetails>
type botSummaryList = array<botSummary>
type botLocaleSummaryList = array<botLocaleSummary>
type botLocaleImportSpecification = {
voiceSettings: option<voiceSettings>,
  nluIntentConfidenceThreshold: option<confidenceThreshold>,
  localeId: localeId,
  botVersion: draftBotVersion,
  botId: id
}
type botLocaleHistoryEventsList = array<botLocaleHistoryEvent>
type botLocaleFilter = {
operator: botLocaleFilterOperator,
  values: filterValues,
  name: botLocaleFilterName
}
type botImportSpecification = {
testBotAliasTags: option<tagMap>,
  botTags: option<tagMap>,
  idleSessionTTLInSeconds: option<sessionTTL>,
  dataPrivacy: dataPrivacy,
  roleArn: roleArn,
  botName: name
}
type botFilter = {
operator: botFilterOperator,
  values: filterValues,
  name: botFilterName
}
type botAliasSummaryList = array<botAliasSummary>
type botAliasHistoryEventsList = array<botAliasHistoryEvent>
type audioLogDestination = {
s3Bucket: s3BucketLogDestination
}
type textLogSetting = {
destination: textLogDestination,
  enabled: boolean_
}
type slotTypeValue = {
synonyms: option<synonymList>,
  sampleValue: option<sampleValue>
}
type slotTypeFilters = array<slotTypeFilter>
type slotFilters = array<slotFilter>
type slotDefaultValueSpecification = {
defaultValueList: slotDefaultValueList
}
type intentSummary = {
lastUpdatedDateTime: option<timestamp_>,
  outputContexts: option<outputContextsList>,
  inputContexts: option<inputContextsList>,
  parentIntentSignature: option<intentSignature>,
  description: option<description>,
  intentName: option<name>,
  intentId: option<id>
}
type intentFilters = array<intentFilter>
type importResourceSpecification = {
botLocaleImportSpecification: option<botLocaleImportSpecification>,
  botImportSpecification: option<botImportSpecification>
}
type importFilters = array<importFilter>
type imageResponseCard = {
buttons: option<buttonsList>,
  imageUrl: option<attachmentUrl>,
  subtitle: option<attachmentTitle>,
  title: attachmentTitle
}
type exportSummary = {
lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  exportStatus: option<exportStatus>,
  fileFormat: option<importExportFileFormat>,
  resourceSpecification: option<exportResourceSpecification>,
  exportId: option<id>
}
type exportFilters = array<exportFilter>
type botLocaleFilters = array<botLocaleFilter>
type botFilters = array<botFilter>
type botAliasLocaleSettings = {
codeHookSpecification: option<codeHookSpecification>,
  enabled: boolean_
}
type audioLogSetting = {
destination: audioLogDestination,
  enabled: boolean_
}
type textLogSettingsList = array<textLogSetting>
type slotTypeValues = array<slotTypeValue>
type message = {
imageResponseCard: option<imageResponseCard>,
  ssmlMessage: option<ssmlmessage>,
  customPayload: option<customPayload>,
  plainTextMessage: option<plainTextMessage>
}
type intentSummaryList = array<intentSummary>
type exportSummaryList = array<exportSummary>
type botAliasLocaleSettingsMap = Js.Dict.t<botAliasLocaleSettings>
type audioLogSettingsList = array<audioLogSetting>
type messageVariationsList = array<message>
type conversationLogSettings = {
audioLogSettings: option<audioLogSettingsList>,
  textLogSettings: option<textLogSettingsList>
}
type messageGroup = {
variations: option<messageVariationsList>,
  message: message
}
type messageGroupsList = array<messageGroup>
type stillWaitingResponseSpecification = {
allowInterrupt: option<boxedBoolean>,
  timeoutInSeconds: stillWaitingResponseTimeout,
  frequencyInSeconds: stillWaitingResponseFrequency,
  messageGroups: messageGroupsList
}
type responseSpecification = {
allowInterrupt: option<boxedBoolean>,
  messageGroups: messageGroupsList
}
type promptSpecification = {
allowInterrupt: option<boxedBoolean>,
  maxRetries: promptMaxRetries,
  messageGroups: messageGroupsList
}
type waitAndContinueSpecification = {
stillWaitingResponse: option<stillWaitingResponseSpecification>,
  continueResponse: responseSpecification,
  waitingResponse: responseSpecification
}
type slotSummary = {
lastUpdatedDateTime: option<timestamp_>,
  valueElicitationPromptSpecification: option<promptSpecification>,
  slotTypeId: option<builtInOrCustomSlotTypeId>,
  slotConstraint: option<slotConstraint>,
  description: option<description>,
  slotName: option<name>,
  slotId: option<id>
}
type intentConfirmationSetting = {
declinationResponse: responseSpecification,
  promptSpecification: promptSpecification
}
type intentClosingSetting = {
closingResponse: responseSpecification
}
type slotValueElicitationSetting = {
waitAndContinueSpecification: option<waitAndContinueSpecification>,
  sampleUtterances: option<sampleUtterancesList>,
  promptSpecification: option<promptSpecification>,
  slotConstraint: slotConstraint,
  defaultValueSpecification: option<slotDefaultValueSpecification>
}
type slotSummaryList = array<slotSummary>

module UpdateResourcePolicy = {
  type t;
  type request = {
expectedRevisionId: option<revisionId>,
  policy: policy,
  resourceArn: amazonResourceName
}
  type response = {
revisionId: option<revisionId>,
  resourceArn: option<amazonResourceName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "UpdateResourcePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeResourcePolicy = {
  type t;
  type request = {
resourceArn: amazonResourceName
}
  type response = {
revisionId: option<revisionId>,
  policy: option<policy>,
  resourceArn: option<amazonResourceName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DescribeResourcePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSlotType = {
  type t;
  type request = {
skipResourceInUseCheck: option<skipResourceInUseCheck>,
  localeId: localeId,
  botVersion: draftBotVersion,
  botId: id,
  slotTypeId: id
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteSlotTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteSlot = {
  type t;
  type request = {
intentId: id,
  localeId: localeId,
  botVersion: draftBotVersion,
  botId: id,
  slotId: id
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteSlotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteResourcePolicyStatement = {
  type t;
  type request = {
expectedRevisionId: option<revisionId>,
  statementId: name,
  resourceArn: amazonResourceName
}
  type response = {
revisionId: option<revisionId>,
  resourceArn: option<amazonResourceName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteResourcePolicyStatementCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteResourcePolicy = {
  type t;
  type request = {
expectedRevisionId: option<revisionId>,
  resourceArn: amazonResourceName
}
  type response = {
revisionId: option<revisionId>,
  resourceArn: option<amazonResourceName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteResourcePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteIntent = {
  type t;
  type request = {
localeId: localeId,
  botVersion: draftBotVersion,
  botId: id,
  intentId: id
}
  
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteIntentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteImport = {
  type t;
  type request = {
importId: id
}
  type response = {
importStatus: option<importStatus>,
  importId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteImportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteExport = {
  type t;
  type request = {
exportId: id
}
  type response = {
exportStatus: option<exportStatus>,
  exportId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteExportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteBotVersion = {
  type t;
  type request = {
skipResourceInUseCheck: option<skipResourceInUseCheck>,
  botVersion: numericalBotVersion,
  botId: id
}
  type response = {
botStatus: option<botStatus>,
  botVersion: option<numericalBotVersion>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteBotVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteBotLocale = {
  type t;
  type request = {
localeId: localeId,
  botVersion: draftBotVersion,
  botId: id
}
  type response = {
botLocaleStatus: option<botLocaleStatus>,
  localeId: option<localeId>,
  botVersion: option<draftBotVersion>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteBotLocaleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteBotAlias = {
  type t;
  type request = {
skipResourceInUseCheck: option<skipResourceInUseCheck>,
  botId: id,
  botAliasId: botAliasId
}
  type response = {
botAliasStatus: option<botAliasStatus>,
  botId: option<id>,
  botAliasId: option<botAliasId>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteBotAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteBot = {
  type t;
  type request = {
skipResourceInUseCheck: option<skipResourceInUseCheck>,
  botId: id
}
  type response = {
botStatus: option<botStatus>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DeleteBotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateUploadUrl = {
  type t;
  type request = unit
  type response = {
uploadUrl: option<presignedS3Url>,
  importId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "CreateUploadUrlCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateResourcePolicy = {
  type t;
  type request = {
policy: policy,
  resourceArn: amazonResourceName
}
  type response = {
revisionId: option<revisionId>,
  resourceArn: option<amazonResourceName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "CreateResourcePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BuildBotLocale = {
  type t;
  type request = {
localeId: localeId,
  botVersion: draftBotVersion,
  botId: id
}
  type response = {
lastBuildSubmittedDateTime: option<timestamp_>,
  botLocaleStatus: option<botLocaleStatus>,
  localeId: option<localeId>,
  botVersion: option<draftBotVersion>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "BuildBotLocaleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateBotLocale = {
  type t;
  type request = {
voiceSettings: option<voiceSettings>,
  nluIntentConfidenceThreshold: confidenceThreshold,
  description: option<description>,
  localeId: localeId,
  botVersion: draftBotVersion,
  botId: id
}
  type response = {
lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  failureReasons: option<failureReasons>,
  botLocaleStatus: option<botLocaleStatus>,
  voiceSettings: option<voiceSettings>,
  nluIntentConfidenceThreshold: option<confidenceThreshold>,
  description: option<description>,
  localeName: option<localeName>,
  localeId: option<localeId>,
  botVersion: option<draftBotVersion>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "UpdateBotLocaleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateBot = {
  type t;
  type request = {
idleSessionTTLInSeconds: sessionTTL,
  dataPrivacy: dataPrivacy,
  roleArn: roleArn,
  description: option<description>,
  botName: name,
  botId: id
}
  type response = {
lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  botStatus: option<botStatus>,
  idleSessionTTLInSeconds: option<sessionTTL>,
  dataPrivacy: option<dataPrivacy>,
  roleArn: option<roleArn>,
  description: option<description>,
  botName: option<name>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "UpdateBotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
  resourceARN: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagMap,
  resourceARN: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceARN: amazonResourceName
}
  type response = {
tags: option<tagMap>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBotVersion = {
  type t;
  type request = {
botVersion: numericalBotVersion,
  botId: id
}
  type response = {
creationDateTime: option<timestamp_>,
  failureReasons: option<failureReasons>,
  botStatus: option<botStatus>,
  idleSessionTTLInSeconds: option<sessionTTL>,
  dataPrivacy: option<dataPrivacy>,
  roleArn: option<roleArn>,
  description: option<description>,
  botVersion: option<numericalBotVersion>,
  botName: option<name>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DescribeBotVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBot = {
  type t;
  type request = {
botId: id
}
  type response = {
lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  botStatus: option<botStatus>,
  idleSessionTTLInSeconds: option<sessionTTL>,
  dataPrivacy: option<dataPrivacy>,
  roleArn: option<roleArn>,
  description: option<description>,
  botName: option<name>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DescribeBotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBotLocale = {
  type t;
  type request = {
voiceSettings: option<voiceSettings>,
  nluIntentConfidenceThreshold: confidenceThreshold,
  description: option<description>,
  localeId: localeId,
  botVersion: draftBotVersion,
  botId: id
}
  type response = {
creationDateTime: option<timestamp_>,
  botLocaleStatus: option<botLocaleStatus>,
  voiceSettings: option<voiceSettings>,
  nluIntentConfidenceThreshold: option<confidenceThreshold>,
  description: option<description>,
  localeId: option<localeId>,
  localeName: option<localeName>,
  botVersion: option<draftBotVersion>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "CreateBotLocaleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBot = {
  type t;
  type request = {
testBotAliasTags: option<tagMap>,
  botTags: option<tagMap>,
  idleSessionTTLInSeconds: sessionTTL,
  dataPrivacy: dataPrivacy,
  roleArn: roleArn,
  description: option<description>,
  botName: name
}
  type response = {
testBotAliasTags: option<tagMap>,
  botTags: option<tagMap>,
  creationDateTime: option<timestamp_>,
  botStatus: option<botStatus>,
  idleSessionTTLInSeconds: option<sessionTTL>,
  dataPrivacy: option<dataPrivacy>,
  roleArn: option<roleArn>,
  description: option<description>,
  botName: option<name>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "CreateBotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateExport = {
  type t;
  type request = {
filePassword: option<importExportFilePassword>,
  exportId: id
}
  type response = {
lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  exportStatus: option<exportStatus>,
  fileFormat: option<importExportFileFormat>,
  resourceSpecification: option<exportResourceSpecification>,
  exportId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "UpdateExportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBuiltInSlotTypes = {
  type t;
  type request = {
nextToken: option<nextToken>,
  maxResults: option<builtInsMaxResults>,
  sortBy: option<builtInSlotTypeSortBy>,
  localeId: localeId
}
  type response = {
localeId: option<localeId>,
  nextToken: option<nextToken>,
  builtInSlotTypeSummaries: option<builtInSlotTypeSummaryList>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "ListBuiltInSlotTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBuiltInIntents = {
  type t;
  type request = {
nextToken: option<nextToken>,
  maxResults: option<builtInsMaxResults>,
  sortBy: option<builtInIntentSortBy>,
  localeId: localeId
}
  type response = {
localeId: option<localeId>,
  nextToken: option<nextToken>,
  builtInIntentSummaries: option<builtInIntentSummaryList>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "ListBuiltInIntentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBotVersions = {
  type t;
  type request = {
nextToken: option<nextToken>,
  maxResults: option<maxResults>,
  sortBy: option<botVersionSortBy>,
  botId: id
}
  type response = {
nextToken: option<nextToken>,
  botVersionSummaries: option<botVersionSummaryList>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "ListBotVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBotAliases = {
  type t;
  type request = {
nextToken: option<nextToken>,
  maxResults: option<maxResults>,
  botId: id
}
  type response = {
botId: option<id>,
  nextToken: option<nextToken>,
  botAliasSummaries: option<botAliasSummaryList>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "ListBotAliasesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeExport = {
  type t;
  type request = {
exportId: id
}
  type response = {
lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  downloadUrl: option<presignedS3Url>,
  failureReasons: option<failureReasons>,
  exportStatus: option<exportStatus>,
  fileFormat: option<importExportFileFormat>,
  resourceSpecification: option<exportResourceSpecification>,
  exportId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DescribeExportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBotLocale = {
  type t;
  type request = {
localeId: localeId,
  botVersion: botVersion,
  botId: id
}
  type response = {
botLocaleHistoryEvents: option<botLocaleHistoryEventsList>,
  lastBuildSubmittedDateTime: option<timestamp_>,
  lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  failureReasons: option<failureReasons>,
  botLocaleStatus: option<botLocaleStatus>,
  slotTypesCount: option<resourceCount>,
  intentsCount: option<resourceCount>,
  voiceSettings: option<voiceSettings>,
  nluIntentConfidenceThreshold: option<confidenceThreshold>,
  description: option<description>,
  localeName: option<localeName>,
  localeId: option<localeId>,
  botVersion: option<botVersion>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DescribeBotLocaleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateResourcePolicyStatement = {
  type t;
  type request = {
expectedRevisionId: option<revisionId>,
  condition: option<conditionMap>,
  action: operationList,
  principal: principalList,
  effect: effect,
  statementId: name,
  resourceArn: amazonResourceName
}
  type response = {
revisionId: option<revisionId>,
  resourceArn: option<amazonResourceName>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "CreateResourcePolicyStatementCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateExport = {
  type t;
  type request = {
filePassword: option<importExportFilePassword>,
  fileFormat: importExportFileFormat,
  resourceSpecification: exportResourceSpecification
}
  type response = {
creationDateTime: option<timestamp_>,
  exportStatus: option<exportStatus>,
  fileFormat: option<importExportFileFormat>,
  resourceSpecification: option<exportResourceSpecification>,
  exportId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "CreateExportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBotVersion = {
  type t;
  type request = {
botVersionLocaleSpecification: botVersionLocaleSpecification,
  description: option<description>,
  botId: id
}
  type response = {
creationDateTime: option<timestamp_>,
  botStatus: option<botStatus>,
  botVersionLocaleSpecification: option<botVersionLocaleSpecification>,
  botVersion: option<numericalBotVersion>,
  description: option<description>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "CreateBotVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartImport = {
  type t;
  type request = {
filePassword: option<importExportFilePassword>,
  mergeStrategy: mergeStrategy,
  resourceSpecification: importResourceSpecification,
  importId: id
}
  type response = {
creationDateTime: option<timestamp_>,
  importStatus: option<importStatus>,
  mergeStrategy: option<mergeStrategy>,
  resourceSpecification: option<importResourceSpecification>,
  importId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "StartImportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSlotTypes = {
  type t;
  type request = {
nextToken: option<nextToken>,
  maxResults: option<maxResults>,
  filters: option<slotTypeFilters>,
  sortBy: option<slotTypeSortBy>,
  localeId: localeId,
  botVersion: botVersion,
  botId: id
}
  type response = {
nextToken: option<nextToken>,
  slotTypeSummaries: option<slotTypeSummaryList>,
  localeId: option<localeId>,
  botVersion: option<botVersion>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "ListSlotTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListImports = {
  type t;
  type request = {
nextToken: option<nextToken>,
  maxResults: option<maxResults>,
  filters: option<importFilters>,
  sortBy: option<importSortBy>,
  botVersion: option<draftBotVersion>,
  botId: option<id>
}
  type response = {
nextToken: option<nextToken>,
  importSummaries: option<importSummaryList>,
  botVersion: option<draftBotVersion>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "ListImportsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBots = {
  type t;
  type request = {
nextToken: option<nextToken>,
  maxResults: option<maxResults>,
  filters: option<botFilters>,
  sortBy: option<botSortBy>
}
  type response = {
nextToken: option<nextToken>,
  botSummaries: option<botSummaryList>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "ListBotsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBotLocales = {
  type t;
  type request = {
nextToken: option<nextToken>,
  maxResults: option<maxResults>,
  filters: option<botLocaleFilters>,
  sortBy: option<botLocaleSortBy>,
  botVersion: botVersion,
  botId: id
}
  type response = {
botLocaleSummaries: option<botLocaleSummaryList>,
  nextToken: option<nextToken>,
  botVersion: option<botVersion>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "ListBotLocalesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeImport = {
  type t;
  type request = {
importId: id
}
  type response = {
lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  failureReasons: option<failureReasons>,
  importStatus: option<importStatus>,
  mergeStrategy: option<mergeStrategy>,
  importedResourceName: option<name>,
  importedResourceId: option<importedResourceId>,
  resourceSpecification: option<importResourceSpecification>,
  importId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DescribeImportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSlotType = {
  type t;
  type request = {
localeId: localeId,
  botVersion: draftBotVersion,
  botId: id,
  parentSlotTypeSignature: option<slotTypeSignature>,
  valueSelectionSetting: slotValueSelectionSetting,
  slotTypeValues: option<slotTypeValues>,
  description: option<description>,
  slotTypeName: name,
  slotTypeId: id
}
  type response = {
lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  localeId: option<localeId>,
  botVersion: option<draftBotVersion>,
  botId: option<id>,
  parentSlotTypeSignature: option<slotTypeSignature>,
  valueSelectionSetting: option<slotValueSelectionSetting>,
  slotTypeValues: option<slotTypeValues>,
  description: option<description>,
  slotTypeName: option<name>,
  slotTypeId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "UpdateSlotTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListIntents = {
  type t;
  type request = {
nextToken: option<nextToken>,
  maxResults: option<maxResults>,
  filters: option<intentFilters>,
  sortBy: option<intentSortBy>,
  localeId: localeId,
  botVersion: botVersion,
  botId: id
}
  type response = {
nextToken: option<nextToken>,
  intentSummaries: option<intentSummaryList>,
  localeId: option<localeId>,
  botVersion: option<botVersion>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "ListIntentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListExports = {
  type t;
  type request = {
nextToken: option<nextToken>,
  maxResults: option<maxResults>,
  filters: option<exportFilters>,
  sortBy: option<exportSortBy>,
  botVersion: option<botVersion>,
  botId: option<id>
}
  type response = {
nextToken: option<nextToken>,
  exportSummaries: option<exportSummaryList>,
  botVersion: option<botVersion>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "ListExportsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSlotType = {
  type t;
  type request = {
localeId: localeId,
  botVersion: botVersion,
  botId: id,
  slotTypeId: id
}
  type response = {
lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  localeId: option<localeId>,
  botVersion: option<botVersion>,
  botId: option<id>,
  parentSlotTypeSignature: option<slotTypeSignature>,
  valueSelectionSetting: option<slotValueSelectionSetting>,
  slotTypeValues: option<slotTypeValues>,
  description: option<description>,
  slotTypeName: option<name>,
  slotTypeId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DescribeSlotTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSlotType = {
  type t;
  type request = {
localeId: localeId,
  botVersion: draftBotVersion,
  botId: id,
  parentSlotTypeSignature: option<slotTypeSignature>,
  valueSelectionSetting: slotValueSelectionSetting,
  slotTypeValues: option<slotTypeValues>,
  description: option<description>,
  slotTypeName: name
}
  type response = {
creationDateTime: option<timestamp_>,
  localeId: option<localeId>,
  botVersion: option<draftBotVersion>,
  botId: option<id>,
  parentSlotTypeSignature: option<slotTypeSignature>,
  valueSelectionSetting: option<slotValueSelectionSetting>,
  slotTypeValues: option<slotTypeValues>,
  description: option<description>,
  slotTypeName: option<name>,
  slotTypeId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "CreateSlotTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateBotAlias = {
  type t;
  type request = {
botId: id,
  sentimentAnalysisSettings: option<sentimentAnalysisSettings>,
  conversationLogSettings: option<conversationLogSettings>,
  botAliasLocaleSettings: option<botAliasLocaleSettingsMap>,
  botVersion: option<botVersion>,
  description: option<description>,
  botAliasName: name,
  botAliasId: botAliasId
}
  type response = {
lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  botId: option<id>,
  botAliasStatus: option<botAliasStatus>,
  sentimentAnalysisSettings: option<sentimentAnalysisSettings>,
  conversationLogSettings: option<conversationLogSettings>,
  botAliasLocaleSettings: option<botAliasLocaleSettingsMap>,
  botVersion: option<botVersion>,
  description: option<description>,
  botAliasName: option<name>,
  botAliasId: option<botAliasId>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "UpdateBotAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBotAlias = {
  type t;
  type request = {
botId: id,
  botAliasId: botAliasId
}
  type response = {
lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  botId: option<id>,
  botAliasStatus: option<botAliasStatus>,
  botAliasHistoryEvents: option<botAliasHistoryEventsList>,
  sentimentAnalysisSettings: option<sentimentAnalysisSettings>,
  conversationLogSettings: option<conversationLogSettings>,
  botAliasLocaleSettings: option<botAliasLocaleSettingsMap>,
  botVersion: option<botVersion>,
  description: option<description>,
  botAliasName: option<name>,
  botAliasId: option<botAliasId>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DescribeBotAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBotAlias = {
  type t;
  type request = {
tags: option<tagMap>,
  botId: id,
  sentimentAnalysisSettings: option<sentimentAnalysisSettings>,
  conversationLogSettings: option<conversationLogSettings>,
  botAliasLocaleSettings: option<botAliasLocaleSettingsMap>,
  botVersion: option<numericalBotVersion>,
  description: option<description>,
  botAliasName: name
}
  type response = {
tags: option<tagMap>,
  creationDateTime: option<timestamp_>,
  botId: option<id>,
  botAliasStatus: option<botAliasStatus>,
  sentimentAnalysisSettings: option<sentimentAnalysisSettings>,
  conversationLogSettings: option<conversationLogSettings>,
  botAliasLocaleSettings: option<botAliasLocaleSettingsMap>,
  botVersion: option<numericalBotVersion>,
  description: option<description>,
  botAliasName: option<name>,
  botAliasId: option<botAliasId>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "CreateBotAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateIntent = {
  type t;
  type request = {
localeId: localeId,
  botVersion: draftBotVersion,
  botId: id,
  kendraConfiguration: option<kendraConfiguration>,
  outputContexts: option<outputContextsList>,
  inputContexts: option<inputContextsList>,
  intentClosingSetting: option<intentClosingSetting>,
  intentConfirmationSetting: option<intentConfirmationSetting>,
  slotPriorities: option<slotPrioritiesList>,
  fulfillmentCodeHook: option<fulfillmentCodeHookSettings>,
  dialogCodeHook: option<dialogCodeHookSettings>,
  sampleUtterances: option<sampleUtterancesList>,
  parentIntentSignature: option<intentSignature>,
  description: option<description>,
  intentName: name,
  intentId: id
}
  type response = {
lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  localeId: option<localeId>,
  botVersion: option<draftBotVersion>,
  botId: option<id>,
  kendraConfiguration: option<kendraConfiguration>,
  outputContexts: option<outputContextsList>,
  inputContexts: option<inputContextsList>,
  intentClosingSetting: option<intentClosingSetting>,
  intentConfirmationSetting: option<intentConfirmationSetting>,
  slotPriorities: option<slotPrioritiesList>,
  fulfillmentCodeHook: option<fulfillmentCodeHookSettings>,
  dialogCodeHook: option<dialogCodeHookSettings>,
  sampleUtterances: option<sampleUtterancesList>,
  parentIntentSignature: option<intentSignature>,
  description: option<description>,
  intentName: option<name>,
  intentId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "UpdateIntentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeIntent = {
  type t;
  type request = {
localeId: localeId,
  botVersion: botVersion,
  botId: id,
  intentId: id
}
  type response = {
lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  localeId: option<localeId>,
  botVersion: option<draftBotVersion>,
  botId: option<id>,
  kendraConfiguration: option<kendraConfiguration>,
  outputContexts: option<outputContextsList>,
  inputContexts: option<inputContextsList>,
  intentClosingSetting: option<intentClosingSetting>,
  intentConfirmationSetting: option<intentConfirmationSetting>,
  slotPriorities: option<slotPrioritiesList>,
  fulfillmentCodeHook: option<fulfillmentCodeHookSettings>,
  dialogCodeHook: option<dialogCodeHookSettings>,
  sampleUtterances: option<sampleUtterancesList>,
  parentIntentSignature: option<intentSignature>,
  description: option<description>,
  intentName: option<name>,
  intentId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DescribeIntentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateIntent = {
  type t;
  type request = {
localeId: localeId,
  botVersion: draftBotVersion,
  botId: id,
  kendraConfiguration: option<kendraConfiguration>,
  outputContexts: option<outputContextsList>,
  inputContexts: option<inputContextsList>,
  intentClosingSetting: option<intentClosingSetting>,
  intentConfirmationSetting: option<intentConfirmationSetting>,
  fulfillmentCodeHook: option<fulfillmentCodeHookSettings>,
  dialogCodeHook: option<dialogCodeHookSettings>,
  sampleUtterances: option<sampleUtterancesList>,
  parentIntentSignature: option<intentSignature>,
  description: option<description>,
  intentName: name
}
  type response = {
creationDateTime: option<timestamp_>,
  localeId: option<localeId>,
  botVersion: option<draftBotVersion>,
  botId: option<id>,
  kendraConfiguration: option<kendraConfiguration>,
  outputContexts: option<outputContextsList>,
  inputContexts: option<inputContextsList>,
  intentClosingSetting: option<intentClosingSetting>,
  intentConfirmationSetting: option<intentConfirmationSetting>,
  fulfillmentCodeHook: option<fulfillmentCodeHookSettings>,
  dialogCodeHook: option<dialogCodeHookSettings>,
  sampleUtterances: option<sampleUtterancesList>,
  parentIntentSignature: option<intentSignature>,
  description: option<description>,
  intentName: option<name>,
  intentId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "CreateIntentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSlot = {
  type t;
  type request = {
intentId: id,
  localeId: localeId,
  botVersion: draftBotVersion,
  botId: id,
  obfuscationSetting: option<obfuscationSetting>,
  valueElicitationSetting: slotValueElicitationSetting,
  slotTypeId: builtInOrCustomSlotTypeId,
  description: option<description>,
  slotName: name,
  slotId: id
}
  type response = {
lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  intentId: option<id>,
  localeId: option<localeId>,
  botVersion: option<draftBotVersion>,
  botId: option<id>,
  obfuscationSetting: option<obfuscationSetting>,
  valueElicitationSetting: option<slotValueElicitationSetting>,
  slotTypeId: option<builtInOrCustomSlotTypeId>,
  description: option<description>,
  slotName: option<name>,
  slotId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "UpdateSlotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSlots = {
  type t;
  type request = {
nextToken: option<nextToken>,
  maxResults: option<maxResults>,
  filters: option<slotFilters>,
  sortBy: option<slotSortBy>,
  intentId: id,
  localeId: localeId,
  botVersion: botVersion,
  botId: id
}
  type response = {
nextToken: option<nextToken>,
  slotSummaries: option<slotSummaryList>,
  intentId: option<id>,
  localeId: option<localeId>,
  botVersion: option<botVersion>,
  botId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "ListSlotsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSlot = {
  type t;
  type request = {
intentId: id,
  localeId: localeId,
  botVersion: botVersion,
  botId: id,
  slotId: id
}
  type response = {
lastUpdatedDateTime: option<timestamp_>,
  creationDateTime: option<timestamp_>,
  intentId: option<id>,
  localeId: option<localeId>,
  botVersion: option<botVersion>,
  botId: option<id>,
  obfuscationSetting: option<obfuscationSetting>,
  valueElicitationSetting: option<slotValueElicitationSetting>,
  slotTypeId: option<builtInOrCustomSlotTypeId>,
  description: option<description>,
  slotName: option<name>,
  slotId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "DescribeSlotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSlot = {
  type t;
  type request = {
intentId: id,
  localeId: localeId,
  botVersion: draftBotVersion,
  botId: id,
  obfuscationSetting: option<obfuscationSetting>,
  valueElicitationSetting: slotValueElicitationSetting,
  slotTypeId: builtInOrCustomSlotTypeId,
  description: option<description>,
  slotName: name
}
  type response = {
creationDateTime: option<timestamp_>,
  intentId: option<id>,
  localeId: option<localeId>,
  botVersion: option<draftBotVersion>,
  botId: option<id>,
  obfuscationSetting: option<obfuscationSetting>,
  valueElicitationSetting: option<slotValueElicitationSetting>,
  slotTypeId: option<builtInOrCustomSlotTypeId>,
  description: option<description>,
  slotName: option<name>,
  slotId: option<id>
}
  @module("@aws-sdk/client-lex") @new external new_: (request) => t = "CreateSlotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
