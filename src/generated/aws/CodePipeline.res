type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-codepipeline") @new
external createClient: unit => awsServiceClient = "CodePipelineClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type webhookUrl = string
type webhookName = string
type webhookLastTriggered = Js.Date.t
type webhookErrorMessage = string
type webhookErrorCode = string
type webhookAuthenticationType = [
  | @as("UNAUTHENTICATED") #UNAUTHENTICATED
  | @as("IP") #IP
  | @as("GITHUB_HMAC") #GITHUB_HMAC
]
type webhookAuthConfigurationSecretToken = string
type webhookAuthConfigurationAllowedIPRange = string
type webhookArn = string
type version = string
type urlTemplate = string
type url = string
type triggerType = [
  | @as("PutActionRevision") #PutActionRevision
  | @as("CloudWatchEvent") #CloudWatchEvent
  | @as("Webhook") #Webhook
  | @as("PollForSourceChanges") #PollForSourceChanges
  | @as("StartPipelineExecution") #StartPipelineExecution
  | @as("CreatePipeline") #CreatePipeline
]
type triggerDetail = string
type timestamp_ = Js.Date.t
type time = Js.Date.t
type thirdPartyJobId = string
type tagValue = string
type tagKey = string
type string_ = string
type stopPipelineExecutionReason = string
type stageTransitionType = [@as("Outbound") #Outbound | @as("Inbound") #Inbound]
type stageRetryMode = [@as("FAILED_ACTIONS") #FAILED_ACTIONS]
type stageName = string
type stageExecutionStatus = [
  | @as("Succeeded") #Succeeded
  | @as("Stopping") #Stopping
  | @as("Stopped") #Stopped
  | @as("Failed") #Failed
  | @as("InProgress") #InProgress
  | @as("Cancelled") #Cancelled
]
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
type pipelineVersion = int
type pipelineName = string
type pipelineExecutionStatusSummary = string
type pipelineExecutionStatus = [
  | @as("Failed") #Failed
  | @as("Superseded") #Superseded
  | @as("Succeeded") #Succeeded
  | @as("Stopping") #Stopping
  | @as("Stopped") #Stopped
  | @as("InProgress") #InProgress
  | @as("Cancelled") #Cancelled
]
type pipelineExecutionId = string
type pipelineArn = string
type percentage = int
type outputVariablesValue = string
type outputVariablesKey = string
type nonce = string
type nextToken = string
type minimumArtifactCount = int
type minimumActionTypeArtifactCount = int
type message = string
type maximumArtifactCount = int
type maximumActionTypeArtifactCount = int
type maxResults = int
type maxPipelines = int
type maxBatchSize = int
type matchEquals = string
type lastUpdatedBy = string
type lastChangedBy = string
type lastChangedAt = Js.Date.t
type lambdaFunctionArn = string
type jsonPath = string
type jobTimeout = int
type jobStatus = [
  | @as("Failed") #Failed
  | @as("Succeeded") #Succeeded
  | @as("TimedOut") #TimedOut
  | @as("InProgress") #InProgress
  | @as("Dispatched") #Dispatched
  | @as("Queued") #Queued
  | @as("Created") #Created
]
type jobId = string
type failureType = [
  | @as("SystemUnavailable") #SystemUnavailable
  | @as("RevisionUnavailable") #RevisionUnavailable
  | @as("RevisionOutOfSync") #RevisionOutOfSync
  | @as("PermissionError") #PermissionError
  | @as("ConfigurationError") #ConfigurationError
  | @as("JobFailed") #JobFailed
]
type externalExecutionSummary = string
type externalExecutionId = string
type executorType = [@as("Lambda") #Lambda | @as("JobWorker") #JobWorker]
type executionSummary = string
type executionId = string
type encryptionKeyType = [@as("KMS") #KMS]
type encryptionKeyId = string
type enabled = bool
type disabledReason = string
type description = string
type continuationToken = string
type code = string
type clientToken = string
type clientRequestToken = string
type clientId = string
type boolean_ = bool
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
type actionRunOrder = int
type actionProvider = string
type actionOwner = [@as("Custom") #Custom | @as("ThirdParty") #ThirdParty | @as("AWS") #AWS]
type actionNamespace = string
type actionName = string
type actionExecutionToken = string
type actionExecutionStatus = [
  | @as("Failed") #Failed
  | @as("Succeeded") #Succeeded
  | @as("Abandoned") #Abandoned
  | @as("InProgress") #InProgress
]
type actionExecutionId = string
type actionConfigurationValue = string
type actionConfigurationQueryableValue = string
type actionConfigurationPropertyType = [
  | @as("Boolean") #Boolean
  | @as("Number") #Number
  | @as("String") #String
]
type actionConfigurationKey = string
type actionCategory = [
  | @as("Approval") #Approval
  | @as("Invoke") #Invoke
  | @as("Test") #Test
  | @as("Deploy") #Deploy
  | @as("Build") #Build
  | @as("Source") #Source
]
type accountId = string
type accessKeyId = string
type awsregionName = string
type webhookFilterRule = {
  matchEquals: option<matchEquals>,
  jsonPath: jsonPath,
}
type webhookAuthConfiguration = {
  @as("SecretToken") secretToken: option<webhookAuthConfigurationSecretToken>,
  @as("AllowedIPRange") allowedIPRange: option<webhookAuthConfigurationAllowedIPRange>,
}
type transitionState = {
  disabledReason: option<disabledReason>,
  lastChangedAt: option<lastChangedAt>,
  lastChangedBy: option<lastChangedBy>,
  enabled: option<enabled>,
}
type thirdPartyJob = {
  jobId: option<jobId>,
  clientId: option<clientId>,
}
type tagKeyList = array<tagKey>
type tag = {
  value: tagValue,
  key: tagKey,
}
type stopExecutionTrigger = {reason: option<stopPipelineExecutionReason>}
type stageExecution = {
  status: stageExecutionStatus,
  pipelineExecutionId: pipelineExecutionId,
}
type stageContext = {name: option<stageName>}
type sourceRevision = {
  revisionUrl: option<url>,
  revisionSummary: option<revisionSummary>,
  revisionId: option<revision>,
  actionName: actionName,
}
type s3Location = {
  key: option<s3Key>,
  bucket: option<s3Bucket>,
}
type s3ArtifactLocation = {
  objectKey: s3ObjectKey,
  bucketName: s3BucketName,
}
type resolvedActionConfigurationMap = Js.Dict.t<string_>
type queryParamMap = Js.Dict.t<actionConfigurationQueryableValue>
type pollingServicePrincipalList = array<servicePrincipal>
type pollingAccountList = array<accountId>
type pipelineSummary = {
  updated: option<timestamp_>,
  created: option<timestamp_>,
  version: option<pipelineVersion>,
  name: option<pipelineName>,
}
type pipelineMetadata = {
  updated: option<timestamp_>,
  created: option<timestamp_>,
  pipelineArn: option<pipelineArn>,
}
type outputVariablesMap = Js.Dict.t<outputVariablesValue>
type outputArtifact = {name: artifactName}
type lambdaExecutorConfiguration = {lambdaFunctionArn: lambdaFunctionArn}
type inputArtifact = {name: artifactName}
type failureDetails = {
  externalExecutionId: option<executionId>,
  message: message,
  @as("type") type_: failureType,
}
type executionTrigger = {
  triggerDetail: option<triggerDetail>,
  triggerType: option<triggerType>,
}
type executionDetails = {
  percentComplete: option<percentage>,
  externalExecutionId: option<executionId>,
  summary: option<executionSummary>,
}
type errorDetails = {
  message: option<message>,
  code: option<code>,
}
type encryptionKey = {
  @as("type") type_: encryptionKeyType,
  id: encryptionKeyId,
}
type currentRevision = {
  revisionSummary: option<revisionSummary>,
  created: option<time>,
  changeIdentifier: revisionChangeIdentifier,
  revision: revision,
}
type blockerDeclaration = {
  @as("type") type_: blockerType,
  name: blockerName,
}
type artifactRevision = {
  revisionUrl: option<url>,
  created: option<timestamp_>,
  revisionSummary: option<revisionSummary>,
  revisionChangeIdentifier: option<revisionChangeIdentifier>,
  revisionId: option<revision>,
  name: option<artifactName>,
}
type artifactDetails = {
  maximumCount: maximumArtifactCount,
  minimumCount: minimumArtifactCount,
}
type approvalResult = {
  status: approvalStatus,
  summary: approvalSummary,
}
type allowedAccounts = array<allowedAccount>
type actionTypeUrls = {
  revisionUrlTemplate: option<urlTemplate>,
  executionUrlTemplate: option<urlTemplate>,
  entityUrlTemplate: option<urlTemplate>,
  configurationUrl: option<url>,
}
type actionTypeSettings = {
  revisionUrlTemplate: option<urlTemplate>,
  executionUrlTemplate: option<urlTemplate>,
  entityUrlTemplate: option<urlTemplate>,
  thirdPartyConfigurationUrl: option<url>,
}
type actionTypeProperty = {
  description: option<propertyDescription>,
  queryable: option<boolean_>,
  noEcho: boolean_,
  key: boolean_,
  optional: boolean_,
  name: actionConfigurationKey,
}
type actionTypeIdentifier = {
  version: version,
  provider: actionProvider,
  owner: actionTypeOwner,
  category: actionCategory,
}
type actionTypeId = {
  version: version,
  provider: actionProvider,
  owner: actionOwner,
  category: actionCategory,
}
type actionTypeArtifactDetails = {
  maximumCount: maximumActionTypeArtifactCount,
  minimumCount: minimumActionTypeArtifactCount,
}
type actionRevision = {
  created: timestamp_,
  revisionChangeId: revisionChangeIdentifier,
  revisionId: revision,
}
type actionExecutionResult = {
  externalExecutionUrl: option<url>,
  externalExecutionSummary: option<externalExecutionSummary>,
  externalExecutionId: option<externalExecutionId>,
}
type actionExecutionFilter = {pipelineExecutionId: option<pipelineExecutionId>}
type actionContext = {
  actionExecutionId: option<actionExecutionId>,
  name: option<actionName>,
}
type actionConfigurationProperty = {
  @as("type") type_: option<actionConfigurationPropertyType>,
  description: option<description>,
  queryable: option<boolean_>,
  secret: boolean_,
  key: boolean_,
  required: boolean_,
  name: actionConfigurationKey,
}
type actionConfigurationMap = Js.Dict.t<actionConfigurationValue>
type awssessionCredentials = {
  sessionToken: sessionToken,
  secretAccessKey: secretAccessKey,
  accessKeyId: accessKeyId,
}
type webhookFilters = array<webhookFilterRule>
type thirdPartyJobList = array<thirdPartyJob>
type tagList_ = array<tag>
type stageBlockerDeclarationList = array<blockerDeclaration>
type sourceRevisionList = array<sourceRevision>
type pipelineList = array<pipelineSummary>
type pipelineContext = {
  pipelineExecutionId: option<pipelineExecutionId>,
  pipelineArn: option<pipelineArn>,
  action: option<actionContext>,
  stage: option<stageContext>,
  pipelineName: option<pipelineName>,
}
type outputArtifactList = array<outputArtifact>
type jobWorkerExecutorConfiguration = {
  pollingServicePrincipals: option<pollingServicePrincipalList>,
  pollingAccounts: option<pollingAccountList>,
}
type inputArtifactList = array<inputArtifact>
type artifactStore = {
  encryptionKey: option<encryptionKey>,
  location: artifactStoreLocation,
  @as("type") type_: artifactStoreType,
}
type artifactRevisionList = array<artifactRevision>
type artifactLocation = {
  s3Location: option<s3ArtifactLocation>,
  @as("type") type_: option<artifactLocationType>,
}
type artifactDetail = {
  s3location: option<s3Location>,
  name: option<artifactName>,
}
type actionTypeProperties = array<actionTypeProperty>
type actionTypePermissions = {allowedAccounts: allowedAccounts}
type actionExecution = {
  errorDetails: option<errorDetails>,
  percentComplete: option<percentage>,
  externalExecutionUrl: option<url>,
  externalExecutionId: option<executionId>,
  lastUpdatedBy: option<lastUpdatedBy>,
  token: option<actionExecutionToken>,
  lastStatusChange: option<timestamp_>,
  summary: option<executionSummary>,
  status: option<actionExecutionStatus>,
  actionExecutionId: option<actionExecutionId>,
}
type actionConfigurationPropertyList = array<actionConfigurationProperty>
type actionConfiguration = {configuration: option<actionConfigurationMap>}
type webhookDefinition = {
  authenticationConfiguration: webhookAuthConfiguration,
  authentication: webhookAuthenticationType,
  filters: webhookFilters,
  targetAction: actionName,
  targetPipeline: pipelineName,
  name: webhookName,
}
type pipelineExecutionSummary = {
  stopTrigger: option<stopExecutionTrigger>,
  trigger: option<executionTrigger>,
  sourceRevisions: option<sourceRevisionList>,
  lastUpdateTime: option<timestamp_>,
  startTime: option<timestamp_>,
  status: option<pipelineExecutionStatus>,
  pipelineExecutionId: option<pipelineExecutionId>,
}
type pipelineExecution = {
  artifactRevisions: option<artifactRevisionList>,
  statusSummary: option<pipelineExecutionStatusSummary>,
  status: option<pipelineExecutionStatus>,
  pipelineExecutionId: option<pipelineExecutionId>,
  pipelineVersion: option<pipelineVersion>,
  pipelineName: option<pipelineName>,
}
type executorConfiguration = {
  jobWorkerExecutorConfiguration: option<jobWorkerExecutorConfiguration>,
  lambdaExecutorConfiguration: option<lambdaExecutorConfiguration>,
}
type artifactStoreMap = Js.Dict.t<artifactStore>
type artifactDetailList = array<artifactDetail>
type artifact = {
  location: option<artifactLocation>,
  revision: option<revision>,
  name: option<artifactName>,
}
type actionType = {
  outputArtifactDetails: artifactDetails,
  inputArtifactDetails: artifactDetails,
  actionConfigurationProperties: option<actionConfigurationPropertyList>,
  settings: option<actionTypeSettings>,
  id: actionTypeId,
}
type actionState = {
  revisionUrl: option<url>,
  entityUrl: option<url>,
  latestExecution: option<actionExecution>,
  currentRevision: option<actionRevision>,
  actionName: option<actionName>,
}
type actionDeclaration = {
  namespace: option<actionNamespace>,
  region: option<awsregionName>,
  roleArn: option<roleArn>,
  inputArtifacts: option<inputArtifactList>,
  outputArtifacts: option<outputArtifactList>,
  configuration: option<actionConfigurationMap>,
  runOrder: option<actionRunOrder>,
  actionTypeId: actionTypeId,
  name: actionName,
}
type stageActionDeclarationList = array<actionDeclaration>
type pipelineExecutionSummaryList = array<pipelineExecutionSummary>
type listWebhookItem = {
  tags: option<tagList_>,
  arn: option<webhookArn>,
  lastTriggered: option<webhookLastTriggered>,
  errorCode: option<webhookErrorCode>,
  errorMessage: option<webhookErrorMessage>,
  url: webhookUrl,
  definition: webhookDefinition,
}
type artifactList = array<artifact>
type actionTypeList = array<actionType>
type actionTypeExecutor = {
  jobTimeout: option<jobTimeout>,
  policyStatementsTemplate: option<policyStatementsTemplate>,
  @as("type") type_: executorType,
  configuration: executorConfiguration,
}
type actionStateList = array<actionState>
type actionExecutionOutput = {
  outputVariables: option<outputVariablesMap>,
  executionResult: option<actionExecutionResult>,
  outputArtifacts: option<artifactDetailList>,
}
type actionExecutionInput = {
  namespace: option<actionNamespace>,
  inputArtifacts: option<artifactDetailList>,
  region: option<awsregionName>,
  roleArn: option<roleArn>,
  resolvedConfiguration: option<resolvedActionConfigurationMap>,
  configuration: option<actionConfigurationMap>,
  actionTypeId: option<actionTypeId>,
}
type webhookList = array<listWebhookItem>
type thirdPartyJobData = {
  encryptionKey: option<encryptionKey>,
  continuationToken: option<continuationToken>,
  artifactCredentials: option<awssessionCredentials>,
  outputArtifacts: option<artifactList>,
  inputArtifacts: option<artifactList>,
  pipelineContext: option<pipelineContext>,
  actionConfiguration: option<actionConfiguration>,
  actionTypeId: option<actionTypeId>,
}
type stageState = {
  latestExecution: option<stageExecution>,
  actionStates: option<actionStateList>,
  inboundTransitionState: option<transitionState>,
  inboundExecution: option<stageExecution>,
  stageName: option<stageName>,
}
type stageDeclaration = {
  actions: stageActionDeclarationList,
  blockers: option<stageBlockerDeclarationList>,
  name: stageName,
}
type jobData = {
  encryptionKey: option<encryptionKey>,
  continuationToken: option<continuationToken>,
  artifactCredentials: option<awssessionCredentials>,
  outputArtifacts: option<artifactList>,
  inputArtifacts: option<artifactList>,
  pipelineContext: option<pipelineContext>,
  actionConfiguration: option<actionConfiguration>,
  actionTypeId: option<actionTypeId>,
}
type actionTypeDeclaration = {
  urls: option<actionTypeUrls>,
  properties: option<actionTypeProperties>,
  permissions: option<actionTypePermissions>,
  outputArtifactDetails: actionTypeArtifactDetails,
  inputArtifactDetails: actionTypeArtifactDetails,
  id: actionTypeIdentifier,
  executor: actionTypeExecutor,
  description: option<actionTypeDescription>,
}
type actionExecutionDetail = {
  output: option<actionExecutionOutput>,
  input: option<actionExecutionInput>,
  status: option<actionExecutionStatus>,
  lastUpdateTime: option<timestamp_>,
  startTime: option<timestamp_>,
  actionName: option<actionName>,
  stageName: option<stageName>,
  pipelineVersion: option<pipelineVersion>,
  actionExecutionId: option<actionExecutionId>,
  pipelineExecutionId: option<pipelineExecutionId>,
}
type thirdPartyJobDetails = {
  nonce: option<nonce>,
  data: option<thirdPartyJobData>,
  id: option<thirdPartyJobId>,
}
type stageStateList = array<stageState>
type pipelineStageDeclarationList = array<stageDeclaration>
type jobDetails = {
  accountId: option<accountId>,
  data: option<jobData>,
  id: option<jobId>,
}
type job = {
  accountId: option<accountId>,
  nonce: option<nonce>,
  data: option<jobData>,
  id: option<jobId>,
}
type actionExecutionDetailList = array<actionExecutionDetail>
type pipelineDeclaration = {
  version: option<pipelineVersion>,
  stages: pipelineStageDeclarationList,
  artifactStores: option<artifactStoreMap>,
  artifactStore: option<artifactStore>,
  roleArn: roleArn,
  name: pipelineName,
}
type jobList = array<job>

module StopPipelineExecution = {
  type t
  type request = {
    reason: option<stopPipelineExecutionReason>,
    abandon: option<boolean_>,
    pipelineExecutionId: pipelineExecutionId,
    pipelineName: pipelineName,
  }
  type response = {pipelineExecutionId: option<pipelineExecutionId>}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "StopPipelineExecutionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartPipelineExecution = {
  type t
  type request = {
    clientRequestToken: option<clientRequestToken>,
    name: pipelineName,
  }
  type response = {pipelineExecutionId: option<pipelineExecutionId>}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "StartPipelineExecutionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RetryStageExecution = {
  type t
  type request = {
    retryMode: stageRetryMode,
    pipelineExecutionId: pipelineExecutionId,
    stageName: stageName,
    pipelineName: pipelineName,
  }
  type response = {pipelineExecutionId: option<pipelineExecutionId>}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "RetryStageExecutionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterWebhookWithThirdParty = {
  type t
  type request = {webhookName: option<webhookName>}
  type response = unit
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "RegisterWebhookWithThirdPartyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableStageTransition = {
  type t
  type request = {
    transitionType: stageTransitionType,
    stageName: stageName,
    pipelineName: pipelineName,
  }

  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "EnableStageTransitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableStageTransition = {
  type t
  type request = {
    reason: disabledReason,
    transitionType: stageTransitionType,
    stageName: stageName,
    pipelineName: pipelineName,
  }

  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "DisableStageTransitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeregisterWebhookWithThirdParty = {
  type t
  type request = {webhookName: option<webhookName>}
  type response = unit
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "DeregisterWebhookWithThirdPartyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWebhook = {
  type t
  type request = {name: webhookName}
  type response = unit
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "DeleteWebhookCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePipeline = {
  type t
  type request = {name: pipelineName}

  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "DeletePipelineCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCustomActionType = {
  type t
  type request = {
    version: version,
    provider: actionProvider,
    category: actionCategory,
  }

  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "DeleteCustomActionTypeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AcknowledgeThirdPartyJob = {
  type t
  type request = {
    clientToken: clientToken,
    nonce: nonce,
    jobId: thirdPartyJobId,
  }
  type response = {status: option<jobStatus>}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "AcknowledgeThirdPartyJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcknowledgeJob = {
  type t
  type request = {
    nonce: nonce,
    jobId: jobId,
  }
  type response = {status: option<jobStatus>}
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "AcknowledgeJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeyList,
    resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutThirdPartyJobSuccessResult = {
  type t
  type request = {
    executionDetails: option<executionDetails>,
    continuationToken: option<continuationToken>,
    currentRevision: option<currentRevision>,
    clientToken: clientToken,
    jobId: thirdPartyJobId,
  }

  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "PutThirdPartyJobSuccessResultCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutThirdPartyJobFailureResult = {
  type t
  type request = {
    failureDetails: failureDetails,
    clientToken: clientToken,
    jobId: thirdPartyJobId,
  }

  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "PutThirdPartyJobFailureResultCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutJobSuccessResult = {
  type t
  type request = {
    outputVariables: option<outputVariablesMap>,
    executionDetails: option<executionDetails>,
    continuationToken: option<continuationToken>,
    currentRevision: option<currentRevision>,
    jobId: jobId,
  }

  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "PutJobSuccessResultCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutJobFailureResult = {
  type t
  type request = {
    failureDetails: failureDetails,
    jobId: jobId,
  }

  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "PutJobFailureResultCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutApprovalResult = {
  type t
  type request = {
    token: approvalToken,
    result: approvalResult,
    actionName: actionName,
    stageName: stageName,
    pipelineName: pipelineName,
  }
  type response = {approvedAt: option<timestamp_>}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "PutApprovalResultCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutActionRevision = {
  type t
  type request = {
    actionRevision: actionRevision,
    actionName: actionName,
    stageName: stageName,
    pipelineName: pipelineName,
  }
  type response = {
    pipelineExecutionId: option<pipelineExecutionId>,
    newRevision: option<boolean_>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "PutActionRevisionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagList_,
    resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PollForThirdPartyJobs = {
  type t
  type request = {
    maxBatchSize: option<maxBatchSize>,
    actionTypeId: actionTypeId,
  }
  type response = {jobs: option<thirdPartyJobList>}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "PollForThirdPartyJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    resourceArn: resourceArn,
  }
  type response = {
    nextToken: option<nextToken>,
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPipelines = {
  type t
  type request = {
    maxResults: option<maxPipelines>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    pipelines: option<pipelineList>,
  }
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "ListPipelinesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPipelineExecution = {
  type t
  type request = {
    pipelineExecutionId: pipelineExecutionId,
    pipelineName: pipelineName,
  }
  type response = {pipelineExecution: option<pipelineExecution>}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "GetPipelineExecutionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCustomActionType = {
  type t
  type request = {
    tags: option<tagList_>,
    outputArtifactDetails: artifactDetails,
    inputArtifactDetails: artifactDetails,
    configurationProperties: option<actionConfigurationPropertyList>,
    settings: option<actionTypeSettings>,
    version: version,
    provider: actionProvider,
    category: actionCategory,
  }
  type response = {
    tags: option<tagList_>,
    actionType: actionType,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "CreateCustomActionTypeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutWebhook = {
  type t
  type request = {
    tags: option<tagList_>,
    webhook: webhookDefinition,
  }
  type response = {webhook: option<listWebhookItem>}
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "PutWebhookCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPipelineExecutions = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
    pipelineName: pipelineName,
  }
  type response = {
    nextToken: option<nextToken>,
    pipelineExecutionSummaries: option<pipelineExecutionSummaryList>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "ListPipelineExecutionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListActionTypes = {
  type t
  type request = {
    regionFilter: option<awsregionName>,
    nextToken: option<nextToken>,
    actionOwnerFilter: option<actionOwner>,
  }
  type response = {
    nextToken: option<nextToken>,
    actionTypes: actionTypeList,
  }
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "ListActionTypesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateActionType = {
  type t
  type request = {actionType: actionTypeDeclaration}

  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "UpdateActionTypeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListWebhooks = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    webhooks: option<webhookList>,
  }
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "ListWebhooksCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetActionType = {
  type t
  type request = {
    version: version,
    provider: actionProvider,
    owner: actionTypeOwner,
    category: actionCategory,
  }
  type response = {actionType: option<actionTypeDeclaration>}
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "GetActionTypeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListActionExecutions = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
    filter: option<actionExecutionFilter>,
    pipelineName: pipelineName,
  }
  type response = {
    nextToken: option<nextToken>,
    actionExecutionDetails: option<actionExecutionDetailList>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "ListActionExecutionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetThirdPartyJobDetails = {
  type t
  type request = {
    clientToken: clientToken,
    jobId: thirdPartyJobId,
  }
  type response = {jobDetails: option<thirdPartyJobDetails>}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "GetThirdPartyJobDetailsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPipelineState = {
  type t
  type request = {name: pipelineName}
  type response = {
    updated: option<timestamp_>,
    created: option<timestamp_>,
    stageStates: option<stageStateList>,
    pipelineVersion: option<pipelineVersion>,
    pipelineName: option<pipelineName>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "GetPipelineStateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJobDetails = {
  type t
  type request = {jobId: jobId}
  type response = {jobDetails: option<jobDetails>}
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "GetJobDetailsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePipeline = {
  type t
  type request = {pipeline: pipelineDeclaration}
  type response = {pipeline: option<pipelineDeclaration>}
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "UpdatePipelineCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PollForJobs = {
  type t
  type request = {
    queryParam: option<queryParamMap>,
    maxBatchSize: option<maxBatchSize>,
    actionTypeId: actionTypeId,
  }
  type response = {jobs: option<jobList>}
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "PollForJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPipeline = {
  type t
  type request = {
    version: option<pipelineVersion>,
    name: pipelineName,
  }
  type response = {
    metadata: option<pipelineMetadata>,
    pipeline: option<pipelineDeclaration>,
  }
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "GetPipelineCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePipeline = {
  type t
  type request = {
    tags: option<tagList_>,
    pipeline: pipelineDeclaration,
  }
  type response = {
    tags: option<tagList_>,
    pipeline: option<pipelineDeclaration>,
  }
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "CreatePipelineCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
