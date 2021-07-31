type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-events") @new external createClient: unit => awsServiceClient = "EventsClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type transformerInput = string
type traceHeader = string
type timestamp_ = Js.Date.t;
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
type replayState = [@as("FAILED") #FAILED | @as("CANCELLED") #CANCELLED | @as("COMPLETED") #COMPLETED | @as("CANCELLING") #CANCELLING | @as("RUNNING") #RUNNING | @as("STARTING") #STARTING]
type replayName = string
type replayDescription = string
type replayArn = string
type redshiftSecretManagerArn = string
type queryStringValue = string
type queryStringKey = string
type principal = string
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
type launchType = [@as("FARGATE") #FARGATE | @as("EC2") #EC2]
type integer_ = int
type inputTransformerPathKey = string
type httpsEndpoint = string
type headerValue = string
type headerKey = string
type eventTime = Js.Date.t;
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
type connectionState = [@as("DEAUTHORIZING") #DEAUTHORIZING | @as("AUTHORIZING") #AUTHORIZING | @as("DEAUTHORIZED") #DEAUTHORIZED | @as("AUTHORIZED") #AUTHORIZED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("CREATING") #CREATING]
type connectionOAuthHttpMethod = [@as("PUT") #PUT | @as("POST") #POST | @as("GET") #GET]
type connectionName = string
type connectionDescription = string
type connectionAuthorizationType = [@as("API_KEY") #API_KEY | @as("OAUTH_CLIENT_CREDENTIALS") #OAUTH_CLIENT_CREDENTIALS | @as("BASIC") #BASIC]
type connectionArn = string
type boolean_ = bool
type authHeaderParameters = string
type assignPublicIp = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type arn = string
type archiveStateReason = string
type archiveState = [@as("UPDATE_FAILED") #UPDATE_FAILED | @as("CREATE_FAILED") #CREATE_FAILED | @as("UPDATING") #UPDATING | @as("CREATING") #CREATING | @as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type archiveName = string
type archiveDescription = string
type archiveArn = string
type apiDestinationState = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type apiDestinationName = string
type apiDestinationInvocationRateLimitPerSecond = int
type apiDestinationHttpMethod = [@as("DELETE") #DELETE | @as("PATCH") #PATCH | @as("PUT") #PUT | @as("OPTIONS") #OPTIONS | @as("HEAD") #HEAD | @as("GET") #GET | @as("POST") #POST]
type apiDestinationDescription = string
type apiDestinationArn = string
type action = string
type accountId = string
type updateConnectionOAuthClientRequestParameters = {
@as("ClientSecret") clientSecret: option<authHeaderParameters>,
  @as("ClientID") clientID: option<authHeaderParameters>
}
type updateConnectionBasicAuthRequestParameters = {
@as("Password") password: option<authHeaderParameters>,
  @as("Username") username: option<authHeaderParameters>
}
type updateConnectionApiKeyAuthRequestParameters = {
@as("ApiKeyValue") apiKeyValue: option<authHeaderParameters>,
  @as("ApiKeyName") apiKeyName: option<authHeaderParameters>
}
type transformerPaths = Js.Dict.t<targetInputPath>
type targetIdList = array<targetId>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
  @as("Key") key: tagKey
}
type stringList = array<string_>
type sqsParameters = {
@as("MessageGroupId") messageGroupId: option<messageGroupId>
}
type sageMakerPipelineParameter = {
@as("Value") value: sageMakerPipelineParameterValue,
  @as("Name") name: sageMakerPipelineParameterName
}
type runCommandTargetValues = array<runCommandTargetValue>
type ruleNameList = array<ruleName>
type rule = {
@as("EventBusName") eventBusName: option<eventBusName>,
  @as("ManagedBy") managedBy: option<managedBy>,
  @as("RoleArn") roleArn: option<roleArn>,
  @as("ScheduleExpression") scheduleExpression: option<scheduleExpression>,
  @as("Description") description: option<ruleDescription>,
  @as("State") state: option<ruleState>,
  @as("EventPattern") eventPattern: option<eventPattern>,
  @as("Arn") arn: option<ruleArn>,
  @as("Name") name: option<ruleName>
}
type retryPolicy = {
@as("MaximumEventAgeInSeconds") maximumEventAgeInSeconds: option<maximumEventAgeInSeconds>,
  @as("MaximumRetryAttempts") maximumRetryAttempts: option<maximumRetryAttempts>
}
type replayDestinationFilters = array<arn>
type replay = {
@as("ReplayEndTime") replayEndTime: option<timestamp_>,
  @as("ReplayStartTime") replayStartTime: option<timestamp_>,
  @as("EventLastReplayedTime") eventLastReplayedTime: option<timestamp_>,
  @as("EventEndTime") eventEndTime: option<timestamp_>,
  @as("EventStartTime") eventStartTime: option<timestamp_>,
  @as("StateReason") stateReason: option<replayStateReason>,
  @as("State") state: option<replayState>,
  @as("EventSourceArn") eventSourceArn: option<arn>,
  @as("ReplayName") replayName: option<replayName>
}
type removeTargetsResultEntry = {
@as("ErrorMessage") errorMessage: option<errorMessage>,
  @as("ErrorCode") errorCode: option<errorCode>,
  @as("TargetId") targetId: option<targetId>
}
type redshiftDataParameters = {
@as("WithEvent") withEvent: option<boolean_>,
  @as("StatementName") statementName: option<statementName>,
  @as("Sql") sql: sql,
  @as("DbUser") dbUser: option<dbUser>,
  @as("Database") database: database,
  @as("SecretManagerArn") secretManagerArn: option<redshiftSecretManagerArn>
}
type queryStringParametersMap = Js.Dict.t<queryStringValue>
type putTargetsResultEntry = {
@as("ErrorMessage") errorMessage: option<errorMessage>,
  @as("ErrorCode") errorCode: option<errorCode>,
  @as("TargetId") targetId: option<targetId>
}
type putPartnerEventsResultEntry = {
@as("ErrorMessage") errorMessage: option<errorMessage>,
  @as("ErrorCode") errorCode: option<errorCode>,
  @as("EventId") eventId: option<eventId>
}
type putEventsResultEntry = {
@as("ErrorMessage") errorMessage: option<errorMessage>,
  @as("ErrorCode") errorCode: option<errorCode>,
  @as("EventId") eventId: option<eventId>
}
type pathParameterList = array<pathParameter>
type partnerEventSourceAccount = {
@as("State") state: option<eventSourceState>,
  @as("ExpirationTime") expirationTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("Account") account: option<accountId>
}
type partnerEventSource = {
@as("Name") name: option<string_>,
  @as("Arn") arn: option<string_>
}
type kinesisParameters = {
@as("PartitionKeyPath") partitionKeyPath: targetPartitionKeyPath
}
type headerParametersMap = Js.Dict.t<headerValue>
type eventSource = {
@as("State") state: option<eventSourceState>,
  @as("Name") name: option<string_>,
  @as("ExpirationTime") expirationTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("CreatedBy") createdBy: option<string_>,
  @as("Arn") arn: option<string_>
}
type eventResourceList = array<eventResource>
type eventBus = {
@as("Policy") policy: option<string_>,
  @as("Arn") arn: option<string_>,
  @as("Name") name: option<string_>
}
type deadLetterConfig = {
@as("Arn") arn: option<resourceArn>
}
type createConnectionOAuthClientRequestParameters = {
@as("ClientSecret") clientSecret: authHeaderParameters,
  @as("ClientID") clientID: authHeaderParameters
}
type createConnectionBasicAuthRequestParameters = {
@as("Password") password: authHeaderParameters,
  @as("Username") username: authHeaderParameters
}
type createConnectionApiKeyAuthRequestParameters = {
@as("ApiKeyValue") apiKeyValue: authHeaderParameters,
  @as("ApiKeyName") apiKeyName: authHeaderParameters
}
type connectionQueryStringParameter = {
@as("IsValueSecret") isValueSecret: option<boolean_>,
  @as("Value") value: option<queryStringValue>,
  @as("Key") key: option<queryStringKey>
}
type connectionOAuthClientResponseParameters = {
@as("ClientID") clientID: option<authHeaderParameters>
}
type connectionHeaderParameter = {
@as("IsValueSecret") isValueSecret: option<boolean_>,
  @as("Value") value: option<headerValue>,
  @as("Key") key: option<headerKey>
}
type connectionBodyParameter = {
@as("IsValueSecret") isValueSecret: option<boolean_>,
  @as("Value") value: option<string_>,
  @as("Key") key: option<string_>
}
type connectionBasicAuthResponseParameters = {
@as("Username") username: option<authHeaderParameters>
}
type connectionApiKeyAuthResponseParameters = {
@as("ApiKeyName") apiKeyName: option<authHeaderParameters>
}
type connection = {
@as("LastAuthorizedTime") lastAuthorizedTime: option<timestamp_>,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("AuthorizationType") authorizationType: option<connectionAuthorizationType>,
  @as("StateReason") stateReason: option<connectionStateReason>,
  @as("ConnectionState") connectionState: option<connectionState>,
  @as("Name") name: option<connectionName>,
  @as("ConnectionArn") connectionArn: option<connectionArn>
}
type condition = {
@as("Value") value: string_,
  @as("Key") key: string_,
  @as("Type") type_: string_
}
type batchRetryStrategy = {
@as("Attempts") attempts: option<integer_>
}
type batchArrayProperties = {
@as("Size") size: option<integer_>
}
type archive = {
@as("CreationTime") creationTime: option<timestamp_>,
  @as("EventCount") eventCount: option<long>,
  @as("SizeBytes") sizeBytes: option<long>,
  @as("RetentionDays") retentionDays: option<retentionDays>,
  @as("StateReason") stateReason: option<archiveStateReason>,
  @as("State") state: option<archiveState>,
  @as("EventSourceArn") eventSourceArn: option<arn>,
  @as("ArchiveName") archiveName: option<archiveName>
}
type apiDestination = {
@as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("InvocationRateLimitPerSecond") invocationRateLimitPerSecond: option<apiDestinationInvocationRateLimitPerSecond>,
  @as("HttpMethod") httpMethod: option<apiDestinationHttpMethod>,
  @as("InvocationEndpoint") invocationEndpoint: option<httpsEndpoint>,
  @as("ConnectionArn") connectionArn: option<connectionArn>,
  @as("ApiDestinationState") apiDestinationState: option<apiDestinationState>,
  @as("Name") name: option<apiDestinationName>,
  @as("ApiDestinationArn") apiDestinationArn: option<apiDestinationArn>
}
type tagList_ = array<tag>
type sageMakerPipelineParameterList = array<sageMakerPipelineParameter>
type runCommandTarget = {
@as("Values") values: runCommandTargetValues,
  @as("Key") key: runCommandTargetKey
}
type ruleResponseList = array<rule>
type replayList = array<replay>
type replayDestination = {
@as("FilterArns") filterArns: option<replayDestinationFilters>,
  @as("Arn") arn: arn
}
type removeTargetsResultEntryList = array<removeTargetsResultEntry>
type putTargetsResultEntryList = array<putTargetsResultEntry>
type putPartnerEventsResultEntryList = array<putPartnerEventsResultEntry>
type putPartnerEventsRequestEntry = {
@as("Detail") detail: option<string_>,
  @as("DetailType") detailType: option<string_>,
  @as("Resources") resources: option<eventResourceList>,
  @as("Source") source: option<eventSourceName>,
  @as("Time") time: option<eventTime>
}
type putEventsResultEntryList = array<putEventsResultEntry>
type putEventsRequestEntry = {
@as("TraceHeader") traceHeader: option<traceHeader>,
  @as("EventBusName") eventBusName: option<nonPartnerEventBusNameOrArn>,
  @as("Detail") detail: option<string_>,
  @as("DetailType") detailType: option<string_>,
  @as("Resources") resources: option<eventResourceList>,
  @as("Source") source: option<string_>,
  @as("Time") time: option<eventTime>
}
type partnerEventSourceList = array<partnerEventSource>
type partnerEventSourceAccountList = array<partnerEventSourceAccount>
type inputTransformer = {
@as("InputTemplate") inputTemplate: transformerInput,
  @as("InputPathsMap") inputPathsMap: option<transformerPaths>
}
type httpParameters = {
@as("QueryStringParameters") queryStringParameters: option<queryStringParametersMap>,
  @as("HeaderParameters") headerParameters: option<headerParametersMap>,
  @as("PathParameterValues") pathParameterValues: option<pathParameterList>
}
type eventSourceList = array<eventSource>
type eventBusList = array<eventBus>
type connectionResponseList = array<connection>
type connectionQueryStringParametersList = array<connectionQueryStringParameter>
type connectionHeaderParametersList = array<connectionHeaderParameter>
type connectionBodyParametersList = array<connectionBodyParameter>
type batchParameters = {
@as("RetryStrategy") retryStrategy: option<batchRetryStrategy>,
  @as("ArrayProperties") arrayProperties: option<batchArrayProperties>,
  @as("JobName") jobName: string_,
  @as("JobDefinition") jobDefinition: string_
}
type awsVpcConfiguration = {
@as("AssignPublicIp") assignPublicIp: option<assignPublicIp>,
  @as("SecurityGroups") securityGroups: option<stringList>,
  @as("Subnets") subnets: stringList
}
type archiveResponseList = array<archive>
type apiDestinationResponseList = array<apiDestination>
type sageMakerPipelineParameters = {
@as("PipelineParameterList") pipelineParameterList: option<sageMakerPipelineParameterList>
}
type runCommandTargets = array<runCommandTarget>
type putPartnerEventsRequestEntryList = array<putPartnerEventsRequestEntry>
type putEventsRequestEntryList = array<putEventsRequestEntry>
type networkConfiguration = {
awsvpcConfiguration: option<awsVpcConfiguration>
}
type connectionHttpParameters = {
@as("BodyParameters") bodyParameters: option<connectionBodyParametersList>,
  @as("QueryStringParameters") queryStringParameters: option<connectionQueryStringParametersList>,
  @as("HeaderParameters") headerParameters: option<connectionHeaderParametersList>
}
type updateConnectionOAuthRequestParameters = {
@as("OAuthHttpParameters") oauthHttpParameters: option<connectionHttpParameters>,
  @as("HttpMethod") httpMethod: option<connectionOAuthHttpMethod>,
  @as("AuthorizationEndpoint") authorizationEndpoint: option<httpsEndpoint>,
  @as("ClientParameters") clientParameters: option<updateConnectionOAuthClientRequestParameters>
}
type runCommandParameters = {
@as("RunCommandTargets") runCommandTargets: runCommandTargets
}
type ecsParameters = {
@as("Group") group: option<string_>,
  @as("PlatformVersion") platformVersion: option<string_>,
  @as("NetworkConfiguration") networkConfiguration: option<networkConfiguration>,
  @as("LaunchType") launchType: option<launchType>,
  @as("TaskCount") taskCount: option<limitMin1>,
  @as("TaskDefinitionArn") taskDefinitionArn: arn
}
type createConnectionOAuthRequestParameters = {
@as("OAuthHttpParameters") oauthHttpParameters: option<connectionHttpParameters>,
  @as("HttpMethod") httpMethod: connectionOAuthHttpMethod,
  @as("AuthorizationEndpoint") authorizationEndpoint: httpsEndpoint,
  @as("ClientParameters") clientParameters: createConnectionOAuthClientRequestParameters
}
type connectionOAuthResponseParameters = {
@as("OAuthHttpParameters") oauthHttpParameters: option<connectionHttpParameters>,
  @as("HttpMethod") httpMethod: option<connectionOAuthHttpMethod>,
  @as("AuthorizationEndpoint") authorizationEndpoint: option<httpsEndpoint>,
  @as("ClientParameters") clientParameters: option<connectionOAuthClientResponseParameters>
}
type updateConnectionAuthRequestParameters = {
@as("InvocationHttpParameters") invocationHttpParameters: option<connectionHttpParameters>,
  @as("ApiKeyAuthParameters") apiKeyAuthParameters: option<updateConnectionApiKeyAuthRequestParameters>,
  @as("OAuthParameters") oauthParameters: option<updateConnectionOAuthRequestParameters>,
  @as("BasicAuthParameters") basicAuthParameters: option<updateConnectionBasicAuthRequestParameters>
}
type target = {
@as("RetryPolicy") retryPolicy: option<retryPolicy>,
  @as("DeadLetterConfig") deadLetterConfig: option<deadLetterConfig>,
  @as("SageMakerPipelineParameters") sageMakerPipelineParameters: option<sageMakerPipelineParameters>,
  @as("RedshiftDataParameters") redshiftDataParameters: option<redshiftDataParameters>,
  @as("HttpParameters") httpParameters: option<httpParameters>,
  @as("SqsParameters") sqsParameters: option<sqsParameters>,
  @as("BatchParameters") batchParameters: option<batchParameters>,
  @as("EcsParameters") ecsParameters: option<ecsParameters>,
  @as("RunCommandParameters") runCommandParameters: option<runCommandParameters>,
  @as("KinesisParameters") kinesisParameters: option<kinesisParameters>,
  @as("InputTransformer") inputTransformer: option<inputTransformer>,
  @as("InputPath") inputPath: option<targetInputPath>,
  @as("Input") input: option<targetInput>,
  @as("RoleArn") roleArn: option<roleArn>,
  @as("Arn") arn: targetArn,
  @as("Id") id: targetId
}
type createConnectionAuthRequestParameters = {
@as("InvocationHttpParameters") invocationHttpParameters: option<connectionHttpParameters>,
  @as("ApiKeyAuthParameters") apiKeyAuthParameters: option<createConnectionApiKeyAuthRequestParameters>,
  @as("OAuthParameters") oauthParameters: option<createConnectionOAuthRequestParameters>,
  @as("BasicAuthParameters") basicAuthParameters: option<createConnectionBasicAuthRequestParameters>
}
type connectionAuthResponseParameters = {
@as("InvocationHttpParameters") invocationHttpParameters: option<connectionHttpParameters>,
  @as("ApiKeyAuthParameters") apiKeyAuthParameters: option<connectionApiKeyAuthResponseParameters>,
  @as("OAuthParameters") oauthParameters: option<connectionOAuthResponseParameters>,
  @as("BasicAuthParameters") basicAuthParameters: option<connectionBasicAuthResponseParameters>
}
type targetList = array<target>

module UpdateArchive = {
  type t;
  type request = {
@as("RetentionDays") retentionDays: option<retentionDays>,
  @as("EventPattern") eventPattern: option<eventPattern>,
  @as("Description") description: option<archiveDescription>,
  @as("ArchiveName") archiveName: archiveName
}
  type response = {
@as("CreationTime") creationTime: option<timestamp_>,
  @as("StateReason") stateReason: option<archiveStateReason>,
  @as("State") state: option<archiveState>,
  @as("ArchiveArn") archiveArn: option<archiveArn>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "UpdateArchiveCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApiDestination = {
  type t;
  type request = {
@as("InvocationRateLimitPerSecond") invocationRateLimitPerSecond: option<apiDestinationInvocationRateLimitPerSecond>,
  @as("HttpMethod") httpMethod: option<apiDestinationHttpMethod>,
  @as("InvocationEndpoint") invocationEndpoint: option<httpsEndpoint>,
  @as("ConnectionArn") connectionArn: option<connectionArn>,
  @as("Description") description: option<apiDestinationDescription>,
  @as("Name") name: apiDestinationName
}
  type response = {
@as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("ApiDestinationState") apiDestinationState: option<apiDestinationState>,
  @as("ApiDestinationArn") apiDestinationArn: option<apiDestinationArn>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "UpdateApiDestinationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TestEventPattern = {
  type t;
  type request = {
@as("Event") event: string_,
  @as("EventPattern") eventPattern: eventPattern
}
  type response = {
@as("Result") result: option<boolean_>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "TestEventPatternCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RemovePermission = {
  type t;
  type request = {
@as("EventBusName") eventBusName: option<nonPartnerEventBusName>,
  @as("RemoveAllPermissions") removeAllPermissions: option<boolean_>,
  @as("StatementId") statementId: option<statementId>
}
  
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "RemovePermissionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module EnableRule = {
  type t;
  type request = {
@as("EventBusName") eventBusName: option<eventBusNameOrArn>,
  @as("Name") name: ruleName
}
  
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "EnableRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DisableRule = {
  type t;
  type request = {
@as("EventBusName") eventBusName: option<eventBusNameOrArn>,
  @as("Name") name: ruleName
}
  
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "DisableRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DescribeRule = {
  type t;
  type request = {
@as("EventBusName") eventBusName: option<eventBusNameOrArn>,
  @as("Name") name: ruleName
}
  type response = {
@as("CreatedBy") createdBy: option<createdBy>,
  @as("EventBusName") eventBusName: option<eventBusName>,
  @as("ManagedBy") managedBy: option<managedBy>,
  @as("RoleArn") roleArn: option<roleArn>,
  @as("Description") description: option<ruleDescription>,
  @as("State") state: option<ruleState>,
  @as("ScheduleExpression") scheduleExpression: option<scheduleExpression>,
  @as("EventPattern") eventPattern: option<eventPattern>,
  @as("Arn") arn: option<ruleArn>,
  @as("Name") name: option<ruleName>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "DescribeRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePartnerEventSource = {
  type t;
  type request = {
@as("Name") name: eventSourceName
}
  type response = {
@as("Name") name: option<string_>,
  @as("Arn") arn: option<string_>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "DescribePartnerEventSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEventSource = {
  type t;
  type request = {
@as("Name") name: eventSourceName
}
  type response = {
@as("State") state: option<eventSourceState>,
  @as("Name") name: option<string_>,
  @as("ExpirationTime") expirationTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("CreatedBy") createdBy: option<string_>,
  @as("Arn") arn: option<string_>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "DescribeEventSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEventBus = {
  type t;
  type request = {
@as("Name") name: option<eventBusNameOrArn>
}
  type response = {
@as("Policy") policy: option<string_>,
  @as("Arn") arn: option<string_>,
  @as("Name") name: option<string_>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "DescribeEventBusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeArchive = {
  type t;
  type request = {
@as("ArchiveName") archiveName: archiveName
}
  type response = {
@as("CreationTime") creationTime: option<timestamp_>,
  @as("EventCount") eventCount: option<long>,
  @as("SizeBytes") sizeBytes: option<long>,
  @as("RetentionDays") retentionDays: option<retentionDays>,
  @as("StateReason") stateReason: option<archiveStateReason>,
  @as("State") state: option<archiveState>,
  @as("EventPattern") eventPattern: option<eventPattern>,
  @as("Description") description: option<archiveDescription>,
  @as("EventSourceArn") eventSourceArn: option<arn>,
  @as("ArchiveName") archiveName: option<archiveName>,
  @as("ArchiveArn") archiveArn: option<archiveArn>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "DescribeArchiveCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeApiDestination = {
  type t;
  type request = {
@as("Name") name: apiDestinationName
}
  type response = {
@as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("InvocationRateLimitPerSecond") invocationRateLimitPerSecond: option<apiDestinationInvocationRateLimitPerSecond>,
  @as("HttpMethod") httpMethod: option<apiDestinationHttpMethod>,
  @as("InvocationEndpoint") invocationEndpoint: option<httpsEndpoint>,
  @as("ConnectionArn") connectionArn: option<connectionArn>,
  @as("ApiDestinationState") apiDestinationState: option<apiDestinationState>,
  @as("Description") description: option<apiDestinationDescription>,
  @as("Name") name: option<apiDestinationName>,
  @as("ApiDestinationArn") apiDestinationArn: option<apiDestinationArn>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "DescribeApiDestinationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRule = {
  type t;
  type request = {
@as("Force") force: option<boolean_>,
  @as("EventBusName") eventBusName: option<eventBusNameOrArn>,
  @as("Name") name: ruleName
}
  
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "DeleteRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeletePartnerEventSource = {
  type t;
  type request = {
@as("Account") account: accountId,
  @as("Name") name: eventSourceName
}
  
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "DeletePartnerEventSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteEventBus = {
  type t;
  type request = {
@as("Name") name: eventBusName
}
  
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "DeleteEventBusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteConnection = {
  type t;
  type request = {
@as("Name") name: connectionName
}
  type response = {
@as("LastAuthorizedTime") lastAuthorizedTime: option<timestamp_>,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("ConnectionState") connectionState: option<connectionState>,
  @as("ConnectionArn") connectionArn: option<connectionArn>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "DeleteConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteArchive = {
  type t;
  type request = {
@as("ArchiveName") archiveName: archiveName
}
  type response = unit
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "DeleteArchiveCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApiDestination = {
  type t;
  type request = {
@as("Name") name: apiDestinationName
}
  type response = unit
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "DeleteApiDestinationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeauthorizeConnection = {
  type t;
  type request = {
@as("Name") name: connectionName
}
  type response = {
@as("LastAuthorizedTime") lastAuthorizedTime: option<timestamp_>,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("ConnectionState") connectionState: option<connectionState>,
  @as("ConnectionArn") connectionArn: option<connectionArn>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "DeauthorizeConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeactivateEventSource = {
  type t;
  type request = {
@as("Name") name: eventSourceName
}
  
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "DeactivateEventSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CreatePartnerEventSource = {
  type t;
  type request = {
@as("Account") account: accountId,
  @as("Name") name: eventSourceName
}
  type response = {
@as("EventSourceArn") eventSourceArn: option<string_>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "CreatePartnerEventSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateArchive = {
  type t;
  type request = {
@as("RetentionDays") retentionDays: option<retentionDays>,
  @as("EventPattern") eventPattern: option<eventPattern>,
  @as("Description") description: option<archiveDescription>,
  @as("EventSourceArn") eventSourceArn: arn,
  @as("ArchiveName") archiveName: archiveName
}
  type response = {
@as("CreationTime") creationTime: option<timestamp_>,
  @as("StateReason") stateReason: option<archiveStateReason>,
  @as("State") state: option<archiveState>,
  @as("ArchiveArn") archiveArn: option<archiveArn>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "CreateArchiveCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateApiDestination = {
  type t;
  type request = {
@as("InvocationRateLimitPerSecond") invocationRateLimitPerSecond: option<apiDestinationInvocationRateLimitPerSecond>,
  @as("HttpMethod") httpMethod: apiDestinationHttpMethod,
  @as("InvocationEndpoint") invocationEndpoint: httpsEndpoint,
  @as("ConnectionArn") connectionArn: connectionArn,
  @as("Description") description: option<apiDestinationDescription>,
  @as("Name") name: apiDestinationName
}
  type response = {
@as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("ApiDestinationState") apiDestinationState: option<apiDestinationState>,
  @as("ApiDestinationArn") apiDestinationArn: option<apiDestinationArn>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "CreateApiDestinationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelReplay = {
  type t;
  type request = {
@as("ReplayName") replayName: replayName
}
  type response = {
@as("StateReason") stateReason: option<replayStateReason>,
  @as("State") state: option<replayState>,
  @as("ReplayArn") replayArn: option<replayArn>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "CancelReplayCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ActivateEventSource = {
  type t;
  type request = {
@as("Name") name: eventSourceName
}
  
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "ActivateEventSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
  @as("ResourceARN") resourceARN: arn
}
  type response = unit
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutPermission = {
  type t;
  type request = {
@as("Policy") policy: option<string_>,
  @as("Condition") condition: option<condition>,
  @as("StatementId") statementId: option<statementId>,
  @as("Principal") principal: option<principal>,
  @as("Action") action: option<action>,
  @as("EventBusName") eventBusName: option<nonPartnerEventBusName>
}
  
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "PutPermissionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListRuleNamesByTarget = {
  type t;
  type request = {
@as("Limit") limit: option<limitMax100>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("EventBusName") eventBusName: option<eventBusNameOrArn>,
  @as("TargetArn") targetArn: targetArn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("RuleNames") ruleNames: option<ruleNameList>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "ListRuleNamesByTargetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
  @as("ResourceARN") resourceARN: arn
}
  type response = unit
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartReplay = {
  type t;
  type request = {
@as("Destination") destination: replayDestination,
  @as("EventEndTime") eventEndTime: timestamp_,
  @as("EventStartTime") eventStartTime: timestamp_,
  @as("EventSourceArn") eventSourceArn: arn,
  @as("Description") description: option<replayDescription>,
  @as("ReplayName") replayName: replayName
}
  type response = {
@as("ReplayStartTime") replayStartTime: option<timestamp_>,
  @as("StateReason") stateReason: option<replayStateReason>,
  @as("State") state: option<replayState>,
  @as("ReplayArn") replayArn: option<replayArn>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "StartReplayCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RemoveTargets = {
  type t;
  type request = {
@as("Force") force: option<boolean_>,
  @as("Ids") ids: targetIdList,
  @as("EventBusName") eventBusName: option<eventBusNameOrArn>,
  @as("Rule") rule: ruleName
}
  type response = {
@as("FailedEntries") failedEntries: option<removeTargetsResultEntryList>,
  @as("FailedEntryCount") failedEntryCount: option<integer_>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "RemoveTargetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutRule = {
  type t;
  type request = {
@as("EventBusName") eventBusName: option<eventBusNameOrArn>,
  @as("Tags") tags: option<tagList_>,
  @as("RoleArn") roleArn: option<roleArn>,
  @as("Description") description: option<ruleDescription>,
  @as("State") state: option<ruleState>,
  @as("EventPattern") eventPattern: option<eventPattern>,
  @as("ScheduleExpression") scheduleExpression: option<scheduleExpression>,
  @as("Name") name: ruleName
}
  type response = {
@as("RuleArn") ruleArn: option<ruleArn>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "PutRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: arn
}
  type response = {
@as("Tags") tags: option<tagList_>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRules = {
  type t;
  type request = {
@as("Limit") limit: option<limitMax100>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("EventBusName") eventBusName: option<eventBusNameOrArn>,
  @as("NamePrefix") namePrefix: option<ruleName>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Rules") rules: option<ruleResponseList>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "ListRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListReplays = {
  type t;
  type request = {
@as("Limit") limit: option<limitMax100>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("EventSourceArn") eventSourceArn: option<arn>,
  @as("State") state: option<replayState>,
  @as("NamePrefix") namePrefix: option<replayName>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Replays") replays: option<replayList>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "ListReplaysCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPartnerEventSources = {
  type t;
  type request = {
@as("Limit") limit: option<limitMax100>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("NamePrefix") namePrefix: partnerEventSourceNamePrefix
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("PartnerEventSources") partnerEventSources: option<partnerEventSourceList>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "ListPartnerEventSourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPartnerEventSourceAccounts = {
  type t;
  type request = {
@as("Limit") limit: option<limitMax100>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("EventSourceName") eventSourceName: eventSourceName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("PartnerEventSourceAccounts") partnerEventSourceAccounts: option<partnerEventSourceAccountList>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "ListPartnerEventSourceAccountsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEventSources = {
  type t;
  type request = {
@as("Limit") limit: option<limitMax100>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("NamePrefix") namePrefix: option<eventSourceNamePrefix>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("EventSources") eventSources: option<eventSourceList>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "ListEventSourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEventBuses = {
  type t;
  type request = {
@as("Limit") limit: option<limitMax100>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("NamePrefix") namePrefix: option<eventBusName>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("EventBuses") eventBuses: option<eventBusList>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "ListEventBusesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListConnections = {
  type t;
  type request = {
@as("Limit") limit: option<limitMax100>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ConnectionState") connectionState: option<connectionState>,
  @as("NamePrefix") namePrefix: option<connectionName>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Connections") connections: option<connectionResponseList>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "ListConnectionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListArchives = {
  type t;
  type request = {
@as("Limit") limit: option<limitMax100>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("State") state: option<archiveState>,
  @as("EventSourceArn") eventSourceArn: option<arn>,
  @as("NamePrefix") namePrefix: option<archiveName>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Archives") archives: option<archiveResponseList>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "ListArchivesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListApiDestinations = {
  type t;
  type request = {
@as("Limit") limit: option<limitMax100>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ConnectionArn") connectionArn: option<connectionArn>,
  @as("NamePrefix") namePrefix: option<apiDestinationName>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("ApiDestinations") apiDestinations: option<apiDestinationResponseList>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "ListApiDestinationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeReplay = {
  type t;
  type request = {
@as("ReplayName") replayName: replayName
}
  type response = {
@as("ReplayEndTime") replayEndTime: option<timestamp_>,
  @as("ReplayStartTime") replayStartTime: option<timestamp_>,
  @as("EventLastReplayedTime") eventLastReplayedTime: option<timestamp_>,
  @as("EventEndTime") eventEndTime: option<timestamp_>,
  @as("EventStartTime") eventStartTime: option<timestamp_>,
  @as("Destination") destination: option<replayDestination>,
  @as("EventSourceArn") eventSourceArn: option<arn>,
  @as("StateReason") stateReason: option<replayStateReason>,
  @as("State") state: option<replayState>,
  @as("Description") description: option<replayDescription>,
  @as("ReplayArn") replayArn: option<replayArn>,
  @as("ReplayName") replayName: option<replayName>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "DescribeReplayCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateEventBus = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
  @as("EventSourceName") eventSourceName: option<eventSourceName>,
  @as("Name") name: eventBusName
}
  type response = {
@as("EventBusArn") eventBusArn: option<string_>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "CreateEventBusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutPartnerEvents = {
  type t;
  type request = {
@as("Entries") entries: putPartnerEventsRequestEntryList
}
  type response = {
@as("Entries") entries: option<putPartnerEventsResultEntryList>,
  @as("FailedEntryCount") failedEntryCount: option<integer_>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "PutPartnerEventsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutEvents = {
  type t;
  type request = {
@as("Entries") entries: putEventsRequestEntryList
}
  type response = {
@as("Entries") entries: option<putEventsResultEntryList>,
  @as("FailedEntryCount") failedEntryCount: option<integer_>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "PutEventsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateConnection = {
  type t;
  type request = {
@as("AuthParameters") authParameters: option<updateConnectionAuthRequestParameters>,
  @as("AuthorizationType") authorizationType: option<connectionAuthorizationType>,
  @as("Description") description: option<connectionDescription>,
  @as("Name") name: connectionName
}
  type response = {
@as("LastAuthorizedTime") lastAuthorizedTime: option<timestamp_>,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("ConnectionState") connectionState: option<connectionState>,
  @as("ConnectionArn") connectionArn: option<connectionArn>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "UpdateConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConnection = {
  type t;
  type request = {
@as("Name") name: connectionName
}
  type response = {
@as("LastAuthorizedTime") lastAuthorizedTime: option<timestamp_>,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("AuthParameters") authParameters: option<connectionAuthResponseParameters>,
  @as("SecretArn") secretArn: option<secretsManagerSecretArn>,
  @as("AuthorizationType") authorizationType: option<connectionAuthorizationType>,
  @as("StateReason") stateReason: option<connectionStateReason>,
  @as("ConnectionState") connectionState: option<connectionState>,
  @as("Description") description: option<connectionDescription>,
  @as("Name") name: option<connectionName>,
  @as("ConnectionArn") connectionArn: option<connectionArn>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "DescribeConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateConnection = {
  type t;
  type request = {
@as("AuthParameters") authParameters: createConnectionAuthRequestParameters,
  @as("AuthorizationType") authorizationType: connectionAuthorizationType,
  @as("Description") description: option<connectionDescription>,
  @as("Name") name: connectionName
}
  type response = {
@as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("ConnectionState") connectionState: option<connectionState>,
  @as("ConnectionArn") connectionArn: option<connectionArn>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "CreateConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutTargets = {
  type t;
  type request = {
@as("Targets") targets: targetList,
  @as("EventBusName") eventBusName: option<eventBusNameOrArn>,
  @as("Rule") rule: ruleName
}
  type response = {
@as("FailedEntries") failedEntries: option<putTargetsResultEntryList>,
  @as("FailedEntryCount") failedEntryCount: option<integer_>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "PutTargetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTargetsByRule = {
  type t;
  type request = {
@as("Limit") limit: option<limitMax100>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("EventBusName") eventBusName: option<eventBusNameOrArn>,
  @as("Rule") rule: ruleName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Targets") targets: option<targetList>
}
  @module("@aws-sdk/client-events") @new external new_: (request) => t = "ListTargetsByRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
