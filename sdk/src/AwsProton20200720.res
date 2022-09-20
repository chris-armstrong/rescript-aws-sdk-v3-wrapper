type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-awsproton20200720") @new
external createClient: unit => awsServiceClient = "AwsProton20200720Client"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type templateVersionStatus = [
  | @as("PUBLISHED") #PUBLISHED
  | @as("DRAFT") #DRAFT
  | @as("REGISTRATION_FAILED") #REGISTRATION_FAILED
  | @as("REGISTRATION_IN_PROGRESS") #REGISTRATION_IN_PROGRESS
]
type templateVersionPart = string
type templateType = [@as("SERVICE") #SERVICE | @as("ENVIRONMENT") #ENVIRONMENT]

type templateSchema = string
type tagValue = string
type tagKey = string
type syncType = [@as("TEMPLATE_SYNC") #TEMPLATE_SYNC]
type subdirectory = string
type statusMessage = string
type specContents = string

type serviceTemplateVersionArn = string

type serviceTemplateArn = string
type serviceStatus = [
  | @as("UPDATE_COMPLETE_CLEANUP_FAILED") #UPDATE_COMPLETE_CLEANUP_FAILED
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("UPDATE_FAILED_CLEANUP_FAILED") #UPDATE_FAILED_CLEANUP_FAILED
  | @as("UPDATE_FAILED_CLEANUP_COMPLETE") #UPDATE_FAILED_CLEANUP_COMPLETE
  | @as("UPDATE_FAILED_CLEANUP_IN_PROGRESS") #UPDATE_FAILED_CLEANUP_IN_PROGRESS
  | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("ACTIVE") #ACTIVE
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATE_FAILED_CLEANUP_FAILED") #CREATE_FAILED_CLEANUP_FAILED
  | @as("CREATE_FAILED_CLEANUP_COMPLETE") #CREATE_FAILED_CLEANUP_COMPLETE
  | @as("CREATE_FAILED_CLEANUP_IN_PROGRESS") #CREATE_FAILED_CLEANUP_IN_PROGRESS
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]

type serviceInstanceArn = string
type serviceArn = string
type sha = string
type s3Key = string
type s3Bucket = string
type resourceSyncStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("INITIATED") #INITIATED
]
@ocaml.doc("<p>Detail data for a resource sync event.</p>")
type resourceSyncEvent = {
  @ocaml.doc("<p>A resource sync event.</p>") event: baseString,
  @ocaml.doc("<p>The time when the event occurred.</p>") time: baseTimestamp,
  @ocaml.doc("<p>The external ID for the event.</p>") externalId: option<baseString>,
  @ocaml.doc("<p>The type of event.</p>") @as("type") type_: baseString,
}
type resourceName = string
@ocaml.doc("The state that a PR-based deployment can be updated to.")
type resourceDeploymentStatus = [
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("FAILED") #FAILED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type repositorySyncStatus = [
  | @as("QUEUED") #QUEUED
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("INITIATED") #INITIATED
]
@ocaml.doc("<p>Repository sync event detail data for a sync attempt.</p>")
type repositorySyncEvent = {
  @ocaml.doc("<p>Event detail for a repository sync attempt.</p>") event: baseString,
  @ocaml.doc("<p>The time that the sync event occurred.</p>") time: baseTimestamp,
  @ocaml.doc("<p>The external ID of the sync event.</p>") externalId: option<baseString>,
  @ocaml.doc("<p>The type of event.</p>") @as("type") type_: baseString,
}

type repositoryProvider = [
  | @as("BITBUCKET") #BITBUCKET
  | @as("GITHUB_ENTERPRISE") #GITHUB_ENTERPRISE
  | @as("GITHUB") #GITHUB
]
type repositoryName = string
type repositoryId = string
type repositoryArn = string
type provisioning = [@as("CUSTOMER_MANAGED") #CUSTOMER_MANAGED]
type provisionedResourceName = string
type provisionedResourceIdentifier = string
@ocaml.doc("List of provisioning engines")
type provisionedResourceEngine = [
  | @as("TERRAFORM") #TERRAFORM
  | @as("CLOUDFORMATION") #CLOUDFORMATION
]
type pipelineRoleArn = string
type outputValueString = string
type outputKey = string
type nextToken = string
type maxPageResults = int
type gitBranchName = string
type fullTemplateVersionNumber = string
type errorMessage = string

type environmentTemplateVersionArn = string

type environmentTemplateArn = string

type environmentArn = string
type environmentAccountConnectionStatus = [
  | @as("REJECTED") #REJECTED
  | @as("CONNECTED") #CONNECTED
  | @as("PENDING") #PENDING
]

type environmentAccountConnectionRequesterAccountType = [
  | @as("ENVIRONMENT_ACCOUNT") #ENVIRONMENT_ACCOUNT
  | @as("MANAGEMENT_ACCOUNT") #MANAGEMENT_ACCOUNT
]
type environmentAccountConnectionId = string
type environmentAccountConnectionArn = string
type emptyNextToken = string
type displayName = string
type description = string
type deploymentUpdateType = [
  | @as("MAJOR_VERSION") #MAJOR_VERSION
  | @as("MINOR_VERSION") #MINOR_VERSION
  | @as("CURRENT_VERSION") #CURRENT_VERSION
  | @as("NONE") #NONE
]
type deploymentStatus = [
  | @as("CANCELLED") #CANCELLED
  | @as("CANCELLING") #CANCELLING
  | @as("DELETE_COMPLETE") #DELETE_COMPLETE
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("FAILED") #FAILED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type deploymentId = string
type clientToken = string
type awsAccountId = string
type arn = string

@ocaml.doc("<p>The detail data for a template sync configuration.</p>")
type templateSyncConfig = {
  @ocaml.doc("<p>A subdirectory path to your template bundle version.</p>")
  subdirectory: option<subdirectory>,
  @ocaml.doc("<p>The repository branch.</p>") branch: gitBranchName,
  @ocaml.doc("<p>The name of the repository, for example <code>myrepos/myrepo</code>.</p>")
  repositoryName: repositoryName,
  @ocaml.doc("<p>The repository provider.</p>") repositoryProvider: repositoryProvider,
  @ocaml.doc("<p>The template type.</p>") templateType: templateType,
  @ocaml.doc("<p>The template name.</p>") templateName: resourceName,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A description of a resource tag.</p>")
type tag = {
  @ocaml.doc("<p>The value of the resource tag.</p>") value: tagValue,
  @ocaml.doc("<p>The key of the resource tag.</p>") key: tagKey,
}
@ocaml.doc("<p>A summary of the service template version detail data.</p>")
type serviceTemplateVersionSummary = {
  @ocaml.doc("<p>The time when the version of a service template was last modified.</p>")
  lastModifiedAt: baseTimestamp,
  @ocaml.doc("<p>The time when the version of a service template was created.</p>")
  createdAt: baseTimestamp,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the version of a service template.</p>")
  arn: serviceTemplateVersionArn,
  @ocaml.doc("<p>A description of the version of a service template.</p>")
  description: option<description>,
  @ocaml.doc("<p>A service template minor version status message.</p>")
  statusMessage: option<statusMessage>,
  @ocaml.doc("<p>The service template minor version status.</p>") status: templateVersionStatus,
  @ocaml.doc("<p>The recommended minor version of the service template.</p>")
  recommendedMinorVersion: option<templateVersionPart>,
  @ocaml.doc("<p>The minor version of a service template.</p>") minorVersion: templateVersionPart,
  @ocaml.doc(
    "<p>The latest major version that's associated with the version of a service template.</p>"
  )
  majorVersion: templateVersionPart,
  @ocaml.doc("<p>The name of the service template.</p>") templateName: resourceName,
}
@ocaml.doc("<p>The service template summary data.</p>")
type serviceTemplateSummary = {
  @ocaml.doc("<p>If <code>pipelineProvisioning</code> is <code>true</code>, a service pipeline is included in the service template, otherwise a service
   pipeline <i>isn't</i> included in the service template.</p>")
  pipelineProvisioning: option<provisioning>,
  @ocaml.doc("<p>The recommended version of the service template.</p>")
  recommendedVersion: option<fullTemplateVersionNumber>,
  @ocaml.doc("<p>A description of the service template.</p>") description: option<description>,
  @ocaml.doc("<p>The service template name as displayed in the developer interface.</p>")
  displayName: option<displayName>,
  @ocaml.doc("<p>The time when the service template was last modified.</p>")
  lastModifiedAt: baseTimestamp,
  @ocaml.doc("<p>The time when the service template was created.</p>") createdAt: baseTimestamp,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the service template.</p>")
  arn: serviceTemplateArn,
  @ocaml.doc("<p>The name of the service template.</p>") name: resourceName,
}
@ocaml.doc("<p>The service template detail data.</p>")
type serviceTemplate = {
  @ocaml.doc("<p>If <code>pipelineProvisioning</code> is <code>true</code>, a service pipeline is included in the service template. Otherwise, a service
   pipeline <i>isn't</i> included in the service template.</p>")
  pipelineProvisioning: option<provisioning>,
  @ocaml.doc(
    "<p>The customer provided service template encryption key that's used to encrypt data.</p>"
  )
  encryptionKey: option<arn>,
  @ocaml.doc("<p>The recommended version of the service template.</p>")
  recommendedVersion: option<fullTemplateVersionNumber>,
  @ocaml.doc("<p>A description of the service template.</p>") description: option<description>,
  @ocaml.doc("<p>The service template name as displayed in the developer interface.</p>")
  displayName: option<displayName>,
  @ocaml.doc("<p>The time when the service template was last modified.</p>")
  lastModifiedAt: baseTimestamp,
  @ocaml.doc("<p>The time when the service template was created.</p>") createdAt: baseTimestamp,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the service template.</p>")
  arn: serviceTemplateArn,
  @ocaml.doc("<p>The name of the service template.</p>") name: resourceName,
}
@ocaml.doc("<p>A summary of the service detail data.</p>")
type serviceSummary = {
  @ocaml.doc("<p>A service status message.</p>") statusMessage: option<statusMessage>,
  @ocaml.doc("<p>The status of the service.</p>") status: serviceStatus,
  @ocaml.doc("<p>The time when the service was last modified.</p>") lastModifiedAt: baseTimestamp,
  @ocaml.doc("<p>The time when the service was created.</p>") createdAt: baseTimestamp,
  @ocaml.doc("<p>The name of the service template.</p>") templateName: resourceName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the service.</p>") arn: serviceArn,
  @ocaml.doc("<p>A description of the service.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the service.</p>") name: resourceName,
}
@ocaml.doc("<p>The service pipeline detail data.</p>")
type servicePipeline = {
  @ocaml.doc("<p>The service spec that was used to create the service pipeline.</p>")
  spec: option<specContents>,
  @ocaml.doc("<p>A service pipeline deployment status message.</p>")
  deploymentStatusMessage: option<statusMessage>,
  @ocaml.doc("<p>The deployment status of the service pipeline.</p>")
  deploymentStatus: deploymentStatus,
  @ocaml.doc(
    "<p>The minor version of the service template that was used to create the service pipeline.</p>"
  )
  templateMinorVersion: templateVersionPart,
  @ocaml.doc(
    "<p>The major version of the service template that was used to create the service pipeline.</p>"
  )
  templateMajorVersion: templateVersionPart,
  @ocaml.doc(
    "<p>The name of the service template that was used to create the service pipeline.</p>"
  )
  templateName: resourceName,
  @ocaml.doc("<p>The time when the service pipeline was last deployed successfully.</p>")
  lastDeploymentSucceededAt: baseTimestamp,
  @ocaml.doc("<p>The time when a deployment of the service pipeline was last attempted.</p>")
  lastDeploymentAttemptedAt: baseTimestamp,
  @ocaml.doc("<p>The time when the service pipeline was created.</p>") createdAt: baseTimestamp,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the service pipeline.</p>") arn: arn,
}
@ocaml.doc("<p>A summary of the service instance detail data.</p>")
type serviceInstanceSummary = {
  @ocaml.doc("<p>A service instance deployment status message.</p>")
  deploymentStatusMessage: option<statusMessage>,
  @ocaml.doc("<p>The service instance deployment status.</p>") deploymentStatus: deploymentStatus,
  @ocaml.doc("<p>The service instance template minor version.</p>")
  templateMinorVersion: templateVersionPart,
  @ocaml.doc("<p>The service instance template major version.</p>")
  templateMajorVersion: templateVersionPart,
  @ocaml.doc("<p>The name of the service template.</p>") templateName: resourceName,
  @ocaml.doc("<p>The name of the environment that the service instance was deployed into.</p>")
  environmentName: resourceName,
  @ocaml.doc("<p>The name of the service that the service instance belongs to.</p>")
  serviceName: resourceName,
  @ocaml.doc("<p>The time when the service was last deployed successfully.</p>")
  lastDeploymentSucceededAt: baseTimestamp,
  @ocaml.doc("<p>The time when a deployment of the service was last attempted.</p>")
  lastDeploymentAttemptedAt: baseTimestamp,
  @ocaml.doc("<p>The time when the service instance was created.</p>") createdAt: baseTimestamp,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the service instance.</p>")
  arn: serviceInstanceArn,
  @ocaml.doc("<p>The name of the service instance.</p>") name: resourceName,
}
@ocaml.doc("<p>The service instance detail data.</p>")
type serviceInstance = {
  @ocaml.doc("<p>The service spec that was used to create the service instance.</p>")
  spec: option<specContents>,
  @ocaml.doc("<p>A service instance deployment status message.</p>")
  deploymentStatusMessage: option<statusMessage>,
  @ocaml.doc("<p>The service instance deployment status.</p>") deploymentStatus: deploymentStatus,
  @ocaml.doc(
    "<p>The minor version of the service template that was used to create the service instance.</p>"
  )
  templateMinorVersion: templateVersionPart,
  @ocaml.doc(
    "<p>The major version of the service template that was used to create the service instance.</p>"
  )
  templateMajorVersion: templateVersionPart,
  @ocaml.doc(
    "<p>The name of the service template that was used to create the service instance.</p>"
  )
  templateName: resourceName,
  @ocaml.doc("<p>The name of the environment that the service instance was deployed into.</p>")
  environmentName: resourceName,
  @ocaml.doc("<p>The name of the service that the service instance belongs to.</p>")
  serviceName: resourceName,
  @ocaml.doc("<p>The time when the service instance was last deployed successfully.</p>")
  lastDeploymentSucceededAt: baseTimestamp,
  @ocaml.doc("<p>The time when a deployment of the service instance was last attempted.</p>")
  lastDeploymentAttemptedAt: baseTimestamp,
  @ocaml.doc("<p>The time when the service instance was created.</p>") createdAt: baseTimestamp,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the service instance.</p>")
  arn: serviceInstanceArn,
  @ocaml.doc("<p>The name of the service instance.</p>") name: resourceName,
}
@ocaml.doc("<p>Template bundle S3 bucket data.</p>")
type s3ObjectSource = {
  @ocaml.doc("<p>The path to the S3 bucket that contains a template bundle.</p>") key: s3Key,
  @ocaml.doc("<p>The name of the S3 bucket that contains a template bundle.</p>") bucket: s3Bucket,
}
@ocaml.doc("<p>Revision detail data for a commit and push that activates a sync attempt</p>")
type revision = {
  @ocaml.doc("<p>The repository branch.</p>") branch: gitBranchName,
  @ocaml.doc(
    "<p>The repository directory changed by a commit and push that activated the sync attempt.</p>"
  )
  directory: baseString,
  @ocaml.doc("<p>The secure hash algorithm (SHA) hash for the revision.</p>") sha: sha,
  @ocaml.doc("<p>The repository provider.</p>") repositoryProvider: repositoryProvider,
  @ocaml.doc("<p>The repository name.</p>") repositoryName: repositoryName,
}
type resourceSyncEvents = array<resourceSyncEvent>
type repositorySyncEvents = array<repositorySyncEvent>
@ocaml.doc("<p>The repository sync definition.</p>")
type repositorySyncDefinition = {
  @ocaml.doc("<p>The directory in the repository.</p>") directory: baseString,
  @ocaml.doc("<p>The repository branch.</p>") branch: gitBranchName,
  @ocaml.doc("<p>The resource that is synced from.</p>") parent: baseString,
  @ocaml.doc("<p>The resource that is synced to.</p>") target: baseString,
}
@ocaml.doc("<p>A summary of detail data for a registered repository.</p>")
type repositorySummary = {
  @ocaml.doc("<p>The repository name.</p>") name: repositoryName,
  @ocaml.doc("<p>The repository provider.</p>") provider: repositoryProvider,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for a repository.</p>") arn: repositoryArn,
}
@ocaml.doc("<p>Detail input data for a repository branch.</p> 
         <important>
            <p>Provisioning by pull request is currently in feature preview and is
    only usable with Terraform based Proton Templates. To learn more about
    <a href=\"https://aws.amazon.com/service-terms\">Amazon Web Services Feature Preview terms</a>, see section 2 on Beta and
    Previews.</p>
         </important>")
type repositoryBranchInput = {
  @ocaml.doc("<p>The repository branch.</p>") branch: gitBranchName,
  @ocaml.doc("<p>The repository name.</p>") name: repositoryName,
  @ocaml.doc("<p>The repository provider.</p>") provider: repositoryProvider,
}
@ocaml.doc("<p>Detail data for a repository branch.</p> 
         <important>
            <p>Provisioning by pull request is currently in feature preview and is
    only usable with Terraform based Proton Templates. To learn more about
    <a href=\"https://aws.amazon.com/service-terms\">Amazon Web Services Feature Preview terms</a>, see section 2 on Beta and
    Previews.</p>
         </important>")
type repositoryBranch = {
  @ocaml.doc("<p>The repository branch.</p>") branch: gitBranchName,
  @ocaml.doc("<p>The repository name.</p>") name: repositoryName,
  @ocaml.doc("<p>The repository provider.</p>") provider: repositoryProvider,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the repository branch.</p>") arn: repositoryArn,
}
@ocaml.doc("<p>Detail date for a repository that has been registered with Proton.</p>")
type repository = {
  @ocaml.doc("<p>Your customer Amazon Web Services KMS encryption key.</p>")
  encryptionKey: option<arn>,
  @ocaml.doc(
    "<p>The repository Amazon Web Services CodeStar connection that connects Proton to your repository.</p>"
  )
  connectionArn: arn,
  @ocaml.doc("<p>The repository name.</p>") name: repositoryName,
  @ocaml.doc("<p>The repository provider.</p>") provider: repositoryProvider,
  @ocaml.doc("<p>The repository Amazon Resource Name (ARN).</p>") arn: repositoryArn,
}
@ocaml.doc("<p>Detail data for a provisioned resource.</p>")
type provisionedResource = {
  @ocaml.doc("<p>The resource provisioning engine.</p>
         <important>
            <p>Provisioning by pull request is currently in feature preview and is
    only usable with Terraform based Proton Templates. To learn more about
    <a href=\"https://aws.amazon.com/service-terms\">Amazon Web Services Feature Preview terms</a>, see section 2 on Beta and
    Previews.</p>
         </important>")
  provisioningEngine: option<provisionedResourceEngine>,
  @ocaml.doc("<p>The provisioned resource identifier.</p>")
  identifier: option<provisionedResourceIdentifier>,
  @ocaml.doc("<p>The provisioned resource name.</p>") name: option<provisionedResourceName>,
}
@ocaml.doc("<p>An infrastructure as code defined resource output.</p>")
type output = {
  @ocaml.doc("<p>The output value.</p>") valueString: option<outputValueString>,
  @ocaml.doc("<p>The output key.</p>") key: option<outputKey>,
}
@ocaml.doc("<p>A summary of the version of an environment template detail data.</p>")
type environmentTemplateVersionSummary = {
  @ocaml.doc("<p>The time when the version of an environment template was last modified.</p>")
  lastModifiedAt: baseTimestamp,
  @ocaml.doc("<p>The time when the version of an environment template was created.</p>")
  createdAt: baseTimestamp,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the version of an environment template.</p>")
  arn: environmentTemplateVersionArn,
  @ocaml.doc("<p>A description of the version of an environment template.</p>")
  description: option<description>,
  @ocaml.doc("<p>The status message of the version of an environment template.</p>")
  statusMessage: option<statusMessage>,
  @ocaml.doc("<p>The status of the version of an environment template.</p>")
  status: templateVersionStatus,
  @ocaml.doc("<p>The recommended minor version of the environment template.</p>")
  recommendedMinorVersion: option<templateVersionPart>,
  @ocaml.doc("<p>The version of an environment template.</p>") minorVersion: templateVersionPart,
  @ocaml.doc(
    "<p>The latest major version that's associated with the version of an environment template.</p>"
  )
  majorVersion: templateVersionPart,
  @ocaml.doc("<p>The name of the version of an environment template.</p>")
  templateName: resourceName,
}
@ocaml.doc("<p>The environment template version data.</p>")
type environmentTemplateVersion = {
  @ocaml.doc("<p>The schema of the version of an environment template.</p>")
  schema: option<templateSchema>,
  @ocaml.doc("<p>The time when the version of an environment template was last modified.</p>")
  lastModifiedAt: baseTimestamp,
  @ocaml.doc("<p>The time when the version of an environment template was created.</p>")
  createdAt: baseTimestamp,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the version of an environment template.</p>")
  arn: environmentTemplateVersionArn,
  @ocaml.doc("<p>A description of the minor version of an environment template.</p>")
  description: option<description>,
  @ocaml.doc("<p>The status message of the version of an environment template.</p>")
  statusMessage: option<statusMessage>,
  @ocaml.doc("<p>The status of the version of an environment template.</p>")
  status: templateVersionStatus,
  @ocaml.doc("<p>The recommended minor version of the environment template.</p>")
  recommendedMinorVersion: option<templateVersionPart>,
  @ocaml.doc("<p>The minor version of an environment template.</p>")
  minorVersion: templateVersionPart,
  @ocaml.doc(
    "<p>The latest major version that's associated with the version of an environment template.</p>"
  )
  majorVersion: templateVersionPart,
  @ocaml.doc("<p>The name of the version of an environment template.</p>")
  templateName: resourceName,
}
@ocaml.doc("<p>The environment template data.</p>")
type environmentTemplateSummary = {
  @ocaml.doc(
    "<p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>"
  )
  provisioning: option<provisioning>,
  @ocaml.doc("<p>The recommended version of the environment template.</p>")
  recommendedVersion: option<fullTemplateVersionNumber>,
  @ocaml.doc("<p>A description of the environment template.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the environment template as displayed in the developer interface.</p>")
  displayName: option<displayName>,
  @ocaml.doc("<p>The time when the environment template was last modified.</p>")
  lastModifiedAt: baseTimestamp,
  @ocaml.doc("<p>The time when the environment template was created.</p>") createdAt: baseTimestamp,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the environment template.</p>")
  arn: environmentTemplateArn,
  @ocaml.doc("<p>The name of the environment template.</p>") name: resourceName,
}
@ocaml.doc("<p>A search filter for environment templates.</p>")
type environmentTemplateFilter = {
  @ocaml.doc("<p>Include <code>majorVersion</code> to filter search for a major version.</p>")
  majorVersion: templateVersionPart,
  @ocaml.doc("<p>Include <code>templateName</code> to filter search for a template name.</p>")
  templateName: resourceName,
}
@ocaml.doc("<p>The environment template data.</p>")
type environmentTemplate = {
  @ocaml.doc(
    "<p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>"
  )
  provisioning: option<provisioning>,
  @ocaml.doc("<p>The customer provided encryption key for the environment template.</p>")
  encryptionKey: option<arn>,
  @ocaml.doc("<p>The ID of the recommended version of the environment template.</p>")
  recommendedVersion: option<fullTemplateVersionNumber>,
  @ocaml.doc("<p>A description of the environment template.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the environment template as displayed in the developer interface.</p>")
  displayName: option<displayName>,
  @ocaml.doc("<p>The time when the environment template was last modified.</p>")
  lastModifiedAt: baseTimestamp,
  @ocaml.doc("<p>The time when the environment template was created.</p>") createdAt: baseTimestamp,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the environment template.</p>")
  arn: environmentTemplateArn,
  @ocaml.doc("<p>The name of the environment template.</p>") name: resourceName,
}
@ocaml.doc("<p>A summary of the environment detail data.</p>")
type environmentSummary = {
  @ocaml.doc(
    "<p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>"
  )
  provisioning: option<provisioning>,
  @ocaml.doc(
    "<p>The ID of the environment account that the environment infrastructure resources are provisioned in.</p>"
  )
  environmentAccountId: option<awsAccountId>,
  @ocaml.doc(
    "<p>The ID of the environment account connection that the environment is associated with.</p>"
  )
  environmentAccountConnectionId: option<environmentAccountConnectionId>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make calls to other services on your behalf.</p>"
  )
  protonServiceRoleArn: option<arn>,
  @ocaml.doc("<p>An environment deployment status message.</p>")
  deploymentStatusMessage: option<statusMessage>,
  @ocaml.doc("<p>The environment deployment status.</p>") deploymentStatus: deploymentStatus,
  @ocaml.doc("<p>The minor version of the environment template.</p>")
  templateMinorVersion: templateVersionPart,
  @ocaml.doc("<p>The major version of the environment template.</p>")
  templateMajorVersion: templateVersionPart,
  @ocaml.doc("<p>The name of the environment template.</p>") templateName: resourceName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the environment.</p>") arn: environmentArn,
  @ocaml.doc("<p>The time when the environment was last deployed successfully.</p>")
  lastDeploymentSucceededAt: baseTimestamp,
  @ocaml.doc("<p>The time when a deployment of the environment was last attempted.</p>")
  lastDeploymentAttemptedAt: baseTimestamp,
  @ocaml.doc("<p>The time when the environment was created.</p>") createdAt: baseTimestamp,
  @ocaml.doc("<p>The description of the environment.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the environment.</p>") name: resourceName,
}
@ocaml.doc("<p>A summary of the environment account connection detail data.</p>")
type environmentAccountConnectionSummary = {
  @ocaml.doc("<p>The status of the environment account connection.</p>")
  status: environmentAccountConnectionStatus,
  @ocaml.doc("<p>The time when the environment account connection was last modified.</p>")
  lastModifiedAt: baseTimestamp,
  @ocaml.doc("<p>The time when the environment account connection request was made.</p>")
  requestedAt: baseTimestamp,
  @ocaml.doc(
    "<p>The name of the environment that's associated with the environment account connection.</p>"
  )
  environmentName: resourceName,
  @ocaml.doc(
    "<p>The IAM service role that's associated with the environment account connection.</p>"
  )
  roleArn: arn,
  @ocaml.doc(
    "<p>The ID of the environment account that's connected to the environment account connection.</p>"
  )
  environmentAccountId: awsAccountId,
  @ocaml.doc(
    "<p>The ID of the management account that's connected to the environment account connection.</p>"
  )
  managementAccountId: awsAccountId,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the environment account connection.</p>")
  arn: environmentAccountConnectionArn,
  @ocaml.doc("<p>The ID of the environment account connection.</p>")
  id: environmentAccountConnectionId,
}
type environmentAccountConnectionStatusList = array<environmentAccountConnectionStatus>
@ocaml.doc("<p>The environment account connection detail data.</p>")
type environmentAccountConnection = {
  @ocaml.doc("<p>The status of the environment account connection.</p>")
  status: environmentAccountConnectionStatus,
  @ocaml.doc("<p>The time when the environment account connection was last modified.</p>")
  lastModifiedAt: baseTimestamp,
  @ocaml.doc("<p>The time when the environment account connection request was made.</p>")
  requestedAt: baseTimestamp,
  @ocaml.doc(
    "<p>The name of the environment that's associated with the environment account connection.</p>"
  )
  environmentName: resourceName,
  @ocaml.doc(
    "<p>The IAM service role that's associated with the environment account connection.</p>"
  )
  roleArn: arn,
  @ocaml.doc(
    "<p>The environment account that's connected to the environment account connection.</p>"
  )
  environmentAccountId: awsAccountId,
  @ocaml.doc(
    "<p>The ID of the management account that's connected to the environment account connection.</p>"
  )
  managementAccountId: awsAccountId,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the environment account connection.</p>")
  arn: environmentAccountConnectionArn,
  @ocaml.doc("<p>The ID of the environment account connection.</p>")
  id: environmentAccountConnectionId,
}
@ocaml.doc("<p>Compatible environment template data.</p>")
type compatibleEnvironmentTemplateInput = {
  @ocaml.doc("<p>The major version of the compatible environment template.</p>")
  majorVersion: templateVersionPart,
  @ocaml.doc("<p>The compatible environment template name.</p>") templateName: resourceName,
}
@ocaml.doc("<p>Compatible environment template data.</p>")
type compatibleEnvironmentTemplate = {
  @ocaml.doc("<p>The major version of the compatible environment template.</p>")
  majorVersion: templateVersionPart,
  @ocaml.doc("<p>The compatible environment template name.</p>") templateName: resourceName,
}
@ocaml.doc("<p>Template version source data.</p>")
type templateVersionSourceInput = {
  @ocaml.doc(
    "<p>An S3 source object that includes the template bundle S3 path and name for a template minor version.</p>"
  )
  s3: option<s3ObjectSource>,
}
module TemplateVersionSourceInput = {
  type t = S3(s3ObjectSource)
  exception TemplateVersionSourceInputUnspecified
  let classify = value =>
    switch value {
    | {s3: Some(x)} => S3(x)
    | _ => raise(TemplateVersionSourceInputUnspecified)
    }

  let make = value =>
    switch value {
    | S3(x) => {s3: Some(x)}
    }
}
type tagList_ = array<tag>
type serviceTemplateVersionSummaryList = array<serviceTemplateVersionSummary>
type serviceTemplateSummaryList = array<serviceTemplateSummary>
type serviceSummaryList = array<serviceSummary>
type serviceInstanceSummaryList = array<serviceInstanceSummary>
@ocaml.doc("<p>The service detail data.</p>")
type service = {
  @ocaml.doc(
    "<p>The name of the code repository branch that holds the code that's deployed in Proton.</p>"
  )
  branchName: option<gitBranchName>,
  @ocaml.doc("<p>The ID of the source code repository.</p>") repositoryId: option<repositoryId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the repository connection. For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/adminguide/setting-up-for-service.html#setting-up-vcontrol\">Set up a repository connection</a> in the <i>Proton
    Administrator Guide</i> and <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/proton-setup.html#setup-repo-connection\">Setting up
    with Proton</a> in the <i>Proton User Guide</i>.</p>")
  repositoryConnectionArn: option<arn>,
  @ocaml.doc("<p>The service pipeline detail data.</p>") pipeline: option<servicePipeline>,
  @ocaml.doc("<p>The formatted specification that defines the service.</p>") spec: specContents,
  @ocaml.doc("<p>A service status message.</p>") statusMessage: option<statusMessage>,
  @ocaml.doc("<p>The status of the service.</p>") status: serviceStatus,
  @ocaml.doc("<p>The time when the service was last modified.</p>") lastModifiedAt: baseTimestamp,
  @ocaml.doc("<p>The time when the service was created.</p>") createdAt: baseTimestamp,
  @ocaml.doc("<p>The name of the service template.</p>") templateName: resourceName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the service.</p>") arn: serviceArn,
  @ocaml.doc("<p>A description of a service.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the service.</p>") name: resourceName,
}
@ocaml.doc("<p>Detail data for a resource sync attempt activated by a push to a repository.</p>")
type resourceSyncAttempt = {
  @ocaml.doc("<p>An array of events with detail data.</p>") events: resourceSyncEvents,
  @ocaml.doc("<p>The status of the sync attempt.</p>") status: resourceSyncStatus,
  @ocaml.doc("<p>The time when the sync attempt started.</p>") startedAt: baseTimestamp,
  @ocaml.doc("<p>The resource that is synced to.</p>") target: baseString,
  @ocaml.doc("<p>Detail data for the target revision.</p>") targetRevision: revision,
  @ocaml.doc("<p>Detail data for the initial repository commit, path and push.</p>")
  initialRevision: revision,
}
type repositorySyncDefinitionList = array<repositorySyncDefinition>
@ocaml.doc("<p>Detail data for a repository sync attempt activated by a push to a repository.</p>")
type repositorySyncAttempt = {
  @ocaml.doc("<p>Detail data for sync attempt events.</p>") events: repositorySyncEvents,
  @ocaml.doc("<p>The sync attempt status.</p>") status: repositorySyncStatus,
  @ocaml.doc("<p>The time when the sync attempt started.</p>") startedAt: baseTimestamp,
}
type repositorySummaryList = array<repositorySummary>
type provisionedResourceList = array<provisionedResource>
type outputsList = array<output>
type environmentTemplateVersionSummaryList = array<environmentTemplateVersionSummary>
type environmentTemplateSummaryList = array<environmentTemplateSummary>
type environmentTemplateFilterList = array<environmentTemplateFilter>
type environmentSummaryList = array<environmentSummary>
type environmentAccountConnectionSummaryList = array<environmentAccountConnectionSummary>
@ocaml.doc(
  "<p>The environment detail data. An Proton environment is a set resources shared across an Proton service.</p>"
)
type environment = {
  @ocaml.doc("<p>The repository that you provide with pull request provisioning.</p> 
         <important>
            <p>Provisioning by pull request is currently in feature preview and is
    only usable with Terraform based Proton Templates. To learn more about
    <a href=\"https://aws.amazon.com/service-terms\">Amazon Web Services Feature Preview terms</a>, see section 2 on Beta and
    Previews.</p>
         </important>")
  provisioningRepository: option<repositoryBranch>,
  @ocaml.doc(
    "<p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>"
  )
  provisioning: option<provisioning>,
  @ocaml.doc("<p>The environment spec.</p>") spec: option<specContents>,
  @ocaml.doc(
    "<p>The ID of the environment account that the environment infrastructure resources are provisioned in.</p>"
  )
  environmentAccountId: option<awsAccountId>,
  @ocaml.doc(
    "<p>The ID of the environment account connection that's used to provision infrastructure resources in an environment account.</p>"
  )
  environmentAccountConnectionId: option<environmentAccountConnectionId>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make calls to other services on your behalf.</p>"
  )
  protonServiceRoleArn: option<arn>,
  @ocaml.doc("<p>An environment deployment status message.</p>")
  deploymentStatusMessage: option<statusMessage>,
  @ocaml.doc("<p>The environment deployment status.</p>") deploymentStatus: deploymentStatus,
  @ocaml.doc("<p>The ID of the minor version of the environment template.</p>")
  templateMinorVersion: templateVersionPart,
  @ocaml.doc("<p>The ID of the major version of the environment template.</p>")
  templateMajorVersion: templateVersionPart,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the environment template.</p>")
  templateName: resourceName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the environment.</p>") arn: environmentArn,
  @ocaml.doc("<p>The time when the environment was last deployed successfully.</p>")
  lastDeploymentSucceededAt: baseTimestamp,
  @ocaml.doc("<p>The time when a deployment of the environment was last attempted.</p>")
  lastDeploymentAttemptedAt: baseTimestamp,
  @ocaml.doc("<p>The time when the environment was created.</p>") createdAt: baseTimestamp,
  @ocaml.doc("<p>The description of the environment.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the environment.</p>") name: resourceName,
}
type compatibleEnvironmentTemplateList = array<compatibleEnvironmentTemplate>
type compatibleEnvironmentTemplateInputList = array<compatibleEnvironmentTemplateInput>
@ocaml.doc("<p>The Proton pipeline service role and repository data.</p>")
type accountSettings = {
  @ocaml.doc("<p>The repository that you provide with pull request provisioning.</p> 
         <important>
            <p>Provisioning by pull request is currently in feature preview and is
    only usable with Terraform based Proton Templates. To learn more about
    <a href=\"https://aws.amazon.com/service-terms\">Amazon Web Services Feature Preview terms</a>, see section 2 on Beta and
    Previews.</p>
         </important>")
  pipelineProvisioningRepository: option<repositoryBranch>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Proton pipeline service role.</p>")
  pipelineServiceRoleArn: option<pipelineRoleArn>,
}
@ocaml.doc("<p>The version of a service template detail data.</p>")
type serviceTemplateVersion = {
  @ocaml.doc("<p>The schema of the version of a service template.</p>")
  schema: option<templateSchema>,
  @ocaml.doc(
    "<p>An array of compatible environment template names for the major version of a service template.</p>"
  )
  compatibleEnvironmentTemplates: compatibleEnvironmentTemplateList,
  @ocaml.doc("<p>The time when the version of a service template was last modified.</p>")
  lastModifiedAt: baseTimestamp,
  @ocaml.doc("<p>The time when the version of a service template was created.</p>")
  createdAt: baseTimestamp,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the version of a service template.</p>")
  arn: serviceTemplateVersionArn,
  @ocaml.doc("<p>A description of the version of a service template.</p>")
  description: option<description>,
  @ocaml.doc("<p>A service template version status message.</p>")
  statusMessage: option<statusMessage>,
  @ocaml.doc("<p>The service template version status.</p>") status: templateVersionStatus,
  @ocaml.doc("<p>The recommended minor version of the service template.</p>")
  recommendedMinorVersion: option<templateVersionPart>,
  @ocaml.doc("<p>The minor version of a service template.</p>") minorVersion: templateVersionPart,
  @ocaml.doc(
    "<p>The latest major version that's associated with the version of a service template.</p>"
  )
  majorVersion: templateVersionPart,
  @ocaml.doc("<p>The name of the version of a service template.</p>") templateName: resourceName,
}
@ocaml.doc("<p>This is the Proton Service API Reference. It provides descriptions, syntax and usage examples for each of the
    <a href=\"https://docs.aws.amazon.com/proton/latest/APIReference/API_Operations.html\">actions</a> and <a href=\"https://docs.aws.amazon.com/proton/latest/APIReference/API_Types.html\">data types</a> for the Proton
   service.</p>
         <p>The documentation for each action shows the Query API request parameters and the XML response.</p>
         <p>Alternatively, you can use the Amazon Web Services CLI to access an API. For more information, see the <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html\">Amazon Web Services Command Line Interface User
    Guide</a>.</p>
         <p>The Proton service is a two-pronged automation framework. Administrators create service templates to provide
   standardized infrastructure and deployment tooling for serverless and container based applications. Developers, in
   turn, select from the available service templates to automate their application or service deployments.</p>
         <p>Because administrators define the infrastructure and tooling that Proton deploys and manages, they need
   permissions to use all of the listed API operations.</p>
         <p>When developers select a specific infrastructure and tooling set, Proton deploys their applications. To
   monitor their applications that are running on Proton, developers need permissions to the service
    <i>create</i>, <i>list</i>, <i>update</i> and <i>delete</i>
   API operations and the service instance <i>list</i> and <i>update</i> API
   operations.</p>
         <p>To learn more about Proton administration, see the <a href=\"https://docs.aws.amazon.com/proton/latest/adminguide/Welcome.html\">Proton Administrator Guide</a>.</p>
         <p>To learn more about deploying serverless and containerized applications on Proton, see the <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/Welcome.html\">Proton User Guide</a>.</p>
         <p>
            <b>Ensuring Idempotency</b>
         </p>
         <p>When you make a mutating API request, the request typically returns a result before the asynchronous workflows
   of the operation are complete. Operations might also time out or encounter other server issues before they're
   complete, even if the request already returned a result. This might make it difficult to determine whether the
   request succeeded. Moreover, you might need to retry the request multiple times to ensure that the operation
   completes successfully. However, if the original request and the subsequent retries are successful, the operation
   occurs multiple times. This means that you might create more resources than you intended.</p>
         <p>
            <i>Idempotency</i> ensures that an API request action completes no more than one time. With an
   idempotent request, if the original request action completes successfully, any subsequent retries complete
   successfully without performing any further actions. However, the result might contain updated information, such as
   the current creation status.</p>
         <p>The following lists of APIs are grouped according to methods that ensure idempotency.</p>
         <p>
            <b>Idempotent create APIs with a client token</b>
         </p>
         <p>The API actions in this list support idempotency with the use of a <i>client token</i>. The
   corresponding Amazon Web Services CLI commands also support idempotency using a client token. A client token is a unique,
   case-sensitive string of up to 64 ASCII characters. To make an idempotent API request using one of these actions,
   specify a client token in the request. We recommend that you <i>don't</i> reuse the same client token
   for other API requests. If you don’t provide a client token for these APIs, a default client token is automatically
   provided by SDKs.</p>
         <p>Given a request action that has succeeded:</p>
         <p>If you retry the request using the same client token and the same parameters, the retry succeeds without
   performing any further actions other than returning the original resource detail data in the response.</p>
         <p>If you retry the request using the same client token, but one or more of the parameters are different, the retry
   throws a <code>ValidationException</code> with an <code>IdempotentParameterMismatch</code> error.</p>
         <p>Client tokens expire eight hours after a request is made. If you retry the request with the expired token, a new
   resource is created.</p>
         <p>If the original resource is deleted and you retry the request, a new resource is created.</p>
         <p>Idempotent create APIs with a client token:</p>
         <ul>
            <li>
               <p>CreateEnvironmentTemplateVersion</p>
            </li>
            <li>
               <p>CreateServiceTemplateVersion</p>
            </li>
            <li>
               <p>CreateEnvironmentAccountConnection</p>
            </li>
         </ul>
         <p>
            <b>Idempotent create APIs</b>
         </p>
         <p>Given a request action that has succeeded:</p>
         <p>If you retry the request with an API from this group, and the original resource <i>hasn't</i> been
   modified, the retry succeeds without performing any further actions other than returning the original resource detail
   data in the response.</p>
         <p>If the original resource has been modified, the retry throws a <code>ConflictException</code>.</p>
         <p>If you retry with different input parameters, the retry throws a <code>ValidationException</code> with an
    <code>IdempotentParameterMismatch</code> error.</p>
         <p>Idempotent create APIs:</p>
         <ul>
            <li>
               <p>CreateEnvironmentTemplate</p>
            </li>
            <li>
               <p>CreateServiceTemplate</p>
            </li>
            <li>
               <p>CreateEnvironment</p>
            </li>
            <li>
               <p>CreateService</p>
            </li>
         </ul>
         <p>
            <b>Idempotent delete APIs</b>
         </p>
         <p>Given a request action that has succeeded:</p>
         <p>When you retry the request with an API from this group and the resource was deleted, its metadata is returned in
   the response.</p>
         <p>If you retry and the resource doesn't exist, the response is empty.</p>
         <p>In both cases, the retry succeeds.</p>
         <p>Idempotent delete APIs:</p>
         <ul>
            <li>
               <p>DeleteEnvironmentTemplate</p>
            </li>
            <li>
               <p>DeleteEnvironmentTemplateVersion</p>
            </li>
            <li>
               <p>DeleteServiceTemplate</p>
            </li>
            <li>
               <p>DeleteServiceTemplateVersion</p>
            </li>
            <li>
               <p>DeleteEnvironmentAccountConnection</p>
            </li>
         </ul>
         <p>
            <b>Asynchronous idempotent delete APIs</b>
         </p>
         <p>Given a request action that has succeeded:</p>
         <p>If you retry the request with an API from this group, if the original request delete operation status is
    <code>DELETE_IN_PROGRESS</code>, the retry returns the resource detail data in the response without performing any
   further actions.</p>
         <p>If the original request delete operation is complete, a retry returns an empty response.</p>
         <p>Asynchronous idempotent delete APIs:</p>
         <ul>
            <li>
               <p>DeleteEnvironment</p>
            </li>
            <li>
               <p>DeleteService</p>
            </li>
         </ul>")
module UpdateTemplateSyncConfig = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A subdirectory path to your template bundle version. When included, limits the template bundle search to this repository directory.</p>"
    )
    subdirectory: option<subdirectory>,
    @ocaml.doc("<p>The repository branch.</p>") branch: gitBranchName,
    @ocaml.doc("<p>The name of the repository, for example <code>myrepos/myrepo</code>.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The repository provider.</p>") repositoryProvider: repositoryProvider,
    @ocaml.doc("<p>The synced template type.</p>") templateType: templateType,
    @ocaml.doc("<p>The synced template name.</p>") templateName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The template sync configuration detail data that's returned by Proton.</p>")
    templateSyncConfig: option<templateSyncConfig>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "UpdateTemplateSyncConfigCommand"
  let make = (
    ~branch,
    ~repositoryName,
    ~repositoryProvider,
    ~templateType,
    ~templateName,
    ~subdirectory=?,
    (),
  ) => new({subdirectory, branch, repositoryName, repositoryProvider, templateType, templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateServiceTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>A description of the service template update.</p>")
    description: option<description>,
    @ocaml.doc(
      "<p>The name of the service template to update as displayed in the developer interface.</p>"
    )
    displayName: option<displayName>,
    @ocaml.doc("<p>The name of the service template to update.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The service template detail data that's returned by Proton.</p>")
    serviceTemplate: serviceTemplate,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "UpdateServiceTemplateCommand"
  let make = (~name, ~description=?, ~displayName=?, ()) => new({description, displayName, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateServicePipeline = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The minor version of the service template that was used to create the service that the pipeline is associated with.</p>"
    )
    templateMinorVersion: option<templateVersionPart>,
    @ocaml.doc(
      "<p>The major version of the service template that was used to create the service that the pipeline is associated with.</p>"
    )
    templateMajorVersion: option<templateVersionPart>,
    @ocaml.doc("<p>The deployment type.</p>
         <p>There are four modes for updating a service pipeline as described in the following. The <code>deploymentType</code> field defines the
   mode.</p>
         <dl>
            <dt/>
            <dd>
               <p>
                  <code>NONE</code>
               </p>
               <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated.</p>
            </dd>
            <dt/>
            <dd>
               <p>
                  <code>CURRENT_VERSION</code>
               </p>
               <p>In this mode, the service pipeline is deployed and updated with the new spec that you provide. Only requested parameters are updated.
       <i>Don’t</i> include minor or major version parameters when you use this <code>deployment-type</code>.</p>
            </dd>
            <dt/>
            <dd>
               <p>
                  <code>MINOR_VERSION</code>
               </p>
               <p>In this mode, the service pipeline is deployed and updated with the published, recommended (latest) minor version of the current major
      version in use, by default. You can also specify a different minor version of the current major version in use.</p>
            </dd>
            <dt/>
            <dd>
               <p>
                  <code>MAJOR_VERSION</code>
               </p>
               <p>In this mode, the service pipeline is deployed and updated with the published, recommended (latest) major and minor version of the current
      template, by default. You can also specify a different major version that is higher than the major version in use and a minor version
      (optional).</p>
            </dd>
         </dl>")
    deploymentType: deploymentUpdateType,
    @ocaml.doc("<p>The spec for the service pipeline to update.</p>") spec: specContents,
    @ocaml.doc("<p>The name of the service to that the pipeline is associated with.</p>")
    serviceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The pipeline details returned by Proton.</p>") pipeline: servicePipeline,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "UpdateServicePipelineCommand"
  let make = (
    ~deploymentType,
    ~spec,
    ~serviceName,
    ~templateMinorVersion=?,
    ~templateMajorVersion=?,
    (),
  ) => new({templateMinorVersion, templateMajorVersion, deploymentType, spec, serviceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateServiceInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The minor version of the service template to update.</p>")
    templateMinorVersion: option<templateVersionPart>,
    @ocaml.doc("<p>The major version of the service template to update.</p>")
    templateMajorVersion: option<templateVersionPart>,
    @ocaml.doc("<p>The formatted specification that defines the service instance update.</p>")
    spec: option<specContents>,
    @ocaml.doc("<p>The deployment type.</p>
         <p>There are four modes for updating a service instance as described in the following. The <code>deploymentType</code> field defines the
   mode.</p>
         <dl>
            <dt/>
            <dd>
               <p>
                  <code>NONE</code>
               </p>
               <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated.</p>
            </dd>
            <dt/>
            <dd>
               <p>
                  <code>CURRENT_VERSION</code>
               </p>
               <p>In this mode, the service instance is deployed and updated with the new spec that you provide. Only requested parameters are updated.
       <i>Don’t</i> include minor or major version parameters when you use this <code>deployment-type</code>.</p>
            </dd>
            <dt/>
            <dd>
               <p>
                  <code>MINOR_VERSION</code>
               </p>
               <p>In this mode, the service instance is deployed and updated with the published, recommended (latest) minor version of the current major
      version in use, by default. You can also specify a different minor version of the current major version in use.</p>
            </dd>
            <dt/>
            <dd>
               <p>
                  <code>MAJOR_VERSION</code>
               </p>
               <p>In this mode, the service instance is deployed and updated with the published, recommended (latest) major and minor version of the current
      template, by default. You can also specify a different major version that is higher than the major version in use and a minor version
      (optional).</p>
            </dd>
         </dl>")
    deploymentType: deploymentUpdateType,
    @ocaml.doc("<p>The name of the service that the service instance belongs to.</p>")
    serviceName: resourceName,
    @ocaml.doc("<p>The name of the service instance to update.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The service instance summary data returned by Proton.</p>")
    serviceInstance: serviceInstance,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "UpdateServiceInstanceCommand"
  let make = (
    ~deploymentType,
    ~serviceName,
    ~name,
    ~templateMinorVersion=?,
    ~templateMajorVersion=?,
    ~spec=?,
    (),
  ) => new({templateMinorVersion, templateMajorVersion, spec, deploymentType, serviceName, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateEnvironmentTemplateVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The status of the environment template minor version to update.</p>")
    status: option<templateVersionStatus>,
    @ocaml.doc("<p>A description of environment template version to update.</p>")
    description: option<description>,
    @ocaml.doc(
      "<p>To update a minor version of an environment template, include <code>minorVersion</code>.</p>"
    )
    minorVersion: templateVersionPart,
    @ocaml.doc(
      "<p>To update a major version of an environment template, include <code>major Version</code>.</p>"
    )
    majorVersion: templateVersionPart,
    @ocaml.doc("<p>The name of the environment template.</p>") templateName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The environment template version detail data that's returned by Proton.</p>")
    environmentTemplateVersion: environmentTemplateVersion,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "UpdateEnvironmentTemplateVersionCommand"
  let make = (~minorVersion, ~majorVersion, ~templateName, ~status=?, ~description=?, ()) =>
    new({status, description, minorVersion, majorVersion, templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateEnvironmentTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>A description of the environment template update.</p>")
    description: option<description>,
    @ocaml.doc(
      "<p>The name of the environment template to update as displayed in the developer interface.</p>"
    )
    displayName: option<displayName>,
    @ocaml.doc("<p>The name of the environment template to update.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The environment template detail data that's returned by Proton.</p>")
    environmentTemplate: environmentTemplate,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "UpdateEnvironmentTemplateCommand"
  let make = (~name, ~description=?, ~displayName=?, ()) => new({description, displayName, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateEnvironmentAccountConnection = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the IAM service role that is associated with the environment account connection to update.</p>"
    )
    roleArn: arn,
    @ocaml.doc("<p>The ID of the environment account connection to update.</p>")
    id: environmentAccountConnectionId,
  }
  type response = {
    @ocaml.doc("<p>The environment account connection detail data that's returned by Proton.</p>")
    environmentAccountConnection: environmentAccountConnection,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "UpdateEnvironmentAccountConnectionCommand"
  let make = (~roleArn, ~id, ()) => new({roleArn, id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array of tag keys indicating the resource tags to be removed from the resource.</p>"
    )
    tagKeys: tagKeyList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource that the tag is to be removed from.</p>"
    )
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RejectEnvironmentAccountConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the environment account connection to reject.</p>")
    id: environmentAccountConnectionId,
  }
  type response = {
    @ocaml.doc("<p>The environment connection account detail data that's returned by Proton.</p>")
    environmentAccountConnection: environmentAccountConnection,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "RejectEnvironmentAccountConnectionCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetTemplateSyncConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The template type.</p>") templateType: templateType,
    @ocaml.doc("<p>The template name.</p>") templateName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The template sync configuration detail data that's returned by Proton.</p>")
    templateSyncConfig: option<templateSyncConfig>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "GetTemplateSyncConfigCommand"
  let make = (~templateType, ~templateName, ()) => new({templateType, templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetServiceTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the service template that you want to get detail data for.</p>")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The service template detail data that's returned by Proton.</p>")
    serviceTemplate: serviceTemplate,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "GetServiceTemplateCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetServiceInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the service that the service instance belongs to.</p>")
    serviceName: resourceName,
    @ocaml.doc("<p>The name of a service instance that you want to get the detail data for.</p>")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The service instance detail data that's returned by Proton.</p>")
    serviceInstance: serviceInstance,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "GetServiceInstanceCommand"
  let make = (~serviceName, ~name, ()) => new({serviceName, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRepository = {
  type t
  type request = {
    @ocaml.doc("<p>The repository name, for example <code>myrepos/myrepo</code>.</p>")
    name: repositoryName,
    @ocaml.doc("<p>The repository provider.</p>") provider: repositoryProvider,
  }
  type response = {
    @ocaml.doc("<p>The repository detail data that's returned by Proton.</p>")
    repository: repository,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "GetRepositoryCommand"
  let make = (~name, ~provider, ()) => new({name, provider})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEnvironmentTemplateVersion = {
  type t
  type request = {
    @ocaml.doc(
      "<p>To view environment template minor version detail data, include <code>minorVersion</code>.</p>"
    )
    minorVersion: templateVersionPart,
    @ocaml.doc(
      "<p>To view environment template major version detail data, include <code>major Version</code>.</p>"
    )
    majorVersion: templateVersionPart,
    @ocaml.doc("<p>The name of the environment template.</p>") templateName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The environment template version detail data that's returned by Proton.</p>")
    environmentTemplateVersion: environmentTemplateVersion,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "GetEnvironmentTemplateVersionCommand"
  let make = (~minorVersion, ~majorVersion, ~templateName, ()) =>
    new({minorVersion, majorVersion, templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEnvironmentTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the environment template that you want to get the detail data for.</p>"
    )
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The environment template detail data that's returned by Proton.</p>")
    environmentTemplate: environmentTemplate,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "GetEnvironmentTemplateCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEnvironmentAccountConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the environment account connection.</p>")
    id: environmentAccountConnectionId,
  }
  type response = {
    @ocaml.doc("<p>The environment account connection detail data that's returned by Proton.</p>")
    environmentAccountConnection: environmentAccountConnection,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "GetEnvironmentAccountConnectionCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteTemplateSyncConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The template type.</p>") templateType: templateType,
    @ocaml.doc("<p>The template name.</p>") templateName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The template sync configuration detail data that's returned by Proton.</p>")
    templateSyncConfig: option<templateSyncConfig>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "DeleteTemplateSyncConfigCommand"
  let make = (~templateType, ~templateName, ()) => new({templateType, templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteServiceTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the service template to delete.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The service template detail data that's returned by Proton.</p>")
    serviceTemplate: option<serviceTemplate>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "DeleteServiceTemplateCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteRepository = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the repository.</p>") name: repositoryName,
    @ocaml.doc("<p>The repository provider.</p>") provider: repositoryProvider,
  }
  type response = {
    @ocaml.doc("<p>The repository detail data that's returned by Proton.</p>")
    repository: option<repository>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "DeleteRepositoryCommand"
  let make = (~name, ~provider, ()) => new({name, provider})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteEnvironmentTemplateVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The environment template minor version to delete.</p>")
    minorVersion: templateVersionPart,
    @ocaml.doc("<p>The environment template major version to delete.</p>")
    majorVersion: templateVersionPart,
    @ocaml.doc("<p>The name of the environment template.</p>") templateName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The environment template version detail data that's returned by Proton.</p>")
    environmentTemplateVersion: option<environmentTemplateVersion>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "DeleteEnvironmentTemplateVersionCommand"
  let make = (~minorVersion, ~majorVersion, ~templateName, ()) =>
    new({minorVersion, majorVersion, templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteEnvironmentTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the environment template to delete.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The environment template detail data that's returned by Proton.</p>")
    environmentTemplate: option<environmentTemplate>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "DeleteEnvironmentTemplateCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteEnvironmentAccountConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the environment account connection to delete.</p>")
    id: environmentAccountConnectionId,
  }
  type response = {
    @ocaml.doc("<p>The environment account connection detail data that's returned by Proton.</p>")
    environmentAccountConnection: option<environmentAccountConnection>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "DeleteEnvironmentAccountConnectionCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateTemplateSyncConfig = {
  type t
  type request = {
    @ocaml.doc("<p>A repository subdirectory path to your template bundle directory. When included, Proton limits the template bundle search to this
   repository directory.</p>")
    subdirectory: option<subdirectory>,
    @ocaml.doc("<p>The branch of the registered repository for your template.</p>")
    branch: gitBranchName,
    @ocaml.doc("<p>The name of your repository, for example <code>myrepos/myrepo</code>.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The provider type for your repository.</p>")
    repositoryProvider: repositoryProvider,
    @ocaml.doc("<p>The type of the registered template.</p>") templateType: templateType,
    @ocaml.doc("<p>The name of your registered template.</p>") templateName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The template sync configuration detail data that's returned by Proton.</p>")
    templateSyncConfig: option<templateSyncConfig>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "CreateTemplateSyncConfigCommand"
  let make = (
    ~branch,
    ~repositoryName,
    ~repositoryProvider,
    ~templateType,
    ~templateName,
    ~subdirectory=?,
    (),
  ) => new({subdirectory, branch, repositoryName, repositoryProvider, templateType, templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRepository = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ARN of your customer Amazon Web Services Key Management Service (Amazon Web Services KMS) key.</p>"
    )
    encryptionKey: option<arn>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of your Amazon Web Services CodeStar connection. For more information, see <a href=\"https://docs.aws.amazon.com/setting-up-for-service\">Setting up for Proton</a> in the <i>Proton Administrator Guide</i>.</p>"
    )
    connectionArn: arn,
    @ocaml.doc("<p>The repository name, for example <code>myrepos/myrepo</code>.</p>")
    name: repositoryName,
    @ocaml.doc("<p>The repository provider.</p>") provider: repositoryProvider,
  }
  type response = {
    @ocaml.doc("<p>The repository detail data that's returned by Proton.</p>")
    repository: repository,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "CreateRepositoryCommand"
  let make = (~connectionArn, ~name, ~provider, ~encryptionKey=?, ()) =>
    new({encryptionKey, connectionArn, name, provider})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CancelServicePipelineDeployment = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the service with the service pipeline deployment to cancel.</p>")
    serviceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The service pipeline detail data that's returned by Proton.</p>")
    pipeline: servicePipeline,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "CancelServicePipelineDeploymentCommand"
  let make = (~serviceName, ()) => new({serviceName: serviceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CancelServiceInstanceDeployment = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the service with the service instance deployment to cancel.</p>")
    serviceName: resourceName,
    @ocaml.doc("<p>The name of the service instance with the deployment to cancel.</p>")
    serviceInstanceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The service instance summary data that's returned by Proton.</p>")
    serviceInstance: serviceInstance,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "CancelServiceInstanceDeploymentCommand"
  let make = (~serviceName, ~serviceInstanceName, ()) => new({serviceName, serviceInstanceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AcceptEnvironmentAccountConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the environment account connection.</p>")
    id: environmentAccountConnectionId,
  }
  type response = {
    @ocaml.doc("<p>The environment account connection data that's returned by Proton.</p>")
    environmentAccountConnection: environmentAccountConnection,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "AcceptEnvironmentAccountConnectionCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateService = {
  type t
  type request = {
    @ocaml.doc("<p>Lists the service instances to add and the existing service instances to remain. Omit the existing service instances to delete from the list.
    <i>Don't</i> include edits to the existing service instances or pipeline. For more information, see <i>Edit a
    service</i> in the <a href=\"https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-update.html\">Proton Administrator Guide</a> or
   the <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-update.html\">Proton User Guide</a>.</p>")
    spec: option<specContents>,
    @ocaml.doc("<p>The edited service description.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the service to edit.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The service detail data that's returned by Proton.</p>") service: service,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "UpdateServiceCommand"
  let make = (~name, ~spec=?, ~description=?, ()) => new({spec, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateEnvironment = {
  type t
  type request = {
    @ocaml.doc("<p>The repository that you provide with pull request provisioning.</p> 
         <important>
            <p>Provisioning by pull request is currently in feature preview and is
    only usable with Terraform based Proton Templates. To learn more about
    <a href=\"https://aws.amazon.com/service-terms\">Amazon Web Services Feature Preview terms</a>, see section 2 on Beta and
    Previews.</p>
         </important>")
    provisioningRepository: option<repositoryBranchInput>,
    @ocaml.doc("<p>The ID of the environment account connection.</p>
         <p>You can only update to a new environment account connection if it was created in the same environment account that the current environment
   account connection was created in and is associated with the current environment.</p>")
    environmentAccountConnectionId: option<environmentAccountConnectionId>,
    @ocaml.doc("<p>There are four modes for updating an environment as described in the following. The <code>deploymentType</code> field defines the mode.</p>
         <dl>
            <dt/>
            <dd>
               <p>
                  <code>NONE</code>
               </p>
               <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated.</p>
            </dd>
            <dt/>
            <dd>
               <p>
                  <code>CURRENT_VERSION</code>
               </p>
               <p>In this mode, the environment is deployed and updated with the new spec that you provide. Only requested parameters are updated.
       <i>Don’t</i> include minor or major version parameters when you use this <code>deployment-type</code>.</p>
            </dd>
            <dt/>
            <dd>
               <p>
                  <code>MINOR_VERSION</code>
               </p>
               <p>In this mode, the environment is deployed and updated with the published, recommended (latest) minor version of the current major version
      in use, by default. You can also specify a different minor version of the current major version in use.</p>
            </dd>
            <dt/>
            <dd>
               <p>
                  <code>MAJOR_VERSION</code>
               </p>
               <p>In this mode, the environment is deployed and updated with the published, recommended (latest) major and minor version of the current
      template, by default. You can also specify a different major version that is higher than the major version in use and a minor version
      (optional).</p>
            </dd>
         </dl>")
    deploymentType: deploymentUpdateType,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make API calls to other services your behalf.</p>"
    )
    protonServiceRoleArn: option<arn>,
    @ocaml.doc("<p>The minor version of the environment to update.</p>")
    templateMinorVersion: option<templateVersionPart>,
    @ocaml.doc("<p>The major version of the environment to update.</p>")
    templateMajorVersion: option<templateVersionPart>,
    @ocaml.doc("<p>The formatted specification that defines the update.</p>")
    spec: option<specContents>,
    @ocaml.doc("<p>A description of the environment update.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the environment to update.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The environment detail data that's returned by Proton.</p>")
    environment: environment,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "UpdateEnvironmentCommand"
  let make = (
    ~deploymentType,
    ~name,
    ~provisioningRepository=?,
    ~environmentAccountConnectionId=?,
    ~protonServiceRoleArn=?,
    ~templateMinorVersion=?,
    ~templateMajorVersion=?,
    ~spec=?,
    ~description=?,
    (),
  ) =>
    new({
      provisioningRepository,
      environmentAccountConnectionId,
      deploymentType,
      protonServiceRoleArn,
      templateMinorVersion,
      templateMajorVersion,
      spec,
      description,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateAccountSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The repository that you provide with pull request provisioning.</p> 
         <important>
            <p>Provisioning by pull request is currently in feature preview and is
    only usable with Terraform based Proton Templates. To learn more about
    <a href=\"https://aws.amazon.com/service-terms\">Amazon Web Services Feature Preview terms</a>, see section 2 on Beta and
    Previews.</p>
         </important>")
    pipelineProvisioningRepository: option<repositoryBranchInput>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Proton pipeline service role.</p>
         <important>
            <p>Provisioning by pull request is currently in feature preview and is
    only usable with Terraform based Proton Templates. To learn more about
    <a href=\"https://aws.amazon.com/service-terms\">Amazon Web Services Feature Preview terms</a>, see section 2 on Beta and
    Previews.</p>
         </important>")
    pipelineServiceRoleArn: option<pipelineRoleArn>,
  }
  type response = {
    @ocaml.doc(
      "<p>The Proton pipeline service role repository detail data that's returned by Proton.</p>"
    )
    accountSettings: accountSettings,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "UpdateAccountSettingsCommand"
  let make = (~pipelineProvisioningRepository=?, ~pipelineServiceRoleArn=?, ()) =>
    new({pipelineProvisioningRepository, pipelineServiceRoleArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>An array of resource tags to apply to a resource.</p>") tags: tagList_,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource that the resource tag is applied to.</p>"
    )
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module NotifyResourceDeploymentStatusChange = {
  type t
  type request = {
    @ocaml.doc("<p>The deployment status message for your provisioned resource.</p>")
    statusMessage: option<baseString>,
    @ocaml.doc("<p>The deployment ID for your provisioned resource.</p>")
    deploymentId: option<deploymentId>,
    @ocaml.doc(
      "<p>The provisioned resource state change detail data that's returned by Proton.</p>"
    )
    outputs: option<outputsList>,
    @ocaml.doc("<p>The status of your provisioned resource.</p>") status: resourceDeploymentStatus,
    @ocaml.doc("<p>The provisioned resource Amazon Resource Name (ARN).</p>") resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "NotifyResourceDeploymentStatusChangeCommand"
  let make = (~status, ~resourceArn, ~statusMessage=?, ~deploymentId=?, ~outputs=?, ()) =>
    new({statusMessage, deploymentId, outputs, status, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of tags to list.</p>") maxResults: option<maxPageResults>,
    @ocaml.doc("<p>A token to indicate the location of the next resource tag in the array of resource tags, after the list of resource tags that was previously
   requested.</p>")
    nextToken: option<baseString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource for the listed tags.</p>")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>A token to indicate the location of the next resource tag in the array of resource tags, after the current requested list of resource
   tags.</p>")
    nextToken: option<baseString>,
    @ocaml.doc("<p>An array of resource tags with detail data.</p>") tags: tagList_,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListServices = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of services to list.</p>") maxResults: option<maxPageResults>,
    @ocaml.doc("<p>A token to indicate the location of the next service in the array of services, after the list of services that was previously
   requested.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>An array of services with summaries of detail data.</p>")
    services: serviceSummaryList,
    @ocaml.doc(
      "<p>A token to indicate the location of the next service in the array of services, after the current requested list of services.</p>"
    )
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "ListServicesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListServiceTemplates = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of service templates to list.</p>")
    maxResults: option<maxPageResults>,
    @ocaml.doc("<p>A token to indicate the location of the next service template in the array of service templates, after the list of service templates
   previously requested.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>An array of service templates with detail data.</p>")
    templates: serviceTemplateSummaryList,
    @ocaml.doc("<p>A token to indicate the location of the next service template in the array of service templates, after the current requested list of service
   templates.</p>")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "ListServiceTemplatesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListServiceTemplateVersions = {
  type t
  type request = {
    @ocaml.doc("<p>To view a list of minor of versions under a major version of a service template, include <code>major Version</code>.</p>
         <p>To view a list of major versions of a service template, <i>exclude</i>
            <code>major Version</code>.</p>")
    majorVersion: option<templateVersionPart>,
    @ocaml.doc("<p>The name of the service template.</p>") templateName: resourceName,
    @ocaml.doc(
      "<p>The maximum number of major or minor versions of a service template to list.</p>"
    )
    maxResults: option<maxPageResults>,
    @ocaml.doc("<p>A token to indicate the location of the next major or minor version in the array of major or minor versions of a service template, after the
   list of major or minor versions that was previously requested.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>An array of major or minor versions of a service template with detail data.</p>")
    templateVersions: serviceTemplateVersionSummaryList,
    @ocaml.doc("<p>A token to indicate the location of the next major or minor version in the array of major or minor versions of a service template, after the
   current requested list of service major or minor versions.</p>")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "ListServiceTemplateVersionsCommand"
  let make = (~templateName, ~majorVersion=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({majorVersion, templateName, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListServicePipelineProvisionedResources = {
  type t
  type request = {
    @ocaml.doc("<p>A token to indicate the location of the next provisioned resource in the array of provisioned resources, after the list of provisioned
   resources that was previously requested.</p>")
    nextToken: option<emptyNextToken>,
    @ocaml.doc("<p>The service name.</p>") serviceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of provisioned resources for a service and pipeline.</p>")
    provisionedResources: provisionedResourceList,
    @ocaml.doc("<p>A token to indicate the location of the next provisioned resource in the array of provisioned resources, after the current requested list of
   provisioned resources.</p>")
    nextToken: option<emptyNextToken>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "ListServicePipelineProvisionedResourcesCommand"
  let make = (~serviceName, ~nextToken=?, ()) => new({nextToken, serviceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListServicePipelineOutputs = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token to indicate the location of the next output in the array of outputs, after the list of outputs that was previously requested.</p>"
    )
    nextToken: option<emptyNextToken>,
    @ocaml.doc("<p>The service name.</p>") serviceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of outputs.</p>") outputs: outputsList,
    @ocaml.doc(
      "<p>A token to indicate the location of the next output in the array of outputs, after the current requested list of outputs.</p>"
    )
    nextToken: option<emptyNextToken>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "ListServicePipelineOutputsCommand"
  let make = (~serviceName, ~nextToken=?, ()) => new({nextToken, serviceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListServiceInstances = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of service instances to list.</p>")
    maxResults: option<maxPageResults>,
    @ocaml.doc("<p>A token to indicate the location of the next service in the array of service instances, after the list of service instances that was
   previously requested.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the service that the service instance belongs to.</p>")
    serviceName: option<resourceName>,
  }
  type response = {
    @ocaml.doc("<p>An array of service instances with summaries of detail data.</p>")
    serviceInstances: serviceInstanceSummaryList,
    @ocaml.doc("<p>A token to indicate the location of the next service instance in the array of service instances, after the current requested list of service
   instances.</p>")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "ListServiceInstancesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~serviceName=?, ()) =>
    new({maxResults, nextToken, serviceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListServiceInstanceProvisionedResources = {
  type t
  type request = {
    @ocaml.doc("<p>A token to indicate the location of the next provisioned resource in the array of provisioned resources, after the list of provisioned
   resources that was previously requested.</p>")
    nextToken: option<emptyNextToken>,
    @ocaml.doc("<p>The service instance name.</p>") serviceInstanceName: resourceName,
    @ocaml.doc("<p>The service name.</p>") serviceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of provisioned resources for a service instance.</p>")
    provisionedResources: provisionedResourceList,
    @ocaml.doc("<p>A token to indicate the location of the next provisioned resource in the array of provisioned resources, after the current requested list of
   provisioned resources.</p>")
    nextToken: option<emptyNextToken>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "ListServiceInstanceProvisionedResourcesCommand"
  let make = (~serviceInstanceName, ~serviceName, ~nextToken=?, ()) =>
    new({nextToken, serviceInstanceName, serviceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListServiceInstanceOutputs = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token to indicate the location of the next output in the array of outputs, after the list of outputs that was previously requested.</p>"
    )
    nextToken: option<emptyNextToken>,
    @ocaml.doc("<p>The service name.</p>") serviceName: resourceName,
    @ocaml.doc("<p>The service instance name.</p>") serviceInstanceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of service instance infrastructure as code outputs.</p>")
    outputs: outputsList,
    @ocaml.doc(
      "<p>A token to indicate the location of the next output in the array of outputs, after the current requested list of outputs.</p>"
    )
    nextToken: option<emptyNextToken>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "ListServiceInstanceOutputsCommand"
  let make = (~serviceName, ~serviceInstanceName, ~nextToken=?, ()) =>
    new({nextToken, serviceName, serviceInstanceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRepositorySyncDefinitions = {
  type t
  type request = {
    @ocaml.doc("<p>A token to indicate the location of the next repository sync definition in the array of repository sync definitions, after the list of
   repository sync definitions previously requested.</p>")
    nextToken: option<emptyNextToken>,
    @ocaml.doc("<p>The sync type. The only supported value is <code>TEMPLATE_SYNC</code>.</p>")
    syncType: syncType,
    @ocaml.doc("<p>The repository provider.</p>") repositoryProvider: repositoryProvider,
    @ocaml.doc("<p>The repository name.</p>") repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc("<p>An array of repository sync definitions.</p>")
    syncDefinitions: repositorySyncDefinitionList,
    @ocaml.doc("<p>A token to indicate the location of the next repository sync definition in the array of repository sync definitions, after the current
   requested list of repository sync definitions.</p>")
    nextToken: option<emptyNextToken>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "ListRepositorySyncDefinitionsCommand"
  let make = (~syncType, ~repositoryProvider, ~repositoryName, ~nextToken=?, ()) =>
    new({nextToken, syncType, repositoryProvider, repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRepositories = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of repositories to list.</p>")
    maxResults: option<maxPageResults>,
    @ocaml.doc("<p>A token to indicate the location of the next repository in the array of repositories, after the list of repositories previously
   requested.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>An array of repositories.</p>") repositories: repositorySummaryList,
    @ocaml.doc("<p>A token to indicate the location of the next repository in the array of repositories, after the current requested list of repositories.
  </p>")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "ListRepositoriesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListEnvironments = {
  type t
  type request = {
    @ocaml.doc("<p>An array of the versions of the environment template.</p>")
    environmentTemplates: option<environmentTemplateFilterList>,
    @ocaml.doc("<p>The maximum number of environments to list.</p>")
    maxResults: option<maxPageResults>,
    @ocaml.doc("<p>A token to indicate the location of the next environment in the array of environments, after the list of environments that was previously
   requested.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>An array of environment detail data summaries.</p>")
    environments: environmentSummaryList,
    @ocaml.doc("<p>A token to indicate the location of the next environment in the array of environments, after the current requested list of
   environments.</p>")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "ListEnvironmentsCommand"
  let make = (~environmentTemplates=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({environmentTemplates, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListEnvironmentTemplates = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of environment templates to list.</p>")
    maxResults: option<maxPageResults>,
    @ocaml.doc("<p>A token to indicate the location of the next environment template in the array of environment templates, after the list of environment
   templates that was previously requested.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>An array of environment templates with detail data.</p>")
    templates: environmentTemplateSummaryList,
    @ocaml.doc("<p>A token to indicate the location of the next environment template in the array of environment templates, after the current requested list of
   environment templates.</p>")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "ListEnvironmentTemplatesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListEnvironmentTemplateVersions = {
  type t
  type request = {
    @ocaml.doc("<p>To view a list of minor of versions under a major version of an environment template, include <code>major Version</code>.</p>
         <p>To view a list of major versions of an environment template, <i>exclude</i>
            <code>major Version</code>.</p>")
    majorVersion: option<templateVersionPart>,
    @ocaml.doc("<p>The name of the environment template.</p>") templateName: resourceName,
    @ocaml.doc(
      "<p>The maximum number of major or minor versions of an environment template to list.</p>"
    )
    maxResults: option<maxPageResults>,
    @ocaml.doc("<p>A token to indicate the location of the next major or minor version in the array of major or minor versions of an environment template, after
   the list of major or minor versions that was previously requested.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>An array of major or minor versions of an environment template detail data.</p>")
    templateVersions: environmentTemplateVersionSummaryList,
    @ocaml.doc("<p>A token to indicate the location of the next major or minor version in the array of major or minor versions of an environment template, after
   the list of major or minor versions that was previously requested.</p>")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "ListEnvironmentTemplateVersionsCommand"
  let make = (~templateName, ~majorVersion=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({majorVersion, templateName, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListEnvironmentProvisionedResources = {
  type t
  type request = {
    @ocaml.doc("<p>A token to indicate the location of the next environment provisioned resource in the array of environment provisioned resources, after the
   list of environment provisioned resources that was previously requested.</p>")
    nextToken: option<emptyNextToken>,
    @ocaml.doc("<p>The environment name.</p>") environmentName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of environment provisioned resources.</p>")
    provisionedResources: provisionedResourceList,
    @ocaml.doc("<p>A token to indicate the location of the next environment provisioned resource in the array of provisioned resources, after the current
   requested list of environment provisioned resources.</p>")
    nextToken: option<emptyNextToken>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "ListEnvironmentProvisionedResourcesCommand"
  let make = (~environmentName, ~nextToken=?, ()) => new({nextToken, environmentName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListEnvironmentOutputs = {
  type t
  type request = {
    @ocaml.doc("<p>A token to indicate the location of the next environment output in the array of environment outputs, after the list of environment outputs
   that was previously requested.</p>")
    nextToken: option<emptyNextToken>,
    @ocaml.doc("<p>The environment name.</p>") environmentName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of environment outputs with detail data.</p>") outputs: outputsList,
    @ocaml.doc("<p>A token to indicate the location of the next environment output in the array of environment outputs, after the current requested list of
   environment outputs.</p>")
    nextToken: option<emptyNextToken>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "ListEnvironmentOutputsCommand"
  let make = (~environmentName, ~nextToken=?, ()) => new({nextToken, environmentName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListEnvironmentAccountConnections = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of environment account connections to list.</p>")
    maxResults: option<maxPageResults>,
    @ocaml.doc("<p>A token to indicate the location of the next environment account connection in the array of environment account connections, after the list of
   environment account connections that was previously requested.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The status details for each listed environment account connection.</p>")
    statuses: option<environmentAccountConnectionStatusList>,
    @ocaml.doc(
      "<p>The environment name that's associated with each listed environment account connection.</p>"
    )
    environmentName: option<resourceName>,
    @ocaml.doc(
      "<p>The type of account making the <code>ListEnvironmentAccountConnections</code> request.</p>"
    )
    requestedBy: environmentAccountConnectionRequesterAccountType,
  }
  type response = {
    @ocaml.doc("<p>A token to indicate the location of the next environment account connection in the array of environment account connections, after the current
   requested list of environment account connections.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>An array of environment account connections with details that's returned by Proton. </p>"
    )
    environmentAccountConnections: environmentAccountConnectionSummaryList,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "ListEnvironmentAccountConnectionsCommand"
  let make = (~requestedBy, ~maxResults=?, ~nextToken=?, ~statuses=?, ~environmentName=?, ()) =>
    new({maxResults, nextToken, statuses, environmentName, requestedBy})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetTemplateSyncStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The template version.</p>") templateVersion: templateVersionPart,
    @ocaml.doc("<p>The template type.</p>") templateType: templateType,
    @ocaml.doc("<p>The template name.</p>") templateName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The template sync desired state that's returned by Proton.</p>")
    desiredState: option<revision>,
    @ocaml.doc("<p>The details of the last successful sync that's returned by Proton.</p>")
    latestSuccessfulSync: option<resourceSyncAttempt>,
    @ocaml.doc("<p>The details of the last sync that's returned by Proton.</p>")
    latestSync: option<resourceSyncAttempt>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "GetTemplateSyncStatusCommand"
  let make = (~templateVersion, ~templateType, ~templateName, ()) =>
    new({templateVersion, templateType, templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetService = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the service that you want to get the detail data for.</p>")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The service detail data that's returned by Proton.</p>")
    service: option<service>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new external new: request => t = "GetServiceCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRepositorySyncStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The repository sync type.</p>") syncType: syncType,
    @ocaml.doc("<p>The repository branch.</p>") branch: gitBranchName,
    @ocaml.doc("<p>The repository provider.</p>") repositoryProvider: repositoryProvider,
    @ocaml.doc("<p>The repository name.</p>") repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc("<p>The repository sync status detail data that's returned by Proton.</p>")
    latestSync: option<repositorySyncAttempt>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "GetRepositorySyncStatusCommand"
  let make = (~syncType, ~branch, ~repositoryProvider, ~repositoryName, ()) =>
    new({syncType, branch, repositoryProvider, repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEnvironment = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the environment that you want to get the detail data for.</p>")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The environment detail data that's returned by Proton.</p>")
    environment: environment,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "GetEnvironmentCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAccountSettings = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The Proton pipeline service role detail data that's returned by Proton.</p>")
    accountSettings: option<accountSettings>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "GetAccountSettingsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteService = {
  type t
  type request = {@ocaml.doc("<p>The name of the service to delete.</p>") name: resourceName}
  type response = {
    @ocaml.doc("<p>The service detail data that's returned by Proton.</p>")
    service: option<service>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "DeleteServiceCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteEnvironment = {
  type t
  type request = {@ocaml.doc("<p>The name of the environment to delete.</p>") name: resourceName}
  type response = {
    @ocaml.doc("<p>The environment detail data that's returned by Proton.</p>")
    environment: option<environment>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "DeleteEnvironmentCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateServiceTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Create tags for your service template. For more information, see <i>Proton resources and tagging</i> in the <a href=\"https://docs.aws.amazon.com/proton/latest/adminguide/resources.html\">Proton Administrator Guide</a> or <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/resources.html\">Proton User Guide</a>.</p>"
    )
    tags: option<tagList_>,
    @ocaml.doc("<p>Proton includes a service pipeline for your service by default. When included, this parameter indicates that an Proton service pipeline
    <i>won't</i> be included for your service. Once specified, this parameter <i>can't</i> be changed. For more
   information, see <a href=\"https://docs.aws.amazon.com/proton/latest/adminguide/ag-template-bundles.html\">Service template bundles</a> in the
    <i>Proton Administrator Guide</i>.</p>")
    pipelineProvisioning: option<provisioning>,
    @ocaml.doc("<p>A customer provided encryption key that's used to encrypt data.</p>")
    encryptionKey: option<arn>,
    @ocaml.doc("<p>A description of the service template.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the service template as displayed in the developer interface.</p>")
    displayName: option<displayName>,
    @ocaml.doc("<p>The name of the service template.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The service template detail data that's returned by Proton.</p>")
    serviceTemplate: serviceTemplate,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "CreateServiceTemplateCommand"
  let make = (
    ~name,
    ~tags=?,
    ~pipelineProvisioning=?,
    ~encryptionKey=?,
    ~description=?,
    ~displayName=?,
    (),
  ) => new({tags, pipelineProvisioning, encryptionKey, description, displayName, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateService = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Create tags for your service. For more information, see <i>Proton resources and tagging</i> in the <a href=\"https://docs.aws.amazon.com/proton/latest/adminguide/resources.html\">Proton Administrator Guide</a> or <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/resources.html\">Proton User Guide</a>.</p>"
    )
    tags: option<tagList_>,
    @ocaml.doc("<p>The name of the code repository branch that holds the code that's deployed in Proton. <i>Don't</i> include this parameter if
   your service template <i>doesn't</i> include a service pipeline.</p>")
    branchName: option<gitBranchName>,
    @ocaml.doc("<p>The ID of the code repository. <i>Don't</i> include this parameter if your service template <i>doesn't</i> include
   a service pipeline.</p>")
    repositoryId: option<repositoryId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the repository connection. For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/adminguide/setting-up-for-service.html#setting-up-vcontrol\">Set up repository connection</a> in the <i>Proton
    Administrator Guide</i> and <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/proton-setup.html#setup-repo-connection\">Setting up
    with Proton</a> in the <i>Proton User Guide</i>. <i>Don't</i> include this parameter if your service
   template <i>doesn't</i> include a service pipeline.</p>")
    repositoryConnectionArn: option<arn>,
    @ocaml.doc("<p>A link to a spec file that provides inputs as defined in the service template bundle schema file. The spec file is in YAML format. Don’t
   include pipeline inputs in the spec if your service template <i>doesn’t</i> include a service pipeline. For more information, see
    <a href=\"https://docs.aws.amazon.com/proton/latest/adminguide/ag-create-svc.html.html\">Create a service</a> in the <i>Proton
    Administrator Guide</i> and <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-create.html\">Create a service</a> in the
    <i>Proton User Guide</i>.</p>")
    spec: specContents,
    @ocaml.doc(
      "<p>The minor version of the service template that was used to create the service.</p>"
    )
    templateMinorVersion: option<templateVersionPart>,
    @ocaml.doc(
      "<p>The major version of the service template that was used to create the service.</p>"
    )
    templateMajorVersion: templateVersionPart,
    @ocaml.doc("<p>The name of the service template that's used to create the service.</p>")
    templateName: resourceName,
    @ocaml.doc("<p>A description of the Proton service.</p>") description: option<description>,
    @ocaml.doc("<p>The service name.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The service detail data that's returned by Proton.</p>") service: service,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "CreateServiceCommand"
  let make = (
    ~spec,
    ~templateMajorVersion,
    ~templateName,
    ~name,
    ~tags=?,
    ~branchName=?,
    ~repositoryId=?,
    ~repositoryConnectionArn=?,
    ~templateMinorVersion=?,
    ~description=?,
    (),
  ) =>
    new({
      tags,
      branchName,
      repositoryId,
      repositoryConnectionArn,
      spec,
      templateMinorVersion,
      templateMajorVersion,
      templateName,
      description,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateEnvironmentTemplateVersion = {
  type t
  type request = {
    @ocaml.doc("<p>Create tags for a new version of an environment template.</p>")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>An object that includes the template bundle S3 bucket path and name for the new version of an template.</p>"
    )
    source: templateVersionSourceInput,
    @ocaml.doc("<p>To create a new minor version of the environment template, include a <code>major Version</code>.</p>
         <p>To create a new major and minor version of the environment template, <i>exclude</i>
            <code>major Version</code>.</p>")
    majorVersion: option<templateVersionPart>,
    @ocaml.doc("<p>A description of the new version of an environment template.</p>")
    description: option<description>,
    @ocaml.doc("<p>The name of the environment template.</p>") templateName: resourceName,
    @ocaml.doc("<p>When included, if two identical requests are made with the same client token, Proton returns the environment template version that the
   first request created.</p>")
    clientToken: option<clientToken>,
  }
  type response = {
    @ocaml.doc("<p>The environment template detail data that's returned by Proton.</p>")
    environmentTemplateVersion: environmentTemplateVersion,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "CreateEnvironmentTemplateVersionCommand"
  let make = (
    ~source,
    ~templateName,
    ~tags=?,
    ~majorVersion=?,
    ~description=?,
    ~clientToken=?,
    (),
  ) => new({tags, source, majorVersion, description, templateName, clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateEnvironmentTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Create tags for your environment template. For more information, see <i>Proton resources and tagging</i> in the <a href=\"https://docs.aws.amazon.com/proton/latest/adminguide/resources.html\">Proton Administrator Guide</a> or <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/resources.html\">Proton User Guide</a>.</p>"
    )
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>"
    )
    provisioning: option<provisioning>,
    @ocaml.doc("<p>A customer provided encryption key that Proton uses to encrypt data.</p>")
    encryptionKey: option<arn>,
    @ocaml.doc("<p>A description of the environment template.</p>")
    description: option<description>,
    @ocaml.doc("<p>The environment template name as displayed in the developer interface.</p>")
    displayName: option<displayName>,
    @ocaml.doc("<p>The name of the environment template.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The environment template detail data that's returned by Proton.</p>")
    environmentTemplate: environmentTemplate,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "CreateEnvironmentTemplateCommand"
  let make = (
    ~name,
    ~tags=?,
    ~provisioning=?,
    ~encryptionKey=?,
    ~description=?,
    ~displayName=?,
    (),
  ) => new({tags, provisioning, encryptionKey, description, displayName, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateEnvironmentAccountConnection = {
  type t
  type request = {
    @ocaml.doc("<p>Tags for your environment account connection. For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/adminguide/resources.html\">Proton resources and tagging</a> in the <i>Proton Administrator
   Guide</i>.</p>")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>The name of the Proton environment that's created in the associated management account.</p>"
    )
    environmentName: resourceName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM service role that's created in the environment account. Proton uses this role to provision
   infrastructure resources in the associated environment account.</p>")
    roleArn: arn,
    @ocaml.doc("<p>The ID of the management account that accepts or rejects the environment account connection. You create an manage the Proton environment in
   this account. If the management account accepts the environment account connection, Proton can use the associated IAM role to provision
   environment infrastructure resources in the associated environment account.</p>")
    managementAccountId: awsAccountId,
    @ocaml.doc("<p>When included, if two identical requests are made with the same client token, Proton returns the environment account connection that the
   first request created.</p>")
    clientToken: option<clientToken>,
  }
  type response = {
    @ocaml.doc("<p>The environment account connection detail data that's returned by Proton.</p>")
    environmentAccountConnection: environmentAccountConnection,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "CreateEnvironmentAccountConnectionCommand"
  let make = (~environmentName, ~roleArn, ~managementAccountId, ~tags=?, ~clientToken=?, ()) =>
    new({tags, environmentName, roleArn, managementAccountId, clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateEnvironment = {
  type t
  type request = {
    @ocaml.doc("<p>The repository that you provide with pull request provisioning. If you provide this parameter, you must omit the
    <code>environmentAccountConnectionId</code> and <code>protonServiceRoleArn</code> parameters.</p> 
         <important>
            <p>Provisioning by pull request is currently in feature preview and is
    only usable with Terraform based Proton Templates. To learn more about
    <a href=\"https://aws.amazon.com/service-terms\">Amazon Web Services Feature Preview terms</a>, see section 2 on Beta and
    Previews.</p>
         </important>")
    provisioningRepository: option<repositoryBranchInput>,
    @ocaml.doc(
      "<p>Create tags for your environment. For more information, see <i>Proton resources and tagging</i> in the <a href=\"https://docs.aws.amazon.com/proton/latest/adminguide/resources.html\">Proton Administrator Guide</a> or <a href=\"https://docs.aws.amazon.com/proton/latest/userguide/resources.html\">Proton User Guide</a>.</p>"
    )
    tags: option<tagList_>,
    @ocaml.doc("<p>The ID of the environment account connection that you provide if you're provisioning your environment infrastructure resources to an
   environment account. You must include either the <code>environmentAccountConnectionId</code> or <code>protonServiceRoleArn</code> parameter and
   value and omit the <code>provisioningRepository</code> parameter and values. For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html\">Environment account connections</a> in the <i>Proton Administrator
    guide</i>.</p>")
    environmentAccountConnectionId: option<environmentAccountConnectionId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make calls to other services on your behalf. You must
   include either the <code>environmentAccountConnectionId</code> or <code>protonServiceRoleArn</code> parameter and value and omit the
    <code>provisioningRepository</code> parameter when you use standard provisioning.</p>")
    protonServiceRoleArn: option<arn>,
    @ocaml.doc("<p>A link to a YAML formatted spec file that provides inputs as defined in the environment template bundle schema file. For more information, see
    <a href=\"https://docs.aws.amazon.com/proton/latest/adminguide/ag-environments.html\">Environments</a> in the <i>Proton Administrator
    Guide</i>.</p>")
    spec: specContents,
    @ocaml.doc("<p>A description of the environment that's being created and deployed.</p>")
    description: option<description>,
    @ocaml.doc("<p>The minor version of the environment template.</p>")
    templateMinorVersion: option<templateVersionPart>,
    @ocaml.doc("<p>The major version of the environment template.</p>")
    templateMajorVersion: templateVersionPart,
    @ocaml.doc(
      "<p>The name of the environment template. For more information, see <a href=\"https://docs.aws.amazon.com/proton/latest/adminguide/ag-templates.html\">Environment Templates</a> in the <i>Proton Administrator Guide</i>.</p>"
    )
    templateName: resourceName,
    @ocaml.doc("<p>The name of the environment.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The environment detail data that's returned by Proton.</p>")
    environment: environment,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "CreateEnvironmentCommand"
  let make = (
    ~spec,
    ~templateMajorVersion,
    ~templateName,
    ~name,
    ~provisioningRepository=?,
    ~tags=?,
    ~environmentAccountConnectionId=?,
    ~protonServiceRoleArn=?,
    ~description=?,
    ~templateMinorVersion=?,
    (),
  ) =>
    new({
      provisioningRepository,
      tags,
      environmentAccountConnectionId,
      protonServiceRoleArn,
      spec,
      description,
      templateMinorVersion,
      templateMajorVersion,
      templateName,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CancelEnvironmentDeployment = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the environment with the deployment to cancel.</p>")
    environmentName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The environment summary data that's returned by Proton.</p>")
    environment: environment,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "CancelEnvironmentDeploymentCommand"
  let make = (~environmentName, ()) => new({environmentName: environmentName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateServiceTemplateVersion = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array of compatible environment names for a service template major or minor version to update.</p>"
    )
    compatibleEnvironmentTemplates: option<compatibleEnvironmentTemplateInputList>,
    @ocaml.doc("<p>The status of the service template minor version to update.</p>")
    status: option<templateVersionStatus>,
    @ocaml.doc("<p>A description of a service template version to update.</p>")
    description: option<description>,
    @ocaml.doc(
      "<p>To update a minor version of a service template, include <code>minorVersion</code>.</p>"
    )
    minorVersion: templateVersionPart,
    @ocaml.doc(
      "<p>To update a major version of a service template, include <code>major Version</code>.</p>"
    )
    majorVersion: templateVersionPart,
    @ocaml.doc("<p>The name of the service template.</p>") templateName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The service template version detail data that's returned by Proton.</p>")
    serviceTemplateVersion: serviceTemplateVersion,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "UpdateServiceTemplateVersionCommand"
  let make = (
    ~minorVersion,
    ~majorVersion,
    ~templateName,
    ~compatibleEnvironmentTemplates=?,
    ~status=?,
    ~description=?,
    (),
  ) =>
    new({
      compatibleEnvironmentTemplates,
      status,
      description,
      minorVersion,
      majorVersion,
      templateName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetServiceTemplateVersion = {
  type t
  type request = {
    @ocaml.doc(
      "<p>To view service template minor version detail data, include <code>minorVersion</code>.</p>"
    )
    minorVersion: templateVersionPart,
    @ocaml.doc(
      "<p>To view service template major version detail data, include <code>major Version</code>.</p>"
    )
    majorVersion: templateVersionPart,
    @ocaml.doc("<p>The name of the service template.</p>") templateName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The service template version detail data that's returned by Proton.</p>")
    serviceTemplateVersion: serviceTemplateVersion,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "GetServiceTemplateVersionCommand"
  let make = (~minorVersion, ~majorVersion, ~templateName, ()) =>
    new({minorVersion, majorVersion, templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteServiceTemplateVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The service template minor version to delete.</p>")
    minorVersion: templateVersionPart,
    @ocaml.doc("<p>The service template major version to delete.</p>")
    majorVersion: templateVersionPart,
    @ocaml.doc("<p>The name of the service template.</p>") templateName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The service template version detail data that's returned by Proton.</p>")
    serviceTemplateVersion: option<serviceTemplateVersion>,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "DeleteServiceTemplateVersionCommand"
  let make = (~minorVersion, ~majorVersion, ~templateName, ()) =>
    new({minorVersion, majorVersion, templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateServiceTemplateVersion = {
  type t
  type request = {
    @ocaml.doc("<p>Create tags for a new version of a service template.</p>")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>An array of compatible environment template objects for the new version of a service template.</p>"
    )
    compatibleEnvironmentTemplates: compatibleEnvironmentTemplateInputList,
    @ocaml.doc(
      "<p>An object that includes the template bundle S3 bucket path and name for the new version of a service template.</p>"
    )
    source: templateVersionSourceInput,
    @ocaml.doc("<p>To create a new minor version of the service template, include a <code>major Version</code>.</p>
         <p>To create a new major and minor version of the service template, <i>exclude</i>
            <code>major Version</code>.</p>")
    majorVersion: option<templateVersionPart>,
    @ocaml.doc("<p>A description of the new version of a service template.</p>")
    description: option<description>,
    @ocaml.doc("<p>The name of the service template.</p>") templateName: resourceName,
    @ocaml.doc("<p>When included, if two identical requests are made with the same client token, Proton returns the service template version that the first
   request created.</p>")
    clientToken: option<clientToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The service template version summary of detail data that's returned by Proton.</p>"
    )
    serviceTemplateVersion: serviceTemplateVersion,
  }
  @module("@aws-sdk/client-awsproton20200720") @new
  external new: request => t = "CreateServiceTemplateVersionCommand"
  let make = (
    ~compatibleEnvironmentTemplates,
    ~source,
    ~templateName,
    ~tags=?,
    ~majorVersion=?,
    ~description=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      tags,
      compatibleEnvironmentTemplates,
      source,
      majorVersion,
      description,
      templateName,
      clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
