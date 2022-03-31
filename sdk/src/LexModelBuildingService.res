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
external createClient: unit => awsServiceClient = "LexModelBuildingServiceClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type roleArn = string
type version = string
type value = string
type v2BotName = string
type v2BotId = string
type utteranceString = string
type utterance = string
type userId = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type string_ = string
type statusType = [@as("Missed") #Missed | @as("Detected") #Detected]
type status = [
  | @as("NOT_BUILT") #NOT_BUILT
  | @as("FAILED") #FAILED
  | @as("READY_BASIC_TESTING") #READY_BASIC_TESTING
  | @as("READY") #READY
  | @as("BUILDING") #BUILDING
]
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type slotValueSelectionStrategy = [
  | @as("TOP_RESOLUTION") #TOP_RESOLUTION
  | @as("ORIGINAL_VALUE") #ORIGINAL_VALUE
]
type slotTypeName = string
type slotName = string
type slotDefaultValueString = string
type slotConstraint = [@as("Optional") #Optional | @as("Required") #Required]
type sessionTTL = int
type responseCard = string
type resourceType = [@as("SLOT_TYPE") #SLOT_TYPE | @as("INTENT") #INTENT | @as("BOT") #BOT]
type resourcePrefix = string
type resourceArn = string
type regexPattern = string
type referenceType = [
  | @as("BotChannel") #BotChannel
  | @as("BotAlias") #BotAlias
  | @as("Bot") #Bot
  | @as("Intent") #Intent
]
type queryFilterString = string
type promptMaxAttempts = int
type processBehavior = [@as("BUILD") #BUILD | @as("SAVE") #SAVE]
type priority = int
type outputContextName = string
type obfuscationSetting = [@as("DEFAULT_OBFUSCATION") #DEFAULT_OBFUSCATION | @as("NONE") #NONE]
type numericalVersion = string
type nextToken = string
type name = string
type migrationStrategy = [@as("UPDATE_EXISTING") #UPDATE_EXISTING | @as("CREATE_NEW") #CREATE_NEW]
type migrationStatus = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type migrationSortAttribute = [
  | @as("MIGRATION_DATE_TIME") #MIGRATION_DATE_TIME
  | @as("V1_BOT_NAME") #V1_BOT_NAME
]
type migrationId = string
type migrationAlertType = [@as("WARN") #WARN | @as("ERROR") #ERROR]
type migrationAlertReferenceURL = string
type migrationAlertMessage = string
type migrationAlertDetail = string
type messageVersion = string
type mergeStrategy = [
  | @as("FAIL_ON_CONFLICT") #FAIL_ON_CONFLICT
  | @as("OVERWRITE_LATEST") #OVERWRITE_LATEST
]
type maxResults = int
type logType = [@as("TEXT") #TEXT | @as("AUDIO") #AUDIO]
type locale = [
  | @as("ko-KR") #Ko_KR
  | @as("ja-JP") #Ja_JP
  | @as("it-IT") #It_IT
  | @as("fr-CA") #Fr_CA
  | @as("fr-FR") #Fr_FR
  | @as("es-US") #Es_US
  | @as("es-ES") #Es_ES
  | @as("es-419") #Es_419
  | @as("en-US") #En_US
  | @as("en-IN") #En_IN
  | @as("en-GB") #En_GB
  | @as("en-AU") #En_AU
  | @as("de-DE") #De_DE
]
type lambdaARN = string
type kmsKeyArn = string
type kendraIndexArn = string
type intentName = string
type inputContextName = string
type importStatus = [
  | @as("FAILED") #FAILED
  | @as("COMPLETE") #COMPLETE
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type iamRoleArn = string
type groupNumber = int
type fulfillmentActivityType = [@as("CodeHook") #CodeHook | @as("ReturnIntent") #ReturnIntent]
type exportType = [@as("LEX") #LEX | @as("ALEXA_SKILLS_KIT") #ALEXA_SKILLS_KIT]
type exportStatus = [@as("FAILED") #FAILED | @as("READY") #READY | @as("IN_PROGRESS") #IN_PROGRESS]
type destination = [@as("S3") #S3 | @as("CLOUDWATCH_LOGS") #CLOUDWATCH_LOGS]
type description = string
type customOrBuiltinSlotTypeName = string
type count = int
type contextTurnsToLive = int
type contextTimeToLiveInSeconds = int
type contentType = [
  | @as("CustomPayload") #CustomPayload
  | @as("SSML") #SSML
  | @as("PlainText") #PlainText
]
type contentString = string
type confidenceThreshold = float
type channelType = [
  | @as("Kik") #Kik
  | @as("Twilio-Sms") #Twilio_Sms
  | @as("Slack") #Slack
  | @as("Facebook") #Facebook
]
type channelStatus = [
  | @as("FAILED") #FAILED
  | @as("CREATED") #CREATED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type builtinSlotTypeSignature = string
type builtinIntentSignature = string
type botName = string
type botChannelName = string
type boolean_ = bool
type blob = NodeJs.Buffer.t
type amazonResourceName = string
type aliasNameOrListAll = string
type aliasName = string
@ocaml.doc("<p>Provides information about a single utterance that was made to your
      bot. </p>")
type utteranceData = {
  @ocaml.doc("<p>The date that the utterance was last recorded.</p>")
  lastUtteredDate: option<timestamp_>,
  @ocaml.doc("<p>The date that the utterance was first recorded.</p>")
  firstUtteredDate: option<timestamp_>,
  @ocaml.doc("<p>The total number of individuals that used the utterance.</p>")
  distinctUsers: option<count>,
  @ocaml.doc("<p>The number of times that the utterance was processed.</p>") count: option<count>,
  @ocaml.doc("<p>The text that was entered by the user or the text representation of
      an audio clip.</p>")
  utteranceString: option<utteranceString>,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A list of key/value pairs that identify a bot, bot alias, or bot
      channel. Tag keys and values can consist of Unicode letters, digits, white
      space, and any of the following symbols: _ . : / = + - @. </p>")
type tag = {
  @ocaml.doc("<p>The value associated with a key. The value may be an empty string but
      it can't be null.</p>")
  value: tagValue,
  @ocaml.doc("<p>The key for the tag. Keys are not case-sensitive and must be
      unique.</p>")
  key: tagKey,
}
type synonymList = array<value>
type stringList = array<string_>
type slotUtteranceList = array<utterance>
@ocaml.doc("<p>Provides a regular expression used to validate the value of a
      slot.</p>")
type slotTypeRegexConfiguration = {
  @ocaml.doc("<p>A regular expression used to validate the value of a slot. </p>
         <p>Use a standard regular expression. Amazon Lex supports the following
      characters in the regular expression:</p>
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
         <p>Represent Unicode characters with four digits, for example
      \"\\u0041\" or \"\\u005A\".</p>
         <p>The following regular expression operators are not supported:</p>
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
@ocaml.doc("<p>Provides information about a slot type..</p>")
type slotTypeMetadata = {
  @ocaml.doc("<p>The version of the slot type.</p>") version: option<version>,
  @ocaml.doc("<p>The date that the slot type was created.</p>") createdDate: option<timestamp_>,
  @ocaml.doc("<p>The date that the slot type was updated. When you create a
      resource, the creation date and last updated date are the same. </p>")
  lastUpdatedDate: option<timestamp_>,
  @ocaml.doc("<p>A description of the slot type.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the slot type.</p>") name: option<slotTypeName>,
}
@ocaml.doc("<p>A default value for a slot.</p>")
type slotDefaultValue = {
  @ocaml.doc("<p>The default value for the slot. You can specify one of the
      following:</p>
         <ul>
            <li>
               <p>
                  <code>#context-name.slot-name</code> - The slot value \"slot-name\"
          in the context \"context-name.\"</p>
            </li>
            <li>
               <p>
                  <code>{attribute}</code> - The slot value of the session attribute
          \"attribute.\"</p>
            </li>
            <li>
               <p>
                  <code>'value'</code> - The discrete value \"value.\"</p>
            </li>
         </ul>")
  defaultValue: slotDefaultValueString,
}
@ocaml.doc("<p>Describes the resource that refers to the resource that you are
      attempting to delete. This object is returned as part of the
        <code>ResourceInUseException</code> exception. </p>")
type resourceReference = {
  @ocaml.doc("<p>The version of the resource that is using the resource that you are
      trying to delete.</p>")
  version: option<version>,
  @ocaml.doc("<p>The name of the resource that is using the resource that you are
      trying to delete.</p>")
  name: option<name>,
}
@ocaml.doc("<p>The specification of an output context that is set when an intent is
      fulfilled.</p>")
type outputContext = {
  @ocaml.doc("<p>The number of conversation turns that the context should be active. A
      conversation turn is one <code>PostContent</code> or <code>PostText</code>
      request and the corresponding response from Amazon Lex.</p>")
  turnsToLive: contextTurnsToLive,
  @ocaml.doc("<p>The number of seconds that the context should be active after it is
      first sent in a <code>PostContent</code> or <code>PostText</code>
      response. You can set the value between 5 and 86,400 seconds (24
      hours).</p>")
  timeToLiveInSeconds: contextTimeToLiveInSeconds,
  @ocaml.doc("<p>The name of the context.</p>") name: outputContextName,
}
@ocaml.doc("<p>Provides information about migrating a bot from Amazon Lex V1 to Amazon Lex V2.</p>")
type migrationSummary = {
  @ocaml.doc("<p>The date and time that the migration started.</p>")
  migrationTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The strategy used to conduct the migration.</p>")
  migrationStrategy: option<migrationStrategy>,
  @ocaml.doc("<p>The status of the operation. When the status is <code>COMPLETE</code>
    the bot is available in Amazon Lex V2. There may be alerts and warnings that
    need to be resolved to complete the migration.</p>")
  migrationStatus: option<migrationStatus>,
  @ocaml.doc("<p>The IAM role that Amazon Lex uses to run the Amazon Lex V2 bot.</p>")
  v2BotRole: option<iamRoleArn>,
  @ocaml.doc(
    "<p>The unique identifier of the Amazon Lex V2 that is the destination of the migration.</p>"
  )
  v2BotId: option<v2BotId>,
  @ocaml.doc("<p>The locale of the Amazon Lex V1 bot that is the source of the migration.</p>")
  v1BotLocale: option<locale>,
  @ocaml.doc("<p>The version of the Amazon Lex V1 bot that is the source of the migration.</p>")
  v1BotVersion: option<version>,
  @ocaml.doc("<p>The name of the Amazon Lex V1 bot that is the source of the migration.</p>")
  v1BotName: option<botName>,
  @ocaml.doc("<p>The unique identifier that Amazon Lex assigned to the migration.</p>")
  migrationId: option<migrationId>,
}
type migrationAlertReferenceURLs = array<migrationAlertReferenceURL>
type migrationAlertDetails = array<migrationAlertDetail>
@ocaml.doc("<p>The message object that provides the message text and its
      type.</p>")
type message = {
  @ocaml.doc("<p>Identifies the message group that the message belongs to. When a group
      is assigned to a message, Amazon Lex returns one message from each group in the
      response.</p>")
  groupNumber: option<groupNumber>,
  @ocaml.doc("<p>The text of the message.</p>") content: contentString,
  @ocaml.doc("<p>The content type of the message string.</p>") contentType: contentType,
}
@ocaml.doc("<p>The settings for conversation logs.</p>")
type logSettingsResponse = {
  @ocaml.doc("<p>The resource prefix is the first part of the S3 object key within the
      S3 bucket that you specified to contain audio logs. For CloudWatch Logs it
      is the prefix of the log stream name within the log group that you
      specified. </p>")
  resourcePrefix: option<resourcePrefix>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the CloudWatch Logs log group or S3
      bucket where the logs are delivered.</p>")
  resourceArn: option<resourceArn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the key used to encrypt audio logs
      in an S3 bucket.</p>")
  kmsKeyArn: option<kmsKeyArn>,
  @ocaml.doc("<p>The destination where logs are delivered.</p>") destination: option<destination>,
  @ocaml.doc("<p>The type of logging that is enabled.</p>") logType: option<logType>,
}
@ocaml.doc("<p>Settings used to configure delivery mode and destination for
      conversation logs.</p>")
type logSettingsRequest = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the CloudWatch Logs log group or S3
      bucket where the logs should be delivered.</p>")
  resourceArn: resourceArn,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS KMS customer managed key for
      encrypting audio logs delivered to an S3 bucket. The key does not apply to
      CloudWatch Logs and is optional for S3 buckets.</p>")
  kmsKeyArn: option<kmsKeyArn>,
  @ocaml.doc("<p>Where the logs will be delivered. Text logs are delivered to a
      CloudWatch Logs log group. Audio logs are delivered to an S3
      bucket.</p>")
  destination: destination,
  @ocaml.doc("<p>The type of logging to enable. Text logs are delivered to a CloudWatch
      Logs log group. Audio logs are delivered to an S3 bucket.</p>")
  logType: logType,
}
type localeList = array<locale>
@ocaml.doc("<p>Provides configuration information for the AMAZON.KendraSearchIntent
      intent. When you use this intent, Amazon Lex searches the specified Amazon
      Kendra index and returns documents from the index that match the user's
      utterance. For more information, see <a href=\"http://docs.aws.amazon.com/lex/latest/dg/built-in-intent-kendra-search.html\">
        AMAZON.KendraSearchIntent</a>.</p>")
type kendraConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an IAM role that has permission to
      search the Amazon Kendra index. The role must be in the same account and
      Region as the Amazon Lex bot. If the role does not exist, you get an exception
      when you call the <code>PutIntent</code> operation.</p>")
  role: roleArn,
  @ocaml.doc("<p>A query filter that Amazon Lex sends to Amazon Kendra to filter the
      response from the query. The filter is in the format defined by Amazon
      Kendra. For more information, see <a href=\"http://docs.aws.amazon.com/kendra/latest/dg/filtering.html\">Filtering
        queries</a>.</p>
         <p>You can override this filter string with a new filter string at
      runtime.</p>")
  queryFilterString: option<queryFilterString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Kendra index that you
      want the AMAZON.KendraSearchIntent intent to search. The index must be in
      the same account and Region as the Amazon Lex bot. If the Amazon Kendra index
      does not exist, you get an exception when you call the
        <code>PutIntent</code> operation.</p>")
  kendraIndex: kendraIndexArn,
}
type intentUtteranceList = array<utterance>
@ocaml.doc("<p>Provides information about an intent.</p>")
type intentMetadata = {
  @ocaml.doc("<p>The version of the intent.</p>") version: option<version>,
  @ocaml.doc("<p>The date that the intent was created.</p>") createdDate: option<timestamp_>,
  @ocaml.doc("<p>The date that the intent was updated. When you create an intent,
      the creation date and last updated date are the same.</p>")
  lastUpdatedDate: option<timestamp_>,
  @ocaml.doc("<p>A description of the intent.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the intent.</p>") name: option<intentName>,
}
@ocaml.doc("<p>Identifies the specific version of an intent.</p>")
type intent = {
  @ocaml.doc("<p>The version of the intent.</p>") intentVersion: version,
  @ocaml.doc("<p>The name of the intent.</p>") intentName: intentName,
}
@ocaml.doc("<p>The name of a context that must be active for an intent to be selected
      by Amazon Lex.</p>")
type inputContext = {@ocaml.doc("<p>The name of the context.</p>") name: inputContextName}
@ocaml.doc("<p>Specifies a Lambda function that verifies requests to a bot or
      fulfills the user's request to a bot..</p>")
type codeHook = {
  @ocaml.doc("<p>The version of the request-response that you want Amazon Lex to use to
      invoke your Lambda function. For more information, see <a>using-lambda</a>.</p>")
  messageVersion: messageVersion,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Lambda function.</p>") uri: lambdaARN,
}
type channelConfigurationMap = Js.Dict.t<string_>
@ocaml.doc("<p>Provides information about a slot used in a built-in
      intent.</p>")
type builtinIntentSlot = {
  @ocaml.doc("<p>A list of the slots defined for the intent.</p>") name: option<string_>,
}
type botVersions = array<version>
@ocaml.doc("<p>Provides information about a bot. .</p>")
type botMetadata = {
  @ocaml.doc("<p>The version of the bot. For a new bot, the version is always
        <code>$LATEST</code>.</p>")
  version: option<version>,
  @ocaml.doc("<p>The date that the bot was created.</p>") createdDate: option<timestamp_>,
  @ocaml.doc("<p>The date that the bot was updated. When you create a bot, the
      creation date and last updated date are the same. </p>")
  lastUpdatedDate: option<timestamp_>,
  @ocaml.doc("<p>The status of the bot.</p>") status: option<status>,
  @ocaml.doc("<p>A description of the bot.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the bot. </p>") name: option<botName>,
}
type tagList_ = array<tag>
type slotTypeMetadataList = array<slotTypeMetadata>
@ocaml.doc("<p>Provides configuration information for a slot type.</p>")
type slotTypeConfiguration = {
  @ocaml.doc("<p>A regular expression used to validate the value of a slot.</p>")
  regexConfiguration: option<slotTypeRegexConfiguration>,
}
type slotDefaultValueList = array<slotDefaultValue>
type outputContextList = array<outputContext>
type migrationSummaryList = array<migrationSummary>
@ocaml.doc("<p>Provides information about alerts and warnings that Amazon Lex sends during
      a migration. The alerts include information about how to resolve the
      issue.</p>")
type migrationAlert = {
  @ocaml.doc("<p>A link to the Amazon Lex documentation that describes how to resolve
    the alert.</p>")
  referenceURLs: option<migrationAlertReferenceURLs>,
  @ocaml.doc("<p>Additional details about the alert.</p>") details: option<migrationAlertDetails>,
  @ocaml.doc("<p>A message that describes why the alert was issued.</p>")
  message: option<migrationAlertMessage>,
  @ocaml.doc("<p>The type of alert. There are two kinds of alerts:</p>
         <ul>
            <li>
               <p>
                  <code>ERROR</code> - There was an issue with the migration that
          can't be resolved. The migration stops.</p>
            </li>
            <li>
               <p>
                  <code>WARN</code> - There was an issue with the migration that
          requires manual changes to the new Amazon Lex V2 bot. The migration
          continues.</p>
            </li>
         </ul>")
  @as("type")
  type_: option<migrationAlertType>,
}
type messageList = array<message>
type logSettingsResponseList = array<logSettingsResponse>
type logSettingsRequestList = array<logSettingsRequest>
type listOfUtterance = array<utteranceData>
type intentMetadataList = array<intentMetadata>
type intentList = array<intent>
type inputContextList = array<inputContext>
@ocaml.doc("<p> Describes how the intent is fulfilled after the user provides all
      of the information required for the intent. You can provide a Lambda
      function to process the intent, or you can return the intent information
      to the client application. We recommend that you use a Lambda function so
      that the relevant logic lives in the Cloud and limit the client-side code
      primarily to presentation. If you need to update the logic, you only
      update the Lambda function; you don't need to upgrade your client
      application. </p>


         <p>Consider the following examples:</p>
         <ul>
            <li>
               <p>In a pizza ordering application, after the user provides all of
          the information for placing an order, you use a Lambda function to
          place an order with a pizzeria. </p>
            </li>
            <li>
               <p>In a gaming application, when a user says \"pick up a rock,\"
          this information must go back to the client application so that it can
          perform the operation and update the graphics. In this case, you want
          Amazon Lex to return the intent data to the client. </p>
            </li>
         </ul>")
type fulfillmentActivity = {
  @ocaml.doc("<p> A description of the Lambda function that is run to fulfill the
      intent. </p>")
  codeHook: option<codeHook>,
  @ocaml.doc("<p> How the intent should be fulfilled, either by running a Lambda
      function or by returning the slot data to the client application.
    </p>")
  @as("type")
  type_: fulfillmentActivityType,
}
@ocaml.doc("<p>Each slot type can have a set of values. Each enumeration value
      represents a value the slot type can take. </p>
         <p>For example, a pizza ordering bot could have a slot type that
      specifies the type of crust that the pizza should have. The slot type
      could include the values </p>
         <ul>
            <li>
               <p>thick</p>
            </li>
            <li>
               <p>thin</p>
            </li>
            <li>
               <p>stuffed</p>
            </li>
         </ul>")
type enumerationValue = {
  @ocaml.doc("<p>Additional values related to the slot type value.</p>")
  synonyms: option<synonymList>,
  @ocaml.doc("<p>The value of the slot type.</p>") value: value,
}
@ocaml.doc("<p>Provides information about a built in slot type.</p>")
type builtinSlotTypeMetadata = {
  @ocaml.doc("<p>A list of target locales for the slot. </p>") supportedLocales: option<localeList>,
  @ocaml.doc("<p>A unique identifier for the built-in slot type. To find the
      signature for a slot type, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference\">Slot Type Reference</a> in the <i>Alexa Skills
        Kit</i>.</p>")
  signature: option<builtinSlotTypeSignature>,
}
type builtinIntentSlotList = array<builtinIntentSlot>
@ocaml.doc("<p>Provides metadata for a built-in intent.</p>")
type builtinIntentMetadata = {
  @ocaml.doc("<p>A list of identifiers for the locales that the intent
      supports.</p>")
  supportedLocales: option<localeList>,
  @ocaml.doc("<p>A unique identifier for the built-in intent. To find the signature
      for an intent, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents\">Standard Built-in Intents</a> in the <i>Alexa Skills
        Kit</i>.</p>")
  signature: option<builtinIntentSignature>,
}
type botMetadataList = array<botMetadata>
@ocaml.doc("<p>Represents an association between an Amazon Lex bot and an external
      messaging platform.</p>")
type botChannelAssociation = {
  @ocaml.doc("<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the
      reason that it failed to create the association.</p>")
  failureReason: option<string_>,
  @ocaml.doc("<p>The status of the bot channel. </p>
         <ul>
            <li>
               <p>
                  <code>CREATED</code> - The channel has been created and is
          ready for use.</p>
            </li>
            <li>
               <p>
                  <code>IN_PROGRESS</code> - Channel creation is in
          progress.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - There was an error creating the channel.
          For information about the reason for the failure, see the
            <code>failureReason</code> field.</p>
            </li>
         </ul>")
  status: option<channelStatus>,
  @ocaml.doc("<p>Provides information necessary to communicate with the messaging
      platform. </p>")
  botConfiguration: option<channelConfigurationMap>,
  @ocaml.doc("<p>Specifies the type of association by indicating the type of channel
      being established between the Amazon Lex bot and the external messaging
      platform.</p>")
  @as("type")
  type_: option<channelType>,
  @ocaml.doc("<p>The date that the association between the Amazon Lex bot and the channel
      was created. </p>")
  createdDate: option<timestamp_>,
  @ocaml.doc("<p>The name of the Amazon Lex bot to which this association is being made. </p>
         <note>
            <p>Currently, Amazon Lex supports associations with Facebook and Slack,
        and Twilio.</p>

         </note>")
  botName: option<botName>,
  @ocaml.doc("<p>An alias pointing to the specific version of the Amazon Lex bot to which
      this association is being made. </p>")
  botAlias: option<aliasName>,
  @ocaml.doc("<p>A text description of the association you are creating. </p>")
  description: option<description>,
  @ocaml.doc("<p>The name of the association between the bot and the channel.
    </p>")
  name: option<botChannelName>,
}
@ocaml.doc("<p>Provides a list of utterances that have been made to a specific
      version of your bot. The list contains a maximum of 100
      utterances.</p>")
type utteranceList = {
  @ocaml.doc("<p>One or more <a>UtteranceData</a> objects that contain
      information about the utterances that have been made to a bot. The maximum
      number of object is 100.</p>")
  utterances: option<listOfUtterance>,
  @ocaml.doc("<p>The version of the bot that processed the list.</p>") botVersion: option<version>,
}
@ocaml.doc("<p>A collection of messages that convey information to the user. At
      runtime, Amazon Lex selects the message to convey. </p>")
type statement = {
  @ocaml.doc("<p> At runtime, if the client is using the <a href=\"http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html\">PostText</a> API, Amazon Lex includes the response card in the response.
      It substitutes all of the session attributes and slot values for
      placeholders in the response card. </p>")
  responseCard: option<responseCard>,
  @ocaml.doc("<p>A collection of message objects.</p>") messages: messageList,
}
type slotTypeConfigurations = array<slotTypeConfiguration>
@ocaml.doc("<p>Contains the default values for a slot. Default values are used when
      Amazon Lex hasn't determined a value for a slot.</p>")
type slotDefaultValueSpec = {
  @ocaml.doc("<p>The default values for a slot. You can specify more than one default.
      For example, you can specify a default value to use from a matching
      context variable, a session attribute, or a fixed value.</p>
         <p>The default value chosen is selected based on the order that you
      specify them in the list. For example, if you specify a context variable
      and a fixed value in that order, Amazon Lex uses the context variable if it is
      available, else it uses the fixed value.</p>")
  defaultValueList: slotDefaultValueList,
}
@ocaml.doc("<p>Obtains information from the user. To define a prompt, provide one
      or more messages and specify the number of attempts to get information
      from the user. If you provide more than one message, Amazon Lex chooses one of
      the messages to use to prompt the user. For more information, see <a>how-it-works</a>.</p>")
type prompt = {
  @ocaml.doc("<p>A response card. Amazon Lex uses this prompt at runtime, in the
        <code>PostText</code> API response. It substitutes session attributes
      and slot values for placeholders in the response card. For more
      information, see <a>ex-resp-card</a>. </p>")
  responseCard: option<responseCard>,
  @ocaml.doc("<p>The number of times to prompt the user for information.</p>")
  maxAttempts: promptMaxAttempts,
  @ocaml.doc("<p>An array of objects, each of which provides a message string and
      its type. You can specify the message string in plain text or in Speech
      Synthesis Markup Language (SSML).</p>")
  messages: messageList,
}
type migrationAlerts = array<migrationAlert>
type enumerationValues = array<enumerationValue>
@ocaml.doc("<p>Contains information about conversation log settings.</p>")
type conversationLogsResponse = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role used to write your logs
      to CloudWatch Logs or an S3 bucket.</p>")
  iamRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The settings for your conversation logs. You can log text, audio, or
      both.</p>")
  logSettings: option<logSettingsResponseList>,
}
@ocaml.doc("<p>Provides the settings needed for conversation logs.</p>")
type conversationLogsRequest = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an IAM role with permission to write
      to your CloudWatch Logs for text logs and your S3 bucket for audio logs.
      If audio encryption is enabled, this role also provides access permission
      for the AWS KMS key used for encrypting audio logs. For more information,
      see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/conversation-logs-role-and-policy.html\">Creating an
        IAM Role and Policy for Conversation Logs</a>.</p>")
  iamRoleArn: iamRoleArn,
  @ocaml.doc("<p>The settings for your conversation logs. You can log the conversation
      text, conversation audio, or both.</p>")
  logSettings: logSettingsRequestList,
}
type builtinSlotTypeMetadataList = array<builtinSlotTypeMetadata>
type builtinIntentMetadataList = array<builtinIntentMetadata>
type botChannelAssociationList = array<botChannelAssociation>
@ocaml.doc("<p>Identifies the version of a specific slot.</p>")
type slot = {
  @ocaml.doc("<p>A list of default values for the slot. Default values are used when
      Amazon Lex hasn't determined a value for a slot. You can specify default values
      from context variables, session attributes, and defined values.</p>")
  defaultValueSpec: option<slotDefaultValueSpec>,
  @ocaml.doc("<p>Determines whether a slot is obfuscated in conversation logs and
      stored utterances. When you obfuscate a slot, the value is replaced by the
      slot name in curly braces ({}). For example, if the slot name is
      \"full_name\", obfuscated values are replaced with \"{full_name}\". For more
      information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/how-obfuscate.html\"> Slot Obfuscation </a>.
    </p>")
  obfuscationSetting: option<obfuscationSetting>,
  @ocaml.doc("<p> A set of possible responses for the slot type used by text-based
      clients. A user chooses an option from the response card, instead of using
      text to reply. </p>")
  responseCard: option<responseCard>,
  @ocaml.doc("<p> If you know a specific pattern with which users might respond to
      an Amazon Lex request for a slot value, you can provide those utterances to
      improve accuracy. This is optional. In most cases, Amazon Lex is capable of
      understanding user utterances. </p>")
  sampleUtterances: option<slotUtteranceList>,
  @ocaml.doc("<p> Directs Amazon Lex the order in which to elicit this slot value from
      the user. For example, if the intent has two slots with priorities 1 and
      2, AWS Amazon Lex first elicits a value for the slot with priority 1.</p>
         <p>If multiple slots share the same priority, the order in which Amazon Lex
      elicits values is arbitrary.</p>")
  priority: option<priority>,
  @ocaml.doc("<p>The prompt that Amazon Lex uses to elicit the slot value from the
      user.</p>")
  valueElicitationPrompt: option<prompt>,
  @ocaml.doc("<p>The version of the slot type.</p>") slotTypeVersion: option<version>,
  @ocaml.doc("<p>The type of the slot, either a custom slot type that you defined or
      one of the built-in slot types.</p>")
  slotType: option<customOrBuiltinSlotTypeName>,
  @ocaml.doc("<p>Specifies whether the slot is required or optional. </p>")
  slotConstraint: slotConstraint,
  @ocaml.doc("<p>A description of the slot.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the slot.</p>") name: slotName,
}
type listsOfUtterances = array<utteranceList>
@ocaml.doc("<p>A prompt for additional activity after an intent is fulfilled. For
      example, after the <code>OrderPizza</code> intent is fulfilled, you might
      prompt the user to find out whether the user wants to order
      drinks.</p>")
type followUpPrompt = {
  @ocaml.doc("<p>If the user answers \"no\" to the question defined in the
        <code>prompt</code> field, Amazon Lex responds with this statement to
      acknowledge that the intent was canceled. </p>")
  rejectionStatement: statement,
  @ocaml.doc("<p>Prompts for information from the user. </p>") prompt: prompt,
}
@ocaml.doc("<p>Provides information about a bot alias.</p>")
type botAliasMetadata = {
  @ocaml.doc("<p>Settings that determine how Amazon Lex uses conversation logs for the
      alias.</p>")
  conversationLogs: option<conversationLogsResponse>,
  @ocaml.doc("<p>Checksum of the bot alias.</p>") checksum: option<string_>,
  @ocaml.doc("<p>The date that the bot alias was created.</p>") createdDate: option<timestamp_>,
  @ocaml.doc("<p>The date that the bot alias was updated. When you create a
      resource, the creation date and last updated date are the same.</p>")
  lastUpdatedDate: option<timestamp_>,
  @ocaml.doc("<p>The name of the bot to which the alias points.</p>") botName: option<botName>,
  @ocaml.doc("<p>The version of the Amazon Lex bot to which the alias points.</p>")
  botVersion: option<version>,
  @ocaml.doc("<p>A description of the bot alias.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the bot alias.</p>") name: option<aliasName>,
}
type slotList = array<slot>
type botAliasMetadataList = array<botAliasMetadata>
@ocaml.doc("<fullname>Amazon Lex Build-Time Actions</fullname>
         <p> Amazon Lex is an AWS service for building conversational voice and text
      interfaces. Use these actions to create, update, and delete conversational
      bots for new and existing client applications. </p>")
module StartMigration = {
  type t
  type request = {
    @ocaml.doc("<p>The strategy used to conduct the migration.</p>
         <ul>
            <li>
               <p>
                  <code>CREATE_NEW</code> - Creates a new Amazon Lex V2 bot and migrates
          the Amazon Lex V1 bot to the new bot.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_EXISTING</code> - Overwrites the existing Amazon Lex V2 bot
          metadata and the locale being migrated. It doesn't change any other
          locales in the Amazon Lex V2 bot. If the locale doesn't exist, a new locale
          is created in the Amazon Lex V2 bot.</p>
            </li>
         </ul>")
    migrationStrategy: migrationStrategy,
    @ocaml.doc("<p>The IAM role that Amazon Lex uses to run the Amazon Lex V2 bot.</p>")
    v2BotRole: iamRoleArn,
    @ocaml.doc("<p>The name of the Amazon Lex V2 bot that you are migrating the Amazon Lex V1 bot to. </p>
         <ul>
            <li>
               <p>If the Amazon Lex V2 bot doesn't exist, you must use the
            <code>CREATE_NEW</code> migration strategy.</p>
            </li>
            <li>
               <p>If the Amazon Lex V2 bot exists, you must use the
            <code>UPDATE_EXISTING</code> migration strategy to change the
          contents of the Amazon Lex V2 bot.</p>
            </li>
         </ul>")
    v2BotName: v2BotName,
    @ocaml.doc("<p>The version of the bot to migrate to Amazon Lex V2. You can migrate the
        <code>$LATEST</code> version as well as any numbered version.</p>")
    v1BotVersion: version,
    @ocaml.doc("<p>The name of the Amazon Lex V1 bot that you are migrating to Amazon Lex V2.</p>")
    v1BotName: botName,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the migration started.</p>")
    migrationTimestamp: option<timestamp_>,
    @ocaml.doc("<p>The strategy used to conduct the migration.</p>")
    migrationStrategy: option<migrationStrategy>,
    @ocaml.doc("<p>The unique identifier that Amazon Lex assigned to the migration.</p>")
    migrationId: option<migrationId>,
    @ocaml.doc("<p>The IAM role that Amazon Lex uses to run the Amazon Lex V2 bot.</p>")
    v2BotRole: option<iamRoleArn>,
    @ocaml.doc("<p>The unique identifier for the Amazon Lex V2 bot. </p>") v2BotId: option<v2BotId>,
    @ocaml.doc("<p>The locale used for the Amazon Lex V1 bot. </p>") v1BotLocale: option<locale>,
    @ocaml.doc("<p>The version of the bot to migrate to Amazon Lex V2. </p>")
    v1BotVersion: option<version>,
    @ocaml.doc("<p>The name of the Amazon Lex V1 bot that you are migrating to Amazon Lex V2.</p>")
    v1BotName: option<botName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "StartMigrationCommand"
  let make = (~migrationStrategy, ~v2BotRole, ~v2BotName, ~v1BotVersion, ~v1BotName, ()) =>
    new({
      migrationStrategy: migrationStrategy,
      v2BotRole: v2BotRole,
      v2BotName: v2BotName,
      v1BotVersion: v1BotVersion,
      v1BotName: v1BotName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetExport = {
  type t
  type request = {
    @ocaml.doc("<p>The format of the exported data.</p>") exportType: exportType,
    @ocaml.doc("<p>The type of resource to export. </p>") resourceType: resourceType,
    @ocaml.doc("<p>The version of the bot to export.</p>") version: numericalVersion,
    @ocaml.doc("<p>The name of the bot to export.</p>") name: name,
  }
  type response = {
    @ocaml.doc("<p>An S3 pre-signed URL that provides the location of the exported
      resource. The exported resource is a ZIP archive that contains the
      exported resource in JSON format. The structure of the archive may change.
      Your code should not rely on the archive structure.</p>")
    url: option<string_>,
    @ocaml.doc("<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the
      reason that it failed to export the resource.</p>")
    failureReason: option<string_>,
    @ocaml.doc("<p>The status of the export. </p>
         <ul>
            <li>
               <p>
                  <code>IN_PROGRESS</code> - The export is in progress.</p>
            </li>
            <li>
               <p>
                  <code>READY</code> - The export is complete.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - The export could not be
          completed.</p>
            </li>
         </ul>")
    exportStatus: option<exportStatus>,
    @ocaml.doc("<p>The format of the exported data.</p>") exportType: option<exportType>,
    @ocaml.doc("<p>The type of the exported resource.</p>") resourceType: option<resourceType>,
    @ocaml.doc("<p>The version of the bot being exported.</p>") version: option<numericalVersion>,
    @ocaml.doc("<p>The name of the bot being exported.</p>") name: option<name>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetExportCommand"
  let make = (~exportType, ~resourceType, ~version, ~name, ()) =>
    new({exportType: exportType, resourceType: resourceType, version: version, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUtterances = {
  type t
  type request = {
    @ocaml.doc("<p> The unique identifier for the user that made the utterances. This
      is the user ID that was sent in the <a href=\"http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html\">PostContent</a> or <a href=\"http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html\">PostText</a> operation request that contained the
      utterance.</p>")
    userId: userId,
    @ocaml.doc("<p>The name of the bot that stored the utterances.</p>") botName: botName,
  }
  type response = {.}
  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteUtterancesCommand"
  let make = (~userId, ~botName, ()) => new({userId: userId, botName: botName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBotChannelAssociation = {
  type t
  type request = {
    @ocaml.doc("<p>An alias that points to the specific version of the Amazon Lex bot to
      which this association is being made.</p>")
    botAlias: aliasName,
    @ocaml.doc("<p>The name of the Amazon Lex bot.</p>") botName: botName,
    @ocaml.doc("<p>The name of the association. The name is case sensitive. </p>")
    name: botChannelName,
  }
  type response = {.}
  @module("@aws-sdk/client-lex") @new
  external new: request => t = "DeleteBotChannelAssociationCommand"
  let make = (~botAlias, ~botName, ~name, ()) =>
    new({botAlias: botAlias, botName: botName, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag keys to remove from the resource. If a tag key does not
      exist on the resource, it is ignored.</p>")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to remove the tags
      from.</p>")
    resourceArn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-lex") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetImport = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the import job information to return.</p>") importId: string_,
  }
  type response = {
    @ocaml.doc("<p>A timestamp for the date and time that the import job was
      created.</p>")
    createdDate: option<timestamp_>,
    @ocaml.doc("<p>A string that describes why an import job failed to
      complete.</p>")
    failureReason: option<stringList>,
    @ocaml.doc("<p>The status of the import job. If the status is <code>FAILED</code>,
      you can get the reason for the failure from the <code>failureReason</code>
      field.</p>")
    importStatus: option<importStatus>,
    @ocaml.doc("<p>The identifier for the specific import job.</p>") importId: option<string_>,
    @ocaml.doc("<p>The action taken when there was a conflict between an existing
      resource and a resource in the import file.</p>")
    mergeStrategy: option<mergeStrategy>,
    @ocaml.doc("<p>The type of resource imported.</p>") resourceType: option<resourceType>,
    @ocaml.doc("<p>The name given to the import job.</p>") name: option<name>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetImportCommand"
  let make = (~importId, ()) => new({importId: importId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBotChannelAssociation = {
  type t
  type request = {
    @ocaml.doc("<p>An alias pointing to the specific version of the Amazon Lex bot to which
      this association is being made.</p>")
    botAlias: aliasName,
    @ocaml.doc("<p>The name of the Amazon Lex bot.</p>") botName: botName,
    @ocaml.doc("<p>The name of the association between the bot and the channel. The
      name is case sensitive. </p>")
    name: botChannelName,
  }
  type response = {
    @ocaml.doc("<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the
      reason that it failed to create the association.</p>")
    failureReason: option<string_>,
    @ocaml.doc("<p>The status of the bot channel. </p>
         <ul>
            <li>
               <p>
                  <code>CREATED</code> - The channel has been created and is
          ready for use.</p>
            </li>
            <li>
               <p>
                  <code>IN_PROGRESS</code> - Channel creation is in
          progress.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - There was an error creating the channel.
          For information about the reason for the failure, see the
            <code>failureReason</code> field.</p>
            </li>
         </ul>")
    status: option<channelStatus>,
    @ocaml.doc("<p>Provides information that the messaging platform needs to
      communicate with the Amazon Lex bot.</p>")
    botConfiguration: option<channelConfigurationMap>,
    @ocaml.doc("<p>The type of the messaging platform.</p>") @as("type") type_: option<channelType>,
    @ocaml.doc("<p>The date that the association between the bot and the channel was
      created.</p>")
    createdDate: option<timestamp_>,
    @ocaml.doc("<p>The name of the Amazon Lex bot.</p>") botName: option<botName>,
    @ocaml.doc("<p>An alias pointing to the specific version of the Amazon Lex bot to which
      this association is being made.</p>")
    botAlias: option<aliasName>,
    @ocaml.doc("<p>A description of the association between the bot and the
      channel.</p>")
    description: option<description>,
    @ocaml.doc("<p>The name of the association between the bot and the
      channel.</p>")
    name: option<botChannelName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetBotChannelAssociationCommand"
  let make = (~botAlias, ~botName, ~name, ()) =>
    new({botAlias: botAlias, botName: botName, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSlotTypeVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the slot type to delete. You cannot delete the
        <code>$LATEST</code> version of the slot type. To delete the
        <code>$LATEST</code> version, use the <a>DeleteSlotType</a>
      operation.</p>")
    version: numericalVersion,
    @ocaml.doc("<p>The name of the slot type.</p>") name: slotTypeName,
  }
  type response = {.}
  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteSlotTypeVersionCommand"
  let make = (~version, ~name, ()) => new({version: version, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSlotType = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the slot type. The name is case sensitive. </p>") name: slotTypeName,
  }
  type response = {.}
  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteSlotTypeCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteIntentVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the intent to delete. You cannot delete the
        <code>$LATEST</code> version of the intent. To delete the
        <code>$LATEST</code> version, use the <a>DeleteIntent</a>
      operation.</p>")
    version: numericalVersion,
    @ocaml.doc("<p>The name of the intent.</p>") name: intentName,
  }
  type response = {.}
  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteIntentVersionCommand"
  let make = (~version, ~name, ()) => new({version: version, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteIntent = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the intent. The name is case sensitive. </p>") name: intentName,
  }
  type response = {.}
  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteIntentCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBotVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the bot to delete. You cannot delete the
        <code>$LATEST</code> version of the bot. To delete the
        <code>$LATEST</code> version, use the <a>DeleteBot</a>
      operation.</p>")
    version: numericalVersion,
    @ocaml.doc("<p>The name of the bot.</p>") name: botName,
  }
  type response = {.}
  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteBotVersionCommand"
  let make = (~version, ~name, ()) => new({version: version, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBotAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the bot that the alias points to.</p>") botName: botName,
    @ocaml.doc("<p>The name of the alias to delete. The name is case sensitive.
    </p>")
    name: aliasName,
  }
  type response = {.}
  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteBotAliasCommand"
  let make = (~botName, ~name, ()) => new({botName: botName, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBot = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the bot. The name is case sensitive. </p>") name: botName,
  }
  type response = {.}
  @module("@aws-sdk/client-lex") @new external new: request => t = "DeleteBotCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag keys to add to the resource. If a tag key already
      exists, the existing value is replaced with the new value.</p>")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the bot, bot alias, or bot channel
      to tag.</p>")
    resourceArn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-lex") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartImport = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags to add to the imported bot. You can only add tags when
      you import a bot, you can't add tags to an intent or slot type.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>Specifies the action that the <code>StartImport</code> operation
      should take when there is an existing resource with the same
      name.</p>
         <ul>
            <li>
               <p>FAIL_ON_CONFLICT - The import operation is stopped on the first
          conflict between a resource in the import file and an existing
          resource. The name of the resource causing the conflict is in the
            <code>failureReason</code> field of the response to the
            <code>GetImport</code> operation.</p>
               <p>OVERWRITE_LATEST - The import operation proceeds even if there
          is a conflict with an existing resource. The $LASTEST version of the
          existing resource is overwritten with the data from the import
          file.</p>
            </li>
         </ul>")
    mergeStrategy: mergeStrategy,
    @ocaml.doc("<p>Specifies the type of resource to export. Each resource also
      exports any resources that it depends on. </p>
         <ul>
            <li>
               <p>A bot exports dependent intents.</p>
            </li>
            <li>
               <p>An intent exports dependent slot types.</p>
            </li>
         </ul>")
    resourceType: resourceType,
    @ocaml.doc("<p>A zip archive in binary format. The archive should contain one file, a
      JSON file containing the resource to import. The resource should match the
      type specified in the <code>resourceType</code> field.</p>")
    payload: blob,
  }
  type response = {
    @ocaml.doc("<p>A timestamp for the date and time that the import job was
      requested.</p>")
    createdDate: option<timestamp_>,
    @ocaml.doc("<p>A list of tags added to the imported bot.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The status of the import job. If the status is <code>FAILED</code>,
      you can get the reason for the failure using the <code>GetImport</code>
      operation.</p>")
    importStatus: option<importStatus>,
    @ocaml.doc("<p>The identifier for the specific import job.</p>") importId: option<string_>,
    @ocaml.doc("<p>The action to take when there is a merge conflict.</p>")
    mergeStrategy: option<mergeStrategy>,
    @ocaml.doc("<p>The type of resource to import.</p>") resourceType: option<resourceType>,
    @ocaml.doc("<p>The name given to the import job.</p>") name: option<name>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "StartImportCommand"
  let make = (~mergeStrategy, ~resourceType, ~payload, ~tags=?, ()) =>
    new({tags: tags, mergeStrategy: mergeStrategy, resourceType: resourceType, payload: payload})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to get a list of tags
      for.</p>")
    resourceArn: amazonResourceName,
  }
  type response = {@ocaml.doc("<p>The tags associated with a resource.</p>") tags: option<tagList_>}
  @module("@aws-sdk/client-lex") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSlotTypes = {
  type t
  type request = {
    @ocaml.doc("<p>Substring to match in slot type names. A slot type will be returned
      if any part of its name matches the substring. For example, \"xyz\" matches
      both \"xyzabc\" and \"abcxyz.\"</p>")
    nameContains: option<slotTypeName>,
    @ocaml.doc("<p>The maximum number of slot types to return in the response. The
      default is 10.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token that fetches the next page of slot types. If the
      response to this API call is truncated, Amazon Lex returns a pagination token
      in the response. To fetch next page of slot types, specify the pagination
      token in the next request.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, it includes a pagination token that
      you can specify in your next request to fetch the next page of slot
      types.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of objects, one for each slot type, that provides
      information such as the name of the slot type, the version, and a
      description.</p>")
    slotTypes: option<slotTypeMetadataList>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetSlotTypesCommand"
  let make = (~nameContains=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({nameContains: nameContains, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSlotTypeVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of slot type versions to return in the response.
      The default is 10.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token for fetching the next page of slot type
      versions. If the response to this call is truncated, Amazon Lex returns a
      pagination token in the response. To fetch the next page of versions,
      specify the pagination token in the next request. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the slot type for which versions should be
      returned.</p>")
    name: slotTypeName,
  }
  type response = {
    @ocaml.doc("<p>A pagination token for fetching the next page of slot type
      versions. If the response to this call is truncated, Amazon Lex returns a
      pagination token in the response. To fetch the next page of versions,
      specify the pagination token in the next request. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of <code>SlotTypeMetadata</code> objects, one for each
      numbered version of the slot type plus one for the <code>$LATEST</code>
      version.</p>")
    slotTypes: option<slotTypeMetadataList>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetSlotTypeVersionsCommand"
  let make = (~name, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMigrations = {
  type t
  type request = {
    @ocaml.doc("<p>A pagination token that fetches the next page of migrations. If the
      response to this operation is truncated, Amazon Lex returns a pagination token
      in the response. To fetch the next page of migrations, specify the
      pagination token in the request.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of migrations to return in the response. The
      default is 10.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Filters the list to contain only migrations in the specified state.</p>")
    migrationStatusEquals: option<migrationStatus>,
    @ocaml.doc("<p>Filters the list to contain only bots whose name contains the
      specified string. The string is matched anywhere in bot name.</p>")
    v1BotNameContains: option<botName>,
    @ocaml.doc("<p>The order so sort the list.</p>") sortByOrder: option<sortOrder>,
    @ocaml.doc("<p>The field to sort the list of migrations by. You can sort by the
      Amazon Lex V1 bot name or the date and time that the migration was
      started.</p>")
    sortByAttribute: option<migrationSortAttribute>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, it includes a pagination token that you
      can specify in your next request to fetch the next page of
      migrations.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of summaries for migrations from Amazon Lex V1 to Amazon Lex V2. To see
      details of the migration, use the <code>migrationId</code> from the
      summary in a call to the 
      operation.</p>")
    migrationSummaries: option<migrationSummaryList>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetMigrationsCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~migrationStatusEquals=?,
    ~v1BotNameContains=?,
    ~sortByOrder=?,
    ~sortByAttribute=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      migrationStatusEquals: migrationStatusEquals,
      v1BotNameContains: v1BotNameContains,
      sortByOrder: sortByOrder,
      sortByAttribute: sortByAttribute,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIntents = {
  type t
  type request = {
    @ocaml.doc("<p>Substring to match in intent names. An intent will be returned if
      any part of its name matches the substring. For example, \"xyz\" matches
      both \"xyzabc\" and \"abcxyz.\"</p>")
    nameContains: option<intentName>,
    @ocaml.doc("<p>The maximum number of intents to return in the response. The
      default is 10.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token that fetches the next page of intents. If the
      response to this API call is truncated, Amazon Lex returns a pagination token
      in the response. To fetch the next page of intents, specify the pagination
      token in the next request. </p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, the response includes a pagination
      token that you can specify in your next request to fetch the next page of
      intents. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of <code>Intent</code> objects. For more information, see
        <a>PutBot</a>.</p>")
    intents: option<intentMetadataList>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetIntentsCommand"
  let make = (~nameContains=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({nameContains: nameContains, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIntentVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of intent versions to return in the response.
      The default is 10.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token for fetching the next page of intent versions.
      If the response to this call is truncated, Amazon Lex returns a pagination
      token in the response. To fetch the next page of versions, specify the
      pagination token in the next request. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the intent for which versions should be
      returned.</p>")
    name: intentName,
  }
  type response = {
    @ocaml.doc("<p>A pagination token for fetching the next page of intent versions.
      If the response to this call is truncated, Amazon Lex returns a pagination
      token in the response. To fetch the next page of versions, specify the
      pagination token in the next request. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of <code>IntentMetadata</code> objects, one for each
      numbered version of the intent plus one for the <code>$LATEST</code>
      version.</p>")
    intents: option<intentMetadataList>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetIntentVersionsCommand"
  let make = (~name, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBuiltinIntent = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for a built-in intent. To find the signature
      for an intent, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents\">Standard Built-in Intents</a> in the <i>Alexa Skills
        Kit</i>.</p>")
    signature: builtinIntentSignature,
  }
  type response = {
    @ocaml.doc("<p>An array of <code>BuiltinIntentSlot</code> objects, one entry for
      each slot type in the intent.</p>")
    slots: option<builtinIntentSlotList>,
    @ocaml.doc("<p>A list of locales that the intent supports.</p>")
    supportedLocales: option<localeList>,
    @ocaml.doc("<p>The unique identifier for a built-in intent.</p>")
    signature: option<builtinIntentSignature>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetBuiltinIntentCommand"
  let make = (~signature, ()) => new({signature: signature})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBots = {
  type t
  type request = {
    @ocaml.doc("<p>Substring to match in bot names. A bot will be returned if any part
      of its name matches the substring. For example, \"xyz\" matches both
      \"xyzabc\" and \"abcxyz.\"</p>")
    nameContains: option<botName>,
    @ocaml.doc("<p>The maximum number of bots to return in the response that the
      request will return. The default is 10.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token that fetches the next page of bots. If the
      response to this call is truncated, Amazon Lex returns a pagination token in
      the response. To fetch the next page of bots, specify the pagination token
      in the next request. </p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, it includes a pagination token that
      you can specify in your next request to fetch the next page of bots.
    </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of <code>botMetadata</code> objects, with one entry for
      each bot. </p>")
    bots: option<botMetadataList>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetBotsCommand"
  let make = (~nameContains=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({nameContains: nameContains, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBotVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of bot versions to return in the response. The
      default is 10.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token for fetching the next page of bot versions. If
      the response to this call is truncated, Amazon Lex returns a pagination token
      in the response. To fetch the next page of versions, specify the
      pagination token in the next request. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the bot for which versions should be
      returned.</p>")
    name: botName,
  }
  type response = {
    @ocaml.doc("<p>A pagination token for fetching the next page of bot versions. If
      the response to this call is truncated, Amazon Lex returns a pagination token
      in the response. To fetch the next page of versions, specify the
      pagination token in the next request. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of <code>BotMetadata</code> objects, one for each numbered
      version of the bot plus one for the <code>$LATEST</code>
      version.</p>")
    bots: option<botMetadataList>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetBotVersionsCommand"
  let make = (~name, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutSlotType = {
  type t
  type request = {
    @ocaml.doc("<p>Configuration information that extends the parent built-in slot type.
      The configuration is added to the settings for the parent slot
      type.</p>")
    slotTypeConfigurations: option<slotTypeConfigurations>,
    @ocaml.doc("<p>The built-in slot type used as the parent of the slot type. When you
      define a parent slot type, the new slot type has all of the same
      configuration as the parent.</p>
         <p>Only <code>AMAZON.AlphaNumeric</code> is supported.</p>")
    parentSlotTypeSignature: option<customOrBuiltinSlotTypeName>,
    @ocaml.doc("<p>When set to <code>true</code> a new numbered version of the slot
      type is created. This is the same as calling the
        <code>CreateSlotTypeVersion</code> operation. If you do not specify
        <code>createVersion</code>, the default is <code>false</code>.</p>")
    createVersion: option<boolean_>,
    @ocaml.doc("<p>Determines the slot resolution strategy that Amazon Lex uses to return
      slot type values. The field can be set to one of the following
      values:</p>
         <ul>
            <li>
               <p>
                  <code>ORIGINAL_VALUE</code> - Returns the value entered by the
          user, if the user value is similar to the slot value.</p>
            </li>
            <li>
               <p>
                  <code>TOP_RESOLUTION</code> - If there is a resolution list for
          the slot, return the first value in the resolution list as the slot
          type value. If there is no resolution list, null is
          returned.</p>
            </li>
         </ul>
         <p>If you don't specify the <code>valueSelectionStrategy</code>, the
      default is <code>ORIGINAL_VALUE</code>.</p>")
    valueSelectionStrategy: option<slotValueSelectionStrategy>,
    @ocaml.doc("<p>Identifies a specific revision of the <code>$LATEST</code>
      version.</p>
         <p>When you create a new slot type, leave the <code>checksum</code>
      field blank. If you specify a checksum you get a
        <code>BadRequestException</code> exception.</p>
         <p>When you want to update a slot type, set the <code>checksum</code>
      field to the checksum of the most recent revision of the
        <code>$LATEST</code> version. If you don't specify the <code>
        checksum</code> field, or if the checksum does not match the
        <code>$LATEST</code> version, you get a
        <code>PreconditionFailedException</code> exception.</p>")
    checksum: option<string_>,
    @ocaml.doc("<p>A list of <code>EnumerationValue</code> objects that defines the
      values that the slot type can take. Each value can have a list of
        <code>synonyms</code>, which are additional values that help train the
      machine learning model about the values that it resolves for a slot. </p>
         <p>A regular expression slot type doesn't require enumeration values.
      All other slot types require a list of enumeration values.</p>
         <p>When Amazon Lex resolves a slot value, it generates a resolution list
      that contains up to five possible values for the slot. If you are using a
      Lambda function, this resolution list is passed to the function. If you
      are not using a Lambda function you can choose to return the value that
      the user entered or the first value in the resolution list as the slot
      value. The <code>valueSelectionStrategy</code> field indicates the option
      to use. </p>")
    enumerationValues: option<enumerationValues>,
    @ocaml.doc("<p>A description of the slot type.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the slot type. The name is <i>not</i>
      case sensitive. </p>
         <p>The name can't match a built-in slot type name, or a built-in slot
      type name with \"AMAZON.\" removed. For example, because there is a built-in
      slot type called <code>AMAZON.DATE</code>, you can't create a custom slot
      type called <code>DATE</code>.</p>
         <p>For a list of built-in slot types, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference\">Slot Type Reference</a> in the <i>Alexa Skills
        Kit</i>.</p>")
    name: slotTypeName,
  }
  type response = {
    @ocaml.doc("<p>Configuration information that extends the parent built-in slot
      type.</p>")
    slotTypeConfigurations: option<slotTypeConfigurations>,
    @ocaml.doc("<p>The built-in slot type used as the parent of the slot type.</p>")
    parentSlotTypeSignature: option<customOrBuiltinSlotTypeName>,
    @ocaml.doc("<p>
            <code>True</code> if a new version of the slot type was created. If
      the <code>createVersion</code> field was not specified in the request, the
        <code>createVersion</code> field is set to false in the
      response.</p>")
    createVersion: option<boolean_>,
    @ocaml.doc("<p>The slot resolution strategy that Amazon Lex uses to determine the value
      of the slot. For more information, see <a>PutSlotType</a>.</p>")
    valueSelectionStrategy: option<slotValueSelectionStrategy>,
    @ocaml.doc("<p>Checksum of the <code>$LATEST</code> version of the slot
      type.</p>")
    checksum: option<string_>,
    @ocaml.doc("<p>The version of the slot type. For a new slot type, the version is
      always <code>$LATEST</code>. </p>")
    version: option<version>,
    @ocaml.doc("<p>The date that the slot type was created.</p>") createdDate: option<timestamp_>,
    @ocaml.doc("<p>The date that the slot type was updated. When you create a slot
      type, the creation date and last update date are the same.</p>")
    lastUpdatedDate: option<timestamp_>,
    @ocaml.doc("<p>A list of <code>EnumerationValue</code> objects that defines the
      values that the slot type can take.</p>")
    enumerationValues: option<enumerationValues>,
    @ocaml.doc("<p>A description of the slot type.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the slot type.</p>") name: option<slotTypeName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "PutSlotTypeCommand"
  let make = (
    ~name,
    ~slotTypeConfigurations=?,
    ~parentSlotTypeSignature=?,
    ~createVersion=?,
    ~valueSelectionStrategy=?,
    ~checksum=?,
    ~enumerationValues=?,
    ~description=?,
    (),
  ) =>
    new({
      slotTypeConfigurations: slotTypeConfigurations,
      parentSlotTypeSignature: parentSlotTypeSignature,
      createVersion: createVersion,
      valueSelectionStrategy: valueSelectionStrategy,
      checksum: checksum,
      enumerationValues: enumerationValues,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBotAlias = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags to add to the bot alias. You can only add tags when you
      create an alias, you can't use the <code>PutBotAlias</code> operation to
      update the tags on a bot alias. To update tags, use the
        <code>TagResource</code> operation.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>Settings for conversation logs for the alias.</p>")
    conversationLogs: option<conversationLogsRequest>,
    @ocaml.doc("<p>Identifies a specific revision of the <code>$LATEST</code>
      version.</p>
         <p>When you create a new bot alias, leave the <code>checksum</code>
      field blank. If you specify a checksum you get a
        <code>BadRequestException</code> exception.</p>
         <p>When you want to update a bot alias, set the <code>checksum</code>
      field to the checksum of the most recent revision of the
        <code>$LATEST</code> version. If you don't specify the <code>
        checksum</code> field, or if the checksum does not match the
        <code>$LATEST</code> version, you get a
        <code>PreconditionFailedException</code> exception.</p>")
    checksum: option<string_>,
    @ocaml.doc("<p>The name of the bot.</p>") botName: botName,
    @ocaml.doc("<p>The version of the bot.</p>") botVersion: version,
    @ocaml.doc("<p>A description of the alias.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the alias. The name is <i>not</i> case
      sensitive.</p>")
    name: aliasName,
  }
  type response = {
    @ocaml.doc("<p>A list of tags associated with a bot.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The settings that determine how Amazon Lex uses conversation logs for the
      alias.</p>")
    conversationLogs: option<conversationLogsResponse>,
    @ocaml.doc("<p>The checksum for the current version of the alias.</p>")
    checksum: option<string_>,
    @ocaml.doc("<p>The date that the bot alias was created.</p>") createdDate: option<timestamp_>,
    @ocaml.doc("<p>The date that the bot alias was updated. When you create a
      resource, the creation date and the last updated date are the
      same.</p>")
    lastUpdatedDate: option<timestamp_>,
    @ocaml.doc("<p>The name of the bot that the alias points to.</p>") botName: option<botName>,
    @ocaml.doc("<p>The version of the bot that the alias points to.</p>")
    botVersion: option<version>,
    @ocaml.doc("<p>A description of the alias.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the alias.</p>") name: option<aliasName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "PutBotAliasCommand"
  let make = (
    ~botName,
    ~botVersion,
    ~name,
    ~tags=?,
    ~conversationLogs=?,
    ~checksum=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      conversationLogs: conversationLogs,
      checksum: checksum,
      botName: botName,
      botVersion: botVersion,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBot = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags to add to the bot. You can only add tags when you
      create a bot, you can't use the <code>PutBot</code> operation to update
      the tags on a bot. To update tags, use the <code>TagResource</code>
      operation.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>When set to <code>true</code> a new numbered version of the bot is
      created. This is the same as calling the <code>CreateBotVersion</code>
      operation. If you don't specify <code>createVersion</code>, the default is
        <code>false</code>.</p>")
    createVersion: option<boolean_>,
    @ocaml.doc("<p>When set to <code>true</code> user utterances are sent to Amazon
      Comprehend for sentiment analysis. If you don't specify
        <code>detectSentiment</code>, the default is <code>false</code>.</p>")
    detectSentiment: option<boolean_>,
    @ocaml.doc("<p>For each Amazon Lex bot created with the Amazon Lex Model Building Service,
      you must specify whether your use of Amazon Lex is related to a website,
      program, or other application that is directed or targeted, in whole or in
      part, to children under age 13 and subject to the Children's Online
      Privacy Protection Act (COPPA) by specifying <code>true</code> or
        <code>false</code> in the <code>childDirected</code> field. By
      specifying <code>true</code> in the <code>childDirected</code> field, you
      confirm that your use of Amazon Lex <b>is</b> related
      to a website, program, or other application that is directed or targeted,
      in whole or in part, to children under age 13 and subject to COPPA. By
      specifying <code>false</code> in the <code>childDirected</code> field, you
      confirm that your use of Amazon Lex <b>is not</b>
      related to a website, program, or other application that is directed or
      targeted, in whole or in part, to children under age 13 and subject to
      COPPA. You may not specify a default value for the
        <code>childDirected</code> field that does not accurately reflect
      whether your use of Amazon Lex is related to a website, program, or other
      application that is directed or targeted, in whole or in part, to children
      under age 13 and subject to COPPA.</p>
         <p>If your use of Amazon Lex relates to a website, program, or other
      application that is directed in whole or in part, to children under age
      13, you must obtain any required verifiable parental consent under COPPA.
      For information regarding the use of Amazon Lex in connection with websites,
      programs, or other applications that are directed or targeted, in whole or
      in part, to children under age 13, see the <a href=\"https://aws.amazon.com/lex/faqs#data-security\">Amazon Lex FAQ.</a>
         </p>")
    childDirected: boolean_,
    @ocaml.doc("<p> Specifies the target locale for the bot. Any intent used in the
      bot must be compatible with the locale of the bot. </p>

         <p>The default is <code>en-US</code>.</p>")
    locale: locale,
    @ocaml.doc("<p>If you set the <code>processBehavior</code> element to
        <code>BUILD</code>, Amazon Lex builds the bot so that it can be run. If you
      set the element to <code>SAVE</code> Amazon Lex saves the bot, but doesn't
      build it. </p>
         <p>If you don't specify this value, the default value is
        <code>BUILD</code>.</p>")
    processBehavior: option<processBehavior>,
    @ocaml.doc("<p>Identifies a specific revision of the <code>$LATEST</code>
      version.</p>
         <p>When you create a new bot, leave the <code>checksum</code> field
      blank. If you specify a checksum you get a
        <code>BadRequestException</code> exception.</p>
         <p>When you want to update a bot, set the <code>checksum</code> field
      to the checksum of the most recent revision of the <code>$LATEST</code>
      version. If you don't specify the <code> checksum</code> field, or if the
      checksum does not match the <code>$LATEST</code> version, you get a
        <code>PreconditionFailedException</code> exception.</p>")
    checksum: option<string_>,
    @ocaml.doc("<p>The Amazon Polly voice ID that you want Amazon Lex to use for voice
      interactions with the user. The locale configured for the voice must match
      the locale of the bot. For more information, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/voicelist.html\">Voices
        in Amazon Polly</a> in the <i>Amazon Polly Developer
        Guide</i>.</p>")
    voiceId: option<string_>,
    @ocaml.doc("<p>The maximum time in seconds that Amazon Lex retains the data gathered in
      a conversation.</p>
         <p>A user interaction session remains active for the amount of time
      specified. If no conversation occurs during this time, the session expires
      and Amazon Lex deletes any data provided before the timeout.</p>
         <p>For example, suppose that a user chooses the OrderPizza intent, but
      gets sidetracked halfway through placing an order. If the user doesn't
      complete the order within the specified time, Amazon Lex discards the slot
      information that it gathered, and the user must start over.</p>
         <p>If you don't include the <code>idleSessionTTLInSeconds</code>
      element in a <code>PutBot</code> operation request, Amazon Lex uses the default
      value. This is also true if the request replaces an existing
      bot.</p>
         <p>The default is 300 seconds (5 minutes).</p>")
    idleSessionTTLInSeconds: option<sessionTTL>,
    @ocaml.doc("<p>When Amazon Lex can't understand the user's input in context, it tries
      to elicit the information a few times. After that, Amazon Lex sends the message
      defined in <code>abortStatement</code> to the user, and then cancels the
      conversation. To set the number of retries, use the
        <code>valueElicitationPrompt</code> field for the slot type. </p>
         <p>For example, in a pizza ordering bot, Amazon Lex might ask a user \"What
      type of crust would you like?\" If the user's response is not one of the
      expected responses (for example, \"thin crust, \"deep dish,\" etc.), Amazon Lex
      tries to elicit a correct response a few more times. </p>
         <p>For example, in a pizza ordering application,
        <code>OrderPizza</code> might be one of the intents. This intent might
      require the <code>CrustType</code> slot. You specify the
        <code>valueElicitationPrompt</code> field when you create the
        <code>CrustType</code> slot.</p>
         <p>If you have defined a fallback intent the cancel statement will not be
      sent to the user, the fallback intent is used instead. For more
      information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/built-in-intent-fallback.html\">
        AMAZON.FallbackIntent</a>.</p>")
    abortStatement: option<statement>,
    @ocaml.doc("<p>When Amazon Lex doesn't understand the user's intent, it uses this
      message to get clarification. To specify how many times Amazon Lex should
      repeat the clarification prompt, use the <code>maxAttempts</code> field.
      If Amazon Lex still doesn't understand, it sends the message in the
        <code>abortStatement</code> field. </p>
         <p>When you create a clarification prompt, make sure that it suggests
      the correct response from the user. for example, for a bot that orders
      pizza and drinks, you might create this clarification prompt: \"What would
      you like to do? You can say 'Order a pizza' or 'Order a drink.'\"</p>
         <p>If you have defined a fallback intent, it will be invoked if the
      clarification prompt is repeated the number of times defined in the
        <code>maxAttempts</code> field. For more information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/built-in-intent-fallback.html\">
        AMAZON.FallbackIntent</a>.</p>
         <p>If you don't define a clarification prompt, at runtime Amazon Lex will
      return a 400 Bad Request exception in three cases: </p>
         <ul>
            <li>
               <p>Follow-up prompt - When the user responds to a follow-up prompt
          but does not provide an intent. For example, in response to a
          follow-up prompt that says \"Would you like anything else today?\" the
          user says \"Yes.\" Amazon Lex will return a 400 Bad Request exception because
          it does not have a clarification prompt to send to the user to get an
          intent.</p>
            </li>
            <li>
               <p>Lambda function - When using a Lambda function, you return an
            <code>ElicitIntent</code> dialog type. Since Amazon Lex does not have a
          clarification prompt to get an intent from the user, it returns a 400
          Bad Request exception.</p>
            </li>
            <li>
               <p>PutSession operation - When using the <code>PutSession</code>
          operation, you send an <code>ElicitIntent</code> dialog type. Since
          Amazon Lex does not have a clarification prompt to get an intent from the
          user, it returns a 400 Bad Request exception.</p>
            </li>
         </ul>")
    clarificationPrompt: option<prompt>,
    @ocaml.doc("<p>Determines the threshold where Amazon Lex will insert the
        <code>AMAZON.FallbackIntent</code>,
        <code>AMAZON.KendraSearchIntent</code>, or both when returning
      alternative intents in a <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html\">PostContent</a> or
        <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html\">PostText</a> response.
        <code>AMAZON.FallbackIntent</code> and
        <code>AMAZON.KendraSearchIntent</code> are only inserted if they are
      configured for the bot.</p>
         <p>You must set the <code>enableModelImprovements</code> parameter to
        <code>true</code> to use confidence scores in the following
      regions.</p>
         <ul>
            <li>
               <p>US East (N. Virginia) (us-east-1)</p>
            </li>
            <li>
               <p>US West (Oregon) (us-west-2)</p>
            </li>
            <li>
               <p>Asia Pacific (Sydney) (ap-southeast-2)</p>
            </li>
            <li>
               <p>EU (Ireland) (eu-west-1)</p>
            </li>
         </ul>
         <p>In other Regions, the <code>enableModelImprovements</code> parameter
      is set to <code>true</code> by default.</p>
         <p>For example, suppose a bot is configured with the confidence threshold
      of 0.80 and the <code>AMAZON.FallbackIntent</code>. Amazon Lex returns three
      alternative intents with the following confidence scores: IntentA (0.70),
      IntentB (0.60), IntentC (0.50). The response from the
        <code>PostText</code> operation would be:</p>
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
    nluIntentConfidenceThreshold: option<confidenceThreshold>,
    @ocaml.doc("<p>Set to <code>true</code> to enable access to natural language
      understanding improvements. </p>
         <p>When you set the <code>enableModelImprovements</code> parameter to
        <code>true</code> you can use the
        <code>nluIntentConfidenceThreshold</code> parameter to configure
      confidence scores. For more information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/confidence-scores.html\">Confidence Scores</a>.</p>
         <p>You can only set the <code>enableModelImprovements</code> parameter in
      certain Regions. If you set the parameter to <code>true</code>, your bot
      has access to accuracy improvements.</p>
         <p>The Regions where you can set the <code>enableModelImprovements</code>
      parameter to <code>true</code> are:</p>
         <ul>
            <li>
               <p>US East (N. Virginia) (us-east-1)</p>
            </li>
            <li>
               <p>US West (Oregon) (us-west-2)</p>
            </li>
            <li>
               <p>Asia Pacific (Sydney) (ap-southeast-2)</p>
            </li>
            <li>
               <p>EU (Ireland) (eu-west-1)</p>
            </li>
         </ul>
         <p>In other Regions, the <code>enableModelImprovements</code> parameter
      is set to <code>true</code> by default. In these Regions setting the
      parameter to <code>false</code> throws a <code>ValidationException</code>
      exception.</p>")
    enableModelImprovements: option<boolean_>,
    @ocaml.doc("<p>An array of <code>Intent</code> objects. Each intent represents a
      command that a user can express. For example, a pizza ordering bot might
      support an OrderPizza intent. For more information, see <a>how-it-works</a>.</p>")
    intents: option<intentList>,
    @ocaml.doc("<p>A description of the bot.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the bot. The name is <i>not</i> case
      sensitive. </p>")
    name: botName,
  }
  type response = {
    @ocaml.doc("<p>A list of tags associated with the bot.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>
            <code>true</code> if the bot is configured to send user utterances to
      Amazon Comprehend for sentiment analysis. If the
        <code>detectSentiment</code> field was not specified in the request, the
        <code>detectSentiment</code> field is <code>false</code> in the
      response.</p>")
    detectSentiment: option<boolean_>,
    @ocaml.doc("<p>
            <code>True</code> if a new version of the bot was created. If the
        <code>createVersion</code> field was not specified in the request, the
        <code>createVersion</code> field is set to false in the
      response.</p>")
    createVersion: option<boolean_>,
    @ocaml.doc("<p>For each Amazon Lex bot created with the Amazon Lex Model Building Service,
      you must specify whether your use of Amazon Lex is related to a website,
      program, or other application that is directed or targeted, in whole or in
      part, to children under age 13 and subject to the Children's Online
      Privacy Protection Act (COPPA) by specifying <code>true</code> or
        <code>false</code> in the <code>childDirected</code> field. By
      specifying <code>true</code> in the <code>childDirected</code> field, you
      confirm that your use of Amazon Lex <b>is</b> related
      to a website, program, or other application that is directed or targeted,
      in whole or in part, to children under age 13 and subject to COPPA. By
      specifying <code>false</code> in the <code>childDirected</code> field, you
      confirm that your use of Amazon Lex <b>is not</b>
      related to a website, program, or other application that is directed or
      targeted, in whole or in part, to children under age 13 and subject to
      COPPA. You may not specify a default value for the
        <code>childDirected</code> field that does not accurately reflect
      whether your use of Amazon Lex is related to a website, program, or other
      application that is directed or targeted, in whole or in part, to children
      under age 13 and subject to COPPA.</p>
         <p>If your use of Amazon Lex relates to a website, program, or other
      application that is directed in whole or in part, to children under age
      13, you must obtain any required verifiable parental consent under COPPA.
      For information regarding the use of Amazon Lex in connection with websites,
      programs, or other applications that are directed or targeted, in whole or
      in part, to children under age 13, see the <a href=\"https://aws.amazon.com/lex/faqs#data-security\">Amazon Lex FAQ.</a>
         </p>")
    childDirected: option<boolean_>,
    @ocaml.doc("<p> The target locale for the bot. </p>") locale: option<locale>,
    @ocaml.doc("<p>The version of the bot. For a new bot, the version is always
        <code>$LATEST</code>.</p>")
    version: option<version>,
    @ocaml.doc("<p>Checksum of the bot that you created.</p>") checksum: option<string_>,
    @ocaml.doc("<p>The Amazon Polly voice ID that Amazon Lex uses for voice interaction
      with the user. For more information, see <a>PutBot</a>.</p>")
    voiceId: option<string_>,
    @ocaml.doc("<p>The maximum length of time that Amazon Lex retains the data gathered in
      a conversation. For more information, see <a>PutBot</a>.</p>")
    idleSessionTTLInSeconds: option<sessionTTL>,
    @ocaml.doc("<p>The date that the bot was created.</p>") createdDate: option<timestamp_>,
    @ocaml.doc("<p>The date that the bot was updated. When you create a resource, the
      creation date and last updated date are the same.</p>")
    lastUpdatedDate: option<timestamp_>,
    @ocaml.doc("<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the
      reason that it failed to build the bot.</p>")
    failureReason: option<string_>,
    @ocaml.doc("<p> When you send a request to create a bot with
        <code>processBehavior</code> set to <code>BUILD</code>, Amazon Lex sets the
        <code>status</code> response element to <code>BUILDING</code>.</p>
         <p>In the <code>READY_BASIC_TESTING</code> state you can test the bot
      with user inputs that exactly match the utterances configured for the
      bot's intents and values in the slot types.</p>
         <p>If Amazon Lex can't build the bot, Amazon Lex sets <code>status</code> to
        <code>FAILED</code>. Amazon Lex returns the reason for the failure in the
        <code>failureReason</code> response element. </p>
         <p>When you set <code>processBehavior</code> to <code>SAVE</code>,
      Amazon Lex sets the status code to <code>NOT BUILT</code>.</p>
         <p>When the bot is in the <code>READY</code> state you can test and
      publish the bot.</p>")
    status: option<status>,
    @ocaml.doc("<p>The message that Amazon Lex uses to cancel a conversation. For more
      information, see <a>PutBot</a>.</p>")
    abortStatement: option<statement>,
    @ocaml.doc("<p> The prompts that Amazon Lex uses when it doesn't understand the user's
      intent. For more information, see <a>PutBot</a>. </p>")
    clarificationPrompt: option<prompt>,
    @ocaml.doc("<p>The score that determines where Amazon Lex inserts the
        <code>AMAZON.FallbackIntent</code>,
        <code>AMAZON.KendraSearchIntent</code>, or both when returning
      alternative intents in a <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html\">PostContent</a> or
        <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html\">PostText</a> response.
        <code>AMAZON.FallbackIntent</code> is inserted if the confidence score
      for all intents is below this value.
        <code>AMAZON.KendraSearchIntent</code> is only inserted if it is
      configured for the bot.</p>")
    nluIntentConfidenceThreshold: option<confidenceThreshold>,
    @ocaml.doc("<p>Indicates whether the bot uses accuracy improvements.
        <code>true</code> indicates that the bot is using the improvements,
      otherwise, <code>false</code>.</p>")
    enableModelImprovements: option<boolean_>,
    @ocaml.doc("<p>An array of <code>Intent</code> objects. For more information, see
        <a>PutBot</a>.</p>")
    intents: option<intentList>,
    @ocaml.doc("<p>A description of the bot.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the bot.</p>") name: option<botName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "PutBotCommand"
  let make = (
    ~childDirected,
    ~locale,
    ~name,
    ~tags=?,
    ~createVersion=?,
    ~detectSentiment=?,
    ~processBehavior=?,
    ~checksum=?,
    ~voiceId=?,
    ~idleSessionTTLInSeconds=?,
    ~abortStatement=?,
    ~clarificationPrompt=?,
    ~nluIntentConfidenceThreshold=?,
    ~enableModelImprovements=?,
    ~intents=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      createVersion: createVersion,
      detectSentiment: detectSentiment,
      childDirected: childDirected,
      locale: locale,
      processBehavior: processBehavior,
      checksum: checksum,
      voiceId: voiceId,
      idleSessionTTLInSeconds: idleSessionTTLInSeconds,
      abortStatement: abortStatement,
      clarificationPrompt: clarificationPrompt,
      nluIntentConfidenceThreshold: nluIntentConfidenceThreshold,
      enableModelImprovements: enableModelImprovements,
      intents: intents,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSlotType = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the slot type. </p>") version: version,
    @ocaml.doc("<p>The name of the slot type. The name is case sensitive. </p>") name: slotTypeName,
  }
  type response = {
    @ocaml.doc("<p>Configuration information that extends the parent built-in slot
      type.</p>")
    slotTypeConfigurations: option<slotTypeConfigurations>,
    @ocaml.doc("<p>The built-in slot type used as a parent for the slot type.</p>")
    parentSlotTypeSignature: option<customOrBuiltinSlotTypeName>,
    @ocaml.doc("<p>The strategy that Amazon Lex uses to determine the value of the slot.
      For more information, see <a>PutSlotType</a>.</p>")
    valueSelectionStrategy: option<slotValueSelectionStrategy>,
    @ocaml.doc("<p>Checksum of the <code>$LATEST</code> version of the slot
      type.</p>")
    checksum: option<string_>,
    @ocaml.doc("<p>The version of the slot type.</p>") version: option<version>,
    @ocaml.doc("<p>The date that the slot type was created.</p>") createdDate: option<timestamp_>,
    @ocaml.doc("<p>The date that the slot type was updated. When you create a
      resource, the creation date and last update date are the same.</p>")
    lastUpdatedDate: option<timestamp_>,
    @ocaml.doc("<p>A list of <code>EnumerationValue</code> objects that defines the
      values that the slot type can take.</p>")
    enumerationValues: option<enumerationValues>,
    @ocaml.doc("<p>A description of the slot type.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the slot type.</p>") name: option<slotTypeName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetSlotTypeCommand"
  let make = (~version, ~name, ()) => new({version: version, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMigration = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the migration to view. The
        <code>migrationID</code> is returned by the  operation.</p>")
    migrationId: migrationId,
  }
  type response = {
    @ocaml.doc("<p>A list of alerts and warnings that indicate issues with the migration
      for the Amazon Lex V1 bot to Amazon Lex V2. You receive a warning when an Amazon Lex V1
      feature has a different implementation if Amazon Lex V2.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/lexv2/latest/dg/migrate.html\">Migrating a bot</a> in the <i>Amazon Lex V2
        developer guide</i>.</p>")
    alerts: option<migrationAlerts>,
    @ocaml.doc("<p>The date and time that the migration started.</p>")
    migrationTimestamp: option<timestamp_>,
    @ocaml.doc("<p>The strategy used to conduct the migration.</p>
         <ul>
            <li>
               <p>
                  <code>CREATE_NEW</code> - Creates a new Amazon Lex V2 bot and migrates
          the Amazon Lex V1 bot to the new bot.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_EXISTING</code> - Overwrites the existing Amazon Lex V2 bot
        metadata and the locale being migrated. It doesn't change any other
        locales in the Amazon Lex V2 bot. If the locale doesn't exist, a new locale
        is created in the Amazon Lex V2 bot.</p>
            </li>
         </ul>")
    migrationStrategy: option<migrationStrategy>,
    @ocaml.doc("<p>Indicates the status of the migration. When the status is
        <code>COMPLETE</code> the migration is finished and the bot is available
      in Amazon Lex V2. There may be alerts and warnings that need to be resolved to
      complete the migration.</p>")
    migrationStatus: option<migrationStatus>,
    @ocaml.doc("<p>The IAM role that Amazon Lex uses to run the Amazon Lex V2 bot.</p>")
    v2BotRole: option<iamRoleArn>,
    @ocaml.doc("<p>The unique identifier of the Amazon Lex V2 bot that the Amazon Lex V1 is being
      migrated to.</p>")
    v2BotId: option<v2BotId>,
    @ocaml.doc("<p>The locale of the Amazon Lex V1 bot migrated to Amazon Lex V2.</p>")
    v1BotLocale: option<locale>,
    @ocaml.doc("<p>The version of the Amazon Lex V1 bot migrated to Amazon Lex V2.</p>")
    v1BotVersion: option<version>,
    @ocaml.doc("<p>The name of the Amazon Lex V1 bot migrated to Amazon Lex V2.</p>")
    v1BotName: option<botName>,
    @ocaml.doc("<p>The unique identifier of the migration. This is the same as the
      identifier used when calling the <code>GetMigration</code>
      operation.</p>")
    migrationId: option<migrationId>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetMigrationCommand"
  let make = (~migrationId, ()) => new({migrationId: migrationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBuiltinSlotTypes = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of slot types to return in the response. The
      default is 10.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token that fetches the next page of slot types. If the
      response to this API call is truncated, Amazon Lex returns a pagination token
      in the response. To fetch the next page of slot types, specify the
      pagination token in the next request.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Substring to match in built-in slot type signatures. A slot type
      will be returned if any part of its signature matches the substring. For
      example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\"</p>")
    signatureContains: option<string_>,
    @ocaml.doc("<p>A list of locales that the slot type supports.</p>") locale: option<locale>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, the response includes a pagination
      token that you can use in your next request to fetch the next page of slot
      types.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of <code>BuiltInSlotTypeMetadata</code> objects, one entry
      for each slot type returned.</p>")
    slotTypes: option<builtinSlotTypeMetadataList>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetBuiltinSlotTypesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~signatureContains=?, ~locale=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      signatureContains: signatureContains,
      locale: locale,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBuiltinIntents = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of intents to return in the response. The
      default is 10.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token that fetches the next page of intents. If this
      API call is truncated, Amazon Lex returns a pagination token in the response.
      To fetch the next page of intents, use the pagination token in the next
      request.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Substring to match in built-in intent signatures. An intent will be
      returned if any part of its signature matches the substring. For example,
      \"xyz\" matches both \"xyzabc\" and \"abcxyz.\" To find the signature for an
      intent, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents\">Standard Built-in Intents</a> in the <i>Alexa Skills
        Kit</i>.</p>")
    signatureContains: option<string_>,
    @ocaml.doc("<p>A list of locales that the intent supports.</p>") locale: option<locale>,
  }
  type response = {
    @ocaml.doc("<p>A pagination token that fetches the next page of intents. If the
      response to this API call is truncated, Amazon Lex returns a pagination token
      in the response. To fetch the next page of intents, specify the pagination
      token in the next request.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of <code>builtinIntentMetadata</code> objects, one for
      each intent in the response.</p>")
    intents: option<builtinIntentMetadataList>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetBuiltinIntentsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~signatureContains=?, ~locale=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      signatureContains: signatureContains,
      locale: locale,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBotChannelAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>Substring to match in channel association names. An association
      will be returned if any part of its name matches the substring. For
      example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\" To return all bot
      channel associations, use a hyphen (\"-\") as the <code>nameContains</code>
      parameter.</p>")
    nameContains: option<botChannelName>,
    @ocaml.doc("<p>The maximum number of associations to return in the response. The
      default is 50. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token for fetching the next page of associations. If
      the response to this call is truncated, Amazon Lex returns a pagination token
      in the response. To fetch the next page of associations, specify the
      pagination token in the next request. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An alias pointing to the specific version of the Amazon Lex bot to which
      this association is being made.</p>")
    botAlias: aliasNameOrListAll,
    @ocaml.doc("<p>The name of the Amazon Lex bot in the association.</p>") botName: botName,
  }
  type response = {
    @ocaml.doc("<p>A pagination token that fetches the next page of associations. If
      the response to this call is truncated, Amazon Lex returns a pagination token
      in the response. To fetch the next page of associations, specify the
      pagination token in the next request. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of objects, one for each association, that provides
      information about the Amazon Lex bot and its association with the channel.
    </p>")
    botChannelAssociations: option<botChannelAssociationList>,
  }
  @module("@aws-sdk/client-lex") @new
  external new: request => t = "GetBotChannelAssociationsCommand"
  let make = (~botAlias, ~botName, ~nameContains=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      nameContains: nameContains,
      maxResults: maxResults,
      nextToken: nextToken,
      botAlias: botAlias,
      botName: botName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBotAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the bot.</p>") botName: botName,
    @ocaml.doc("<p>The name of the bot alias. The name is case sensitive.</p>") name: aliasName,
  }
  type response = {
    @ocaml.doc("<p>The settings that determine how Amazon Lex uses conversation logs for the
      alias.</p>")
    conversationLogs: option<conversationLogsResponse>,
    @ocaml.doc("<p>Checksum of the bot alias.</p>") checksum: option<string_>,
    @ocaml.doc("<p>The date that the bot alias was created.</p>") createdDate: option<timestamp_>,
    @ocaml.doc("<p>The date that the bot alias was updated. When you create a
      resource, the creation date and the last updated date are the
      same.</p>")
    lastUpdatedDate: option<timestamp_>,
    @ocaml.doc("<p>The name of the bot that the alias points to.</p>") botName: option<botName>,
    @ocaml.doc("<p>The version of the bot that the alias points to.</p>")
    botVersion: option<version>,
    @ocaml.doc("<p>A description of the bot alias.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the bot alias.</p>") name: option<aliasName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetBotAliasCommand"
  let make = (~botName, ~name, ()) => new({botName: botName, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBot = {
  type t
  type request = {
    @ocaml.doc("<p>The version or alias of the bot.</p>") versionOrAlias: string_,
    @ocaml.doc("<p>The name of the bot. The name is case sensitive. </p>") name: botName,
  }
  type response = {
    @ocaml.doc("<p>Indicates whether user utterances should be sent to Amazon Comprehend
      for sentiment analysis.</p>")
    detectSentiment: option<boolean_>,
    @ocaml.doc("<p>For each Amazon Lex bot created with the Amazon Lex Model Building Service,
      you must specify whether your use of Amazon Lex is related to a website,
      program, or other application that is directed or targeted, in whole or in
      part, to children under age 13 and subject to the Children's Online
      Privacy Protection Act (COPPA) by specifying <code>true</code> or
        <code>false</code> in the <code>childDirected</code> field. By
      specifying <code>true</code> in the <code>childDirected</code> field, you
      confirm that your use of Amazon Lex <b>is</b> related
      to a website, program, or other application that is directed or targeted,
      in whole or in part, to children under age 13 and subject to COPPA. By
      specifying <code>false</code> in the <code>childDirected</code> field, you
      confirm that your use of Amazon Lex <b>is not</b>
      related to a website, program, or other application that is directed or
      targeted, in whole or in part, to children under age 13 and subject to
      COPPA. You may not specify a default value for the
        <code>childDirected</code> field that does not accurately reflect
      whether your use of Amazon Lex is related to a website, program, or other
      application that is directed or targeted, in whole or in part, to children
      under age 13 and subject to COPPA.</p>
         <p>If your use of Amazon Lex relates to a website, program, or other
      application that is directed in whole or in part, to children under age
      13, you must obtain any required verifiable parental consent under COPPA.
      For information regarding the use of Amazon Lex in connection with websites,
      programs, or other applications that are directed or targeted, in whole or
      in part, to children under age 13, see the <a href=\"https://aws.amazon.com/lex/faqs#data-security\">Amazon Lex FAQ.</a>
         </p>")
    childDirected: option<boolean_>,
    @ocaml.doc("<p> The target locale for the bot. </p>") locale: option<locale>,
    @ocaml.doc("<p>The version of the bot. For a new bot, the version is always
        <code>$LATEST</code>.</p>")
    version: option<version>,
    @ocaml.doc("<p>Checksum of the bot used to identify a specific revision of the
      bot's <code>$LATEST</code> version.</p>")
    checksum: option<string_>,
    @ocaml.doc("<p>The Amazon Polly voice ID that Amazon Lex uses for voice interaction
      with the user. For more information, see <a>PutBot</a>.</p>")
    voiceId: option<string_>,
    @ocaml.doc("<p>The maximum time in seconds that Amazon Lex retains the data gathered in
      a conversation. For more information, see <a>PutBot</a>.</p>")
    idleSessionTTLInSeconds: option<sessionTTL>,
    @ocaml.doc("<p>The date that the bot was created.</p>") createdDate: option<timestamp_>,
    @ocaml.doc("<p>The date that the bot was updated. When you create a resource, the
      creation date and last updated date are the same. </p>")
    lastUpdatedDate: option<timestamp_>,
    @ocaml.doc("<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex explains why
      it failed to build the bot.</p>")
    failureReason: option<string_>,
    @ocaml.doc("<p>The status of the bot. </p>
         <p>When the status is <code>BUILDING</code> Amazon Lex is building the bot
      for testing and use.</p>
         <p>If the status of the bot is <code>READY_BASIC_TESTING</code>, you
      can test the bot using the exact utterances specified in the bot's
      intents. When the bot is ready for full testing or to run, the status is
        <code>READY</code>.</p>
         <p>If there was a problem with building the bot, the status is
        <code>FAILED</code> and the <code>failureReason</code> field explains
      why the bot did not build.</p>
         <p>If the bot was saved but not built, the status is
        <code>NOT_BUILT</code>.</p>")
    status: option<status>,
    @ocaml.doc("<p>The message that Amazon Lex returns when the user elects to end the
      conversation without completing it. For more information, see <a>PutBot</a>.</p>")
    abortStatement: option<statement>,
    @ocaml.doc("<p>The message Amazon Lex uses when it doesn't understand the user's
      request. For more information, see <a>PutBot</a>. </p>")
    clarificationPrompt: option<prompt>,
    @ocaml.doc("<p>The score that determines where Amazon Lex inserts the
        <code>AMAZON.FallbackIntent</code>,
        <code>AMAZON.KendraSearchIntent</code>, or both when returning
      alternative intents in a <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html\">PostContent</a> or
        <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html\">PostText</a> response.
        <code>AMAZON.FallbackIntent</code> is inserted if the confidence score
      for all intents is below this value.
        <code>AMAZON.KendraSearchIntent</code> is only inserted if it is
      configured for the bot.</p>")
    nluIntentConfidenceThreshold: option<confidenceThreshold>,
    @ocaml.doc("<p>Indicates whether the bot uses accuracy improvements.
        <code>true</code> indicates that the bot is using the improvements,
      otherwise, <code>false</code>.</p>")
    enableModelImprovements: option<boolean_>,
    @ocaml.doc("<p>An array of <code>intent</code> objects. For more information, see
        <a>PutBot</a>.</p>")
    intents: option<intentList>,
    @ocaml.doc("<p>A description of the bot.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the bot.</p>") name: option<botName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetBotCommand"
  let make = (~versionOrAlias, ~name, ()) => new({versionOrAlias: versionOrAlias, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSlotTypeVersion = {
  type t
  type request = {
    @ocaml.doc("<p>Checksum for the <code>$LATEST</code> version of the slot type that
      you want to publish. If you specify a checksum and the
        <code>$LATEST</code> version of the slot type has a different checksum,
      Amazon Lex returns a <code>PreconditionFailedException</code> exception and
      doesn't publish the new version. If you don't specify a checksum, Amazon Lex
      publishes the <code>$LATEST</code> version.</p>")
    checksum: option<string_>,
    @ocaml.doc("<p>The name of the slot type that you want to create a new version
      for. The name is case sensitive. </p>")
    name: slotTypeName,
  }
  type response = {
    @ocaml.doc("<p>Configuration information that extends the parent built-in slot
      type.</p>")
    slotTypeConfigurations: option<slotTypeConfigurations>,
    @ocaml.doc("<p>The built-in slot type used a the parent of the slot type.</p>")
    parentSlotTypeSignature: option<customOrBuiltinSlotTypeName>,
    @ocaml.doc("<p>The strategy that Amazon Lex uses to determine the value of the slot.
      For more information, see <a>PutSlotType</a>.</p>")
    valueSelectionStrategy: option<slotValueSelectionStrategy>,
    @ocaml.doc("<p>Checksum of the <code>$LATEST</code> version of the slot
      type.</p>")
    checksum: option<string_>,
    @ocaml.doc("<p>The version assigned to the new slot type version. </p>")
    version: option<version>,
    @ocaml.doc("<p>The date that the slot type was created.</p>") createdDate: option<timestamp_>,
    @ocaml.doc("<p>The date that the slot type was updated. When you create a
      resource, the creation date and last update date are the same.</p>")
    lastUpdatedDate: option<timestamp_>,
    @ocaml.doc("<p>A list of <code>EnumerationValue</code> objects that defines the
      values that the slot type can take.</p>")
    enumerationValues: option<enumerationValues>,
    @ocaml.doc("<p>A description of the slot type.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the slot type.</p>") name: option<slotTypeName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "CreateSlotTypeVersionCommand"
  let make = (~name, ~checksum=?, ()) => new({checksum: checksum, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBotVersion = {
  type t
  type request = {
    @ocaml.doc("<p>Identifies a specific revision of the <code>$LATEST</code> version
      of the bot. If you specify a checksum and the <code>$LATEST</code> version
      of the bot has a different checksum, a
        <code>PreconditionFailedException</code> exception is returned and Amazon Lex
      doesn't publish a new version. If you don't specify a checksum, Amazon Lex
      publishes the <code>$LATEST</code> version.</p>")
    checksum: option<string_>,
    @ocaml.doc("<p>The name of the bot that you want to create a new version of. The
      name is case sensitive. </p>")
    name: botName,
  }
  type response = {
    @ocaml.doc("<p>Indicates whether utterances entered by the user should be sent to
      Amazon Comprehend for sentiment analysis.</p>")
    detectSentiment: option<boolean_>,
    @ocaml.doc("<p>Indicates whether the bot uses accuracy improvements.
        <code>true</code> indicates that the bot is using the improvements,
      otherwise, <code>false</code>.</p>")
    enableModelImprovements: option<boolean_>,
    @ocaml.doc("<p>For each Amazon Lex bot created with the Amazon Lex Model Building Service,
      you must specify whether your use of Amazon Lex is related to a website,
      program, or other application that is directed or targeted, in whole or in
      part, to children under age 13 and subject to the Children's Online
      Privacy Protection Act (COPPA) by specifying <code>true</code> or
        <code>false</code> in the <code>childDirected</code> field. By
      specifying <code>true</code> in the <code>childDirected</code> field, you
      confirm that your use of Amazon Lex <b>is</b> related
      to a website, program, or other application that is directed or targeted,
      in whole or in part, to children under age 13 and subject to COPPA. By
      specifying <code>false</code> in the <code>childDirected</code> field, you
      confirm that your use of Amazon Lex <b>is not</b>
      related to a website, program, or other application that is directed or
      targeted, in whole or in part, to children under age 13 and subject to
      COPPA. You may not specify a default value for the
        <code>childDirected</code> field that does not accurately reflect
      whether your use of Amazon Lex is related to a website, program, or other
      application that is directed or targeted, in whole or in part, to children
      under age 13 and subject to COPPA.</p>
         <p>If your use of Amazon Lex relates to a website, program, or other
      application that is directed in whole or in part, to children under age
      13, you must obtain any required verifiable parental consent under COPPA.
      For information regarding the use of Amazon Lex in connection with websites,
      programs, or other applications that are directed or targeted, in whole or
      in part, to children under age 13, see the <a href=\"https://aws.amazon.com/lex/faqs#data-security\">Amazon Lex FAQ.</a>
         </p>")
    childDirected: option<boolean_>,
    @ocaml.doc("<p> Specifies the target locale for the bot. </p>") locale: option<locale>,
    @ocaml.doc("<p>The version of the bot. </p>") version: option<version>,
    @ocaml.doc("<p>Checksum identifying the version of the bot that was
      created.</p>")
    checksum: option<string_>,
    @ocaml.doc("<p>The Amazon Polly voice ID that Amazon Lex uses for voice interactions
      with the user.</p>")
    voiceId: option<string_>,
    @ocaml.doc("<p>The maximum time in seconds that Amazon Lex retains the data gathered in
      a conversation. For more information, see <a>PutBot</a>.</p>")
    idleSessionTTLInSeconds: option<sessionTTL>,
    @ocaml.doc("<p>The date when the bot version was created.</p>") createdDate: option<timestamp_>,
    @ocaml.doc("<p>The date when the <code>$LATEST</code> version of this bot was
      updated. </p>")
    lastUpdatedDate: option<timestamp_>,
    @ocaml.doc("<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the
      reason that it failed to build the bot.</p>")
    failureReason: option<string_>,
    @ocaml.doc("<p> When you send a request to create or update a bot, Amazon Lex sets the
        <code>status</code> response element to <code>BUILDING</code>. After
      Amazon Lex builds the bot, it sets <code>status</code> to <code>READY</code>.
      If Amazon Lex can't build the bot, it sets <code>status</code> to
        <code>FAILED</code>. Amazon Lex returns the reason for the failure in the
        <code>failureReason</code> response element. </p>")
    status: option<status>,
    @ocaml.doc("<p>The message that Amazon Lex uses to cancel a conversation. For more
      information, see <a>PutBot</a>.</p>")
    abortStatement: option<statement>,
    @ocaml.doc("<p>The message that Amazon Lex uses when it doesn't understand the user's
      request. For more information, see <a>PutBot</a>. </p>")
    clarificationPrompt: option<prompt>,
    @ocaml.doc("<p>An array of <code>Intent</code> objects. For more information, see
        <a>PutBot</a>.</p>")
    intents: option<intentList>,
    @ocaml.doc("<p>A description of the bot.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the bot.</p>") name: option<botName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "CreateBotVersionCommand"
  let make = (~name, ~checksum=?, ()) => new({checksum: checksum, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUtterancesView = {
  type t
  type request = {
    @ocaml.doc("<p>To return utterances that were recognized and handled, use
        <code>Detected</code>. To return utterances that were not recognized,
      use <code>Missed</code>.</p>")
    statusType: statusType,
    @ocaml.doc("<p>An array of bot versions for which utterance information should be
      returned. The limit is 5 versions per request.</p>")
    botVersions: botVersions,
    @ocaml.doc("<p>The name of the bot for which utterance information should be
      returned.</p>")
    botName: botName,
  }
  type response = {
    @ocaml.doc("<p>An array of <a>UtteranceList</a> objects, each
      containing a list of <a>UtteranceData</a> objects describing
      the utterances that were processed by your bot. The response contains a
      maximum of 100 <code>UtteranceData</code> objects for each version. Amazon Lex
      returns the most frequent utterances received by the bot in the last 15
      days.</p>")
    utterances: option<listsOfUtterances>,
    @ocaml.doc("<p>The name of the bot for which utterance information was
      returned.</p>")
    botName: option<botName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetUtterancesViewCommand"
  let make = (~statusType, ~botVersions, ~botName, ()) =>
    new({statusType: statusType, botVersions: botVersions, botName: botName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutIntent = {
  type t
  type request = {
    @ocaml.doc("<p>An array of <code>OutputContext</code> objects that lists the contexts
      that the intent activates when the intent is fulfilled.</p>")
    outputContexts: option<outputContextList>,
    @ocaml.doc("<p>An array of <code>InputContext</code> objects that lists the contexts
      that must be active for Amazon Lex to choose the intent in a conversation with
      the user.</p>")
    inputContexts: option<inputContextList>,
    @ocaml.doc("<p>Configuration information required to use the
        <code>AMAZON.KendraSearchIntent</code> intent to connect to an Amazon
      Kendra index. For more information, see <a href=\"http://docs.aws.amazon.com/lex/latest/dg/built-in-intent-kendra-search.html\">
        AMAZON.KendraSearchIntent</a>.</p>")
    kendraConfiguration: option<kendraConfiguration>,
    @ocaml.doc("<p>When set to <code>true</code> a new numbered version of the intent
      is created. This is the same as calling the
        <code>CreateIntentVersion</code> operation. If you do not specify
        <code>createVersion</code>, the default is <code>false</code>.</p>")
    createVersion: option<boolean_>,
    @ocaml.doc("<p>Identifies a specific revision of the <code>$LATEST</code>
      version.</p>
         <p>When you create a new intent, leave the <code>checksum</code> field
      blank. If you specify a checksum you get a
        <code>BadRequestException</code> exception.</p>
         <p>When you want to update a intent, set the <code>checksum</code>
      field to the checksum of the most recent revision of the
        <code>$LATEST</code> version. If you don't specify the <code>
        checksum</code> field, or if the checksum does not match the
        <code>$LATEST</code> version, you get a
        <code>PreconditionFailedException</code> exception.</p>")
    checksum: option<string_>,
    @ocaml.doc("<p>A unique identifier for the built-in intent to base this intent on.
      To find the signature for an intent, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents\">Standard Built-in Intents</a> in the <i>Alexa Skills
        Kit</i>.</p>")
    parentIntentSignature: option<builtinIntentSignature>,
    @ocaml.doc("<p>Required. Describes how the intent is fulfilled. For example, after
      a user provides all of the information for a pizza order,
        <code>fulfillmentActivity</code> defines how the bot places an order
      with a local pizza store. </p>
         <p> You might configure Amazon Lex to return all of the intent information
      to the client application, or direct it to invoke a Lambda function that
      can process the intent (for example, place an order with a pizzeria).
    </p>")
    fulfillmentActivity: option<fulfillmentActivity>,
    @ocaml.doc("<p> Specifies a Lambda function to invoke for each user input. You can
      invoke this Lambda function to personalize user interaction. </p>
         <p>For example, suppose your bot determines that the user is John.
      Your Lambda function might retrieve John's information from a backend
      database and prepopulate some of the values. For example, if you find that
      John is gluten intolerant, you might set the corresponding intent slot,
        <code>GlutenIntolerant</code>, to true. You might find John's phone
      number and set the corresponding session attribute. </p>")
    dialogCodeHook: option<codeHook>,
    @ocaml.doc("<p> The statement that you want Amazon Lex to convey to the user after the
      intent is successfully fulfilled by the Lambda function. </p>
         <p>This element is relevant only if you provide a Lambda function in
      the <code>fulfillmentActivity</code>. If you return the intent to the
      client application, you can't specify this element.</p>
         <note>
            <p>The <code>followUpPrompt</code> and
          <code>conclusionStatement</code> are mutually exclusive. You can
        specify only one.</p>
         </note>")
    conclusionStatement: option<statement>,
    @ocaml.doc("<p>Amazon Lex uses this prompt to solicit additional activity after
      fulfilling an intent. For example, after the <code>OrderPizza</code>
      intent is fulfilled, you might prompt the user to order a drink.</p>
         <p>The action that Amazon Lex takes depends on the user's response, as
      follows:</p>
         <ul>
            <li>
               <p>If the user says \"Yes\" it responds with the clarification
          prompt that is configured for the bot.</p>
            </li>
            <li>
               <p>if the user says \"Yes\" and continues with an utterance that
          triggers an intent it starts a conversation for the intent.</p>
            </li>
            <li>
               <p>If the user says \"No\" it responds with the rejection statement
          configured for the the follow-up prompt.</p>
            </li>
            <li>
               <p>If it doesn't recognize the utterance it repeats the follow-up
          prompt again.</p>
            </li>
         </ul>

         <p>The <code>followUpPrompt</code> field and the
        <code>conclusionStatement</code> field are mutually exclusive. You can
      specify only one. </p>")
    followUpPrompt: option<followUpPrompt>,
    @ocaml.doc("<p>When the user answers \"no\" to the question defined in
        <code>confirmationPrompt</code>, Amazon Lex responds with this statement to
      acknowledge that the intent was canceled. </p>
         <note>
            <p>You must provide both the <code>rejectionStatement</code> and the
          <code>confirmationPrompt</code>, or neither.</p>
         </note>")
    rejectionStatement: option<statement>,
    @ocaml.doc("<p>Prompts the user to confirm the intent. This question should have a
      yes or no answer.</p>
         <p>Amazon Lex uses this prompt to ensure that the user acknowledges that
      the intent is ready for fulfillment. For example, with the
        <code>OrderPizza</code> intent, you might want to confirm that the order
      is correct before placing it. For other intents, such as intents that
      simply respond to user questions, you might not need to ask the user for
      confirmation before providing the information. </p>
         <note>
            <p>You you must provide both the <code>rejectionStatement</code> and
        the <code>confirmationPrompt</code>, or neither.</p>
         </note>")
    confirmationPrompt: option<prompt>,
    @ocaml.doc("<p>An array of utterances (strings) that a user might say to signal
      the intent. For example, \"I want {PizzaSize} pizza\", \"Order {Quantity}
      {PizzaSize} pizzas\". </p>

         <p>In each utterance, a slot name is enclosed in curly braces.
    </p>")
    sampleUtterances: option<intentUtteranceList>,
    @ocaml.doc("<p>An array of intent slots. At runtime, Amazon Lex elicits required slot
      values from the user using prompts defined in the slots. For more
      information, see <a>how-it-works</a>. </p>")
    slots: option<slotList>,
    @ocaml.doc("<p>A description of the intent.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the intent. The name is <i>not</i> case
      sensitive. </p>
         <p>The name can't match a built-in intent name, or a built-in intent
      name with \"AMAZON.\" removed. For example, because there is a built-in
      intent called <code>AMAZON.HelpIntent</code>, you can't create a custom
      intent called <code>HelpIntent</code>.</p>
         <p>For a list of built-in intents, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents\">Standard Built-in Intents</a> in the <i>Alexa Skills
        Kit</i>.</p>")
    name: intentName,
  }
  type response = {
    @ocaml.doc("<p>An array of <code>OutputContext</code> objects that lists the contexts
      that the intent activates when the intent is fulfilled.</p>")
    outputContexts: option<outputContextList>,
    @ocaml.doc("<p>An array of <code>InputContext</code> objects that lists the contexts
      that must be active for Amazon Lex to choose the intent in a conversation with
      the user.</p>")
    inputContexts: option<inputContextList>,
    @ocaml.doc("<p>Configuration information, if any, required to connect to an Amazon
      Kendra index and use the <code>AMAZON.KendraSearchIntent</code>
      intent.</p>")
    kendraConfiguration: option<kendraConfiguration>,
    @ocaml.doc("<p>
            <code>True</code> if a new version of the intent was created. If
      the <code>createVersion</code> field was not specified in the request, the
        <code>createVersion</code> field is set to false in the
      response.</p>")
    createVersion: option<boolean_>,
    @ocaml.doc("<p>Checksum of the <code>$LATEST</code>version of the intent created
      or updated.</p>")
    checksum: option<string_>,
    @ocaml.doc("<p>The version of the intent. For a new intent, the version is always
        <code>$LATEST</code>.</p>")
    version: option<version>,
    @ocaml.doc("<p>The date that the intent was created.</p>") createdDate: option<timestamp_>,
    @ocaml.doc("<p>The date that the intent was updated. When you create a resource,
      the creation date and last update dates are the same.</p>")
    lastUpdatedDate: option<timestamp_>,
    @ocaml.doc("<p>A unique identifier for the built-in intent that this intent is
      based on.</p>")
    parentIntentSignature: option<builtinIntentSignature>,
    @ocaml.doc("<p>If defined in the intent, Amazon Lex invokes this Lambda function to
      fulfill the intent after the user provides all of the information required
      by the intent.</p>")
    fulfillmentActivity: option<fulfillmentActivity>,
    @ocaml.doc("<p>If defined in the intent, Amazon Lex invokes this Lambda function for
      each user input.</p>")
    dialogCodeHook: option<codeHook>,
    @ocaml.doc("<p>After the Lambda function specified in
        the<code>fulfillmentActivity</code>intent fulfills the intent, Amazon Lex
      conveys this statement to the user.</p>")
    conclusionStatement: option<statement>,
    @ocaml.doc("<p>If defined in the intent, Amazon Lex uses this prompt to solicit
      additional user activity after the intent is fulfilled.</p>")
    followUpPrompt: option<followUpPrompt>,
    @ocaml.doc("<p>If the user answers \"no\" to the question defined in
        <code>confirmationPrompt</code> Amazon Lex responds with this statement to
      acknowledge that the intent was canceled. </p>")
    rejectionStatement: option<statement>,
    @ocaml.doc("<p>If defined in the intent, Amazon Lex prompts the user to confirm the
      intent before fulfilling it.</p>")
    confirmationPrompt: option<prompt>,
    @ocaml.doc("<p> An array of sample utterances that are configured for the intent.
    </p>")
    sampleUtterances: option<intentUtteranceList>,
    @ocaml.doc("<p>An array of intent slots that are configured for the
      intent.</p>")
    slots: option<slotList>,
    @ocaml.doc("<p>A description of the intent.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the intent.</p>") name: option<intentName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "PutIntentCommand"
  let make = (
    ~name,
    ~outputContexts=?,
    ~inputContexts=?,
    ~kendraConfiguration=?,
    ~createVersion=?,
    ~checksum=?,
    ~parentIntentSignature=?,
    ~fulfillmentActivity=?,
    ~dialogCodeHook=?,
    ~conclusionStatement=?,
    ~followUpPrompt=?,
    ~rejectionStatement=?,
    ~confirmationPrompt=?,
    ~sampleUtterances=?,
    ~slots=?,
    ~description=?,
    (),
  ) =>
    new({
      outputContexts: outputContexts,
      inputContexts: inputContexts,
      kendraConfiguration: kendraConfiguration,
      createVersion: createVersion,
      checksum: checksum,
      parentIntentSignature: parentIntentSignature,
      fulfillmentActivity: fulfillmentActivity,
      dialogCodeHook: dialogCodeHook,
      conclusionStatement: conclusionStatement,
      followUpPrompt: followUpPrompt,
      rejectionStatement: rejectionStatement,
      confirmationPrompt: confirmationPrompt,
      sampleUtterances: sampleUtterances,
      slots: slots,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIntent = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the intent.</p>") version: version,
    @ocaml.doc("<p>The name of the intent. The name is case sensitive. </p>") name: intentName,
  }
  type response = {
    @ocaml.doc("<p>An array of <code>OutputContext</code> objects that lists the contexts
      that the intent activates when the intent is fulfilled.</p>")
    outputContexts: option<outputContextList>,
    @ocaml.doc("<p>An array of <code>InputContext</code> objects that lists the contexts
      that must be active for Amazon Lex to choose the intent in a conversation with
      the user.</p>")
    inputContexts: option<inputContextList>,
    @ocaml.doc("<p>Configuration information, if any, to connect to an Amazon Kendra
      index with the <code>AMAZON.KendraSearchIntent</code> intent.</p>")
    kendraConfiguration: option<kendraConfiguration>,
    @ocaml.doc("<p>Checksum of the intent.</p>") checksum: option<string_>,
    @ocaml.doc("<p>The version of the intent.</p>") version: option<version>,
    @ocaml.doc("<p>The date that the intent was created.</p>") createdDate: option<timestamp_>,
    @ocaml.doc("<p>The date that the intent was updated. When you create a resource,
      the creation date and the last updated date are the same. </p>")
    lastUpdatedDate: option<timestamp_>,
    @ocaml.doc("<p>A unique identifier for a built-in intent.</p>")
    parentIntentSignature: option<builtinIntentSignature>,
    @ocaml.doc("<p>Describes how the intent is fulfilled. For more information, see
        <a>PutIntent</a>. </p>")
    fulfillmentActivity: option<fulfillmentActivity>,
    @ocaml.doc("<p>If defined in the bot, Amazon Amazon Lex invokes this Lambda function
      for each user input. For more information, see <a>PutIntent</a>. </p>")
    dialogCodeHook: option<codeHook>,
    @ocaml.doc("<p>After the Lambda function specified in the
        <code>fulfillmentActivity</code> element fulfills the intent, Amazon Lex
      conveys this statement to the user.</p>")
    conclusionStatement: option<statement>,
    @ocaml.doc("<p>If defined in the bot, Amazon Lex uses this prompt to solicit additional
      user activity after the intent is fulfilled. For more information, see
        <a>PutIntent</a>.</p>")
    followUpPrompt: option<followUpPrompt>,
    @ocaml.doc("<p>If the user answers \"no\" to the question defined in
        <code>confirmationPrompt</code>, Amazon Lex responds with this statement to
      acknowledge that the intent was canceled. </p>")
    rejectionStatement: option<statement>,
    @ocaml.doc("<p>If defined in the bot, Amazon Lex uses prompt to confirm the intent
      before fulfilling the user's request. For more information, see <a>PutIntent</a>. </p>")
    confirmationPrompt: option<prompt>,
    @ocaml.doc("<p>An array of sample utterances configured for the intent.</p>")
    sampleUtterances: option<intentUtteranceList>,
    @ocaml.doc("<p>An array of intent slots configured for the intent.</p>")
    slots: option<slotList>,
    @ocaml.doc("<p>A description of the intent.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the intent.</p>") name: option<intentName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetIntentCommand"
  let make = (~version, ~name, ()) => new({version: version, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBotAliases = {
  type t
  type request = {
    @ocaml.doc("<p>Substring to match in bot alias names. An alias will be returned if
      any part of its name matches the substring. For example, \"xyz\" matches
      both \"xyzabc\" and \"abcxyz.\"</p>")
    nameContains: option<aliasName>,
    @ocaml.doc("<p>The maximum number of aliases to return in the response. The
      default is 50. . </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token for fetching the next page of aliases. If the
      response to this call is truncated, Amazon Lex returns a pagination token in
      the response. To fetch the next page of aliases, specify the pagination
      token in the next request. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the bot.</p>") botName: botName,
  }
  type response = {
    @ocaml.doc("<p>A pagination token for fetching next page of aliases. If the
      response to this call is truncated, Amazon Lex returns a pagination token in
      the response. To fetch the next page of aliases, specify the pagination
      token in the next request. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of <code>BotAliasMetadata</code> objects, each describing
      a bot alias.</p>")
    @as("BotAliases")
    botAliases: option<botAliasMetadataList>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "GetBotAliasesCommand"
  let make = (~botName, ~nameContains=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      nameContains: nameContains,
      maxResults: maxResults,
      nextToken: nextToken,
      botName: botName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIntentVersion = {
  type t
  type request = {
    @ocaml.doc("<p>Checksum of the <code>$LATEST</code> version of the intent that
      should be used to create the new version. If you specify a checksum and
      the <code>$LATEST</code> version of the intent has a different checksum,
      Amazon Lex returns a <code>PreconditionFailedException</code> exception and
      doesn't publish a new version. If you don't specify a checksum, Amazon Lex
      publishes the <code>$LATEST</code> version.</p>")
    checksum: option<string_>,
    @ocaml.doc("<p>The name of the intent that you want to create a new version of.
      The name is case sensitive. </p>")
    name: intentName,
  }
  type response = {
    @ocaml.doc("<p>An array of <code>OutputContext</code> objects that lists the contexts
      that the intent activates when the intent is fulfilled.</p>")
    outputContexts: option<outputContextList>,
    @ocaml.doc("<p>An array of <code>InputContext</code> objects that lists the contexts
      that must be active for Amazon Lex to choose the intent in a conversation with
      the user.</p>")
    inputContexts: option<inputContextList>,
    @ocaml.doc("<p>Configuration information, if any, for connecting an Amazon Kendra
      index with the <code>AMAZON.KendraSearchIntent</code> intent.</p>")
    kendraConfiguration: option<kendraConfiguration>,
    @ocaml.doc("<p>Checksum of the intent version created.</p>") checksum: option<string_>,
    @ocaml.doc("<p>The version number assigned to the new version of the
      intent.</p>")
    version: option<version>,
    @ocaml.doc("<p>The date that the intent was created.</p>") createdDate: option<timestamp_>,
    @ocaml.doc("<p>The date that the intent was updated. </p>") lastUpdatedDate: option<timestamp_>,
    @ocaml.doc("<p>A unique identifier for a built-in intent.</p>")
    parentIntentSignature: option<builtinIntentSignature>,
    @ocaml.doc("<p> Describes how the intent is fulfilled. </p>")
    fulfillmentActivity: option<fulfillmentActivity>,
    @ocaml.doc("<p>If defined, Amazon Lex invokes this Lambda function for each user
      input.</p>")
    dialogCodeHook: option<codeHook>,
    @ocaml.doc("<p>After the Lambda function specified in the
        <code>fulfillmentActivity</code> field fulfills the intent, Amazon Lex
      conveys this statement to the user. </p>")
    conclusionStatement: option<statement>,
    @ocaml.doc("<p>If defined, Amazon Lex uses this prompt to solicit additional user
      activity after the intent is fulfilled. </p>")
    followUpPrompt: option<followUpPrompt>,
    @ocaml.doc("<p>If the user answers \"no\" to the question defined in
        <code>confirmationPrompt</code>, Amazon Lex responds with this statement to
      acknowledge that the intent was canceled. </p>")
    rejectionStatement: option<statement>,
    @ocaml.doc("<p>If defined, the prompt that Amazon Lex uses to confirm the user's
      intent before fulfilling it. </p>")
    confirmationPrompt: option<prompt>,
    @ocaml.doc("<p>An array of sample utterances configured for the intent. </p>")
    sampleUtterances: option<intentUtteranceList>,
    @ocaml.doc("<p>An array of slot types that defines the information required to
      fulfill the intent.</p>")
    slots: option<slotList>,
    @ocaml.doc("<p>A description of the intent.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the intent.</p>") name: option<intentName>,
  }
  @module("@aws-sdk/client-lex") @new external new: request => t = "CreateIntentVersionCommand"
  let make = (~name, ~checksum=?, ()) => new({checksum: checksum, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
