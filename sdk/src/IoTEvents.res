type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-iotevents") @new
external createClient: unit => awsServiceClient = "IoTEventsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type resourceId = string
type resourceArn = string
type errorMessage = string
type variableValue = string
type variableName = string
type useBase64 = bool
type timestamp_ = Js.Date.t
type timerName = string
type threshold = string
type tagValue = string
type tagKey = string
type statusMessage = string
type stateName = string
type severity = int
type seconds = int
type ssoreferenceId = string
type smssenderId = string
type resourceName = string
type queueUrl = string
type payloadType = [@as("JSON") #JSON | @as("STRING") #STRING]
type notificationAdditionalMessage = string
type nextToken = string
type maxResults = int
type maxAnalysisResults = int
type mqtttopic = string
type loggingLevel = [@as("DEBUG") #DEBUG | @as("INFO") #INFO | @as("ERROR") #ERROR]
type loggingEnabled = bool
type keyValue = string
type inputStatus = [
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("UPDATING") #UPDATING
  | @as("CREATING") #CREATING
]
type inputProperty = string
type inputName = string
type inputDescription = string
type inputArn = string
type identityStoreId = string
type fromEmail = string
type firehoseSeparator = string
type eventName = string
type evaluationMethod = [@as("SERIAL") #SERIAL | @as("BATCH") #BATCH]
type emailSubject = string
type dynamoTableName = string
type dynamoOperation = string
type dynamoKeyValue = string
type dynamoKeyType = string
type dynamoKeyField = string
type disabledOnInitialization = bool
type detectorModelVersionStatus = [
  | @as("FAILED") #FAILED
  | @as("PAUSED") #PAUSED
  | @as("DRAFT") #DRAFT
  | @as("DEPRECATED") #DEPRECATED
  | @as("INACTIVE") #INACTIVE
  | @as("ACTIVATING") #ACTIVATING
  | @as("ACTIVE") #ACTIVE
]
type detectorModelVersion = string
type detectorModelName = string
type detectorModelDescription = string
type detectorModelArn = string
type deliveryStreamName = string
type contentExpression = string
type condition = string
type comparisonOperator = [
  | @as("NOT_EQUAL") #NOT_EQUAL
  | @as("EQUAL") #EQUAL
  | @as("LESS_OR_EQUAL") #LESS_OR_EQUAL
  | @as("LESS") #LESS
  | @as("GREATER_OR_EQUAL") #GREATER_OR_EQUAL
  | @as("GREATER") #GREATER
]
type attributeJsonPath = string
type assetPropertyTimeInSeconds = string
type assetPropertyStringValue = string
type assetPropertyQuality = string
type assetPropertyOffsetInNanos = string
type assetPropertyIntegerValue = string
type assetPropertyId = string
type assetPropertyEntryId = string
type assetPropertyDoubleValue = string
type assetPropertyBooleanValue = string
type assetPropertyAlias = string
type assetModelId = string
type assetId = string
type analysisType = string
type analysisStatus = [@as("FAILED") #FAILED | @as("COMPLETE") #COMPLETE | @as("RUNNING") #RUNNING]
type analysisResultLocationPath = string
type analysisResultLevel = [@as("ERROR") #ERROR | @as("WARNING") #WARNING | @as("INFO") #INFO]
type analysisMessage = string
type analysisId = string
type amazonResourceName = string
type alarmModelVersionStatus = [
  | @as("FAILED") #FAILED
  | @as("INACTIVE") #INACTIVE
  | @as("ACTIVATING") #ACTIVATING
  | @as("ACTIVE") #ACTIVE
]
type alarmModelVersion = string
type alarmModelName = string
type alarmModelDescription = string
type alarmModelArn = string
type acknowledgeFlowEnabled = bool
type tagKeys = array<tagKey>
@ocaml.doc("<p>Metadata that can be used to manage the resource.</p>")
type tag = {
  @ocaml.doc("<p>The tag's value.</p>") value: tagValue,
  @ocaml.doc("<p>The tag's key.</p>") key: tagKey,
}
@ocaml.doc(
  "<p>A rule that compares an input property value to a threshold value with a comparison operator.</p>"
)
type simpleRule = {
  @ocaml.doc("<p>The value on the right side of the comparison operator. You can enter a number or specify
      an AWS IoT Events input attribute.</p>")
  threshold: threshold,
  @ocaml.doc("<p>The comparison operator.</p>") comparisonOperator: comparisonOperator,
  @ocaml.doc("<p>The value on the left side of the comparison operator. You can specify an AWS IoT Events input
      attribute as an input property.</p>")
  inputProperty: inputProperty,
}
@ocaml.doc("<p>Information about the variable and its new value.</p>")
type setVariableAction = {
  @ocaml.doc("<p>The new value of the variable.</p>") value: variableValue,
  @ocaml.doc("<p>The name of the variable.</p>") variableName: variableName,
}
@ocaml.doc("<p>Information needed to set the timer.</p>")
type setTimerAction = {
  @ocaml.doc("<p>The duration of the timer, in seconds. You can use a string expression that includes
      numbers, variables (<code>$variable.<variable-name></code>), and input values
        (<code>$input.<input-name>.<path-to-datum></code>) as the duration. The range of
      the duration is 1-31622400 seconds. To ensure accuracy, the minimum duration is 60 seconds.
      The evaluated result of the duration is rounded down to the nearest whole number. </p>")
  durationExpression: option<variableValue>,
  @ocaml.doc("<p>The number of seconds until the timer expires. The minimum value is 60 seconds to ensure
      accuracy. The maximum value is 31622400 seconds. </p>")
  seconds: option<seconds>,
  @ocaml.doc("<p>The name of the timer.</p>") timerName: timerName,
}
@ocaml.doc("<p>Contains information about your identity source in AWS Single Sign-On. For more information, see
      the <a href=\"https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html\">AWS Single Sign-On
        User Guide</a>.</p>")
type ssoidentity = {
  @ocaml.doc("<p>The user ID.</p>") userId: option<ssoreferenceId>,
  @ocaml.doc("<p>The ID of the AWS SSO identity store.</p>") identityStoreId: identityStoreId,
}
@ocaml.doc("<p>
      Contains information about the routed resource.
    </p>")
type routedResource = {
  @ocaml.doc("<p>
      The ARN of the routed resource. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.
    </p>")
  arn: option<amazonResourceName>,
  @ocaml.doc("<p>
      The name of the routed resource.  
    </p>")
  name: option<resourceName>,
}
@ocaml.doc("<p>Information required to reset the timer. The timer is reset to the previously evaluated
      result of the duration. The duration expression isn't reevaluated when you reset the
      timer.</p>")
type resetTimerAction = {@ocaml.doc("<p>The name of the timer to reset.</p>") timerName: timerName}
@ocaml.doc("<p>Information needed to configure the payload.</p>
         <p>By default, AWS IoT Events generates a standard payload in JSON for any action. This action payload
      contains all attribute-value pairs that have the information about the detector model instance
      and the event triggered the action. To configure the action payload, you can use
        <code>contentExpression</code>.</p>")
type payload = {
  @ocaml.doc("<p>The value of the payload type can be either <code>STRING</code> or
      <code>JSON</code>.</p>")
  @as("type")
  type_: payloadType,
  @ocaml.doc("<p>The content of the payload. You can use a string expression that includes quoted strings
        (<code>'<string>'</code>), variables (<code>$variable.<variable-name></code>),
      input values (<code>$input.<input-name>.<path-to-datum></code>), string
      concatenations, and quoted strings that contain <code>${}</code> as the content. The
      recommended maximum size of a content expression is 1 KB.</p>")
  contentExpression: contentExpression,
}
@ocaml.doc("<p>
      The asset model property identifer of the input routed from AWS IoT SiteWise.
    </p>")
type iotSiteWiseAssetModelPropertyIdentifier = {
  @ocaml.doc("<p>
      The ID of the AWS IoT SiteWise asset property.
    </p>")
  propertyId: assetPropertyId,
  @ocaml.doc("<p>
      The ID of the AWS IoT SiteWise asset model. 
    </p>")
  assetModelId: assetModelId,
}
@ocaml.doc("<p>
      The identifier of the input routed to AWS IoT Events.
    </p>")
type iotEventsInputIdentifier = {
  @ocaml.doc("<p>
      The name of the input routed to AWS IoT Events.
    </p>")
  inputName: inputName,
}
@ocaml.doc("<p>Information about the input.</p>")
type inputSummary = {
  @ocaml.doc("<p>The status of the input.</p>") status: option<inputStatus>,
  @ocaml.doc("<p>The last time the input was updated.</p>") lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>The time the input was created.</p>") creationTime: option<timestamp_>,
  @ocaml.doc("<p>The ARN of the input.</p>") inputArn: option<inputArn>,
  @ocaml.doc("<p>A brief description of the input.</p>") inputDescription: option<inputDescription>,
  @ocaml.doc("<p>The name of the input.</p>") inputName: option<inputName>,
}
@ocaml.doc("<p>Information about the configuration of an input.</p>")
type inputConfiguration = {
  @ocaml.doc("<p>The status of the input.</p>") status: inputStatus,
  @ocaml.doc("<p>The last time the input was updated.</p>") lastUpdateTime: timestamp_,
  @ocaml.doc("<p>The time the input was created.</p>") creationTime: timestamp_,
  @ocaml.doc("<p>The ARN of the input.</p>") inputArn: inputArn,
  @ocaml.doc("<p>A brief description of the input.</p>") inputDescription: option<inputDescription>,
  @ocaml.doc("<p>The name of the input.</p>") inputName: inputName,
}
@ocaml.doc("<p>Specifies the default alarm state. 
The configuration applies to all alarms that were created based on this alarm model.</p>")
type initializationConfiguration = {
  @ocaml.doc("<p>The value must be <code>TRUE</code> or <code>FALSE</code>. If <code>FALSE</code>, all
      alarm instances created based on the alarm model are activated. The default value is
        <code>TRUE</code>.</p>")
  disabledOnInitialization: disabledOnInitialization,
}
@ocaml.doc("<p>Contains the subject and message of an email.</p>")
type emailContent = {
  @ocaml.doc("<p>The message that you want to send. The message can be up to 200 characters.</p>")
  additionalMessage: option<notificationAdditionalMessage>,
  @ocaml.doc("<p>The subject of the email.</p>") subject: option<emailSubject>,
}
@ocaml.doc("<p>Information about the detector model version.</p>")
type detectorModelVersionSummary = {
  @ocaml.doc("<p>Information about the order in which events are evaluated and how actions are executed.
    </p>")
  evaluationMethod: option<evaluationMethod>,
  @ocaml.doc("<p>The status of the detector model version.</p>")
  status: option<detectorModelVersionStatus>,
  @ocaml.doc("<p>The last time the detector model version was updated.</p>")
  lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>The time the detector model version was created.</p>")
  creationTime: option<timestamp_>,
  @ocaml.doc(
    "<p>The ARN of the role that grants the detector model permission to perform its tasks.</p>"
  )
  roleArn: option<amazonResourceName>,
  @ocaml.doc("<p>The ARN of the detector model version.</p>")
  detectorModelArn: option<detectorModelArn>,
  @ocaml.doc("<p>The ID of the detector model version.</p>")
  detectorModelVersion: option<detectorModelVersion>,
  @ocaml.doc("<p>The name of the detector model.</p>") detectorModelName: option<detectorModelName>,
}
@ocaml.doc("<p>Information about the detector model.</p>")
type detectorModelSummary = {
  @ocaml.doc("<p>The time the detector model was created.</p>") creationTime: option<timestamp_>,
  @ocaml.doc("<p>A brief description of the detector model.</p>")
  detectorModelDescription: option<detectorModelDescription>,
  @ocaml.doc("<p>The name of the detector model.</p>") detectorModelName: option<detectorModelName>,
}
@ocaml.doc("<p>Information about how the detector model is configured.</p>")
type detectorModelConfiguration = {
  @ocaml.doc("<p>Information about the order in which events are evaluated and how actions are executed.
    </p>")
  evaluationMethod: option<evaluationMethod>,
  @ocaml.doc("<p>The value used to identify a detector instance. When a device or system sends input, a new
      detector instance with a unique key value is created. AWS IoT Events can continue to route input to its
      corresponding detector instance based on this identifying information. </p>
         <p>This parameter uses a JSON-path expression to select the attribute-value pair in the
      message payload that is used for identification. To route the message to the correct detector
      instance, the device must send a message payload that contains the same
      attribute-value.</p>")
  key: option<attributeJsonPath>,
  @ocaml.doc("<p>The status of the detector model.</p>") status: option<detectorModelVersionStatus>,
  @ocaml.doc("<p>The time the detector model was last updated.</p>")
  lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>The time the detector model was created.</p>") creationTime: option<timestamp_>,
  @ocaml.doc(
    "<p>The ARN of the role that grants permission to AWS IoT Events to perform its operations.</p>"
  )
  roleArn: option<amazonResourceName>,
  @ocaml.doc("<p>The ARN of the detector model.</p>") detectorModelArn: option<detectorModelArn>,
  @ocaml.doc("<p>A brief description of the detector model.</p>")
  detectorModelDescription: option<detectorModelDescription>,
  @ocaml.doc("<p>The version of the detector model.</p>")
  detectorModelVersion: option<detectorModelVersion>,
  @ocaml.doc("<p>The name of the detector model.</p>") detectorModelName: option<detectorModelName>,
}
@ocaml.doc("<p>The detector model and the specific detectors (instances) for which the logging level is
      given.</p>")
type detectorDebugOption = {
  @ocaml.doc("<p>The value of the input attribute key used to create the detector (the instance of the
      detector model).</p>")
  keyValue: option<keyValue>,
  @ocaml.doc("<p>The name of the detector model.</p>") detectorModelName: detectorModelName,
}
@ocaml.doc("<p>Information needed to clear the timer.</p>")
type clearTimerAction = {@ocaml.doc("<p>The name of the timer to clear.</p>") timerName: timerName}
@ocaml.doc("<p>The attributes from the JSON payload that are made available by the input. Inputs are
      derived from messages sent to the AWS IoT Events system using <code>BatchPutMessage</code>. Each such
      message contains a JSON payload. Those attributes (and their paired values) specified here are
      available for use in the <code>condition</code> expressions used by detectors. </p>")
type attribute = {
  @ocaml.doc("<p>An expression that specifies an attribute-value pair in a JSON structure. Use this to
      specify an attribute from the JSON payload that is made available by the input. Inputs are
      derived from messages sent to AWS IoT Events (<code>BatchPutMessage</code>). Each such message contains
      a JSON payload. The attribute (and its paired value) specified here are available for use in
      the <code>condition</code> expressions used by detectors. </p>
         <p>Syntax: <code><field-name>.<field-name>...</code>
         </p>")
  jsonPath: attributeJsonPath,
}
@ocaml.doc("<p>A structure that contains an asset property value. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_Variant.html\">Variant</a>
      in the <i>AWS IoT SiteWise API Reference</i>.</p>
         <p>You must use expressions for all parameters in <code>AssetPropertyVariant</code>. The
      expressions accept literals, operators, functions, references, and substitution
      templates.</p>
         <p class=\"title\">
            <b>Examples</b>
         </p>
         <ul>
            <li>
               <p>For literal values, the expressions must contain single quotes. For example, the value
          for the <code>integerValue</code> parameter can be <code>'100'</code>.</p>
            </li>
            <li>
               <p>For references, you must specify either variables or parameters. For example, the
          value for the <code>booleanValue</code> parameter can be
          <code>$variable.offline</code>.</p>
            </li>
            <li>
               <p>For a substitution template, you must use <code>${}</code>, and the template must be
          in single quotes. A substitution template can also contain a combination of literals,
          operators, functions, references, and substitution templates. </p>
               <p>In the following example, the value for the <code>doubleValue</code> parameter uses a
          substitution template. </p>
               <p>
                  <code>'${$input.TemperatureInput.sensorData.temperature * 6 / 5 + 32}'</code>
               </p>
            </li>
         </ul>
         <p>For more information, 
        see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html\">Expressions</a> 
        in the <i>AWS IoT Events Developer Guide</i>.</p>
         <p>You must specify one of the following value types, depending on the <code>dataType</code>
      of the specified asset property. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_AssetProperty.html\">AssetProperty</a> in the
        <i>AWS IoT SiteWise API Reference</i>.</p>")
type assetPropertyVariant = {
  @ocaml.doc("<p>The asset property value is a Boolean value that must be <code>'TRUE'</code> or
        <code>'FALSE'</code>. You must use an expression, and the evaluated result should be a
      Boolean value.</p>")
  booleanValue: option<assetPropertyBooleanValue>,
  @ocaml.doc("<p>The asset property value is a double. You must use an expression, and the evaluated result
      should be a double.</p>")
  doubleValue: option<assetPropertyDoubleValue>,
  @ocaml.doc("<p>The asset property value is an integer. You must use an expression, and the evaluated
      result should be an integer.</p>")
  integerValue: option<assetPropertyIntegerValue>,
  @ocaml.doc("<p>The asset property value is a string. You must use an expression, and the evaluated result
      should be a string.</p>")
  stringValue: option<assetPropertyStringValue>,
}
@ocaml.doc("<p>A structure that contains timestamp information. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_TimeInNanos.html\">TimeInNanos</a> in the <i>AWS IoT SiteWise API Reference</i>.</p>
         <p>You must use expressions for all parameters in <code>AssetPropertyTimestamp</code>. The
      expressions accept literals, operators, functions, references, and substitution
      templates.</p>
         <p class=\"title\">
            <b>Examples</b>
         </p>
         <ul>
            <li>
               <p>For literal values, the expressions must contain single quotes. For example, the value
          for the <code>timeInSeconds</code> parameter can be <code>'1586400675'</code>.</p>
            </li>
            <li>
               <p>For references, you must specify either variables or input values. For example, the
          value for the <code>offsetInNanos</code> parameter can be
          <code>$variable.time</code>.</p>
            </li>
            <li>
               <p>For a substitution template, you must use <code>${}</code>, and the template must be
          in single quotes. A substitution template can also contain a combination of literals,
          operators, functions, references, and substitution templates.</p>
               <p>In the following example, the value for the <code>timeInSeconds</code> parameter uses
          a substitution template.</p>
               <p>
                  <code>'${$input.TemperatureInput.sensorData.timestamp / 1000}'</code>
               </p>
            </li>
         </ul>
         <p>For more information, 
        see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html\">Expressions</a> 
        in the <i>AWS IoT Events Developer Guide</i>.</p>")
type assetPropertyTimestamp = {
  @ocaml.doc("<p>The nanosecond offset converted from <code>timeInSeconds</code>. The valid range is
      between 0-999999999.</p>")
  offsetInNanos: option<assetPropertyOffsetInNanos>,
  @ocaml.doc("<p>The timestamp, in seconds, in the Unix epoch format. The valid range is between
      1-31556889864403199.</p>")
  timeInSeconds: assetPropertyTimeInSeconds,
}
@ocaml.doc("<p>Contains information that you can use to locate the field in your detector model that the
      analysis result references.</p>")
type analysisResultLocation = {
  @ocaml.doc("<p>A <a href=\"https://github.com/json-path/JsonPath\">JsonPath</a> expression that
      identifies the error field in your detector model.</p>")
  path: option<analysisResultLocationPath>,
}
@ocaml.doc("<p>Contains a summary of an alarm model version.</p>")
type alarmModelVersionSummary = {
  @ocaml.doc("<p>
      Contains information about the status of the alarm model version.
    </p>")
  statusMessage: option<statusMessage>,
  @ocaml.doc("<p>The status of the alarm model. The status can be one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code> - The alarm model is active and it's ready to evaluate data.</p>
            </li>
            <li>
               <p>
                  <code>ACTIVATING</code> - AWS IoT Events is activating your alarm model. 
        Activating an alarm model can take up to a few minutes.</p>
            </li>
            <li>
               <p>
                  <code>INACTIVE</code> - The alarm model is inactive, so it isn't ready to evaluate data. 
	  Check your alarm model information and update the alarm model.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - You couldn't create or update the alarm model. Check your alarm model information 
        and try again.</p>
            </li>
         </ul>")
  status: option<alarmModelVersionStatus>,
  @ocaml.doc("<p>The time the alarm model was last updated, in the Unix epoch format.</p>")
  lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>The time the alarm model was created, in the Unix epoch format.</p>")
  creationTime: option<timestamp_>,
  @ocaml.doc(
    "<p>The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
  )
  roleArn: option<amazonResourceName>,
  @ocaml.doc("<p>The version of the alarm model.</p>") alarmModelVersion: option<alarmModelVersion>,
  @ocaml.doc(
    "<p>The ARN of the alarm model. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
  )
  alarmModelArn: option<alarmModelArn>,
  @ocaml.doc("<p>The name of the alarm model.</p>") alarmModelName: option<alarmModelName>,
}
@ocaml.doc("<p>Contains a summary of an alarm model.</p>")
type alarmModelSummary = {
  @ocaml.doc("<p>The name of the alarm model.</p>") alarmModelName: option<alarmModelName>,
  @ocaml.doc("<p>The description of the alarm model.</p>")
  alarmModelDescription: option<alarmModelDescription>,
  @ocaml.doc("<p>The time the alarm model was created, in the Unix epoch format.</p>")
  creationTime: option<timestamp_>,
}
@ocaml.doc("<p>Specifies whether to get notified for alarm state changes.</p>")
type acknowledgeFlow = {
  @ocaml.doc("<p>The value must be <code>TRUE</code> or <code>FALSE</code>. If <code>TRUE</code>, you
      receive a notification when the alarm state changes. You must choose to acknowledge the
      notification before the alarm state can return to <code>NORMAL</code>. If <code>FALSE</code>,
      you won't receive notifications. The alarm automatically changes to the <code>NORMAL</code>
      state when the input property value returns to the specified range.</p>")
  enabled: acknowledgeFlowEnabled,
}
type tags = array<tag>
@ocaml.doc("<p>Sends information about the detector model instance and the event that triggered the
      action to an Amazon SQS queue.</p>")
type sqsAction = {
  @ocaml.doc("<p>You can configure the action payload when you send a message to an Amazon SQS
      queue.</p>")
  payload: option<payload>,
  @ocaml.doc("<p>Set this to TRUE if you want the data to be base-64 encoded before it is written to the
      queue. Otherwise, set this to FALSE.</p>")
  useBase64: option<useBase64>,
  @ocaml.doc("<p>The URL of the SQS queue where the data is written.</p>") queueUrl: queueUrl,
}
@ocaml.doc("<p>Information required to publish the Amazon SNS message.</p>")
type snstopicPublishAction = {
  @ocaml.doc("<p>You can configure the action payload when you send a message as an Amazon SNS push
      notification.</p>")
  payload: option<payload>,
  @ocaml.doc("<p>The ARN of the Amazon SNS target where the message is sent.</p>")
  targetArn: amazonResourceName,
}
type routedResources = array<routedResource>
@ocaml.doc("<p>The information that identifies the recipient.</p>")
type recipientDetail = {
  @ocaml.doc("<p>The AWS Single Sign-On (AWS SSO) authentication information.</p>")
  ssoIdentity: option<ssoidentity>,
}
@ocaml.doc("<p>Calls a Lambda function, passing in information about the detector model instance and the
      event that triggered the action.</p>")
type lambdaAction = {
  @ocaml.doc(
    "<p>You can configure the action payload when you send a message to a Lambda function.</p>"
  )
  payload: option<payload>,
  @ocaml.doc("<p>The ARN of the Lambda function that is executed.</p>")
  functionArn: amazonResourceName,
}
@ocaml.doc(
  "<p>Information required to publish the MQTT message through the AWS IoT message broker.</p>"
)
type iotTopicPublishAction = {
  @ocaml.doc("<p>You can configure the action payload when you publish a message to an AWS IoT Core
      topic.</p>")
  payload: option<payload>,
  @ocaml.doc("<p>The MQTT topic of the message. You can use a string expression that includes variables
        (<code>$variable.<variable-name></code>) and input values
        (<code>$input.<input-name>.<path-to-datum></code>) as the topic string.</p>")
  mqttTopic: mqtttopic,
}
@ocaml.doc("<p>
      The identifer of the input routed from AWS IoT SiteWise.
    </p>")
type iotSiteWiseInputIdentifier = {
  @ocaml.doc("<p>
      The identifier of the AWS IoT SiteWise asset model property.
    </p>")
  iotSiteWiseAssetModelPropertyIdentifier: option<iotSiteWiseAssetModelPropertyIdentifier>,
}
@ocaml.doc("<p>Sends an AWS IoT Events input, passing in information about the detector model instance and the
      event that triggered the action.</p>")
type iotEventsAction = {
  @ocaml.doc(
    "<p>You can configure the action payload when you send a message to an AWS IoT Events input.</p>"
  )
  payload: option<payload>,
  @ocaml.doc("<p>The name of the AWS IoT Events input where the data is sent.</p>")
  inputName: inputName,
}
type inputSummaries = array<inputSummary>
@ocaml.doc("<p>Sends information about the detector model instance and the event that triggered the
      action to an Amazon Kinesis Data Firehose delivery stream.</p>")
type firehoseAction = {
  @ocaml.doc("<p>You can configure the action payload when you send a message to an Amazon Kinesis Data Firehose delivery
      stream.</p>")
  payload: option<payload>,
  @ocaml.doc("<p>A character separator that is used to separate records written to the Kinesis Data
      Firehose delivery stream. Valid values are: '\\n' (newline), '\\t' (tab), '\\r\\n' (Windows
      newline), ',' (comma).</p>")
  separator: option<firehoseSeparator>,
  @ocaml.doc(
    "<p>The name of the Kinesis Data Firehose delivery stream where the data is written.</p>"
  )
  deliveryStreamName: deliveryStreamName,
}
@ocaml.doc("<p>Defines an action to write to the Amazon DynamoDB table that you created. The default action
      payload contains all the information about the detector model instance and the event that
      triggered the action. You can customize the <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html\">payload</a>. A separate column of
      the DynamoDB table receives one attribute-value pair in the payload that you specify.</p>
         <p>You must use expressions for all parameters in <code>DynamoDBv2Action</code>. The expressions
      accept literals, operators, functions, references, and substitution templates.</p>
         <p class=\"title\">
            <b>Examples</b>
         </p>
         <ul>
            <li>
               <p>For literal values, the expressions must contain single quotes. For example, the value
          for the <code>tableName</code> parameter can be
          <code>'GreenhouseTemperatureTable'</code>.</p>
            </li>
            <li>
               <p>For references, you must specify either variables or input values. For example, the
          value for the <code>tableName</code> parameter can be
          <code>$variable.ddbtableName</code>.</p>
            </li>
            <li>
               <p>For a substitution template, you must use <code>${}</code>, and the template must be
          in single quotes. A substitution template can also contain a combination of literals,
          operators, functions, references, and substitution templates.</p>
               <p>In the following example, the value for the <code>contentExpression</code> parameter
          in <code>Payload</code> uses a substitution template. </p>
               <p>
                  <code>'{\\\"sensorID\\\": \\\"${$input.GreenhouseInput.sensor_id}\\\", \\\"temperature\\\":
            \\\"${$input.GreenhouseInput.temperature * 9 / 5 + 32}\\\"}'</code>
               </p>
            </li>
            <li>
               <p>For a string concatenation, you must use <code>+</code>. A string concatenation can
          also contain a combination of literals, operators, functions, references, and substitution
          templates.</p>
               <p>In the following example, the value for the <code>tableName</code> parameter uses a
          string concatenation. </p>
               <p>
                  <code>'GreenhouseTemperatureTable ' + $input.GreenhouseInput.date</code>
               </p>
            </li>
         </ul>
         <p>For more information, 
        see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html\">Expressions</a> 
        in the <i>AWS IoT Events Developer Guide</i>.</p>
         <p>The value for the <code>type</code> parameter in <code>Payload</code> must be
        <code>JSON</code>.</p>")
type dynamoDBv2Action = {
  payload: option<payload>,
  @ocaml.doc("<p>The name of the DynamoDB table.</p>") tableName: dynamoTableName,
}
@ocaml.doc("<p>Defines an action to write to the Amazon DynamoDB table that you created. The standard action
      payload contains all the information about the detector model instance and the event that
      triggered the action. You can customize the <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html\">payload</a>. One column of the
      DynamoDB table receives all attribute-value pairs in the payload that you specify.</p>
         <p>You must use expressions for all parameters in <code>DynamoDBAction</code>. The expressions
      accept literals, operators, functions, references, and substitution templates.</p>
         <p class=\"title\">
            <b>Examples</b>
         </p>
         <ul>
            <li>
               <p>For literal values, the expressions must contain single quotes. For example, the value
          for the <code>hashKeyType</code> parameter can be <code>'STRING'</code>.</p>
            </li>
            <li>
               <p>For references, you must specify either variables or input values. For example, the
          value for the <code>hashKeyField</code> parameter can be
            <code>$input.GreenhouseInput.name</code>.</p>
            </li>
            <li>
               <p>For a substitution template, you must use <code>${}</code>, and the template must be
          in single quotes. A substitution template can also contain a combination of literals,
          operators, functions, references, and substitution templates.</p>
               <p>In the following example, the value for the <code>hashKeyValue</code> parameter uses a
          substitution template. </p>
               <p>
                  <code>'${$input.GreenhouseInput.temperature * 6 / 5 + 32} in Fahrenheit'</code>
               </p>
            </li>
            <li>
               <p>For a string concatenation, you must use <code>+</code>. A string concatenation can
          also contain a combination of literals, operators, functions, references, and substitution
          templates.</p>
               <p>In the following example, the value for the <code>tableName</code> parameter uses a
          string concatenation. </p>
               <p>
                  <code>'GreenhouseTemperatureTable ' + $input.GreenhouseInput.date</code>
               </p>
            </li>
         </ul>
         <p>For more information, 
        see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html\">Expressions</a> 
        in the <i>AWS IoT Events Developer Guide</i>.</p>
         <p>If the defined payload type is a string, <code>DynamoDBAction</code> writes non-JSON data to
      the DynamoDB table as binary data. The DynamoDB console displays the data as Base64-encoded text.
      The value for the <code>payloadField</code> parameter is
        <code><payload-field>_raw</code>.</p>")
type dynamoDBAction = {
  payload: option<payload>,
  @ocaml.doc("<p>The name of the DynamoDB table. The <code>tableName</code> value must match the table name of
      the target DynamoDB table. </p>")
  tableName: dynamoTableName,
  @ocaml.doc("<p>The name of the DynamoDB column that receives the action payload.</p>
         <p>If you don't specify this parameter, the name of the DynamoDB column is
      <code>payload</code>.</p>")
  payloadField: option<dynamoKeyField>,
  @ocaml.doc("<p>The type of operation to perform. You can specify the following values: </p>
         <ul>
            <li>
               <p>
                  <code>'INSERT'</code> - Insert data as a new item into the DynamoDB table. This item uses
          the specified hash key as a partition key. If you specified a range key, the item uses the
          range key as a sort key.</p>
            </li>
            <li>
               <p>
                  <code>'UPDATE'</code> - Update an existing item of the DynamoDB table with new data. This
          item's partition key must match the specified hash key. If you specified a range key, the
          range key must match the item's sort key.</p>
            </li>
            <li>
               <p>
                  <code>'DELETE'</code> - Delete an existing item of the DynamoDB table. This item's
          partition key must match the specified hash key. If you specified a range key, the range
          key must match the item's sort key.</p>
            </li>
         </ul>
         <p>If you don't specify this parameter, AWS IoT Events triggers the <code>'INSERT'</code>
      operation.</p>")
  operation: option<dynamoOperation>,
  @ocaml.doc("<p>The value of the range key (also called the sort key).</p>")
  rangeKeyValue: option<dynamoKeyValue>,
  @ocaml.doc("<p>The name of the range key (also called the sort key). The <code>rangeKeyField</code> value
      must match the sort key of the target DynamoDB table. </p>")
  rangeKeyField: option<dynamoKeyField>,
  @ocaml.doc("<p>The data type for the range key (also called the sort key), You can specify the following
      values:</p>
         <ul>
            <li>
               <p>
                  <code>'STRING'</code> - The range key is a string.</p>
            </li>
            <li>
               <p>
                  <code>'NUMBER'</code> - The range key is number.</p>
            </li>
         </ul>
         <p>If you don't specify <code>rangeKeyField</code>, the default value is
        <code>'STRING'</code>.</p>")
  rangeKeyType: option<dynamoKeyType>,
  @ocaml.doc("<p>The value of the hash key (also called the partition key).</p>")
  hashKeyValue: dynamoKeyValue,
  @ocaml.doc("<p>The name of the hash key (also called the partition key). The <code>hashKeyField</code>
      value must match the partition key of the target DynamoDB table.</p>")
  hashKeyField: dynamoKeyField,
  @ocaml.doc("<p>The data type for the hash key (also called the partition key). You can specify the
      following values:</p>
         <ul>
            <li>
               <p>
                  <code>'STRING'</code> - The hash key is a string.</p>
            </li>
            <li>
               <p>
                  <code>'NUMBER'</code> - The hash key is a number.</p>
            </li>
         </ul>
         <p>If you don't specify <code>hashKeyType</code>, the default value is
      <code>'STRING'</code>.</p>")
  hashKeyType: option<dynamoKeyType>,
}
type detectorModelVersionSummaries = array<detectorModelVersionSummary>
type detectorModelSummaries = array<detectorModelSummary>
type detectorDebugOptions = array<detectorDebugOption>
type attributes = array<attribute>
@ocaml.doc("<p>A structure that contains value information. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_AssetPropertyValue.html\">AssetPropertyValue</a> in the <i>AWS IoT SiteWise API Reference</i>.</p>
         <p>You must use expressions for all parameters in <code>AssetPropertyValue</code>. The
      expressions accept literals, operators, functions, references, and substitution
      templates.</p>
         <p class=\"title\">
            <b>Examples</b>
         </p>
         <ul>
            <li>
               <p>For literal values, the expressions must contain single quotes. For example, the value
          for the <code>quality</code> parameter can be <code>'GOOD'</code>.</p>
            </li>
            <li>
               <p>For references, you must specify either variables or input values. For example, the
          value for the <code>quality</code> parameter can be
            <code>$input.TemperatureInput.sensorData.quality</code>.</p>
            </li>
         </ul>
         <p>For more information, 
        see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html\">Expressions</a> 
        in the <i>AWS IoT Events Developer Guide</i>.</p>")
type assetPropertyValue = {
  @ocaml.doc("<p>The quality of the asset property value. The value must be <code>'GOOD'</code>,
        <code>'BAD'</code>, or <code>'UNCERTAIN'</code>.</p>")
  quality: option<assetPropertyQuality>,
  @ocaml.doc("<p>The timestamp associated with the asset property value. The default is the current event
      time.</p>")
  @as("timestamp")
  timestamp_: option<assetPropertyTimestamp>,
  @ocaml.doc("<p>The value to send to an asset property.</p>") value: option<assetPropertyVariant>,
}
type analysisResultLocations = array<analysisResultLocation>
@ocaml.doc("<p>Defines when your alarm is invoked.</p>")
type alarmRule = {
  @ocaml.doc(
    "<p>A rule that compares an input property value to a threshold value with a comparison operator.</p>"
  )
  simpleRule: option<simpleRule>,
}
type alarmModelVersionSummaries = array<alarmModelVersionSummary>
type alarmModelSummaries = array<alarmModelSummary>
@ocaml.doc("<p>Contains the configuration information of alarm state changes.</p>")
type alarmCapabilities = {
  @ocaml.doc("<p>Specifies whether to get notified for alarm state changes.</p>")
  acknowledgeFlow: option<acknowledgeFlow>,
  @ocaml.doc("<p>Specifies the default alarm state. 
The configuration applies to all alarms that were created based on this alarm model.</p>")
  initializationConfiguration: option<initializationConfiguration>,
}
type recipientDetails = array<recipientDetail>
@ocaml.doc("<p>Specifies an AWS Lambda function to manage alarm notifications. 
You can create one or use the <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html\">AWS Lambda function provided by AWS IoT Events</a>.</p>")
type notificationTargetActions = {lambdaAction: option<lambdaAction>}
@ocaml.doc("<p>The values of the AWS IoT Events logging options.</p>")
type loggingOptions = {
  @ocaml.doc("<p>Information that identifies those detector models and their detectors (instances) for
      which the logging level is given.</p>")
  detectorDebugOptions: option<detectorDebugOptions>,
  @ocaml.doc("<p>If TRUE, logging is enabled for AWS IoT Events.</p>") enabled: loggingEnabled,
  @ocaml.doc("<p>The logging level.</p>") level: loggingLevel,
  @ocaml.doc(
    "<p>The ARN of the role that grants permission to AWS IoT Events to perform logging.</p>"
  )
  roleArn: amazonResourceName,
}
@ocaml.doc("<p>Sends information about the detector model instance and the event that triggered the
      action to a specified asset property in AWS IoT SiteWise.</p>
         <p>You must use expressions for all parameters in <code>IotSiteWiseAction</code>. The
      expressions accept literals, operators, functions, references, and substitutions
      templates.</p>
         <p class=\"title\">
            <b>Examples</b>
         </p>
         <ul>
            <li>
               <p>For literal values, the expressions must contain single quotes. For example, the value
          for the <code>propertyAlias</code> parameter can be
            <code>'/company/windfarm/3/turbine/7/temperature'</code>.</p>
            </li>
            <li>
               <p>For references, you must specify either variables or input values. For example, the
          value for the <code>assetId</code> parameter can be
            <code>$input.TurbineInput.assetId1</code>.</p>
            </li>
            <li>
               <p>For a substitution template, you must use <code>${}</code>, and the template must be
          in single quotes. A substitution template can also contain a combination of literals,
          operators, functions, references, and substitution templates.</p>
               <p>In the following example, the value for the <code>propertyAlias</code> parameter uses
          a substitution template. </p>
               <p>
                  <code>'company/windfarm/${$input.TemperatureInput.sensorData.windfarmID}/turbine/
            ${$input.TemperatureInput.sensorData.turbineID}/temperature'</code>
               </p>
            </li>
         </ul>
         <p>You must specify either <code>propertyAlias</code> or both <code>assetId</code> and
        <code>propertyId</code> to identify the target asset property in AWS IoT SiteWise.</p>
         <p>For more information, 
        see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html\">Expressions</a> 
        in the <i>AWS IoT Events Developer Guide</i>.</p>")
type iotSiteWiseAction = {
  @ocaml.doc("<p>The value to send to the asset property. This value contains timestamp, quality, and value
      (TQV) information. </p>")
  propertyValue: option<assetPropertyValue>,
  @ocaml.doc("<p>The alias of the asset property.</p>") propertyAlias: option<assetPropertyAlias>,
  @ocaml.doc("<p>The ID of the asset property.</p>") propertyId: option<assetPropertyId>,
  @ocaml.doc("<p>The ID of the asset that has the specified property.</p>")
  assetId: option<assetId>,
  @ocaml.doc("<p>A unique identifier for this entry. You can use the entry ID to track which data entry
      causes an error in case of failure. The default is a new unique identifier.</p>")
  entryId: option<assetPropertyEntryId>,
}
@ocaml.doc("<p>
      The identifer of the input.
    </p>")
type inputIdentifier = {
  @ocaml.doc("<p>
      The identifer of the input routed from AWS IoT SiteWise.
    </p>")
  iotSiteWiseInputIdentifier: option<iotSiteWiseInputIdentifier>,
  @ocaml.doc("<p>
      The identifier of the input routed to AWS IoT Events.
    </p>")
  iotEventsInputIdentifier: option<iotEventsInputIdentifier>,
}
@ocaml.doc("<p>The definition of the input.</p>")
type inputDefinition = {
  @ocaml.doc("<p>The attributes from the JSON payload that are made available by the input. Inputs are
      derived from messages sent to the AWS IoT Events system using <code>BatchPutMessage</code>. Each such
      message contains a JSON payload, and those attributes (and their paired values) specified here
      are available for use in the <code>condition</code> expressions used by detectors that monitor
      this input. </p>")
  attributes: attributes,
}
@ocaml.doc("<p>Contains the result of the analysis.</p>")
type analysisResult = {
  @ocaml.doc("<p>Contains one or more locations that you can use to locate the fields in your detector
      model that the analysis result references.</p>")
  locations: option<analysisResultLocations>,
  @ocaml.doc("<p>Contains additional information about the analysis result.</p>")
  message: option<analysisMessage>,
  @ocaml.doc("<p>The severity level of the analysis result. Based on the severity level, analysis results
      fall into three general categories:</p>
         <ul>
            <li>
               <p>
                  <code>INFO</code> - An information result tells you about a significant field in your
          detector model. This type of result usually doesn't require immediate action.</p>
            </li>
            <li>
               <p>
                  <code>WARNING</code> - A warning result draws special attention to fields that might cause issues for your detector model. 
          We recommend that you review warnings and take necessary actions
          before you use your detector model in production environments. Otherwise, the detector
          model might not work as expected.</p>
            </li>
            <li>
               <p>
                  <code>ERROR</code> - An error result notifies you about a problem found in your
          detector model. You must fix all errors before you can publish your detector model.</p>
            </li>
         </ul>")
  level: option<analysisResultLevel>,
  @ocaml.doc("<p>The type of the analysis result. Analyses fall into the following types based on the
      validators used to generate the analysis result:</p>
         <ul>
            <li>
               <p>
                  <code>supported-actions</code> - You must specify AWS IoT Events supported actions that work
          with other AWS services in a supported AWS Region.</p>
            </li>
            <li>
               <p>
                  <code>service-limits</code> - Resources or API operations can't exceed service
          quotas (also known as limits). Update your detector model or request a quota
          increase.</p>
            </li>
            <li>
               <p>
                  <code>structure</code> - The detector model must follow a structure that AWS IoT Events
          supports. </p>
            </li>
            <li>
               <p>
                  <code>expression-syntax</code> - Your expression must follow the required
          syntax.</p>
            </li>
            <li>
               <p>
                  <code>data-type</code> - Data types referenced in the detector model must be
          compatible.</p>
            </li>
            <li>
               <p>
                  <code>referenced-data</code> - You must define the data referenced in your detector
          model before you can use the data.</p>
            </li>
            <li>
               <p>
                  <code>referenced-resource</code> - Resources that the detector model uses must be
          available.</p>
            </li>
         </ul>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-analyze-api.html\">Running detector model
        analyses</a> in the <i>AWS IoT Events Developer Guide</i>.</p>")
  @as("type")
  type_: option<analysisType>,
}
@ocaml.doc("<p>Contains the configuration information of SMS notifications.</p>")
type smsconfiguration = {
  @ocaml.doc("<p>Specifies one or more recipients who receive the message.</p>
         <important>
            <p>You must <a href=\"https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html\">add the users that receive SMS messages to your AWS SSO store</a>.</p>
         </important>")
  recipients: recipientDetails,
  @ocaml.doc("<p>The message that you want to send. The message can be up to 200 characters.</p>")
  additionalMessage: option<notificationAdditionalMessage>,
  @ocaml.doc("<p>The sender ID.</p>") senderId: option<smssenderId>,
}
@ocaml.doc("<p>Information about the input.</p>")
type input = {
  @ocaml.doc("<p>The definition of the input.</p>") inputDefinition: option<inputDefinition>,
  @ocaml.doc("<p>Information about the configuration of an input.</p>")
  inputConfiguration: option<inputConfiguration>,
}
@ocaml.doc("<p>Contains the information of one or more recipients who receive the emails.</p>
         <important>
            <p>You must <a href=\"https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html\">add the users that receive emails to your AWS SSO store</a>.</p>
         </important>")
type emailRecipients = {
  @ocaml.doc("<p>Specifies one or more recipients who receive the email.</p>")
  to: option<recipientDetails>,
}
type analysisResults = array<analysisResult>
@ocaml.doc("<p>Specifies one of the following actions to receive notifications when the alarm state
      changes.</p>")
type alarmAction = {
  iotSiteWise: option<iotSiteWiseAction>,
  dynamoDBv2: option<dynamoDBv2Action>,
  dynamoDB: option<dynamoDBAction>,
  firehose: option<firehoseAction>,
  sqs: option<sqsAction>,
  iotEvents: option<iotEventsAction>,
  lambda: option<lambdaAction>,
  iotTopicPublish: option<iotTopicPublishAction>,
  sns: option<snstopicPublishAction>,
}
@ocaml.doc("<p>An action to be performed when the <code>condition</code> is TRUE.</p>")
type action = {
  @ocaml.doc("<p>Sends information about the detector model instance and the event that triggered the
      action to an asset property in AWS IoT SiteWise .</p>")
  iotSiteWise: option<iotSiteWiseAction>,
  @ocaml.doc("<p>Writes to the DynamoDB table that you created. The default action payload contains all
      attribute-value pairs that have the information about the detector model instance and the
      event that triggered the action. You can customize the <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html\">payload</a>. A separate column of
      the DynamoDB table receives one attribute-value pair in the payload that you specify. For more
      information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-event-actions.html\">Actions</a> in
        <i>AWS IoT Events Developer Guide</i>.</p>")
  dynamoDBv2: option<dynamoDBv2Action>,
  @ocaml.doc("<p>Writes to the DynamoDB table that you created. The default action payload contains all
      attribute-value pairs that have the information about the detector model instance and the
      event that triggered the action. You can customize the <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html\">payload</a>. One column of the
      DynamoDB table receives all attribute-value pairs in the payload that you specify. For more
      information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-event-actions.html\">Actions</a> in
        <i>AWS IoT Events Developer Guide</i>.</p>")
  dynamoDB: option<dynamoDBAction>,
  @ocaml.doc("<p>Sends information about the detector model instance and the event that triggered the
      action to an Amazon Kinesis Data Firehose delivery stream.</p>")
  firehose: option<firehoseAction>,
  @ocaml.doc("<p>Sends information about the detector model instance and the event that triggered the
      action to an Amazon SQS queue.</p>")
  sqs: option<sqsAction>,
  @ocaml.doc("<p>Sends AWS IoT Events input, which passes information about the detector model instance and the
      event that triggered the action.</p>")
  iotEvents: option<iotEventsAction>,
  @ocaml.doc("<p>Calls a Lambda function, passing in information about the detector model instance and the
      event that triggered the action.</p>")
  lambda: option<lambdaAction>,
  @ocaml.doc("<p>Information needed to reset the timer.</p>") resetTimer: option<resetTimerAction>,
  @ocaml.doc("<p>Information needed to clear the timer.</p>") clearTimer: option<clearTimerAction>,
  @ocaml.doc("<p>Information needed to set the timer.</p>") setTimer: option<setTimerAction>,
  @ocaml.doc("<p>Publishes an MQTT message with the given topic to the AWS IoT message broker.</p>")
  iotTopicPublish: option<iotTopicPublishAction>,
  @ocaml.doc("<p>Sends an Amazon SNS message.</p>") sns: option<snstopicPublishAction>,
  @ocaml.doc("<p>Sets a variable to a specified value.</p>") setVariable: option<setVariableAction>,
}
type smsconfigurations = array<smsconfiguration>
@ocaml.doc("<p>Contains the configuration information of email notifications.</p>")
type emailConfiguration = {
  @ocaml.doc("<p>Contains the information of one or more recipients who receive the emails.</p>
         <important>
            <p>You must <a href=\"https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html\">add the users that receive emails to your AWS SSO store</a>.</p>
         </important>")
  recipients: emailRecipients,
  @ocaml.doc("<p>Contains the subject and message of an email.</p>") content: option<emailContent>,
  @ocaml.doc("<p>The email address that sends emails.</p>
         <important>
            <p>If you use the AWS IoT Events managed AWS Lambda function to manage your emails, you must <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html\">verify
          the email address that sends emails in Amazon SES</a>.</p>
         </important>")
  from: fromEmail,
}
type alarmActions = array<alarmAction>
type actions = array<action>
@ocaml.doc("<p>Specifies the actions performed and the next state entered when a <code>condition</code>
      evaluates to TRUE.</p>")
type transitionEvent = {
  @ocaml.doc("<p>The next state to enter.</p>") nextState: stateName,
  @ocaml.doc("<p>The actions to be performed.</p>") actions: option<actions>,
  @ocaml.doc("<p>Required. A Boolean expression that when TRUE causes the actions to be performed and the
        <code>nextState</code> to be entered.</p>")
  condition: condition,
  @ocaml.doc("<p>The name of the transition event.</p>") eventName: eventName,
}
@ocaml.doc("<p>Specifies the <code>actions</code> to be performed when the <code>condition</code>
      evaluates to TRUE.</p>")
type event = {
  @ocaml.doc("<p>The actions to be performed.</p>") actions: option<actions>,
  @ocaml.doc("<p>Optional. The Boolean expression that, when TRUE, causes the <code>actions</code> to be
      performed. If not present, the actions are performed (=TRUE). If the expression result is not
      a Boolean value, the actions are not performed (=FALSE).</p>")
  condition: option<condition>,
  @ocaml.doc("<p>The name of the event.</p>") eventName: eventName,
}
type emailConfigurations = array<emailConfiguration>
@ocaml.doc("<p>Contains information about one or more alarm actions.</p>")
type alarmEventActions = {
  @ocaml.doc("<p>Specifies one or more supported actions to receive notifications when the alarm state
      changes.</p>")
  alarmActions: option<alarmActions>,
}
type transitionEvents = array<transitionEvent>
@ocaml.doc("<p>Contains the notification settings of an alarm model. 
The settings apply to all alarms that were created based on this alarm model.</p>")
type notificationAction = {
  @ocaml.doc("<p>Contains the configuration information of email notifications.</p>")
  emailConfigurations: option<emailConfigurations>,
  @ocaml.doc("<p>Contains the configuration information of SMS notifications.</p>")
  smsConfigurations: option<smsconfigurations>,
  @ocaml.doc("<p>Specifies an AWS Lambda function to manage alarm notifications. 
You can create one or use the <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html\">AWS Lambda function provided by AWS IoT Events</a>.</p>")
  action: notificationTargetActions,
}
type events = array<event>
@ocaml.doc(
  "<p>Specifies the actions performed when the <code>condition</code> evaluates to TRUE.</p>"
)
type onInputLifecycle = {
  @ocaml.doc("<p>Specifies the actions performed, and the next state entered, when a <code>condition</code>
      evaluates to TRUE.</p>")
  transitionEvents: option<transitionEvents>,
  @ocaml.doc(
    "<p>Specifies the actions performed when the <code>condition</code> evaluates to TRUE.</p>"
  )
  events: option<events>,
}
@ocaml.doc("<p>When exiting this state, perform these <code>actions</code> if the specified
        <code>condition</code> is <code>TRUE</code>.</p>")
type onExitLifecycle = {
  @ocaml.doc("<p>Specifies the <code>actions</code> that are performed when the state is exited and the
        <code>condition</code> is <code>TRUE</code>.</p>")
  events: option<events>,
}
@ocaml.doc("<p>When entering this state, perform these <code>actions</code> if the <code>condition</code>
      is TRUE.</p>")
type onEnterLifecycle = {
  @ocaml.doc("<p>Specifies the actions that are performed when the state is entered and the
        <code>condition</code> is <code>TRUE</code>.</p>")
  events: option<events>,
}
type notificationActions = array<notificationAction>
@ocaml.doc("<p>Information that defines a state of a detector.</p>")
type state = {
  @ocaml.doc("<p>When exiting this state, perform these <code>actions</code> if the specified
        <code>condition</code> is <code>TRUE</code>.</p>")
  onExit: option<onExitLifecycle>,
  @ocaml.doc("<p>When entering this state, perform these <code>actions</code> if the <code>condition</code>
      is TRUE.</p>")
  onEnter: option<onEnterLifecycle>,
  @ocaml.doc("<p>When an input is received and the <code>condition</code> is TRUE, perform the specified
        <code>actions</code>.</p>")
  onInput: option<onInputLifecycle>,
  @ocaml.doc("<p>The name of the state.</p>") stateName: stateName,
}
@ocaml.doc("<p>Contains information about one or more notification actions.</p>")
type alarmNotification = {
  @ocaml.doc("<p>Contains the notification settings of an alarm model. 
The settings apply to all alarms that were created based on this alarm model.</p>")
  notificationActions: option<notificationActions>,
}
type states = array<state>
@ocaml.doc("<p>Information that defines how a detector operates.</p>")
type detectorModelDefinition = {
  @ocaml.doc("<p>The state that is entered at the creation of each detector (instance).</p>")
  initialStateName: stateName,
  @ocaml.doc("<p>Information about the states of the detector.</p>") states: states,
}
@ocaml.doc("<p>Information about the detector model.</p>")
type detectorModel = {
  @ocaml.doc("<p>Information about how the detector is configured.</p>")
  detectorModelConfiguration: option<detectorModelConfiguration>,
  @ocaml.doc("<p>Information that defines how a detector operates.</p>")
  detectorModelDefinition: option<detectorModelDefinition>,
}
@ocaml.doc("<p>AWS IoT Events monitors your equipment or device fleets for failures or changes in operation, and
      triggers actions when such events occur. You can use AWS IoT Events API operations to create, read,
      update, and delete inputs and detector models, and to list their versions.</p>")
module DescribeDetectorModelAnalysis = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the analysis result that you want to retrieve.</p>")
    analysisId: analysisId,
  }
  type response = {
    @ocaml.doc("<p>The status of the analysis activity. The status can be one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>RUNNING</code> - AWS IoT Events is analyzing your detector model. This process can take
          several minutes to complete.</p>
            </li>
            <li>
               <p>
                  <code>COMPLETE</code> - AWS IoT Events finished analyzing your detector model.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - AWS IoT Events couldn't analyze your detector model. Try again
          later.</p>
            </li>
         </ul>")
    status: option<analysisStatus>,
  }
  @module("@aws-sdk/client-iotevents") @new
  external new: request => t = "DescribeDetectorModelAnalysisCommand"
  let make = (~analysisId, ()) => new({analysisId: analysisId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInput = {
  type t
  type request = {@ocaml.doc("<p>The name of the input to delete.</p>") inputName: inputName}

  @module("@aws-sdk/client-iotevents") @new external new: request => t = "DeleteInputCommand"
  let make = (~inputName, ()) => new({inputName: inputName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDetectorModel = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the detector model to be deleted.</p>")
    detectorModelName: detectorModelName,
  }

  @module("@aws-sdk/client-iotevents") @new
  external new: request => t = "DeleteDetectorModelCommand"
  let make = (~detectorModelName, ()) => new({detectorModelName: detectorModelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAlarmModel = {
  type t
  type request = {@ocaml.doc("<p>The name of the alarm model.</p>") alarmModelName: alarmModelName}

  @module("@aws-sdk/client-iotevents") @new external new: request => t = "DeleteAlarmModelCommand"
  let make = (~alarmModelName, ()) => new({alarmModelName: alarmModelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of the keys of the tags to be removed from the resource.</p>")
    tagKeys: tagKeys,
    @ocaml.doc("<p>The ARN of the resource.</p>") resourceArn: amazonResourceName,
  }

  @module("@aws-sdk/client-iotevents") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The new or modified tags for the resource.</p>") tags: tags,
    @ocaml.doc("<p>The ARN of the resource.</p>") resourceArn: amazonResourceName,
  }

  @module("@aws-sdk/client-iotevents") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the resource.</p>") resourceArn: amazonResourceName}
  type response = {
    @ocaml.doc("<p>The list of tags assigned to the resource.</p>") tags: option<tags>,
  }
  @module("@aws-sdk/client-iotevents") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInputs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token that you can use to return the next set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The token that you can use to return the next set of results, 
or <code>null</code> if there are no more results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information about the inputs.</p>")
    inputSummaries: option<inputSummaries>,
  }
  @module("@aws-sdk/client-iotevents") @new external new: request => t = "ListInputsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDetectorModels = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token that you can use to return the next set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The token that you can use to return the next set of results, 
or <code>null</code> if there are no more results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information about the detector models.</p>")
    detectorModelSummaries: option<detectorModelSummaries>,
  }
  @module("@aws-sdk/client-iotevents") @new external new: request => t = "ListDetectorModelsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDetectorModelVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token that you can use to return the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the detector model whose versions are returned.</p>")
    detectorModelName: detectorModelName,
  }
  type response = {
    @ocaml.doc("<p>The token that you can use to return the next set of results, 
or <code>null</code> if there are no more results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information about the detector model versions.</p>")
    detectorModelVersionSummaries: option<detectorModelVersionSummaries>,
  }
  @module("@aws-sdk/client-iotevents") @new
  external new: request => t = "ListDetectorModelVersionsCommand"
  let make = (~detectorModelName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, detectorModelName: detectorModelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAlarmModels = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token that you can use to return the next set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The token that you can use to return the next set of results, 
or <code>null</code> if there are no more results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list that summarizes each alarm model.</p>")
    alarmModelSummaries: option<alarmModelSummaries>,
  }
  @module("@aws-sdk/client-iotevents") @new external new: request => t = "ListAlarmModelsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAlarmModelVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token that you can use to return the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the alarm model.</p>") alarmModelName: alarmModelName,
  }
  type response = {
    @ocaml.doc("<p>The token that you can use to return the next set of results, 
or <code>null</code> if there are no more results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list that summarizes each alarm model version.</p>")
    alarmModelVersionSummaries: option<alarmModelVersionSummaries>,
  }
  @module("@aws-sdk/client-iotevents") @new
  external new: request => t = "ListAlarmModelVersionsCommand"
  let make = (~alarmModelName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, alarmModelName: alarmModelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateInput = {
  type t
  type request = {
    @ocaml.doc("<p>The definition of the input.</p>") inputDefinition: inputDefinition,
    @ocaml.doc("<p>A brief description of the input.</p>")
    inputDescription: option<inputDescription>,
    @ocaml.doc("<p>The name of the input you want to update.</p>") inputName: inputName,
  }
  type response = {
    @ocaml.doc("<p>Information about the configuration of the input.</p>")
    inputConfiguration: option<inputConfiguration>,
  }
  @module("@aws-sdk/client-iotevents") @new external new: request => t = "UpdateInputCommand"
  let make = (~inputDefinition, ~inputName, ~inputDescription=?, ()) =>
    new({
      inputDefinition: inputDefinition,
      inputDescription: inputDescription,
      inputName: inputName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutLoggingOptions = {
  type t
  type request = {
    @ocaml.doc("<p>The new values of the AWS IoT Events logging options.</p>")
    loggingOptions: loggingOptions,
  }

  @module("@aws-sdk/client-iotevents") @new external new: request => t = "PutLoggingOptionsCommand"
  let make = (~loggingOptions, ()) => new({loggingOptions: loggingOptions})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListInputRoutings = {
  type t
  type request = {
    @ocaml.doc("<p>
      The token that you can use to return the next set of results.
    </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
      The maximum number of results to be returned per request.
    </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
      The identifer of the routed input.
    </p>")
    inputIdentifier: inputIdentifier,
  }
  type response = {
    @ocaml.doc("<p>
      The token that you can use to return the next set of results, 
or <code>null</code> if there are no more results.
    </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
      Summary information about the routed resources.
    </p>")
    routedResources: option<routedResources>,
  }
  @module("@aws-sdk/client-iotevents") @new external new: request => t = "ListInputRoutingsCommand"
  let make = (~inputIdentifier, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, inputIdentifier: inputIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLoggingOptions = {
  type t

  type response = {
    @ocaml.doc("<p>The current settings of the AWS IoT Events logging options.</p>")
    loggingOptions: option<loggingOptions>,
  }
  @module("@aws-sdk/client-iotevents") @new
  external new: unit => t = "DescribeLoggingOptionsCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInput = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata that can be used to manage the input.</p>") tags: option<tags>,
    @ocaml.doc("<p>The definition of the input.</p>") inputDefinition: inputDefinition,
    @ocaml.doc("<p>A brief description of the input.</p>")
    inputDescription: option<inputDescription>,
    @ocaml.doc("<p>The name you want to give to the input.</p>") inputName: inputName,
  }
  type response = {
    @ocaml.doc("<p>Information about the configuration of the input.</p>")
    inputConfiguration: option<inputConfiguration>,
  }
  @module("@aws-sdk/client-iotevents") @new external new: request => t = "CreateInputCommand"
  let make = (~inputDefinition, ~inputName, ~tags=?, ~inputDescription=?, ()) =>
    new({
      tags: tags,
      inputDefinition: inputDefinition,
      inputDescription: inputDescription,
      inputName: inputName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDetectorModelAnalysisResults = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>")
    maxResults: option<maxAnalysisResults>,
    @ocaml.doc("<p>The token that you can use to return the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ID of the analysis result that you want to retrieve.</p>")
    analysisId: analysisId,
  }
  type response = {
    @ocaml.doc("<p>The token that you can use to return the next set of results, 
or <code>null</code> if there are no more results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Contains information about one or more analysis results.</p>")
    analysisResults: option<analysisResults>,
  }
  @module("@aws-sdk/client-iotevents") @new
  external new: request => t = "GetDetectorModelAnalysisResultsCommand"
  let make = (~analysisId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, analysisId: analysisId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInput = {
  type t
  type request = {@ocaml.doc("<p>The name of the input.</p>") inputName: inputName}
  type response = {@ocaml.doc("<p>Information about the input.</p>") input: option<input>}
  @module("@aws-sdk/client-iotevents") @new external new: request => t = "DescribeInputCommand"
  let make = (~inputName, ()) => new({inputName: inputName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAlarmModel = {
  type t
  type request = {
    @ocaml.doc("<p>Contains the configuration information of alarm state changes.</p>")
    alarmCapabilities: option<alarmCapabilities>,
    @ocaml.doc("<p>Contains information about one or more alarm actions.</p>")
    alarmEventActions: option<alarmEventActions>,
    @ocaml.doc("<p>Contains information about one or more notification actions.</p>")
    alarmNotification: option<alarmNotification>,
    @ocaml.doc("<p>Defines when your alarm is invoked.</p>") alarmRule: alarmRule,
    @ocaml.doc("<p>A non-negative integer that reflects the severity level of the alarm.</p>")
    severity: option<severity>,
    @ocaml.doc(
      "<p>The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
    )
    roleArn: amazonResourceName,
    @ocaml.doc("<p>The description of the alarm model.</p>")
    alarmModelDescription: option<alarmModelDescription>,
    @ocaml.doc("<p>The name of the alarm model.</p>") alarmModelName: alarmModelName,
  }
  type response = {
    @ocaml.doc("<p>The status of the alarm model. The status can be one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code> - The alarm model is active and it's ready to evaluate data.</p>
            </li>
            <li>
               <p>
                  <code>ACTIVATING</code> - AWS IoT Events is activating your alarm model. 
        Activating an alarm model can take up to a few minutes.</p>
            </li>
            <li>
               <p>
                  <code>INACTIVE</code> - The alarm model is inactive, so it isn't ready to evaluate data. 
	  Check your alarm model information and update the alarm model.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - You couldn't create or update the alarm model. Check your alarm model information 
        and try again.</p>
            </li>
         </ul>")
    status: option<alarmModelVersionStatus>,
    @ocaml.doc("<p>The time the alarm model was last updated, in the Unix epoch format.</p>")
    lastUpdateTime: option<timestamp_>,
    @ocaml.doc("<p>The version of the alarm model.</p>")
    alarmModelVersion: option<alarmModelVersion>,
    @ocaml.doc(
      "<p>The ARN of the alarm model. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
    )
    alarmModelArn: option<alarmModelArn>,
    @ocaml.doc("<p>The time the alarm model was created, in the Unix epoch format.</p>")
    creationTime: option<timestamp_>,
  }
  @module("@aws-sdk/client-iotevents") @new external new: request => t = "UpdateAlarmModelCommand"
  let make = (
    ~alarmRule,
    ~roleArn,
    ~alarmModelName,
    ~alarmCapabilities=?,
    ~alarmEventActions=?,
    ~alarmNotification=?,
    ~severity=?,
    ~alarmModelDescription=?,
    (),
  ) =>
    new({
      alarmCapabilities: alarmCapabilities,
      alarmEventActions: alarmEventActions,
      alarmNotification: alarmNotification,
      alarmRule: alarmRule,
      severity: severity,
      roleArn: roleArn,
      alarmModelDescription: alarmModelDescription,
      alarmModelName: alarmModelName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAlarmModel = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the alarm model.</p>")
    alarmModelVersion: option<alarmModelVersion>,
    @ocaml.doc("<p>The name of the alarm model.</p>") alarmModelName: alarmModelName,
  }
  type response = {
    @ocaml.doc("<p>Contains the configuration information of alarm state changes.</p>")
    alarmCapabilities: option<alarmCapabilities>,
    @ocaml.doc("<p>Contains information about one or more alarm actions.</p>")
    alarmEventActions: option<alarmEventActions>,
    @ocaml.doc("<p>Contains information about one or more notification actions.</p>")
    alarmNotification: option<alarmNotification>,
    @ocaml.doc("<p>Defines when your alarm is invoked.</p>") alarmRule: option<alarmRule>,
    @ocaml.doc("<p>A non-negative integer that reflects the severity level of the alarm.</p>")
    severity: option<severity>,
    @ocaml.doc("<p>An input attribute used as a key to create an alarm. 
AWS IoT Events routes <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_Input.html\">inputs</a> 
associated with this key to the alarm.</p>")
    key: option<attributeJsonPath>,
    @ocaml.doc(
      "<p>The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
    )
    roleArn: option<amazonResourceName>,
    @ocaml.doc("<p>The description of the alarm model.</p>")
    alarmModelDescription: option<alarmModelDescription>,
    @ocaml.doc("<p>The name of the alarm model.</p>") alarmModelName: option<alarmModelName>,
    @ocaml.doc("<p>
      Contains information about the status of the alarm model.
    </p>")
    statusMessage: option<statusMessage>,
    @ocaml.doc("<p>The status of the alarm model. The status can be one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code> - The alarm model is active and it's ready to evaluate data.</p>
            </li>
            <li>
               <p>
                  <code>ACTIVATING</code> - AWS IoT Events is activating your alarm model. 
        Activating an alarm model can take up to a few minutes.</p>
            </li>
            <li>
               <p>
                  <code>INACTIVE</code> - The alarm model is inactive, so it isn't ready to evaluate data. 
	  Check your alarm model information and update the alarm model.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - You couldn't create or update the alarm model. Check your alarm model information 
        and try again.</p>
            </li>
         </ul>")
    status: option<alarmModelVersionStatus>,
    @ocaml.doc("<p>The time the alarm model was last updated, in the Unix epoch format.</p>")
    lastUpdateTime: option<timestamp_>,
    @ocaml.doc("<p>The version of the alarm model.</p>")
    alarmModelVersion: option<alarmModelVersion>,
    @ocaml.doc(
      "<p>The ARN of the alarm model. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
    )
    alarmModelArn: option<alarmModelArn>,
    @ocaml.doc("<p>The time the alarm model was created, in the Unix epoch format.</p>")
    creationTime: option<timestamp_>,
  }
  @module("@aws-sdk/client-iotevents") @new external new: request => t = "DescribeAlarmModelCommand"
  let make = (~alarmModelName, ~alarmModelVersion=?, ()) =>
    new({alarmModelVersion: alarmModelVersion, alarmModelName: alarmModelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAlarmModel = {
  type t
  type request = {
    @ocaml.doc("<p>Contains the configuration information of alarm state changes.</p>")
    alarmCapabilities: option<alarmCapabilities>,
    @ocaml.doc("<p>Contains information about one or more alarm actions.</p>")
    alarmEventActions: option<alarmEventActions>,
    @ocaml.doc("<p>Contains information about one or more notification actions.</p>")
    alarmNotification: option<alarmNotification>,
    @ocaml.doc("<p>Defines when your alarm is invoked.</p>") alarmRule: alarmRule,
    @ocaml.doc("<p>A non-negative integer that reflects the severity level of the alarm.</p>")
    severity: option<severity>,
    @ocaml.doc("<p>An input attribute used as a key to create an alarm. 
AWS IoT Events routes <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_Input.html\">inputs</a> 
associated with this key to the alarm.</p>")
    key: option<attributeJsonPath>,
    @ocaml.doc("<p>A list of key-value pairs that contain metadata for the alarm model. The tags help you
      manage the alarm model. For more information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/tagging-iotevents.html\">Tagging your AWS IoT Events
        resources</a> in the <i>AWS IoT Events Developer Guide</i>.</p>
         <p>You can create up to 50 tags for one alarm model.</p>")
    tags: option<tags>,
    @ocaml.doc(
      "<p>The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
    )
    roleArn: amazonResourceName,
    @ocaml.doc("<p>A description that tells you what the alarm model detects.</p>")
    alarmModelDescription: option<alarmModelDescription>,
    @ocaml.doc("<p>A unique name that helps you identify the alarm model. You can't change this name after
      you create the alarm model.</p>")
    alarmModelName: alarmModelName,
  }
  type response = {
    @ocaml.doc("<p>The status of the alarm model. The status can be one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code> - The alarm model is active and it's ready to evaluate data.</p>
            </li>
            <li>
               <p>
                  <code>ACTIVATING</code> - AWS IoT Events is activating your alarm model. 
        Activating an alarm model can take up to a few minutes.</p>
            </li>
            <li>
               <p>
                  <code>INACTIVE</code> - The alarm model is inactive, so it isn't ready to evaluate data. 
	  Check your alarm model information and update the alarm model.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - You couldn't create or update the alarm model. Check your alarm model information 
        and try again.</p>
            </li>
         </ul>")
    status: option<alarmModelVersionStatus>,
    @ocaml.doc("<p>The time the alarm model was last updated, in the Unix epoch format.</p>")
    lastUpdateTime: option<timestamp_>,
    @ocaml.doc("<p>The version of the alarm model.</p>")
    alarmModelVersion: option<alarmModelVersion>,
    @ocaml.doc(
      "<p>The ARN of the alarm model. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
    )
    alarmModelArn: option<alarmModelArn>,
    @ocaml.doc("<p>The time the alarm model was created, in the Unix epoch format.</p>")
    creationTime: option<timestamp_>,
  }
  @module("@aws-sdk/client-iotevents") @new external new: request => t = "CreateAlarmModelCommand"
  let make = (
    ~alarmRule,
    ~roleArn,
    ~alarmModelName,
    ~alarmCapabilities=?,
    ~alarmEventActions=?,
    ~alarmNotification=?,
    ~severity=?,
    ~key=?,
    ~tags=?,
    ~alarmModelDescription=?,
    (),
  ) =>
    new({
      alarmCapabilities: alarmCapabilities,
      alarmEventActions: alarmEventActions,
      alarmNotification: alarmNotification,
      alarmRule: alarmRule,
      severity: severity,
      key: key,
      tags: tags,
      roleArn: roleArn,
      alarmModelDescription: alarmModelDescription,
      alarmModelName: alarmModelName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDetectorModel = {
  type t
  type request = {
    @ocaml.doc("<p>Information about the order in which events are evaluated and how actions are executed.
    </p>")
    evaluationMethod: option<evaluationMethod>,
    @ocaml.doc(
      "<p>The ARN of the role that grants permission to AWS IoT Events to perform its operations.</p>"
    )
    roleArn: amazonResourceName,
    @ocaml.doc("<p>A brief description of the detector model.</p>")
    detectorModelDescription: option<detectorModelDescription>,
    @ocaml.doc("<p>Information that defines how a detector operates.</p>")
    detectorModelDefinition: detectorModelDefinition,
    @ocaml.doc("<p>The name of the detector model that is updated.</p>")
    detectorModelName: detectorModelName,
  }
  type response = {
    @ocaml.doc("<p>Information about how the detector model is configured.</p>")
    detectorModelConfiguration: option<detectorModelConfiguration>,
  }
  @module("@aws-sdk/client-iotevents") @new
  external new: request => t = "UpdateDetectorModelCommand"
  let make = (
    ~roleArn,
    ~detectorModelDefinition,
    ~detectorModelName,
    ~evaluationMethod=?,
    ~detectorModelDescription=?,
    (),
  ) =>
    new({
      evaluationMethod: evaluationMethod,
      roleArn: roleArn,
      detectorModelDescription: detectorModelDescription,
      detectorModelDefinition: detectorModelDefinition,
      detectorModelName: detectorModelName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDetectorModelAnalysis = {
  type t
  type request = {detectorModelDefinition: detectorModelDefinition}
  type response = {
    @ocaml.doc("<p>The ID that you can use to retrieve the analysis result.</p>")
    analysisId: option<analysisId>,
  }
  @module("@aws-sdk/client-iotevents") @new
  external new: request => t = "StartDetectorModelAnalysisCommand"
  let make = (~detectorModelDefinition, ()) =>
    new({detectorModelDefinition: detectorModelDefinition})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDetectorModel = {
  type t
  type request = {
    @ocaml.doc("<p>Information about the order in which events are evaluated and how actions are executed.
    </p>")
    evaluationMethod: option<evaluationMethod>,
    @ocaml.doc("<p>Metadata that can be used to manage the detector model.</p>") tags: option<tags>,
    @ocaml.doc(
      "<p>The ARN of the role that grants permission to AWS IoT Events to perform its operations.</p>"
    )
    roleArn: amazonResourceName,
    @ocaml.doc("<p>The input attribute key used to identify a device or system to create a detector (an
      instance of the detector model) and then to route each input received to the appropriate
      detector (instance). This parameter uses a JSON-path expression in the message payload of each
      input to specify the attribute-value pair that is used to identify the device associated with
      the input.</p>")
    key: option<attributeJsonPath>,
    @ocaml.doc("<p>A brief description of the detector model.</p>")
    detectorModelDescription: option<detectorModelDescription>,
    @ocaml.doc("<p>Information that defines how the detectors operate.</p>")
    detectorModelDefinition: detectorModelDefinition,
    @ocaml.doc("<p>The name of the detector model.</p>") detectorModelName: detectorModelName,
  }
  type response = {
    @ocaml.doc("<p>Information about how the detector model is configured.</p>")
    detectorModelConfiguration: option<detectorModelConfiguration>,
  }
  @module("@aws-sdk/client-iotevents") @new
  external new: request => t = "CreateDetectorModelCommand"
  let make = (
    ~roleArn,
    ~detectorModelDefinition,
    ~detectorModelName,
    ~evaluationMethod=?,
    ~tags=?,
    ~key=?,
    ~detectorModelDescription=?,
    (),
  ) =>
    new({
      evaluationMethod: evaluationMethod,
      tags: tags,
      roleArn: roleArn,
      key: key,
      detectorModelDescription: detectorModelDescription,
      detectorModelDefinition: detectorModelDefinition,
      detectorModelName: detectorModelName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDetectorModel = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the detector model.</p>")
    detectorModelVersion: option<detectorModelVersion>,
    @ocaml.doc("<p>The name of the detector model.</p>") detectorModelName: detectorModelName,
  }
  type response = {
    @ocaml.doc("<p>Information about the detector model.</p>") detectorModel: option<detectorModel>,
  }
  @module("@aws-sdk/client-iotevents") @new
  external new: request => t = "DescribeDetectorModelCommand"
  let make = (~detectorModelName, ~detectorModelVersion=?, ()) =>
    new({detectorModelVersion: detectorModelVersion, detectorModelName: detectorModelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
