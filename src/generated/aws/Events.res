type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type transformerInput = string
type traceHeader = string
type amazonawsTimestamp = Js.Date.t;
type targetPartitionKeyPath = string
type targetInputPath = string
type targetInput = string
type targetId = string
type targetArn = string
type tagValue = string
type tagKey = string
type amazonawsString = string
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
type retentionDays = int;
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
type maximumRetryAttempts = int;
type maximumEventAgeInSeconds = int;
type managedBy = string
type amazonawsLong = float;
type limitMin1 = int;
type limitMax100 = int;
type launchType = [@as("FARGATE") #FARGATE | @as("EC2") #EC2]
type amazonawsInteger = int;
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
type amazonawsBoolean = bool;
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
type apiDestinationInvocationRateLimitPerSecond = int;
type apiDestinationHttpMethod = [@as("DELETE") #DELETE | @as("PATCH") #PATCH | @as("PUT") #PUT | @as("OPTIONS") #OPTIONS | @as("HEAD") #HEAD | @as("GET") #GET | @as("POST") #POST]
type apiDestinationDescription = string
type apiDestinationArn = string
type action = string
type accountId = string
type updateConnectionOAuthClientRequestParameters = {
@as("ClientSecret") clientSecret: authHeaderParameters,
@as("ClientID") clientID: authHeaderParameters
}
type updateConnectionBasicAuthRequestParameters = {
@as("Password") password: authHeaderParameters,
@as("Username") username: authHeaderParameters
}
type updateConnectionApiKeyAuthRequestParameters = {
@as("ApiKeyValue") apiKeyValue: authHeaderParameters,
@as("ApiKeyName") apiKeyName: authHeaderParameters
}
type transformerPaths = Js.Dict.t< targetInputPath>
type targetIdList = array<targetId>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type stringList = array<amazonawsString>
type sqsParameters = {
@as("MessageGroupId") messageGroupId: messageGroupId
}
type sageMakerPipelineParameter = {
@as("Value") value: option<sageMakerPipelineParameterValue>,
@as("Name") name: option<sageMakerPipelineParameterName>
}
type runCommandTargetValues = array<runCommandTargetValue>
type ruleNameList = array<ruleName>
type rule = {
@as("EventBusName") eventBusName: eventBusName,
@as("ManagedBy") managedBy: managedBy,
@as("RoleArn") roleArn: roleArn,
@as("ScheduleExpression") scheduleExpression: scheduleExpression,
@as("Description") description: ruleDescription,
@as("State") state: ruleState,
@as("EventPattern") eventPattern: eventPattern,
@as("Arn") arn: ruleArn,
@as("Name") name: ruleName
}
type retryPolicy = {
@as("MaximumEventAgeInSeconds") maximumEventAgeInSeconds: maximumEventAgeInSeconds,
@as("MaximumRetryAttempts") maximumRetryAttempts: maximumRetryAttempts
}
type replayDestinationFilters = array<arn>
type replay = {
@as("ReplayEndTime") replayEndTime: amazonawsTimestamp,
@as("ReplayStartTime") replayStartTime: amazonawsTimestamp,
@as("EventLastReplayedTime") eventLastReplayedTime: amazonawsTimestamp,
@as("EventEndTime") eventEndTime: amazonawsTimestamp,
@as("EventStartTime") eventStartTime: amazonawsTimestamp,
@as("StateReason") stateReason: replayStateReason,
@as("State") state: replayState,
@as("EventSourceArn") eventSourceArn: arn,
@as("ReplayName") replayName: replayName
}
type removeTargetsResultEntry = {
@as("ErrorMessage") errorMessage: errorMessage,
@as("ErrorCode") errorCode: errorCode,
@as("TargetId") targetId: targetId
}
type redshiftDataParameters = {
@as("WithEvent") withEvent: amazonawsBoolean,
@as("StatementName") statementName: statementName,
@as("Sql") sql: option<sql>,
@as("DbUser") dbUser: dbUser,
@as("Database") database: option<database>,
@as("SecretManagerArn") secretManagerArn: redshiftSecretManagerArn
}
type queryStringParametersMap = Js.Dict.t< queryStringValue>
type putTargetsResultEntry = {
@as("ErrorMessage") errorMessage: errorMessage,
@as("ErrorCode") errorCode: errorCode,
@as("TargetId") targetId: targetId
}
type putPartnerEventsResultEntry = {
@as("ErrorMessage") errorMessage: errorMessage,
@as("ErrorCode") errorCode: errorCode,
@as("EventId") eventId: eventId
}
type putEventsResultEntry = {
@as("ErrorMessage") errorMessage: errorMessage,
@as("ErrorCode") errorCode: errorCode,
@as("EventId") eventId: eventId
}
type pathParameterList = array<pathParameter>
type partnerEventSourceAccount = {
@as("State") state: eventSourceState,
@as("ExpirationTime") expirationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Account") account: accountId
}
type partnerEventSource = {
@as("Name") name: amazonawsString,
@as("Arn") arn: amazonawsString
}
type kinesisParameters = {
@as("PartitionKeyPath") partitionKeyPath: option<targetPartitionKeyPath>
}
type headerParametersMap = Js.Dict.t< headerValue>
type eventSource = {
@as("State") state: eventSourceState,
@as("Name") name: amazonawsString,
@as("ExpirationTime") expirationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("CreatedBy") createdBy: amazonawsString,
@as("Arn") arn: amazonawsString
}
type eventResourceList = array<eventResource>
type eventBus = {
@as("Policy") policy: amazonawsString,
@as("Arn") arn: amazonawsString,
@as("Name") name: amazonawsString
}
type deadLetterConfig = {
@as("Arn") arn: resourceArn
}
type createConnectionOAuthClientRequestParameters = {
@as("ClientSecret") clientSecret: option<authHeaderParameters>,
@as("ClientID") clientID: option<authHeaderParameters>
}
type createConnectionBasicAuthRequestParameters = {
@as("Password") password: option<authHeaderParameters>,
@as("Username") username: option<authHeaderParameters>
}
type createConnectionApiKeyAuthRequestParameters = {
@as("ApiKeyValue") apiKeyValue: option<authHeaderParameters>,
@as("ApiKeyName") apiKeyName: option<authHeaderParameters>
}
type connectionQueryStringParameter = {
@as("IsValueSecret") isValueSecret: amazonawsBoolean,
@as("Value") value: queryStringValue,
@as("Key") key: queryStringKey
}
type connectionOAuthClientResponseParameters = {
@as("ClientID") clientID: authHeaderParameters
}
type connectionHeaderParameter = {
@as("IsValueSecret") isValueSecret: amazonawsBoolean,
@as("Value") value: headerValue,
@as("Key") key: headerKey
}
type connectionBodyParameter = {
@as("IsValueSecret") isValueSecret: amazonawsBoolean,
@as("Value") value: amazonawsString,
@as("Key") key: amazonawsString
}
type connectionBasicAuthResponseParameters = {
@as("Username") username: authHeaderParameters
}
type connectionApiKeyAuthResponseParameters = {
@as("ApiKeyName") apiKeyName: authHeaderParameters
}
type connection = {
@as("LastAuthorizedTime") lastAuthorizedTime: amazonawsTimestamp,
@as("LastModifiedTime") lastModifiedTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("AuthorizationType") authorizationType: connectionAuthorizationType,
@as("StateReason") stateReason: connectionStateReason,
@as("ConnectionState") connectionState: connectionState,
@as("Name") name: connectionName,
@as("ConnectionArn") connectionArn: connectionArn
}
type condition = {
@as("Value") value: option<amazonawsString>,
@as("Key") key: option<amazonawsString>,
@as("Type") type_: option<amazonawsString>
}
type batchRetryStrategy = {
@as("Attempts") attempts: amazonawsInteger
}
type batchArrayProperties = {
@as("Size") size: amazonawsInteger
}
type archive = {
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("EventCount") eventCount: amazonawsLong,
@as("SizeBytes") sizeBytes: amazonawsLong,
@as("RetentionDays") retentionDays: retentionDays,
@as("StateReason") stateReason: archiveStateReason,
@as("State") state: archiveState,
@as("EventSourceArn") eventSourceArn: arn,
@as("ArchiveName") archiveName: archiveName
}
type apiDestination = {
@as("LastModifiedTime") lastModifiedTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("InvocationRateLimitPerSecond") invocationRateLimitPerSecond: apiDestinationInvocationRateLimitPerSecond,
@as("HttpMethod") httpMethod: apiDestinationHttpMethod,
@as("InvocationEndpoint") invocationEndpoint: httpsEndpoint,
@as("ConnectionArn") connectionArn: connectionArn,
@as("ApiDestinationState") apiDestinationState: apiDestinationState,
@as("Name") name: apiDestinationName,
@as("ApiDestinationArn") apiDestinationArn: apiDestinationArn
}
type tagList = array<tag>
type sageMakerPipelineParameterList = array<sageMakerPipelineParameter>
type runCommandTarget = {
@as("Values") values: option<runCommandTargetValues>,
@as("Key") key: option<runCommandTargetKey>
}
type ruleResponseList = array<rule>
type replayList = array<replay>
type replayDestination = {
@as("FilterArns") filterArns: replayDestinationFilters,
@as("Arn") arn: option<arn>
}
type removeTargetsResultEntryList = array<removeTargetsResultEntry>
type putTargetsResultEntryList = array<putTargetsResultEntry>
type putPartnerEventsResultEntryList = array<putPartnerEventsResultEntry>
type putPartnerEventsRequestEntry = {
@as("Detail") detail: amazonawsString,
@as("DetailType") detailType: amazonawsString,
@as("Resources") resources: eventResourceList,
@as("Source") source: eventSourceName,
@as("Time") time: eventTime
}
type putEventsResultEntryList = array<putEventsResultEntry>
type putEventsRequestEntry = {
@as("TraceHeader") traceHeader: traceHeader,
@as("EventBusName") eventBusName: nonPartnerEventBusNameOrArn,
@as("Detail") detail: amazonawsString,
@as("DetailType") detailType: amazonawsString,
@as("Resources") resources: eventResourceList,
@as("Source") source: amazonawsString,
@as("Time") time: eventTime
}
type partnerEventSourceList = array<partnerEventSource>
type partnerEventSourceAccountList = array<partnerEventSourceAccount>
type inputTransformer = {
@as("InputTemplate") inputTemplate: option<transformerInput>,
@as("InputPathsMap") inputPathsMap: transformerPaths
}
type httpParameters = {
@as("QueryStringParameters") queryStringParameters: queryStringParametersMap,
@as("HeaderParameters") headerParameters: headerParametersMap,
@as("PathParameterValues") pathParameterValues: pathParameterList
}
type eventSourceList = array<eventSource>
type eventBusList = array<eventBus>
type connectionResponseList = array<connection>
type connectionQueryStringParametersList = array<connectionQueryStringParameter>
type connectionHeaderParametersList = array<connectionHeaderParameter>
type connectionBodyParametersList = array<connectionBodyParameter>
type batchParameters = {
@as("RetryStrategy") retryStrategy: batchRetryStrategy,
@as("ArrayProperties") arrayProperties: batchArrayProperties,
@as("JobName") jobName: option<amazonawsString>,
@as("JobDefinition") jobDefinition: option<amazonawsString>
}
type awsVpcConfiguration = {
@as("AssignPublicIp") assignPublicIp: assignPublicIp,
@as("SecurityGroups") securityGroups: stringList,
@as("Subnets") subnets: option<stringList>
}
type archiveResponseList = array<archive>
type apiDestinationResponseList = array<apiDestination>
type sageMakerPipelineParameters = {
@as("PipelineParameterList") pipelineParameterList: sageMakerPipelineParameterList
}
type runCommandTargets = array<runCommandTarget>
type putPartnerEventsRequestEntryList = array<putPartnerEventsRequestEntry>
type putEventsRequestEntryList = array<putEventsRequestEntry>
type networkConfiguration = {
@as("awsvpcConfiguration") awsvpcConfiguration: awsVpcConfiguration
}
type connectionHttpParameters = {
@as("BodyParameters") bodyParameters: connectionBodyParametersList,
@as("QueryStringParameters") queryStringParameters: connectionQueryStringParametersList,
@as("HeaderParameters") headerParameters: connectionHeaderParametersList
}
type updateConnectionOAuthRequestParameters = {
@as("OAuthHttpParameters") oAuthHttpParameters: connectionHttpParameters,
@as("HttpMethod") httpMethod: connectionOAuthHttpMethod,
@as("AuthorizationEndpoint") authorizationEndpoint: httpsEndpoint,
@as("ClientParameters") clientParameters: updateConnectionOAuthClientRequestParameters
}
type runCommandParameters = {
@as("RunCommandTargets") runCommandTargets: option<runCommandTargets>
}
type ecsParameters = {
@as("Group") group: amazonawsString,
@as("PlatformVersion") platformVersion: amazonawsString,
@as("NetworkConfiguration") networkConfiguration: networkConfiguration,
@as("LaunchType") launchType: launchType,
@as("TaskCount") taskCount: limitMin1,
@as("TaskDefinitionArn") taskDefinitionArn: option<arn>
}
type createConnectionOAuthRequestParameters = {
@as("OAuthHttpParameters") oAuthHttpParameters: connectionHttpParameters,
@as("HttpMethod") httpMethod: option<connectionOAuthHttpMethod>,
@as("AuthorizationEndpoint") authorizationEndpoint: option<httpsEndpoint>,
@as("ClientParameters") clientParameters: option<createConnectionOAuthClientRequestParameters>
}
type connectionOAuthResponseParameters = {
@as("OAuthHttpParameters") oAuthHttpParameters: connectionHttpParameters,
@as("HttpMethod") httpMethod: connectionOAuthHttpMethod,
@as("AuthorizationEndpoint") authorizationEndpoint: httpsEndpoint,
@as("ClientParameters") clientParameters: connectionOAuthClientResponseParameters
}
type updateConnectionAuthRequestParameters = {
@as("InvocationHttpParameters") invocationHttpParameters: connectionHttpParameters,
@as("ApiKeyAuthParameters") apiKeyAuthParameters: updateConnectionApiKeyAuthRequestParameters,
@as("OAuthParameters") oAuthParameters: updateConnectionOAuthRequestParameters,
@as("BasicAuthParameters") basicAuthParameters: updateConnectionBasicAuthRequestParameters
}
type target = {
@as("RetryPolicy") retryPolicy: retryPolicy,
@as("DeadLetterConfig") deadLetterConfig: deadLetterConfig,
@as("SageMakerPipelineParameters") sageMakerPipelineParameters: sageMakerPipelineParameters,
@as("RedshiftDataParameters") redshiftDataParameters: redshiftDataParameters,
@as("HttpParameters") httpParameters: httpParameters,
@as("SqsParameters") sqsParameters: sqsParameters,
@as("BatchParameters") batchParameters: batchParameters,
@as("EcsParameters") ecsParameters: ecsParameters,
@as("RunCommandParameters") runCommandParameters: runCommandParameters,
@as("KinesisParameters") kinesisParameters: kinesisParameters,
@as("InputTransformer") inputTransformer: inputTransformer,
@as("InputPath") inputPath: targetInputPath,
@as("Input") input: targetInput,
@as("RoleArn") roleArn: roleArn,
@as("Arn") arn: option<targetArn>,
@as("Id") id: option<targetId>
}
type createConnectionAuthRequestParameters = {
@as("InvocationHttpParameters") invocationHttpParameters: connectionHttpParameters,
@as("ApiKeyAuthParameters") apiKeyAuthParameters: createConnectionApiKeyAuthRequestParameters,
@as("OAuthParameters") oAuthParameters: createConnectionOAuthRequestParameters,
@as("BasicAuthParameters") basicAuthParameters: createConnectionBasicAuthRequestParameters
}
type connectionAuthResponseParameters = {
@as("InvocationHttpParameters") invocationHttpParameters: connectionHttpParameters,
@as("ApiKeyAuthParameters") apiKeyAuthParameters: connectionApiKeyAuthResponseParameters,
@as("OAuthParameters") oAuthParameters: connectionOAuthResponseParameters,
@as("BasicAuthParameters") basicAuthParameters: connectionBasicAuthResponseParameters
}
type targetList = array<target>
type clientType;
@module("@aws-sdk/client-events") @new external createClient: unit => clientType = "EventsClient";
module UpdateArchive = {
  type t;
  type request = {
@as("RetentionDays") retentionDays: retentionDays,
@as("EventPattern") eventPattern: eventPattern,
@as("Description") description: archiveDescription,
@as("ArchiveName") archiveName: option<archiveName>
}
  type response = {
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("StateReason") stateReason: archiveStateReason,
@as("State") state: archiveState,
@as("ArchiveArn") archiveArn: archiveArn
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "UpdateArchiveCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApiDestination = {
  type t;
  type request = {
@as("InvocationRateLimitPerSecond") invocationRateLimitPerSecond: apiDestinationInvocationRateLimitPerSecond,
@as("HttpMethod") httpMethod: apiDestinationHttpMethod,
@as("InvocationEndpoint") invocationEndpoint: httpsEndpoint,
@as("ConnectionArn") connectionArn: connectionArn,
@as("Description") description: apiDestinationDescription,
@as("Name") name: option<apiDestinationName>
}
  type response = {
@as("LastModifiedTime") lastModifiedTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("ApiDestinationState") apiDestinationState: apiDestinationState,
@as("ApiDestinationArn") apiDestinationArn: apiDestinationArn
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "UpdateApiDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TestEventPattern = {
  type t;
  type request = {
@as("Event") event: option<amazonawsString>,
@as("EventPattern") eventPattern: option<eventPattern>
}
  type response = {
@as("Result") result: amazonawsBoolean
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "TestEventPatternCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemovePermission = {
  type t;
  type request = {
@as("EventBusName") eventBusName: nonPartnerEventBusName,
@as("RemoveAllPermissions") removeAllPermissions: amazonawsBoolean,
@as("StatementId") statementId: statementId
}
  
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "RemovePermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module EnableRule = {
  type t;
  type request = {
@as("EventBusName") eventBusName: eventBusNameOrArn,
@as("Name") name: option<ruleName>
}
  
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "EnableRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisableRule = {
  type t;
  type request = {
@as("EventBusName") eventBusName: eventBusNameOrArn,
@as("Name") name: option<ruleName>
}
  
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "DisableRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeRule = {
  type t;
  type request = {
@as("EventBusName") eventBusName: eventBusNameOrArn,
@as("Name") name: option<ruleName>
}
  type response = {
@as("CreatedBy") createdBy: createdBy,
@as("EventBusName") eventBusName: eventBusName,
@as("ManagedBy") managedBy: managedBy,
@as("RoleArn") roleArn: roleArn,
@as("Description") description: ruleDescription,
@as("State") state: ruleState,
@as("ScheduleExpression") scheduleExpression: scheduleExpression,
@as("EventPattern") eventPattern: eventPattern,
@as("Arn") arn: ruleArn,
@as("Name") name: ruleName
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "DescribeRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePartnerEventSource = {
  type t;
  type request = {
@as("Name") name: option<eventSourceName>
}
  type response = {
@as("Name") name: amazonawsString,
@as("Arn") arn: amazonawsString
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "DescribePartnerEventSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEventSource = {
  type t;
  type request = {
@as("Name") name: option<eventSourceName>
}
  type response = {
@as("State") state: eventSourceState,
@as("Name") name: amazonawsString,
@as("ExpirationTime") expirationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("CreatedBy") createdBy: amazonawsString,
@as("Arn") arn: amazonawsString
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "DescribeEventSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEventBus = {
  type t;
  type request = {
@as("Name") name: eventBusNameOrArn
}
  type response = {
@as("Policy") policy: amazonawsString,
@as("Arn") arn: amazonawsString,
@as("Name") name: amazonawsString
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "DescribeEventBusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeArchive = {
  type t;
  type request = {
@as("ArchiveName") archiveName: option<archiveName>
}
  type response = {
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("EventCount") eventCount: amazonawsLong,
@as("SizeBytes") sizeBytes: amazonawsLong,
@as("RetentionDays") retentionDays: retentionDays,
@as("StateReason") stateReason: archiveStateReason,
@as("State") state: archiveState,
@as("EventPattern") eventPattern: eventPattern,
@as("Description") description: archiveDescription,
@as("EventSourceArn") eventSourceArn: arn,
@as("ArchiveName") archiveName: archiveName,
@as("ArchiveArn") archiveArn: archiveArn
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "DescribeArchiveCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeApiDestination = {
  type t;
  type request = {
@as("Name") name: option<apiDestinationName>
}
  type response = {
@as("LastModifiedTime") lastModifiedTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("InvocationRateLimitPerSecond") invocationRateLimitPerSecond: apiDestinationInvocationRateLimitPerSecond,
@as("HttpMethod") httpMethod: apiDestinationHttpMethod,
@as("InvocationEndpoint") invocationEndpoint: httpsEndpoint,
@as("ConnectionArn") connectionArn: connectionArn,
@as("ApiDestinationState") apiDestinationState: apiDestinationState,
@as("Description") description: apiDestinationDescription,
@as("Name") name: apiDestinationName,
@as("ApiDestinationArn") apiDestinationArn: apiDestinationArn
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "DescribeApiDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRule = {
  type t;
  type request = {
@as("Force") force: amazonawsBoolean,
@as("EventBusName") eventBusName: eventBusNameOrArn,
@as("Name") name: option<ruleName>
}
  
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "DeleteRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeletePartnerEventSource = {
  type t;
  type request = {
@as("Account") account: option<accountId>,
@as("Name") name: option<eventSourceName>
}
  
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "DeletePartnerEventSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteEventBus = {
  type t;
  type request = {
@as("Name") name: option<eventBusName>
}
  
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "DeleteEventBusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteConnection = {
  type t;
  type request = {
@as("Name") name: option<connectionName>
}
  type response = {
@as("LastAuthorizedTime") lastAuthorizedTime: amazonawsTimestamp,
@as("LastModifiedTime") lastModifiedTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("ConnectionState") connectionState: connectionState,
@as("ConnectionArn") connectionArn: connectionArn
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "DeleteConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteArchive = {
  type t;
  type request = {
@as("ArchiveName") archiveName: option<archiveName>
}
  type response = unit
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "DeleteArchiveCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApiDestination = {
  type t;
  type request = {
@as("Name") name: option<apiDestinationName>
}
  type response = unit
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "DeleteApiDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeauthorizeConnection = {
  type t;
  type request = {
@as("Name") name: option<connectionName>
}
  type response = {
@as("LastAuthorizedTime") lastAuthorizedTime: amazonawsTimestamp,
@as("LastModifiedTime") lastModifiedTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("ConnectionState") connectionState: connectionState,
@as("ConnectionArn") connectionArn: connectionArn
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "DeauthorizeConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeactivateEventSource = {
  type t;
  type request = {
@as("Name") name: option<eventSourceName>
}
  
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "DeactivateEventSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreatePartnerEventSource = {
  type t;
  type request = {
@as("Account") account: option<accountId>,
@as("Name") name: option<eventSourceName>
}
  type response = {
@as("EventSourceArn") eventSourceArn: amazonawsString
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "CreatePartnerEventSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateArchive = {
  type t;
  type request = {
@as("RetentionDays") retentionDays: retentionDays,
@as("EventPattern") eventPattern: eventPattern,
@as("Description") description: archiveDescription,
@as("EventSourceArn") eventSourceArn: option<arn>,
@as("ArchiveName") archiveName: option<archiveName>
}
  type response = {
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("StateReason") stateReason: archiveStateReason,
@as("State") state: archiveState,
@as("ArchiveArn") archiveArn: archiveArn
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "CreateArchiveCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApiDestination = {
  type t;
  type request = {
@as("InvocationRateLimitPerSecond") invocationRateLimitPerSecond: apiDestinationInvocationRateLimitPerSecond,
@as("HttpMethod") httpMethod: option<apiDestinationHttpMethod>,
@as("InvocationEndpoint") invocationEndpoint: option<httpsEndpoint>,
@as("ConnectionArn") connectionArn: option<connectionArn>,
@as("Description") description: apiDestinationDescription,
@as("Name") name: option<apiDestinationName>
}
  type response = {
@as("LastModifiedTime") lastModifiedTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("ApiDestinationState") apiDestinationState: apiDestinationState,
@as("ApiDestinationArn") apiDestinationArn: apiDestinationArn
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "CreateApiDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelReplay = {
  type t;
  type request = {
@as("ReplayName") replayName: option<replayName>
}
  type response = {
@as("StateReason") stateReason: replayStateReason,
@as("State") state: replayState,
@as("ReplayArn") replayArn: replayArn
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "CancelReplayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ActivateEventSource = {
  type t;
  type request = {
@as("Name") name: option<eventSourceName>
}
  
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "ActivateEventSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceARN") resourceARN: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutPermission = {
  type t;
  type request = {
@as("Policy") policy: amazonawsString,
@as("Condition") condition: condition,
@as("StatementId") statementId: statementId,
@as("Principal") principal: principal,
@as("Action") action: action,
@as("EventBusName") eventBusName: nonPartnerEventBusName
}
  
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "PutPermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListRuleNamesByTarget = {
  type t;
  type request = {
@as("Limit") limit: limitMax100,
@as("NextToken") nextToken: nextToken,
@as("EventBusName") eventBusName: eventBusNameOrArn,
@as("TargetArn") targetArn: option<targetArn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("RuleNames") ruleNames: ruleNameList
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "ListRuleNamesByTargetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceARN") resourceARN: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartReplay = {
  type t;
  type request = {
@as("Destination") destination: option<replayDestination>,
@as("EventEndTime") eventEndTime: option<amazonawsTimestamp>,
@as("EventStartTime") eventStartTime: option<amazonawsTimestamp>,
@as("EventSourceArn") eventSourceArn: option<arn>,
@as("Description") description: replayDescription,
@as("ReplayName") replayName: option<replayName>
}
  type response = {
@as("ReplayStartTime") replayStartTime: amazonawsTimestamp,
@as("StateReason") stateReason: replayStateReason,
@as("State") state: replayState,
@as("ReplayArn") replayArn: replayArn
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "StartReplayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveTargets = {
  type t;
  type request = {
@as("Force") force: amazonawsBoolean,
@as("Ids") ids: option<targetIdList>,
@as("EventBusName") eventBusName: eventBusNameOrArn,
@as("Rule") rule: option<ruleName>
}
  type response = {
@as("FailedEntries") failedEntries: removeTargetsResultEntryList,
@as("FailedEntryCount") failedEntryCount: amazonawsInteger
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "RemoveTargetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutRule = {
  type t;
  type request = {
@as("EventBusName") eventBusName: eventBusNameOrArn,
@as("Tags") tags: tagList,
@as("RoleArn") roleArn: roleArn,
@as("Description") description: ruleDescription,
@as("State") state: ruleState,
@as("EventPattern") eventPattern: eventPattern,
@as("ScheduleExpression") scheduleExpression: scheduleExpression,
@as("Name") name: option<ruleName>
}
  type response = {
@as("RuleArn") ruleArn: ruleArn
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "PutRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: option<arn>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRules = {
  type t;
  type request = {
@as("Limit") limit: limitMax100,
@as("NextToken") nextToken: nextToken,
@as("EventBusName") eventBusName: eventBusNameOrArn,
@as("NamePrefix") namePrefix: ruleName
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Rules") rules: ruleResponseList
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "ListRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListReplays = {
  type t;
  type request = {
@as("Limit") limit: limitMax100,
@as("NextToken") nextToken: nextToken,
@as("EventSourceArn") eventSourceArn: arn,
@as("State") state: replayState,
@as("NamePrefix") namePrefix: replayName
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Replays") replays: replayList
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "ListReplaysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPartnerEventSources = {
  type t;
  type request = {
@as("Limit") limit: limitMax100,
@as("NextToken") nextToken: nextToken,
@as("NamePrefix") namePrefix: option<partnerEventSourceNamePrefix>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("PartnerEventSources") partnerEventSources: partnerEventSourceList
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "ListPartnerEventSourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPartnerEventSourceAccounts = {
  type t;
  type request = {
@as("Limit") limit: limitMax100,
@as("NextToken") nextToken: nextToken,
@as("EventSourceName") eventSourceName: option<eventSourceName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("PartnerEventSourceAccounts") partnerEventSourceAccounts: partnerEventSourceAccountList
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "ListPartnerEventSourceAccountsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEventSources = {
  type t;
  type request = {
@as("Limit") limit: limitMax100,
@as("NextToken") nextToken: nextToken,
@as("NamePrefix") namePrefix: eventSourceNamePrefix
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("EventSources") eventSources: eventSourceList
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "ListEventSourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEventBuses = {
  type t;
  type request = {
@as("Limit") limit: limitMax100,
@as("NextToken") nextToken: nextToken,
@as("NamePrefix") namePrefix: eventBusName
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("EventBuses") eventBuses: eventBusList
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "ListEventBusesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConnections = {
  type t;
  type request = {
@as("Limit") limit: limitMax100,
@as("NextToken") nextToken: nextToken,
@as("ConnectionState") connectionState: connectionState,
@as("NamePrefix") namePrefix: connectionName
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Connections") connections: connectionResponseList
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "ListConnectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListArchives = {
  type t;
  type request = {
@as("Limit") limit: limitMax100,
@as("NextToken") nextToken: nextToken,
@as("State") state: archiveState,
@as("EventSourceArn") eventSourceArn: arn,
@as("NamePrefix") namePrefix: archiveName
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Archives") archives: archiveResponseList
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "ListArchivesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApiDestinations = {
  type t;
  type request = {
@as("Limit") limit: limitMax100,
@as("NextToken") nextToken: nextToken,
@as("ConnectionArn") connectionArn: connectionArn,
@as("NamePrefix") namePrefix: apiDestinationName
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ApiDestinations") apiDestinations: apiDestinationResponseList
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "ListApiDestinationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReplay = {
  type t;
  type request = {
@as("ReplayName") replayName: option<replayName>
}
  type response = {
@as("ReplayEndTime") replayEndTime: amazonawsTimestamp,
@as("ReplayStartTime") replayStartTime: amazonawsTimestamp,
@as("EventLastReplayedTime") eventLastReplayedTime: amazonawsTimestamp,
@as("EventEndTime") eventEndTime: amazonawsTimestamp,
@as("EventStartTime") eventStartTime: amazonawsTimestamp,
@as("Destination") destination: replayDestination,
@as("EventSourceArn") eventSourceArn: arn,
@as("StateReason") stateReason: replayStateReason,
@as("State") state: replayState,
@as("Description") description: replayDescription,
@as("ReplayArn") replayArn: replayArn,
@as("ReplayName") replayName: replayName
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "DescribeReplayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEventBus = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("EventSourceName") eventSourceName: eventSourceName,
@as("Name") name: option<eventBusName>
}
  type response = {
@as("EventBusArn") eventBusArn: amazonawsString
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "CreateEventBusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutPartnerEvents = {
  type t;
  type request = {
@as("Entries") entries: option<putPartnerEventsRequestEntryList>
}
  type response = {
@as("Entries") entries: putPartnerEventsResultEntryList,
@as("FailedEntryCount") failedEntryCount: amazonawsInteger
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "PutPartnerEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutEvents = {
  type t;
  type request = {
@as("Entries") entries: option<putEventsRequestEntryList>
}
  type response = {
@as("Entries") entries: putEventsResultEntryList,
@as("FailedEntryCount") failedEntryCount: amazonawsInteger
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "PutEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConnection = {
  type t;
  type request = {
@as("AuthParameters") authParameters: updateConnectionAuthRequestParameters,
@as("AuthorizationType") authorizationType: connectionAuthorizationType,
@as("Description") description: connectionDescription,
@as("Name") name: option<connectionName>
}
  type response = {
@as("LastAuthorizedTime") lastAuthorizedTime: amazonawsTimestamp,
@as("LastModifiedTime") lastModifiedTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("ConnectionState") connectionState: connectionState,
@as("ConnectionArn") connectionArn: connectionArn
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "UpdateConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConnection = {
  type t;
  type request = {
@as("Name") name: option<connectionName>
}
  type response = {
@as("LastAuthorizedTime") lastAuthorizedTime: amazonawsTimestamp,
@as("LastModifiedTime") lastModifiedTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("AuthParameters") authParameters: connectionAuthResponseParameters,
@as("SecretArn") secretArn: secretsManagerSecretArn,
@as("AuthorizationType") authorizationType: connectionAuthorizationType,
@as("StateReason") stateReason: connectionStateReason,
@as("ConnectionState") connectionState: connectionState,
@as("Description") description: connectionDescription,
@as("Name") name: connectionName,
@as("ConnectionArn") connectionArn: connectionArn
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "DescribeConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConnection = {
  type t;
  type request = {
@as("AuthParameters") authParameters: option<createConnectionAuthRequestParameters>,
@as("AuthorizationType") authorizationType: option<connectionAuthorizationType>,
@as("Description") description: connectionDescription,
@as("Name") name: option<connectionName>
}
  type response = {
@as("LastModifiedTime") lastModifiedTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("ConnectionState") connectionState: connectionState,
@as("ConnectionArn") connectionArn: connectionArn
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "CreateConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutTargets = {
  type t;
  type request = {
@as("Targets") targets: option<targetList>,
@as("EventBusName") eventBusName: eventBusNameOrArn,
@as("Rule") rule: option<ruleName>
}
  type response = {
@as("FailedEntries") failedEntries: putTargetsResultEntryList,
@as("FailedEntryCount") failedEntryCount: amazonawsInteger
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "PutTargetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTargetsByRule = {
  type t;
  type request = {
@as("Limit") limit: limitMax100,
@as("NextToken") nextToken: nextToken,
@as("EventBusName") eventBusName: eventBusNameOrArn,
@as("Rule") rule: option<ruleName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Targets") targets: targetList
}
  @module("@aws-sdk/client-events") @new external new_: (Js.Promise.t<request>) => t = "ListTargetsByRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
