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
external createClient: unit => awsServiceClient = "LexModelsV2Client"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type voiceId = string
type value = string
type utterance = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type stillWaitingResponseTimeout = int
type stillWaitingResponseFrequency = int
type sortOrder = [@as("Descending") #Descending | @as("Ascending") #Ascending]
type slotValueResolutionStrategy = [
  | @as("TopResolution") #TopResolution
  | @as("OriginalValue") #OriginalValue
]
type slotTypeSortAttribute = [
  | @as("LastUpdatedDateTime") #LastUpdatedDateTime
  | @as("SlotTypeName") #SlotTypeName
]
type slotTypeSignature = string
type slotTypeFilterOperator = [@as("EQ") #EQ | @as("CO") #CO]
type slotTypeFilterName = [@as("SlotTypeName") #SlotTypeName]
type slotSortAttribute = [
  | @as("LastUpdatedDateTime") #LastUpdatedDateTime
  | @as("SlotName") #SlotName
]
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
type intentSortAttribute = [
  | @as("LastUpdatedDateTime") #LastUpdatedDateTime
  | @as("IntentName") #IntentName
]
type intentSignature = string
type intentFilterOperator = [@as("EQ") #EQ | @as("CO") #CO]
type intentFilterName = [@as("IntentName") #IntentName]
type importedResourceId = string
type importStatus = [
  | @as("Deleting") #Deleting
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("InProgress") #InProgress
]
type importSortAttribute = [@as("LastUpdatedDateTime") #LastUpdatedDateTime]
type importFilterOperator = [@as("EQ") #EQ | @as("CO") #CO]
type importFilterName = [@as("ImportResourceType") #ImportResourceType]
type importExportFilePassword = string
type importExportFileFormat = [@as("LexJson") #LexJson]
type id = string
type filterValue = string
type failureReason = string
type exportStatus = [
  | @as("Deleting") #Deleting
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("InProgress") #InProgress
]
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
type botStatus = [
  | @as("Importing") #Importing
  | @as("Versioning") #Versioning
  | @as("Failed") #Failed
  | @as("Deleting") #Deleting
  | @as("Inactive") #Inactive
  | @as("Available") #Available
  | @as("Creating") #Creating
]
type botSortAttribute = [@as("BotName") #BotName]
type botLocaleStatus = [
  | @as("Importing") #Importing
  | @as("NotBuilt") #NotBuilt
  | @as("Deleting") #Deleting
  | @as("Failed") #Failed
  | @as("ReadyExpressTesting") #ReadyExpressTesting
  | @as("Built") #Built
  | @as("Building") #Building
  | @as("Creating") #Creating
]
type botLocaleSortAttribute = [@as("BotLocaleName") #BotLocaleName]
type botLocaleHistoryEventDescription = string
type botLocaleFilterOperator = [@as("EQ") #EQ | @as("CO") #CO]
type botLocaleFilterName = [@as("BotLocaleName") #BotLocaleName]
type botFilterOperator = [@as("EQ") #EQ | @as("CO") #CO]
type botFilterName = [@as("BotName") #BotName]
type botAliasStatus = [
  | @as("Failed") #Failed
  | @as("Deleting") #Deleting
  | @as("Available") #Available
  | @as("Creating") #Creating
]
type botAliasId = string
type boolean_ = bool
type attachmentUrl = string
type attachmentTitle = string
type amazonResourceName = string
@ocaml.doc("<p>Defines settings for using an Amazon Polly voice to communicate with a
         user.</p>")
type voiceSettings = {
  @ocaml.doc("<p>The identifier of the Amazon Polly voice to use.</p>") voiceId: voiceId,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Provides a regular expression used to validate the value of a
         slot.</p>")
type slotValueRegexFilter = {
  @ocaml.doc("<p>A regular expression used to validate the value of a slot.</p>
         <p> Use a standard regular expression. Amazon Lex supports the
         following characters in the regular expression: </p>
         <ul>
            <li>
               <p>A-Z, a-z</p>
            </li>
            <li>
               <p>0-9</p>
            </li>
            <li>
               <p>Unicode characters (\"\\ u<Unicode>\")</p>
            </li>
         </ul>
         <p> Represent Unicode characters with four digits, for example \"\\u0041\"
         or \"\\u005A\". </p>
         <p> The following regular expression operators are not supported: </p>
         <ul>
            <li>
               <p>Infinite repeaters: *, +, or {x,} with no upper bound.</p>
            </li>
            <li>
               <p>Wild card (.)</p>
            </li>
         </ul>")
  pattern: regexPattern,
}
@ocaml.doc("<p>Provides summary information about a slot type.</p>")
type slotTypeSummary = {
  @ocaml.doc("<p>A timestamp of the date and time that the slot type was last
         updated.</p>")
  lastUpdatedDateTime: option<timestamp_>,
  @ocaml.doc("<p>If the slot type is derived from a built-on slot type, the name of
         the parent slot type.</p>")
  parentSlotTypeSignature: option<slotTypeSignature>,
  @ocaml.doc("<p>The description of the slot type.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the slot type.</p>") slotTypeName: option<name>,
  @ocaml.doc("<p>The unique identifier assigned to the slot type.</p>") slotTypeId: option<id>,
}
@ocaml.doc("<p>Specifies attributes for sorting a list of slot types.</p>")
type slotTypeSortBy = {
  @ocaml.doc("<p>The order to sort the list. You can say ascending or
         descending.</p>")
  order: sortOrder,
  @ocaml.doc("<p>The attribute to use to sort the list of slot types.</p>")
  attribute: slotTypeSortAttribute,
}
@ocaml.doc("<p>Specifies attributes for sorting a list of bots.</p>")
type slotSortBy = {
  @ocaml.doc("<p>The order to sort the list. You can choose ascending or
         descending.</p>")
  order: sortOrder,
  @ocaml.doc("<p>The attribute to use to sort the list.</p>") attribute: slotSortAttribute,
}
@ocaml.doc("<p>Sets the priority that Amazon Lex should use when eliciting slot values
         from a user.</p>")
type slotPriority = {
  @ocaml.doc("<p>The unique identifier of the slot.</p>") slotId: id,
  @ocaml.doc("<p>The priority that a slot should be elicited.</p>") priority: priorityValue,
}
@ocaml.doc("<p>Specifies the default value to use when a user doesn't provide a
         value for a slot.</p>")
type slotDefaultValue = {
  @ocaml.doc("<p>The default value to use when a user doesn't provide a value for a
         slot.</p>")
  defaultValue: slotDefaultValueString,
}
@ocaml.doc("<p>Determines whether Amazon Lex will use Amazon Comprehend to detect the sentiment of
         user utterances.</p>")
type sentimentAnalysisSettings = {
  @ocaml.doc("<p>Sets whether Amazon Lex uses Amazon Comprehend to detect the sentiment of user
         utterances.</p>")
  detectSentiment: boolean_,
}
@ocaml.doc("<p>Defines one of the values for a slot type.</p>")
type sampleValue = {@ocaml.doc("<p>The value that can be used for a slot type.</p>") value: value}
@ocaml.doc("<p>A sample utterance that invokes an intent or respond to a slot
         elicitation prompt.</p>")
type sampleUtterance = {
  @ocaml.doc("<p>The sample utterance that Amazon Lex uses to build its machine-learning
         model to recognize intents.</p>")
  utterance: utterance,
}
@ocaml.doc("<p>Defines a Speech Synthesis Markup Language (SSML) prompt.</p>")
type ssmlmessage = {
  @ocaml.doc("<p>The SSML text that defines the prompt.</p>") value: ssmlmessageValue,
}
@ocaml.doc("<p>Specifies an Amazon S3 bucket for logging audio conversations</p>")
type s3BucketLogDestination = {
  @ocaml.doc("<p>The S3 prefix to assign to audio log files.</p>") logPrefix: logPrefix,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an Amazon S3 bucket where audio
         log files are stored.</p>")
  s3BucketArn: s3BucketArn,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an AWS Key Management Service
         (KMS) key for encrypting audio log files stored in an S3 bucket.</p>")
  kmsKeyArn: option<kmsKeyArn>,
}
@ocaml.doc("<p>The IAM principal that you allowing or denying access to an Amazon Lex
         action. You must provide a <code>service</code> or an <code>arn</code>,
         but not both in the same statement. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html\"> AWS JSON policy elements: Principal </a>.</p>")
type principal = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the principal.</p>") arn: option<principalArn>,
  @ocaml.doc("<p>The name of the AWS service that should allowed or denied access to
         an Amazon Lex action.</p>")
  service: option<servicePrincipal>,
}
@ocaml.doc("<p>Defines an ASCII text message to send to the user.</p>")
type plainTextMessage = {
  @ocaml.doc("<p>The message to send to the user.</p>") value: plainTextMessageValue,
}
@ocaml.doc("<p>Describes a session context that is activated when an intent is
         fulfilled.</p>")
type outputContext = {
  @ocaml.doc("<p>The number of conversation turns that the output context should
         remain active. The number of turns is counted from the first time that
         the context is sent to the user.</p>")
  turnsToLive: contextTurnsToLive,
  @ocaml.doc("<p>The amount of time, in seconds, that the output context should
         remain active. The time is figured from the first time the context is
         sent to the user.</p>")
  timeToLiveInSeconds: contextTimeToLiveInSeconds,
  @ocaml.doc("<p>The name of the output context.</p>") name: name,
}
type operationList = array<operation>
@ocaml.doc("<p>Determines whether Amazon Lex obscures slot values in conversation logs.
      </p>")
type obfuscationSetting = {
  @ocaml.doc("<p>Value that determines whether Amazon Lex obscures slot values in
         conversation logs. The default is to obscure the values.</p>")
  obfuscationSettingType: obfuscationSettingType,
}
@ocaml.doc("<p>Specifies a Lambda function that verifies requests to a bot or
         fulfilles the user's request to a bot.</p>")
type lambdaCodeHook = {
  @ocaml.doc("<p>The version of the request-response that you want Amazon Lex to use to
         invoke your Lambda function.</p>")
  codeHookInterfaceVersion: codeHookInterfaceVersion,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Lambda function.</p>") lambdaARN: lambdaARN,
}
@ocaml.doc("<p>Provides configuration information for the AMAZON.KendraSearchIntent
         intent. When you use this intent, Amazon Lex searches the specified Amazon Kendra
         index and returns documents from the index that match the user's
         utterance.</p>")
type kendraConfiguration = {
  @ocaml.doc("<p>A query filter that Amazon Lex sends to Amazon Kendra to filter the response from
         a query. The filter is in the format defined by Amazon Kendra. For more
         information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/filtering.html\">Filtering
         queries</a>.</p>")
  queryFilterString: option<queryFilterString>,
  @ocaml.doc("<p>Determines whether the AMAZON.KendraSearchIntent intent uses a
         custom query string to query the Amazon Kendra index.</p>")
  queryFilterStringEnabled: option<boolean_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Kendra index that you want the
         AMAZON.KendraSearchIntent intent to search. The index must be in the
         same account and Region as the Amazon Lex bot.</p>")
  kendraIndex: kendraIndexArn,
}
@ocaml.doc("<p>Specifies attributes for sorting a list of intents.</p>")
type intentSortBy = {
  @ocaml.doc("<p>The order to sort the list. You can choose ascending or
         descending.</p>")
  order: sortOrder,
  @ocaml.doc("<p>The attribute to use to sort the list of intents.</p>")
  attribute: intentSortAttribute,
}
@ocaml.doc("<p>The name of a context that must be active for an intent to be
         selected by Amazon Lex.</p>")
type inputContext = {@ocaml.doc("<p>The name of the context.</p>") name: name}
@ocaml.doc("<p>Provides summary information about an import in an import
         list.</p>")
type importSummary = {
  @ocaml.doc("<p>The date and time that the import was last updated.</p>")
  lastUpdatedDateTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the import was created.</p>")
  creationDateTime: option<timestamp_>,
  @ocaml.doc("<p>The strategy used to merge existing bot or bot locale definitions
         with the imported definition.</p>")
  mergeStrategy: option<mergeStrategy>,
  @ocaml.doc("<p>The status of the resource. When the status is
            <code>Completed</code> the resource is ready to build.</p>")
  importStatus: option<importStatus>,
  @ocaml.doc("<p>The name that you gave the imported resource.</p>")
  importedResourceName: option<name>,
  @ocaml.doc("<p>The unique identifier that Amazon Lex assigned to the imported
         resource.</p>")
  importedResourceId: option<importedResourceId>,
  @ocaml.doc("<p>The unique identifier that Amazon Lex assigned to the import.</p>")
  importId: option<id>,
}
@ocaml.doc("<p>Provides information for sorting a list of imports.</p>")
type importSortBy = {
  @ocaml.doc("<p>The order to sort the list.</p>") order: sortOrder,
  @ocaml.doc("<p>The export field to use for sorting.</p>") attribute: importSortAttribute,
}
@ocaml.doc("<p>Determines if a Lambda function should be invoked for a specific
         intent.</p>")
type fulfillmentCodeHookSettings = {
  @ocaml.doc("<p>Indicates whether a Lambda function should be invoked to fulfill a
         specific intent.</p>")
  enabled: boolean_,
}
type filterValues = array<filterValue>
type failureReasons = array<failureReason>
@ocaml.doc("<p>Provides information about sorting a list of exports.</p>")
type exportSortBy = {
  @ocaml.doc("<p>The order to sort the list.</p>") order: sortOrder,
  @ocaml.doc("<p>The export field to use for sorting.</p>") attribute: exportSortAttribute,
}
@ocaml.doc("<p>Settings that determine the Lambda function that Amazon Lex uses for
         processing user responses.</p>")
type dialogCodeHookSettings = {
  @ocaml.doc("<p>Enables the dialog code hook so that it processes user
         requests.</p>")
  enabled: boolean_,
}
@ocaml.doc("<p>By default, data stored by Amazon Lex is encrypted. The
            <code>DataPrivacy</code> structure provides settings that determine
         how Amazon Lex handles special cases of securing the data for your bot.
      </p>")
type dataPrivacy = {
  @ocaml.doc("<p>For each Amazon Lex bot created with the Amazon Lex Model Building Service,
         you must specify whether your use of Amazon Lex is related to a website,
         program, or other application that is directed or targeted, in whole or
         in part, to children under age 13 and subject to the Children's Online
         Privacy Protection Act (COPPA) by specifying <code>true</code> or
            <code>false</code> in the <code>childDirected</code> field. By
         specifying <code>true</code> in the <code>childDirected</code> field,
         you confirm that your use of Amazon Lex <b>is</b>
         related to a website, program, or other application that is directed or
         targeted, in whole or in part, to children under age 13 and subject to
         COPPA. By specifying <code>false</code> in the
            <code>childDirected</code> field, you confirm that your use of Amazon Lex
            <b>is not</b> related to a website,
         program, or other application that is directed or targeted, in whole or
         in part, to children under age 13 and subject to COPPA. You may not
         specify a default value for the <code>childDirected</code> field that
         does not accurately reflect whether your use of Amazon Lex is related to a
         website, program, or other application that is directed or targeted, in
         whole or in part, to children under age 13 and subject to COPPA. If
         your use of Amazon Lex relates to a website, program, or other application
         that is directed in whole or in part, to children under age 13, you
         must obtain any required verifiable parental consent under COPPA. For
         information regarding the use of Amazon Lex in connection with websites,
         programs, or other applications that are directed or targeted, in whole
         or in part, to children under age 13, see the <a href=\"https://aws.amazon.com/lex/faqs#data-security\">Amazon Lex
            FAQ</a>.</p>")
  childDirected: childDirected,
}
@ocaml.doc("<p>A custom response string that Amazon Lex sends to your application. You
         define the content and structure the string.</p>")
type customPayload = {
  @ocaml.doc("<p>The string that is sent to your application.</p>") value: customPayloadValue,
}
type conditionKeyValueMap = Js.Dict.t<conditionValue>
@ocaml.doc("<p>The Amazon CloudWatch Logs log group where the text and metadata logs are
         delivered. The log group must exist before you enable logging.</p>")
type cloudWatchLogGroupLogDestination = {
  @ocaml.doc("<p>The prefix of the log stream name within the log group that you
         specified </p>")
  logPrefix: logPrefix,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the log group where text and
         metadata logs are delivered.</p>")
  cloudWatchLogGroupArn: cloudWatchLogGroupArn,
}
@ocaml.doc("<p>Describes a button to use on a response card used to gather slot
         values from a user.</p>")
type button = {
  @ocaml.doc("<p>The value returned to Amazon Lex when the user chooses this button. This
         must be one of the slot values configured for the slot.</p>")
  value: buttonValue,
  @ocaml.doc("<p>The text that appears on the button. Use this to tell the user what
         value is returned when they choose this button.</p>")
  text: buttonText,
}
@ocaml.doc("<p>Provides summary information about a built-in slot type for the
            <a>ListBuiltInSlotTypes</a> operation.</p>")
type builtInSlotTypeSummary = {
  @ocaml.doc("<p>The description of the built-in slot type.</p>") description: option<description>,
  @ocaml.doc("<p>The signature of the built-in slot type. Use this to specify the
         parent slot type of a derived slot type.</p>")
  slotTypeSignature: option<slotTypeSignature>,
}
@ocaml.doc("<p>Specifies attributes for sorting a list of built-in slot
         types.</p>")
type builtInSlotTypeSortBy = {
  @ocaml.doc("<p>The order to sort the list. You can choose ascending or
         descending.</p>")
  order: sortOrder,
  @ocaml.doc("<p>The attribute to use to sort the list of built-in intents.</p>")
  attribute: builtInSlotTypeSortAttribute,
}
@ocaml.doc(
  "<p>Provides summary information about a built-in intent for the <a>ListBuiltInIntents</a> operation.</p>"
)
type builtInIntentSummary = {
  @ocaml.doc("<p>The description of the intent.</p>") description: option<description>,
  @ocaml.doc("<p>The signature of the built-in intent. Use this to specify the parent
         intent of a derived intent.</p>")
  intentSignature: option<intentSignature>,
}
@ocaml.doc("<p>Specifies attributes for sorting a list of built-in intents.</p>")
type builtInIntentSortBy = {
  @ocaml.doc("<p>The order to sort the list. You can specify ascending or descending
         order.</p>")
  order: sortOrder,
  @ocaml.doc("<p>The attribute to use to sort the list of built-in intents.</p>")
  attribute: builtInIntentSortAttribute,
}
@ocaml.doc(
  "<p>Summary information about a bot version returned by the <a>ListBotVersions</a> operation.</p>"
)
type botVersionSummary = {
  @ocaml.doc("<p>A timestamp of the date and time that the version was
         created.</p>")
  creationDateTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the bot. When the status is available, the version of
         the bot is ready for use.</p>")
  botStatus: option<botStatus>,
  @ocaml.doc("<p>The description of the version.</p>") description: option<description>,
  @ocaml.doc("<p>The numeric version of the bot, or <code>DRAFT</code> to indicate
         that this is the version of the bot that can be updated..</p>")
  botVersion: option<botVersion>,
  @ocaml.doc("<p>The name of the bot associated with the version.</p>") botName: option<name>,
}
@ocaml.doc("<p>Specifies attributes for sorting a list of bot versions.</p>")
type botVersionSortBy = {
  @ocaml.doc("<p>The order to sort the list. You can specify ascending or descending
         order.</p>")
  order: sortOrder,
  @ocaml.doc("<p>The attribute to use to sort the list of versions.</p>")
  attribute: botVersionSortAttribute,
}
@ocaml.doc("<p>The version of a bot used for a bot locale.</p>")
type botVersionLocaleDetails = {
  @ocaml.doc("<p>The version of a bot used for a bot locale.</p>") sourceBotVersion: botVersion,
}
@ocaml.doc("<p>Summary information about a bot returned by the <a>ListBots</a> operation.</p>")
type botSummary = {
  @ocaml.doc("<p>The date and time that the bot was last updated.</p>")
  lastUpdatedDateTime: option<timestamp_>,
  @ocaml.doc("<p>The latest numerical version in use for the bot.</p>")
  latestBotVersion: option<numericalBotVersion>,
  @ocaml.doc("<p>The current status of the bot. When the status is
            <code>Available</code> the bot is ready for use.</p>")
  botStatus: option<botStatus>,
  @ocaml.doc("<p>The description of the bot.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the bot.</p>") botName: option<name>,
  @ocaml.doc("<p>The unique identifier assigned to the bot. Use this ID to get
         detailed information about the bot with the <a>DescribeBot</a> operation.</p>")
  botId: option<id>,
}
@ocaml.doc("<p>Specifies attributes for sorting a list of bots.</p>")
type botSortBy = {
  @ocaml.doc("<p>The order to sort the list. You can choose ascending or
         descending.</p>")
  order: sortOrder,
  @ocaml.doc("<p>The attribute to use to sort the list of bots.</p>") attribute: botSortAttribute,
}
@ocaml.doc(
  "<p>Summary information about bot locales returned by the <a>ListBotLocales</a> operation.</p>"
)
type botLocaleSummary = {
  @ocaml.doc("<p>A timestamp of the date and time that the bot locale was last
         built.</p>")
  lastBuildSubmittedDateTime: option<timestamp_>,
  @ocaml.doc("<p>A timestamp of the date and time that the bot locale was last
         updated.</p>")
  lastUpdatedDateTime: option<timestamp_>,
  @ocaml.doc("<p>The current status of the bot locale. When the status is
            <code>Built</code> the locale is ready for use.</p>")
  botLocaleStatus: option<botLocaleStatus>,
  @ocaml.doc("<p>The description of the bot locale.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the bot locale.</p>") localeName: option<localeName>,
  @ocaml.doc("<p>The language and locale of the bot locale.</p>") localeId: option<localeId>,
}
@ocaml.doc("<p>Specifies attributes for sorting a list of bot locales.</p>")
type botLocaleSortBy = {
  @ocaml.doc("<p>Specifies whether to sort the bot locales in ascending or descending
         order.</p>")
  order: sortOrder,
  @ocaml.doc("<p>The bot locale attribute to sort by.</p>") attribute: botLocaleSortAttribute,
}
@ocaml.doc("<p>Provides information about an event that occurred affecting the bot
         locale.</p>")
type botLocaleHistoryEvent = {
  @ocaml.doc("<p>A timestamp of the date and time that the event occurred.</p>")
  eventDate: timestamp_,
  @ocaml.doc("<p>A description of the event that occurred.</p>")
  event: botLocaleHistoryEventDescription,
}
@ocaml.doc("<p>Provides the bot locale parameters required for exporting a bot
         locale.</p>")
type botLocaleExportSpecification = {
  @ocaml.doc("<p>The identifier of the language and locale to export. The string must
         match one of the locales in the bot.</p>")
  localeId: localeId,
  @ocaml.doc("<p>The version of the bot to export.</p>") botVersion: botVersion,
  @ocaml.doc("<p>The identifier of the bot to create the locale for.</p>") botId: id,
}
@ocaml.doc("<p>Provided the identity of a the bot that was exported.</p>")
type botExportSpecification = {
  @ocaml.doc("<p>The version of the bot that was exported. This will be either
            <code>DRAFT</code> or the version number.</p>")
  botVersion: botVersion,
  @ocaml.doc("<p>The identifier of the bot assigned by Amazon Lex.</p>") botId: id,
}
@ocaml.doc(
  "<p>Summary information about bot aliases returned from the <a>ListBotAliases</a> operation.</p>"
)
type botAliasSummary = {
  @ocaml.doc("<p>A timestamp of the date and time that the bot alias was last
         updated.</p>")
  lastUpdatedDateTime: option<timestamp_>,
  @ocaml.doc("<p>A timestamp of the date and time that the bot alias was
         created.</p>")
  creationDateTime: option<timestamp_>,
  @ocaml.doc("<p>The current state of the bot alias. If the status is
            <code>Available</code>, the alias is ready for use.</p>")
  botAliasStatus: option<botAliasStatus>,
  @ocaml.doc("<p>The version of the bot that the bot alias references.</p>")
  botVersion: option<botVersion>,
  @ocaml.doc("<p>The description of the bot alias.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the bot alias.</p>") botAliasName: option<name>,
  @ocaml.doc("<p>The unique identifier assigned to the bot alias. You can use this ID
         to get detailed information about the alias using the <a>DescribeBotAlias</a> operation.</p>")
  botAliasId: option<botAliasId>,
}
@ocaml.doc("<p>Provides a record of an event that affects a bot alias. For example,
         when the version of a bot that the alias points to changes.</p>")
type botAliasHistoryEvent = {
  @ocaml.doc("<p>The date and time that the event ended.</p>") endDate: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the event started.</p>") startDate: option<timestamp_>,
  @ocaml.doc("<p>The version of the bot that was used in the event. </p>")
  botVersion: option<botVersion>,
}
@ocaml.doc("<p>Defines the Amazon CloudWatch Logs destination log group for
         conversation text logs.</p>")
type textLogDestination = {
  @ocaml.doc("<p>Defines the Amazon CloudWatch Logs log group where text and metadata logs are
         delivered.</p>")
  cloudWatch: cloudWatchLogGroupLogDestination,
}
type synonymList = array<sampleValue>
@ocaml.doc("<p>Contains settings used by Amazon Lex to select a slot value.</p>")
type slotValueSelectionSetting = {
  @ocaml.doc("<p>A regular expression used to validate the value of a slot.</p>")
  regexFilter: option<slotValueRegexFilter>,
  @ocaml.doc("<p>Determines the slot resolution strategy that Amazon Lex uses to
         return slot type values. The field can be set to one of the following
         values:</p>

         <ul>
            <li>
               <p>OriginalValue - Returns the value entered by the user, if the
               user value is similar to the slot value.</p>
            </li>
            <li>
               <p>TopResolution - If there is a resolution list for the slot,
               return the first value in the resolution list as the slot type
               value. If there is no resolution list, null is returned.</p>
            </li>
         </ul>

         <p>If you don't specify the valueSelectionStrategy, the default is
         OriginalValue. </p>")
  resolutionStrategy: slotValueResolutionStrategy,
}
type slotTypeSummaryList = array<slotTypeSummary>
@ocaml.doc("<p>Filters the response from the <code>ListSlotTypes</code>
         operation.</p>")
type slotTypeFilter = {
  @ocaml.doc("<p>The operator to use for the filter. Specify <code>EQ</code> when the
            <code>ListSlotTypes</code> operation should return only aliases that
         equal the specified value. Specify <code>CO</code> when the
            <code>ListSlotTypes</code> operation should return aliases that
         contain the specified value.</p>")
  operator: slotTypeFilterOperator,
  @ocaml.doc("<p>The value to use to filter the response.</p>") values: filterValues,
  @ocaml.doc("<p>The name of the field to use for filtering.</p>") name: slotTypeFilterName,
}
type slotPrioritiesList = array<slotPriority>
@ocaml.doc("<p>Filters the response from the <code>ListSlots</code>
         operation.</p>")
type slotFilter = {
  @ocaml.doc("<p>The operator to use for the filter. Specify <code>EQ</code> when the
            <code>ListSlots</code> operation should return only aliases that
         equal the specified value. Specify <code>CO</code> when the
            <code>ListSlots</code> operation should return aliases that contain
         the specified value.</p>")
  operator: slotFilterOperator,
  @ocaml.doc("<p>The value to use to filter the response.</p>") values: filterValues,
  @ocaml.doc("<p>The name of the field to use for filtering.</p>") name: slotFilterName,
}
type slotDefaultValueList = array<slotDefaultValue>
type sampleUtterancesList = array<sampleUtterance>
type principalList = array<principal>
type outputContextsList = array<outputContext>
@ocaml.doc("<p>Filters the response from the <code>ListIntents</code>
         operation.</p>")
type intentFilter = {
  @ocaml.doc("<p>The operator to use for the filter. Specify <code>EQ</code> when the
            <code>ListIntents</code> operation should return only aliases that
         equal the specified value. Specify <code>CO</code> when the
            <code>ListIntents</code> operation should return aliases that
         contain the specified value.</p>")
  operator: intentFilterOperator,
  @ocaml.doc("<p>The value to use for the filter.</p>") values: filterValues,
  @ocaml.doc("<p>The name of the field to use for the filter.</p>") name: intentFilterName,
}
type inputContextsList = array<inputContext>
type importSummaryList = array<importSummary>
@ocaml.doc("<p>Filters the response from the 
         operation.</p>")
type importFilter = {
  @ocaml.doc("<p>The operator to use for the filter. Specify EQ when the
            <code>ListImports</code> operation should return only resource types
         that equal the specified value. Specify CO when the
            <code>ListImports</code> operation should return resource types that
         contain the specified value.</p>")
  operator: importFilterOperator,
  @ocaml.doc("<p>The values to use to filter the response.</p>") values: filterValues,
  @ocaml.doc("<p>The name of the field to use for filtering.</p>") name: importFilterName,
}
@ocaml.doc("<p>Provides information about the bot or bot locale that you want to
         export. You can specify the <code>botExportSpecification</code> or the
            <code>botLocaleExportSpecification</code>, but not both.</p>")
type exportResourceSpecification = {
  @ocaml.doc("<p>Parameters for exporting a bot locale.</p>")
  botLocaleExportSpecification: option<botLocaleExportSpecification>,
  @ocaml.doc("<p>Parameters for exporting a bot.</p>")
  botExportSpecification: option<botExportSpecification>,
}
@ocaml.doc("<p>Filtes the response form the 
         operation</p>")
type exportFilter = {
  @ocaml.doc("<p>The operator to use for the filter. Specify EQ when the
            <code>ListExports</code> operation should return only resource types
         that equal the specified value. Specify CO when the
            <code>ListExports</code> operation should return resource types that
         contain the specified value.</p>")
  operator: exportFilterOperator,
  @ocaml.doc("<p>The values to use to fileter the response.</p>") values: filterValues,
  @ocaml.doc("<p>The name of the field to use for filtering.</p>") name: exportFilterName,
}
type conditionMap = Js.Dict.t<conditionKeyValueMap>
@ocaml.doc("<p>Contains information about code hooks that Amazon Lex calls during a
         conversation.</p>")
type codeHookSpecification = {lambdaCodeHook: lambdaCodeHook}
type buttonsList = array<button>
type builtInSlotTypeSummaryList = array<builtInSlotTypeSummary>
type builtInIntentSummaryList = array<builtInIntentSummary>
type botVersionSummaryList = array<botVersionSummary>
type botVersionLocaleSpecification = Js.Dict.t<botVersionLocaleDetails>
type botSummaryList = array<botSummary>
type botLocaleSummaryList = array<botLocaleSummary>
@ocaml.doc("<p>Provides the bot locale parameters required for importing a bot
         locale.</p>")
type botLocaleImportSpecification = {
  voiceSettings: option<voiceSettings>,
  @ocaml.doc("<p>Determines the threshold where Amazon Lex will insert the
            <code>AMAZON.FallbackIntent</code>,
            <code>AMAZON.KendraSearchIntent</code>, or both when returning
         alternative intents. <code>AMAZON.FallbackIntent</code> and
            <code>AMAZON.KendraSearchIntent</code> are only inserted if they are
         configured for the bot. </p>
         <p>For example, suppose a bot is configured with the confidence
         threshold of 0.80 and the <code>AMAZON.FallbackIntent</code>. Amazon
         Lex returns three alternative intents with the following confidence
         scores: IntentA (0.70), IntentB (0.60), IntentC (0.50). The response
         from the <code>PostText</code> operation would be:</p>
         <ul>
            <li>
               <p>
                  <code>AMAZON.FallbackIntent</code>
               </p>
            </li>
            <li>
               <p>
                  <code>IntentA</code>
               </p>
            </li>
            <li>
               <p>
                  <code>IntentB</code>
               </p>
            </li>
            <li>
               <p>
                  <code>IntentC</code>
               </p>
            </li>
         </ul>")
  nluIntentConfidenceThreshold: option<confidenceThreshold>,
  @ocaml.doc("<p>The identifier of the language and locale that the bot will be used
         in. The string must match one of the supported locales. All of the
         intents, slot types, and slots used in the bot must have the same
         locale. For more information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported
         languages</a>.</p>")
  localeId: localeId,
  @ocaml.doc("<p>The version of the bot to import the locale to. This can only be the
            <code>DRAFT</code> version of the bot.</p>")
  botVersion: draftBotVersion,
  @ocaml.doc("<p>The identifier of the bot to import the locale to.</p>") botId: id,
}
type botLocaleHistoryEventsList = array<botLocaleHistoryEvent>
@ocaml.doc("<p>Filters responses returned by the <code>ListBotLocales</code>
         operation.</p>")
type botLocaleFilter = {
  @ocaml.doc("<p>The operator to use for the filter. Specify <code>EQ</code> when the
            <code>ListBotLocales</code> operation should return only aliases
         that equal the specified value. Specify <code>CO</code> when the
            <code>ListBotLocales</code> operation should return aliases that
         contain the specified value.</p>")
  operator: botLocaleFilterOperator,
  @ocaml.doc("<p>The value to use for filtering the list of bots.</p>") values: filterValues,
  @ocaml.doc("<p>The name of the field to filter the list of bots.</p>") name: botLocaleFilterName,
}
@ocaml.doc("<p>Provides the bot parameters required for importing a bot.</p>")
type botImportSpecification = {
  @ocaml.doc("<p>A list of tags to add to the test alias for a bot. You can only add
         tags when you import a bot. You can't use the <code>UpdateAlias</code>
         operation to update tags. To update tags on the test alias, use the
            <code>TagResource</code> operation.</p>")
  testBotAliasTags: option<tagMap>,
  @ocaml.doc("<p>A list of tags to add to the bot. You can only add tags when you
         import a bot. You can't use the <code>UpdateBot</code> operation to
         update tags. To update tags, use the <code>TagResource</code>
         operation.</p>")
  botTags: option<tagMap>,
  @ocaml.doc("<p>The time, in seconds, that Amazon Lex should keep information about a
         user's conversation with the bot. </p>
         <p>A user interaction remains active for the amount of time specified.
         If no conversation occurs during this time, the session expires and
         Amazon Lex deletes any data provided before the timeout.</p>
         <p>You can specify between 60 (1 minute) and 86,400 (24 hours)
         seconds.</p>")
  idleSessionTTLInSeconds: option<sessionTTL>,
  dataPrivacy: dataPrivacy,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role used to build and run
         the bot.</p>")
  roleArn: roleArn,
  @ocaml.doc("<p>The name that Amazon Lex should use for the bot.</p>") botName: name,
}
@ocaml.doc("<p>Filters the responses returned by the <code>ListBots</code>
         operation.</p>")
type botFilter = {
  @ocaml.doc("<p>The operator to use for the filter. Specify <code>EQ</code> when the
            <code>ListBots</code> operation should return only aliases that
         equal the specified value. Specify <code>CO</code> when the
            <code>ListBots</code> operation should return aliases that contain
         the specified value.</p>")
  operator: botFilterOperator,
  @ocaml.doc("<p>The value to use for filtering the list of bots.</p>") values: filterValues,
  @ocaml.doc("<p>The name of the field to filter the list of bots.</p>") name: botFilterName,
}
type botAliasSummaryList = array<botAliasSummary>
type botAliasHistoryEventsList = array<botAliasHistoryEvent>
@ocaml.doc("<p>The location of audio log files collected when conversation logging
         is enabled for a bot.</p>")
type audioLogDestination = {
  @ocaml.doc("<p>The Amazon S3 bucket where the audio log files are stored. The IAM
         role specified in the <code>roleArn</code> parameter of the <a>CreateBot</a> operation must have permission to write to
         this bucket.</p>")
  s3Bucket: s3BucketLogDestination,
}
@ocaml.doc("<p>Defines settings to enable text conversation logs.</p>")
type textLogSetting = {
  destination: textLogDestination,
  @ocaml.doc("<p>Determines whether conversation logs should be stored for an
         alias.</p>")
  enabled: boolean_,
}
@ocaml.doc("<p>Each slot type can have a set of values. Each
            <code>SlotTypeValue</code> represents a value that the slot type can
         take.</p>")
type slotTypeValue = {
  @ocaml.doc("<p>Additional values releated to the slot type entry.</p>")
  synonyms: option<synonymList>,
  @ocaml.doc("<p>The value of the slot type entry.</p>") sampleValue: option<sampleValue>,
}
type slotTypeFilters = array<slotTypeFilter>
type slotFilters = array<slotFilter>
@ocaml.doc("<p>Defines a list of values that Amazon Lex should use as the default value
         for a slot.</p>")
type slotDefaultValueSpecification = {
  @ocaml.doc("<p>A list of default values. Amazon Lex chooses the default value to use in
         the order that they are presented in the list.</p>")
  defaultValueList: slotDefaultValueList,
}
@ocaml.doc("<p>Summary information about an intent returned by the
            <code>ListIntents</code> operation.</p>")
type intentSummary = {
  @ocaml.doc("<p>The timestamp of the date and time that the intent was last
         updated.</p>")
  lastUpdatedDateTime: option<timestamp_>,
  @ocaml.doc("<p>The output contexts that are activated when this intent is
         fulfilled.</p>")
  outputContexts: option<outputContextsList>,
  @ocaml.doc("<p>The input contexts that must be active for this intent to be
         considered for recognition.</p>")
  inputContexts: option<inputContextsList>,
  @ocaml.doc("<p>If this intent is derived from a built-in intent, the name of the
         parent intent.</p>")
  parentIntentSignature: option<intentSignature>,
  @ocaml.doc("<p>The description of the intent.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the intent.</p>") intentName: option<name>,
  @ocaml.doc("<p>The unique identifier assigned to the intent. Use this ID to get
         detailed information about the intent with the
            <code>DescribeIntent</code> operation.</p>")
  intentId: option<id>,
}
type intentFilters = array<intentFilter>
@ocaml.doc("<p>Provides information about the bot or bot locale that you want to
         import. You can sepcifiy the <code>botImportSpecification</code> or the
            <code>botLocaleImportSpecification</code>, but not both.</p>")
type importResourceSpecification = {
  @ocaml.doc("<p>Parameters for importing a bot locale.</p>")
  botLocaleImportSpecification: option<botLocaleImportSpecification>,
  @ocaml.doc("<p>Parameters for importing a bot.</p>")
  botImportSpecification: option<botImportSpecification>,
}
type importFilters = array<importFilter>
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
@ocaml.doc("<p>Provides summary information about an export in an export list.
      </p>")
type exportSummary = {
  @ocaml.doc("<p>The date and time that the export was last updated.</p>")
  lastUpdatedDateTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the export was created.</p>")
  creationDateTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the export. When the status is <code>Completed</code>
         the export is ready to download.</p>")
  exportStatus: option<exportStatus>,
  @ocaml.doc("<p>The file format used in the export files.</p>")
  fileFormat: option<importExportFileFormat>,
  @ocaml.doc("<p>Information about the bot or bot locale that was exported.</p>")
  resourceSpecification: option<exportResourceSpecification>,
  @ocaml.doc("<p>The unique identifier that Amazon Lex assigned to the export.</p>")
  exportId: option<id>,
}
type exportFilters = array<exportFilter>
type botLocaleFilters = array<botLocaleFilter>
type botFilters = array<botFilter>
@ocaml.doc("<p>Specifies settings that are unique to a locale. For example, you can
         use different Lambda function depending on the bot's locale.</p>")
type botAliasLocaleSettings = {
  @ocaml.doc("<p>Specifies the Lambda function that should be used in the
         locale.</p>")
  codeHookSpecification: option<codeHookSpecification>,
  @ocaml.doc("<p>Determines whether the locale is enabled for the bot. If the value
         is <code>false</code>, the locale isn't available for use.</p>")
  enabled: boolean_,
}
@ocaml.doc("<p>Settings for logging audio of conversations between Amazon Lex and a
         user. You specify whether to log audio and the Amazon S3 bucket where
         the audio file is stored.</p>")
type audioLogSetting = {
  destination: audioLogDestination,
  @ocaml.doc("<p>Determines whether audio logging in enabled for the bot.</p>") enabled: boolean_,
}
type textLogSettingsList = array<textLogSetting>
type slotTypeValues = array<slotTypeValue>
@ocaml.doc("<p>The object that provides message text and it's type.</p>")
type message = {
  @ocaml.doc("<p>A message that defines a response card that the client application
         can show to the user.</p>")
  imageResponseCard: option<imageResponseCard>,
  @ocaml.doc("<p>A message in Speech Synthesis Markup Language (SSML).</p>")
  ssmlMessage: option<ssmlmessage>,
  @ocaml.doc("<p>A message in a custom format defined by the client
         application.</p>")
  customPayload: option<customPayload>,
  @ocaml.doc("<p>A message in plain text format.</p>") plainTextMessage: option<plainTextMessage>,
}
type intentSummaryList = array<intentSummary>
type exportSummaryList = array<exportSummary>
type botAliasLocaleSettingsMap = Js.Dict.t<botAliasLocaleSettings>
type audioLogSettingsList = array<audioLogSetting>
type messageVariationsList = array<message>
@ocaml.doc("<p>Configures conversation logging that saves audio, text, and metadata
         for the conversations with your users.</p>")
type conversationLogSettings = {
  @ocaml.doc("<p>The Amazon S3 settings for logging audio to an S3 bucket.</p>")
  audioLogSettings: option<audioLogSettingsList>,
  @ocaml.doc("<p>The Amazon CloudWatch Logs settings for logging text and metadata.</p>")
  textLogSettings: option<textLogSettingsList>,
}
@ocaml.doc("<p>Provides one or more messages that Amazon Lex should send to the
         user.</p>")
type messageGroup = {
  @ocaml.doc("<p>Message variations to send to the user. When variations are defined,
         Amazon Lex chooses the primary message or one of the variations to send to
         the user.</p>")
  variations: option<messageVariationsList>,
  @ocaml.doc("<p>The primary message that Amazon Lex should send to the user.</p>")
  message: message,
}
type messageGroupsList = array<messageGroup>
@ocaml.doc("<p>Defines the messages that Amazon Lex sends to a user to remind them that
         the bot is waiting for a response.</p>")
type stillWaitingResponseSpecification = {
  @ocaml.doc("<p>Indicates that the user can interrupt the response by speaking while
         the message is being played.</p>")
  allowInterrupt: option<boxedBoolean>,
  @ocaml.doc("<p>If Amazon Lex waits longer than this length of time for a response, it
         will stop sending messages.</p>")
  timeoutInSeconds: stillWaitingResponseTimeout,
  @ocaml.doc("<p>How often a message should be sent to the user. Minimum of 1 second,
         maximum of 5 minutes.</p>")
  frequencyInSeconds: stillWaitingResponseFrequency,
  @ocaml.doc("<p>One or more message groups, each containing one or more messages,
         that define the prompts that Amazon Lex sends to the user.</p>")
  messageGroups: messageGroupsList,
}
@ocaml.doc("<p>Specifies a list of message groups that Amazon Lex uses to respond the
         user input.</p>")
type responseSpecification = {
  @ocaml.doc("<p>Indicates whether the user can interrupt a speech response from
         Amazon Lex.</p>")
  allowInterrupt: option<boxedBoolean>,
  @ocaml.doc("<p>A collection of responses that Amazon Lex can send to the user. Amazon Lex
         chooses the actual response to send at runtime.</p>")
  messageGroups: messageGroupsList,
}
@ocaml.doc("<p>Specifies a list of message groups that Amazon Lex sends to a user to
         elicit a response.</p>")
type promptSpecification = {
  @ocaml.doc("<p>Indicates whether the user can interrupt a speech prompt from the
         bot.</p>")
  allowInterrupt: option<boxedBoolean>,
  @ocaml.doc("<p>The maximum number of times the bot tries to elicit a resonse from
         the user using this prompt.</p>")
  maxRetries: promptMaxRetries,
  @ocaml.doc("<p>A collection of messages that Amazon Lex can send to the user. Amazon Lex
         chooses the actual message to send at runtime.</p>")
  messageGroups: messageGroupsList,
}
@ocaml.doc("<p>Specifies the prompts that Amazon Lex uses while a bot is waiting for
         customer input. </p>")
type waitAndContinueSpecification = {
  @ocaml.doc("<p>A response that Amazon Lex sends periodically to the user to indicate
         that the bot is still waiting for input from the user.</p>")
  stillWaitingResponse: option<stillWaitingResponseSpecification>,
  @ocaml.doc("<p>The response that Amazon Lex sends to indicate that the bot is ready to
         continue the conversation.</p>")
  continueResponse: responseSpecification,
  @ocaml.doc("<p>The response that Amazon Lex sends to indicate that the bot is waiting
         for the conversation to continue.</p>")
  waitingResponse: responseSpecification,
}
@ocaml.doc("<p>Summary information about a slot, a value that the bot elicits from
         the user.</p>")
type slotSummary = {
  @ocaml.doc("<p>The timestamp of the last date and time that the slot was
         updated.</p>")
  lastUpdatedDateTime: option<timestamp_>,
  @ocaml.doc("<p>Prompts that are sent to the user to elicit a value for the
         slot.</p>")
  valueElicitationPromptSpecification: option<promptSpecification>,
  @ocaml.doc("<p>The unique identifier for the slot type that defines the values for
         the slot.</p>")
  slotTypeId: option<builtInOrCustomSlotTypeId>,
  @ocaml.doc("<p>Whether the slot is required or optional. An intent is complete when
         all required slots are filled.</p>")
  slotConstraint: option<slotConstraint>,
  @ocaml.doc("<p>The description of the slot.</p>") description: option<description>,
  @ocaml.doc("<p>The name given to the slot.</p>") slotName: option<name>,
  @ocaml.doc("<p>The unique identifier of the slot.</p>") slotId: option<id>,
}
@ocaml.doc("<p>Provides a prompt for making sure that the user is ready for the
         intent to be fulfilled.</p>")
type intentConfirmationSetting = {
  @ocaml.doc("<p>When the user answers \"no\" to the question defined in
            <code>promptSpecification</code>, Amazon Lex responds with this response
         to acknowledge that the intent was canceled. </p>")
  declinationResponse: responseSpecification,
  @ocaml.doc("<p>Prompts the user to confirm the intent. This question should have a
         yes or no answer.</p>
         <p>Amazon Lex uses this prompt to ensure that the user acknowledges that the
         intent is ready for fulfillment. For example, with the
            <code>OrderPizza</code> intent, you might want to confirm that the
         order is correct before placing it. For other intents, such as intents
         that simply respond to user questions, you might not need to ask the
         user for confirmation before providing the information. </p>")
  promptSpecification: promptSpecification,
}
@ocaml.doc("<p>Provides a statement the Amazon Lex conveys to the user when the intent
         is successfully fulfilled.</p>")
type intentClosingSetting = {
  @ocaml.doc("<p>The response that Amazon Lex sends to the user when the intent is
         complete.</p>")
  closingResponse: responseSpecification,
}
@ocaml.doc("<p>Settings that you can use for eliciting a slot value.</p>")
type slotValueElicitationSetting = {
  waitAndContinueSpecification: option<waitAndContinueSpecification>,
  @ocaml.doc("<p>If you know a specific pattern that users might respond to an Amazon Lex
         request for a slot value, you can provide those utterances to improve
         accuracy. This is optional. In most cases, Amazon Lex is capable of
         understanding user utterances.</p>")
  sampleUtterances: option<sampleUtterancesList>,
  @ocaml.doc("<p>The prompt that Amazon Lex uses to elicit the slot value from the
         user.</p>")
  promptSpecification: option<promptSpecification>,
  @ocaml.doc("<p>Specifies whether the slot is required or optional.</p>")
  slotConstraint: slotConstraint,
  @ocaml.doc("<p>A list of default values for a slot. Default values are used when
         Amazon Lex hasn't determined a value for a slot. You can specify default
         values from context variables, sesion attributes, and defined
         values.</p>")
  defaultValueSpecification: option<slotDefaultValueSpecification>,
}
type slotSummaryList = array<slotSummary>
@ocaml.doc("<p></p>")
module UpdateResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the revision of the policy to update. If this
         revision ID doesn't match the current revision ID, Amazon Lex throws an
         exception.</p>
         <p>If you don't specify a revision, Amazon Lex overwrites the contents of
         the policy with the new values.</p>")
    expectedRevisionId: option<revisionId>,
    @ocaml.doc("<p>A resource policy to add to the resource. The policy is a JSON
         structure that contains one or more statements that define the policy.
         The policy must follow the IAM syntax. For more information about the
         contents of a JSON policy document, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html\"> IAM JSON policy
            reference </a>. </p>
         <p>If the policy isn't valid, Amazon Lex returns a validation
         exception.</p>")
    policy: policy,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bot or bot alias that the
         resource policy is attached to.</p>")
    resourceArn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>The current revision of the resource policy. Use the revision ID to
         make sure that you are updating the most current version of a resource
         policy when you add a policy statement to a resource, delete a
         resource, or update a resource.</p>")
    revisionId: option<revisionId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bot or bot alias that the
         resource policy is attached to.</p>")
    resourceArn: option<amazonResourceName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "UpdateResourcePolicyCommand"
  let make = (~policy, ~resourceArn, ~expectedRevisionId=?, ()) =>
    new({expectedRevisionId: expectedRevisionId, policy: policy, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bot or bot alias that the
         resource policy is attached to.</p>")
    resourceArn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>The current revision of the resource policy. Use the revision ID to
         make sure that you are updating the most current version of a resource
         policy when you add a policy statement to a resource, delete a
         resource, or update a resource.</p>")
    revisionId: option<revisionId>,
    @ocaml.doc("<p>The JSON structure that contains the resource policy. For more
         information about the contents of a JSON policy document, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html\"> IAM JSON policy
            reference </a>.</p>")
    policy: option<policy>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bot or bot alias that the
         resource policy is attached to.</p>")
    resourceArn: option<amazonResourceName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DescribeResourcePolicyCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSlotType = {
  type t
  type request = {
    @ocaml.doc("<p>By default, the <code>DeleteSlotType</code> operations throws a
            <code>ResourceInUseException</code> exception if you try to delete a
         slot type used by a slot. Set the <code>skipResourceInUseCheck</code>
         parameter to <code>true</code> to skip this check and remove the slot
         type even if a slot uses it.</p>")
    skipResourceInUseCheck: option<skipResourceInUseCheck>,
    @ocaml.doc("<p>The identifier of the language and locale that the slot type will be
         deleted from. The string must match one of the supported locales. For
         more information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The version of the bot associated with the slot type.</p>")
    botVersion: draftBotVersion,
    @ocaml.doc("<p>The identifier of the bot associated with the slot type.</p>") botId: id,
    @ocaml.doc("<p>The identifier of the slot type to delete.</p>") slotTypeId: id,
  }

  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteSlotTypeCommand"
  let make = (~localeId, ~botVersion, ~botId, ~slotTypeId, ~skipResourceInUseCheck=?, ()) =>
    new({
      skipResourceInUseCheck: skipResourceInUseCheck,
      localeId: localeId,
      botVersion: botVersion,
      botId: botId,
      slotTypeId: slotTypeId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSlot = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the intent associated with the slot.</p>") intentId: id,
    @ocaml.doc("<p>The identifier of the language and locale that the slot will be
         deleted from. The string must match one of the supported locales. For
         more information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The version of the bot associated with the slot to delete.</p>")
    botVersion: draftBotVersion,
    @ocaml.doc("<p>The identifier of the bot associated with the slot to delete.</p>") botId: id,
    @ocaml.doc("<p>The identifier of the slot to delete. </p>") slotId: id,
  }

  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteSlotCommand"
  let make = (~intentId, ~localeId, ~botVersion, ~botId, ~slotId, ()) =>
    new({
      intentId: intentId,
      localeId: localeId,
      botVersion: botVersion,
      botId: botId,
      slotId: slotId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteResourcePolicyStatement = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the revision of the policy to delete the statement
         from. If this revision ID doesn't match the current revision ID, Amazon Lex
         throws an exception.</p>
         <p>If you don't specify a revision, Amazon Lex removes the current contents
         of the statement. </p>")
    expectedRevisionId: option<revisionId>,
    @ocaml.doc("<p>The name of the statement (SID) to delete from the policy.</p>")
    statementId: name,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bot or bot alias that the
         resource policy is attached to.</p>")
    resourceArn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>The current revision of the resource policy. Use the revision ID to
         make sure that you are updating the most current version of a resource
         policy when you add a policy statement to a resource, delete a
         resource, or update a resource.</p>")
    revisionId: option<revisionId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bot or bot alias that the
         resource policy statement was removed from.</p>")
    resourceArn: option<amazonResourceName>,
  }
  @module("@aws-sdk/client-lex") @new
  external new: request => t = "DeleteResourcePolicyStatementCommand"
  let make = (~statementId, ~resourceArn, ~expectedRevisionId=?, ()) =>
    new({
      expectedRevisionId: expectedRevisionId,
      statementId: statementId,
      resourceArn: resourceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the revision to edit. If this ID doesn't match the
         current revision number, Amazon Lex returns an exception</p>
         <p>If you don't specify a revision ID, Amazon Lex will delete the current
         policy.</p>")
    expectedRevisionId: option<revisionId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bot or bot alias that has the
         resource policy attached.</p>")
    resourceArn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>The current revision of the resource policy. Use the revision ID to
         make sure that you are updating the most current version of a resource
         policy when you add a policy statement to a resource, delete a
         resource, or update a resource.</p>")
    revisionId: option<revisionId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bot or bot alias that the
         resource policy was deleted from.</p>")
    resourceArn: option<amazonResourceName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteResourcePolicyCommand"
  let make = (~resourceArn, ~expectedRevisionId=?, ()) =>
    new({expectedRevisionId: expectedRevisionId, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteIntent = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the language and locale where the bot will be
         deleted. The string must match one of the supported locales. For more
         information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The version of the bot associated with the intent.</p>")
    botVersion: draftBotVersion,
    @ocaml.doc("<p>The identifier of the bot associated with the intent.</p>") botId: id,
    @ocaml.doc("<p>The unique identifier of the intent to delete.</p>") intentId: id,
  }

  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteIntentCommand"
  let make = (~localeId, ~botVersion, ~botId, ~intentId, ()) =>
    new({localeId: localeId, botVersion: botVersion, botId: botId, intentId: intentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteImport = {
  type t
  type request = {@ocaml.doc("<p>The unique identifier of the import to delete.</p>") importId: id}
  type response = {
    @ocaml.doc("<p>The current status of the deletion. When the deletion is complete,
         the import will no longer be returned by the  operation and calls to the  with the import identifier will
         fail.</p>")
    importStatus: option<importStatus>,
    @ocaml.doc("<p>The unique identifier of the deleted import.</p>") importId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteImportCommand"
  let make = (~importId, ()) => new({importId: importId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteExport = {
  type t
  type request = {@ocaml.doc("<p>The unique identifier of the export to delete.</p>") exportId: id}
  type response = {
    @ocaml.doc("<p>The current status of the deletion. When the deletion is complete,
         the export will no longer be returned by the  operation and calls to the  with the export identifier will
         fail.</p>")
    exportStatus: option<exportStatus>,
    @ocaml.doc("<p>The unique identifier of the deleted export.</p>") exportId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteExportCommand"
  let make = (~exportId, ()) => new({exportId: exportId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBotVersion = {
  type t
  type request = {
    @ocaml.doc("<p>By default, the <code>DeleteBotVersion</code> operations throws a
            <code>ResourceInUseException</code> exception if you try to delete a
         bot version that has an alias pointing at it. Set the
            <code>skipResourceInUseCheck</code> parameter to <code>true</code>
         to skip this check and remove the version even if an alias points to
         it.</p>")
    skipResourceInUseCheck: option<skipResourceInUseCheck>,
    @ocaml.doc("<p>The version of the bot to delete.</p>") botVersion: numericalBotVersion,
    @ocaml.doc("<p>The identifier of the bot that contains the version.</p>") botId: id,
  }
  type response = {
    @ocaml.doc("<p>The current status of the bot. </p>") botStatus: option<botStatus>,
    @ocaml.doc("<p>The version of the bot that is being deleted.</p>")
    botVersion: option<numericalBotVersion>,
    @ocaml.doc("<p>The identifier of the bot that is being deleted.</p>") botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteBotVersionCommand"
  let make = (~botVersion, ~botId, ~skipResourceInUseCheck=?, ()) =>
    new({skipResourceInUseCheck: skipResourceInUseCheck, botVersion: botVersion, botId: botId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBotLocale = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the language and locale that will be deleted. The
         string must match one of the supported locales. For more information,
         see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The version of the bot that contains the locale. </p>")
    botVersion: draftBotVersion,
    @ocaml.doc("<p>The unique identifier of the bot that contains the locale.</p>") botId: id,
  }
  type response = {
    @ocaml.doc("<p>The status of deleting the bot locale. The locale first enters the
            <code>Deleting</code> status. Once the locale is deleted it no
         longer appears in the list of locales for the bot.</p>")
    botLocaleStatus: option<botLocaleStatus>,
    @ocaml.doc("<p>The language and locale of the deleted locale.</p>") localeId: option<localeId>,
    @ocaml.doc("<p>The version of the bot that contained the deleted locale.</p>")
    botVersion: option<draftBotVersion>,
    @ocaml.doc("<p>The identifier of the bot that contained the deleted locale.</p>")
    botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteBotLocaleCommand"
  let make = (~localeId, ~botVersion, ~botId, ()) =>
    new({localeId: localeId, botVersion: botVersion, botId: botId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBotAlias = {
  type t
  type request = {
    @ocaml.doc("<p>When this parameter is true, Amazon Lex doesn't check to see if any other
         resource is using the alias before it is deleted.</p>")
    skipResourceInUseCheck: option<skipResourceInUseCheck>,
    @ocaml.doc("<p>The unique identifier of the bot associated with the alias to
         delete.</p>")
    botId: id,
    @ocaml.doc("<p>The unique identifier of the bot alias to delete.</p>") botAliasId: botAliasId,
  }
  type response = {
    @ocaml.doc("<p>The current status of the alias. The status is <code>Deleting</code>
         while the alias is in the process of being deleted. Once the alias is
         deleted, it will no longer appear in the list of aliases returned by
         the <code>ListBotAliases</code> operation.</p>")
    botAliasStatus: option<botAliasStatus>,
    @ocaml.doc("<p>The unique identifier of the bot that contains the alias to
         delete.</p>")
    botId: option<id>,
    @ocaml.doc("<p>The unique identifier of the bot alias to delete.</p>")
    botAliasId: option<botAliasId>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteBotAliasCommand"
  let make = (~botId, ~botAliasId, ~skipResourceInUseCheck=?, ()) =>
    new({skipResourceInUseCheck: skipResourceInUseCheck, botId: botId, botAliasId: botAliasId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBot = {
  type t
  type request = {
    @ocaml.doc("<p>When <code>true</code>, Amazon Lex doesn't check to see if another
         resource, such as an alias, is using the bot before it is
         deleted.</p>")
    skipResourceInUseCheck: option<skipResourceInUseCheck>,
    @ocaml.doc("<p>The identifier of the bot to delete. </p>") botId: id,
  }
  type response = {
    @ocaml.doc("<p>The current status of the bot. The status is <code>Deleting</code>
         while the bot and its associated resources are being deleted.</p>")
    botStatus: option<botStatus>,
    @ocaml.doc("<p>The unique identifier of the bot that Amazon Lex is deleting.</p>")
    botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteBotCommand"
  let make = (~botId, ~skipResourceInUseCheck=?, ()) =>
    new({skipResourceInUseCheck: skipResourceInUseCheck, botId: botId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUploadUrl = {
  type t

  type response = {
    @ocaml.doc("<p>A pre-signed S3 write URL. Upload the zip archive file that contains
         the definition of your bot or bot locale.</p>")
    uploadUrl: option<presignedS3Url>,
    @ocaml.doc("<p>An identifier for a unique import job. Use it when you call the
             operation.</p>")
    importId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: unit => t = "CreateUploadUrlCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>A resource policy to add to the resource. The policy is a JSON
         structure that contains one or more statements that define the policy.
         The policy must follow the IAM syntax. For more information about the
         contents of a JSON policy document, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html\"> IAM JSON policy
            reference </a>. </p>
         <p>If the policy isn't valid, Amazon Lex returns a validation
         exception.</p>")
    policy: policy,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bot or bot alias that the
         resource policy is attached to.</p>")
    resourceArn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>The current revision of the resource policy. Use the revision ID to
         make sure that you are updating the most current version of a resource
         policy when you add a policy statement to a resource, delete a
         resource, or update a resource.</p>")
    revisionId: option<revisionId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bot or bot alias that the
         resource policy was attached to.</p>")
    resourceArn: option<amazonResourceName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "CreateResourcePolicyCommand"
  let make = (~policy, ~resourceArn, ()) => new({policy: policy, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BuildBotLocale = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the language and locale that the bot will be used
         in. The string must match one of the supported locales. All of the
         intents, slot types, and slots used in the bot must have the same
         locale. For more information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The version of the bot to build. This can only be the draft version
         of the bot.</p>")
    botVersion: draftBotVersion,
    @ocaml.doc("<p>The identifier of the bot to build. The identifier is returned in
         the response from the  operation.</p>")
    botId: id,
  }
  type response = {
    @ocaml.doc("<p>A timestamp indicating the date and time that the bot was last built
         for this locale.</p>")
    lastBuildSubmittedDateTime: option<timestamp_>,
    @ocaml.doc("<p>The bot's build status. When the status is
            <code>ReadyExpressTesting</code> you can test the bot using the
         utterances defined for the intents and slot types. When the status is
            <code>Built</code>, the bot is ready for use and can be tested using
         any utterance.</p>")
    botLocaleStatus: option<botLocaleStatus>,
    @ocaml.doc("<p>The language and locale specified of where the bot can be
         used.</p>")
    localeId: option<localeId>,
    @ocaml.doc("<p>The version of the bot that was built. This is only the draft
         version of the bot.</p>")
    botVersion: option<draftBotVersion>,
    @ocaml.doc("<p>The identifier of the specified bot.</p>") botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "BuildBotLocaleCommand"
  let make = (~localeId, ~botVersion, ~botId, ()) =>
    new({localeId: localeId, botVersion: botVersion, botId: botId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBotLocale = {
  type t
  type request = {
    @ocaml.doc("<p>The new Amazon Polly voice Amazon Lex should use for voice interaction with the
         user.</p>")
    voiceSettings: option<voiceSettings>,
    @ocaml.doc("<p>The new confidence threshold where Amazon Lex inserts the
            <code>AMAZON.FallbackIntent</code> and
            <code>AMAZON.KendraSearchIntent</code> intents in the list of
         possible intents for an utterance.</p>")
    nluIntentConfidenceThreshold: confidenceThreshold,
    @ocaml.doc("<p>The new description of the locale.</p>") description: option<description>,
    @ocaml.doc("<p>The identifier of the language and locale to update. The string must
         match one of the supported locales. For more information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The version of the bot that contains the locale to be updated. The
         version can only be the <code>DRAFT</code> version.</p>")
    botVersion: draftBotVersion,
    @ocaml.doc("<p>The unique identifier of the bot that contains the locale.</p>") botId: id,
  }
  type response = {
    @ocaml.doc("<p>A timestamp of the date and time that the locale was last
         updated.</p>")
    lastUpdatedDateTime: option<timestamp_>,
    @ocaml.doc("<p>A timestamp of the date and time that the locale was created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>If the <code>botLocaleStatus</code> is <code>Failed</code>, the
            <code>failureReasons</code> field lists the errors that occurred
         while building the bot.</p>")
    failureReasons: option<failureReasons>,
    @ocaml.doc("<p>The current status of the locale. When the bot status is
            <code>Built</code> the locale is ready for use.</p>")
    botLocaleStatus: option<botLocaleStatus>,
    @ocaml.doc("<p>The updated Amazon Polly voice to use for voice interaction with the
         user.</p>")
    voiceSettings: option<voiceSettings>,
    @ocaml.doc("<p>The updated confidence threshold for inserting the
            <code>AMAZON.FallbackIntent</code> and
            <code>AMAZON.KendraSearchIntent</code> intents in the list of
         possible intents for an utterance.</p>")
    nluIntentConfidenceThreshold: option<confidenceThreshold>,
    @ocaml.doc("<p>The updated description of the locale.</p>") description: option<description>,
    @ocaml.doc("<p>The updated locale name for the locale.</p>") localeName: option<localeName>,
    @ocaml.doc("<p>The language and locale of the updated bot locale.</p>")
    localeId: option<localeId>,
    @ocaml.doc("<p>The version of the bot that contains the updated locale.</p>")
    botVersion: option<draftBotVersion>,
    @ocaml.doc("<p>The identifier of the bot that contains the updated locale.</p>")
    botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "UpdateBotLocaleCommand"
  let make = (
    ~nluIntentConfidenceThreshold,
    ~localeId,
    ~botVersion,
    ~botId,
    ~voiceSettings=?,
    ~description=?,
    (),
  ) =>
    new({
      voiceSettings: voiceSettings,
      nluIntentConfidenceThreshold: nluIntentConfidenceThreshold,
      description: description,
      localeId: localeId,
      botVersion: botVersion,
      botId: botId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBot = {
  type t
  type request = {
    @ocaml.doc("<p>The time, in seconds, that Amazon Lex should keep information about a
         user's conversation with the bot.</p>
         <p>A user interaction remains active for the amount of time specified.
         If no conversation occurs during this time, the session expires and
         Amazon Lex deletes any data provided before the timeout.</p>
         <p>You can specify between 60 (1 minute) and 86,400 (24 hours)
         seconds.</p>")
    idleSessionTTLInSeconds: sessionTTL,
    @ocaml.doc("<p>Provides information on additional privacy protections Amazon Lex should
         use with the bot's data.</p>")
    dataPrivacy: dataPrivacy,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an IAM role that has permissions
         to access the bot.</p>")
    roleArn: roleArn,
    @ocaml.doc("<p>A description of the bot.</p>") description: option<description>,
    @ocaml.doc("<p>The new name of the bot. The name must be unique in the account that
         creates the bot.</p>")
    botName: name,
    @ocaml.doc("<p>The unique identifier of the bot to update. This identifier is
         returned by the <a>CreateBot</a> operation.</p>")
    botId: id,
  }
  type response = {
    @ocaml.doc("<p>A timestamp of the date and time that the bot was last
         updated.</p>")
    lastUpdatedDateTime: option<timestamp_>,
    @ocaml.doc("<p>A timestamp of the date and time that the bot was created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>Shows the current status of the bot. The bot is first in the
            <code>Creating</code> status. Once the bot is read for use, it
         changes to the <code>Available</code> status. After the bot is created,
         you can use the <code>DRAFT</code> version of the bot.</p>")
    botStatus: option<botStatus>,
    @ocaml.doc("<p>The session timeout, in seconds, for the bot after the
         update.</p>")
    idleSessionTTLInSeconds: option<sessionTTL>,
    @ocaml.doc("<p>The data privacy settings for the bot after the update.</p>")
    dataPrivacy: option<dataPrivacy>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role used by the bot after
         the update.</p>")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The description of the bot after the update.</p>")
    description: option<description>,
    @ocaml.doc("<p>The name of the bot after the update.</p>") botName: option<name>,
    @ocaml.doc("<p>The unique identifier of the bot that was updated.</p>") botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "UpdateBotCommand"
  let make = (
    ~idleSessionTTLInSeconds,
    ~dataPrivacy,
    ~roleArn,
    ~botName,
    ~botId,
    ~description=?,
    (),
  ) =>
    new({
      idleSessionTTLInSeconds: idleSessionTTLInSeconds,
      dataPrivacy: dataPrivacy,
      roleArn: roleArn,
      description: description,
      botName: botName,
      botId: botId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag keys to remove from the resource. If a tag key does
         not exist on the resource, it is ignored.</p>")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to remove the tags
         from.</p>")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-lex") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag keys to add to the resource. If a tag key already
         exists, the existing value is replaced with the new value.</p>")
    tags: tagMap,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bot, bot alias, or bot channel
         to tag.</p>")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-lex") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to get a list of tags
         for.</p>")
    resourceARN: amazonResourceName,
  }
  type response = {@ocaml.doc("<p>The tags associated with a resource.</p>") tags: option<tagMap>}
  @module("@aws-sdk/client-lex") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBotVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the bot to return metadata for.</p>")
    botVersion: numericalBotVersion,
    @ocaml.doc("<p>The identifier of the bot containing the version to return metadata
         for.</p>")
    botId: id,
  }
  type response = {
    @ocaml.doc("<p>A timestamp of the date and time that the bot version was
         created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>If the <code>botStatus</code> is <code>Failed</code>, this contains
         a list of reasons that the version couldn't be built.</p>")
    failureReasons: option<failureReasons>,
    @ocaml.doc("<p>The current status of the bot. When the status is
            <code>Available</code>, the bot version is ready for use.</p>")
    botStatus: option<botStatus>,
    @ocaml.doc("<p>The number of seconds that a session with the bot remains active
         before it is discarded by Amazon Lex.</p>")
    idleSessionTTLInSeconds: option<sessionTTL>,
    @ocaml.doc("<p>Data privacy settings for the bot version.</p>")
    dataPrivacy: option<dataPrivacy>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an IAM role that has permission to
         access the bot version.</p>")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The description specified for the bot.</p>") description: option<description>,
    @ocaml.doc("<p>The version of the bot to describe.</p>")
    botVersion: option<numericalBotVersion>,
    @ocaml.doc("<p>The name of the bot that contains the version.</p>") botName: option<name>,
    @ocaml.doc("<p>The identifier of the bot that contains the version.</p>") botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DescribeBotVersionCommand"
  let make = (~botVersion, ~botId, ()) => new({botVersion: botVersion, botId: botId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBot = {
  type t
  type request = {@ocaml.doc("<p>The unique identifier of the bot to describe.</p>") botId: id}
  type response = {
    @ocaml.doc("<p>A timestamp of the date and time that the bot was last
         updated.</p>")
    lastUpdatedDateTime: option<timestamp_>,
    @ocaml.doc("<p>A timestamp of the date and time that the bot was created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The current status of the bot. When the status is
            <code>Available</code> the bot is ready to be used in conversations
         with users.</p>")
    botStatus: option<botStatus>,
    @ocaml.doc("<p>The maximum time in seconds that Amazon Lex retains the data gathered in
         a conversation.</p>")
    idleSessionTTLInSeconds: option<sessionTTL>,
    @ocaml.doc("<p>Settings for managing data privacy of the bot and its conversations
         with users.</p>")
    dataPrivacy: option<dataPrivacy>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an IAM role that has permission to
         access the bot.</p>")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The description of the bot. </p>") description: option<description>,
    @ocaml.doc("<p>The name of the bot.</p>") botName: option<name>,
    @ocaml.doc("<p>The unique identifier of the bot.</p>") botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DescribeBotCommand"
  let make = (~botId, ()) => new({botId: botId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBotLocale = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Polly voice ID that Amazon Lex uses for voice interaction with the
         user.</p>")
    voiceSettings: option<voiceSettings>,
    @ocaml.doc("<p>Determines the threshold where Amazon Lex will insert the
            <code>AMAZON.FallbackIntent</code>,
            <code>AMAZON.KendraSearchIntent</code>, or both when returning
         alternative intents. <code>AMAZON.FallbackIntent</code> and
            <code>AMAZON.KendraSearchIntent</code> are only inserted if they are
         configured for the bot.</p>
         <p>For example, suppose a bot is configured with the confidence
         threshold of 0.80 and the <code>AMAZON.FallbackIntent</code>. Amazon Lex
         returns three alternative intents with the following confidence scores:
         IntentA (0.70), IntentB (0.60), IntentC (0.50). The response from the
         PostText operation would be:</p>
         <ul>
            <li>
               <p>AMAZON.FallbackIntent</p>
            </li>
            <li>
               <p>IntentA</p>
            </li>
            <li>
               <p>IntentB</p>
            </li>
            <li>
               <p>IntentC</p>
            </li>
         </ul>")
    nluIntentConfidenceThreshold: confidenceThreshold,
    @ocaml.doc("<p>A description of the bot locale. Use this to help identify the bot
         locale in lists.</p>")
    description: option<description>,
    @ocaml.doc("<p>The identifier of the language and locale that the bot will be used
         in. The string must match one of the supported locales. All of the
         intents, slot types, and slots used in the bot must have the same
         locale. For more information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The version of the bot to create the locale for. This can only be
         the draft version of the bot.</p>")
    botVersion: draftBotVersion,
    @ocaml.doc("<p>The identifier of the bot to create the locale for.</p>") botId: id,
  }
  type response = {
    @ocaml.doc("<p>A timestamp specifying the date and time that the bot locale was
         created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The status of the bot.</p>
         <p>When the status is <code>Creating</code> the bot locale is being
         configured. When the status is <code>Building</code> Amazon Lex is building
         the bot for testing and use.</p>
         <p>If the status of the bot is <code>ReadyExpressTesting</code>, you
         can test the bot using the exact utterances specified in the bots'
         intents. When the bot is ready for full testing or to run, the status
         is <code>Built</code>.</p>
         <p>If there was a problem with building the bot, the status is
            <code>Failed</code>. If the bot was saved but not built, the status
         is <code>NotBuilt</code>.</p>")
    botLocaleStatus: option<botLocaleStatus>,
    @ocaml.doc("<p>The Amazon Polly voice ID that Amazon Lex uses for voice interaction with the
         user.</p>")
    voiceSettings: option<voiceSettings>,
    @ocaml.doc("<p>The specified confidence threshold for inserting the
            <code>AMAZON.FallbackIntent</code> and
            <code>AMAZON.KendraSearchIntent</code> intents.</p>")
    nluIntentConfidenceThreshold: option<confidenceThreshold>,
    @ocaml.doc("<p>The specified description of the bot locale.</p>")
    description: option<description>,
    @ocaml.doc("<p>The specified locale identifier.</p>") localeId: option<localeId>,
    @ocaml.doc("<p>The specified locale name.</p>") localeName: option<localeName>,
    @ocaml.doc("<p>The specified bot version.</p>") botVersion: option<draftBotVersion>,
    @ocaml.doc("<p>The specified bot identifier.</p>") botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "CreateBotLocaleCommand"
  let make = (
    ~nluIntentConfidenceThreshold,
    ~localeId,
    ~botVersion,
    ~botId,
    ~voiceSettings=?,
    ~description=?,
    (),
  ) =>
    new({
      voiceSettings: voiceSettings,
      nluIntentConfidenceThreshold: nluIntentConfidenceThreshold,
      description: description,
      localeId: localeId,
      botVersion: botVersion,
      botId: botId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBot = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags to add to the test alias for a bot. You can only add
         tags when you create a bot. You can't use the <code>UpdateAlias</code>
         operation to update tags. To update tags on the test alias, use the
            <code>TagResource</code> operation.</p>")
    testBotAliasTags: option<tagMap>,
    @ocaml.doc("<p>A list of tags to add to the bot. You can only add tags when you
         create a bot. You can't use the <code>UpdateBot</code> operation to
         update tags. To update tags, use the <code>TagResource</code>
         operation.</p>")
    botTags: option<tagMap>,
    @ocaml.doc("<p>The time, in seconds, that Amazon Lex should keep information about a
         user's conversation with the bot. </p>
         <p>A user interaction remains active for the amount of time specified.
         If no conversation occurs during this time, the session expires and
         Amazon Lex deletes any data provided before the timeout.</p>
         <p>You can specify between 60 (1 minute) and 86,400 (24 hours)
         seconds.</p>")
    idleSessionTTLInSeconds: sessionTTL,
    @ocaml.doc("<p>Provides information on additional privacy protections Amazon Lex should
         use with the bot's data.</p>")
    dataPrivacy: dataPrivacy,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an IAM role that has permission to
         access the bot.</p>")
    roleArn: roleArn,
    @ocaml.doc("<p>A description of the bot. It appears in lists to help you identify a
         particular bot.</p>")
    description: option<description>,
    @ocaml.doc("<p>The name of the bot. The bot name must be unique in the account that
         creates the bot.</p>")
    botName: name,
  }
  type response = {
    @ocaml.doc("<p>A list of tags associated with the test alias for the bot.</p>")
    testBotAliasTags: option<tagMap>,
    @ocaml.doc("<p>A list of tags associated with the bot.</p>") botTags: option<tagMap>,
    @ocaml.doc("<p>A timestamp indicating the date and time that the bot was
         created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>Shows the current status of the bot. The bot is first in the
            <code>Creating</code> status. Once the bot is read for use, it
         changes to the <code>Available</code> status. After the bot is created,
         you can use the <code>Draft</code> version of the bot.</p>")
    botStatus: option<botStatus>,
    @ocaml.doc("<p>The session idle time specified for the bot.</p>")
    idleSessionTTLInSeconds: option<sessionTTL>,
    @ocaml.doc("<p>The data privacy settings specified for the bot.</p>")
    dataPrivacy: option<dataPrivacy>,
    @ocaml.doc("<p>The IAM role specified for the bot.</p>") roleArn: option<roleArn>,
    @ocaml.doc("<p>The description specified for the bot.</p>") description: option<description>,
    @ocaml.doc("<p>The name specified for the bot.</p>") botName: option<name>,
    @ocaml.doc("<p>A unique identifier for a particular bot. You use this to identify
         the bot when you call other Amazon Lex API operations.</p>")
    botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "CreateBotCommand"
  let make = (
    ~idleSessionTTLInSeconds,
    ~dataPrivacy,
    ~roleArn,
    ~botName,
    ~testBotAliasTags=?,
    ~botTags=?,
    ~description=?,
    (),
  ) =>
    new({
      testBotAliasTags: testBotAliasTags,
      botTags: botTags,
      idleSessionTTLInSeconds: idleSessionTTLInSeconds,
      dataPrivacy: dataPrivacy,
      roleArn: roleArn,
      description: description,
      botName: botName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateExport = {
  type t
  type request = {
    @ocaml.doc("<p>The new password to use to encrypt the export zip archive.</p>")
    filePassword: option<importExportFilePassword>,
    @ocaml.doc("<p>The unique identifier Amazon Lex assigned to the export.</p>") exportId: id,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the export was last updated.</p>")
    lastUpdatedDateTime: option<timestamp_>,
    @ocaml.doc("<p>The date and time that the export was created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The status of the export. When the status is <code>Completed</code>
         the export archive is available for download.</p>")
    exportStatus: option<exportStatus>,
    @ocaml.doc("<p>The file format used for the files that define the resource.</p>")
    fileFormat: option<importExportFileFormat>,
    @ocaml.doc("<p>A description of the type of resource that was exported, either a
         bot or a bot locale.</p>")
    resourceSpecification: option<exportResourceSpecification>,
    @ocaml.doc("<p>The unique identifier Amazon Lex assigned to the export.</p>")
    exportId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "UpdateExportCommand"
  let make = (~exportId, ~filePassword=?, ()) =>
    new({filePassword: filePassword, exportId: exportId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBuiltInSlotTypes = {
  type t
  type request = {
    @ocaml.doc("<p>If the response from the <code>ListBuiltInSlotTypes</code> operation
         contains more results than specified in the <code>maxResults</code>
         parameter, a token is returned in the response. Use that token in the
            <code>nextToken</code> parameter to return the next page of
         results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of built-in slot types to return in each page of
         results. If there are fewer results than the max page size, only the
         actual number of results are returned.</p>")
    maxResults: option<builtInsMaxResults>,
    @ocaml.doc("<p>Determines the sort order for the response from the
            <code>ListBuiltInSlotTypes</code> operation. You can choose to sort
         by the slot type signature in either ascending or descending
         order.</p>")
    sortBy: option<builtInSlotTypeSortBy>,
    @ocaml.doc("<p>The identifier of the language and locale of the slot types to list.
         The string must match one of the supported locales. For more
         information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
  }
  type response = {
    @ocaml.doc("<p>The language and locale of the slot types in the list.</p>")
    localeId: option<localeId>,
    @ocaml.doc("<p>A token that indicates whether there are more results to return in a
         response to the <code>ListBuiltInSlotTypes</code> operation. If the
            <code>nextToken</code> field is present, you send the contents as
         the <code>nextToken</code> parameter of a
            <code>LIstBuiltInSlotTypes</code> operation request to get the next
         page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information for the built-in slot types that meet the filter
         criteria specified in the request. The length of the list is specified
         in the <code>maxResults</code> parameter of the request. If there are
         more slot types available, the <code>nextToken</code> field contains a
         token to get the next page of results.</p>")
    builtInSlotTypeSummaries: option<builtInSlotTypeSummaryList>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "ListBuiltInSlotTypesCommand"
  let make = (~localeId, ~nextToken=?, ~maxResults=?, ~sortBy=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, sortBy: sortBy, localeId: localeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBuiltInIntents = {
  type t
  type request = {
    @ocaml.doc("<p>If the response from the <code>ListBuiltInIntents</code> operation
         contains more results than specified in the <code>maxResults</code>
         parameter, a token is returned in the response. Use that token in the
            <code>nextToken</code> parameter to return the next page of
         results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of built-in intents to return in each page of
         results. If there are fewer results than the max page size, only the
         actual number of results are returned.</p>")
    maxResults: option<builtInsMaxResults>,
    @ocaml.doc("<p>Specifies sorting parameters for the list of built-in intents. You
         can specify that the list be sorted by the built-in intent signature in
         either ascending or descending order.</p>")
    sortBy: option<builtInIntentSortBy>,
    @ocaml.doc("<p>The identifier of the language and locale of the intents to list.
         The string must match one of the supported locales. For more
         information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
  }
  type response = {
    @ocaml.doc("<p>The language and locale of the intents in the list.</p>")
    localeId: option<localeId>,
    @ocaml.doc("<p>A token that indicates whether there are more results to return in a
         response to the <code>ListBuiltInIntents</code> operation. If the
            <code>nextToken</code> field is present, you send the contents as
         the <code>nextToken</code> parameter of a <code>ListBotAliases</code>
         operation request to get the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information for the built-in intents that meet the filter
         criteria specified in the request. The length of the list is specified
         in the <code>maxResults</code> parameter of the request. If there are
         more intents available, the <code>nextToken</code> field contains a
         token to get the next page of results.</p>")
    builtInIntentSummaries: option<builtInIntentSummaryList>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "ListBuiltInIntentsCommand"
  let make = (~localeId, ~nextToken=?, ~maxResults=?, ~sortBy=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, sortBy: sortBy, localeId: localeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBotVersions = {
  type t
  type request = {
    @ocaml.doc("<p>If the response to the <code>ListBotVersion</code> operation
         contains more results than specified in the <code>maxResults</code>
         parameter, a token is returned in the response. Use that token in the
            <code>nextToken</code> parameter to return the next page of
         results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of versions to return in each page of results. If
         there are fewer results than the max page size, only the actual number
         of results are returned.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Specifies sorting parameters for the list of versions. You can
         specify that the list be sorted by version name in either ascending or
         descending order.</p>")
    sortBy: option<botVersionSortBy>,
    @ocaml.doc("<p>The identifier of the bot to list versions for.</p>") botId: id,
  }
  type response = {
    @ocaml.doc("<p>A token that indicates whether there are more results to return in a
         response to the <code>ListBotVersions</code> operation. If the
            <code>nextToken</code> field is present, you send the contents as
         the <code>nextToken</code> parameter of a <code>ListBotAliases</code>
         operation request to get the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information for the bot versions that meet the filter
         criteria specified in the request. The length of the list is specified
         in the <code>maxResults</code> parameter of the request. If there are
         more versions available, the <code>nextToken</code> field contains a
         token to get the next page of results.</p>")
    botVersionSummaries: option<botVersionSummaryList>,
    @ocaml.doc("<p>The identifier of the bot to list versions for.</p>") botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "ListBotVersionsCommand"
  let make = (~botId, ~nextToken=?, ~maxResults=?, ~sortBy=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, sortBy: sortBy, botId: botId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBotAliases = {
  type t
  type request = {
    @ocaml.doc("<p>If the response from the <code>ListBotAliases</code> operation
         contains more results than specified in the <code>maxResults</code>
         parameter, a token is returned in the response. Use that token in the
            <code>nextToken</code> parameter to return the next page of
         results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of aliases to return in each page of results. If
         there are fewer results than the max page size, only the actual number
         of results are returned.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The identifier of the bot to list aliases for.</p>") botId: id,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the bot associated with the aliases.</p>") botId: option<id>,
    @ocaml.doc("<p>A token that indicates whether there are more results to return in a
         response to the <code>ListBotAliases</code> operation. If the
            <code>nextToken</code> field is present, you send the contents as
         the <code>nextToken</code> parameter of a <code>ListBotAliases</code>
         operation request to get the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information for the bot aliases that meet the filter
         criteria specified in the request. The length of the list is specified
         in the <code>maxResults</code> parameter of the request. If there are
         more aliases available, the <code>nextToken</code> field contains a
         token to get the next page of results.</p>")
    botAliasSummaries: option<botAliasSummaryList>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "ListBotAliasesCommand"
  let make = (~botId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, botId: botId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeExport = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the export to describe.</p>") exportId: id,
  }
  type response = {
    @ocaml.doc("<p>The last date and time that the export was updated.</p>")
    lastUpdatedDateTime: option<timestamp_>,
    @ocaml.doc("<p>The date and time that the export was created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>A pre-signed S3 URL that points to the bot or bot locale archive.
         The URL is only available for 5 minutes after calling the
            <code>DescribeExport</code> operation.</p>")
    downloadUrl: option<presignedS3Url>,
    @ocaml.doc("<p>If the <code>exportStatus</code> is failed, contains one or more
         reasons why the export could not be completed.</p>")
    failureReasons: option<failureReasons>,
    @ocaml.doc("<p>The status of the export. When the status is <code>Complete</code>
         the export archive file is available for download.</p>")
    exportStatus: option<exportStatus>,
    @ocaml.doc("<p>The file format used in the files that describe the bot or bot
         locale.</p>")
    fileFormat: option<importExportFileFormat>,
    @ocaml.doc("<p>The bot, bot ID, and optional locale ID of the exported bot or bot
         locale.</p>")
    resourceSpecification: option<exportResourceSpecification>,
    @ocaml.doc("<p>The unique identifier of the described export.</p>") exportId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DescribeExportCommand"
  let make = (~exportId, ()) => new({exportId: exportId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBotLocale = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the locale to describe. The string must
         match one of the supported locales. For more information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>. </p>")
    localeId: localeId,
    @ocaml.doc("<p>The identifier of the version of the bot associated with the
         locale.</p>")
    botVersion: botVersion,
    @ocaml.doc("<p>The identifier of the bot associated with the locale.</p>") botId: id,
  }
  type response = {
    @ocaml.doc("<p>History of changes, such as when a locale is used in an alias, that
         have taken place for the locale.</p>")
    botLocaleHistoryEvents: option<botLocaleHistoryEventsList>,
    @ocaml.doc("<p>The date and time that the locale was last submitted for
         building.</p>")
    lastBuildSubmittedDateTime: option<timestamp_>,
    @ocaml.doc("<p>The date and time that the locale was last updated.</p>")
    lastUpdatedDateTime: option<timestamp_>,
    @ocaml.doc("<p>The date and time that the locale was created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>if <code>botLocaleStatus</code> is <code>Failed</code>, Amazon Lex
         explains why it failed to build the bot.</p>")
    failureReasons: option<failureReasons>,
    @ocaml.doc("<p>The status of the bot. If the status is <code>Failed</code>, the
         reasons for the failure are listed in the <code>failureReasons</code>
         field.</p>")
    botLocaleStatus: option<botLocaleStatus>,
    @ocaml.doc("<p>The number of slot types defined for the locale.</p>")
    slotTypesCount: option<resourceCount>,
    @ocaml.doc("<p>The number of intents defined for the locale.</p>")
    intentsCount: option<resourceCount>,
    @ocaml.doc("<p>The Amazon Polly voice Amazon Lex uses for voice interaction with the
         user.</p>")
    voiceSettings: option<voiceSettings>,
    @ocaml.doc("<p>The confidence threshold where Amazon Lex inserts the
            <code>AMAZON.FallbackIntent</code> and
            <code>AMAZON.KendraSearchIntent</code> intents in the list of
         possible intents for an utterance.</p>")
    nluIntentConfidenceThreshold: option<confidenceThreshold>,
    @ocaml.doc("<p>The description of the locale.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the locale.</p>") localeName: option<localeName>,
    @ocaml.doc("<p>The unique identifier of the described locale.</p>") localeId: option<localeId>,
    @ocaml.doc("<p>The identifier of the version of the bot associated with the
         locale.</p>")
    botVersion: option<botVersion>,
    @ocaml.doc("<p>The identifier of the bot associated with the locale.</p>") botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DescribeBotLocaleCommand"
  let make = (~localeId, ~botVersion, ~botId, ()) =>
    new({localeId: localeId, botVersion: botVersion, botId: botId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateResourcePolicyStatement = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the revision of the policy to edit. If this
         revision ID doesn't match the current revision ID, Amazon Lex throws an
         exception.</p>
         <p>If you don't specify a revision, Amazon Lex overwrites the contents of
         the policy with the new values.</p>")
    expectedRevisionId: option<revisionId>,
    @ocaml.doc("<p>Specifies a condition when the policy is in effect. If the principal
         of the policy is a service principal, you must provide two condition
         blocks, one with a SourceAccount global condition key and one with a
         SourceArn global condition key.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition.html\">IAM JSON policy elements: Condition </a>.</p>")
    condition: option<conditionMap>,
    @ocaml.doc("<p>The Amazon Lex action that this policy either allows or denies. The
         action must apply to the resource type of the specified ARN. For more
         information, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonlexv2.html\">
            Actions, resources, and condition keys for Amazon Lex V2</a>.</p>")
    action: operationList,
    @ocaml.doc("<p>An IAM principal, such as an IAM users, IAM roles, or AWS services
         that is allowed or denied access to a resource. For more information,
         see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html\">AWS JSON policy elements: Principal</a>.</p>")
    principal: principalList,
    @ocaml.doc("<p>Determines whether the statement allows or denies access to the
         resource.</p>")
    effect: effect,
    @ocaml.doc("<p>The name of the statement. The ID is the same as the
            <code>Sid</code> IAM property. The statement name must be unique
         within the policy. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_sid.html\">IAM
            JSON policy elements: Sid</a>. </p>")
    statementId: name,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bot or bot alias that the
         resource policy is attached to.</p>")
    resourceArn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>The current revision of the resource policy. Use the revision ID to
         make sure that you are updating the most current version of a resource
         policy when you add a policy statement to a resource, delete a
         resource, or update a resource.</p>")
    revisionId: option<revisionId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bot or bot alias that the
         resource policy is attached to.</p>")
    resourceArn: option<amazonResourceName>,
  }
  @module("@aws-sdk/client-lex") @new
  external new: request => t = "CreateResourcePolicyStatementCommand"
  let make = (
    ~action,
    ~principal,
    ~effect,
    ~statementId,
    ~resourceArn,
    ~expectedRevisionId=?,
    ~condition=?,
    (),
  ) =>
    new({
      expectedRevisionId: expectedRevisionId,
      condition: condition,
      action: action,
      principal: principal,
      effect: effect,
      statementId: statementId,
      resourceArn: resourceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateExport = {
  type t
  type request = {
    @ocaml.doc("<p>An password to use to encrypt the exported archive. Using a password
         is optional, but you should encrypt the archive to protect the data in
         transit between Amazon Lex and your local computer.</p>")
    filePassword: option<importExportFilePassword>,
    @ocaml.doc("<p>The file format of the bot or bot locale definition files.</p>")
    fileFormat: importExportFileFormat,
    @ocaml.doc("<p>Specifies the type of resource to export, either a bot or a bot
         locale. You can only specify one type of resource to export.</p>")
    resourceSpecification: exportResourceSpecification,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the request to export a bot was
         created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The status of the export. When the status is <code>Completed</code>,
         you can use the  operation to get
         the pre-signed S3 URL link to your exported bot or bot locale.</p>")
    exportStatus: option<exportStatus>,
    @ocaml.doc("<p>The file format used for the bot or bot locale definition
         files.</p>")
    fileFormat: option<importExportFileFormat>,
    @ocaml.doc("<p>A description of the type of resource that was exported, either a
         bot or a bot locale.</p>")
    resourceSpecification: option<exportResourceSpecification>,
    @ocaml.doc("<p>An identifier for a specific request to create an export.</p>")
    exportId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "CreateExportCommand"
  let make = (~fileFormat, ~resourceSpecification, ~filePassword=?, ()) =>
    new({
      filePassword: filePassword,
      fileFormat: fileFormat,
      resourceSpecification: resourceSpecification,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBotVersion = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the locales that Amazon Lex adds to this version. You can
         choose the <code>Draft</code> version or any other previously published
         version for each locale. When you specify a source version, the locale
         data is copied from the source version to the new version.</p>")
    botVersionLocaleSpecification: botVersionLocaleSpecification,
    @ocaml.doc("<p>A description of the version. Use the description to help identify
         the version in lists.</p>")
    description: option<description>,
    @ocaml.doc("<p>The identifier of the bot to create the version for.</p>") botId: id,
  }
  type response = {
    @ocaml.doc("<p>A timestamp of the date and time that the version was
         created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>When you send a request to create or update a bot, Amazon Lex sets the
         status response element to <code>Creating</code>. After Amazon Lex builds
         the bot, it sets status to <code>Available</code>. If Amazon Lex can't build
         the bot, it sets status to <code>Failed</code>.</p>")
    botStatus: option<botStatus>,
    @ocaml.doc("<p>The source versions used for each locale in the new version.</p>")
    botVersionLocaleSpecification: option<botVersionLocaleSpecification>,
    @ocaml.doc("<p>The version number assigned to the version.</p>")
    botVersion: option<numericalBotVersion>,
    @ocaml.doc("<p>The description of the version specified in the request.</p>")
    description: option<description>,
    @ocaml.doc("<p>The bot identifier specified in the request.</p>") botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "CreateBotVersionCommand"
  let make = (~botVersionLocaleSpecification, ~botId, ~description=?, ()) =>
    new({
      botVersionLocaleSpecification: botVersionLocaleSpecification,
      description: description,
      botId: botId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartImport = {
  type t
  type request = {
    @ocaml.doc("<p>The password used to encrypt the zip archive that contains the bot
         or bot locale definition. You should always encrypt the zip archive to
         protect it during transit between your site and Amazon Lex.</p>")
    filePassword: option<importExportFilePassword>,
    @ocaml.doc("<p>The strategy to use when there is a name conflict between the
         imported resource and an existing resource. When the merge strategy is
            <code>FailOnConflict</code> existing resources are not overwritten
         and the import fails.</p>")
    mergeStrategy: mergeStrategy,
    @ocaml.doc("<p>Parameters for creating the bot or bot locale.</p>")
    resourceSpecification: importResourceSpecification,
    @ocaml.doc("<p>The unique identifier for the import. It is included in the response
         from the  operation.</p>")
    importId: id,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the import request was created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The current status of the import. When the status is
            <code>Complete</code> the bot or bot alias is ready to use.</p>")
    importStatus: option<importStatus>,
    @ocaml.doc("<p>The strategy used when there was a name conflict between the
         imported resource and an existing resource. When the merge strategy is
            <code>FailOnConflict</code> existing resources are not overwritten
         and the import fails.</p>")
    mergeStrategy: option<mergeStrategy>,
    @ocaml.doc("<p>The parameters used when importing the bot or bot locale.</p>")
    resourceSpecification: option<importResourceSpecification>,
    @ocaml.doc("<p>A unique identifier for the import.</p>") importId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "StartImportCommand"
  let make = (~mergeStrategy, ~resourceSpecification, ~importId, ~filePassword=?, ()) =>
    new({
      filePassword: filePassword,
      mergeStrategy: mergeStrategy,
      resourceSpecification: resourceSpecification,
      importId: importId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSlotTypes = {
  type t
  type request = {
    @ocaml.doc("<p>If the response from the <code>ListSlotTypes</code> operation
         contains more results than specified in the <code>maxResults</code>
         parameter, a token is returned in the response. Use that token in the
            <code>nextToken</code> parameter to return the next page of
         results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of slot types to return in each page of results.
         If there are fewer results than the max page size, only the actual
         number of results are returned.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Provides the specification of a filter used to limit the slot types
         in the response to only those that match the filter specification. You
         can only specify one filter and only one string to filter on.</p>")
    filters: option<slotTypeFilters>,
    @ocaml.doc("<p>Determines the sort order for the response from the
            <code>ListSlotTypes</code> operation. You can choose to sort by the
         slot type name or last updated date in either ascending or descending
         order.</p>")
    sortBy: option<slotTypeSortBy>,
    @ocaml.doc("<p>The identifier of the language and locale of the slot types to list.
         The string must match one of the supported locales. For more
         information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The version of the bot that contains the slot type.</p>") botVersion: botVersion,
    @ocaml.doc("<p>The unique identifier of the bot that contains the slot
         types.</p>")
    botId: id,
  }
  type response = {
    @ocaml.doc("<p>A token that indicates whether there are more results to return in a
         response to the <code>ListSlotTypes</code> operation. If the
            <code>nextToken</code> field is present, you send the contents as
         the <code>nextToken</code> parameter of a <code>ListSlotTypes</code>
         operation request to get the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information for the slot types that meet the filter criteria
         specified in the request. The length of the list is specified in the
            <code>maxResults</code> parameter of the request. If there are more
         slot types available, the <code>nextToken</code> field contains a token
         to get the next page of results.</p>")
    slotTypeSummaries: option<slotTypeSummaryList>,
    @ocaml.doc("<p>The language and local of the slot types in the list.</p>")
    localeId: option<localeId>,
    @ocaml.doc("<p>The version of the bot that contains the slot types.</p>")
    botVersion: option<botVersion>,
    @ocaml.doc("<p>The identifier of the bot that contains the slot types.</p>") botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "ListSlotTypesCommand"
  let make = (
    ~localeId,
    ~botVersion,
    ~botId,
    ~nextToken=?,
    ~maxResults=?,
    ~filters=?,
    ~sortBy=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      sortBy: sortBy,
      localeId: localeId,
      botVersion: botVersion,
      botId: botId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListImports = {
  type t
  type request = {
    @ocaml.doc("<p>If the response from the <code>ListImports</code> operation contains
         more results than specified in the <code>maxResults</code> parameter, a
         token is returned in the response. Use that token in the
            <code>nextToken</code> parameter to return the next page of
         results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of imports to return in each page of results. If
         there are fewer results than the max page size, only the actual number
         of results are returned.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Provides the specification of a filter used to limit the bots in the
         response to only those that match the filter specification. You can
         only specify one filter and one string to filter on.</p>")
    filters: option<importFilters>,
    @ocaml.doc("<p>Determines the field that the list of imports is sorted by. You can
         sort by the <code>LastUpdatedDateTime</code> field in ascending or
         descending order.</p>")
    sortBy: option<importSortBy>,
    @ocaml.doc("<p>The version of the bot to list imports for.</p>")
    botVersion: option<draftBotVersion>,
    @ocaml.doc("<p>The unique identifier that Amazon Lex assigned to the bot.</p>")
    botId: option<id>,
  }
  type response = {
    @ocaml.doc("<p>A token that indicates whether there are more results to return in a
         response to the <code>ListImports</code> operation. If the
            <code>nextToken</code> field is present, you send the contents as
         the <code>nextToken</code> parameter of a <code>ListImports</code>
         operation request to get the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information for the imports that meet the filter criteria
         specified in the request. The length of the list is specified in the
            <code>maxResults</code> parameter. If there are more imports
         available, the <code>nextToken</code> field contains a token to get the
         next page of results.</p>")
    importSummaries: option<importSummaryList>,
    @ocaml.doc("<p>The version of the bot that was imported. It will always be
            <code>DRAFT</code>.</p>")
    botVersion: option<draftBotVersion>,
    @ocaml.doc("<p>The unique identifier assigned by Amazon Lex to the bot.</p>") botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "ListImportsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~sortBy=?, ~botVersion=?, ~botId=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      sortBy: sortBy,
      botVersion: botVersion,
      botId: botId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBots = {
  type t
  type request = {
    @ocaml.doc("<p>If the response from the <code>ListBots</code> operation contains
         more results than specified in the <code>maxResults</code> parameter, a
         token is returned in the response. Use that token in the
            <code>nextToken</code> parameter to return the next page of
         results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of bots to return in each page of results. If
         there are fewer results than the maximum page size, only the actual
         number of results are returned.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Provides the specification of a filter used to limit the bots in the
         response to only those that match the filter specification. You can
         only specify one filter and one string to filter on.</p>")
    filters: option<botFilters>,
    @ocaml.doc("<p>Specifies sorting parameters for the list of bots. You can specify
         that the list be sorted by bot name in ascending or descending
         order.</p>")
    sortBy: option<botSortBy>,
  }
  type response = {
    @ocaml.doc("<p>A token that indicates whether there are more results to return in a
         response to the <code>ListBots</code> operation. If the
            <code>nextToken</code> field is present, you send the contents as
         the <code>nextToken</code> parameter of a <code>ListBots</code>
         operation request to get the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information for the bots that meet the filter criteria
         specified in the request. The length of the list is specified in the
            <code>maxResults</code> parameter of the request. If there are more
         bots available, the <code>nextToken</code> field contains a token to
         the next page of results.</p>")
    botSummaries: option<botSummaryList>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "ListBotsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~sortBy=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters, sortBy: sortBy})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBotLocales = {
  type t
  type request = {
    @ocaml.doc("<p>If the response from the <code>ListBotLocales</code> operation
         contains more results than specified in the <code>maxResults</code>
         parameter, a token is returned in the response. Use that token as the
            <code>nextToken</code> parameter to return the next page of results.
      </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of aliases to return in each page of results. If
         there are fewer results than the max page size, only the actual number
         of results are returned.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Provides the specification for a filter used to limit the response
         to only those locales that match the filter specification. You can only
         specify one filter and one value to filter on.</p>")
    filters: option<botLocaleFilters>,
    @ocaml.doc("<p>Specifies sorting parameters for the list of locales. You can sort
         by locale name in ascending or descending order.</p>")
    sortBy: option<botLocaleSortBy>,
    @ocaml.doc("<p>The version of the bot to list locales for.</p>") botVersion: botVersion,
    @ocaml.doc("<p>The identifier of the bot to list locales for.</p>") botId: id,
  }
  type response = {
    @ocaml.doc("<p>Summary information for the locales that meet the filter criteria
         specified in the request. The length of the list is specified in the
            <code>maxResults</code> parameter of the request. If there are more
         locales available, the <code>nextToken</code> field contains a token to
         get the next page of results.</p>")
    botLocaleSummaries: option<botLocaleSummaryList>,
    @ocaml.doc("<p>A token that indicates whether there are more results to return in a
         response to the <code>ListBotLocales</code> operation. If the
            <code>nextToken</code> field is present, you send the contents as
         the <code>nextToken</code> parameter of a <code>ListBotLocales</code>
         operation request to get the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The version of the bot.</p>") botVersion: option<botVersion>,
    @ocaml.doc("<p>The identifier of the bot to list locales for.</p>") botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "ListBotLocalesCommand"
  let make = (~botVersion, ~botId, ~nextToken=?, ~maxResults=?, ~filters=?, ~sortBy=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      sortBy: sortBy,
      botVersion: botVersion,
      botId: botId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeImport = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the import to describe.</p>") importId: id,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the import was last updated.</p>")
    lastUpdatedDateTime: option<timestamp_>,
    @ocaml.doc("<p>The date and time that the import was created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>If the <code>importStatus</code> field is <code>Failed</code>, this
         provides one or more reasons for the failture.</p>")
    failureReasons: option<failureReasons>,
    @ocaml.doc("<p>The status of the import process. When the status is
            <code>Completed</code> the resource is imported and ready for
         use.</p>")
    importStatus: option<importStatus>,
    @ocaml.doc("<p>The strategy used when there was a name conflict between the
         imported resource and an existing resource. When the merge strategy is
            <code>FailOnConflict</code> existing resources are not overwritten
         and the import fails.</p>")
    mergeStrategy: option<mergeStrategy>,
    @ocaml.doc("<p>The name of the imported resource.</p>") importedResourceName: option<name>,
    @ocaml.doc("<p>The unique identifier that Amazon Lex assigned to the resource created by
         the import.</p>")
    importedResourceId: option<importedResourceId>,
    @ocaml.doc("<p>The specifications of the imported bot or bot locale.</p>")
    resourceSpecification: option<importResourceSpecification>,
    @ocaml.doc("<p>The unique identifier of the described import.</p>") importId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DescribeImportCommand"
  let make = (~importId, ()) => new({importId: importId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSlotType = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the language and locale that contains the slot
         type. The string must match one of the supported locales. For more
         information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The version of the bot that contains the slot type. Must be
            <code>DRAFT</code>.</p>")
    botVersion: draftBotVersion,
    @ocaml.doc("<p>The identifier of the bot that contains the slot type.</p>") botId: id,
    @ocaml.doc("<p>The new built-in slot type that should be used as the parent of this
         slot type.</p>")
    parentSlotTypeSignature: option<slotTypeSignature>,
    @ocaml.doc("<p>The strategy that Amazon Lex should use when deciding on a value from the
         list of slot type values.</p>")
    valueSelectionSetting: slotValueSelectionSetting,
    @ocaml.doc("<p>A new list of values and their optional synonyms that define the
         values that the slot type can take.</p>")
    slotTypeValues: option<slotTypeValues>,
    @ocaml.doc("<p>The new description of the slot type.</p>") description: option<description>,
    @ocaml.doc("<p>The new name of the slot type.</p>") slotTypeName: name,
    @ocaml.doc("<p>The unique identifier of the slot type to update.</p>") slotTypeId: id,
  }
  type response = {
    @ocaml.doc("<p>A timestamp of the date and time that the slot type was last
         updated.</p>")
    lastUpdatedDateTime: option<timestamp_>,
    @ocaml.doc("<p>The timestamp of the date and time that the slot type was
         created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The language and locale of the updated slot type.</p>")
    localeId: option<localeId>,
    @ocaml.doc("<p>The version of the bot that contains the slot type. This is always
            <code>DRAFT</code>.</p>")
    botVersion: option<draftBotVersion>,
    @ocaml.doc("<p>The identifier of the bot that contains the slot type.</p>") botId: option<id>,
    @ocaml.doc("<p>The updated signature of the built-in slot type that is the parent
         of this slot type.</p>")
    parentSlotTypeSignature: option<slotTypeSignature>,
    @ocaml.doc("<p>The updated strategy that Amazon Lex uses to determine which value to
         select from the slot type.</p>")
    valueSelectionSetting: option<slotValueSelectionSetting>,
    @ocaml.doc("<p>The updated values that the slot type provides.</p>")
    slotTypeValues: option<slotTypeValues>,
    @ocaml.doc("<p>The updated description of the slot type.</p>") description: option<description>,
    @ocaml.doc("<p>The updated name of the slot type.</p>") slotTypeName: option<name>,
    @ocaml.doc("<p>The unique identifier of the updated slot type.</p>") slotTypeId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "UpdateSlotTypeCommand"
  let make = (
    ~localeId,
    ~botVersion,
    ~botId,
    ~valueSelectionSetting,
    ~slotTypeName,
    ~slotTypeId,
    ~parentSlotTypeSignature=?,
    ~slotTypeValues=?,
    ~description=?,
    (),
  ) =>
    new({
      localeId: localeId,
      botVersion: botVersion,
      botId: botId,
      parentSlotTypeSignature: parentSlotTypeSignature,
      valueSelectionSetting: valueSelectionSetting,
      slotTypeValues: slotTypeValues,
      description: description,
      slotTypeName: slotTypeName,
      slotTypeId: slotTypeId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIntents = {
  type t
  type request = {
    @ocaml.doc("<p>If the response from the <code>ListIntents</code> operation contains
         more results than specified in the <code>maxResults</code> parameter, a
         token is returned in the response. Use that token in the
            <code>nextToken</code> parameter to return the next page of
         results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of intents to return in each page of results. If
         there are fewer results than the max page size, only the actual number
         of results are returned.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Provides the specification of a filter used to limit the intents in
         the response to only those that match the filter specification. You can
         only specify one filter and only one string to filter on.</p>")
    filters: option<intentFilters>,
    @ocaml.doc("<p>Determines the sort order for the response from the
            <code>ListIntents</code> operation. You can choose to sort by the
         intent name or last updated date in either ascending or descending
         order.</p>")
    sortBy: option<intentSortBy>,
    @ocaml.doc("<p>The identifier of the language and locale of the intents to list.
         The string must match one of the supported locales. For more
         information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The version of the bot that contains the intent.</p>") botVersion: botVersion,
    @ocaml.doc("<p>The unique identifier of the bot that contains the intent.</p>") botId: id,
  }
  type response = {
    @ocaml.doc("<p>A token that indicates whether there are more results to return in a
         response to the <code>ListIntents</code> operation. If the
            <code>nextToken</code> field is present, you send the contents as
         the <code>nextToken</code> parameter of a <code>ListIntents</code>
         operation request to get the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information for the intents that meet the filter criteria
         specified in the request. The length of the list is specified in the
            <code>maxResults</code> parameter of the request. If there are more
         intents available, the <code>nextToken</code> field contains a token to
         get the next page of results.</p>")
    intentSummaries: option<intentSummaryList>,
    @ocaml.doc("<p>The language and locale of the intents in the list.</p>")
    localeId: option<localeId>,
    @ocaml.doc("<p>The version of the bot that contains the intent.</p>")
    botVersion: option<botVersion>,
    @ocaml.doc("<p>The identifier of the bot that contains the intent.</p>") botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "ListIntentsCommand"
  let make = (
    ~localeId,
    ~botVersion,
    ~botId,
    ~nextToken=?,
    ~maxResults=?,
    ~filters=?,
    ~sortBy=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      sortBy: sortBy,
      localeId: localeId,
      botVersion: botVersion,
      botId: botId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListExports = {
  type t
  type request = {
    @ocaml.doc("<p>If the response from the <code>ListExports</code> operation contans
         more results that specified in the <code>maxResults</code> parameter, a
         token is returned in the response. Use that token in the
            <code>nextToken</code> parameter to return the next page of
         results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of exports to return in each page of results. If
         there are fewer results than the max page size, only the actual number
         of results are returned.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Provides the specification of a filter used to limit the exports in
         the response to only those that match the filter specification. You can
         only specify one filter and one string to filter on.</p>")
    filters: option<exportFilters>,
    @ocaml.doc("<p>Determines the field that the list of exports is sorted by. You can
         sort by the <code>LastUpdatedDateTime</code> field in ascending or
         descending order.</p>")
    sortBy: option<exportSortBy>,
    @ocaml.doc("<p>The version of the bot to list exports for. </p>")
    botVersion: option<botVersion>,
    @ocaml.doc("<p>The unique identifier that Amazon Lex assigned to the bot.</p>")
    botId: option<id>,
  }
  type response = {
    @ocaml.doc("<p>A token that indicates whether there are more results to return in a
         response to the <code>ListExports</code> operation. If the
            <code>nextToken</code> field is present, you send the contents as
         the <code>nextToken</code> parameter of a <code>ListExports</code>
         operation request to get the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information for the exports that meet the filter criteria
         specified in the request. The length of the list is specified in the
            <code>maxResults</code> parameter. If there are more exports
         available, the <code>nextToken</code> field contains a token to get the
         next page of results.</p>")
    exportSummaries: option<exportSummaryList>,
    @ocaml.doc("<p>The version of the bot that was exported.</p>") botVersion: option<botVersion>,
    @ocaml.doc("<p>The unique identifier assigned to the bot by Amazon Lex.</p>") botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "ListExportsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~sortBy=?, ~botVersion=?, ~botId=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      sortBy: sortBy,
      botVersion: botVersion,
      botId: botId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSlotType = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the language and locale of the slot type to
         describe. The string must match one of the supported locales. For more
         information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The version of the bot associated with the slot type.</p>")
    botVersion: botVersion,
    @ocaml.doc("<p>The identifier of the bot associated with the slot type.</p>") botId: id,
    @ocaml.doc("<p>The identifier of the slot type.</p>") slotTypeId: id,
  }
  type response = {
    @ocaml.doc("<p>A timestamp of the date and time that the slot type was last
         updated.</p>")
    lastUpdatedDateTime: option<timestamp_>,
    @ocaml.doc("<p>A timestamp of the date and time that the slot type was
         created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The language and locale specified for the slot type.</p>")
    localeId: option<localeId>,
    @ocaml.doc("<p>The version of the bot associated with the slot type.</p>")
    botVersion: option<botVersion>,
    @ocaml.doc("<p>The identifier of the bot associated with the slot type.</p>") botId: option<id>,
    @ocaml.doc("<p>The built in slot type used as a parent to this slot type.</p>")
    parentSlotTypeSignature: option<slotTypeSignature>,
    @ocaml.doc("<p>The strategy that Amazon Lex uses to choose a value from a list of
         possible values.</p>")
    valueSelectionSetting: option<slotValueSelectionSetting>,
    @ocaml.doc("<p>The values that the slot type can take. Includes any synonyms for
         the slot type values.</p>")
    slotTypeValues: option<slotTypeValues>,
    @ocaml.doc("<p>The description specified for the slot type.</p>")
    description: option<description>,
    @ocaml.doc("<p>The name specified for the slot type.</p>") slotTypeName: option<name>,
    @ocaml.doc("<p>The unique identifier for the slot type.</p>") slotTypeId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DescribeSlotTypeCommand"
  let make = (~localeId, ~botVersion, ~botId, ~slotTypeId, ()) =>
    new({localeId: localeId, botVersion: botVersion, botId: botId, slotTypeId: slotTypeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSlotType = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the language and locale that the slot type will be
         used in. The string must match one of the supported locales. All of the
         bots, intents, and slots used by the slot type must have the same
         locale. For more information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The identifier of the bot version associated with this slot
         type.</p>")
    botVersion: draftBotVersion,
    @ocaml.doc("<p>The identifier of the bot associated with this slot type.</p>") botId: id,
    @ocaml.doc("<p>The built-in slot type used as a parent of this slot type. When you
         define a parent slot type, the new slot type has the configuration of
         the parent slot type.</p>
         <p>Only <code>AMAZON.AlphaNumeric</code> is supported.</p>")
    parentSlotTypeSignature: option<slotTypeSignature>,
    @ocaml.doc("<p>Determines the strategy that Amazon Lex uses to select a value from the
         list of possible values. The field can be set to one of the following
         values:</p>
         <ul>
            <li>
               <p>
                  <code>OriginalValue</code> - Returns the value entered by the
               user, if the user value is similar to the slot value.</p>
            </li>
            <li>
               <p>
                  <code>TopResolution</code> - If there is a resolution list for
               the slot, return the first value in the resolution list. If there
               is no resolution list, return null.</p>
            </li>
         </ul>
         <p>If you don't specify the <code>valueSelectionSetting</code>
         parameter, the default is <code>OriginalValue</code>.</p>")
    valueSelectionSetting: slotValueSelectionSetting,
    @ocaml.doc("<p>A list of <code>SlotTypeValue</code> objects that defines the values
         that the slot type can take. Each value can have a list of synonyms,
         additional values that help train the machine learning model about the
         values that it resolves for a slot.</p>")
    slotTypeValues: option<slotTypeValues>,
    @ocaml.doc("<p>A description of the slot type. Use the description to help identify
         the slot type in lists.</p>")
    description: option<description>,
    @ocaml.doc("<p>The name for the slot. A slot type name must be unique within the
         account.</p>")
    slotTypeName: name,
  }
  type response = {
    @ocaml.doc("<p>A timestamp of the date and time that the slot type was
         created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The specified language and local specified for the slot type.</p>")
    localeId: option<localeId>,
    @ocaml.doc("<p>The version of the bot associated with the slot type.</p>")
    botVersion: option<draftBotVersion>,
    @ocaml.doc("<p>The identifier for the bot associated with the slot type.</p>")
    botId: option<id>,
    @ocaml.doc("<p>The signature of the base slot type specified for the slot
         type.</p>")
    parentSlotTypeSignature: option<slotTypeSignature>,
    @ocaml.doc("<p>The strategy that Amazon Lex uses to select a value from the list of
         possible values.</p>")
    valueSelectionSetting: option<slotValueSelectionSetting>,
    @ocaml.doc("<p>The list of values that the slot type can assume.</p>")
    slotTypeValues: option<slotTypeValues>,
    @ocaml.doc("<p>The description specified for the slot type.</p>")
    description: option<description>,
    @ocaml.doc("<p>The name specified for the slot type.</p>") slotTypeName: option<name>,
    @ocaml.doc("<p>The unique identifier assigned to the slot type. Use this to
         identify the slot type in the <code>UpdateSlotType</code> and
            <code>DeleteSlotType</code> operations.</p>")
    slotTypeId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "CreateSlotTypeCommand"
  let make = (
    ~localeId,
    ~botVersion,
    ~botId,
    ~valueSelectionSetting,
    ~slotTypeName,
    ~parentSlotTypeSignature=?,
    ~slotTypeValues=?,
    ~description=?,
    (),
  ) =>
    new({
      localeId: localeId,
      botVersion: botVersion,
      botId: botId,
      parentSlotTypeSignature: parentSlotTypeSignature,
      valueSelectionSetting: valueSelectionSetting,
      slotTypeValues: slotTypeValues,
      description: description,
      slotTypeName: slotTypeName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBotAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the bot with the updated alias.</p>") botId: id,
    sentimentAnalysisSettings: option<sentimentAnalysisSettings>,
    @ocaml.doc("<p>The new settings for storing conversation logs in Amazon CloudWatch Logs and
         Amazon S3 buckets.</p>")
    conversationLogSettings: option<conversationLogSettings>,
    @ocaml.doc("<p>The new Lambda functions to use in each locale for the bot
         alias.</p>")
    botAliasLocaleSettings: option<botAliasLocaleSettingsMap>,
    @ocaml.doc("<p>The new bot version to assign to the bot alias.</p>")
    botVersion: option<botVersion>,
    @ocaml.doc("<p>The new description to assign to the bot alias.</p>")
    description: option<description>,
    @ocaml.doc("<p>The new name to assign to the bot alias.</p>") botAliasName: name,
    @ocaml.doc("<p>The unique identifier of the bot alias.</p>") botAliasId: botAliasId,
  }
  type response = {
    @ocaml.doc("<p>A timestamp of the date and time that the bot was last
         updated.</p>")
    lastUpdatedDateTime: option<timestamp_>,
    @ocaml.doc("<p>A timestamp of the date and time that the bot was created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The identifier of the bot with the updated alias.</p>") botId: option<id>,
    @ocaml.doc("<p>The current status of the bot alias. When the status is
            <code>Available</code> the alias is ready for use.</p>")
    botAliasStatus: option<botAliasStatus>,
    sentimentAnalysisSettings: option<sentimentAnalysisSettings>,
    @ocaml.doc("<p>The updated settings for storing conversation logs in Amazon CloudWatch Logs and
         Amazon S3 buckets.</p>")
    conversationLogSettings: option<conversationLogSettings>,
    @ocaml.doc("<p>The updated Lambda functions to use in each locale for the bot
         alias.</p>")
    botAliasLocaleSettings: option<botAliasLocaleSettingsMap>,
    @ocaml.doc("<p>The updated version of the bot that the alias points to.</p>")
    botVersion: option<botVersion>,
    @ocaml.doc("<p>The updated description of the bot alias.</p>") description: option<description>,
    @ocaml.doc("<p>The updated name of the bot alias.</p>") botAliasName: option<name>,
    @ocaml.doc("<p>The identifier of the updated bot alias.</p>") botAliasId: option<botAliasId>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "UpdateBotAliasCommand"
  let make = (
    ~botId,
    ~botAliasName,
    ~botAliasId,
    ~sentimentAnalysisSettings=?,
    ~conversationLogSettings=?,
    ~botAliasLocaleSettings=?,
    ~botVersion=?,
    ~description=?,
    (),
  ) =>
    new({
      botId: botId,
      sentimentAnalysisSettings: sentimentAnalysisSettings,
      conversationLogSettings: conversationLogSettings,
      botAliasLocaleSettings: botAliasLocaleSettings,
      botVersion: botVersion,
      description: description,
      botAliasName: botAliasName,
      botAliasId: botAliasId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBotAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the bot associated with the bot alias to
         describe.</p>")
    botId: id,
    @ocaml.doc("<p>The identifier of the bot alias to describe.</p>") botAliasId: botAliasId,
  }
  type response = {
    @ocaml.doc("<p>A timestamp of the date and time that the alias was last
         updated.</p>")
    lastUpdatedDateTime: option<timestamp_>,
    @ocaml.doc("<p>A timestamp of the date and time that the alias was created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The identifier of the bot associated with the bot alias.</p>") botId: option<id>,
    @ocaml.doc("<p>The current status of the alias. When the alias is
            <code>Available</code>, the alias is ready for use with your
         bot.</p>")
    botAliasStatus: option<botAliasStatus>,
    @ocaml.doc("<p>A list of events that affect a bot alias. For example, an event is
         recorded when the version that the alias points to changes.</p>")
    botAliasHistoryEvents: option<botAliasHistoryEventsList>,
    sentimentAnalysisSettings: option<sentimentAnalysisSettings>,
    @ocaml.doc("<p>Specifics of how Amazon Lex logs text and audio conversations with the
         bot associated with the alias.</p>")
    conversationLogSettings: option<conversationLogSettings>,
    @ocaml.doc("<p>The locale settings that are unique to the alias.</p>")
    botAliasLocaleSettings: option<botAliasLocaleSettingsMap>,
    @ocaml.doc("<p>The version of the bot associated with the bot alias.</p>")
    botVersion: option<botVersion>,
    @ocaml.doc("<p>The description of the bot alias.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the bot alias.</p>") botAliasName: option<name>,
    @ocaml.doc("<p>The identifier of the bot alias.</p>") botAliasId: option<botAliasId>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DescribeBotAliasCommand"
  let make = (~botId, ~botAliasId, ()) => new({botId: botId, botAliasId: botAliasId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBotAlias = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags to add to the bot alias. You can only add tags when
         you create an alias, you can't use the <code>UpdateBotAlias</code>
         operation to update the tags on a bot alias. To update tags, use the
            <code>TagResource</code> operation.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The unique identifier of the bot that the alias applies to.</p>") botId: id,
    sentimentAnalysisSettings: option<sentimentAnalysisSettings>,
    @ocaml.doc("<p>Specifies whether Amazon Lex logs text and audio for a conversation with
         the bot. When you enable conversation logs, text logs store text input,
         transcripts of audio input, and associated metadata in Amazon CloudWatch Logs. Audio
         logs store audio input in Amazon S3.</p>")
    conversationLogSettings: option<conversationLogSettings>,
    @ocaml.doc("<p>Maps configuration information to a specific locale. You can use
         this parameter to specify a specific Lambda function to run different
         functions in different locales.</p>")
    botAliasLocaleSettings: option<botAliasLocaleSettingsMap>,
    @ocaml.doc("<p>The version of the bot that this alias points to. You can use the
             operation to change the bot
         version associated with the alias.</p>")
    botVersion: option<numericalBotVersion>,
    @ocaml.doc("<p>A description of the alias. Use this description to help identify
         the alias.</p>")
    description: option<description>,
    @ocaml.doc("<p>The alias to create. The name must be unique for the bot.</p>")
    botAliasName: name,
  }
  type response = {
    @ocaml.doc("<p>A list of tags associated with the bot alias.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>A Unix timestamp indicating the date and time that the bot alias was
         created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The unique identifier of the bot that this alias applies to.</p>")
    botId: option<id>,
    @ocaml.doc("<p>The current status of the alias. The alias is first put into the
            <code>Creating</code> state. When the alias is ready to be used, it
         is put into the <code>Available</code> state. You can use the
            <code>DescribeBotAlias</code> operation to get the current state of
         an alias.</p>")
    botAliasStatus: option<botAliasStatus>,
    sentimentAnalysisSettings: option<sentimentAnalysisSettings>,
    @ocaml.doc("<p>The conversation log settings specified for the alias.</p>")
    conversationLogSettings: option<conversationLogSettings>,
    @ocaml.doc("<p>Configuration information for a specific locale.</p>")
    botAliasLocaleSettings: option<botAliasLocaleSettingsMap>,
    @ocaml.doc("<p>The version of the bot associated with this alias.</p>")
    botVersion: option<numericalBotVersion>,
    @ocaml.doc("<p>The description specified for the bot alias.</p>")
    description: option<description>,
    @ocaml.doc("<p>The name specified for the bot alias.</p>") botAliasName: option<name>,
    @ocaml.doc("<p>The unique identifier of the bot alias.</p>") botAliasId: option<botAliasId>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "CreateBotAliasCommand"
  let make = (
    ~botId,
    ~botAliasName,
    ~tags=?,
    ~sentimentAnalysisSettings=?,
    ~conversationLogSettings=?,
    ~botAliasLocaleSettings=?,
    ~botVersion=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      botId: botId,
      sentimentAnalysisSettings: sentimentAnalysisSettings,
      conversationLogSettings: conversationLogSettings,
      botAliasLocaleSettings: botAliasLocaleSettings,
      botVersion: botVersion,
      description: description,
      botAliasName: botAliasName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateIntent = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the language and locale where this intent is used.
         The string must match one of the supported locales. For more
         information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The version of the bot that contains the intent. Must be
            <code>DRAFT</code>.</p>")
    botVersion: draftBotVersion,
    @ocaml.doc("<p>The identifier of the bot that contains the intent.</p>") botId: id,
    @ocaml.doc("<p>New configuration settings for connecting to an Amazon Kendra index.</p>")
    kendraConfiguration: option<kendraConfiguration>,
    @ocaml.doc("<p>A new list of contexts that Amazon Lex activates when the intent is
         fulfilled.</p>")
    outputContexts: option<outputContextsList>,
    @ocaml.doc("<p>A new list of contexts that must be active in order for Amazon Lex to
         consider the intent.</p>")
    inputContexts: option<inputContextsList>,
    @ocaml.doc("<p>The new response that Amazon Lex sends the user when the intent is
         closed.</p>")
    intentClosingSetting: option<intentClosingSetting>,
    @ocaml.doc("<p>New prompts that Amazon Lex sends to the user to confirm the completion
         of an intent.</p>")
    intentConfirmationSetting: option<intentConfirmationSetting>,
    @ocaml.doc("<p>A new list of slots and their priorities that are contained by the
         intent.</p>")
    slotPriorities: option<slotPrioritiesList>,
    @ocaml.doc("<p>The new Lambda function to call when all of the intents required
         slots are provided and the intent is ready for fulfillment.</p>")
    fulfillmentCodeHook: option<fulfillmentCodeHookSettings>,
    @ocaml.doc("<p>The new Lambda function to use between each turn of the conversation
         with the bot.</p>")
    dialogCodeHook: option<dialogCodeHookSettings>,
    @ocaml.doc("<p>New utterances used to invoke the intent.</p>")
    sampleUtterances: option<sampleUtterancesList>,
    @ocaml.doc("<p>The signature of the new built-in intent to use as the parent of
         this intent.</p>")
    parentIntentSignature: option<intentSignature>,
    @ocaml.doc("<p>The new description of the intent.</p>") description: option<description>,
    @ocaml.doc("<p>The new name for the intent.</p>") intentName: name,
    @ocaml.doc("<p>The unique identifier of the intent to update.</p>") intentId: id,
  }
  type response = {
    @ocaml.doc("<p>A timestamp of the last time that the intent was modified.</p>")
    lastUpdatedDateTime: option<timestamp_>,
    @ocaml.doc("<p>A timestamp of when the intent was created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The updated language and locale of the intent.</p>") localeId: option<localeId>,
    @ocaml.doc("<p>The version of the bot that contains the intent. Will always be
            <code>DRAFT</code>.</p>")
    botVersion: option<draftBotVersion>,
    @ocaml.doc("<p>The identifier of the bot that contains the intent.</p>") botId: option<id>,
    @ocaml.doc("<p>The updated configuration for connecting to an Amazon Kendra index with the
            <code>AMAZON.KendraSearchIntent</code> intent.</p>")
    kendraConfiguration: option<kendraConfiguration>,
    @ocaml.doc("<p>The updated list of contexts that Amazon Lex activates when the intent is
         fulfilled.</p>")
    outputContexts: option<outputContextsList>,
    @ocaml.doc("<p>The updated list of contexts that must be active for the intent to
         be considered by Amazon Lex.</p>")
    inputContexts: option<inputContextsList>,
    @ocaml.doc("<p>The updated response that Amazon Lex sends the user when the intent is
         closed.</p>")
    intentClosingSetting: option<intentClosingSetting>,
    @ocaml.doc("<p>The updated prompts that Amazon Lex sends to the user to confirm the
         completion of an intent.</p>")
    intentConfirmationSetting: option<intentConfirmationSetting>,
    @ocaml.doc("<p>The updated list of slots and their priorities that are elicited
         from the user for the intent.</p>")
    slotPriorities: option<slotPrioritiesList>,
    @ocaml.doc("<p>The updated Lambda function called when the intent is ready for
         fulfillment.</p>")
    fulfillmentCodeHook: option<fulfillmentCodeHookSettings>,
    @ocaml.doc("<p>The updated Lambda function called during each turn of the
         conversation with the user.</p>")
    dialogCodeHook: option<dialogCodeHookSettings>,
    @ocaml.doc("<p>The updated list of sample utterances for the intent.</p>")
    sampleUtterances: option<sampleUtterancesList>,
    @ocaml.doc("<p>The updated built-in intent that is the parent of this
         intent.</p>")
    parentIntentSignature: option<intentSignature>,
    @ocaml.doc("<p>The updated description of the intent.</p>") description: option<description>,
    @ocaml.doc("<p>The updated name of the intent.</p>") intentName: option<name>,
    @ocaml.doc("<p>The identifier of the intent that was updated.</p>") intentId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "UpdateIntentCommand"
  let make = (
    ~localeId,
    ~botVersion,
    ~botId,
    ~intentName,
    ~intentId,
    ~kendraConfiguration=?,
    ~outputContexts=?,
    ~inputContexts=?,
    ~intentClosingSetting=?,
    ~intentConfirmationSetting=?,
    ~slotPriorities=?,
    ~fulfillmentCodeHook=?,
    ~dialogCodeHook=?,
    ~sampleUtterances=?,
    ~parentIntentSignature=?,
    ~description=?,
    (),
  ) =>
    new({
      localeId: localeId,
      botVersion: botVersion,
      botId: botId,
      kendraConfiguration: kendraConfiguration,
      outputContexts: outputContexts,
      inputContexts: inputContexts,
      intentClosingSetting: intentClosingSetting,
      intentConfirmationSetting: intentConfirmationSetting,
      slotPriorities: slotPriorities,
      fulfillmentCodeHook: fulfillmentCodeHook,
      dialogCodeHook: dialogCodeHook,
      sampleUtterances: sampleUtterances,
      parentIntentSignature: parentIntentSignature,
      description: description,
      intentName: intentName,
      intentId: intentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIntent = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the language and locale of the intent to describe.
         The string must match one of the supported locales. For more
         information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The version of the bot associated with the intent.</p>") botVersion: botVersion,
    @ocaml.doc("<p>The identifier of the bot associated with the intent.</p>") botId: id,
    @ocaml.doc("<p>The identifier of the intent to describe.</p>") intentId: id,
  }
  type response = {
    @ocaml.doc("<p>A timestamp of the date and time that the intent was last
         updated.</p>")
    lastUpdatedDateTime: option<timestamp_>,
    @ocaml.doc("<p>A timestamp of the date and time that the intent was created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The language and locale specified for the intent.</p>")
    localeId: option<localeId>,
    @ocaml.doc("<p>The version of the bot associated with the intent.</p>")
    botVersion: option<draftBotVersion>,
    @ocaml.doc("<p>The identifier of the bot associated with the intent.</p>") botId: option<id>,
    @ocaml.doc("<p>Configuration information required to use the
            <code>AMAZON.KendraSearchIntent</code> intent.</p>")
    kendraConfiguration: option<kendraConfiguration>,
    @ocaml.doc("<p>A list of contexts that are activated when the intent is
         fulfilled.</p>")
    outputContexts: option<outputContextsList>,
    @ocaml.doc("<p>A list of contexts that must be active for the intent to be
         considered for sending to the user.</p>")
    inputContexts: option<inputContextsList>,
    @ocaml.doc("<p>The response that Amazon Lex sends to when the intent is closed.</p>")
    intentClosingSetting: option<intentClosingSetting>,
    @ocaml.doc("<p>Prompts that Amazon Lex sends to the user to confirm completion of an
         intent.</p>")
    intentConfirmationSetting: option<intentConfirmationSetting>,
    @ocaml.doc("<p>The list that determines the priority that slots should be elicited
         from the user.</p>")
    slotPriorities: option<slotPrioritiesList>,
    @ocaml.doc("<p>The Lambda function called when the intent is complete and ready for
         fulfillment.</p>")
    fulfillmentCodeHook: option<fulfillmentCodeHookSettings>,
    @ocaml.doc("<p>The Lambda function called during each turn of a conversation with
         the intent.</p>")
    dialogCodeHook: option<dialogCodeHookSettings>,
    @ocaml.doc("<p>User utterances that trigger this intent.</p>")
    sampleUtterances: option<sampleUtterancesList>,
    @ocaml.doc("<p>The identifier of the built-in intent that this intent is derived
         from, if any.</p>")
    parentIntentSignature: option<intentSignature>,
    @ocaml.doc("<p>The description of the intent.</p>") description: option<description>,
    @ocaml.doc("<p>The name specified for the intent.</p>") intentName: option<name>,
    @ocaml.doc("<p>The unique identifier assigned to the intent when it was
         created.</p>")
    intentId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DescribeIntentCommand"
  let make = (~localeId, ~botVersion, ~botId, ~intentId, ()) =>
    new({localeId: localeId, botVersion: botVersion, botId: botId, intentId: intentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIntent = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the language and locale where this intent is used.
         All of the bots, slot types, and slots used by the intent must have the
         same locale. For more information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The identifier of the version of the bot associated with this
         intent.</p>")
    botVersion: draftBotVersion,
    @ocaml.doc("<p>The identifier of the bot associated with this intent.</p>") botId: id,
    @ocaml.doc("<p>Configuration information required to use the
            <code>AMAZON.KendraSearchIntent</code> intent to connect to an Amazon Kendra
         index. The <code>AMAZON.KendraSearchIntent</code> intent is called when
         Amazon Lex can't determine another intent to invoke.</p>")
    kendraConfiguration: option<kendraConfiguration>,
    @ocaml.doc("<p>A lists of contexts that the intent activates when it is
         fulfilled.</p>
         <p>You can use an output context to indicate the intents that Amazon Lex
         should consider for the next turn of the conversation with a customer. </p>
         <p>When you use the <code>outputContextsList</code> property, all of
         the contexts specified in the list are activated when the intent is
         fulfilled. You can set up to 10 output contexts. You can also set the
         number of conversation turns that the context should be active, or the
         length of time that the context should be active.</p>")
    outputContexts: option<outputContextsList>,
    @ocaml.doc("<p>A list of contexts that must be active for this intent to be
         considered by Amazon Lex.</p>
         <p>When an intent has an input context list, Amazon Lex only considers using
         the intent in an interaction with the user when the specified contexts
         are included in the active context list for the session. If the
         contexts are not active, then Amazon Lex will not use the intent.</p>
         <p>A context can be automatically activated using the
            <code>outputContexts</code> property or it can be set at
         runtime.</p>
         <p> For example, if there are two intents with different input contexts
         that respond to the same utterances, only the intent with the active
         context will respond.</p>
         <p>An intent may have up to 5 input contexts. If an intent has multiple
         input contexts, all of the contexts must be active to consider the
         intent.</p>")
    inputContexts: option<inputContextsList>,
    @ocaml.doc("<p>Sets the response that Amazon Lex sends to the user when the intent is
         closed.</p>")
    intentClosingSetting: option<intentClosingSetting>,
    @ocaml.doc("<p>Provides prompts that Amazon Lex sends to the user to confirm the
         completion of an intent. If the user answers \"no,\" the settings contain
         a statement that is sent to the user to end the intent.</p>")
    intentConfirmationSetting: option<intentConfirmationSetting>,
    @ocaml.doc("<p>Specifies that Amazon Lex invokes the alias Lambda function when the
         intent is ready for fulfillment. You can invoke this function to
         complete the bot's transaction with the user.</p>
         <p>For example, in a pizza ordering bot, the Lambda function can look up
         the closest pizza restaurant to the customer's location and then place
         an order on the customer's behalf.</p>")
    fulfillmentCodeHook: option<fulfillmentCodeHookSettings>,
    @ocaml.doc("<p>Specifies that Amazon Lex invokes the alias Lambda function for each user
         input. You can invoke this Lambda function to personalize user
         interaction.</p>
         <p>For example, suppose that your bot determines that the user's name
         is John. You Lambda function might retrieve John's information from a
         backend database and prepopulate some of the values. For example, if
         you find that John is gluten intolerant, you might set the
         corresponding intent slot, <code>glutenIntolerant</code> to
            <code>true</code>. You might find John's phone number and set the
         corresponding session attribute.</p>")
    dialogCodeHook: option<dialogCodeHookSettings>,
    @ocaml.doc("<p>An array of strings that a user might say to signal the intent. For
         example, \"I want a pizza\", or \"I want a {PizzaSize} pizza\". </p>
         <p>In an utterance, slot names are enclosed in curly braces (\"{\", \"}\")
         to indicate where they should be displayed in the utterance shown to
         the user.. </p>")
    sampleUtterances: option<sampleUtterancesList>,
    @ocaml.doc("<p>A unique identifier for the built-in intent to base this intent
         on.</p>")
    parentIntentSignature: option<intentSignature>,
    @ocaml.doc("<p>A description of the intent. Use the description to help identify
         the intent in lists.</p>")
    description: option<description>,
    @ocaml.doc("<p>The name of the intent. Intent names must be unique in the locale
         that contains the intent and cannot match the name of any built-in
         intent.</p>")
    intentName: name,
  }
  type response = {
    @ocaml.doc("<p>A timestamp of the date and time that the intent was created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The locale that the intent is specified to use.</p>") localeId: option<localeId>,
    @ocaml.doc("<p>The identifier of the version of the bot associated with the
         intent.</p>")
    botVersion: option<draftBotVersion>,
    @ocaml.doc("<p>The identifier of the bot associated with the intent.</p>") botId: option<id>,
    @ocaml.doc("<p>Configuration for searching a Amazon Kendra index specified for the
         intent.</p>")
    kendraConfiguration: option<kendraConfiguration>,
    @ocaml.doc("<p>The list of output contexts specified for the intent.</p>")
    outputContexts: option<outputContextsList>,
    @ocaml.doc("<p>The list of input contexts specified for the intent.</p>")
    inputContexts: option<inputContextsList>,
    @ocaml.doc("<p>The closing setting specified for the intent.</p>")
    intentClosingSetting: option<intentClosingSetting>,
    @ocaml.doc("<p>The confirmation setting specified for the intent.</p>")
    intentConfirmationSetting: option<intentConfirmationSetting>,
    @ocaml.doc("<p>The fulfillment Lambda function specified for the intent.</p>")
    fulfillmentCodeHook: option<fulfillmentCodeHookSettings>,
    @ocaml.doc("<p>The dialog Lambda function specified for the intent.</p>")
    dialogCodeHook: option<dialogCodeHookSettings>,
    @ocaml.doc("<p>The sample utterances specified for the intent.</p>")
    sampleUtterances: option<sampleUtterancesList>,
    @ocaml.doc("<p>The signature of the parent intent specified for the intent.</p>")
    parentIntentSignature: option<intentSignature>,
    @ocaml.doc("<p>The description specified for the intent.</p>") description: option<description>,
    @ocaml.doc("<p>The name specified for the intent.</p>") intentName: option<name>,
    @ocaml.doc("<p>A unique identifier for the intent.</p>") intentId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "CreateIntentCommand"
  let make = (
    ~localeId,
    ~botVersion,
    ~botId,
    ~intentName,
    ~kendraConfiguration=?,
    ~outputContexts=?,
    ~inputContexts=?,
    ~intentClosingSetting=?,
    ~intentConfirmationSetting=?,
    ~fulfillmentCodeHook=?,
    ~dialogCodeHook=?,
    ~sampleUtterances=?,
    ~parentIntentSignature=?,
    ~description=?,
    (),
  ) =>
    new({
      localeId: localeId,
      botVersion: botVersion,
      botId: botId,
      kendraConfiguration: kendraConfiguration,
      outputContexts: outputContexts,
      inputContexts: inputContexts,
      intentClosingSetting: intentClosingSetting,
      intentConfirmationSetting: intentConfirmationSetting,
      fulfillmentCodeHook: fulfillmentCodeHook,
      dialogCodeHook: dialogCodeHook,
      sampleUtterances: sampleUtterances,
      parentIntentSignature: parentIntentSignature,
      description: description,
      intentName: intentName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSlot = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the intent that contains the slot.</p>") intentId: id,
    @ocaml.doc("<p>The identifier of the language and locale that contains the slot.
         The string must match one of the supported locales. For more
         information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The version of the bot that contains the slot. Must always be
            <code>DRAFT</code>.</p>")
    botVersion: draftBotVersion,
    @ocaml.doc("<p>The unique identifier of the bot that contains the slot.</p>") botId: id,
    @ocaml.doc("<p>New settings that determine how slot values are formatted in Amazon CloudWatch
         logs. </p>")
    obfuscationSetting: option<obfuscationSetting>,
    @ocaml.doc("<p>A new set of prompts that Amazon Lex sends to the user to elicit a
         response the provides a value for the slot.</p>")
    valueElicitationSetting: slotValueElicitationSetting,
    @ocaml.doc("<p>The unique identifier of the new slot type to associate with this
         slot. </p>")
    slotTypeId: builtInOrCustomSlotTypeId,
    @ocaml.doc("<p>The new description for the slot.</p>") description: option<description>,
    @ocaml.doc("<p>The new name for the slot.</p>") slotName: name,
    @ocaml.doc("<p>The unique identifier for the slot to update.</p>") slotId: id,
  }
  type response = {
    @ocaml.doc("<p>The timestamp of the date and time that the slot was last
         updated.</p>")
    lastUpdatedDateTime: option<timestamp_>,
    @ocaml.doc("<p>The timestamp of the date and time that the slot was created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The intent that contains the slot.</p>") intentId: option<id>,
    @ocaml.doc("<p>The locale that contains the slot.</p>") localeId: option<localeId>,
    @ocaml.doc("<p>The identifier of the slot version that contains the slot. Will
         always be <code>DRAFT</code>.</p>")
    botVersion: option<draftBotVersion>,
    @ocaml.doc("<p>The identifier of the bot that contains the slot.</p>") botId: option<id>,
    @ocaml.doc("<p>The updated setting that determines whether the slot value is
         obfuscated in the Amazon CloudWatch logs.</p>")
    obfuscationSetting: option<obfuscationSetting>,
    @ocaml.doc("<p>The updated prompts that Amazon Lex sends to the user to elicit a
         response that provides a value for the slot.</p>")
    valueElicitationSetting: option<slotValueElicitationSetting>,
    @ocaml.doc("<p>The updated identifier of the slot type that provides values for the
         slot.</p>")
    slotTypeId: option<builtInOrCustomSlotTypeId>,
    @ocaml.doc("<p>The updated description of the bot.</p>") description: option<description>,
    @ocaml.doc("<p>The updated name of the slot.</p>") slotName: option<name>,
    @ocaml.doc("<p>The unique identifier of the slot that was updated.</p>") slotId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "UpdateSlotCommand"
  let make = (
    ~intentId,
    ~localeId,
    ~botVersion,
    ~botId,
    ~valueElicitationSetting,
    ~slotTypeId,
    ~slotName,
    ~slotId,
    ~obfuscationSetting=?,
    ~description=?,
    (),
  ) =>
    new({
      intentId: intentId,
      localeId: localeId,
      botVersion: botVersion,
      botId: botId,
      obfuscationSetting: obfuscationSetting,
      valueElicitationSetting: valueElicitationSetting,
      slotTypeId: slotTypeId,
      description: description,
      slotName: slotName,
      slotId: slotId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSlots = {
  type t
  type request = {
    @ocaml.doc("<p>If the response from the <code>ListSlots</code> operation contains
         more results than specified in the <code>maxResults</code> parameter, a
         token is returned in the response. Use that token in the
            <code>nextToken</code> parameter to return the next page of
         results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of slots to return in each page of results. If
         there are fewer results than the max page size, only the actual number
         of results are returned.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Provides the specification of a filter used to limit the slots in
         the response to only those that match the filter specification. You can
         only specify one filter and only one string to filter on.</p>")
    filters: option<slotFilters>,
    @ocaml.doc("<p>Determines the sort order for the response from the
            <code>ListSlots</code> operation. You can choose to sort by the slot
         name or last updated date in either ascending or descending
         order.</p>")
    sortBy: option<slotSortBy>,
    @ocaml.doc("<p>The unique identifier of the intent that contains the slot.</p>") intentId: id,
    @ocaml.doc("<p>The identifier of the language and locale of the slots to list. The
         string must match one of the supported locales. For more information,
         see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The version of the bot that contains the slot.</p>") botVersion: botVersion,
    @ocaml.doc("<p>The identifier of the bot that contains the slot.</p>") botId: id,
  }
  type response = {
    @ocaml.doc("<p>A token that indicates whether there are more results to return in a
         response to the <code>ListSlots</code> operation. If the
            <code>nextToken</code> field is present, you send the contents as
         the <code>nextToken</code> parameter of a <code>ListSlots</code>
         operation request to get the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information for the slots that meet the filter criteria
         specified in the request. The length of the list is specified in the
            <code>maxResults</code> parameter of the request. If there are more
         slots available, the <code>nextToken</code> field contains a token to
         get the next page of results.</p>")
    slotSummaries: option<slotSummaryList>,
    @ocaml.doc("<p>The identifier of the intent that contains the slots.</p>") intentId: option<id>,
    @ocaml.doc("<p>The language and locale of the slots in the list.</p>")
    localeId: option<localeId>,
    @ocaml.doc("<p>The version of the bot that contains the slots.</p>")
    botVersion: option<botVersion>,
    @ocaml.doc("<p>The identifier of the bot that contains the slots.</p>") botId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "ListSlotsCommand"
  let make = (
    ~intentId,
    ~localeId,
    ~botVersion,
    ~botId,
    ~nextToken=?,
    ~maxResults=?,
    ~filters=?,
    ~sortBy=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      sortBy: sortBy,
      intentId: intentId,
      localeId: localeId,
      botVersion: botVersion,
      botId: botId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSlot = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the intent that contains the slot.</p>") intentId: id,
    @ocaml.doc("<p>The identifier of the language and locale of the slot to describe.
         The string must match one of the supported locales. For more
         information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The version of the bot associated with the slot.</p>") botVersion: botVersion,
    @ocaml.doc("<p>The identifier of the bot associated with the slot.</p>") botId: id,
    @ocaml.doc("<p>The unique identifier for the slot.</p>") slotId: id,
  }
  type response = {
    @ocaml.doc("<p>A timestamp of the date and time that the slot was last
         updated.</p>")
    lastUpdatedDateTime: option<timestamp_>,
    @ocaml.doc("<p>A timestamp of the date and time that the slot was created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The identifier of the intent associated with the slot.</p>")
    intentId: option<id>,
    @ocaml.doc("<p>The language and locale specified for the slot.</p>") localeId: option<localeId>,
    @ocaml.doc("<p>The version of the bot associated with the slot.</p>")
    botVersion: option<botVersion>,
    @ocaml.doc("<p>The identifier of the bot associated with the slot.</p>") botId: option<id>,
    @ocaml.doc("<p>Whether slot values are shown in Amazon CloudWatch logs. If the value is
            <code>None</code>, the actual value of the slot is shown in
         logs.</p>")
    obfuscationSetting: option<obfuscationSetting>,
    @ocaml.doc("<p>Prompts that Amazon Lex uses to elicit a value for the slot.</p>")
    valueElicitationSetting: option<slotValueElicitationSetting>,
    @ocaml.doc("<p>The identifier of the slot type that determines the values entered
         into the slot.</p>")
    slotTypeId: option<builtInOrCustomSlotTypeId>,
    @ocaml.doc("<p>The description specified for the slot.</p>") description: option<description>,
    @ocaml.doc("<p>The name specified for the slot.</p>") slotName: option<name>,
    @ocaml.doc("<p>The unique identifier generated for the slot.</p>") slotId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "DescribeSlotCommand"
  let make = (~intentId, ~localeId, ~botVersion, ~botId, ~slotId, ()) =>
    new({
      intentId: intentId,
      localeId: localeId,
      botVersion: botVersion,
      botId: botId,
      slotId: slotId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSlot = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the intent that contains the slot.</p>") intentId: id,
    @ocaml.doc("<p>The identifier of the language and locale that the slot will be used
         in. The string must match one of the supported locales. All of the
         bots, intents, slot types used by the slot must have the same locale.
         For more information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html\">Supported languages</a>.</p>")
    localeId: localeId,
    @ocaml.doc("<p>The version of the bot associated with the slot.</p>")
    botVersion: draftBotVersion,
    @ocaml.doc("<p>The identifier of the bot associated with the slot.</p>") botId: id,
    @ocaml.doc("<p>Determines how slot values are used in Amazon CloudWatch logs. If the value of
         the <code>obfuscationSetting</code> parameter is
            <code>DefaultObfuscation</code>, slot values are obfuscated in the
         log output. If the value is <code>None</code>, the actual value is
         present in the log output.</p>
         <p>The default is to obfuscate values in the CloudWatch logs.</p>")
    obfuscationSetting: option<obfuscationSetting>,
    @ocaml.doc("<p>Specifies prompts that Amazon Lex sends to the user to elicit a response
         that provides the value for the slot. </p>")
    valueElicitationSetting: slotValueElicitationSetting,
    @ocaml.doc("<p>The unique identifier for the slot type associated with this slot.
         The slot type determines the values that can be entered into the
         slot.</p>")
    slotTypeId: builtInOrCustomSlotTypeId,
    @ocaml.doc("<p>A description of the slot. Use this to help identify the slot in
         lists.</p>")
    description: option<description>,
    @ocaml.doc("<p>The name of the slot. Slot names must be unique within the bot that
         contains the slot.</p>")
    slotName: name,
  }
  type response = {
    @ocaml.doc("<p>The timestamp of the date and time that the slot was created.</p>")
    creationDateTime: option<timestamp_>,
    @ocaml.doc("<p>The unique identifier of the intent associated with the slot.</p>")
    intentId: option<id>,
    @ocaml.doc("<p>The language and local specified for the slot.</p>") localeId: option<localeId>,
    @ocaml.doc("<p>The version of the bot associated with the slot.</p>")
    botVersion: option<draftBotVersion>,
    @ocaml.doc("<p>The unique identifier of the bot associated with the slot.</p>")
    botId: option<id>,
    @ocaml.doc("<p>Indicates whether the slot is configured to obfuscate values in Amazon CloudWatch
         logs.</p>")
    obfuscationSetting: option<obfuscationSetting>,
    @ocaml.doc("<p>The value elicitation settings specified for the slot.</p>")
    valueElicitationSetting: option<slotValueElicitationSetting>,
    @ocaml.doc("<p>The unique identifier of the slot type associated with this
         slot.</p>")
    slotTypeId: option<builtInOrCustomSlotTypeId>,
    @ocaml.doc("<p>The description associated with the slot.</p>") description: option<description>,
    @ocaml.doc("<p>The name specified for the slot.</p>") slotName: option<name>,
    @ocaml.doc("<p>The unique identifier associated with the slot. Use this to identify
         the slot when you update or delete it.</p>")
    slotId: option<id>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "CreateSlotCommand"
  let make = (
    ~intentId,
    ~localeId,
    ~botVersion,
    ~botId,
    ~valueElicitationSetting,
    ~slotTypeId,
    ~slotName,
    ~obfuscationSetting=?,
    ~description=?,
    (),
  ) =>
    new({
      intentId: intentId,
      localeId: localeId,
      botVersion: botVersion,
      botId: botId,
      obfuscationSetting: obfuscationSetting,
      valueElicitationSetting: valueElicitationSetting,
      slotTypeId: slotTypeId,
      description: description,
      slotName: slotName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
