type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type webhookUrl = string
type webhookName = string
type webhookLastTriggered = Js.Date.t;
type webhookErrorMessage = string
type webhookErrorCode = string
type webhookAuthenticationType = [@as("UNAUTHENTICATED") #UNAUTHENTICATED | @as("IP") #IP | @as("GITHUB_HMAC") #GITHUB_HMAC]
type webhookAuthConfigurationSecretToken = string
type webhookAuthConfigurationAllowedIPRange = string
type webhookArn = string
type version = string
type urlTemplate = string
type url = string
type triggerType = [@as("PutActionRevision") #PutActionRevision | @as("CloudWatchEvent") #CloudWatchEvent | @as("Webhook") #Webhook | @as("PollForSourceChanges") #PollForSourceChanges | @as("StartPipelineExecution") #StartPipelineExecution | @as("CreatePipeline") #CreatePipeline]
type triggerDetail = string
type amazonawsTimestamp = Js.Date.t;
type time = Js.Date.t;
type thirdPartyJobId = string
type tagValue = string
type tagKey = string
type amazonawsString = string
type stopPipelineExecutionReason = string
type stageTransitionType = [@as("Outbound") #Outbound | @as("Inbound") #Inbound]
type stageRetryMode = [@as("FAILED_ACTIONS") #FAILED_ACTIONS]
type stageName = string
type stageExecutionStatus = [@as("Succeeded") #Succeeded | @as("Stopping") #Stopping | @as("Stopped") #Stopped | @as("Failed") #Failed | @as("InProgress") #InProgress | @as("Cancelled") #Cancelled]
type sessionToken = string
type servicePrincipal = string
type secretAccessKey = string
type s3ObjectKey = string
type s3Key = string
type s3BucketName = string
type s3Bucket = string
type roleArn = string
type revisionSummary = string
type revisionChangeIdentifier = string
type revision = string
type resourceArn = string
type propertyDescription = string
type policyStatementsTemplate = string
type pipelineVersion = int;
type pipelineName = string
type pipelineExecutionStatusSummary = string
type pipelineExecutionStatus = [@as("Failed") #Failed | @as("Superseded") #Superseded | @as("Succeeded") #Succeeded | @as("Stopping") #Stopping | @as("Stopped") #Stopped | @as("InProgress") #InProgress | @as("Cancelled") #Cancelled]
type pipelineExecutionId = string
type pipelineArn = string
type percentage = int;
type outputVariablesValue = string
type outputVariablesKey = string
type nonce = string
type nextToken = string
type minimumArtifactCount = int;
type minimumActionTypeArtifactCount = int;
type message = string
type maximumArtifactCount = int;
type maximumActionTypeArtifactCount = int;
type maxResults = int;
type maxPipelines = int;
type maxBatchSize = int;
type matchEquals = string
type lastUpdatedBy = string
type lastChangedBy = string
type lastChangedAt = Js.Date.t;
type lambdaFunctionArn = string
type jsonPath = string
type jobTimeout = int;
type jobStatus = [@as("Failed") #Failed | @as("Succeeded") #Succeeded | @as("TimedOut") #TimedOut | @as("InProgress") #InProgress | @as("Dispatched") #Dispatched | @as("Queued") #Queued | @as("Created") #Created]
type jobId = string
type failureType = [@as("SystemUnavailable") #SystemUnavailable | @as("RevisionUnavailable") #RevisionUnavailable | @as("RevisionOutOfSync") #RevisionOutOfSync | @as("PermissionError") #PermissionError | @as("ConfigurationError") #ConfigurationError | @as("JobFailed") #JobFailed]
type externalExecutionSummary = string
type externalExecutionId = string
type executorType = [@as("Lambda") #Lambda | @as("JobWorker") #JobWorker]
type executionSummary = string
type executionId = string
type encryptionKeyType = [@as("KMS") #KMS]
type encryptionKeyId = string
type enabled = bool;
type disabledReason = string
type description = string
type continuationToken = string
type code = string
type clientToken = string
type clientRequestToken = string
type clientId = string
type amazonawsBoolean = bool;
type blockerType = [@as("Schedule") #Schedule]
type blockerName = string
type artifactStoreType = [@as("S3") #S3]
type artifactStoreLocation = string
type artifactName = string
type artifactLocationType = [@as("S3") #S3]
type approvalToken = string
type approvalSummary = string
type approvalStatus = [@as("Rejected") #Rejected | @as("Approved") #Approved]
type allowedAccount = string
type actionTypeOwner = string
type actionTypeDescription = string
type actionRunOrder = int;
type actionProvider = string
type actionOwner = [@as("Custom") #Custom | @as("ThirdParty") #ThirdParty | @as("AWS") #AWS]
type actionNamespace = string
type actionName = string
type actionExecutionToken = string
type actionExecutionStatus = [@as("Failed") #Failed | @as("Succeeded") #Succeeded | @as("Abandoned") #Abandoned | @as("InProgress") #InProgress]
type actionExecutionId = string
type actionConfigurationValue = string
type actionConfigurationQueryableValue = string
type actionConfigurationPropertyType = [@as("Boolean") #Boolean | @as("Number") #Number | @as("String") #String]
type actionConfigurationKey = string
type actionCategory = [@as("Approval") #Approval | @as("Invoke") #Invoke | @as("Test") #Test | @as("Deploy") #Deploy | @as("Build") #Build | @as("Source") #Source]
type accountId = string
type accessKeyId = string
type aWSRegionName = string
type webhookFilterRule = {
@as("matchEquals") matchEquals: matchEquals,
@as("jsonPath") jsonPath: option<jsonPath>
}
type webhookAuthConfiguration = {
@as("SecretToken") secretToken: webhookAuthConfigurationSecretToken,
@as("AllowedIPRange") allowedIPRange: webhookAuthConfigurationAllowedIPRange
}
type transitionState = {
@as("disabledReason") disabledReason: disabledReason,
@as("lastChangedAt") lastChangedAt: lastChangedAt,
@as("lastChangedBy") lastChangedBy: lastChangedBy,
@as("enabled") enabled: enabled
}
type thirdPartyJob = {
@as("jobId") jobId: jobId,
@as("clientId") clientId: clientId
}
type tagKeyList = array<tagKey>
type tag = {
@as("value") value: option<tagValue>,
@as("key") key: option<tagKey>
}
type stopExecutionTrigger = {
@as("reason") reason: stopPipelineExecutionReason
}
type stageExecution = {
@as("status") status: option<stageExecutionStatus>,
@as("pipelineExecutionId") pipelineExecutionId: option<pipelineExecutionId>
}
type stageContext = {
@as("name") name: stageName
}
type sourceRevision = {
@as("revisionUrl") revisionUrl: url,
@as("revisionSummary") revisionSummary: revisionSummary,
@as("revisionId") revisionId: revision,
@as("actionName") actionName: option<actionName>
}
type s3Location = {
@as("key") key: s3Key,
@as("bucket") bucket: s3Bucket
}
type s3ArtifactLocation = {
@as("objectKey") objectKey: option<s3ObjectKey>,
@as("bucketName") bucketName: option<s3BucketName>
}
type resolvedActionConfigurationMap = Js.Dict.t< amazonawsString>
type queryParamMap = Js.Dict.t< actionConfigurationQueryableValue>
type pollingServicePrincipalList = array<servicePrincipal>
type pollingAccountList = array<accountId>
type pipelineSummary = {
@as("updated") updated: amazonawsTimestamp,
@as("created") created: amazonawsTimestamp,
@as("version") version: pipelineVersion,
@as("name") name: pipelineName
}
type pipelineMetadata = {
@as("updated") updated: amazonawsTimestamp,
@as("created") created: amazonawsTimestamp,
@as("pipelineArn") pipelineArn: pipelineArn
}
type outputVariablesMap = Js.Dict.t< outputVariablesValue>
type outputArtifact = {
@as("name") name: option<artifactName>
}
type lambdaExecutorConfiguration = {
@as("lambdaFunctionArn") lambdaFunctionArn: option<lambdaFunctionArn>
}
type inputArtifact = {
@as("name") name: option<artifactName>
}
type failureDetails = {
@as("externalExecutionId") externalExecutionId: executionId,
@as("message") message: option<message>,
@as("type") type_: option<failureType>
}
type executionTrigger = {
@as("triggerDetail") triggerDetail: triggerDetail,
@as("triggerType") triggerType: triggerType
}
type executionDetails = {
@as("percentComplete") percentComplete: percentage,
@as("externalExecutionId") externalExecutionId: executionId,
@as("summary") summary: executionSummary
}
type errorDetails = {
@as("message") message: message,
@as("code") code: code
}
type encryptionKey = {
@as("type") type_: option<encryptionKeyType>,
@as("id") id: option<encryptionKeyId>
}
type currentRevision = {
@as("revisionSummary") revisionSummary: revisionSummary,
@as("created") created: time,
@as("changeIdentifier") changeIdentifier: option<revisionChangeIdentifier>,
@as("revision") revision: option<revision>
}
type blockerDeclaration = {
@as("type") type_: option<blockerType>,
@as("name") name: option<blockerName>
}
type artifactRevision = {
@as("revisionUrl") revisionUrl: url,
@as("created") created: amazonawsTimestamp,
@as("revisionSummary") revisionSummary: revisionSummary,
@as("revisionChangeIdentifier") revisionChangeIdentifier: revisionChangeIdentifier,
@as("revisionId") revisionId: revision,
@as("name") name: artifactName
}
type artifactDetails = {
@as("maximumCount") maximumCount: option<maximumArtifactCount>,
@as("minimumCount") minimumCount: option<minimumArtifactCount>
}
type approvalResult = {
@as("status") status: option<approvalStatus>,
@as("summary") summary: option<approvalSummary>
}
type allowedAccounts = array<allowedAccount>
type actionTypeUrls = {
@as("revisionUrlTemplate") revisionUrlTemplate: urlTemplate,
@as("executionUrlTemplate") executionUrlTemplate: urlTemplate,
@as("entityUrlTemplate") entityUrlTemplate: urlTemplate,
@as("configurationUrl") configurationUrl: url
}
type actionTypeSettings = {
@as("revisionUrlTemplate") revisionUrlTemplate: urlTemplate,
@as("executionUrlTemplate") executionUrlTemplate: urlTemplate,
@as("entityUrlTemplate") entityUrlTemplate: urlTemplate,
@as("thirdPartyConfigurationUrl") thirdPartyConfigurationUrl: url
}
type actionTypeProperty = {
@as("description") description: propertyDescription,
@as("queryable") queryable: amazonawsBoolean,
@as("noEcho") noEcho: option<amazonawsBoolean>,
@as("key") key: option<amazonawsBoolean>,
@as("optional") optional: option<amazonawsBoolean>,
@as("name") name: option<actionConfigurationKey>
}
type actionTypeIdentifier = {
@as("version") version: option<version>,
@as("provider") provider: option<actionProvider>,
@as("owner") owner: option<actionTypeOwner>,
@as("category") category: option<actionCategory>
}
type actionTypeId = {
@as("version") version: option<version>,
@as("provider") provider: option<actionProvider>,
@as("owner") owner: option<actionOwner>,
@as("category") category: option<actionCategory>
}
type actionTypeArtifactDetails = {
@as("maximumCount") maximumCount: option<maximumActionTypeArtifactCount>,
@as("minimumCount") minimumCount: option<minimumActionTypeArtifactCount>
}
type actionRevision = {
@as("created") created: option<amazonawsTimestamp>,
@as("revisionChangeId") revisionChangeId: option<revisionChangeIdentifier>,
@as("revisionId") revisionId: option<revision>
}
type actionExecutionResult = {
@as("externalExecutionUrl") externalExecutionUrl: url,
@as("externalExecutionSummary") externalExecutionSummary: externalExecutionSummary,
@as("externalExecutionId") externalExecutionId: externalExecutionId
}
type actionExecutionFilter = {
@as("pipelineExecutionId") pipelineExecutionId: pipelineExecutionId
}
type actionContext = {
@as("actionExecutionId") actionExecutionId: actionExecutionId,
@as("name") name: actionName
}
type actionConfigurationProperty = {
@as("type") type_: actionConfigurationPropertyType,
@as("description") description: description,
@as("queryable") queryable: amazonawsBoolean,
@as("secret") secret: option<amazonawsBoolean>,
@as("key") key: option<amazonawsBoolean>,
@as("required") required: option<amazonawsBoolean>,
@as("name") name: option<actionConfigurationKey>
}
type actionConfigurationMap = Js.Dict.t< actionConfigurationValue>
type aWSSessionCredentials = {
@as("sessionToken") sessionToken: option<sessionToken>,
@as("secretAccessKey") secretAccessKey: option<secretAccessKey>,
@as("accessKeyId") accessKeyId: option<accessKeyId>
}
type webhookFilters = array<webhookFilterRule>
type thirdPartyJobList = array<thirdPartyJob>
type tagList = array<tag>
type stageBlockerDeclarationList = array<blockerDeclaration>
type sourceRevisionList = array<sourceRevision>
type pipelineList = array<pipelineSummary>
type pipelineContext = {
@as("pipelineExecutionId") pipelineExecutionId: pipelineExecutionId,
@as("pipelineArn") pipelineArn: pipelineArn,
@as("action") action: actionContext,
@as("stage") stage: stageContext,
@as("pipelineName") pipelineName: pipelineName
}
type outputArtifactList = array<outputArtifact>
type jobWorkerExecutorConfiguration = {
@as("pollingServicePrincipals") pollingServicePrincipals: pollingServicePrincipalList,
@as("pollingAccounts") pollingAccounts: pollingAccountList
}
type inputArtifactList = array<inputArtifact>
type artifactStore = {
@as("encryptionKey") encryptionKey: encryptionKey,
@as("location") location: option<artifactStoreLocation>,
@as("type") type_: option<artifactStoreType>
}
type artifactRevisionList = array<artifactRevision>
type artifactLocation = {
@as("s3Location") s3Location: s3ArtifactLocation,
@as("type") type_: artifactLocationType
}
type artifactDetail = {
@as("s3location") s3location: s3Location,
@as("name") name: artifactName
}
type actionTypeProperties = array<actionTypeProperty>
type actionTypePermissions = {
@as("allowedAccounts") allowedAccounts: option<allowedAccounts>
}
type actionExecution = {
@as("errorDetails") errorDetails: errorDetails,
@as("percentComplete") percentComplete: percentage,
@as("externalExecutionUrl") externalExecutionUrl: url,
@as("externalExecutionId") externalExecutionId: executionId,
@as("lastUpdatedBy") lastUpdatedBy: lastUpdatedBy,
@as("token") token: actionExecutionToken,
@as("lastStatusChange") lastStatusChange: amazonawsTimestamp,
@as("summary") summary: executionSummary,
@as("status") status: actionExecutionStatus,
@as("actionExecutionId") actionExecutionId: actionExecutionId
}
type actionConfigurationPropertyList = array<actionConfigurationProperty>
type actionConfiguration = {
@as("configuration") configuration: actionConfigurationMap
}
type webhookDefinition = {
@as("authenticationConfiguration") authenticationConfiguration: option<webhookAuthConfiguration>,
@as("authentication") authentication: option<webhookAuthenticationType>,
@as("filters") filters: option<webhookFilters>,
@as("targetAction") targetAction: option<actionName>,
@as("targetPipeline") targetPipeline: option<pipelineName>,
@as("name") name: option<webhookName>
}
type pipelineExecutionSummary = {
@as("stopTrigger") stopTrigger: stopExecutionTrigger,
@as("trigger") trigger: executionTrigger,
@as("sourceRevisions") sourceRevisions: sourceRevisionList,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("startTime") startTime: amazonawsTimestamp,
@as("status") status: pipelineExecutionStatus,
@as("pipelineExecutionId") pipelineExecutionId: pipelineExecutionId
}
type pipelineExecution = {
@as("artifactRevisions") artifactRevisions: artifactRevisionList,
@as("statusSummary") statusSummary: pipelineExecutionStatusSummary,
@as("status") status: pipelineExecutionStatus,
@as("pipelineExecutionId") pipelineExecutionId: pipelineExecutionId,
@as("pipelineVersion") pipelineVersion: pipelineVersion,
@as("pipelineName") pipelineName: pipelineName
}
type executorConfiguration = {
@as("jobWorkerExecutorConfiguration") jobWorkerExecutorConfiguration: jobWorkerExecutorConfiguration,
@as("lambdaExecutorConfiguration") lambdaExecutorConfiguration: lambdaExecutorConfiguration
}
type artifactStoreMap = Js.Dict.t< artifactStore>
type artifactDetailList = array<artifactDetail>
type artifact = {
@as("location") location: artifactLocation,
@as("revision") revision: revision,
@as("name") name: artifactName
}
type actionType = {
@as("outputArtifactDetails") outputArtifactDetails: option<artifactDetails>,
@as("inputArtifactDetails") inputArtifactDetails: option<artifactDetails>,
@as("actionConfigurationProperties") actionConfigurationProperties: actionConfigurationPropertyList,
@as("settings") settings: actionTypeSettings,
@as("id") id: option<actionTypeId>
}
type actionState = {
@as("revisionUrl") revisionUrl: url,
@as("entityUrl") entityUrl: url,
@as("latestExecution") latestExecution: actionExecution,
@as("currentRevision") currentRevision: actionRevision,
@as("actionName") actionName: actionName
}
type actionDeclaration = {
@as("namespace") namespace: actionNamespace,
@as("region") region: aWSRegionName,
@as("roleArn") roleArn: roleArn,
@as("inputArtifacts") inputArtifacts: inputArtifactList,
@as("outputArtifacts") outputArtifacts: outputArtifactList,
@as("configuration") configuration: actionConfigurationMap,
@as("runOrder") runOrder: actionRunOrder,
@as("actionTypeId") actionTypeId: option<actionTypeId>,
@as("name") name: option<actionName>
}
type stageActionDeclarationList = array<actionDeclaration>
type pipelineExecutionSummaryList = array<pipelineExecutionSummary>
type listWebhookItem = {
@as("tags") tags: tagList,
@as("arn") arn: webhookArn,
@as("lastTriggered") lastTriggered: webhookLastTriggered,
@as("errorCode") errorCode: webhookErrorCode,
@as("errorMessage") errorMessage: webhookErrorMessage,
@as("url") url: option<webhookUrl>,
@as("definition") definition: option<webhookDefinition>
}
type artifactList = array<artifact>
type actionTypeList = array<actionType>
type actionTypeExecutor = {
@as("jobTimeout") jobTimeout: jobTimeout,
@as("policyStatementsTemplate") policyStatementsTemplate: policyStatementsTemplate,
@as("type") type_: option<executorType>,
@as("configuration") configuration: option<executorConfiguration>
}
type actionStateList = array<actionState>
type actionExecutionOutput = {
@as("outputVariables") outputVariables: outputVariablesMap,
@as("executionResult") executionResult: actionExecutionResult,
@as("outputArtifacts") outputArtifacts: artifactDetailList
}
type actionExecutionInput = {
@as("namespace") namespace: actionNamespace,
@as("inputArtifacts") inputArtifacts: artifactDetailList,
@as("region") region: aWSRegionName,
@as("roleArn") roleArn: roleArn,
@as("resolvedConfiguration") resolvedConfiguration: resolvedActionConfigurationMap,
@as("configuration") configuration: actionConfigurationMap,
@as("actionTypeId") actionTypeId: actionTypeId
}
type webhookList = array<listWebhookItem>
type thirdPartyJobData = {
@as("encryptionKey") encryptionKey: encryptionKey,
@as("continuationToken") continuationToken: continuationToken,
@as("artifactCredentials") artifactCredentials: aWSSessionCredentials,
@as("outputArtifacts") outputArtifacts: artifactList,
@as("inputArtifacts") inputArtifacts: artifactList,
@as("pipelineContext") pipelineContext: pipelineContext,
@as("actionConfiguration") actionConfiguration: actionConfiguration,
@as("actionTypeId") actionTypeId: actionTypeId
}
type stageState = {
@as("latestExecution") latestExecution: stageExecution,
@as("actionStates") actionStates: actionStateList,
@as("inboundTransitionState") inboundTransitionState: transitionState,
@as("inboundExecution") inboundExecution: stageExecution,
@as("stageName") stageName: stageName
}
type stageDeclaration = {
@as("actions") actions: option<stageActionDeclarationList>,
@as("blockers") blockers: stageBlockerDeclarationList,
@as("name") name: option<stageName>
}
type jobData = {
@as("encryptionKey") encryptionKey: encryptionKey,
@as("continuationToken") continuationToken: continuationToken,
@as("artifactCredentials") artifactCredentials: aWSSessionCredentials,
@as("outputArtifacts") outputArtifacts: artifactList,
@as("inputArtifacts") inputArtifacts: artifactList,
@as("pipelineContext") pipelineContext: pipelineContext,
@as("actionConfiguration") actionConfiguration: actionConfiguration,
@as("actionTypeId") actionTypeId: actionTypeId
}
type actionTypeDeclaration = {
@as("urls") urls: actionTypeUrls,
@as("properties") properties: actionTypeProperties,
@as("permissions") permissions: actionTypePermissions,
@as("outputArtifactDetails") outputArtifactDetails: option<actionTypeArtifactDetails>,
@as("inputArtifactDetails") inputArtifactDetails: option<actionTypeArtifactDetails>,
@as("id") id: option<actionTypeIdentifier>,
@as("executor") executor: option<actionTypeExecutor>,
@as("description") description: actionTypeDescription
}
type actionExecutionDetail = {
@as("output") output: actionExecutionOutput,
@as("input") input: actionExecutionInput,
@as("status") status: actionExecutionStatus,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("startTime") startTime: amazonawsTimestamp,
@as("actionName") actionName: actionName,
@as("stageName") stageName: stageName,
@as("pipelineVersion") pipelineVersion: pipelineVersion,
@as("actionExecutionId") actionExecutionId: actionExecutionId,
@as("pipelineExecutionId") pipelineExecutionId: pipelineExecutionId
}
type thirdPartyJobDetails = {
@as("nonce") nonce: nonce,
@as("data") data: thirdPartyJobData,
@as("id") id: thirdPartyJobId
}
type stageStateList = array<stageState>
type pipelineStageDeclarationList = array<stageDeclaration>
type jobDetails = {
@as("accountId") accountId: accountId,
@as("data") data: jobData,
@as("id") id: jobId
}
type job = {
@as("accountId") accountId: accountId,
@as("nonce") nonce: nonce,
@as("data") data: jobData,
@as("id") id: jobId
}
type actionExecutionDetailList = array<actionExecutionDetail>
type pipelineDeclaration = {
@as("version") version: pipelineVersion,
@as("stages") stages: option<pipelineStageDeclarationList>,
@as("artifactStores") artifactStores: artifactStoreMap,
@as("artifactStore") artifactStore: artifactStore,
@as("roleArn") roleArn: option<roleArn>,
@as("name") name: option<pipelineName>
}
type jobList = array<job>
type clientType;
@module("@aws-sdk/client-codepipeline") @new external createClient: unit => clientType = "CodePipelineClient";
module StopPipelineExecution = {
  type t;
  type request = {
@as("reason") reason: stopPipelineExecutionReason,
@as("abandon") abandon: amazonawsBoolean,
@as("pipelineExecutionId") pipelineExecutionId: option<pipelineExecutionId>,
@as("pipelineName") pipelineName: option<pipelineName>
}
  type response = {
@as("pipelineExecutionId") pipelineExecutionId: pipelineExecutionId
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "StopPipelineExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartPipelineExecution = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("name") name: option<pipelineName>
}
  type response = {
@as("pipelineExecutionId") pipelineExecutionId: pipelineExecutionId
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "StartPipelineExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RetryStageExecution = {
  type t;
  type request = {
@as("retryMode") retryMode: option<stageRetryMode>,
@as("pipelineExecutionId") pipelineExecutionId: option<pipelineExecutionId>,
@as("stageName") stageName: option<stageName>,
@as("pipelineName") pipelineName: option<pipelineName>
}
  type response = {
@as("pipelineExecutionId") pipelineExecutionId: pipelineExecutionId
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "RetryStageExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterWebhookWithThirdParty = {
  type t;
  type request = {
@as("webhookName") webhookName: webhookName
}
  type response = unit
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "RegisterWebhookWithThirdPartyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableStageTransition = {
  type t;
  type request = {
@as("transitionType") transitionType: option<stageTransitionType>,
@as("stageName") stageName: option<stageName>,
@as("pipelineName") pipelineName: option<pipelineName>
}
  
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "EnableStageTransitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisableStageTransition = {
  type t;
  type request = {
@as("reason") reason: option<disabledReason>,
@as("transitionType") transitionType: option<stageTransitionType>,
@as("stageName") stageName: option<stageName>,
@as("pipelineName") pipelineName: option<pipelineName>
}
  
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "DisableStageTransitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeregisterWebhookWithThirdParty = {
  type t;
  type request = {
@as("webhookName") webhookName: webhookName
}
  type response = unit
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "DeregisterWebhookWithThirdPartyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteWebhook = {
  type t;
  type request = {
@as("name") name: option<webhookName>
}
  type response = unit
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "DeleteWebhookCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePipeline = {
  type t;
  type request = {
@as("name") name: option<pipelineName>
}
  
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "DeletePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCustomActionType = {
  type t;
  type request = {
@as("version") version: option<version>,
@as("provider") provider: option<actionProvider>,
@as("category") category: option<actionCategory>
}
  
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "DeleteCustomActionTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AcknowledgeThirdPartyJob = {
  type t;
  type request = {
@as("clientToken") clientToken: option<clientToken>,
@as("nonce") nonce: option<nonce>,
@as("jobId") jobId: option<thirdPartyJobId>
}
  type response = {
@as("status") status: jobStatus
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "AcknowledgeThirdPartyJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcknowledgeJob = {
  type t;
  type request = {
@as("nonce") nonce: option<nonce>,
@as("jobId") jobId: option<jobId>
}
  type response = {
@as("status") status: jobStatus
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "AcknowledgeJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutThirdPartyJobSuccessResult = {
  type t;
  type request = {
@as("executionDetails") executionDetails: executionDetails,
@as("continuationToken") continuationToken: continuationToken,
@as("currentRevision") currentRevision: currentRevision,
@as("clientToken") clientToken: option<clientToken>,
@as("jobId") jobId: option<thirdPartyJobId>
}
  
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "PutThirdPartyJobSuccessResultCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutThirdPartyJobFailureResult = {
  type t;
  type request = {
@as("failureDetails") failureDetails: option<failureDetails>,
@as("clientToken") clientToken: option<clientToken>,
@as("jobId") jobId: option<thirdPartyJobId>
}
  
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "PutThirdPartyJobFailureResultCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutJobSuccessResult = {
  type t;
  type request = {
@as("outputVariables") outputVariables: outputVariablesMap,
@as("executionDetails") executionDetails: executionDetails,
@as("continuationToken") continuationToken: continuationToken,
@as("currentRevision") currentRevision: currentRevision,
@as("jobId") jobId: option<jobId>
}
  
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "PutJobSuccessResultCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutJobFailureResult = {
  type t;
  type request = {
@as("failureDetails") failureDetails: option<failureDetails>,
@as("jobId") jobId: option<jobId>
}
  
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "PutJobFailureResultCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutApprovalResult = {
  type t;
  type request = {
@as("token") token: option<approvalToken>,
@as("result") result: option<approvalResult>,
@as("actionName") actionName: option<actionName>,
@as("stageName") stageName: option<stageName>,
@as("pipelineName") pipelineName: option<pipelineName>
}
  type response = {
@as("approvedAt") approvedAt: amazonawsTimestamp
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "PutApprovalResultCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutActionRevision = {
  type t;
  type request = {
@as("actionRevision") actionRevision: option<actionRevision>,
@as("actionName") actionName: option<actionName>,
@as("stageName") stageName: option<stageName>,
@as("pipelineName") pipelineName: option<pipelineName>
}
  type response = {
@as("pipelineExecutionId") pipelineExecutionId: pipelineExecutionId,
@as("newRevision") newRevision: amazonawsBoolean
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "PutActionRevisionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagList>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PollForThirdPartyJobs = {
  type t;
  type request = {
@as("maxBatchSize") maxBatchSize: maxBatchSize,
@as("actionTypeId") actionTypeId: option<actionTypeId>
}
  type response = {
@as("jobs") jobs: thirdPartyJobList
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "PollForThirdPartyJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("tags") tags: tagList
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPipelines = {
  type t;
  type request = {
@as("maxResults") maxResults: maxPipelines,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("pipelines") pipelines: pipelineList
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "ListPipelinesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPipelineExecution = {
  type t;
  type request = {
@as("pipelineExecutionId") pipelineExecutionId: option<pipelineExecutionId>,
@as("pipelineName") pipelineName: option<pipelineName>
}
  type response = {
@as("pipelineExecution") pipelineExecution: pipelineExecution
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "GetPipelineExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCustomActionType = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("outputArtifactDetails") outputArtifactDetails: option<artifactDetails>,
@as("inputArtifactDetails") inputArtifactDetails: option<artifactDetails>,
@as("configurationProperties") configurationProperties: actionConfigurationPropertyList,
@as("settings") settings: actionTypeSettings,
@as("version") version: option<version>,
@as("provider") provider: option<actionProvider>,
@as("category") category: option<actionCategory>
}
  type response = {
@as("tags") tags: tagList,
@as("actionType") actionType: option<actionType>
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "CreateCustomActionTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutWebhook = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("webhook") webhook: option<webhookDefinition>
}
  type response = {
@as("webhook") webhook: listWebhookItem
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "PutWebhookCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPipelineExecutions = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("pipelineName") pipelineName: option<pipelineName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("pipelineExecutionSummaries") pipelineExecutionSummaries: pipelineExecutionSummaryList
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "ListPipelineExecutionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListActionTypes = {
  type t;
  type request = {
@as("regionFilter") regionFilter: aWSRegionName,
@as("nextToken") nextToken: nextToken,
@as("actionOwnerFilter") actionOwnerFilter: actionOwner
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("actionTypes") actionTypes: option<actionTypeList>
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "ListActionTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateActionType = {
  type t;
  type request = {
@as("actionType") actionType: option<actionTypeDeclaration>
}
  
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "UpdateActionTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListWebhooks = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("webhooks") webhooks: webhookList
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "ListWebhooksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetActionType = {
  type t;
  type request = {
@as("version") version: option<version>,
@as("provider") provider: option<actionProvider>,
@as("owner") owner: option<actionTypeOwner>,
@as("category") category: option<actionCategory>
}
  type response = {
@as("actionType") actionType: actionTypeDeclaration
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "GetActionTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListActionExecutions = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("filter") filter: actionExecutionFilter,
@as("pipelineName") pipelineName: option<pipelineName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("actionExecutionDetails") actionExecutionDetails: actionExecutionDetailList
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "ListActionExecutionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetThirdPartyJobDetails = {
  type t;
  type request = {
@as("clientToken") clientToken: option<clientToken>,
@as("jobId") jobId: option<thirdPartyJobId>
}
  type response = {
@as("jobDetails") jobDetails: thirdPartyJobDetails
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "GetThirdPartyJobDetailsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPipelineState = {
  type t;
  type request = {
@as("name") name: option<pipelineName>
}
  type response = {
@as("updated") updated: amazonawsTimestamp,
@as("created") created: amazonawsTimestamp,
@as("stageStates") stageStates: stageStateList,
@as("pipelineVersion") pipelineVersion: pipelineVersion,
@as("pipelineName") pipelineName: pipelineName
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "GetPipelineStateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJobDetails = {
  type t;
  type request = {
@as("jobId") jobId: option<jobId>
}
  type response = {
@as("jobDetails") jobDetails: jobDetails
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "GetJobDetailsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePipeline = {
  type t;
  type request = {
@as("pipeline") pipeline: option<pipelineDeclaration>
}
  type response = {
@as("pipeline") pipeline: pipelineDeclaration
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "UpdatePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PollForJobs = {
  type t;
  type request = {
@as("queryParam") queryParam: queryParamMap,
@as("maxBatchSize") maxBatchSize: maxBatchSize,
@as("actionTypeId") actionTypeId: option<actionTypeId>
}
  type response = {
@as("jobs") jobs: jobList
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "PollForJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPipeline = {
  type t;
  type request = {
@as("version") version: pipelineVersion,
@as("name") name: option<pipelineName>
}
  type response = {
@as("metadata") metadata: pipelineMetadata,
@as("pipeline") pipeline: pipelineDeclaration
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "GetPipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePipeline = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("pipeline") pipeline: option<pipelineDeclaration>
}
  type response = {
@as("tags") tags: tagList,
@as("pipeline") pipeline: pipelineDeclaration
}
  @module("@aws-sdk/client-codepipeline") @new external new_: (request) => t = "CreatePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
