type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-events") @new
external createClient: unit => awsServiceClient = "EventsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type transformerInput = string
type traceHeader = string
type timestamp_ = Js.Date.t
type targetPartitionKeyPath = string
type targetInputPath = string
type targetInput = string
type targetId = string
type targetArn = string
type tagValue = string
type tagKey = string
type string_ = string
type statementName = string
type statementId = string
type sql = string
type secretsManagerSecretArn = string
type scheduleExpression = string
type sageMakerPipelineParameterValue = string
type sageMakerPipelineParameterName = string
type runCommandTargetValue = string
type runCommandTargetKey = string
type ruleState = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type ruleName = string
type ruleDescription = string
type ruleArn = string
type roleArn = string
type retentionDays = int
type resourceArn = string
type replayStateReason = string
type replayState = [
  | @as("FAILED") #FAILED
  | @as("CANCELLED") #CANCELLED
  | @as("COMPLETED") #COMPLETED
  | @as("CANCELLING") #CANCELLING
  | @as("RUNNING") #RUNNING
  | @as("STARTING") #STARTING
]
type replayName = string
type replayDescription = string
type replayArn = string
type referenceId = string
type redshiftSecretManagerArn = string
type queryStringValue = string
type queryStringKey = string
type propagateTags = [@as("TASK_DEFINITION") #TASK_DEFINITION]
type principal = string
type placementStrategyType = [
  | @as("binpack") #Binpack
  | @as("spread") #Spread
  | @as("random") #Random
]
type placementStrategyField = string
type placementConstraintType = [
  | @as("memberOf") #MemberOf
  | @as("distinctInstance") #DistinctInstance
]
type placementConstraintExpression = string
type pathParameter = string
type partnerEventSourceNamePrefix = string
type nonPartnerEventBusNameOrArn = string
type nonPartnerEventBusName = string
type nextToken = string
type messageGroupId = string
type maximumRetryAttempts = int
type maximumEventAgeInSeconds = int
type managedBy = string
type long = float
type limitMin1 = int
type limitMax100 = int
type launchType = [@as("EXTERNAL") #EXTERNAL | @as("FARGATE") #FARGATE | @as("EC2") #EC2]
type integer_ = int
type inputTransformerPathKey = string
type httpsEndpoint = string
type headerValue = string
type headerKey = string
type eventTime = Js.Date.t
type eventSourceState = [@as("DELETED") #DELETED | @as("ACTIVE") #ACTIVE | @as("PENDING") #PENDING]
type eventSourceNamePrefix = string
type eventSourceName = string
type eventResource = string
type eventPattern = string
type eventId = string
type eventBusNameOrArn = string
type eventBusName = string
type errorMessage = string
type errorCode = string
type dbUser = string
type database = string
type createdBy = string
type connectionStateReason = string
type connectionState = [
  | @as("DEAUTHORIZING") #DEAUTHORIZING
  | @as("AUTHORIZING") #AUTHORIZING
  | @as("DEAUTHORIZED") #DEAUTHORIZED
  | @as("AUTHORIZED") #AUTHORIZED
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("CREATING") #CREATING
]
type connectionOAuthHttpMethod = [@as("PUT") #PUT | @as("POST") #POST | @as("GET") #GET]
type connectionName = string
type connectionDescription = string
type connectionAuthorizationType = [
  | @as("API_KEY") #API_KEY
  | @as("OAUTH_CLIENT_CREDENTIALS") #OAUTH_CLIENT_CREDENTIALS
  | @as("BASIC") #BASIC
]
type connectionArn = string
type capacityProviderStrategyItemWeight = int
type capacityProviderStrategyItemBase = int
type capacityProvider = string
type boolean_ = bool
type authHeaderParameters = string
type assignPublicIp = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type arn = string
type archiveStateReason = string
type archiveState = [
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("UPDATING") #UPDATING
  | @as("CREATING") #CREATING
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
]
type archiveName = string
type archiveDescription = string
type archiveArn = string
type apiDestinationState = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type apiDestinationName = string
type apiDestinationInvocationRateLimitPerSecond = int
type apiDestinationHttpMethod = [
  | @as("DELETE") #DELETE
  | @as("PATCH") #PATCH
  | @as("PUT") #PUT
  | @as("OPTIONS") #OPTIONS
  | @as("HEAD") #HEAD
  | @as("GET") #GET
  | @as("POST") #POST
]
type apiDestinationDescription = string
type apiDestinationArn = string
type action = string
type accountId = string
@ocaml.doc("<p>Contains the OAuth authorization parameters to use for the connection.</p>")
type updateConnectionOAuthClientRequestParameters = {
  @ocaml.doc(
    "<p>The client secret assciated with the client ID to use for OAuth authorization.</p>"
  )
  @as("ClientSecret")
  clientSecret: option<authHeaderParameters>,
  @ocaml.doc("<p>The client ID to use for OAuth authorization.</p>") @as("ClientID")
  clientID: option<authHeaderParameters>,
}
@ocaml.doc("<p>Contains the Basic authorization parameters for the connection.</p>")
type updateConnectionBasicAuthRequestParameters = {
  @ocaml.doc("<p>The password associated with the user name to use for Basic authorization.</p>")
  @as("Password")
  password: option<authHeaderParameters>,
  @ocaml.doc("<p>The user name to use for Basic authorization.</p>") @as("Username")
  username: option<authHeaderParameters>,
}
@ocaml.doc("<p>Contains the API key authorization parameters to use to update the connection.</p>")
type updateConnectionApiKeyAuthRequestParameters = {
  @ocaml.doc("<p>The value associated with teh API key to use for authorization.</p>")
  @as("ApiKeyValue")
  apiKeyValue: option<authHeaderParameters>,
  @ocaml.doc("<p>The name of the API key to use for authorization.</p>") @as("ApiKeyName")
  apiKeyName: option<authHeaderParameters>,
}
type transformerPaths = Js.Dict.t<targetInputPath>
type targetIdList = array<targetId>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A key-value pair associated with an Amazon Web Services resource. In EventBridge, rules and event buses
      support tagging.</p>")
type tag = {
  @ocaml.doc("<p>The value for the specified tag key.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>A string you can use to assign a value. The combination of tag keys and values can help
      you organize and categorize your resources.</p>")
  @as("Key")
  key: tagKey,
}
type stringList = array<string_>
@ocaml.doc("<p>This structure includes the custom parameter to be used when the target is an SQS FIFO
      queue.</p>")
type sqsParameters = {
  @ocaml.doc("<p>The FIFO message group ID to use as the target.</p>") @as("MessageGroupId")
  messageGroupId: option<messageGroupId>,
}
@ocaml.doc("<p>Name/Value pair of a parameter to start execution of a SageMaker Model Building
      Pipeline.</p>")
type sageMakerPipelineParameter = {
  @ocaml.doc("<p>Value of parameter to start execution of a SageMaker Model Building Pipeline.</p>")
  @as("Value")
  value: sageMakerPipelineParameterValue,
  @ocaml.doc("<p>Name of parameter to start execution of a SageMaker Model Building Pipeline.</p>")
  @as("Name")
  name: sageMakerPipelineParameterName,
}
type runCommandTargetValues = array<runCommandTargetValue>
type ruleNameList = array<ruleName>
@ocaml.doc("<p>Contains information about a rule in Amazon EventBridge.</p>")
type rule = {
  @ocaml.doc("<p>The name or ARN of the event bus associated with the rule. If you omit this, the default
      event bus is used.</p>")
  @as("EventBusName")
  eventBusName: option<eventBusName>,
  @ocaml.doc("<p>If the rule was created on behalf of your account by an Amazon Web Services service, this field displays
      the principal name of the service that created the rule.</p>")
  @as("ManagedBy")
  managedBy: option<managedBy>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the role that is used for target invocation.</p>
         <p>If you're setting an event bus in another account as the target and that account granted
      permission to your account through an organization instead of directly by the account ID, you
      must specify a <code>RoleArn</code> with proper permissions in the <code>Target</code>
      structure, instead of here in this parameter.</p>")
  @as("RoleArn")
  roleArn: option<roleArn>,
  @ocaml.doc(
    "<p>The scheduling expression. For example, \"cron(0 20 * * ? *)\", \"rate(5 minutes)\". For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-create-rule-schedule.html\">Creating an Amazon EventBridge rule that runs on a schedule</a>.</p>"
  )
  @as("ScheduleExpression")
  scheduleExpression: option<scheduleExpression>,
  @ocaml.doc("<p>The description of the rule.</p>") @as("Description")
  description: option<ruleDescription>,
  @ocaml.doc("<p>The state of the rule.</p>") @as("State") state: option<ruleState>,
  @ocaml.doc("<p>The event pattern of the rule. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html\">Events and Event
        Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>")
  @as("EventPattern")
  eventPattern: option<eventPattern>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the rule.</p>") @as("Arn") arn: option<ruleArn>,
  @ocaml.doc("<p>The name of the rule.</p>") @as("Name") name: option<ruleName>,
}
@ocaml.doc("<p>A <code>RetryPolicy</code> object that includes information about the retry policy
      settings.</p>")
type retryPolicy = {
  @ocaml.doc("<p>The maximum amount of time, in seconds, to continue to make retry attempts.</p>")
  @as("MaximumEventAgeInSeconds")
  maximumEventAgeInSeconds: option<maximumEventAgeInSeconds>,
  @ocaml.doc("<p>The maximum number of retry attempts to make before the request fails. Retry attempts
      continue until either the maximum number of attempts is made or until the duration of the
        <code>MaximumEventAgeInSeconds</code> is met.</p>")
  @as("MaximumRetryAttempts")
  maximumRetryAttempts: option<maximumRetryAttempts>,
}
type replayDestinationFilters = array<arn>
@ocaml.doc("<p>A <code>Replay</code> object that contains details about a replay.</p>")
type replay = {
  @ocaml.doc("<p>A time stamp for the time that the replay completed.</p>") @as("ReplayEndTime")
  replayEndTime: option<timestamp_>,
  @ocaml.doc("<p>A time stamp for the time that the replay started.</p>") @as("ReplayStartTime")
  replayStartTime: option<timestamp_>,
  @ocaml.doc("<p>A time stamp for the time that the last event was replayed.</p>")
  @as("EventLastReplayedTime")
  eventLastReplayedTime: option<timestamp_>,
  @ocaml.doc("<p>A time stamp for the time to start replaying events. Any event with a creation time prior
      to the <code>EventEndTime</code> specified is replayed.</p>")
  @as("EventEndTime")
  eventEndTime: option<timestamp_>,
  @ocaml.doc("<p>A time stamp for the time to start replaying events. This is determined by the time in the
      event as described in <a href=\"https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEventsRequestEntry.html#eventbridge-Type-PutEventsRequestEntry-Time\">Time</a>.</p>")
  @as("EventStartTime")
  eventStartTime: option<timestamp_>,
  @ocaml.doc("<p>A description of why the replay is in the current state.</p>") @as("StateReason")
  stateReason: option<replayStateReason>,
  @ocaml.doc("<p>The current state of the replay.</p>") @as("State") state: option<replayState>,
  @ocaml.doc("<p>The ARN of the archive to replay event from.</p>") @as("EventSourceArn")
  eventSourceArn: option<arn>,
  @ocaml.doc("<p>The name of the replay.</p>") @as("ReplayName") replayName: option<replayName>,
}
@ocaml.doc("<p>Represents a target that failed to be removed from a rule.</p>")
type removeTargetsResultEntry = {
  @ocaml.doc("<p>The error message that explains why the target removal failed.</p>")
  @as("ErrorMessage")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The error code that indicates why the target removal failed. If the value is
        <code>ConcurrentModificationException</code>, too many requests were made at the same
      time.</p>")
  @as("ErrorCode")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>The ID of the target.</p>") @as("TargetId") targetId: option<targetId>,
}
@ocaml.doc("<p>These are custom parameters to be used when the target is a Amazon Redshift cluster to invoke the
      Amazon Redshift Data API ExecuteStatement based on EventBridge events.</p>")
type redshiftDataParameters = {
  @ocaml.doc("<p>Indicates whether to send an event back to EventBridge after the SQL statement
      runs.</p>")
  @as("WithEvent")
  withEvent: option<boolean_>,
  @ocaml.doc("<p>The name of the SQL statement. You can name the SQL statement when you create it to
      identify the query.</p>")
  @as("StatementName")
  statementName: option<statementName>,
  @ocaml.doc("<p>The SQL statement text to run.</p>") @as("Sql") sql: sql,
  @ocaml.doc(
    "<p>The database user name. Required when authenticating using temporary credentials.</p>"
  )
  @as("DbUser")
  dbUser: option<dbUser>,
  @ocaml.doc(
    "<p>The name of the database. Required when authenticating using temporary credentials.</p>"
  )
  @as("Database")
  database: database,
  @ocaml.doc("<p>The name or ARN of the secret that enables access to the database. Required when
      authenticating using Amazon Web Services Secrets Manager.</p>")
  @as("SecretManagerArn")
  secretManagerArn: option<redshiftSecretManagerArn>,
}
type queryStringParametersMap = Js.Dict.t<queryStringValue>
@ocaml.doc("<p>Represents a target that failed to be added to a rule.</p>")
type putTargetsResultEntry = {
  @ocaml.doc("<p>The error message that explains why the target addition failed.</p>")
  @as("ErrorMessage")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The error code that indicates why the target addition failed. If the value is
        <code>ConcurrentModificationException</code>, too many requests were made at the same
      time.</p>")
  @as("ErrorCode")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>The ID of the target.</p>") @as("TargetId") targetId: option<targetId>,
}
@ocaml.doc("<p>Represents an event that a partner tried to generate, but failed.</p>")
type putPartnerEventsResultEntry = {
  @ocaml.doc("<p>The error message that explains why the event submission failed.</p>")
  @as("ErrorMessage")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The error code that indicates why the event submission failed.</p>")
  @as("ErrorCode")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>The ID of the event.</p>") @as("EventId") eventId: option<eventId>,
}
@ocaml.doc("<p>Represents an event that failed to be submitted. For information about the errors that are common to all actions, see 
      <a href=\"https://docs.aws.amazon.com/eventbridge/latest/APIReference/CommonErrors.html\">Common Errors</a>.</p>")
type putEventsResultEntry = {
  @ocaml.doc("<p>The error message that explains why the event submission failed.</p>")
  @as("ErrorMessage")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The error code that indicates why the event submission failed.</p>")
  @as("ErrorCode")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>The ID of the event.</p>") @as("EventId") eventId: option<eventId>,
}
@ocaml.doc("<p>The task placement strategy for a task or service. To learn more, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html\">Task Placement Strategies</a> in the Amazon Elastic Container Service Service Developer
      Guide.</p>")
type placementStrategy = {
  @ocaml.doc("<p>The field to apply the placement strategy against. For the spread placement strategy,
      valid values are instanceId (or host, which has the same effect), or any platform or custom
      attribute that is applied to a container instance, such as attribute:ecs.availability-zone.
      For the binpack placement strategy, valid values are cpu and memory. For the random placement
      strategy, this field is not used. </p>")
  field: option<placementStrategyField>,
  @ocaml.doc("<p>The type of placement strategy. The random placement strategy randomly places tasks on
      available candidates. The spread placement strategy spreads placement across available
      candidates evenly based on the field parameter. The binpack strategy places tasks on available
      candidates that have the least available amount of the resource that is specified with the
      field parameter. For example, if you binpack on memory, a task is placed on the instance with
      the least amount of remaining memory (but still enough to run the task). </p>")
  @as("type")
  type_: option<placementStrategyType>,
}
@ocaml.doc("<p>An object representing a constraint on task placement. To learn more, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html\">Task Placement Constraints</a> in the Amazon Elastic Container Service Developer
      Guide.</p>")
type placementConstraint = {
  @ocaml.doc("<p>A cluster query language expression to apply to the constraint. You cannot specify an
      expression if the constraint type is <code>distinctInstance</code>. To learn more, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html\">Cluster Query Language</a> in the Amazon Elastic Container Service Developer Guide.
    </p>")
  expression: option<placementConstraintExpression>,
  @ocaml.doc("<p>The type of constraint. Use distinctInstance to ensure that each task in a particular
      group is running on a different container instance. Use memberOf to restrict the selection to
      a group of valid candidates. </p>")
  @as("type")
  type_: option<placementConstraintType>,
}
type pathParameterList = array<pathParameter>
@ocaml.doc(
  "<p>The Amazon Web Services account that a partner event source has been offered to.</p>"
)
type partnerEventSourceAccount = {
  @ocaml.doc("<p>The state of the event source. If it is ACTIVE, you have already created a matching event
      bus for this event source, and that event bus is active. If it is PENDING, either you haven't
      yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have
      created a matching event bus, but the event source has since been deleted.</p>")
  @as("State")
  state: option<eventSourceState>,
  @ocaml.doc("<p>The date and time that the event source will expire, if the Amazon Web Services account doesn't create a
      matching event bus for it.</p>")
  @as("ExpirationTime")
  expirationTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time the event source was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc(
    "<p>The Amazon Web Services account ID that the partner event source was offered to.</p>"
  )
  @as("Account")
  account: option<accountId>,
}
@ocaml.doc("<p>A partner event source is created by an SaaS partner. If a customer creates a partner
      event bus that matches this event source, that Amazon Web Services account can receive events from the
      partner's applications or services.</p>")
type partnerEventSource = {
  @ocaml.doc("<p>The name of the partner event source.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The ARN of the partner event source.</p>") @as("Arn") arn: option<string_>,
}
@ocaml.doc("<p>This object enables you to specify a JSON path to extract from the event and use as the
      partition key for the Amazon Kinesis data stream, so that you can control the shard to which
      the event goes. If you do not include this parameter, the default is to use the
        <code>eventId</code> as the partition key.</p>")
type kinesisParameters = {
  @ocaml.doc("<p>The JSON path to be extracted from the event and used as the partition key. For more
      information, see <a href=\"https://docs.aws.amazon.com/streams/latest/dev/key-concepts.html#partition-key\">Amazon Kinesis Streams Key
        Concepts</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p>")
  @as("PartitionKeyPath")
  partitionKeyPath: targetPartitionKeyPath,
}
type headerParametersMap = Js.Dict.t<headerValue>
@ocaml.doc("<p>A partner event source is created by an SaaS partner. If a customer creates a partner
      event bus that matches this event source, that Amazon Web Services account can receive events from the
      partner's applications or services.</p>")
type eventSource = {
  @ocaml.doc("<p>The state of the event source. If it is ACTIVE, you have already created a matching event
      bus for this event source, and that event bus is active. If it is PENDING, either you haven't
      yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have
      created a matching event bus, but the event source has since been deleted.</p>")
  @as("State")
  state: option<eventSourceState>,
  @ocaml.doc("<p>The name of the event source.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The date and time that the event source will expire, if the Amazon Web Services account doesn't create a
      matching event bus for it.</p>")
  @as("ExpirationTime")
  expirationTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time the event source was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The name of the partner that created the event source.</p>") @as("CreatedBy")
  createdBy: option<string_>,
  @ocaml.doc("<p>The ARN of the event source.</p>") @as("Arn") arn: option<string_>,
}
type eventResourceList = array<eventResource>
@ocaml.doc("<p>An event bus receives events from a source and routes them to rules associated with that
      event bus. Your account's default event bus receives events from Amazon Web Services services. A custom event
      bus can receive events from your custom applications and services. A partner event bus
      receives events from an event source created by an SaaS partner. These events come from the
      partners services or applications.</p>")
type eventBus = {
  @ocaml.doc("<p>The permissions policy of the event bus, describing which other Amazon Web Services accounts can write
      events to this event bus.</p>")
  @as("Policy")
  policy: option<string_>,
  @ocaml.doc("<p>The ARN of the event bus.</p>") @as("Arn") arn: option<string_>,
  @ocaml.doc("<p>The name of the event bus.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>A <code>DeadLetterConfig</code> object that contains information about a dead-letter queue
      configuration.</p>")
type deadLetterConfig = {
  @ocaml.doc("<p>The ARN of the SQS queue specified as the target for the dead-letter queue.</p>")
  @as("Arn")
  arn: option<resourceArn>,
}
@ocaml.doc("<p>Contains the Basic authorization parameters to use for the connection.</p>")
type createConnectionOAuthClientRequestParameters = {
  @ocaml.doc("<p>The client secret associated with the client ID to use for OAuth authorization for the
      connection.</p>")
  @as("ClientSecret")
  clientSecret: authHeaderParameters,
  @ocaml.doc("<p>The client ID to use for OAuth authorization for the connection.</p>")
  @as("ClientID")
  clientID: authHeaderParameters,
}
@ocaml.doc("<p>Contains the Basic authorization parameters to use for the connection.</p>")
type createConnectionBasicAuthRequestParameters = {
  @ocaml.doc("<p>The password associated with the user name to use for Basic authorization.</p>")
  @as("Password")
  password: authHeaderParameters,
  @ocaml.doc("<p>The user name to use for Basic authorization.</p>") @as("Username")
  username: authHeaderParameters,
}
@ocaml.doc("<p>Contains the API key authorization parameters for the connection.</p>")
type createConnectionApiKeyAuthRequestParameters = {
  @ocaml.doc("<p>The value for the API key to use for authorization.</p>") @as("ApiKeyValue")
  apiKeyValue: authHeaderParameters,
  @ocaml.doc("<p>The name of the API key to use for authorization.</p>") @as("ApiKeyName")
  apiKeyName: authHeaderParameters,
}
@ocaml.doc("<p>Additional query string parameter for the connection. You can include up to 100 additional
      query string parameters per request. Each additional parameter counts towards the event
      payload size, which cannot exceed 64 KB.</p>")
type connectionQueryStringParameter = {
  @ocaml.doc("<p>Specifies whether the value is secret.</p>") @as("IsValueSecret")
  isValueSecret: option<boolean_>,
  @ocaml.doc("<p>The value associated with the key for the query string parameter.</p>")
  @as("Value")
  value: option<queryStringValue>,
  @ocaml.doc("<p>The key for a query string parameter.</p>") @as("Key") key: option<queryStringKey>,
}
@ocaml.doc("<p>Contains the client response parameters for the connection when OAuth is specified as the
      authorization type.</p>")
type connectionOAuthClientResponseParameters = {
  @ocaml.doc("<p>The client ID associated with the response to the connection request.</p>")
  @as("ClientID")
  clientID: option<authHeaderParameters>,
}
@ocaml.doc("<p>Additional parameter included in the header. You can include up to 100 additional header
      parameters per request. An event payload cannot exceed 64 KB.</p>")
type connectionHeaderParameter = {
  @ocaml.doc("<p>Specified whether the value is a secret.</p>") @as("IsValueSecret")
  isValueSecret: option<boolean_>,
  @ocaml.doc("<p>The value associated with the key.</p>") @as("Value") value: option<headerValue>,
  @ocaml.doc("<p>The key for the parameter.</p>") @as("Key") key: option<headerKey>,
}
@ocaml.doc("<p>Additional parameter included in the body. You can include up to 100 additional body
      parameters per request. An event payload cannot exceed 64 KB.</p>")
type connectionBodyParameter = {
  @ocaml.doc("<p>Specified whether the value is secret.</p>") @as("IsValueSecret")
  isValueSecret: option<boolean_>,
  @ocaml.doc("<p>The value associated with the key.</p>") @as("Value") value: option<string_>,
  @ocaml.doc("<p>The key for the parameter.</p>") @as("Key") key: option<string_>,
}
@ocaml.doc("<p>Contains the authorization parameters for the connection if Basic is specified as the
      authorization type.</p>")
type connectionBasicAuthResponseParameters = {
  @ocaml.doc("<p>The user name to use for Basic authorization.</p>") @as("Username")
  username: option<authHeaderParameters>,
}
@ocaml.doc("<p>Contains the authorization parameters for the connection if API Key is specified as the
      authorization type.</p>")
type connectionApiKeyAuthResponseParameters = {
  @ocaml.doc("<p>The name of the header to use for the <code>APIKeyValue</code> used for
      authorization.</p>")
  @as("ApiKeyName")
  apiKeyName: option<authHeaderParameters>,
}
@ocaml.doc("<p>Contains information about a connection.</p>")
type connection = {
  @ocaml.doc("<p>A time stamp for the time that the connection was last authorized.</p>")
  @as("LastAuthorizedTime")
  lastAuthorizedTime: option<timestamp_>,
  @ocaml.doc("<p>A time stamp for the time that the connection was last modified.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: option<timestamp_>,
  @ocaml.doc("<p>A time stamp for the time that the connection was created.</p>")
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The authorization type specified for the connection.</p>") @as("AuthorizationType")
  authorizationType: option<connectionAuthorizationType>,
  @ocaml.doc("<p>The reason that the connection is in the connection state.</p>") @as("StateReason")
  stateReason: option<connectionStateReason>,
  @ocaml.doc("<p>The state of the connection.</p>") @as("ConnectionState")
  connectionState: option<connectionState>,
  @ocaml.doc("<p>The name of the connection.</p>") @as("Name") name: option<connectionName>,
  @ocaml.doc("<p>The ARN of the connection.</p>") @as("ConnectionArn")
  connectionArn: option<connectionArn>,
}
@ocaml.doc("<p>A JSON string which you can use to limit the event bus permissions you are granting to
      only accounts that fulfill the condition. Currently, the only supported condition is
      membership in a certain Amazon Web Services organization. The string must contain <code>Type</code>,
        <code>Key</code>, and <code>Value</code> fields. The <code>Value</code> field specifies the
      ID of the Amazon Web Services organization. Following is an example value for <code>Condition</code>:</p>
         <p>
            <code>'{\"Type\" : \"StringEquals\", \"Key\": \"aws:PrincipalOrgID\", \"Value\":
        \"o-1234567890\"}'</code>
         </p>")
type condition = {
  @ocaml.doc("<p>Specifies the value for the key. Currently, this must be the ID of the
      organization.</p>")
  @as("Value")
  value: string_,
  @ocaml.doc("<p>Specifies the key for the condition. Currently the only supported key is
        <code>aws:PrincipalOrgID</code>.</p>")
  @as("Key")
  key: string_,
  @ocaml.doc("<p>Specifies the type of condition. Currently the only supported value is
        <code>StringEquals</code>.</p>")
  @as("Type")
  type_: string_,
}
@ocaml.doc(
  "<p>The details of a capacity provider strategy. To learn more, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CapacityProviderStrategyItem.html\">CapacityProviderStrategyItem</a> in the Amazon ECS API Reference.</p>"
)
type capacityProviderStrategyItem = {
  @ocaml.doc("<p>The base value designates how many tasks, at a minimum, to run on the specified capacity
      provider. Only one capacity provider in a capacity provider strategy can have a base defined.
      If no value is specified, the default value of 0 is used. </p>")
  base: option<capacityProviderStrategyItemBase>,
  @ocaml.doc("<p>The weight value designates the relative percentage of the total number of tasks launched
      that should use the specified capacity provider. The weight value is taken into consideration
      after the base value, if defined, is satisfied.</p>")
  weight: option<capacityProviderStrategyItemWeight>,
  @ocaml.doc("<p>The short name of the capacity provider.</p>") capacityProvider: capacityProvider,
}
@ocaml.doc("<p>The retry strategy to use for failed jobs, if the target is an Batch job. If you
      specify a retry strategy here, it overrides the retry strategy defined in the job
      definition.</p>")
type batchRetryStrategy = {
  @ocaml.doc(
    "<p>The number of times to attempt to retry, if the job fails. Valid values are 1–10.</p>"
  )
  @as("Attempts")
  attempts: option<integer_>,
}
@ocaml.doc("<p>The array properties for the submitted job, such as the size of the array. The array size
      can be between 2 and 10,000. If you specify array properties for a job, it becomes an array
      job. This parameter is used only if the target is an Batch job.</p>")
type batchArrayProperties = {
  @ocaml.doc("<p>The size of the array, if this is an array batch job. Valid values are integers between 2
      and 10,000.</p>")
  @as("Size")
  size: option<integer_>,
}
@ocaml.doc("<p>An <code>Archive</code> object that contains details about an archive.</p>")
type archive = {
  @ocaml.doc("<p>The time stamp for the time that the archive was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The number of events in the archive.</p>") @as("EventCount")
  eventCount: option<long>,
  @ocaml.doc("<p>The size of the archive, in bytes.</p>") @as("SizeBytes") sizeBytes: option<long>,
  @ocaml.doc("<p>The number of days to retain events in the archive before they are deleted.</p>")
  @as("RetentionDays")
  retentionDays: option<retentionDays>,
  @ocaml.doc("<p>A description for the reason that the archive is in the current state.</p>")
  @as("StateReason")
  stateReason: option<archiveStateReason>,
  @ocaml.doc("<p>The current state of the archive.</p>") @as("State") state: option<archiveState>,
  @ocaml.doc("<p>The ARN of the event bus associated with the archive. Only events from this event bus are
      sent to the archive.</p>")
  @as("EventSourceArn")
  eventSourceArn: option<arn>,
  @ocaml.doc("<p>The name of the archive.</p>") @as("ArchiveName") archiveName: option<archiveName>,
}
@ocaml.doc("<p>Contains details about an API destination.</p>")
type apiDestination = {
  @ocaml.doc("<p>A time stamp for the time that the API destination was last modified.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: option<timestamp_>,
  @ocaml.doc("<p>A time stamp for the time that the API destination was created.</p>")
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The maximum number of invocations per second to send to the HTTP endpoint.</p>")
  @as("InvocationRateLimitPerSecond")
  invocationRateLimitPerSecond: option<apiDestinationInvocationRateLimitPerSecond>,
  @ocaml.doc("<p>The method to use to connect to the HTTP endpoint.</p>") @as("HttpMethod")
  httpMethod: option<apiDestinationHttpMethod>,
  @ocaml.doc("<p>The URL to the endpoint for the API destination.</p>") @as("InvocationEndpoint")
  invocationEndpoint: option<httpsEndpoint>,
  @ocaml.doc("<p>The ARN of the connection specified for the API destination.</p>")
  @as("ConnectionArn")
  connectionArn: option<connectionArn>,
  @ocaml.doc("<p>The state of the API destination.</p>") @as("ApiDestinationState")
  apiDestinationState: option<apiDestinationState>,
  @ocaml.doc("<p>The name of the API destination.</p>") @as("Name")
  name: option<apiDestinationName>,
  @ocaml.doc("<p>The ARN of the API destination.</p>") @as("ApiDestinationArn")
  apiDestinationArn: option<apiDestinationArn>,
}
type tagList_ = array<tag>
type sageMakerPipelineParameterList = array<sageMakerPipelineParameter>
@ocaml.doc("<p>Information about the EC2 instances that are to be sent the command, specified as
      key-value pairs. Each <code>RunCommandTarget</code> block can include only one key, but this
      key may specify multiple values.</p>")
type runCommandTarget = {
  @ocaml.doc("<p>If <code>Key</code> is <code>tag:</code>
            <i>tag-key</i>, <code>Values</code>
      is a list of tag values. If <code>Key</code> is <code>InstanceIds</code>, <code>Values</code>
      is a list of Amazon EC2 instance IDs.</p>")
  @as("Values")
  values: runCommandTargetValues,
  @ocaml.doc("<p>Can be either <code>tag:</code>
            <i>tag-key</i> or
      <code>InstanceIds</code>.</p>")
  @as("Key")
  key: runCommandTargetKey,
}
type ruleResponseList = array<rule>
type replayList = array<replay>
@ocaml.doc("<p>A <code>ReplayDestination</code> object that contains details about a replay.</p>")
type replayDestination = {
  @ocaml.doc("<p>A list of ARNs for rules to replay events to.</p>") @as("FilterArns")
  filterArns: option<replayDestinationFilters>,
  @ocaml.doc("<p>The ARN of the event bus to replay event to. You can replay events only to the event bus
      specified to create the archive.</p>")
  @as("Arn")
  arn: arn,
}
type removeTargetsResultEntryList = array<removeTargetsResultEntry>
type putTargetsResultEntryList = array<putTargetsResultEntry>
type putPartnerEventsResultEntryList = array<putPartnerEventsResultEntry>
@ocaml.doc("<p>The details about an event generated by an SaaS partner.</p>")
type putPartnerEventsRequestEntry = {
  @ocaml.doc("<p>A valid JSON string. There is no other schema imposed. The JSON string may contain fields
      and nested subobjects.</p>")
  @as("Detail")
  detail: option<string_>,
  @ocaml.doc("<p>A free-form string used to decide what fields to expect in the event detail.</p>")
  @as("DetailType")
  detailType: option<string_>,
  @ocaml.doc("<p>Amazon Web Services resources, identified by Amazon Resource Name (ARN), which the event primarily
      concerns. Any number, including zero, may be present.</p>")
  @as("Resources")
  resources: option<eventResourceList>,
  @ocaml.doc("<p>The event source that is generating the entry.</p>") @as("Source")
  source: option<eventSourceName>,
  @ocaml.doc("<p>The date and time of the event.</p>") @as("Time") time: option<eventTime>,
}
type putEventsResultEntryList = array<putEventsResultEntry>
@ocaml.doc("<p>Represents an event to be submitted.</p>")
type putEventsRequestEntry = {
  @ocaml.doc("<p>An X-Ray trace header, which is an http header (X-Amzn-Trace-Id) that contains the
      trace-id associated with the event.</p>
         <p>To learn more about X-Ray trace headers, see <a href=\"https://docs.aws.amazon.com/xray/latest/devguide/xray-concepts.html#xray-concepts-tracingheader\">Tracing header</a> in the X-Ray Developer Guide.</p>")
  @as("TraceHeader")
  traceHeader: option<traceHeader>,
  @ocaml.doc("<p>The name or ARN of the event bus to receive the event. Only the rules that are associated
      with this event bus are used to match the event. If you omit this, the default event bus is
      used.</p>")
  @as("EventBusName")
  eventBusName: option<nonPartnerEventBusNameOrArn>,
  @ocaml.doc("<p>A valid JSON string. There is no other schema imposed. The JSON string may contain fields
      and nested subobjects.</p>")
  @as("Detail")
  detail: option<string_>,
  @ocaml.doc("<p>Free-form string used to decide what fields to expect in the event detail.</p>")
  @as("DetailType")
  detailType: option<string_>,
  @ocaml.doc("<p>Amazon Web Services resources, identified by Amazon Resource Name (ARN), which the event primarily
      concerns. Any number, including zero, may be present.</p>")
  @as("Resources")
  resources: option<eventResourceList>,
  @ocaml.doc("<p>The source of the event.</p>") @as("Source") source: option<string_>,
  @ocaml.doc(
    "<p>The time stamp of the event, per <a href=\"https://www.rfc-editor.org/rfc/rfc3339.txt\">RFC3339</a>. If no time stamp is provided, the time stamp of the <a href=\"https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEvents.html\">PutEvents</a> call is used.</p>"
  )
  @as("Time")
  time: option<eventTime>,
}
type placementStrategies = array<placementStrategy>
type placementConstraints = array<placementConstraint>
type partnerEventSourceList = array<partnerEventSource>
type partnerEventSourceAccountList = array<partnerEventSourceAccount>
@ocaml.doc("<p>Contains the parameters needed for you to provide custom input to a target based on one or
      more pieces of data extracted from the event.</p>")
type inputTransformer = {
  @ocaml.doc("<p>Input template where you specify placeholders that will be filled with the values of the
      keys from <code>InputPathsMap</code> to customize the data sent to the target. Enclose each
        <code>InputPathsMaps</code> value in brackets: <<i>value</i>> The
      InputTemplate must be valid JSON.</p>

         <p>If <code>InputTemplate</code> is a JSON object (surrounded by curly braces), the following
      restrictions apply:</p>
         <ul>
            <li>
               <p>The placeholder cannot be used as an object key.</p>
            </li>
         </ul>
         <p>The following example shows the syntax for using <code>InputPathsMap</code> and
        <code>InputTemplate</code>.</p>
         <p>
            <code> \"InputTransformer\":</code>
         </p>
         <p>
            <code>{</code>
         </p>
         <p>
            <code>\"InputPathsMap\": {\"instance\": \"$.detail.instance\",\"status\":
        \"$.detail.status\"},</code>
         </p>
         <p>
            <code>\"InputTemplate\": \"<instance> is in state <status>\"</code>
         </p>
         <p>
            <code>}</code>
         </p>
         <p>To have the <code>InputTemplate</code> include quote marks within a JSON string, escape
      each quote marks with a slash, as in the following example:</p>
         <p>
            <code> \"InputTransformer\":</code>
         </p>
         <p>
            <code>{</code>
         </p>
         <p>
            <code>\"InputPathsMap\": {\"instance\": \"$.detail.instance\",\"status\":
        \"$.detail.status\"},</code>
         </p>
         <p>
            <code>\"InputTemplate\": \"<instance> is in state \\\"<status>\\\"\"</code>
         </p>
         <p>
            <code>}</code>
         </p>
         <p>The <code>InputTemplate</code> can also be valid JSON with varibles in quotes or out, as
      in the following example:</p>
         <p>
            <code> \"InputTransformer\":</code>
         </p>
         <p>
            <code>{</code>
         </p>
         <p>
            <code>\"InputPathsMap\": {\"instance\": \"$.detail.instance\",\"status\":
        \"$.detail.status\"},</code>
         </p>
         <p>
            <code>\"InputTemplate\": '{\"myInstance\": <instance>,\"myStatus\": \"<instance> is
        in state \\\"<status>\\\"\"}'</code>
         </p>
         <p>
            <code>}</code>
         </p>")
  @as("InputTemplate")
  inputTemplate: transformerInput,
  @ocaml.doc("<p>Map of JSON paths to be extracted from the event. You can then insert these in the
      template in <code>InputTemplate</code> to produce the output you want to be sent to the
      target.</p>
         <p>
            <code>InputPathsMap</code> is an array key-value pairs, where each value is a valid JSON
      path. You can have as many as 100 key-value pairs. You must use JSON dot notation, not bracket
      notation.</p>
         <p>The keys cannot start with \"Amazon Web Services.\" </p>")
  @as("InputPathsMap")
  inputPathsMap: option<transformerPaths>,
}
@ocaml.doc("<p>These are custom parameter to be used when the target is an API Gateway REST APIs or
      EventBridge ApiDestinations. In the latter case, these are merged with any
      InvocationParameters specified on the Connection, with any values from the Connection taking
      precedence.</p>")
type httpParameters = {
  @ocaml.doc("<p>The query string keys/values that need to be sent as part of request invoking the API Gateway 
      REST API or EventBridge ApiDestination.</p>")
  @as("QueryStringParameters")
  queryStringParameters: option<queryStringParametersMap>,
  @ocaml.doc("<p>The headers that need to be sent as part of request invoking the API Gateway REST API or
      EventBridge ApiDestination.</p>")
  @as("HeaderParameters")
  headerParameters: option<headerParametersMap>,
  @ocaml.doc("<p>The path parameter values to be used to populate API Gateway REST API or EventBridge
      ApiDestination path wildcards (\"*\").</p>")
  @as("PathParameterValues")
  pathParameterValues: option<pathParameterList>,
}
type eventSourceList = array<eventSource>
type eventBusList = array<eventBus>
type connectionResponseList = array<connection>
type connectionQueryStringParametersList = array<connectionQueryStringParameter>
type connectionHeaderParametersList = array<connectionHeaderParameter>
type connectionBodyParametersList = array<connectionBodyParameter>
type capacityProviderStrategy = array<capacityProviderStrategyItem>
@ocaml.doc("<p>The custom parameters to be used when the target is an Batch job.</p>")
type batchParameters = {
  @ocaml.doc("<p>The retry strategy to use for failed jobs, if the target is an Batch job. The retry
      strategy is the number of times to retry the failed job execution. Valid values are 1–10. When
      you specify a retry strategy here, it overrides the retry strategy defined in the job
      definition.</p>")
  @as("RetryStrategy")
  retryStrategy: option<batchRetryStrategy>,
  @ocaml.doc("<p>The array properties for the submitted job, such as the size of the array. The array size
      can be between 2 and 10,000. If you specify array properties for a job, it becomes an array
      job. This parameter is used only if the target is an Batch job.</p>")
  @as("ArrayProperties")
  arrayProperties: option<batchArrayProperties>,
  @ocaml.doc("<p>The name to use for this execution of the job, if the target is an Batch job.</p>")
  @as("JobName")
  jobName: string_,
  @ocaml.doc("<p>The ARN or name of the job definition to use if the event target is an Batch job. This
      job definition must already exist.</p>")
  @as("JobDefinition")
  jobDefinition: string_,
}
@ocaml.doc("<p>This structure specifies the VPC subnets and security groups for the task, and whether a
      public IP address is to be used. This structure is relevant only for ECS tasks that use the
        <code>awsvpc</code> network mode.</p>")
type awsVpcConfiguration = {
  @ocaml.doc("<p>Specifies whether the task's elastic network interface receives a public IP address. You
      can specify <code>ENABLED</code> only when <code>LaunchType</code> in
        <code>EcsParameters</code> is set to <code>FARGATE</code>.</p>")
  @as("AssignPublicIp")
  assignPublicIp: option<assignPublicIp>,
  @ocaml.doc("<p>Specifies the security groups associated with the task. These security groups must all be
      in the same VPC. You can specify as many as five security groups. If you do not specify a
      security group, the default security group for the VPC is used.</p>")
  @as("SecurityGroups")
  securityGroups: option<stringList>,
  @ocaml.doc("<p>Specifies the subnets associated with the task. These subnets must all be in the same VPC.
      You can specify as many as 16 subnets.</p>")
  @as("Subnets")
  subnets: stringList,
}
type archiveResponseList = array<archive>
type apiDestinationResponseList = array<apiDestination>
@ocaml.doc("<p>These are custom parameters to use when the target is a SageMaker Model Building Pipeline
      that starts based on EventBridge events.</p>")
type sageMakerPipelineParameters = {
  @ocaml.doc(
    "<p>List of Parameter names and values for SageMaker Model Building Pipeline execution.</p>"
  )
  @as("PipelineParameterList")
  pipelineParameterList: option<sageMakerPipelineParameterList>,
}
type runCommandTargets = array<runCommandTarget>
type putPartnerEventsRequestEntryList = array<putPartnerEventsRequestEntry>
type putEventsRequestEntryList = array<putEventsRequestEntry>
@ocaml.doc("<p>This structure specifies the network configuration for an ECS task.</p>")
type networkConfiguration = {
  @ocaml.doc("<p>Use this structure to specify the VPC subnets and security groups for the task, and
      whether a public IP address is to be used. This structure is relevant only for ECS tasks that
      use the <code>awsvpc</code> network mode.</p>")
  awsvpcConfiguration: option<awsVpcConfiguration>,
}
@ocaml.doc("<p>Contains additional parameters for the connection.</p>")
type connectionHttpParameters = {
  @ocaml.doc("<p>Contains additional body string parameters for the connection.</p>")
  @as("BodyParameters")
  bodyParameters: option<connectionBodyParametersList>,
  @ocaml.doc("<p>Contains additional query string parameters for the connection.</p>")
  @as("QueryStringParameters")
  queryStringParameters: option<connectionQueryStringParametersList>,
  @ocaml.doc("<p>Contains additional header parameters for the connection.</p>")
  @as("HeaderParameters")
  headerParameters: option<connectionHeaderParametersList>,
}
@ocaml.doc("<p>Contains the OAuth request parameters to use for the connection.</p>")
type updateConnectionOAuthRequestParameters = {
  @ocaml.doc("<p>The additional HTTP parameters used for the OAuth authorization request.</p>")
  @as("OAuthHttpParameters")
  oauthHttpParameters: option<connectionHttpParameters>,
  @ocaml.doc("<p>The method used to connect to the HTTP endpoint.</p>") @as("HttpMethod")
  httpMethod: option<connectionOAuthHttpMethod>,
  @ocaml.doc("<p>The URL to the authorization endpoint when OAuth is specified as the authorization
      type.</p>")
  @as("AuthorizationEndpoint")
  authorizationEndpoint: option<httpsEndpoint>,
  @ocaml.doc("<p>A <code>UpdateConnectionOAuthClientRequestParameters</code> object that contains the
      client parameters to use for the connection when OAuth is specified as the authorization
      type.</p>")
  @as("ClientParameters")
  clientParameters: option<updateConnectionOAuthClientRequestParameters>,
}
@ocaml.doc("<p>This parameter contains the criteria (either InstanceIds or a tag) used to specify which
      EC2 instances are to be sent the command. </p>")
type runCommandParameters = {
  @ocaml.doc("<p>Currently, we support including only one RunCommandTarget block, which specifies either an
      array of InstanceIds or a tag.</p>")
  @as("RunCommandTargets")
  runCommandTargets: runCommandTargets,
}
@ocaml.doc("<p>The custom parameters to be used when the target is an Amazon ECS task.</p>")
type ecsParameters = {
  @ocaml.doc("<p>The metadata that you apply to the task to help you categorize and organize them. Each tag
      consists of a key and an optional value, both of which you define. To learn more, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html#ECS-RunTask-request-tags\">RunTask</a> in the Amazon ECS API Reference.</p>")
  @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The reference ID to use for the task.</p>") @as("ReferenceId")
  referenceId: option<referenceId>,
  @ocaml.doc("<p>Specifies whether to propagate the tags from the task definition to the task. If no value
      is specified, the tags are not propagated. Tags can only be propagated to the task during task
      creation. To add tags to a task after task creation, use the TagResource API action. </p>")
  @as("PropagateTags")
  propagateTags: option<propagateTags>,
  @ocaml.doc("<p>The placement strategy objects to use for the task. You can specify a maximum of five
      strategy rules per task. </p>")
  @as("PlacementStrategy")
  placementStrategy: option<placementStrategies>,
  @ocaml.doc("<p>An array of placement constraint objects to use for the task. You can specify up to 10
      constraints per task (including constraints in the task definition and those specified at
      runtime).</p>")
  @as("PlacementConstraints")
  placementConstraints: option<placementConstraints>,
  @ocaml.doc("<p>Whether or not to enable the execute command functionality for the containers in this
      task. If true, this enables execute command functionality on all containers in the
      task.</p>")
  @as("EnableExecuteCommand")
  enableExecuteCommand: option<boolean_>,
  @ocaml.doc("<p>Specifies whether to enable Amazon ECS managed tags for the task. For more information,
      see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html\">Tagging Your Amazon ECS Resources</a> in the Amazon Elastic Container Service Developer
      Guide. </p>")
  @as("EnableECSManagedTags")
  enableECSManagedTags: option<boolean_>,
  @ocaml.doc("<p>The capacity provider strategy to use for the task.</p>
         <p>If a <code>capacityProviderStrategy</code> is specified, the <code>launchType</code>
      parameter must be omitted. If no <code>capacityProviderStrategy</code> or launchType is
      specified, the <code>defaultCapacityProviderStrategy</code> for the cluster is used. </p>")
  @as("CapacityProviderStrategy")
  capacityProviderStrategy: option<capacityProviderStrategy>,
  @ocaml.doc(
    "<p>Specifies an ECS task group for the task. The maximum length is 255 characters.</p>"
  )
  @as("Group")
  group: option<string_>,
  @ocaml.doc("<p>Specifies the platform version for the task. Specify only the numeric portion of the
      platform version, such as <code>1.1.0</code>.</p>
         <p>This structure is used only if <code>LaunchType</code> is <code>FARGATE</code>. For more
      information about valid platform versions, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html\">Fargate Platform
        Versions</a> in the <i>Amazon Elastic Container Service Developer
        Guide</i>.</p>")
  @as("PlatformVersion")
  platformVersion: option<string_>,
  @ocaml.doc("<p>Use this structure if the Amazon ECS task uses the <code>awsvpc</code> network mode. This
      structure specifies the VPC subnets and security groups associated with the task, and whether
      a public IP address is to be used. This structure is required if <code>LaunchType</code> is
        <code>FARGATE</code> because the <code>awsvpc</code> mode is required for Fargate
      tasks.</p>
         <p>If you specify <code>NetworkConfiguration</code> when the target ECS task does not use the
        <code>awsvpc</code> network mode, the task fails.</p>")
  @as("NetworkConfiguration")
  networkConfiguration: option<networkConfiguration>,
  @ocaml.doc("<p>Specifies the launch type on which your task is running. The launch type that you specify
      here must match one of the launch type (compatibilities) of the target task. The
      <code>FARGATE</code> value is supported only in the Regions where Fargate with Amazon ECS
     is supported. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS-Fargate.html\">Fargate on Amazon ECS</a> in
      the <i>Amazon Elastic Container Service Developer Guide</i>.</p>")
  @as("LaunchType")
  launchType: option<launchType>,
  @ocaml.doc("<p>The number of tasks to create based on <code>TaskDefinition</code>. The default is
      1.</p>")
  @as("TaskCount")
  taskCount: option<limitMin1>,
  @ocaml.doc(
    "<p>The ARN of the task definition to use if the event target is an Amazon ECS task. </p>"
  )
  @as("TaskDefinitionArn")
  taskDefinitionArn: arn,
}
@ocaml.doc("<p>Contains the OAuth authorization parameters to use for the connection.</p>")
type createConnectionOAuthRequestParameters = {
  @ocaml.doc("<p>A <code>ConnectionHttpParameters</code> object that contains details about the additional
      parameters to use for the connection.</p>")
  @as("OAuthHttpParameters")
  oauthHttpParameters: option<connectionHttpParameters>,
  @ocaml.doc("<p>The method to use for the authorization request.</p>") @as("HttpMethod")
  httpMethod: connectionOAuthHttpMethod,
  @ocaml.doc("<p>The URL to the authorization endpoint when OAuth is specified as the authorization
      type.</p>")
  @as("AuthorizationEndpoint")
  authorizationEndpoint: httpsEndpoint,
  @ocaml.doc("<p>A <code>CreateConnectionOAuthClientRequestParameters</code> object that contains the
      client parameters for OAuth authorization.</p>")
  @as("ClientParameters")
  clientParameters: createConnectionOAuthClientRequestParameters,
}
@ocaml.doc(
  "<p>Contains the response parameters when OAuth is specified as the authorization type.</p>"
)
type connectionOAuthResponseParameters = {
  @ocaml.doc("<p>The additional HTTP parameters used for the OAuth authorization request.</p>")
  @as("OAuthHttpParameters")
  oauthHttpParameters: option<connectionHttpParameters>,
  @ocaml.doc("<p>The method used to connect to the HTTP endpoint.</p>") @as("HttpMethod")
  httpMethod: option<connectionOAuthHttpMethod>,
  @ocaml.doc("<p>The URL to the HTTP endpoint that authorized the request.</p>")
  @as("AuthorizationEndpoint")
  authorizationEndpoint: option<httpsEndpoint>,
  @ocaml.doc("<p>A <code>ConnectionOAuthClientResponseParameters</code> object that contains details about
      the client parameters returned when OAuth is specified as the authorization type.</p>")
  @as("ClientParameters")
  clientParameters: option<connectionOAuthClientResponseParameters>,
}
@ocaml.doc("<p>Contains the additional parameters to use for the connection.</p>")
type updateConnectionAuthRequestParameters = {
  @ocaml.doc("<p>A <code>ConnectionHttpParameters</code> object that contains the additional parameters to
      use for the connection.</p>")
  @as("InvocationHttpParameters")
  invocationHttpParameters: option<connectionHttpParameters>,
  @ocaml.doc("<p>A <code>UpdateConnectionApiKeyAuthRequestParameters</code> object that contains the
      authorization parameters for API key authorization.</p>")
  @as("ApiKeyAuthParameters")
  apiKeyAuthParameters: option<updateConnectionApiKeyAuthRequestParameters>,
  @ocaml.doc("<p>A <code>UpdateConnectionOAuthRequestParameters</code> object that contains the
      authorization parameters for OAuth authorization.</p>")
  @as("OAuthParameters")
  oauthParameters: option<updateConnectionOAuthRequestParameters>,
  @ocaml.doc("<p>A <code>UpdateConnectionBasicAuthRequestParameters</code> object that contains the
      authorization parameters for Basic authorization.</p>")
  @as("BasicAuthParameters")
  basicAuthParameters: option<updateConnectionBasicAuthRequestParameters>,
}
@ocaml.doc("<p>Targets are the resources to be invoked when a rule is triggered. For a complete list of
      services and resources that can be set as a target, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutTargets.html\">PutTargets</a>.</p>

         <p>If you are setting the event bus of another account as the target, and that account
      granted permission to your account through an organization instead of directly by the account
      ID, then you must specify a <code>RoleArn</code> with proper permissions in the
        <code>Target</code> structure. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html\">Sending and
          Receiving Events Between Amazon Web Services Accounts</a> in the <i>Amazon EventBridge User
        Guide</i>.</p>")
type target = {
  @ocaml.doc("<p>The <code>RetryPolicy</code> object that contains the retry policy configuration to use
      for the dead-letter queue.</p>")
  @as("RetryPolicy")
  retryPolicy: option<retryPolicy>,
  @ocaml.doc("<p>The <code>DeadLetterConfig</code> that defines the target queue to send dead-letter queue
      events to.</p>")
  @as("DeadLetterConfig")
  deadLetterConfig: option<deadLetterConfig>,
  @ocaml.doc("<p>Contains the SageMaker Model Building Pipeline parameters to start execution of a
      SageMaker Model Building Pipeline.</p>
         <p>If you specify a SageMaker Model Building Pipeline as a target, you can use this to
      specify parameters to start a pipeline execution based on EventBridge events.</p>")
  @as("SageMakerPipelineParameters")
  sageMakerPipelineParameters: option<sageMakerPipelineParameters>,
  @ocaml.doc("<p>Contains the Amazon Redshift Data API parameters to use when the target is a Amazon Redshift
      cluster.</p>
         <p>If you specify a Amazon Redshift Cluster as a Target, you can use this to specify parameters to
      invoke the Amazon Redshift Data API ExecuteStatement based on EventBridge events.</p>")
  @as("RedshiftDataParameters")
  redshiftDataParameters: option<redshiftDataParameters>,
  @ocaml.doc("<p>Contains the HTTP parameters to use when the target is a API Gateway REST endpoint or
      EventBridge ApiDestination.</p>
         <p>If you specify an API Gateway REST API or EventBridge ApiDestination as a target, you can
      use this parameter to specify headers, path parameters, and query string keys/values as part
      of your target invoking request. If you're using ApiDestinations, the corresponding Connection
      can also have these values configured. In case of any conflicting keys, values from the
      Connection take precedence.</p>")
  @as("HttpParameters")
  httpParameters: option<httpParameters>,
  @ocaml.doc("<p>Contains the message group ID to use when the target is a FIFO queue.</p>
         <p>If you specify an SQS FIFO queue as a target, the queue must have content-based
      deduplication enabled.</p>")
  @as("SqsParameters")
  sqsParameters: option<sqsParameters>,
  @ocaml.doc("<p>If the event target is an Batch job, this contains the job definition, job name, and
      other parameters. For more information, see <a href=\"https://docs.aws.amazon.com/batch/latest/userguide/jobs.html\">Jobs</a> in the <i>Batch User
        Guide</i>.</p>")
  @as("BatchParameters")
  batchParameters: option<batchParameters>,
  @ocaml.doc("<p>Contains the Amazon ECS task definition and task count to be used, if the event target is
      an Amazon ECS task. For more information about Amazon ECS tasks, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html\">Task
        Definitions </a> in the <i>Amazon EC2 Container Service Developer
        Guide</i>.</p>")
  @as("EcsParameters")
  ecsParameters: option<ecsParameters>,
  @ocaml.doc("<p>Parameters used when you are using the rule to invoke Amazon EC2 Run Command.</p>")
  @as("RunCommandParameters")
  runCommandParameters: option<runCommandParameters>,
  @ocaml.doc("<p>The custom parameter you can use to control the shard assignment, when the target is a
      Kinesis data stream. If you do not include this parameter, the default is to use the
        <code>eventId</code> as the partition key.</p>")
  @as("KinesisParameters")
  kinesisParameters: option<kinesisParameters>,
  @ocaml.doc("<p>Settings to enable you to provide custom input to a target based on certain event data.
      You can extract one or more key-value pairs from the event and then use that data to send
      customized input to the target.</p>")
  @as("InputTransformer")
  inputTransformer: option<inputTransformer>,
  @ocaml.doc("<p>The value of the JSONPath that is used for extracting part of the matched event when
      passing it to the target. You must use JSON dot notation, not bracket notation. For more
      information about JSON paths, see <a href=\"http://goessner.net/articles/JsonPath/\">JSONPath</a>.</p>")
  @as("InputPath")
  inputPath: option<targetInputPath>,
  @ocaml.doc("<p>Valid JSON text passed to the target. In this case, nothing from the event itself is
      passed to the target. For more information, see <a href=\"http://www.rfc-editor.org/rfc/rfc7159.txt\">The JavaScript Object Notation (JSON) Data
        Interchange Format</a>.</p>")
  @as("Input")
  input: option<targetInput>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is
      triggered. If one rule triggers multiple targets, you can use a different IAM role for each
      target.</p>")
  @as("RoleArn")
  roleArn: option<roleArn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the target.</p>") @as("Arn") arn: targetArn,
  @ocaml.doc(
    "<p>The ID of the target within the specified rule. Use this ID to reference the target when updating the rule. We recommend using a memorable and unique string.</p>"
  )
  @as("Id")
  id: targetId,
}
@ocaml.doc("<p>Contains the authorization parameters for the connection.</p>")
type createConnectionAuthRequestParameters = {
  @ocaml.doc("<p>A <code>ConnectionHttpParameters</code> object that contains the API key authorization
      parameters to use for the connection. Note that if you include additional parameters for the
      target of a rule via <code>HttpParameters</code>, including query strings, the parameters
      added for the connection take precedence.</p>")
  @as("InvocationHttpParameters")
  invocationHttpParameters: option<connectionHttpParameters>,
  @ocaml.doc("<p>A <code>CreateConnectionApiKeyAuthRequestParameters</code> object that contains the API
      key authorization parameters to use for the connection.</p>")
  @as("ApiKeyAuthParameters")
  apiKeyAuthParameters: option<createConnectionApiKeyAuthRequestParameters>,
  @ocaml.doc("<p>A <code>CreateConnectionOAuthRequestParameters</code> object that contains the OAuth
      authorization parameters to use for the connection.</p>")
  @as("OAuthParameters")
  oauthParameters: option<createConnectionOAuthRequestParameters>,
  @ocaml.doc("<p>A <code>CreateConnectionBasicAuthRequestParameters</code> object that contains the Basic
      authorization parameters to use for the connection.</p>")
  @as("BasicAuthParameters")
  basicAuthParameters: option<createConnectionBasicAuthRequestParameters>,
}
@ocaml.doc("<p>Contains the authorization parameters to use for the connection.</p>")
type connectionAuthResponseParameters = {
  @ocaml.doc("<p>Additional parameters for the connection that are passed through with every invocation to
      the HTTP endpoint.</p>")
  @as("InvocationHttpParameters")
  invocationHttpParameters: option<connectionHttpParameters>,
  @ocaml.doc("<p>The API Key parameters to use for authorization.</p>") @as("ApiKeyAuthParameters")
  apiKeyAuthParameters: option<connectionApiKeyAuthResponseParameters>,
  @ocaml.doc("<p>The OAuth parameters to use for authorization.</p>") @as("OAuthParameters")
  oauthParameters: option<connectionOAuthResponseParameters>,
  @ocaml.doc("<p>The authorization parameters for Basic authorization.</p>")
  @as("BasicAuthParameters")
  basicAuthParameters: option<connectionBasicAuthResponseParameters>,
}
type targetList = array<target>
@ocaml.doc("<p>Amazon EventBridge helps you to respond to state changes in your Amazon Web Services resources. When your
      resources change state, they automatically send events to an event stream. You can create
      rules that match selected events in the stream and route them to targets to take action. You
      can also use rules to take action on a predetermined schedule. For example, you can configure
      rules to:</p>
         <ul>
            <li>
               <p>Automatically invoke an Lambda function to update DNS entries when an event
          notifies you that Amazon EC2 instance enters the running state.</p>
            </li>
            <li>
               <p>Direct specific API records from CloudTrail to an Amazon Kinesis data stream for
          detailed analysis of potential security or availability risks.</p>
            </li>
            <li>
               <p>Periodically invoke a built-in target to create a snapshot of an Amazon EBS
          volume.</p>
            </li>
         </ul>
         <p>For more information about the features of Amazon EventBridge, see the <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide\">Amazon EventBridge User
        Guide</a>.</p>")
module UpdateArchive = {
  type t
  type request = {
    @ocaml.doc("<p>The number of days to retain events in the archive.</p>") @as("RetentionDays")
    retentionDays: option<retentionDays>,
    @ocaml.doc("<p>The event pattern to use to filter events sent to the archive.</p>")
    @as("EventPattern")
    eventPattern: option<eventPattern>,
    @ocaml.doc("<p>The description for the archive.</p>") @as("Description")
    description: option<archiveDescription>,
    @ocaml.doc("<p>The name of the archive to update.</p>") @as("ArchiveName")
    archiveName: archiveName,
  }
  type response = {
    @ocaml.doc("<p>The time at which the archive was updated.</p>") @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The reason that the archive is in the current state.</p>") @as("StateReason")
    stateReason: option<archiveStateReason>,
    @ocaml.doc("<p>The state of the archive.</p>") @as("State") state: option<archiveState>,
    @ocaml.doc("<p>The ARN of the archive.</p>") @as("ArchiveArn") archiveArn: option<archiveArn>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "UpdateArchiveCommand"
  let make = (~archiveName, ~retentionDays=?, ~eventPattern=?, ~description=?, ()) =>
    new({
      retentionDays: retentionDays,
      eventPattern: eventPattern,
      description: description,
      archiveName: archiveName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApiDestination = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of invocations per second to send to the API destination.</p>"
    )
    @as("InvocationRateLimitPerSecond")
    invocationRateLimitPerSecond: option<apiDestinationInvocationRateLimitPerSecond>,
    @ocaml.doc("<p>The method to use for the API destination.</p>") @as("HttpMethod")
    httpMethod: option<apiDestinationHttpMethod>,
    @ocaml.doc("<p>The URL to the endpoint to use for the API destination.</p>")
    @as("InvocationEndpoint")
    invocationEndpoint: option<httpsEndpoint>,
    @ocaml.doc("<p>The ARN of the connection to use for the API destination.</p>")
    @as("ConnectionArn")
    connectionArn: option<connectionArn>,
    @ocaml.doc("<p>The name of the API destination to update.</p>") @as("Description")
    description: option<apiDestinationDescription>,
    @ocaml.doc("<p>The name of the API destination to update.</p>") @as("Name")
    name: apiDestinationName,
  }
  type response = {
    @ocaml.doc("<p>A time stamp for the time that the API destination was last modified.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<timestamp_>,
    @ocaml.doc("<p>A time stamp for the time that the API destination was created.</p>")
    @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The state of the API destination that was updated.</p>")
    @as("ApiDestinationState")
    apiDestinationState: option<apiDestinationState>,
    @ocaml.doc("<p>The ARN of the API destination that was updated.</p>") @as("ApiDestinationArn")
    apiDestinationArn: option<apiDestinationArn>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "UpdateApiDestinationCommand"
  let make = (
    ~name,
    ~invocationRateLimitPerSecond=?,
    ~httpMethod=?,
    ~invocationEndpoint=?,
    ~connectionArn=?,
    ~description=?,
    (),
  ) =>
    new({
      invocationRateLimitPerSecond: invocationRateLimitPerSecond,
      httpMethod: httpMethod,
      invocationEndpoint: invocationEndpoint,
      connectionArn: connectionArn,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TestEventPattern = {
  type t
  type request = {
    @ocaml.doc("<p>The event, in JSON format, to test against the event pattern. The JSON must follow the
      format specified in <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/aws-events.html\">Amazon Web Services Events</a>, and the following
      fields are mandatory:</p>
         <ul>
            <li>
               <p>
                  <code>id</code>
               </p>
            </li>
            <li>
               <p>
                  <code>account</code>
               </p>
            </li>
            <li>
               <p>
                  <code>source</code>
               </p>
            </li>
            <li>
               <p>
                  <code>time</code>
               </p>
            </li>
            <li>
               <p>
                  <code>region</code>
               </p>
            </li>
            <li>
               <p>
                  <code>resources</code>
               </p>
            </li>
            <li>
               <p>
                  <code>detail-type</code>
               </p>
            </li>
         </ul>")
    @as("Event")
    event: string_,
    @ocaml.doc("<p>The event pattern. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html\">Events and Event
        Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>")
    @as("EventPattern")
    eventPattern: eventPattern,
  }
  type response = {
    @ocaml.doc("<p>Indicates whether the event matches the event pattern.</p>") @as("Result")
    result: option<boolean_>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "TestEventPatternCommand"
  let make = (~event, ~eventPattern, ()) => new({event: event, eventPattern: eventPattern})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemovePermission = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the event bus to revoke permissions for. If you omit this, the default event
      bus is used.</p>")
    @as("EventBusName")
    eventBusName: option<nonPartnerEventBusName>,
    @ocaml.doc("<p>Specifies whether to remove all permissions.</p>") @as("RemoveAllPermissions")
    removeAllPermissions: option<boolean_>,
    @ocaml.doc("<p>The statement ID corresponding to the account that is no longer allowed to put events to
      the default event bus.</p>")
    @as("StatementId")
    statementId: option<statementId>,
  }
  type response = {.}
  @module("@aws-sdk/client-events") @new external new: request => t = "RemovePermissionCommand"
  let make = (~eventBusName=?, ~removeAllPermissions=?, ~statementId=?, ()) =>
    new({
      eventBusName: eventBusName,
      removeAllPermissions: removeAllPermissions,
      statementId: statementId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module EnableRule = {
  type t
  type request = {
    @ocaml.doc("<p>The name or ARN of the event bus associated with the rule. If you omit this, the default
      event bus is used.</p>")
    @as("EventBusName")
    eventBusName: option<eventBusNameOrArn>,
    @ocaml.doc("<p>The name of the rule.</p>") @as("Name") name: ruleName,
  }
  type response = {.}
  @module("@aws-sdk/client-events") @new external new: request => t = "EnableRuleCommand"
  let make = (~name, ~eventBusName=?, ()) => new({eventBusName: eventBusName, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableRule = {
  type t
  type request = {
    @ocaml.doc("<p>The name or ARN of the event bus associated with the rule. If you omit this, the default
      event bus is used.</p>")
    @as("EventBusName")
    eventBusName: option<eventBusNameOrArn>,
    @ocaml.doc("<p>The name of the rule.</p>") @as("Name") name: ruleName,
  }
  type response = {.}
  @module("@aws-sdk/client-events") @new external new: request => t = "DisableRuleCommand"
  let make = (~name, ~eventBusName=?, ()) => new({eventBusName: eventBusName, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeRule = {
  type t
  type request = {
    @ocaml.doc("<p>The name or ARN of the event bus associated with the rule. If you omit this, the default
      event bus is used.</p>")
    @as("EventBusName")
    eventBusName: option<eventBusNameOrArn>,
    @ocaml.doc("<p>The name of the rule.</p>") @as("Name") name: ruleName,
  }
  type response = {
    @ocaml.doc("<p>The account ID of the user that created the rule. If you use <code>PutRule</code> to put a
      rule on an event bus in another account, the other account is the owner of the rule, and the
      rule ARN includes the account ID for that account. However, the value for
        <code>CreatedBy</code> is the account ID as the account that created the rule in the other
      account.</p>")
    @as("CreatedBy")
    createdBy: option<createdBy>,
    @ocaml.doc("<p>The name of the event bus associated with the rule.</p>") @as("EventBusName")
    eventBusName: option<eventBusName>,
    @ocaml.doc("<p>If this is a managed rule, created by an Amazon Web Services service on your behalf, this field displays
      the principal name of the Amazon Web Services service that created the rule.</p>")
    @as("ManagedBy")
    managedBy: option<managedBy>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role associated with the rule.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The description of the rule.</p>") @as("Description")
    description: option<ruleDescription>,
    @ocaml.doc("<p>Specifies whether the rule is enabled or disabled.</p>") @as("State")
    state: option<ruleState>,
    @ocaml.doc(
      "<p>The scheduling expression. For example, \"cron(0 20 * * ? *)\", \"rate(5 minutes)\".</p>"
    )
    @as("ScheduleExpression")
    scheduleExpression: option<scheduleExpression>,
    @ocaml.doc("<p>The event pattern. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html\">Events and Event
        Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>")
    @as("EventPattern")
    eventPattern: option<eventPattern>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the rule.</p>") @as("Arn")
    arn: option<ruleArn>,
    @ocaml.doc("<p>The name of the rule.</p>") @as("Name") name: option<ruleName>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "DescribeRuleCommand"
  let make = (~name, ~eventBusName=?, ()) => new({eventBusName: eventBusName, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePartnerEventSource = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the event source to display.</p>") @as("Name") name: eventSourceName,
  }
  type response = {
    @ocaml.doc("<p>The name of the event source.</p>") @as("Name") name: option<string_>,
    @ocaml.doc("<p>The ARN of the event source.</p>") @as("Arn") arn: option<string_>,
  }
  @module("@aws-sdk/client-events") @new
  external new: request => t = "DescribePartnerEventSourceCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventSource = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the partner event source to display the details of.</p>") @as("Name")
    name: eventSourceName,
  }
  type response = {
    @ocaml.doc("<p>The state of the event source. If it is ACTIVE, you have already created a matching event
      bus for this event source, and that event bus is active. If it is PENDING, either you haven't
      yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have
      created a matching event bus, but the event source has since been deleted.</p>")
    @as("State")
    state: option<eventSourceState>,
    @ocaml.doc("<p>The name of the partner event source.</p>") @as("Name") name: option<string_>,
    @ocaml.doc("<p>The date and time that the event source will expire if you do not create a matching event
      bus.</p>")
    @as("ExpirationTime")
    expirationTime: option<timestamp_>,
    @ocaml.doc("<p>The date and time that the event source was created.</p>") @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The name of the SaaS partner that created the event source.</p>")
    @as("CreatedBy")
    createdBy: option<string_>,
    @ocaml.doc("<p>The ARN of the partner event source.</p>") @as("Arn") arn: option<string_>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "DescribeEventSourceCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventBus = {
  type t
  type request = {
    @ocaml.doc("<p>The name or ARN of the event bus to show details for. If you omit this, the default event
      bus is displayed.</p>")
    @as("Name")
    name: option<eventBusNameOrArn>,
  }
  type response = {
    @ocaml.doc(
      "<p>The policy that enables the external account to send events to your account.</p>"
    )
    @as("Policy")
    policy: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the account permitted to write events to the current
      account.</p>")
    @as("Arn")
    arn: option<string_>,
    @ocaml.doc("<p>The name of the event bus. Currently, this is always <code>default</code>.</p>")
    @as("Name")
    name: option<string_>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "DescribeEventBusCommand"
  let make = (~name=?, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeArchive = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the archive to retrieve.</p>") @as("ArchiveName")
    archiveName: archiveName,
  }
  type response = {
    @ocaml.doc("<p>The time at which the archive was created.</p>") @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The number of events in the archive.</p>") @as("EventCount")
    eventCount: option<long>,
    @ocaml.doc("<p>The size of the archive in bytes.</p>") @as("SizeBytes") sizeBytes: option<long>,
    @ocaml.doc("<p>The number of days to retain events for in the archive.</p>")
    @as("RetentionDays")
    retentionDays: option<retentionDays>,
    @ocaml.doc("<p>The reason that the archive is in the state.</p>") @as("StateReason")
    stateReason: option<archiveStateReason>,
    @ocaml.doc("<p>The state of the archive.</p>") @as("State") state: option<archiveState>,
    @ocaml.doc("<p>The event pattern used to filter events sent to the archive.</p>")
    @as("EventPattern")
    eventPattern: option<eventPattern>,
    @ocaml.doc("<p>The description of the archive.</p>") @as("Description")
    description: option<archiveDescription>,
    @ocaml.doc("<p>The ARN of the event source associated with the archive.</p>")
    @as("EventSourceArn")
    eventSourceArn: option<arn>,
    @ocaml.doc("<p>The name of the archive.</p>") @as("ArchiveName")
    archiveName: option<archiveName>,
    @ocaml.doc("<p>The ARN of the archive.</p>") @as("ArchiveArn") archiveArn: option<archiveArn>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "DescribeArchiveCommand"
  let make = (~archiveName, ()) => new({archiveName: archiveName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeApiDestination = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the API destination to retrieve.</p>") @as("Name")
    name: apiDestinationName,
  }
  type response = {
    @ocaml.doc("<p>A time stamp for the time that the API destination was last modified.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<timestamp_>,
    @ocaml.doc("<p>A time stamp for the time that the API destination was created.</p>")
    @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The maximum number of invocations per second to specified for the API destination. Note
      that if you set the invocation rate maximum to a value lower the rate necessary to send all
      events received on to the destination HTTP endpoint, some events may not be delivered within
      the 24-hour retry window. If you plan to set the rate lower than the rate necessary to deliver
      all events, consider using a dead-letter queue to catch events that are not delivered within
      24 hours.</p>")
    @as("InvocationRateLimitPerSecond")
    invocationRateLimitPerSecond: option<apiDestinationInvocationRateLimitPerSecond>,
    @ocaml.doc("<p>The method to use to connect to the HTTP endpoint.</p>") @as("HttpMethod")
    httpMethod: option<apiDestinationHttpMethod>,
    @ocaml.doc("<p>The URL to use to connect to the HTTP endpoint.</p>") @as("InvocationEndpoint")
    invocationEndpoint: option<httpsEndpoint>,
    @ocaml.doc("<p>The ARN of the connection specified for the API destination retrieved.</p>")
    @as("ConnectionArn")
    connectionArn: option<connectionArn>,
    @ocaml.doc("<p>The state of the API destination retrieved.</p>") @as("ApiDestinationState")
    apiDestinationState: option<apiDestinationState>,
    @ocaml.doc("<p>The description for the API destination retrieved.</p>") @as("Description")
    description: option<apiDestinationDescription>,
    @ocaml.doc("<p>The name of the API destination retrieved.</p>") @as("Name")
    name: option<apiDestinationName>,
    @ocaml.doc("<p>The ARN of the API destination retrieved.</p>") @as("ApiDestinationArn")
    apiDestinationArn: option<apiDestinationArn>,
  }
  @module("@aws-sdk/client-events") @new
  external new: request => t = "DescribeApiDestinationCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRule = {
  type t
  type request = {
    @ocaml.doc("<p>If this is a managed rule, created by an Amazon Web Services service on your behalf, you must specify
        <code>Force</code> as <code>True</code> to delete the rule. This parameter is ignored for
      rules that are not managed rules. You can check whether a rule is a managed rule by using
        <code>DescribeRule</code> or <code>ListRules</code> and checking the <code>ManagedBy</code>
      field of the response.</p>")
    @as("Force")
    force: option<boolean_>,
    @ocaml.doc("<p>The name or ARN of the event bus associated with the rule. If you omit this, the default
      event bus is used.</p>")
    @as("EventBusName")
    eventBusName: option<eventBusNameOrArn>,
    @ocaml.doc("<p>The name of the rule.</p>") @as("Name") name: ruleName,
  }
  type response = {.}
  @module("@aws-sdk/client-events") @new external new: request => t = "DeleteRuleCommand"
  let make = (~name, ~force=?, ~eventBusName=?, ()) =>
    new({force: force, eventBusName: eventBusName, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePartnerEventSource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Web Services account ID of the Amazon Web Services customer that the event source was created for.</p>"
    )
    @as("Account")
    account: accountId,
    @ocaml.doc("<p>The name of the event source to delete.</p>") @as("Name") name: eventSourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-events") @new
  external new: request => t = "DeletePartnerEventSourceCommand"
  let make = (~account, ~name, ()) => new({account: account, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEventBus = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the event bus to delete.</p>") @as("Name") name: eventBusName,
  }
  type response = {.}
  @module("@aws-sdk/client-events") @new external new: request => t = "DeleteEventBusCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the connection to delete.</p>") @as("Name") name: connectionName,
  }
  type response = {
    @ocaml.doc("<p>A time stamp for the time that the connection was last authorized before it wa
      deleted.</p>")
    @as("LastAuthorizedTime")
    lastAuthorizedTime: option<timestamp_>,
    @ocaml.doc("<p>A time stamp for the time that the connection was last modified before it was
      deleted.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<timestamp_>,
    @ocaml.doc("<p>A time stamp for the time that the connection was created.</p>")
    @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The state of the connection before it was deleted.</p>") @as("ConnectionState")
    connectionState: option<connectionState>,
    @ocaml.doc("<p>The ARN of the connection that was deleted.</p>") @as("ConnectionArn")
    connectionArn: option<connectionArn>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "DeleteConnectionCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteArchive = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the archive to delete.</p>") @as("ArchiveName")
    archiveName: archiveName,
  }
  type response = {.}
  @module("@aws-sdk/client-events") @new external new: request => t = "DeleteArchiveCommand"
  let make = (~archiveName, ()) => new({archiveName: archiveName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApiDestination = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the destination to delete.</p>") @as("Name")
    name: apiDestinationName,
  }
  type response = {.}
  @module("@aws-sdk/client-events") @new external new: request => t = "DeleteApiDestinationCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeauthorizeConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the connection to remove authorization from.</p>") @as("Name")
    name: connectionName,
  }
  type response = {
    @ocaml.doc("<p>A time stamp for the time that the connection was last authorized.</p>")
    @as("LastAuthorizedTime")
    lastAuthorizedTime: option<timestamp_>,
    @ocaml.doc("<p>A time stamp for the time that the connection was last updated.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<timestamp_>,
    @ocaml.doc("<p>A time stamp for the time that the connection was created.</p>")
    @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The state of the connection.</p>") @as("ConnectionState")
    connectionState: option<connectionState>,
    @ocaml.doc("<p>The ARN of the connection that authorization was removed from.</p>")
    @as("ConnectionArn")
    connectionArn: option<connectionArn>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "DeauthorizeConnectionCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeactivateEventSource = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the partner event source to deactivate.</p>") @as("Name")
    name: eventSourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-events") @new external new: request => t = "DeactivateEventSourceCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreatePartnerEventSource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Web Services account ID that is permitted to create a matching partner event bus for this
      partner event source.</p>")
    @as("Account")
    account: accountId,
    @ocaml.doc("<p>The name of the partner event source. This name must be unique and must be in the format
          <code>
               <i>partner_name</i>/<i>event_namespace</i>/<i>event_name</i>
            </code>.
      The Amazon Web Services account that wants to use this partner event source must create a partner event bus
      with a name that matches the name of the partner event source.</p>")
    @as("Name")
    name: eventSourceName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the partner event source.</p>") @as("EventSourceArn")
    eventSourceArn: option<string_>,
  }
  @module("@aws-sdk/client-events") @new
  external new: request => t = "CreatePartnerEventSourceCommand"
  let make = (~account, ~name, ()) => new({account: account, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateArchive = {
  type t
  type request = {
    @ocaml.doc("<p>The number of days to retain events for. Default value is 0. If set to 0, events are
      retained indefinitely</p>")
    @as("RetentionDays")
    retentionDays: option<retentionDays>,
    @ocaml.doc("<p>An event pattern to use to filter events sent to the archive.</p>")
    @as("EventPattern")
    eventPattern: option<eventPattern>,
    @ocaml.doc("<p>A description for the archive.</p>") @as("Description")
    description: option<archiveDescription>,
    @ocaml.doc("<p>The ARN of the event bus that sends events to the archive.</p>")
    @as("EventSourceArn")
    eventSourceArn: arn,
    @ocaml.doc("<p>The name for the archive to create.</p>") @as("ArchiveName")
    archiveName: archiveName,
  }
  type response = {
    @ocaml.doc("<p>The time at which the archive was created.</p>") @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The reason that the archive is in the state.</p>") @as("StateReason")
    stateReason: option<archiveStateReason>,
    @ocaml.doc("<p>The state of the archive that was created.</p>") @as("State")
    state: option<archiveState>,
    @ocaml.doc("<p>The ARN of the archive that was created.</p>") @as("ArchiveArn")
    archiveArn: option<archiveArn>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "CreateArchiveCommand"
  let make = (
    ~eventSourceArn,
    ~archiveName,
    ~retentionDays=?,
    ~eventPattern=?,
    ~description=?,
    (),
  ) =>
    new({
      retentionDays: retentionDays,
      eventPattern: eventPattern,
      description: description,
      eventSourceArn: eventSourceArn,
      archiveName: archiveName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApiDestination = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of requests per second to send to the HTTP invocation endpoint.</p>"
    )
    @as("InvocationRateLimitPerSecond")
    invocationRateLimitPerSecond: option<apiDestinationInvocationRateLimitPerSecond>,
    @ocaml.doc("<p>The method to use for the request to the HTTP invocation endpoint.</p>")
    @as("HttpMethod")
    httpMethod: apiDestinationHttpMethod,
    @ocaml.doc("<p>The URL to the HTTP invocation endpoint for the API destination.</p>")
    @as("InvocationEndpoint")
    invocationEndpoint: httpsEndpoint,
    @ocaml.doc("<p>The ARN of the connection to use for the API destination. The destination endpoint must
      support the authorization type specified for the connection.</p>")
    @as("ConnectionArn")
    connectionArn: connectionArn,
    @ocaml.doc("<p>A description for the API destination to create.</p>") @as("Description")
    description: option<apiDestinationDescription>,
    @ocaml.doc("<p>The name for the API destination to create.</p>") @as("Name")
    name: apiDestinationName,
  }
  type response = {
    @ocaml.doc(
      "<p>A time stamp indicating the time that the API destination was last modified.</p>"
    )
    @as("LastModifiedTime")
    lastModifiedTime: option<timestamp_>,
    @ocaml.doc("<p>A time stamp indicating the time that the API destination was created.</p>")
    @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The state of the API destination that was created by the request.</p>")
    @as("ApiDestinationState")
    apiDestinationState: option<apiDestinationState>,
    @ocaml.doc("<p>The ARN of the API destination that was created by the request.</p>")
    @as("ApiDestinationArn")
    apiDestinationArn: option<apiDestinationArn>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "CreateApiDestinationCommand"
  let make = (
    ~httpMethod,
    ~invocationEndpoint,
    ~connectionArn,
    ~name,
    ~invocationRateLimitPerSecond=?,
    ~description=?,
    (),
  ) =>
    new({
      invocationRateLimitPerSecond: invocationRateLimitPerSecond,
      httpMethod: httpMethod,
      invocationEndpoint: invocationEndpoint,
      connectionArn: connectionArn,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelReplay = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the replay to cancel.</p>") @as("ReplayName") replayName: replayName,
  }
  type response = {
    @ocaml.doc("<p>The reason that the replay is in the current state.</p>") @as("StateReason")
    stateReason: option<replayStateReason>,
    @ocaml.doc("<p>The current state of the replay.</p>") @as("State") state: option<replayState>,
    @ocaml.doc("<p>The ARN of the replay to cancel.</p>") @as("ReplayArn")
    replayArn: option<replayArn>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "CancelReplayCommand"
  let make = (~replayName, ()) => new({replayName: replayName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ActivateEventSource = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the partner event source to activate.</p>") @as("Name")
    name: eventSourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-events") @new external new: request => t = "ActivateEventSourceCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tag keys to remove from the resource.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the EventBridge resource from which you are removing tags.</p>")
    @as("ResourceARN")
    resourceARN: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-events") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutPermission = {
  type t
  type request = {
    @ocaml.doc("<p>A JSON string that describes the permission policy statement. You can include a
        <code>Policy</code> parameter in the request instead of using the <code>StatementId</code>,
        <code>Action</code>, <code>Principal</code>, or <code>Condition</code> parameters.</p>")
    @as("Policy")
    policy: option<string_>,
    @ocaml.doc("<p>This parameter enables you to limit the permission to accounts that fulfill a certain
      condition, such as being a member of a certain Amazon Web Services organization. For more information about
      Amazon Web Services Organizations, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html\">What Is Amazon Web Services 
        Organizations</a> in the <i>Amazon Web Services Organizations User Guide</i>.</p>
         <p>If you specify <code>Condition</code> with an Amazon Web Services organization ID, and specify \"*\" as the
      value for <code>Principal</code>, you grant permission to all the accounts in the named
      organization.</p>

         <p>The <code>Condition</code> is a JSON string which must contain <code>Type</code>,
        <code>Key</code>, and <code>Value</code> fields.</p>")
    @as("Condition")
    condition: option<condition>,
    @ocaml.doc("<p>An identifier string for the external account that you are granting permissions to. If you
      later want to revoke the permission for this external account, specify this
      <code>StatementId</code> when you run <a href=\"https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_RemovePermission.html\">RemovePermission</a>.</p>
         <note>
            <p>Each <code>StatementId</code> must be unique.</p>
         </note>")
    @as("StatementId")
    statementId: option<statementId>,
    @ocaml.doc("<p>The 12-digit Amazon Web Services account ID that you are permitting to put events to your default event
      bus. Specify \"*\" to permit any account to put events to your default event bus.</p>

         <p>If you specify \"*\" without specifying <code>Condition</code>, avoid creating rules that
      may match undesirable events. To create more secure rules, make sure that the event pattern
      for each rule contains an <code>account</code> field with a specific account ID from which to
      receive events. Rules with an account field do not match any events sent from other
      accounts.</p>")
    @as("Principal")
    principal: option<principal>,
    @ocaml.doc("<p>The action that you are enabling the other account to perform.</p>")
    @as("Action")
    action: option<action>,
    @ocaml.doc("<p>The name of the event bus associated with the rule. If you omit this, the default event
      bus is used.</p>")
    @as("EventBusName")
    eventBusName: option<nonPartnerEventBusName>,
  }
  type response = {.}
  @module("@aws-sdk/client-events") @new external new: request => t = "PutPermissionCommand"
  let make = (
    ~policy=?,
    ~condition=?,
    ~statementId=?,
    ~principal=?,
    ~action=?,
    ~eventBusName=?,
    (),
  ) =>
    new({
      policy: policy,
      condition: condition,
      statementId: statementId,
      principal: principal,
      action: action,
      eventBusName: eventBusName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListRuleNamesByTarget = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("Limit")
    limit: option<limitMax100>,
    @ocaml.doc("<p>The token returned by a previous call to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name or ARN of the event bus to list rules for. If you omit this, the default event
      bus is used.</p>")
    @as("EventBusName")
    eventBusName: option<eventBusNameOrArn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the target resource.</p>") @as("TargetArn")
    targetArn: targetArn,
  }
  type response = {
    @ocaml.doc("<p>Indicates whether there are additional results to retrieve. If there are no more results,
      the value is null.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The names of the rules that can invoke the given target.</p>") @as("RuleNames")
    ruleNames: option<ruleNameList>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "ListRuleNamesByTargetCommand"
  let make = (~targetArn, ~limit=?, ~nextToken=?, ~eventBusName=?, ()) =>
    new({limit: limit, nextToken: nextToken, eventBusName: eventBusName, targetArn: targetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of key-value pairs to associate with the resource.</p>") @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The ARN of the EventBridge resource that you're adding tags to.</p>")
    @as("ResourceARN")
    resourceARN: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-events") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartReplay = {
  type t
  type request = {
    @ocaml.doc("<p>A <code>ReplayDestination</code> object that includes details about the destination for
      the replay.</p>")
    @as("Destination")
    destination: replayDestination,
    @ocaml.doc("<p>A time stamp for the time to stop replaying events. Only events that occurred between the
        <code>EventStartTime</code> and <code>EventEndTime</code> are replayed.</p>")
    @as("EventEndTime")
    eventEndTime: timestamp_,
    @ocaml.doc("<p>A time stamp for the time to start replaying events. Only events that occurred between the
        <code>EventStartTime</code> and <code>EventEndTime</code> are replayed.</p>")
    @as("EventStartTime")
    eventStartTime: timestamp_,
    @ocaml.doc("<p>The ARN of the archive to replay events from.</p>") @as("EventSourceArn")
    eventSourceArn: arn,
    @ocaml.doc("<p>A description for the replay to start.</p>") @as("Description")
    description: option<replayDescription>,
    @ocaml.doc("<p>The name of the replay to start.</p>") @as("ReplayName") replayName: replayName,
  }
  type response = {
    @ocaml.doc("<p>The time at which the replay started.</p>") @as("ReplayStartTime")
    replayStartTime: option<timestamp_>,
    @ocaml.doc("<p>The reason that the replay is in the state.</p>") @as("StateReason")
    stateReason: option<replayStateReason>,
    @ocaml.doc("<p>The state of the replay.</p>") @as("State") state: option<replayState>,
    @ocaml.doc("<p>The ARN of the replay.</p>") @as("ReplayArn") replayArn: option<replayArn>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "StartReplayCommand"
  let make = (
    ~destination,
    ~eventEndTime,
    ~eventStartTime,
    ~eventSourceArn,
    ~replayName,
    ~description=?,
    (),
  ) =>
    new({
      destination: destination,
      eventEndTime: eventEndTime,
      eventStartTime: eventStartTime,
      eventSourceArn: eventSourceArn,
      description: description,
      replayName: replayName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveTargets = {
  type t
  type request = {
    @ocaml.doc("<p>If this is a managed rule, created by an Amazon Web Services service on your behalf, you must specify
        <code>Force</code> as <code>True</code> to remove targets. This parameter is ignored for
      rules that are not managed rules. You can check whether a rule is a managed rule by using
        <code>DescribeRule</code> or <code>ListRules</code> and checking the <code>ManagedBy</code>
      field of the response.</p>")
    @as("Force")
    force: option<boolean_>,
    @ocaml.doc("<p>The IDs of the targets to remove from the rule.</p>") @as("Ids")
    ids: targetIdList,
    @ocaml.doc("<p>The name or ARN of the event bus associated with the rule. If you omit this, the default
      event bus is used.</p>")
    @as("EventBusName")
    eventBusName: option<eventBusNameOrArn>,
    @ocaml.doc("<p>The name of the rule.</p>") @as("Rule") rule: ruleName,
  }
  type response = {
    @ocaml.doc("<p>The failed target entries.</p>") @as("FailedEntries")
    failedEntries: option<removeTargetsResultEntryList>,
    @ocaml.doc("<p>The number of failed entries.</p>") @as("FailedEntryCount")
    failedEntryCount: option<integer_>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "RemoveTargetsCommand"
  let make = (~ids, ~rule, ~force=?, ~eventBusName=?, ()) =>
    new({force: force, ids: ids, eventBusName: eventBusName, rule: rule})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutRule = {
  type t
  type request = {
    @ocaml.doc("<p>The name or ARN of the event bus to associate with this rule. If you omit this, the
      default event bus is used.</p>")
    @as("EventBusName")
    eventBusName: option<eventBusNameOrArn>,
    @ocaml.doc("<p>The list of key-value pairs to associate with the rule.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role associated with the rule.</p>
         <p>If you're setting an event bus in another account as the target and that account granted
      permission to your account through an organization instead of directly by the account ID, you
      must specify a <code>RoleArn</code> with proper permissions in the <code>Target</code>
      structure, instead of here in this parameter.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>A description of the rule.</p>") @as("Description")
    description: option<ruleDescription>,
    @ocaml.doc("<p>Indicates whether the rule is enabled or disabled.</p>") @as("State")
    state: option<ruleState>,
    @ocaml.doc("<p>The event pattern. For more information, see <a href=\"https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html\">Events and Event
        Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>")
    @as("EventPattern")
    eventPattern: option<eventPattern>,
    @ocaml.doc(
      "<p>The scheduling expression. For example, \"cron(0 20 * * ? *)\" or \"rate(5 minutes)\".</p>"
    )
    @as("ScheduleExpression")
    scheduleExpression: option<scheduleExpression>,
    @ocaml.doc("<p>The name of the rule that you are creating or updating.</p>") @as("Name")
    name: ruleName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the rule.</p>") @as("RuleArn")
    ruleArn: option<ruleArn>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "PutRuleCommand"
  let make = (
    ~name,
    ~eventBusName=?,
    ~tags=?,
    ~roleArn=?,
    ~description=?,
    ~state=?,
    ~eventPattern=?,
    ~scheduleExpression=?,
    (),
  ) =>
    new({
      eventBusName: eventBusName,
      tags: tags,
      roleArn: roleArn,
      description: description,
      state: state,
      eventPattern: eventPattern,
      scheduleExpression: scheduleExpression,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the EventBridge resource for which you want to view tags.</p>")
    @as("ResourceARN")
    resourceARN: arn,
  }
  type response = {
    @ocaml.doc("<p>The list of tag keys and values associated with the resource you specified</p>")
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRules = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("Limit")
    limit: option<limitMax100>,
    @ocaml.doc("<p>The token returned by a previous call to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name or ARN of the event bus to list the rules for. If you omit this, the default
      event bus is used.</p>")
    @as("EventBusName")
    eventBusName: option<eventBusNameOrArn>,
    @ocaml.doc("<p>The prefix matching the rule name.</p>") @as("NamePrefix")
    namePrefix: option<ruleName>,
  }
  type response = {
    @ocaml.doc("<p>Indicates whether there are additional results to retrieve. If there are no more results,
      the value is null.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The rules that match the specified criteria.</p>") @as("Rules")
    rules: option<ruleResponseList>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "ListRulesCommand"
  let make = (~limit=?, ~nextToken=?, ~eventBusName=?, ~namePrefix=?, ()) =>
    new({limit: limit, nextToken: nextToken, eventBusName: eventBusName, namePrefix: namePrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReplays = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of replays to retrieve.</p>") @as("Limit")
    limit: option<limitMax100>,
    @ocaml.doc("<p>The token returned by a previous call to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN of the archive from which the events are replayed.</p>")
    @as("EventSourceArn")
    eventSourceArn: option<arn>,
    @ocaml.doc("<p>The state of the replay.</p>") @as("State") state: option<replayState>,
    @ocaml.doc("<p>A name prefix to filter the replays returned. Only replays with name that match the prefix
      are returned.</p>")
    @as("NamePrefix")
    namePrefix: option<replayName>,
  }
  type response = {
    @ocaml.doc("<p>The token returned by a previous call to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>An array of <code>Replay</code> objects that contain information about the replay.</p>"
    )
    @as("Replays")
    replays: option<replayList>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "ListReplaysCommand"
  let make = (~limit=?, ~nextToken=?, ~eventSourceArn=?, ~state=?, ~namePrefix=?, ()) =>
    new({
      limit: limit,
      nextToken: nextToken,
      eventSourceArn: eventSourceArn,
      state: state,
      namePrefix: namePrefix,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPartnerEventSources = {
  type t
  type request = {
    @ocaml.doc("<p>pecifying this limits the number of results returned by this operation. The operation also
      returns a NextToken which you can use in a subsequent operation to retrieve the next set of
      results.</p>")
    @as("Limit")
    limit: option<limitMax100>,
    @ocaml.doc("<p>The token returned by a previous call to this operation. Specifying this retrieves the
      next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>If you specify this, the results are limited to only those partner event sources that
      start with the string you specify.</p>")
    @as("NamePrefix")
    namePrefix: partnerEventSourceNamePrefix,
  }
  type response = {
    @ocaml.doc(
      "<p>A token you can use in a subsequent operation to retrieve the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of partner event sources returned by the operation.</p>")
    @as("PartnerEventSources")
    partnerEventSources: option<partnerEventSourceList>,
  }
  @module("@aws-sdk/client-events") @new
  external new: request => t = "ListPartnerEventSourcesCommand"
  let make = (~namePrefix, ~limit=?, ~nextToken=?, ()) =>
    new({limit: limit, nextToken: nextToken, namePrefix: namePrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPartnerEventSourceAccounts = {
  type t
  type request = {
    @ocaml.doc("<p>Specifying this limits the number of results returned by this operation. The operation
      also returns a NextToken which you can use in a subsequent operation to retrieve the next set
      of results.</p>")
    @as("Limit")
    limit: option<limitMax100>,
    @ocaml.doc("<p>The token returned by a previous call to this operation. Specifying this retrieves the
      next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the partner event source to display account information about.</p>")
    @as("EventSourceName")
    eventSourceName: eventSourceName,
  }
  type response = {
    @ocaml.doc(
      "<p>A token you can use in a subsequent operation to retrieve the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of partner event sources returned by the operation.</p>")
    @as("PartnerEventSourceAccounts")
    partnerEventSourceAccounts: option<partnerEventSourceAccountList>,
  }
  @module("@aws-sdk/client-events") @new
  external new: request => t = "ListPartnerEventSourceAccountsCommand"
  let make = (~eventSourceName, ~limit=?, ~nextToken=?, ()) =>
    new({limit: limit, nextToken: nextToken, eventSourceName: eventSourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEventSources = {
  type t
  type request = {
    @ocaml.doc("<p>Specifying this limits the number of results returned by this operation. The operation
      also returns a NextToken which you can use in a subsequent operation to retrieve the next set
      of results.</p>")
    @as("Limit")
    limit: option<limitMax100>,
    @ocaml.doc("<p>The token returned by a previous call to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifying this limits the results to only those partner event sources with names that
      start with the specified prefix.</p>")
    @as("NamePrefix")
    namePrefix: option<eventSourceNamePrefix>,
  }
  type response = {
    @ocaml.doc(
      "<p>A token you can use in a subsequent operation to retrieve the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of event sources.</p>") @as("EventSources")
    eventSources: option<eventSourceList>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "ListEventSourcesCommand"
  let make = (~limit=?, ~nextToken=?, ~namePrefix=?, ()) =>
    new({limit: limit, nextToken: nextToken, namePrefix: namePrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEventBuses = {
  type t
  type request = {
    @ocaml.doc("<p>Specifying this limits the number of results returned by this operation. The operation
      also returns a NextToken which you can use in a subsequent operation to retrieve the next set
      of results.</p>")
    @as("Limit")
    limit: option<limitMax100>,
    @ocaml.doc("<p>The token returned by a previous call to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifying this limits the results to only those event buses with names that start with
      the specified prefix.</p>")
    @as("NamePrefix")
    namePrefix: option<eventBusName>,
  }
  type response = {
    @ocaml.doc(
      "<p>A token you can use in a subsequent operation to retrieve the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>This list of event buses.</p>") @as("EventBuses")
    eventBuses: option<eventBusList>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "ListEventBusesCommand"
  let make = (~limit=?, ~nextToken=?, ~namePrefix=?, ()) =>
    new({limit: limit, nextToken: nextToken, namePrefix: namePrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListConnections = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of connections to return.</p>") @as("Limit")
    limit: option<limitMax100>,
    @ocaml.doc("<p>The token returned by a previous call to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The state of the connection.</p>") @as("ConnectionState")
    connectionState: option<connectionState>,
    @ocaml.doc("<p>A name prefix to filter results returned. Only connections with a name that starts with
      the prefix are returned.</p>")
    @as("NamePrefix")
    namePrefix: option<connectionName>,
  }
  type response = {
    @ocaml.doc(
      "<p>A token you can use in a subsequent request to retrieve the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of connections objects that include details about the connections.</p>")
    @as("Connections")
    connections: option<connectionResponseList>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "ListConnectionsCommand"
  let make = (~limit=?, ~nextToken=?, ~connectionState=?, ~namePrefix=?, ()) =>
    new({
      limit: limit,
      nextToken: nextToken,
      connectionState: connectionState,
      namePrefix: namePrefix,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListArchives = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("Limit")
    limit: option<limitMax100>,
    @ocaml.doc("<p>The token returned by a previous call to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The state of the archive.</p>") @as("State") state: option<archiveState>,
    @ocaml.doc("<p>The ARN of the event source associated with the archive.</p>")
    @as("EventSourceArn")
    eventSourceArn: option<arn>,
    @ocaml.doc("<p>A name prefix to filter the archives returned. Only archives with name that match the
      prefix are returned.</p>")
    @as("NamePrefix")
    namePrefix: option<archiveName>,
  }
  type response = {
    @ocaml.doc("<p>The token returned by a previous call to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>An array of <code>Archive</code> objects that include details about an archive.</p>"
    )
    @as("Archives")
    archives: option<archiveResponseList>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "ListArchivesCommand"
  let make = (~limit=?, ~nextToken=?, ~state=?, ~eventSourceArn=?, ~namePrefix=?, ()) =>
    new({
      limit: limit,
      nextToken: nextToken,
      state: state,
      eventSourceArn: eventSourceArn,
      namePrefix: namePrefix,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApiDestinations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of API destinations to include in the response.</p>")
    @as("Limit")
    limit: option<limitMax100>,
    @ocaml.doc("<p>The token returned by a previous call to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN of the connection specified for the API destination.</p>")
    @as("ConnectionArn")
    connectionArn: option<connectionArn>,
    @ocaml.doc("<p>A name prefix to filter results returned. Only API destinations with a name that starts
      with the prefix are returned.</p>")
    @as("NamePrefix")
    namePrefix: option<apiDestinationName>,
  }
  type response = {
    @ocaml.doc(
      "<p>A token you can use in a subsequent request to retrieve the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of <code>ApiDestination</code> objects that include information about an API
      destination.</p>")
    @as("ApiDestinations")
    apiDestinations: option<apiDestinationResponseList>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "ListApiDestinationsCommand"
  let make = (~limit=?, ~nextToken=?, ~connectionArn=?, ~namePrefix=?, ()) =>
    new({limit: limit, nextToken: nextToken, connectionArn: connectionArn, namePrefix: namePrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReplay = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the replay to retrieve.</p>") @as("ReplayName")
    replayName: replayName,
  }
  type response = {
    @ocaml.doc("<p>A time stamp for the time that the replay stopped.</p>") @as("ReplayEndTime")
    replayEndTime: option<timestamp_>,
    @ocaml.doc("<p>A time stamp for the time that the replay started.</p>") @as("ReplayStartTime")
    replayStartTime: option<timestamp_>,
    @ocaml.doc("<p>The time that the event was last replayed.</p>") @as("EventLastReplayedTime")
    eventLastReplayedTime: option<timestamp_>,
    @ocaml.doc("<p>The time stamp for the last event that was replayed from the archive.</p>")
    @as("EventEndTime")
    eventEndTime: option<timestamp_>,
    @ocaml.doc("<p>The time stamp of the first event that was last replayed from the archive.</p>")
    @as("EventStartTime")
    eventStartTime: option<timestamp_>,
    @ocaml.doc(
      "<p>A <code>ReplayDestination</code> object that contains details about the replay.</p>"
    )
    @as("Destination")
    destination: option<replayDestination>,
    @ocaml.doc("<p>The ARN of the archive events were replayed from.</p>") @as("EventSourceArn")
    eventSourceArn: option<arn>,
    @ocaml.doc("<p>The reason that the replay is in the current state.</p>") @as("StateReason")
    stateReason: option<replayStateReason>,
    @ocaml.doc("<p>The current state of the replay.</p>") @as("State") state: option<replayState>,
    @ocaml.doc("<p>The description of the replay.</p>") @as("Description")
    description: option<replayDescription>,
    @ocaml.doc("<p>The ARN of the replay.</p>") @as("ReplayArn") replayArn: option<replayArn>,
    @ocaml.doc("<p>The name of the replay.</p>") @as("ReplayName") replayName: option<replayName>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "DescribeReplayCommand"
  let make = (~replayName, ()) => new({replayName: replayName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEventBus = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to associate with the event bus.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>If you are creating a partner event bus, this specifies the partner event source that the
      new event bus will be matched with.</p>")
    @as("EventSourceName")
    eventSourceName: option<eventSourceName>,
    @ocaml.doc("<p>The name of the new event bus. </p>
         <p>Event bus names cannot contain the / character. You can't use the name
        <code>default</code> for a custom event bus, as this name is already used for your account's
      default event bus.</p>
         <p>If this is a partner event bus, the name must exactly match the name of the partner event
      source that this event bus is matched to.</p>")
    @as("Name")
    name: eventBusName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the new event bus.</p>") @as("EventBusArn")
    eventBusArn: option<string_>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "CreateEventBusCommand"
  let make = (~name, ~tags=?, ~eventSourceName=?, ()) =>
    new({tags: tags, eventSourceName: eventSourceName, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutPartnerEvents = {
  type t
  type request = {
    @ocaml.doc("<p>The list of events to write to the event bus.</p>") @as("Entries")
    entries: putPartnerEventsRequestEntryList,
  }
  type response = {
    @ocaml.doc("<p>The list of events from this operation that were successfully written to the partner event
      bus.</p>")
    @as("Entries")
    entries: option<putPartnerEventsResultEntryList>,
    @ocaml.doc("<p>The number of events from this operation that could not be written to the partner event
      bus.</p>")
    @as("FailedEntryCount")
    failedEntryCount: option<integer_>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "PutPartnerEventsCommand"
  let make = (~entries, ()) => new({entries: entries})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutEvents = {
  type t
  type request = {
    @ocaml.doc("<p>The entry that defines an event in your system. You can specify several parameters for the
      entry such as the source and type of the event, resources associated with the event, and so
      on.</p>")
    @as("Entries")
    entries: putEventsRequestEntryList,
  }
  type response = {
    @ocaml.doc("<p>The successfully and unsuccessfully ingested events results. If the ingestion was
      successful, the entry has the event ID in it. Otherwise, you can use the error code and error
      message to identify the problem with the entry.</p>")
    @as("Entries")
    entries: option<putEventsResultEntryList>,
    @ocaml.doc("<p>The number of failed entries.</p>") @as("FailedEntryCount")
    failedEntryCount: option<integer_>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "PutEventsCommand"
  let make = (~entries, ()) => new({entries: entries})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The authorization parameters to use for the connection.</p>")
    @as("AuthParameters")
    authParameters: option<updateConnectionAuthRequestParameters>,
    @ocaml.doc("<p>The type of authorization to use for the connection.</p>")
    @as("AuthorizationType")
    authorizationType: option<connectionAuthorizationType>,
    @ocaml.doc("<p>A description for the connection.</p>") @as("Description")
    description: option<connectionDescription>,
    @ocaml.doc("<p>The name of the connection to update.</p>") @as("Name") name: connectionName,
  }
  type response = {
    @ocaml.doc("<p>A time stamp for the time that the connection was last authorized.</p>")
    @as("LastAuthorizedTime")
    lastAuthorizedTime: option<timestamp_>,
    @ocaml.doc("<p>A time stamp for the time that the connection was last modified.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<timestamp_>,
    @ocaml.doc("<p>A time stamp for the time that the connection was created.</p>")
    @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The state of the connection that was updated.</p>") @as("ConnectionState")
    connectionState: option<connectionState>,
    @ocaml.doc("<p>The ARN of the connection that was updated.</p>") @as("ConnectionArn")
    connectionArn: option<connectionArn>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "UpdateConnectionCommand"
  let make = (~name, ~authParameters=?, ~authorizationType=?, ~description=?, ()) =>
    new({
      authParameters: authParameters,
      authorizationType: authorizationType,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the connection to retrieve.</p>") @as("Name") name: connectionName,
  }
  type response = {
    @ocaml.doc("<p>A time stamp for the time that the connection was last authorized.</p>")
    @as("LastAuthorizedTime")
    lastAuthorizedTime: option<timestamp_>,
    @ocaml.doc("<p>A time stamp for the time that the connection was last modified.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<timestamp_>,
    @ocaml.doc("<p>A time stamp for the time that the connection was created.</p>")
    @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The parameters to use for authorization for the connection.</p>")
    @as("AuthParameters")
    authParameters: option<connectionAuthResponseParameters>,
    @ocaml.doc("<p>The ARN of the secret created from the authorization parameters specified for the
      connection.</p>")
    @as("SecretArn")
    secretArn: option<secretsManagerSecretArn>,
    @ocaml.doc("<p>The type of authorization specified for the connection.</p>")
    @as("AuthorizationType")
    authorizationType: option<connectionAuthorizationType>,
    @ocaml.doc("<p>The reason that the connection is in the current connection state.</p>")
    @as("StateReason")
    stateReason: option<connectionStateReason>,
    @ocaml.doc("<p>The state of the connection retrieved.</p>") @as("ConnectionState")
    connectionState: option<connectionState>,
    @ocaml.doc("<p>The description for the connection retrieved.</p>") @as("Description")
    description: option<connectionDescription>,
    @ocaml.doc("<p>The name of the connection retrieved.</p>") @as("Name")
    name: option<connectionName>,
    @ocaml.doc("<p>The ARN of the connection retrieved.</p>") @as("ConnectionArn")
    connectionArn: option<connectionArn>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "DescribeConnectionCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConnection = {
  type t
  type request = {
    @ocaml.doc("<p>A <code>CreateConnectionAuthRequestParameters</code> object that contains the
      authorization parameters to use to authorize with the endpoint. </p>")
    @as("AuthParameters")
    authParameters: createConnectionAuthRequestParameters,
    @ocaml.doc("<p>The type of authorization to use for the connection.</p>")
    @as("AuthorizationType")
    authorizationType: connectionAuthorizationType,
    @ocaml.doc("<p>A description for the connection to create.</p>") @as("Description")
    description: option<connectionDescription>,
    @ocaml.doc("<p>The name for the connection to create.</p>") @as("Name") name: connectionName,
  }
  type response = {
    @ocaml.doc("<p>A time stamp for the time that the connection was last updated.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<timestamp_>,
    @ocaml.doc("<p>A time stamp for the time that the connection was created.</p>")
    @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The state of the connection that was created by the request.</p>")
    @as("ConnectionState")
    connectionState: option<connectionState>,
    @ocaml.doc("<p>The ARN of the connection that was created by the request.</p>")
    @as("ConnectionArn")
    connectionArn: option<connectionArn>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "CreateConnectionCommand"
  let make = (~authParameters, ~authorizationType, ~name, ~description=?, ()) =>
    new({
      authParameters: authParameters,
      authorizationType: authorizationType,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutTargets = {
  type t
  type request = {
    @ocaml.doc("<p>The targets to update or add to the rule.</p>") @as("Targets")
    targets: targetList,
    @ocaml.doc("<p>The name or ARN of the event bus associated with the rule. If you omit this, the default
      event bus is used.</p>")
    @as("EventBusName")
    eventBusName: option<eventBusNameOrArn>,
    @ocaml.doc("<p>The name of the rule.</p>") @as("Rule") rule: ruleName,
  }
  type response = {
    @ocaml.doc("<p>The failed target entries.</p>") @as("FailedEntries")
    failedEntries: option<putTargetsResultEntryList>,
    @ocaml.doc("<p>The number of failed entries.</p>") @as("FailedEntryCount")
    failedEntryCount: option<integer_>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "PutTargetsCommand"
  let make = (~targets, ~rule, ~eventBusName=?, ()) =>
    new({targets: targets, eventBusName: eventBusName, rule: rule})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTargetsByRule = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("Limit")
    limit: option<limitMax100>,
    @ocaml.doc("<p>The token returned by a previous call to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name or ARN of the event bus associated with the rule. If you omit this, the default
      event bus is used.</p>")
    @as("EventBusName")
    eventBusName: option<eventBusNameOrArn>,
    @ocaml.doc("<p>The name of the rule.</p>") @as("Rule") rule: ruleName,
  }
  type response = {
    @ocaml.doc("<p>Indicates whether there are additional results to retrieve. If there are no more results,
      the value is null.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The targets assigned to the rule.</p>") @as("Targets")
    targets: option<targetList>,
  }
  @module("@aws-sdk/client-events") @new external new: request => t = "ListTargetsByRuleCommand"
  let make = (~rule, ~limit=?, ~nextToken=?, ~eventBusName=?, ()) =>
    new({limit: limit, nextToken: nextToken, eventBusName: eventBusName, rule: rule})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
