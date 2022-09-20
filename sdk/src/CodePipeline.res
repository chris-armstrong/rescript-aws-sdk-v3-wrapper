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
@ocaml.doc("<p>The event criteria that specify when a webhook notification is sent to your
            URL.</p>")
type webhookFilterRule = {
  @ocaml.doc("<p>The value selected by the <code>JsonPath</code> expression must match what is
            supplied in the <code>MatchEquals</code> field. Otherwise, the request is ignored.
            Properties from the target action configuration can be included as placeholders in this
            value by surrounding the action configuration key with curly brackets. For example, if
            the value supplied here is \"refs/heads/{Branch}\" and the target action has an action
            configuration property called \"Branch\" with a value of \"master\", the
                <code>MatchEquals</code> value is evaluated as \"refs/heads/master\". For a list of
            action configuration properties for built-in action types, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements\">Pipeline Structure Reference Action Requirements</a>.</p>")
  matchEquals: option<matchEquals>,
  @ocaml.doc("<p>A JsonPath expression that is applied to the body/payload of the webhook. The value
            selected by the JsonPath expression must match the value specified in the
                <code>MatchEquals</code> field. Otherwise, the request is ignored. For more
            information, see <a href=\"https://github.com/json-path/JsonPath\">Java JsonPath
                implementation</a> in GitHub.</p>")
  jsonPath: jsonPath,
}
@ocaml.doc("<p>The authentication applied to incoming webhook trigger requests.</p>")
type webhookAuthConfiguration = {
  @ocaml.doc("<p>The property used to configure GitHub authentication. For GITHUB_HMAC, only the
                <code>SecretToken</code> property must be set.</p>")
  @as("SecretToken")
  secretToken: option<webhookAuthConfigurationSecretToken>,
  @ocaml.doc("<p>The property used to configure acceptance of webhooks in an IP address range. For
            IP, only the <code>AllowedIPRange</code> property must be set. This property must be set
            to a valid CIDR range.</p>")
  @as("AllowedIPRange")
  allowedIPRange: option<webhookAuthConfigurationAllowedIPRange>,
}
@ocaml.doc("<p>Represents information about the state of transitions between one stage and another
            stage.</p>")
type transitionState = {
  @ocaml.doc("<p>The user-specified reason why the transition between two stages of a pipeline was
            disabled.</p>")
  disabledReason: option<disabledReason>,
  @ocaml.doc("<p>The timestamp when the transition state was last changed.</p>")
  lastChangedAt: option<lastChangedAt>,
  @ocaml.doc("<p>The ID of the user who last changed the transition state.</p>")
  lastChangedBy: option<lastChangedBy>,
  @ocaml.doc("<p>Whether the transition between stages is enabled (true) or disabled
            (false).</p>")
  enabled: option<enabled>,
}
@ocaml.doc("<p>A response to a <code>PollForThirdPartyJobs</code> request returned by AWS
            CodePipeline when there is a job to be worked on by a partner action.</p>")
type thirdPartyJob = {
  @ocaml.doc("<p>The identifier used to identify the job in AWS CodePipeline.</p>")
  jobId: option<jobId>,
  @ocaml.doc("<p>The <code>clientToken</code> portion of the <code>clientId</code> and
                <code>clientToken</code> pair used to verify that the calling entity is allowed
            access to the job and its details.</p>")
  clientId: option<clientId>,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A tag is a key-value pair that is used to manage the resource.</p>")
type tag = {
  @ocaml.doc("<p>The tag's value.</p>") value: tagValue,
  @ocaml.doc("<p>The tag's key.</p>") key: tagKey,
}
@ocaml.doc("<p>The interaction that stopped a pipeline execution.</p>")
type stopExecutionTrigger = {
  @ocaml.doc("<p>The user-specified reason the pipeline was stopped.</p>")
  reason: option<stopPipelineExecutionReason>,
}
@ocaml.doc("<p>Represents information about the run of a stage.</p>")
type stageExecution = {
  @ocaml.doc("<p>The status of the stage, or for a completed stage, the last status of the
            stage.</p>
        <note>
            <p>A status of cancelled means that the pipeline’s definition was updated before the
                stage execution could be completed.</p>
        </note>")
  status: stageExecutionStatus,
  @ocaml.doc("<p>The ID of the pipeline execution associated with the stage.</p>")
  pipelineExecutionId: pipelineExecutionId,
}
@ocaml.doc("<p>Represents information about a stage to a job worker.</p>")
type stageContext = {@ocaml.doc("<p>The name of the stage.</p>") name: option<stageName>}
@ocaml.doc("<p>Information about the version (or revision) of a source artifact that initiated a
            pipeline execution.</p>")
type sourceRevision = {
  @ocaml.doc("<p>The commit ID for the artifact revision. For artifacts stored in GitHub or AWS
            CodeCommit repositories, the commit ID is linked to a commit details page.</p>")
  revisionUrl: option<url>,
  @ocaml.doc("<p>Summary information about the most recent revision of the artifact. For GitHub and
            AWS CodeCommit repositories, the commit message. For Amazon S3 buckets or actions, the
            user-provided content of a <code>codepipeline-artifact-revision-summary</code> key
            specified in the object metadata.</p>")
  revisionSummary: option<revisionSummary>,
  @ocaml.doc("<p>The system-generated unique ID that identifies the revision number of the
            artifact.</p>")
  revisionId: option<revision>,
  @ocaml.doc("<p>The name of the action that processed the revision to the source
            artifact.</p>")
  actionName: actionName,
}
@ocaml.doc("<p>The Amazon S3 artifact location for an action's artifacts.</p>")
type s3Location = {
  @ocaml.doc("<p>The artifact name.</p>") key: option<s3Key>,
  @ocaml.doc("<p>The Amazon S3 artifact bucket for an action's artifacts.</p>")
  bucket: option<s3Bucket>,
}
@ocaml.doc("<p>The location of the S3 bucket that contains a revision.</p>")
type s3ArtifactLocation = {
  @ocaml.doc("<p>The key of the object in the S3 bucket, which uniquely identifies the object in the
            bucket.</p>")
  objectKey: s3ObjectKey,
  @ocaml.doc("<p>The name of the S3 bucket.</p>") bucketName: s3BucketName,
}
type resolvedActionConfigurationMap = Js.Dict.t<string_>
type queryParamMap = Js.Dict.t<actionConfigurationQueryableValue>
type pollingServicePrincipalList = array<servicePrincipal>
type pollingAccountList = array<accountId>
@ocaml.doc("<p>Returns a summary of a pipeline.</p>")
type pipelineSummary = {
  @ocaml.doc("<p>The date and time of the last update to the pipeline, in timestamp
            format.</p>")
  updated: option<timestamp_>,
  @ocaml.doc("<p>The date and time the pipeline was created, in timestamp format.</p>")
  created: option<timestamp_>,
  @ocaml.doc("<p>The version number of the pipeline.</p>") version: option<pipelineVersion>,
  @ocaml.doc("<p>The name of the pipeline.</p>") name: option<pipelineName>,
}
@ocaml.doc("<p>Information about a pipeline.</p>")
type pipelineMetadata = {
  @ocaml.doc("<p>The date and time the pipeline was last updated, in timestamp format.</p>")
  updated: option<timestamp_>,
  @ocaml.doc("<p>The date and time the pipeline was created, in timestamp format.</p>")
  created: option<timestamp_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the pipeline.</p>")
  pipelineArn: option<pipelineArn>,
}
type outputVariablesMap = Js.Dict.t<outputVariablesValue>
@ocaml.doc("<p>Represents information about the output of an action.</p>")
type outputArtifact = {
  @ocaml.doc("<p>The name of the output of an artifact, such as \"My App\".</p>
        <p>The input artifact of an action must exactly match the output artifact declared in
            a preceding action, but the input artifact does not have to be the next action in strict
            sequence from the action that provided the output artifact. Actions in parallel can
            declare different output artifacts, which are in turn consumed by different following
            actions.</p>
        <p>Output artifact names must be unique within a pipeline.</p>")
  name: artifactName,
}
@ocaml.doc("<p>Details about the configuration for the <code>Lambda</code> action engine, or
            executor.</p>")
type lambdaExecutorConfiguration = {
  @ocaml.doc("<p>The ARN of the Lambda function used by the action engine.</p>")
  lambdaFunctionArn: lambdaFunctionArn,
}
@ocaml.doc("<p>Represents information about an artifact to be worked on, such as a test or build
            artifact.</p>")
type inputArtifact = {
  @ocaml.doc("<p>The name of the artifact to be worked on (for example, \"My App\").</p>
        <p>The input artifact of an action must exactly match the output artifact declared in
            a preceding action, but the input artifact does not have to be the next action in strict
            sequence from the action that provided the output artifact. Actions in parallel can
            declare different output artifacts, which are in turn consumed by different following
            actions.</p>")
  name: artifactName,
}
@ocaml.doc("<p>Represents information about failure details.</p>")
type failureDetails = {
  @ocaml.doc("<p>The external ID of the run of the action that failed.</p>")
  externalExecutionId: option<executionId>,
  @ocaml.doc("<p>The message about the failure.</p>") message: message,
  @ocaml.doc("<p>The type of the failure.</p>") @as("type") type_: failureType,
}
@ocaml.doc("<p>The interaction or event that started a pipeline execution.</p>")
type executionTrigger = {
  @ocaml.doc("<p>Detail related to the event that started a pipeline execution, such as the webhook ARN
            of the webhook that triggered the pipeline execution or the user ARN for a
            user-initiated <code>start-pipeline-execution</code> CLI command.</p>")
  triggerDetail: option<triggerDetail>,
  @ocaml.doc("<p>The type of change-detection method, command, or user interaction that started a
            pipeline execution.</p>")
  triggerType: option<triggerType>,
}
@ocaml.doc("<p>The details of the actions taken and results produced on an artifact as it passes
            through stages in the pipeline.</p>")
type executionDetails = {
  @ocaml.doc("<p>The percentage of work completed on the action, represented on a scale of 0 to 100
            percent.</p>")
  percentComplete: option<percentage>,
  @ocaml.doc("<p>The system-generated unique ID of this action used to identify this job worker in
            any external systems, such as AWS CodeDeploy.</p>")
  externalExecutionId: option<executionId>,
  @ocaml.doc("<p>The summary of the current status of the actions.</p>")
  summary: option<executionSummary>,
}
@ocaml.doc("<p>Represents information about an error in AWS CodePipeline.</p>")
type errorDetails = {
  @ocaml.doc("<p>The text of the error message.</p>") message: option<message>,
  @ocaml.doc("<p>The system ID or number code of the error.</p>") code: option<code>,
}
@ocaml.doc("<p>Represents information about the key used to encrypt data in the artifact store,
            such as an AWS Key Management Service (AWS KMS) key.</p>")
type encryptionKey = {
  @ocaml.doc("<p>The type of encryption key, such as an AWS Key Management Service (AWS KMS) key.
            When creating or updating a pipeline, the value must be set to 'KMS'.</p>")
  @as("type")
  type_: encryptionKeyType,
  @ocaml.doc("<p>The ID used to identify the key. For an AWS KMS key, you can use the key ID, the
            key ARN, or the alias ARN.</p>
        <note>
            <p>Aliases are recognized only in the account that created the customer master key
                (CMK). For cross-account actions, you can only use the key ID or key ARN to identify
                the key.</p>
        </note>")
  id: encryptionKeyId,
}
@ocaml.doc("<p>Represents information about a current revision.</p>")
type currentRevision = {
  @ocaml.doc("<p>The summary of the most recent revision of the artifact.</p>")
  revisionSummary: option<revisionSummary>,
  @ocaml.doc("<p>The date and time when the most recent revision of the artifact was created, in
            timestamp format.</p>")
  created: option<time>,
  @ocaml.doc("<p>The change identifier for the current revision.</p>")
  changeIdentifier: revisionChangeIdentifier,
  @ocaml.doc("<p>The revision ID of the current version of an artifact.</p>") revision: revision,
}
@ocaml.doc("<p>Reserved for future use.</p>")
type blockerDeclaration = {
  @ocaml.doc("<p>Reserved for future use.</p>") @as("type") type_: blockerType,
  @ocaml.doc("<p>Reserved for future use.</p>") name: blockerName,
}
@ocaml.doc("<p>Represents revision details of an artifact. </p>")
type artifactRevision = {
  @ocaml.doc("<p>The commit ID for the artifact revision. For artifacts stored in GitHub or AWS
            CodeCommit repositories, the commit ID is linked to a commit details page.</p>")
  revisionUrl: option<url>,
  @ocaml.doc("<p>The date and time when the most recent revision of the artifact was created, in
            timestamp format.</p>")
  created: option<timestamp_>,
  @ocaml.doc("<p>Summary information about the most recent revision of the artifact. For GitHub and
            AWS CodeCommit repositories, the commit message. For Amazon S3 buckets or actions, the
            user-provided content of a <code>codepipeline-artifact-revision-summary</code> key
            specified in the object metadata.</p>")
  revisionSummary: option<revisionSummary>,
  @ocaml.doc("<p>An additional identifier for a revision, such as a commit date or, for artifacts
            stored in Amazon S3 buckets, the ETag value.</p>")
  revisionChangeIdentifier: option<revisionChangeIdentifier>,
  @ocaml.doc("<p>The revision ID of the artifact.</p>") revisionId: option<revision>,
  @ocaml.doc("<p>The name of an artifact. This name might be system-generated, such as \"MyApp\", or
            defined by the user when an action is created.</p>")
  name: option<artifactName>,
}
@ocaml.doc("<p>Returns information about the details of an artifact.</p>")
type artifactDetails = {
  @ocaml.doc("<p>The maximum number of artifacts allowed for the action type.</p>")
  maximumCount: maximumArtifactCount,
  @ocaml.doc("<p>The minimum number of artifacts allowed for the action type.</p>")
  minimumCount: minimumArtifactCount,
}
@ocaml.doc("<p>Represents information about the result of an approval request.</p>")
type approvalResult = {
  @ocaml.doc("<p>The response submitted by a reviewer assigned to an approval action
            request.</p>")
  status: approvalStatus,
  @ocaml.doc("<p>The summary of the current status of the approval request.</p>")
  summary: approvalSummary,
}
type allowedAccounts = array<allowedAccount>
@ocaml.doc("<p>Returns information about URLs for web pages that display to customers as links on the
            pipeline view, such as an external configuration page for the action type.</p>")
type actionTypeUrls = {
  @ocaml.doc("<p>The URL returned to the CodePipeline console that contains a link to the page where
            customers can update or change the configuration of the external action.</p>")
  revisionUrlTemplate: option<urlTemplate>,
  @ocaml.doc("<p>The link to an execution page for the action type in progress. For example, for a
            CodeDeploy action, this link is shown on the pipeline view page in the CodePipeline
            console, and it links to a CodeDeploy status page.</p>")
  executionUrlTemplate: option<urlTemplate>,
  @ocaml.doc("<p>The URL returned to the CodePipeline console that provides a deep link to the
            resources of the external system, such as a status page. This link is provided as part
            of the action display in the pipeline.</p>")
  entityUrlTemplate: option<urlTemplate>,
  @ocaml.doc("<p>The URL returned to the CodePipeline console that contains a link to the page where
            customers can configure the external action.</p>")
  configurationUrl: option<url>,
}
@ocaml.doc("<p>Returns information about the settings for an action type.</p>")
type actionTypeSettings = {
  @ocaml.doc("<p>The URL returned to the AWS CodePipeline console that contains a link to the page
            where customers can update or change the configuration of the external action.</p>")
  revisionUrlTemplate: option<urlTemplate>,
  @ocaml.doc("<p>The URL returned to the AWS CodePipeline console that contains a link to the
            top-level landing page for the external system, such as the console page for AWS
            CodeDeploy. This link is shown on the pipeline view page in the AWS CodePipeline console
            and provides a link to the execution entity of the external action.</p>")
  executionUrlTemplate: option<urlTemplate>,
  @ocaml.doc("<p>The URL returned to the AWS CodePipeline console that provides a deep link to the
            resources of the external system, such as the configuration page for an AWS CodeDeploy
            deployment group. This link is provided as part of the action display in the
            pipeline.</p>")
  entityUrlTemplate: option<urlTemplate>,
  @ocaml.doc("<p>The URL of a sign-up page where users can sign up for an external service and
            perform initial configuration of the action provided by that service.</p>")
  thirdPartyConfigurationUrl: option<url>,
}
@ocaml.doc("<p>Represents information about each property specified in the action configuration, such
            as the description and key name that display for the customer using the action
            type.</p>")
type actionTypeProperty = {
  @ocaml.doc("<p>The description of the property that is displayed to users.</p>")
  description: option<propertyDescription>,
  @ocaml.doc("<p>Indicates that the property is used with polling. An action type can have up to one
            queryable property. If it has one, that property must be both required and not
            secret.</p>")
  queryable: option<boolean_>,
  @ocaml.doc("<p>Whether to omit the field value entered by the customer in the log. If
                <code>true</code>, the value is not saved in CloudTrail logs for the action
            execution.</p>")
  noEcho: boolean_,
  @ocaml.doc("<p>Whether the configuration property is a key.</p>") key: boolean_,
  @ocaml.doc("<p>Whether the configuration property is an optional value.</p>") optional: boolean_,
  @ocaml.doc("<p>The property name that is displayed to users.</p>") name: actionConfigurationKey,
}
@ocaml.doc("<p>Specifies the category, owner, provider, and version of the action type.</p>")
type actionTypeIdentifier = {
  @ocaml.doc("<p>A string that describes the action type version.</p>") version: version,
  @ocaml.doc("<p>The provider of the action type being called. The provider name is supplied when the
            action type is created.</p>")
  provider: actionProvider,
  @ocaml.doc("<p>The creator of the action type being called: <code>AWS</code> or
                <code>ThirdParty</code>.</p>")
  owner: actionTypeOwner,
  @ocaml.doc("<p>Defines what kind of action can be taken in the stage, one of the following:</p>
        <ul>
            <li>
                <p>
                  <code>Source</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Build</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Test</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Deploy</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Approval</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Invoke</code>
               </p>
            </li>
         </ul>")
  category: actionCategory,
}
@ocaml.doc("<p>Represents information about an action type.</p>")
type actionTypeId = {
  @ocaml.doc("<p>A string that describes the action version.</p>") version: version,
  @ocaml.doc("<p>The provider of the service being called by the action. Valid providers are
            determined by the action category. For example, an action in the Deploy category type
            might have a provider of AWS CodeDeploy, which would be specified as CodeDeploy. For
            more information, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#actions-valid-providers\">Valid Action Types and Providers in CodePipeline</a>.</p>")
  provider: actionProvider,
  @ocaml.doc("<p>The creator of the action being called. There are three valid values for the
                <code>Owner</code> field in the action category section within your pipeline
            structure: <code>AWS</code>, <code>ThirdParty</code>, and <code>Custom</code>. For more
            information, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#actions-valid-providers\">Valid Action Types and Providers in CodePipeline</a>.</p>")
  owner: actionOwner,
  @ocaml.doc("<p>A category defines what kind of action can be taken in the stage, and constrains
            the provider type for the action. Valid categories are limited to one of the following
            values. </p>
        <ul>
            <li>
                <p>Source</p>
            </li>
            <li>
                <p>Build</p>
            </li>
            <li>
                <p>Test</p>
            </li>
            <li>
                <p>Deploy</p>
            </li>
            <li>
                <p>Invoke</p>
            </li>
            <li>
                <p>Approval</p>
            </li>
         </ul>")
  category: actionCategory,
}
@ocaml.doc("<p>Information about parameters for artifacts associated with the action type, such as
            the minimum and maximum artifacts allowed.</p>")
type actionTypeArtifactDetails = {
  @ocaml.doc("<p>The maximum number of artifacts that can be used with the actiontype. For example, you
            should specify a minimum and maximum of zero input artifacts for an action type with a
            category of <code>source</code>.</p>")
  maximumCount: maximumActionTypeArtifactCount,
  @ocaml.doc("<p>The minimum number of artifacts that can be used with the action type. For example,
            you should specify a minimum and maximum of zero input artifacts for an action type with
            a category of <code>source</code>.</p>")
  minimumCount: minimumActionTypeArtifactCount,
}
@ocaml.doc("<p>Represents information about the version (or revision) of an action.</p>")
type actionRevision = {
  @ocaml.doc("<p>The date and time when the most recent version of the action was created, in
            timestamp format.</p>")
  created: timestamp_,
  @ocaml.doc("<p>The unique identifier of the change that set the state to this revision (for
            example, a deployment ID or timestamp).</p>")
  revisionChangeId: revisionChangeIdentifier,
  @ocaml.doc("<p>The system-generated unique ID that identifies the revision number of the
            action.</p>")
  revisionId: revision,
}
@ocaml.doc("<p>Execution result information, such as the external execution ID.</p>")
type actionExecutionResult = {
  @ocaml.doc("<p>The deepest external link to the external resource (for example, a repository URL or
            deployment endpoint) that is used when running the action.</p>")
  externalExecutionUrl: option<url>,
  @ocaml.doc("<p>The action provider's summary for the action execution.</p>")
  externalExecutionSummary: option<externalExecutionSummary>,
  @ocaml.doc("<p>The action provider's external ID for the action execution.</p>")
  externalExecutionId: option<externalExecutionId>,
}
@ocaml.doc("<p>Filter values for the action execution.</p>")
type actionExecutionFilter = {
  @ocaml.doc("<p>The pipeline execution ID used to filter action execution history.</p>")
  pipelineExecutionId: option<pipelineExecutionId>,
}
@ocaml.doc("<p>Represents the context of an action in the stage of a pipeline to a job
            worker.</p>")
type actionContext = {
  @ocaml.doc("<p>The system-generated unique ID that corresponds to an action's execution.</p>")
  actionExecutionId: option<actionExecutionId>,
  @ocaml.doc("<p>The name of the action in the context of a job.</p>") name: option<actionName>,
}
@ocaml.doc("<p>Represents information about an action configuration property.</p>")
type actionConfigurationProperty = {
  @ocaml.doc("<p>The type of the configuration property.</p>") @as("type")
  type_: option<actionConfigurationPropertyType>,
  @ocaml.doc("<p>The description of the action configuration property that is displayed to
            users.</p>")
  description: option<description>,
  @ocaml.doc("<p>Indicates that the property is used with <code>PollForJobs</code>. When creating a
            custom action, an action can have up to one queryable property. If it has one, that
            property must be both required and not secret.</p>
        <p>If you create a pipeline with a custom action type, and that custom action contains
            a queryable property, the value for that configuration property is subject to other
            restrictions. The value must be less than or equal to twenty (20) characters. The value
            can contain only alphanumeric characters, underscores, and hyphens.</p>")
  queryable: option<boolean_>,
  @ocaml.doc("<p>Whether the configuration property is secret. Secrets are hidden from all calls
            except for <code>GetJobDetails</code>, <code>GetThirdPartyJobDetails</code>,
                <code>PollForJobs</code>, and <code>PollForThirdPartyJobs</code>.</p>
        <p>When updating a pipeline, passing * * * * * without changing any other values of
            the action preserves the previous value of the secret.</p>")
  secret: boolean_,
  @ocaml.doc("<p>Whether the configuration property is a key.</p>") key: boolean_,
  @ocaml.doc("<p>Whether the configuration property is a required value.</p>") required: boolean_,
  @ocaml.doc("<p>The name of the action configuration property.</p>") name: actionConfigurationKey,
}
type actionConfigurationMap = Js.Dict.t<actionConfigurationValue>
@ocaml.doc("<p>Represents an AWS session credentials object. These credentials are temporary
            credentials that are issued by AWS Secure Token Service (STS). They can be used to
            access input and output artifacts in the S3 bucket used to store artifact for the
            pipeline in AWS CodePipeline.</p>")
type awssessionCredentials = {
  @ocaml.doc("<p>The token for the session.</p>") sessionToken: sessionToken,
  @ocaml.doc("<p>The secret access key for the session.</p>") secretAccessKey: secretAccessKey,
  @ocaml.doc("<p>The access key for the session.</p>") accessKeyId: accessKeyId,
}
type webhookFilters = array<webhookFilterRule>
type thirdPartyJobList = array<thirdPartyJob>
type tagList_ = array<tag>
type stageBlockerDeclarationList = array<blockerDeclaration>
type sourceRevisionList = array<sourceRevision>
type pipelineList = array<pipelineSummary>
@ocaml.doc("<p>Represents information about a pipeline to a job worker.</p>
        <note>
            <p>PipelineContext contains <code>pipelineArn</code> and
                    <code>pipelineExecutionId</code> for custom action jobs. The
                    <code>pipelineArn</code> and <code>pipelineExecutionId</code> fields are not
                populated for ThirdParty action jobs.</p>
        </note>")
type pipelineContext = {
  @ocaml.doc("<p>The execution ID of the pipeline.</p>")
  pipelineExecutionId: option<pipelineExecutionId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the pipeline.</p>")
  pipelineArn: option<pipelineArn>,
  @ocaml.doc("<p>The context of an action to a job worker in the stage of a pipeline.</p>")
  action: option<actionContext>,
  @ocaml.doc("<p>The stage of the pipeline.</p>") stage: option<stageContext>,
  @ocaml.doc("<p>The name of the pipeline. This is a user-specified value. Pipeline names must be
            unique across all pipeline names under an Amazon Web Services account.</p>")
  pipelineName: option<pipelineName>,
}
type outputArtifactList = array<outputArtifact>
@ocaml.doc("<p>Details about the polling configuration for the <code>JobWorker</code> action engine,
            or executor.</p>")
type jobWorkerExecutorConfiguration = {
  @ocaml.doc("<p>The service Principals in which the job worker is configured and might poll for jobs
            as part of the action execution.</p>")
  pollingServicePrincipals: option<pollingServicePrincipalList>,
  @ocaml.doc("<p>The accounts in which the job worker is configured and might poll for jobs as part of
            the action execution.</p>")
  pollingAccounts: option<pollingAccountList>,
}
type inputArtifactList = array<inputArtifact>
@ocaml.doc("<p>The S3 bucket where artifacts for the pipeline are stored.</p>
        <note>
            <p>You must include either <code>artifactStore</code> or
                    <code>artifactStores</code> in your pipeline, but you cannot use both. If you
                create a cross-region action in your pipeline, you must use
                    <code>artifactStores</code>.</p>
        </note>")
type artifactStore = {
  @ocaml.doc("<p>The encryption key used to encrypt the data in the artifact store, such as an AWS
            Key Management Service (AWS KMS) key. If this is undefined, the default key for Amazon
            S3 is used.</p>")
  encryptionKey: option<encryptionKey>,
  @ocaml.doc("<p>The S3 bucket used for storing the artifacts for a pipeline. You can specify the
            name of an S3 bucket but not a folder in the bucket. A folder to contain the pipeline
            artifacts is created for you based on the name of the pipeline. You can use any S3
            bucket in the same AWS Region as the pipeline to store your pipeline
            artifacts.</p>")
  location: artifactStoreLocation,
  @ocaml.doc("<p>The type of the artifact store, such as S3.</p>") @as("type")
  type_: artifactStoreType,
}
type artifactRevisionList = array<artifactRevision>
@ocaml.doc("<p>Represents information about the location of an artifact.</p>")
type artifactLocation = {
  @ocaml.doc("<p>The S3 bucket that contains the artifact.</p>")
  s3Location: option<s3ArtifactLocation>,
  @ocaml.doc("<p>The type of artifact in the location.</p>") @as("type")
  type_: option<artifactLocationType>,
}
@ocaml.doc("<p>Artifact details for the action execution, such as the artifact location.</p>")
type artifactDetail = {
  @ocaml.doc("<p>The Amazon S3 artifact location for the action execution.</p>")
  s3location: option<s3Location>,
  @ocaml.doc("<p>The artifact object name for the action execution.</p>")
  name: option<artifactName>,
}
type actionTypeProperties = array<actionTypeProperty>
@ocaml.doc("<p>Details identifying the users with permissions to use the action type.</p>")
type actionTypePermissions = {
  @ocaml.doc("<p>A list of AWS account IDs with access to use the action type in their
            pipelines.</p>")
  allowedAccounts: allowedAccounts,
}
@ocaml.doc("<p>Represents information about the run of an action.</p>")
type actionExecution = {
  @ocaml.doc("<p>The details of an error returned by a URL external to AWS.</p>")
  errorDetails: option<errorDetails>,
  @ocaml.doc("<p>A percentage of completeness of the action as it runs.</p>")
  percentComplete: option<percentage>,
  @ocaml.doc("<p>The URL of a resource external to AWS that is used when running the action (for
            example, an external repository URL).</p>")
  externalExecutionUrl: option<url>,
  @ocaml.doc("<p>The external ID of the run of the action.</p>")
  externalExecutionId: option<executionId>,
  @ocaml.doc("<p>The ARN of the user who last changed the pipeline.</p>")
  lastUpdatedBy: option<lastUpdatedBy>,
  @ocaml.doc("<p>The system-generated token used to identify a unique approval request. The token
            for each open approval request can be obtained using the <code>GetPipelineState</code>
            command. It is used to validate that the approval request corresponding to this token is
            still valid.</p>")
  token: option<actionExecutionToken>,
  @ocaml.doc("<p>The last status change of the action.</p>") lastStatusChange: option<timestamp_>,
  @ocaml.doc("<p>A summary of the run of the action.</p>") summary: option<executionSummary>,
  @ocaml.doc("<p>The status of the action, or for a completed action, the last status of the
            action.</p>")
  status: option<actionExecutionStatus>,
  @ocaml.doc("<p>ID of the workflow action execution in the current stage. Use the <a>GetPipelineState</a> action to retrieve the current action execution details
            of the current stage.</p>
        <note>
            <p>For older executions, this field might be empty. The action execution ID is
                available for executions run on or after March 2020.</p>
        </note>")
  actionExecutionId: option<actionExecutionId>,
}
type actionConfigurationPropertyList = array<actionConfigurationProperty>
@ocaml.doc("<p>Represents information about an action configuration.</p>")
type actionConfiguration = {
  @ocaml.doc("<p>The configuration data for the action.</p>")
  configuration: option<actionConfigurationMap>,
}
@ocaml.doc("<p>Represents information about a webhook and its definition.</p>")
type webhookDefinition = {
  @ocaml.doc("<p>Properties that configure the authentication applied to incoming webhook trigger
            requests. The required properties depend on the authentication type. For GITHUB_HMAC,
            only the <code>SecretToken </code>property must be set. For IP, only the
                <code>AllowedIPRange </code>property must be set to a valid CIDR range. For
            UNAUTHENTICATED, no properties can be set.</p>")
  authenticationConfiguration: webhookAuthConfiguration,
  @ocaml.doc("<p>Supported options are GITHUB_HMAC, IP, and UNAUTHENTICATED.</p>
        <ul>
            <li>
                <p>For information about the authentication scheme implemented by GITHUB_HMAC,
                    see <a href=\"https://developer.github.com/webhooks/securing/\">Securing your
                        webhooks</a> on the GitHub Developer website.</p>
            </li>
            <li>
                <p> IP rejects webhooks trigger requests unless they originate from an IP
                    address in the IP range whitelisted in the authentication
                    configuration.</p>
            </li>
            <li>
                <p> UNAUTHENTICATED accepts all webhook trigger requests regardless of
                    origin.</p>
            </li>
         </ul>")
  authentication: webhookAuthenticationType,
  @ocaml.doc("<p>A list of rules applied to the body/payload sent in the POST request to a webhook
            URL. All defined rules must pass for the request to be accepted and the pipeline
            started.</p>")
  filters: webhookFilters,
  @ocaml.doc("<p>The name of the action in a pipeline you want to connect to the webhook. The action
            must be from the source (first) stage of the pipeline.</p>")
  targetAction: actionName,
  @ocaml.doc("<p>The name of the pipeline you want to connect to the webhook.</p>")
  targetPipeline: pipelineName,
  @ocaml.doc("<p>The name of the webhook.</p>") name: webhookName,
}
@ocaml.doc("<p>Summary information about a pipeline execution.</p>")
type pipelineExecutionSummary = {
  @ocaml.doc("<p>The interaction that stopped a pipeline execution.</p>")
  stopTrigger: option<stopExecutionTrigger>,
  @ocaml.doc("<p>The interaction or event that started a pipeline execution, such as automated change
            detection or a <code>StartPipelineExecution</code> API call.</p>")
  trigger: option<executionTrigger>,
  @ocaml.doc("<p>A list of the source artifact revisions that initiated a pipeline
            execution.</p>")
  sourceRevisions: option<sourceRevisionList>,
  @ocaml.doc("<p>The date and time of the last change to the pipeline execution, in timestamp
            format.</p>")
  lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time when the pipeline execution began, in timestamp format.</p>")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the pipeline execution.</p>
        <ul>
            <li>
                <p>InProgress: The pipeline execution is currently running.</p>
            </li>
            <li>
                <p>Stopped: The pipeline execution was manually stopped. For more information,
                    see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped\">Stopped Executions</a>.</p>
            </li>
            <li>
                <p>Stopping: The pipeline execution received a request to be manually stopped.
                    Depending on the selected stop mode, the execution is either completing or
                    abandoning in-progress actions. For more information, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped\">Stopped Executions</a>.</p>
            </li>
            <li>
                <p>Succeeded: The pipeline execution was completed successfully. </p>
            </li>
            <li>
                <p>Superseded: While this pipeline execution was waiting for the next stage to
                    be completed, a newer pipeline execution advanced and continued through the
                    pipeline instead. For more information, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-superseded\">Superseded Executions</a>.</p>
            </li>
            <li>
                <p>Failed: The pipeline execution was not completed successfully.</p>
            </li>
         </ul>")
  status: option<pipelineExecutionStatus>,
  @ocaml.doc("<p>The ID of the pipeline execution.</p>")
  pipelineExecutionId: option<pipelineExecutionId>,
}
@ocaml.doc("<p>Represents information about an execution of a pipeline.</p>")
type pipelineExecution = {
  @ocaml.doc("<p>A list of <code>ArtifactRevision</code> objects included in a pipeline
            execution.</p>")
  artifactRevisions: option<artifactRevisionList>,
  @ocaml.doc("<p>A summary that contains a description of the pipeline execution status.</p>")
  statusSummary: option<pipelineExecutionStatusSummary>,
  @ocaml.doc("<p>The status of the pipeline execution.</p>
        <ul>
            <li>
                <p>Cancelled: The pipeline’s definition was updated before the pipeline
                    execution could be completed.</p>
            </li>
            <li>
                <p>InProgress: The pipeline execution is currently running.</p>
            </li>
            <li>
                <p>Stopped: The pipeline execution was manually stopped. For more information,
                    see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped\">Stopped Executions</a>.</p>
            </li>
            <li>
                <p>Stopping: The pipeline execution received a request to be manually stopped.
                    Depending on the selected stop mode, the execution is either completing or
                    abandoning in-progress actions. For more information, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped\">Stopped Executions</a>.</p>
            </li>
            <li>
                <p>Succeeded: The pipeline execution was completed successfully. </p>
            </li>
            <li>
                <p>Superseded: While this pipeline execution was waiting for the next stage to
                    be completed, a newer pipeline execution advanced and continued through the
                    pipeline instead. For more information, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-superseded\">Superseded Executions</a>.</p>
            </li>
            <li>
                <p>Failed: The pipeline execution was not completed successfully.</p>
            </li>
         </ul>")
  status: option<pipelineExecutionStatus>,
  @ocaml.doc("<p>The ID of the pipeline execution.</p>")
  pipelineExecutionId: option<pipelineExecutionId>,
  @ocaml.doc("<p>The version number of the pipeline with the specified pipeline execution.</p>")
  pipelineVersion: option<pipelineVersion>,
  @ocaml.doc("<p>The name of the pipeline with the specified pipeline execution.</p>")
  pipelineName: option<pipelineName>,
}
@ocaml.doc("<p>The action engine, or executor, related to the supported integration model used to
            create and update the action type. The available executor types are <code>Lambda</code>
            and <code>JobWorker</code>.</p>")
type executorConfiguration = {
  @ocaml.doc("<p>Details about the <code>JobWorker</code> executor of the action type.</p>")
  jobWorkerExecutorConfiguration: option<jobWorkerExecutorConfiguration>,
  @ocaml.doc("<p>Details about the <code>Lambda</code> executor of the action type.</p>")
  lambdaExecutorConfiguration: option<lambdaExecutorConfiguration>,
}
type artifactStoreMap = Js.Dict.t<artifactStore>
type artifactDetailList = array<artifactDetail>
@ocaml.doc("<p>Represents information about an artifact that is worked on by actions in the
            pipeline.</p>")
type artifact = {
  @ocaml.doc("<p>The location of an artifact.</p>") location: option<artifactLocation>,
  @ocaml.doc("<p>The artifact's revision ID. Depending on the type of object, this could be a commit
            ID (GitHub) or a revision ID (Amazon S3).</p>")
  revision: option<revision>,
  @ocaml.doc("<p>The artifact's name.</p>") name: option<artifactName>,
}
@ocaml.doc("<p>Returns information about the details of an action type.</p>")
type actionType = {
  @ocaml.doc("<p>The details of the output artifact of the action, such as its commit ID.</p>")
  outputArtifactDetails: artifactDetails,
  @ocaml.doc("<p>The details of the input artifact for the action, such as its commit ID.</p>")
  inputArtifactDetails: artifactDetails,
  @ocaml.doc("<p>The configuration properties for the action type.</p>")
  actionConfigurationProperties: option<actionConfigurationPropertyList>,
  @ocaml.doc("<p>The settings for the action type.</p>") settings: option<actionTypeSettings>,
  @ocaml.doc("<p>Represents information about an action type.</p>") id: actionTypeId,
}
@ocaml.doc("<p>Represents information about the state of an action.</p>")
type actionState = {
  @ocaml.doc("<p>A URL link for more information about the revision, such as a commit details
            page.</p>")
  revisionUrl: option<url>,
  @ocaml.doc("<p>A URL link for more information about the state of the action, such as a deployment
            group details page.</p>")
  entityUrl: option<url>,
  @ocaml.doc("<p>Represents information about the run of an action.</p>")
  latestExecution: option<actionExecution>,
  @ocaml.doc("<p>Represents information about the version (or revision) of an action.</p>")
  currentRevision: option<actionRevision>,
  @ocaml.doc("<p>The name of the action.</p>") actionName: option<actionName>,
}
@ocaml.doc("<p>Represents information about an action declaration.</p>")
type actionDeclaration = {
  @ocaml.doc("<p>The variable namespace associated with the action. All variables produced as output by
            this action fall under this namespace.</p>")
  namespace: option<actionNamespace>,
  @ocaml.doc("<p>The action declaration's AWS Region, such as us-east-1.</p>")
  region: option<awsregionName>,
  @ocaml.doc("<p>The ARN of the IAM service role that performs the declared action. This is assumed
            through the roleArn for the pipeline.</p>")
  roleArn: option<roleArn>,
  @ocaml.doc("<p>The name or ID of the artifact consumed by the action, such as a test or build
            artifact.</p>")
  inputArtifacts: option<inputArtifactList>,
  @ocaml.doc("<p>The name or ID of the result of the action declaration, such as a test or build
            artifact.</p>")
  outputArtifacts: option<outputArtifactList>,
  @ocaml.doc("<p>The action's configuration. These are key-value pairs that specify input values for
            an action. For more information, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements\">Action Structure Requirements in CodePipeline</a>. For the list of
            configuration properties for the AWS CloudFormation action type in CodePipeline, see
                <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/continuous-delivery-codepipeline-action-reference.html\">Configuration Properties Reference</a> in the <i>AWS CloudFormation User
                Guide</i>. For template snippets with examples, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/continuous-delivery-codepipeline-parameter-override-functions.html\">Using Parameter Override Functions with CodePipeline Pipelines</a> in the
                <i>AWS CloudFormation User Guide</i>.</p>
        <p>The values can be represented in either JSON or YAML format. For example, the JSON
            configuration item format is as follows: </p>
        <p>
            <i>JSON:</i>
         </p>
        <p>
            <code>\"Configuration\" : { Key : Value },</code>
        </p>")
  configuration: option<actionConfigurationMap>,
  @ocaml.doc("<p>The order in which actions are run.</p>") runOrder: option<actionRunOrder>,
  @ocaml.doc("<p>Specifies the action type and the provider of the action.</p>")
  actionTypeId: actionTypeId,
  @ocaml.doc("<p>The action declaration's name.</p>") name: actionName,
}
type stageActionDeclarationList = array<actionDeclaration>
type pipelineExecutionSummaryList = array<pipelineExecutionSummary>
@ocaml.doc("<p>The detail returned for each webhook after listing webhooks, such as the webhook
            URL, the webhook name, and the webhook ARN.</p>")
type listWebhookItem = {
  @ocaml.doc("<p>Specifies the tags applied to the webhook.</p>") tags: option<tagList_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the webhook.</p>") arn: option<webhookArn>,
  @ocaml.doc("<p>The date and time a webhook was last successfully triggered, in timestamp
            format.</p>")
  lastTriggered: option<webhookLastTriggered>,
  @ocaml.doc("<p>The number code of the error.</p>") errorCode: option<webhookErrorCode>,
  @ocaml.doc("<p>The text of the error message about the webhook.</p>")
  errorMessage: option<webhookErrorMessage>,
  @ocaml.doc("<p>A unique URL generated by CodePipeline. When a POST request is made to this URL,
            the defined pipeline is started as long as the body of the post request satisfies the
            defined authentication and filtering conditions. Deleting and re-creating a webhook
            makes the old URL invalid and generates a new one.</p>")
  url: webhookUrl,
  @ocaml.doc("<p>The detail returned for each webhook, such as the webhook authentication type and
            filter rules.</p>")
  definition: webhookDefinition,
}
type artifactList = array<artifact>
type actionTypeList = array<actionType>
@ocaml.doc("<p>The action engine, or executor, for an action type created for a provider, where the
            action is to be used by customers of the provider. The action engine is associated with
            the model used to create and update the action, such as the Lambda integration
            model.</p>")
type actionTypeExecutor = {
  @ocaml.doc("<p>The timeout in seconds for the job. An action execution can have multiple jobs. This
            is the timeout for a single job, not the entire action execution.</p>")
  jobTimeout: option<jobTimeout>,
  @ocaml.doc("<p>The policy statement that specifies the permissions in the CodePipeline customer’s
            account that are needed to successfully run an action.</p>
        <p>To grant permission to another account, specify the account ID as the Principal, a
            domain-style identifier defined by the service, for example
                <code>codepipeline.amazonaws.com</code>.</p>
        <note>
            <p>The size of the passed JSON policy document cannot exceed 2048 characters.</p>
        </note>")
  policyStatementsTemplate: option<policyStatementsTemplate>,
  @ocaml.doc("<p>The integration model used to create and update the action type, <code>Lambda</code>
            or <code>JobWorker</code>. </p>")
  @as("type")
  type_: executorType,
  @ocaml.doc("<p>The action configuration properties for the action type. These properties are
            specified in the action definition when the action type is created.</p>")
  configuration: executorConfiguration,
}
type actionStateList = array<actionState>
@ocaml.doc("<p>Output details listed for an action execution, such as the action execution
            result.</p>")
type actionExecutionOutput = {
  @ocaml.doc("<p>The outputVariables field shows the key-value pairs that were output as part of that
            execution.</p>")
  outputVariables: option<outputVariablesMap>,
  @ocaml.doc("<p>Execution result information listed in the output details for an action
            execution.</p>")
  executionResult: option<actionExecutionResult>,
  @ocaml.doc("<p>Details of output artifacts of the action that correspond to the action
            execution.</p>")
  outputArtifacts: option<artifactDetailList>,
}
@ocaml.doc("<p>Input information used for an action execution.</p>")
type actionExecutionInput = {
  @ocaml.doc("<p>The variable namespace associated with the action. All variables produced as output by
            this action fall under this namespace.</p>")
  namespace: option<actionNamespace>,
  @ocaml.doc("<p>Details of input artifacts of the action that correspond to the action
            execution.</p>")
  inputArtifacts: option<artifactDetailList>,
  @ocaml.doc("<p>The AWS Region for the action, such as us-east-1.</p>")
  region: option<awsregionName>,
  @ocaml.doc("<p>The ARN of the IAM service role that performs the declared action. This is assumed
            through the roleArn for the pipeline. </p>")
  roleArn: option<roleArn>,
  @ocaml.doc("<p>Configuration data for an action execution with all variable references replaced with
            their real values for the execution.</p>")
  resolvedConfiguration: option<resolvedActionConfigurationMap>,
  @ocaml.doc("<p>Configuration data for an action execution.</p>")
  configuration: option<actionConfigurationMap>,
  actionTypeId: option<actionTypeId>,
}
type webhookList = array<listWebhookItem>
@ocaml.doc("<p>Represents information about the job data for a partner action.</p>")
type thirdPartyJobData = {
  @ocaml.doc("<p>The encryption key used to encrypt and decrypt data in the artifact store for the
            pipeline, such as an AWS Key Management Service (AWS KMS) key. This is optional and
            might not be present.</p>")
  encryptionKey: option<encryptionKey>,
  @ocaml.doc("<p>A system-generated token, such as a AWS CodeDeploy deployment ID, that a job
            requires to continue the job asynchronously.</p>")
  continuationToken: option<continuationToken>,
  @ocaml.doc("<p>Represents an AWS session credentials object. These credentials are temporary
            credentials that are issued by AWS Secure Token Service (STS). They can be used to
            access input and output artifacts in the S3 bucket used to store artifact for the
            pipeline in AWS CodePipeline. </p>")
  artifactCredentials: option<awssessionCredentials>,
  @ocaml.doc("<p>The name of the artifact that is the result of the action, if any. This name might
            be system-generated, such as \"MyBuiltApp\", or it might be defined by the user when the
            action is created.</p>")
  outputArtifacts: option<artifactList>,
  @ocaml.doc("<p>The name of the artifact that is worked on by the action, if any. This name might
            be system-generated, such as \"MyApp\", or it might be defined by the user when the action
            is created. The input artifact name must match the name of an output artifact generated
            by an action in an earlier action or stage of the pipeline.</p>")
  inputArtifacts: option<artifactList>,
  @ocaml.doc("<p>Represents information about a pipeline to a job worker.</p>
        <note>
            <p>Does not include <code>pipelineArn</code> and <code>pipelineExecutionId</code>
                for ThirdParty jobs.</p>
        </note>")
  pipelineContext: option<pipelineContext>,
  @ocaml.doc("<p>Represents information about an action configuration.</p>")
  actionConfiguration: option<actionConfiguration>,
  @ocaml.doc("<p>Represents information about an action type.</p>")
  actionTypeId: option<actionTypeId>,
}
@ocaml.doc("<p>Represents information about the state of the stage.</p>")
type stageState = {
  @ocaml.doc("<p>Information about the latest execution in the stage, including its ID and
            status.</p>")
  latestExecution: option<stageExecution>,
  @ocaml.doc("<p>The state of the stage.</p>") actionStates: option<actionStateList>,
  @ocaml.doc("<p>The state of the inbound transition, which is either enabled or disabled.</p>")
  inboundTransitionState: option<transitionState>,
  inboundExecution: option<stageExecution>,
  @ocaml.doc("<p>The name of the stage.</p>") stageName: option<stageName>,
}
@ocaml.doc("<p>Represents information about a stage and its definition.</p>")
type stageDeclaration = {
  @ocaml.doc("<p>The actions included in a stage.</p>") actions: stageActionDeclarationList,
  @ocaml.doc("<p>Reserved for future use.</p>") blockers: option<stageBlockerDeclarationList>,
  @ocaml.doc("<p>The name of the stage.</p>") name: stageName,
}
@ocaml.doc("<p>Represents other information about a job required for a job worker to complete the
            job.</p>")
type jobData = {
  @ocaml.doc("<p>Represents information about the key used to encrypt data in the artifact store,
            such as an AWS Key Management Service (AWS KMS) key. </p>")
  encryptionKey: option<encryptionKey>,
  @ocaml.doc("<p>A system-generated token, such as a AWS CodeDeploy deployment ID, required by a job
            to continue the job asynchronously.</p>")
  continuationToken: option<continuationToken>,
  @ocaml.doc("<p>Represents an AWS session credentials object. These credentials are temporary
            credentials that are issued by AWS Secure Token Service (STS). They can be used to
            access input and output artifacts in the S3 bucket used to store artifacts for the
            pipeline in AWS CodePipeline.</p>")
  artifactCredentials: option<awssessionCredentials>,
  @ocaml.doc("<p>The output of the job.</p>") outputArtifacts: option<artifactList>,
  @ocaml.doc("<p>The artifact supplied to the job.</p>") inputArtifacts: option<artifactList>,
  @ocaml.doc("<p>Represents information about a pipeline to a job worker.</p>
        <note>
            <p>Includes <code>pipelineArn</code> and <code>pipelineExecutionId</code> for
                custom jobs.</p>
        </note>")
  pipelineContext: option<pipelineContext>,
  @ocaml.doc("<p>Represents information about an action configuration.</p>")
  actionConfiguration: option<actionConfiguration>,
  @ocaml.doc("<p>Represents information about an action type.</p>")
  actionTypeId: option<actionTypeId>,
}
@ocaml.doc("<p>The parameters for the action type definition that are provided when the action type
            is created or updated.</p>")
type actionTypeDeclaration = {
  @ocaml.doc("<p>The links associated with the action type to be updated.</p>")
  urls: option<actionTypeUrls>,
  @ocaml.doc("<p>The properties of the action type to be updated.</p>")
  properties: option<actionTypeProperties>,
  @ocaml.doc("<p>Details identifying the accounts with permissions to use the action type.</p>")
  permissions: option<actionTypePermissions>,
  @ocaml.doc("<p>Details for the output artifacts, such as a built application, that are the result of
            the action. For example, the minimum and maximum number of output artifacts
            allowed.</p>")
  outputArtifactDetails: actionTypeArtifactDetails,
  @ocaml.doc("<p>Details for the artifacts, such as application files, to be worked on by the action.
            For example, the minimum and maximum number of input artifacts allowed.</p>")
  inputArtifactDetails: actionTypeArtifactDetails,
  @ocaml.doc("<p>The action category, owner, provider, and version of the action type to be
            updated.</p>")
  id: actionTypeIdentifier,
  @ocaml.doc("<p>Information about the executor for an action type that was created with any supported
            integration model.</p>")
  executor: actionTypeExecutor,
  @ocaml.doc("<p>The description for the action type to be updated.</p>")
  description: option<actionTypeDescription>,
}
@ocaml.doc("<p>Returns information about an execution of an action, including the action execution
            ID, and the name, version, and timing of the action. </p>")
type actionExecutionDetail = {
  @ocaml.doc("<p>Output details for the action execution, such as the action execution result.</p>")
  output: option<actionExecutionOutput>,
  @ocaml.doc("<p>Input details for the action execution, such as role ARN, Region, and input
            artifacts.</p>")
  input: option<actionExecutionInput>,
  @ocaml.doc("<p> The status of the action execution. Status categories are <code>InProgress</code>,
                <code>Succeeded</code>, and <code>Failed</code>.</p>")
  status: option<actionExecutionStatus>,
  @ocaml.doc("<p>The last update time of the action execution.</p>")
  lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>The start time of the action execution.</p>") startTime: option<timestamp_>,
  @ocaml.doc("<p>The name of the action.</p>") actionName: option<actionName>,
  @ocaml.doc("<p>The name of the stage that contains the action.</p>") stageName: option<stageName>,
  @ocaml.doc("<p>The version of the pipeline where the action was run.</p>")
  pipelineVersion: option<pipelineVersion>,
  @ocaml.doc("<p>The action execution ID.</p>") actionExecutionId: option<actionExecutionId>,
  @ocaml.doc("<p>The pipeline execution ID for the action execution.</p>")
  pipelineExecutionId: option<pipelineExecutionId>,
}
@ocaml.doc("<p>The details of a job sent in response to a <code>GetThirdPartyJobDetails</code>
            request.</p>")
type thirdPartyJobDetails = {
  @ocaml.doc("<p>A system-generated random number that AWS CodePipeline uses to ensure that the job
            is being worked on by only one job worker. Use this number in an <a>AcknowledgeThirdPartyJob</a> request.</p>")
  nonce: option<nonce>,
  @ocaml.doc("<p>The data to be returned by the third party job worker.</p>")
  data: option<thirdPartyJobData>,
  @ocaml.doc("<p>The identifier used to identify the job details in AWS CodePipeline.</p>")
  id: option<thirdPartyJobId>,
}
type stageStateList = array<stageState>
type pipelineStageDeclarationList = array<stageDeclaration>
@ocaml.doc("<p>Represents information about the details of a job.</p>")
type jobDetails = {
  @ocaml.doc("<p>The AWS account ID associated with the job.</p>") accountId: option<accountId>,
  @ocaml.doc("<p>Represents other information about a job required for a job worker to complete the
            job. </p>")
  data: option<jobData>,
  @ocaml.doc("<p>The unique system-generated ID of the job.</p>") id: option<jobId>,
}
@ocaml.doc("<p>Represents information about a job.</p>")
type job = {
  @ocaml.doc("<p>The ID of the AWS account to use when performing the job.</p>")
  accountId: option<accountId>,
  @ocaml.doc("<p>A system-generated random number that AWS CodePipeline uses to ensure that the job
            is being worked on by only one job worker. Use this number in an <a>AcknowledgeJob</a> request.</p>")
  nonce: option<nonce>,
  @ocaml.doc("<p>Other data about a job.</p>") data: option<jobData>,
  @ocaml.doc("<p>The unique system-generated ID of the job.</p>") id: option<jobId>,
}
type actionExecutionDetailList = array<actionExecutionDetail>
@ocaml.doc("<p>Represents the structure of actions and stages to be performed in the
            pipeline.</p>")
type pipelineDeclaration = {
  @ocaml.doc("<p>The version number of the pipeline. A new pipeline always has a version number of
            1. This number is incremented when a pipeline is updated.</p>")
  version: option<pipelineVersion>,
  @ocaml.doc("<p>The stage in which to perform the action.</p>")
  stages: pipelineStageDeclarationList,
  @ocaml.doc("<p>A mapping of <code>artifactStore</code> objects and their corresponding AWS
            Regions. There must be an artifact store for the pipeline Region and for each
            cross-region action in the pipeline.</p>
        <note>
            <p>You must include either <code>artifactStore</code> or
                    <code>artifactStores</code> in your pipeline, but you cannot use both. If you
                create a cross-region action in your pipeline, you must use
                    <code>artifactStores</code>.</p>
        </note>")
  artifactStores: option<artifactStoreMap>,
  @ocaml.doc("<p>Represents information about the S3 bucket where artifacts are stored for the
            pipeline.</p>
        <note>
            <p>You must include either <code>artifactStore</code> or
                    <code>artifactStores</code> in your pipeline, but you cannot use both. If you
                create a cross-region action in your pipeline, you must use
                    <code>artifactStores</code>.</p>
        </note>")
  artifactStore: option<artifactStore>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for AWS CodePipeline to use to either perform
            actions with no <code>actionRoleArn</code>, or to use to assume roles for actions with
            an <code>actionRoleArn</code>.</p>")
  roleArn: roleArn,
  @ocaml.doc("<p>The name of the pipeline.</p>") name: pipelineName,
}
type jobList = array<job>
@ocaml.doc("<fullname>AWS CodePipeline</fullname>
        <p>
            <b>Overview</b>
        </p>
        <p>This is the AWS CodePipeline API Reference. This guide provides descriptions of the
            actions and data types for AWS CodePipeline. Some functionality for your pipeline can
            only be configured through the API. For more information, see the <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html\">AWS
                CodePipeline User Guide</a>.</p>
        <p>You can use the AWS CodePipeline API to work with pipelines, stages, actions, and
            transitions.</p>
        <p>
            <i>Pipelines</i> are models of automated release processes. Each pipeline
            is uniquely named, and consists of stages, actions, and transitions. </p>
        <p>You can work with pipelines by calling:</p>
        <ul>
            <li>
                <p>
                    <a>CreatePipeline</a>, which creates a uniquely named
                    pipeline.</p>
            </li>
            <li>
                <p>
                    <a>DeletePipeline</a>, which deletes the specified
                    pipeline.</p>
            </li>
            <li>
                <p>
                    <a>GetPipeline</a>, which returns information about the pipeline
                    structure and pipeline metadata, including the pipeline Amazon Resource Name
                    (ARN).</p>
            </li>
            <li>
                <p>
                    <a>GetPipelineExecution</a>, which returns information about a
                    specific execution of a pipeline.</p>
            </li>
            <li>
                <p>
                    <a>GetPipelineState</a>, which returns information about the current
                    state of the stages and actions of a pipeline.</p>
            </li>
            <li>
                <p>
                  <a>ListActionExecutions</a>, which returns action-level details
                    for past executions. The details include full stage and action-level details,
                    including individual action duration, status, any errors that occurred during
                    the execution, and input and output artifact location details.</p>
            </li>
            <li>
                <p>
                    <a>ListPipelines</a>, which gets a summary of all of the pipelines
                    associated with your account.</p>
            </li>
            <li>
                <p>
                    <a>ListPipelineExecutions</a>, which gets a summary of the most
                    recent executions for a pipeline.</p>
            </li>
            <li>
                <p>
                    <a>StartPipelineExecution</a>, which runs the most recent revision of
                    an artifact through the pipeline.</p>
            </li>
            <li>
                <p>
                    <a>StopPipelineExecution</a>, which stops the specified pipeline
                    execution from continuing through the pipeline.</p>
            </li>
            <li>
                <p>
                    <a>UpdatePipeline</a>, which updates a pipeline with edits or changes
                    to the structure of the pipeline.</p>
            </li>
         </ul>
        <p>Pipelines include <i>stages</i>. Each stage contains one or more
            actions that must complete before the next stage begins. A stage results in success or
            failure. If a stage fails, the pipeline stops at that stage and remains stopped until
            either a new version of an artifact appears in the source location, or a user takes
            action to rerun the most recent artifact through the pipeline. You can call <a>GetPipelineState</a>, which displays the status of a pipeline, including the
            status of stages in the pipeline, or <a>GetPipeline</a>, which returns the
            entire structure of the pipeline, including the stages of that pipeline. For more
            information about the structure of stages and actions, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-structure.html\">AWS CodePipeline
                Pipeline Structure Reference</a>.</p>
        <p>Pipeline stages include <i>actions</i> that are categorized into
            categories such as source or build actions performed in a stage of a pipeline. For
            example, you can use a source action to import artifacts into a pipeline from a source
            such as Amazon S3. Like stages, you do not work with actions directly in most cases, but
            you do define and interact with actions when working with pipeline operations such as
                <a>CreatePipeline</a> and <a>GetPipelineState</a>. Valid
            action categories are:</p>
        <ul>
            <li>
                <p>Source</p>
            </li>
            <li>
                <p>Build</p>
            </li>
            <li>
                <p>Test</p>
            </li>
            <li>
                <p>Deploy</p>
            </li>
            <li>
                <p>Approval</p>
            </li>
            <li>
                <p>Invoke</p>
            </li>
         </ul>
        <p>Pipelines also include <i>transitions</i>, which allow the transition
            of artifacts from one stage to the next in a pipeline after the actions in one stage
            complete.</p>
        <p>You can work with transitions by calling:</p>
        <ul>
            <li>
                <p>
                    <a>DisableStageTransition</a>, which prevents artifacts from
                    transitioning to the next stage in a pipeline.</p>
            </li>
            <li>
                <p>
                    <a>EnableStageTransition</a>, which enables transition of artifacts
                    between stages in a pipeline. </p>
            </li>
         </ul>
        <p>
            <b>Using the API to integrate with AWS CodePipeline</b>
        </p>
        <p>For third-party integrators or developers who want to create their own integrations
            with AWS CodePipeline, the expected sequence varies from the standard API user. To
            integrate with AWS CodePipeline, developers need to work with the following
            items:</p>
        <p>
            <b>Jobs</b>, which are instances of an action. For
            example, a job for a source action might import a revision of an artifact from a source. </p>
        <p>You can work with jobs by calling:</p>
        <ul>
            <li>
                <p>
                    <a>AcknowledgeJob</a>, which confirms whether a job worker has
                    received the specified job.</p>
            </li>
            <li>
                <p>
                    <a>GetJobDetails</a>, which returns the details of a job.</p>
            </li>
            <li>
                <p>
                    <a>PollForJobs</a>, which determines whether there are any jobs to
                    act on.</p>
            </li>
            <li>
                <p>
                    <a>PutJobFailureResult</a>, which provides details of a job failure.
                </p>
            </li>
            <li>
                <p>
                    <a>PutJobSuccessResult</a>, which provides details of a job
                    success.</p>
            </li>
         </ul>
        <p>
            <b>Third party jobs</b>, which are instances of an action
            created by a partner action and integrated into AWS CodePipeline. Partner actions are
            created by members of the AWS Partner Network.</p>
        <p>You can work with third party jobs by calling:</p>
        <ul>
            <li>
                <p>
                    <a>AcknowledgeThirdPartyJob</a>, which confirms whether a job worker
                    has received the specified job.</p>
            </li>
            <li>
                <p>
                    <a>GetThirdPartyJobDetails</a>, which requests the details of a job
                    for a partner action.</p>
            </li>
            <li>
                <p>
                    <a>PollForThirdPartyJobs</a>, which determines whether there are any
                    jobs to act on. </p>
            </li>
            <li>
                <p>
                    <a>PutThirdPartyJobFailureResult</a>, which provides details of a job
                    failure.</p>
            </li>
            <li>
                <p>
                    <a>PutThirdPartyJobSuccessResult</a>, which provides details of a job
                    success.</p>
            </li>
         </ul>")
module StopPipelineExecution = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Use this option to enter comments, such as the reason the pipeline was stopped.</p>"
    )
    reason: option<stopPipelineExecutionReason>,
    @ocaml.doc("<p>Use this option to stop the pipeline execution by abandoning, rather than finishing,
            in-progress actions.</p>
        <note>
            <p>This option can lead to failed or out-of-sequence tasks.</p>
        </note>")
    abandon: option<boolean_>,
    @ocaml.doc("<p>The ID of the pipeline execution to be stopped in the current stage. Use the
                <code>GetPipelineState</code> action to retrieve the current
            pipelineExecutionId.</p>")
    pipelineExecutionId: pipelineExecutionId,
    @ocaml.doc("<p>The name of the pipeline to stop.</p>") pipelineName: pipelineName,
  }
  type response = {
    @ocaml.doc("<p>The unique system-generated ID of the pipeline execution that was stopped.</p>")
    pipelineExecutionId: option<pipelineExecutionId>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "StopPipelineExecutionCommand"
  let make = (~pipelineExecutionId, ~pipelineName, ~reason=?, ~abandon=?, ()) =>
    new({
      reason: reason,
      abandon: abandon,
      pipelineExecutionId: pipelineExecutionId,
      pipelineName: pipelineName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartPipelineExecution = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>StartPipelineExecution</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The system-generated unique ID used to identify a unique execution
            request.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The name of the pipeline to start.</p>") name: pipelineName,
  }
  @ocaml.doc("<p>Represents the output of a <code>StartPipelineExecution</code> action.</p>")
  type response = {
    @ocaml.doc("<p>The unique system-generated ID of the pipeline execution that was
            started.</p>")
    pipelineExecutionId: option<pipelineExecutionId>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "StartPipelineExecutionCommand"
  let make = (~name, ~clientRequestToken=?, ()) =>
    new({clientRequestToken: clientRequestToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RetryStageExecution = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>RetryStageExecution</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The scope of the retry attempt. Currently, the only supported value is
            FAILED_ACTIONS.</p>")
    retryMode: stageRetryMode,
    @ocaml.doc("<p>The ID of the pipeline execution in the failed stage to be retried. Use the <a>GetPipelineState</a> action to retrieve the current pipelineExecutionId of
            the failed stage</p>")
    pipelineExecutionId: pipelineExecutionId,
    @ocaml.doc("<p>The name of the failed stage to be retried.</p>") stageName: stageName,
    @ocaml.doc("<p>The name of the pipeline that contains the failed stage.</p>")
    pipelineName: pipelineName,
  }
  @ocaml.doc("<p>Represents the output of a <code>RetryStageExecution</code> action.</p>")
  type response = {
    @ocaml.doc("<p>The ID of the current workflow execution in the failed stage.</p>")
    pipelineExecutionId: option<pipelineExecutionId>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "RetryStageExecutionCommand"
  let make = (~retryMode, ~pipelineExecutionId, ~stageName, ~pipelineName, ()) =>
    new({
      retryMode: retryMode,
      pipelineExecutionId: pipelineExecutionId,
      stageName: stageName,
      pipelineName: pipelineName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterWebhookWithThirdParty = {
  type t
  type request = {
    @ocaml.doc("<p>The name of an existing webhook created with PutWebhook to register with a
            supported third party. </p>")
    webhookName: option<webhookName>,
  }
  type response = {.}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "RegisterWebhookWithThirdPartyCommand"
  let make = (~webhookName=?, ()) => new({webhookName: webhookName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module EnableStageTransition = {
  type t
  @ocaml.doc("<p>Represents the input of an <code>EnableStageTransition</code> action.</p>")
  type request = {
    @ocaml.doc("<p>Specifies whether artifacts are allowed to enter the stage and be processed by the
            actions in that stage (inbound) or whether already processed artifacts are allowed to
            transition to the next stage (outbound).</p>")
    transitionType: stageTransitionType,
    @ocaml.doc("<p>The name of the stage where you want to enable the transition of artifacts, either
            into the stage (inbound) or from that stage to the next stage (outbound).</p>")
    stageName: stageName,
    @ocaml.doc("<p>The name of the pipeline in which you want to enable the flow of artifacts from one
            stage to another.</p>")
    pipelineName: pipelineName,
  }
  type response = {.}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "EnableStageTransitionCommand"
  let make = (~transitionType, ~stageName, ~pipelineName, ()) =>
    new({transitionType: transitionType, stageName: stageName, pipelineName: pipelineName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableStageTransition = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DisableStageTransition</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The reason given to the user that a stage is disabled, such as waiting for manual
            approval or manual tests. This message is displayed in the pipeline console
            UI.</p>")
    reason: disabledReason,
    @ocaml.doc("<p>Specifies whether artifacts are prevented from transitioning into the stage and
            being processed by the actions in that stage (inbound), or prevented from transitioning
            from the stage after they have been processed by the actions in that stage
            (outbound).</p>")
    transitionType: stageTransitionType,
    @ocaml.doc("<p>The name of the stage where you want to disable the inbound or outbound transition
            of artifacts.</p>")
    stageName: stageName,
    @ocaml.doc("<p>The name of the pipeline in which you want to disable the flow of artifacts from
            one stage to another.</p>")
    pipelineName: pipelineName,
  }
  type response = {.}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "DisableStageTransitionCommand"
  let make = (~reason, ~transitionType, ~stageName, ~pipelineName, ()) =>
    new({
      reason: reason,
      transitionType: transitionType,
      stageName: stageName,
      pipelineName: pipelineName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeregisterWebhookWithThirdParty = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the webhook you want to deregister.</p>")
    webhookName: option<webhookName>,
  }
  type response = {.}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "DeregisterWebhookWithThirdPartyCommand"
  let make = (~webhookName=?, ()) => new({webhookName: webhookName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteWebhook = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the webhook you want to delete.</p>") name: webhookName,
  }
  type response = {.}
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "DeleteWebhookCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePipeline = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DeletePipeline</code> action.</p>")
  type request = {@ocaml.doc("<p>The name of the pipeline to be deleted.</p>") name: pipelineName}
  type response = {.}
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "DeletePipelineCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCustomActionType = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DeleteCustomActionType</code> operation. The custom
            action will be marked as deleted.</p>")
  type request = {
    @ocaml.doc("<p>The version of the custom action to delete.</p>") version: version,
    @ocaml.doc("<p>The provider of the service used in the custom action, such as AWS
            CodeDeploy.</p>")
    provider: actionProvider,
    @ocaml.doc("<p>The category of the custom action that you want to delete, such as source or
            deploy.</p>")
    category: actionCategory,
  }
  type response = {.}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "DeleteCustomActionTypeCommand"
  let make = (~version, ~provider, ~category, ()) =>
    new({version: version, provider: provider, category: category})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AcknowledgeThirdPartyJob = {
  type t
  @ocaml.doc("<p>Represents the input of an AcknowledgeThirdPartyJob action.</p>")
  type request = {
    @ocaml.doc("<p>The clientToken portion of the clientId and clientToken pair used to verify that
            the calling entity is allowed access to the job and its details.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p>A system-generated random number that AWS CodePipeline uses to ensure that the job
            is being worked on by only one job worker. Get this number from the response to a <a>GetThirdPartyJobDetails</a> request.</p>")
    nonce: nonce,
    @ocaml.doc("<p>The unique system-generated ID of the job.</p>") jobId: thirdPartyJobId,
  }
  @ocaml.doc("<p>Represents the output of an AcknowledgeThirdPartyJob action.</p>")
  type response = {
    @ocaml.doc("<p>The status information for the third party job, if any.</p>")
    status: option<jobStatus>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "AcknowledgeThirdPartyJobCommand"
  let make = (~clientToken, ~nonce, ~jobId, ()) =>
    new({clientToken: clientToken, nonce: nonce, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcknowledgeJob = {
  type t
  @ocaml.doc("<p>Represents the input of an AcknowledgeJob action.</p>")
  type request = {
    @ocaml.doc("<p>A system-generated random number that AWS CodePipeline uses to ensure that the job
            is being worked on by only one job worker. Get this number from the response of the
                <a>PollForJobs</a> request that returned this job.</p>")
    nonce: nonce,
    @ocaml.doc("<p>The unique system-generated ID of the job for which you want to confirm
            receipt.</p>")
    jobId: jobId,
  }
  @ocaml.doc("<p>Represents the output of an AcknowledgeJob action.</p>")
  type response = {
    @ocaml.doc("<p>Whether the job worker has received the specified job.</p>")
    status: option<jobStatus>,
  }
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "AcknowledgeJobCommand"
  let make = (~nonce, ~jobId, ()) => new({nonce: nonce, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of keys for the tags to be removed from the resource.</p>")
    tagKeys: tagKeyList,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the resource to remove tags from.</p>")
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutThirdPartyJobSuccessResult = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>PutThirdPartyJobSuccessResult</code>
            action.</p>")
  type request = {
    @ocaml.doc("<p>The details of the actions taken and results produced on an artifact as it passes
            through stages in the pipeline. </p>")
    executionDetails: option<executionDetails>,
    @ocaml.doc("<p>A token generated by a job worker, such as an AWS CodeDeploy deployment ID, that a
            successful job provides to identify a partner action in progress. Future jobs use this
            token to identify the running instance of the action. It can be reused to return more
            information about the progress of the partner action. When the action is complete, no
            continuation token should be supplied.</p>")
    continuationToken: option<continuationToken>,
    @ocaml.doc("<p>Represents information about a current revision.</p>")
    currentRevision: option<currentRevision>,
    @ocaml.doc("<p>The clientToken portion of the clientId and clientToken pair used to verify that
            the calling entity is allowed access to the job and its details.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p>The ID of the job that successfully completed. This is the same ID returned from
                <code>PollForThirdPartyJobs</code>.</p>")
    jobId: thirdPartyJobId,
  }
  type response = {.}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "PutThirdPartyJobSuccessResultCommand"
  let make = (
    ~clientToken,
    ~jobId,
    ~executionDetails=?,
    ~continuationToken=?,
    ~currentRevision=?,
    (),
  ) =>
    new({
      executionDetails: executionDetails,
      continuationToken: continuationToken,
      currentRevision: currentRevision,
      clientToken: clientToken,
      jobId: jobId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutThirdPartyJobFailureResult = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>PutThirdPartyJobFailureResult</code>
            action.</p>")
  type request = {
    @ocaml.doc("<p>Represents information about failure details.</p>")
    failureDetails: failureDetails,
    @ocaml.doc("<p>The clientToken portion of the clientId and clientToken pair used to verify that
            the calling entity is allowed access to the job and its details.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p>The ID of the job that failed. This is the same ID returned from
                <code>PollForThirdPartyJobs</code>.</p>")
    jobId: thirdPartyJobId,
  }
  type response = {.}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "PutThirdPartyJobFailureResultCommand"
  let make = (~failureDetails, ~clientToken, ~jobId, ()) =>
    new({failureDetails: failureDetails, clientToken: clientToken, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutJobSuccessResult = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>PutJobSuccessResult</code> action.</p>")
  type request = {
    @ocaml.doc("<p>Key-value pairs produced as output by a job worker that can be made available to a
            downstream action configuration. <code>outputVariables</code> can be included only when
            there is no continuation token on the request.</p>")
    outputVariables: option<outputVariablesMap>,
    @ocaml.doc("<p>The execution details of the successful job, such as the actions taken by the job
            worker.</p>")
    executionDetails: option<executionDetails>,
    @ocaml.doc("<p>A token generated by a job worker, such as an AWS CodeDeploy deployment ID, that a
            successful job provides to identify a custom action in progress. Future jobs use this
            token to identify the running instance of the action. It can be reused to return more
            information about the progress of the custom action. When the action is complete, no
            continuation token should be supplied.</p>")
    continuationToken: option<continuationToken>,
    @ocaml.doc("<p>The ID of the current revision of the artifact successfully worked on by the
            job.</p>")
    currentRevision: option<currentRevision>,
    @ocaml.doc("<p>The unique system-generated ID of the job that succeeded. This is the same ID
            returned from <code>PollForJobs</code>.</p>")
    jobId: jobId,
  }
  type response = {.}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "PutJobSuccessResultCommand"
  let make = (
    ~jobId,
    ~outputVariables=?,
    ~executionDetails=?,
    ~continuationToken=?,
    ~currentRevision=?,
    (),
  ) =>
    new({
      outputVariables: outputVariables,
      executionDetails: executionDetails,
      continuationToken: continuationToken,
      currentRevision: currentRevision,
      jobId: jobId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutJobFailureResult = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>PutJobFailureResult</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The details about the failure of a job.</p>") failureDetails: failureDetails,
    @ocaml.doc("<p>The unique system-generated ID of the job that failed. This is the same ID returned
            from <code>PollForJobs</code>.</p>")
    jobId: jobId,
  }
  type response = {.}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "PutJobFailureResultCommand"
  let make = (~failureDetails, ~jobId, ()) => new({failureDetails: failureDetails, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutApprovalResult = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>PutApprovalResult</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The system-generated token used to identify a unique approval request. The token
            for each open approval request can be obtained using the <a>GetPipelineState</a> action. It is used to validate that the approval
            request corresponding to this token is still valid.</p>")
    token: approvalToken,
    @ocaml.doc("<p>Represents information about the result of the approval request.</p>")
    result: approvalResult,
    @ocaml.doc("<p>The name of the action for which approval is requested.</p>")
    actionName: actionName,
    @ocaml.doc("<p>The name of the stage that contains the action.</p>") stageName: stageName,
    @ocaml.doc("<p>The name of the pipeline that contains the action. </p>")
    pipelineName: pipelineName,
  }
  @ocaml.doc("<p>Represents the output of a <code>PutApprovalResult</code> action.</p>")
  type response = {
    @ocaml.doc("<p>The timestamp showing when the approval or rejection was submitted.</p>")
    approvedAt: option<timestamp_>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "PutApprovalResultCommand"
  let make = (~token, ~result, ~actionName, ~stageName, ~pipelineName, ()) =>
    new({
      token: token,
      result: result,
      actionName: actionName,
      stageName: stageName,
      pipelineName: pipelineName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutActionRevision = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>PutActionRevision</code> action.</p>")
  type request = {
    @ocaml.doc("<p>Represents information about the version (or revision) of an action.</p>")
    actionRevision: actionRevision,
    @ocaml.doc("<p>The name of the action that processes the revision.</p>") actionName: actionName,
    @ocaml.doc("<p>The name of the stage that contains the action that acts on the revision.</p>")
    stageName: stageName,
    @ocaml.doc("<p>The name of the pipeline that starts processing the revision to the
            source.</p>")
    pipelineName: pipelineName,
  }
  @ocaml.doc("<p>Represents the output of a <code>PutActionRevision</code> action.</p>")
  type response = {
    @ocaml.doc("<p>The ID of the current workflow state of the pipeline.</p>")
    pipelineExecutionId: option<pipelineExecutionId>,
    @ocaml.doc("<p>Indicates whether the artifact revision was previously used in an execution of the
            specified pipeline.</p>")
    newRevision: option<boolean_>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "PutActionRevisionCommand"
  let make = (~actionRevision, ~actionName, ~stageName, ~pipelineName, ()) =>
    new({
      actionRevision: actionRevision,
      actionName: actionName,
      stageName: stageName,
      pipelineName: pipelineName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags you want to modify or add to the resource.</p>") tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>")
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PollForThirdPartyJobs = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>PollForThirdPartyJobs</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of jobs to return in a poll for jobs call.</p>")
    maxBatchSize: option<maxBatchSize>,
    @ocaml.doc("<p>Represents information about an action type.</p>") actionTypeId: actionTypeId,
  }
  @ocaml.doc("<p>Represents the output of a <code>PollForThirdPartyJobs</code> action.</p>")
  type response = {
    @ocaml.doc("<p>Information about the jobs to take action on.</p>")
    jobs: option<thirdPartyJobList>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "PollForThirdPartyJobsCommand"
  let make = (~actionTypeId, ~maxBatchSize=?, ()) =>
    new({maxBatchSize: maxBatchSize, actionTypeId: actionTypeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token that was returned from the previous API call, which would be used to return
            the next page of the list. The ListTagsforResource call lists all available tags in one
            call and does not use pagination.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to get tags for.</p>")
    resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>If the amount of returned information is significantly large, an identifier is also
            returned and can be used in a subsequent API call to return the next page of the list.
            The ListTagsforResource call lists all available tags in one call and does not use
            pagination.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The tags for the resource.</p>") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPipelines = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>ListPipelines</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of pipelines to return in a single call. To retrieve the remaining
            pipelines, make another call with the returned nextToken value. The minimum value you
            can specify is 1. The maximum accepted value is 1000.</p>")
    maxResults: option<maxPipelines>,
    @ocaml.doc("<p>An identifier that was returned from the previous list pipelines call. It can be
            used to return the next set of pipelines in the list.</p>")
    nextToken: option<nextToken>,
  }
  @ocaml.doc("<p>Represents the output of a <code>ListPipelines</code> action.</p>")
  type response = {
    @ocaml.doc("<p>If the amount of returned information is significantly large, an identifier is also
            returned. It can be used in a subsequent list pipelines call to return the next set of
            pipelines in the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of pipelines.</p>") pipelines: option<pipelineList>,
  }
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "ListPipelinesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPipelineExecution = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>GetPipelineExecution</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The ID of the pipeline execution about which you want to get execution
            details.</p>")
    pipelineExecutionId: pipelineExecutionId,
    @ocaml.doc("<p>The name of the pipeline about which you want to get execution details.</p>")
    pipelineName: pipelineName,
  }
  @ocaml.doc("<p>Represents the output of a <code>GetPipelineExecution</code> action.</p>")
  type response = {
    @ocaml.doc("<p>Represents information about the execution of a pipeline.</p>")
    pipelineExecution: option<pipelineExecution>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "GetPipelineExecutionCommand"
  let make = (~pipelineExecutionId, ~pipelineName, ()) =>
    new({pipelineExecutionId: pipelineExecutionId, pipelineName: pipelineName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCustomActionType = {
  type t
  @ocaml.doc("<p>Represents the input of a CreateCustomActionType operation.</p>")
  type request = {
    @ocaml.doc("<p>The tags for the custom action.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The details of the output artifact of the action, such as its commit ID.</p>")
    outputArtifactDetails: artifactDetails,
    @ocaml.doc("<p>The details of the input artifact for the action, such as its commit ID.</p>")
    inputArtifactDetails: artifactDetails,
    @ocaml.doc("<p>The configuration properties for the custom action.</p>
        <note>
            <p>You can refer to a name in the configuration properties of the custom action
                within the URL templates by following the format of {Config:name}, as long as the
                configuration property is both required and not secret. For more information, see
                    <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-create-custom-action.html\">Create a
                    Custom Action for a Pipeline</a>.</p>
        </note>")
    configurationProperties: option<actionConfigurationPropertyList>,
    @ocaml.doc("<p>URLs that provide users information about this custom action.</p>")
    settings: option<actionTypeSettings>,
    @ocaml.doc("<p>The version identifier of the custom action.</p>") version: version,
    @ocaml.doc("<p>The provider of the service used in the custom action, such as AWS
            CodeDeploy.</p>")
    provider: actionProvider,
    @ocaml.doc("<p>The category of the custom action, such as a build action or a test
            action.</p>")
    category: actionCategory,
  }
  @ocaml.doc("<p>Represents the output of a <code>CreateCustomActionType</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>Specifies the tags applied to the custom action.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>Returns information about the details of an action type.</p>")
    actionType: actionType,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "CreateCustomActionTypeCommand"
  let make = (
    ~outputArtifactDetails,
    ~inputArtifactDetails,
    ~version,
    ~provider,
    ~category,
    ~tags=?,
    ~configurationProperties=?,
    ~settings=?,
    (),
  ) =>
    new({
      tags: tags,
      outputArtifactDetails: outputArtifactDetails,
      inputArtifactDetails: inputArtifactDetails,
      configurationProperties: configurationProperties,
      settings: settings,
      version: version,
      provider: provider,
      category: category,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutWebhook = {
  type t
  type request = {
    @ocaml.doc("<p>The tags for the webhook.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The detail provided in an input file to create the webhook, such as the webhook
            name, the pipeline name, and the action name. Give the webhook a unique name that helps
            you identify it. You might name the webhook after the pipeline and action it targets so
            that you can easily recognize what it's used for later.</p>")
    webhook: webhookDefinition,
  }
  type response = {
    @ocaml.doc("<p>The detail returned from creating the webhook, such as the webhook name, webhook
            URL, and webhook ARN.</p>")
    webhook: option<listWebhookItem>,
  }
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "PutWebhookCommand"
  let make = (~webhook, ~tags=?, ()) => new({tags: tags, webhook: webhook})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPipelineExecutions = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>ListPipelineExecutions</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The token that was returned from the previous <code>ListPipelineExecutions</code>
            call, which can be used to return the next set of pipeline executions in the
            list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in a single call. To retrieve the remaining
            results, make another call with the returned nextToken value. Pipeline history is
            limited to the most recent 12 months, based on pipeline execution start times. Default
            value is 100.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The name of the pipeline for which you want to get execution summary
            information.</p>")
    pipelineName: pipelineName,
  }
  @ocaml.doc("<p>Represents the output of a <code>ListPipelineExecutions</code> action.</p>")
  type response = {
    @ocaml.doc("<p>A token that can be used in the next <code>ListPipelineExecutions</code> call. To
            view all items in the list, continue to call this operation with each subsequent token
            until no more nextToken values are returned.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of executions in the history of a pipeline.</p>")
    pipelineExecutionSummaries: option<pipelineExecutionSummaryList>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "ListPipelineExecutionsCommand"
  let make = (~pipelineName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, pipelineName: pipelineName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListActionTypes = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>ListActionTypes</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The Region to filter on for the list of action types.</p>")
    regionFilter: option<awsregionName>,
    @ocaml.doc("<p>An identifier that was returned from the previous list action types call, which can
            be used to return the next set of action types in the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Filters the list of action types to those created by a specified entity.</p>")
    actionOwnerFilter: option<actionOwner>,
  }
  @ocaml.doc("<p>Represents the output of a <code>ListActionTypes</code> action.</p>")
  type response = {
    @ocaml.doc("<p>If the amount of returned information is significantly large, an identifier is also
            returned. It can be used in a subsequent list action types call to return the next set
            of action types in the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Provides details of the action types.</p>") actionTypes: actionTypeList,
  }
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "ListActionTypesCommand"
  let make = (~regionFilter=?, ~nextToken=?, ~actionOwnerFilter=?, ()) =>
    new({regionFilter: regionFilter, nextToken: nextToken, actionOwnerFilter: actionOwnerFilter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateActionType = {
  type t
  type request = {
    @ocaml.doc("<p>The action type definition for the action type to be updated.</p>")
    actionType: actionTypeDeclaration,
  }
  type response = {.}
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "UpdateActionTypeCommand"
  let make = (~actionType, ()) => new({actionType: actionType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListWebhooks = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call. To retrieve the remaining
            results, make another call with the returned nextToken value.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token that was returned from the previous ListWebhooks call, which can be used
            to return the next set of webhooks in the list.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If the amount of returned information is significantly large, an identifier is also
            returned and can be used in a subsequent ListWebhooks call to return the next set of
            webhooks in the list. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The JSON detail returned for each webhook in the list output for the ListWebhooks
            call.</p>")
    webhooks: option<webhookList>,
  }
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "ListWebhooksCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetActionType = {
  type t
  type request = {
    @ocaml.doc("<p>A string that describes the action type version.</p>") version: version,
    @ocaml.doc("<p>The provider of the action type being called. The provider name is specified when the
            action type is created.</p>")
    provider: actionProvider,
    @ocaml.doc("<p>The creator of an action type that was created with any supported integration model.
            There are two valid values: <code>AWS</code> and <code>ThirdParty</code>.</p>")
    owner: actionTypeOwner,
    @ocaml.doc("<p>Defines what kind of action can be taken in the stage. The following are the valid
            values:</p>
        <ul>
            <li>
                <p>
                  <code>Source</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Build</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Test</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Deploy</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Approval</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Invoke</code>
               </p>
            </li>
         </ul>")
    category: actionCategory,
  }
  type response = {
    @ocaml.doc("<p>The action type information for the requested action type, such as the action type
            ID.</p>")
    actionType: option<actionTypeDeclaration>,
  }
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "GetActionTypeCommand"
  let make = (~version, ~provider, ~owner, ~category, ()) =>
    new({version: version, provider: provider, owner: owner, category: category})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListActionExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>The token that was returned from the previous <code>ListActionExecutions</code> call,
            which can be used to return the next set of action executions in the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in a single call. To retrieve the remaining
            results, make another call with the returned nextToken value. Action execution history
            is retained for up to 12 months, based on action execution start times. Default value is
            100. </p>
        <note>
            <p>Detailed execution history is available for executions run on or after February
                21, 2019.</p>
        </note>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Input information used to filter action execution history.</p>")
    filter: option<actionExecutionFilter>,
    @ocaml.doc(
      "<p> The name of the pipeline for which you want to list action execution history.</p>"
    )
    pipelineName: pipelineName,
  }
  type response = {
    @ocaml.doc("<p>If the amount of returned information is significantly large, an identifier is also
            returned and can be used in a subsequent <code>ListActionExecutions</code> call to
            return the next set of action executions in the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The details for a list of recent executions, such as action execution ID.</p>")
    actionExecutionDetails: option<actionExecutionDetailList>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "ListActionExecutionsCommand"
  let make = (~pipelineName, ~nextToken=?, ~maxResults=?, ~filter=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filter: filter, pipelineName: pipelineName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetThirdPartyJobDetails = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>GetThirdPartyJobDetails</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The clientToken portion of the clientId and clientToken pair used to verify that
            the calling entity is allowed access to the job and its details.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p>The unique system-generated ID used for identifying the job.</p>")
    jobId: thirdPartyJobId,
  }
  @ocaml.doc("<p>Represents the output of a <code>GetThirdPartyJobDetails</code> action.</p>")
  type response = {
    @ocaml.doc("<p>The details of the job, including any protected values defined for the
            job.</p>")
    jobDetails: option<thirdPartyJobDetails>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "GetThirdPartyJobDetailsCommand"
  let make = (~clientToken, ~jobId, ()) => new({clientToken: clientToken, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPipelineState = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>GetPipelineState</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The name of the pipeline about which you want to get information.</p>")
    name: pipelineName,
  }
  @ocaml.doc("<p>Represents the output of a <code>GetPipelineState</code> action.</p>")
  type response = {
    @ocaml.doc("<p>The date and time the pipeline was last updated, in timestamp format.</p>")
    updated: option<timestamp_>,
    @ocaml.doc("<p>The date and time the pipeline was created, in timestamp format.</p>")
    created: option<timestamp_>,
    @ocaml.doc("<p>A list of the pipeline stage output information, including stage name, state, most
            recent run details, whether the stage is disabled, and other data.</p>")
    stageStates: option<stageStateList>,
    @ocaml.doc("<p>The version number of the pipeline.</p>
        <note>
            <p>A newly created pipeline is always assigned a version number of
                <code>1</code>.</p>
        </note>")
    pipelineVersion: option<pipelineVersion>,
    @ocaml.doc("<p>The name of the pipeline for which you want to get the state.</p>")
    pipelineName: option<pipelineName>,
  }
  @module("@aws-sdk/client-codepipeline") @new
  external new: request => t = "GetPipelineStateCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJobDetails = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>GetJobDetails</code> action.</p>")
  type request = {@ocaml.doc("<p>The unique system-generated ID for the job.</p>") jobId: jobId}
  @ocaml.doc("<p>Represents the output of a <code>GetJobDetails</code> action.</p>")
  type response = {
    @ocaml.doc("<p>The details of the job.</p>
        <note>
            <p>If AWSSessionCredentials is used, a long-running job can call
                    <code>GetJobDetails</code> again to obtain new credentials.</p>
        </note>")
    jobDetails: option<jobDetails>,
  }
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "GetJobDetailsCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePipeline = {
  type t
  @ocaml.doc("<p>Represents the input of an <code>UpdatePipeline</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The name of the pipeline to be updated.</p>") pipeline: pipelineDeclaration,
  }
  @ocaml.doc("<p>Represents the output of an <code>UpdatePipeline</code> action.</p>")
  type response = {
    @ocaml.doc("<p>The structure of the updated pipeline.</p>")
    pipeline: option<pipelineDeclaration>,
  }
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "UpdatePipelineCommand"
  let make = (~pipeline, ()) => new({pipeline: pipeline})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PollForJobs = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>PollForJobs</code> action.</p>")
  type request = {
    @ocaml.doc("<p>A map of property names and values. For an action type with no queryable
            properties, this value must be null or an empty map. For an action type with a queryable
            property, you must supply that property as a key in the map. Only jobs whose action
            configuration matches the mapped value are returned.</p>")
    queryParam: option<queryParamMap>,
    @ocaml.doc("<p>The maximum number of jobs to return in a poll for jobs call.</p>")
    maxBatchSize: option<maxBatchSize>,
    @ocaml.doc("<p>Represents information about an action type.</p>") actionTypeId: actionTypeId,
  }
  @ocaml.doc("<p>Represents the output of a <code>PollForJobs</code> action.</p>")
  type response = {
    @ocaml.doc("<p>Information about the jobs to take action on.</p>") jobs: option<jobList>,
  }
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "PollForJobsCommand"
  let make = (~actionTypeId, ~queryParam=?, ~maxBatchSize=?, ()) =>
    new({queryParam: queryParam, maxBatchSize: maxBatchSize, actionTypeId: actionTypeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPipeline = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>GetPipeline</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The version number of the pipeline. If you do not specify a version, defaults to
            the current version.</p>")
    version: option<pipelineVersion>,
    @ocaml.doc("<p>The name of the pipeline for which you want to get information. Pipeline names must
            be unique under an AWS user account.</p>")
    name: pipelineName,
  }
  @ocaml.doc("<p>Represents the output of a <code>GetPipeline</code> action.</p>")
  type response = {
    @ocaml.doc("<p>Represents the pipeline metadata information returned as part of the output of a
                <code>GetPipeline</code> action.</p>")
    metadata: option<pipelineMetadata>,
    @ocaml.doc("<p>Represents the structure of actions and stages to be performed in the pipeline.
        </p>")
    pipeline: option<pipelineDeclaration>,
  }
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "GetPipelineCommand"
  let make = (~name, ~version=?, ()) => new({version: version, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePipeline = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>CreatePipeline</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The tags for the pipeline.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>Represents the structure of actions and stages to be performed in the pipeline.
        </p>")
    pipeline: pipelineDeclaration,
  }
  @ocaml.doc("<p>Represents the output of a <code>CreatePipeline</code> action.</p>")
  type response = {
    @ocaml.doc("<p>Specifies the tags applied to the pipeline.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>Represents the structure of actions and stages to be performed in the pipeline.
        </p>")
    pipeline: option<pipelineDeclaration>,
  }
  @module("@aws-sdk/client-codepipeline") @new external new: request => t = "CreatePipelineCommand"
  let make = (~pipeline, ~tags=?, ()) => new({tags: tags, pipeline: pipeline})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
