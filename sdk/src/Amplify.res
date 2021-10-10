type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-amplify") @new
external createClient: unit => awsServiceClient = "AmplifyClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type webhookUrl = string
type webhookId = string
type webhookArn = string
type verified = bool
type uploadUrl = string
type updateTime = Js.Date.t
type totalNumberOfJobs = string
type thumbnailUrl = string
type thumbnailName = string
type testConfigUrl = string
type testArtifactsUrl = string
type target = string
type tagValue = string
type tagKey = string
@ocaml.doc("<p> The content Time to Live (TTL) for the website in seconds. </p>") type ttl = string
type stepName = string
type statusReason = string
type status = string
type startTime = Js.Date.t
type stage = [
  | @as("PULL_REQUEST") #PULL_REQUEST
  | @as("EXPERIMENTAL") #EXPERIMENTAL
  | @as("DEVELOPMENT") #DEVELOPMENT
  | @as("BETA") #BETA
  | @as("PRODUCTION") #PRODUCTION
]
type stackName = string
type sourceUrl = string
type source = string
type serviceRoleArn = string
type resourceArn = string
type repository = string
type pullRequestEnvironmentName = string
type platform = [@as("WEB") #WEB]
type oauthToken = string
type nextToken = string
type name = string
type maxResults = int
type md5Hash = string
type logUrl = string
type lastDeployTime = Js.Date.t
type jobType = [
  | @as("WEB_HOOK") #WEB_HOOK
  | @as("MANUAL") #MANUAL
  | @as("RETRY") #RETRY
  | @as("RELEASE") #RELEASE
]
type jobStatus = [
  | @as("CANCELLED") #CANCELLED
  | @as("CANCELLING") #CANCELLING
  | @as("SUCCEED") #SUCCEED
  | @as("FAILED") #FAILED
  | @as("RUNNING") #RUNNING
  | @as("PROVISIONING") #PROVISIONING
  | @as("PENDING") #PENDING
]
type jobReason = string
type jobId = string
type jobArn = string
type framework = string
type fileName = string
type errorMessage = string
type environmentName = string
type envValue = string
type envKey = string
type endTime = Js.Date.t
type enablePullRequestPreview = bool
type enablePerformanceMode = bool
type enableNotification = bool
type enableBranchAutoDeletion = bool
type enableBranchAutoBuild = bool
type enableBasicAuth = bool
type enableAutoSubDomain = bool
type enableAutoBuild = bool
type enableAutoBranchCreation = bool
type domainStatus = [
  | @as("UPDATING") #UPDATING
  | @as("REQUESTING_CERTIFICATE") #REQUESTING_CERTIFICATE
  | @as("CREATING") #CREATING
  | @as("FAILED") #FAILED
  | @as("PENDING_DEPLOYMENT") #PENDING_DEPLOYMENT
  | @as("AVAILABLE") #AVAILABLE
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("PENDING_VERIFICATION") #PENDING_VERIFICATION
]
type domainPrefix = string
type domainName = string
type domainAssociationArn = string
type displayName = string
type description = string
type deploymentArtifacts = string
type defaultDomain = string
type dnsrecord = string
type customHeaders = string
type customDomain = string
type createTime = Js.Date.t
type context = string
type condition = string
type commitTime = Js.Date.t
type commitMessage = string
type commitId = string
type code = string
type certificateVerificationDNSRecord = string
@ocaml.doc("<p> The build specification (build spec) file for an Amplify app build. </p>")
type buildSpec = string
type branchName = string
type branchArn = string
type basicAuthCredentials = string
type backendEnvironmentArn = string
type autoSubDomainIAMRole = string
type autoSubDomainCreationPattern = string
type autoBranchCreationPattern = string
type associatedResource = string
type artifactsUrl = string
type artifactUrl = string
type artifactId = string
type artifactFileName = string
type appId = string
type appArn = string
type activeJobId = string
type accessToken = string
@ocaml.doc("<p> Describes a webhook that connects repository events to an Amplify app. </p>")
type webhook = {
  @ocaml.doc("<p> Updates the date and time for a webhook. </p>") updateTime: updateTime,
  @ocaml.doc("<p> The create date and time for a webhook. </p>") createTime: createTime,
  @ocaml.doc("<p> The description for a webhook. </p>") description: description,
  @ocaml.doc("<p> The name for a branch that is part of an Amplify app. </p>")
  branchName: branchName,
  @ocaml.doc("<p> The URL of the webhook. </p>") webhookUrl: webhookUrl,
  @ocaml.doc("<p> The ID of the webhook. </p>") webhookId: webhookId,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) for the webhook. </p>") webhookArn: webhookArn,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p> Describes the settings for the subdomain. </p>")
type subDomainSetting = {
  @ocaml.doc("<p> The branch name setting for the subdomain. </p>") branchName: branchName,
  @ocaml.doc("<p> The prefix setting for the subdomain. </p>") prefix: domainPrefix,
}
type screenshots = Js.Dict.t<thumbnailUrl>
@ocaml.doc("<p> Describes the information about a production branch for an Amplify app. </p>")
type productionBranch = {
  @ocaml.doc("<p> The branch name for the production branch. </p>") branchName: option<branchName>,
  @ocaml.doc("<p> The thumbnail URL for the production branch. </p>")
  thumbnailUrl: option<thumbnailUrl>,
  @ocaml.doc("<p> The status of the production branch. </p>") status: option<status>,
  @ocaml.doc("<p> The last deploy time of the production branch. </p>")
  lastDeployTime: option<lastDeployTime>,
}
@ocaml.doc("<p> Describes the summary for an execution job for an Amplify app. </p>")
type jobSummary = {
  @ocaml.doc("<p> The type for the job. If the value is <code>RELEASE</code>, the job was manually
            released from its source by using the <code>StartJob</code> API. If the value is
                <code>RETRY</code>, the job was manually retried using the <code>StartJob</code>
            API. If the value is <code>WEB_HOOK</code>, the job was automatically triggered by
            webhooks. </p>")
  jobType: jobType,
  @ocaml.doc("<p> The end date and time for the job. </p>") endTime: option<endTime>,
  @ocaml.doc("<p> The current status for the job. </p>") status: jobStatus,
  @ocaml.doc("<p> The start date and time for the job. </p>") startTime: startTime,
  @ocaml.doc("<p> The commit date and time for the job. </p>") commitTime: commitTime,
  @ocaml.doc("<p> The commit message from a third-party repository provider for the job. </p>")
  commitMessage: commitMessage,
  @ocaml.doc("<p> The commit ID from a third-party repository provider for the job. </p>")
  commitId: commitId,
  @ocaml.doc("<p> The unique ID for the job. </p>") jobId: jobId,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) for the job. </p>") jobArn: jobArn,
}
type fileUploadUrls = Js.Dict.t<uploadUrl>
type fileMap = Js.Dict.t<md5Hash>
type environmentVariables = Js.Dict.t<envValue>
@ocaml.doc("<p> Describes a custom rewrite or redirect rule. </p>")
type customRule = {
  @ocaml.doc("<p> The condition for a URL rewrite or redirect rule, such as a country code. </p>")
  condition: option<condition>,
  @ocaml.doc("<p> The status code for a URL rewrite or redirect rule. </p>
        
        <dl>
            <dt>200</dt>
            <dd>
                    <p>Represents a 200 rewrite rule.</p>
                </dd>
            <dt>301</dt>
            <dd>
                    <p>Represents a 301 (moved pemanently) redirect rule. This and all future requests should be directed to the target URL. </p>
                </dd>
            <dt>302</dt>
            <dd>
                    <p>Represents a 302 temporary redirect rule.</p>
                </dd>
            <dt>404</dt>
            <dd>
                    <p>Represents a 404 redirect rule.</p>
                </dd>
            <dt>404-200</dt>
            <dd>
                    <p>Represents a 404 rewrite rule.</p>
                </dd>
         </dl>")
  status: option<status>,
  @ocaml.doc("<p> The target pattern for a URL rewrite or redirect rule. </p>") target: target,
  @ocaml.doc("<p> The source pattern for a URL rewrite or redirect rule. </p>") source: source,
}
type customDomains = array<customDomain>
@ocaml.doc("<p> Describes the backend environment for an Amplify app. </p>")
type backendEnvironment = {
  @ocaml.doc("<p> The last updated date and time for a backend environment that is part of an Amplify
            app. </p>")
  updateTime: updateTime,
  @ocaml.doc("<p> The creation date and time for a backend environment that is part of an Amplify app.
        </p>")
  createTime: createTime,
  @ocaml.doc("<p> The name of deployment artifacts. </p>")
  deploymentArtifacts: option<deploymentArtifacts>,
  @ocaml.doc("<p> The AWS CloudFormation stack name of a backend environment. </p>")
  stackName: option<stackName>,
  @ocaml.doc("<p> The name for a backend environment that is part of an Amplify app. </p>")
  environmentName: environmentName,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) for a backend environment that is part of an Amplify
            app. </p>")
  backendEnvironmentArn: backendEnvironmentArn,
}
type autoSubDomainCreationPatterns = array<autoSubDomainCreationPattern>
type autoBranchCreationPatterns = array<autoBranchCreationPattern>
type associatedResources = array<associatedResource>
@ocaml.doc("<p> Describes an artifact. </p>")
type artifact = {
  @ocaml.doc("<p> The unique ID for the artifact. </p>") artifactId: artifactId,
  @ocaml.doc("<p> The file name for the artifact. </p>") artifactFileName: artifactFileName,
}
type webhooks = array<webhook>
type subDomainSettings = array<subDomainSetting>
@ocaml.doc("<p> The subdomain for the domain association. </p>")
type subDomain = {
  @ocaml.doc("<p> The DNS record for the subdomain. </p>") dnsRecord: dnsrecord,
  @ocaml.doc("<p> The verified status of the subdomain </p>") verified: verified,
  @ocaml.doc("<p> Describes the settings for the subdomain. </p>")
  subDomainSetting: subDomainSetting,
}
@ocaml.doc("<p> Describes an execution step, for an execution job, for an Amplify app. </p>")
type step = {
  @ocaml.doc("<p> The context for the current step. Includes a build image if the step is build.
        </p>")
  context: option<context>,
  @ocaml.doc("<p> The reason for the current step status. </p>") statusReason: option<statusReason>,
  @ocaml.doc("<p> The list of screenshot URLs for the execution step, if relevant. </p>")
  screenshots: option<screenshots>,
  @ocaml.doc("<p> The URL to the test configuration for the execution step. </p>")
  testConfigUrl: option<testConfigUrl>,
  @ocaml.doc("<p> The URL to the test artifact for the execution step. </p>")
  testArtifactsUrl: option<testArtifactsUrl>,
  @ocaml.doc("<p> The URL to the artifact for the execution step. </p>")
  artifactsUrl: option<artifactsUrl>,
  @ocaml.doc("<p> The URL to the logs for the execution step. </p>") logUrl: option<logUrl>,
  @ocaml.doc("<p> The end date and time of the execution step. </p>") endTime: endTime,
  @ocaml.doc("<p> The status of the execution step. </p>") status: jobStatus,
  @ocaml.doc("<p> The start date and time of the execution step. </p>") startTime: startTime,
  @ocaml.doc("<p> The name of the execution step. </p>") stepName: stepName,
}
type jobSummaries = array<jobSummary>
type customRules = array<customRule>
@ocaml.doc("<p> The branch for an Amplify app, which maps to a third-party repository branch. </p>")
type branch = {
  @ocaml.doc("<p> The Amazon Resource Name (ARN) for a backend environment that is part of an Amplify
            app. </p>")
  backendEnvironmentArn: option<backendEnvironmentArn>,
  @ocaml.doc("<p> The source branch if the branch is a pull request branch. </p>")
  sourceBranch: option<branchName>,
  @ocaml.doc("<p> The destination branch if the branch is a pull request branch. </p>")
  destinationBranch: option<branchName>,
  @ocaml.doc("<p> The Amplify environment name for the pull request. </p>")
  pullRequestEnvironmentName: option<pullRequestEnvironmentName>,
  @ocaml.doc("<p> Enables pull request previews for the branch. </p>")
  enablePullRequestPreview: enablePullRequestPreview,
  @ocaml.doc("<p> A list of custom resources that are linked to this branch. </p>")
  associatedResources: option<associatedResources>,
  @ocaml.doc("<p> The content Time to Live (TTL) for the website in seconds. </p>") ttl: ttl,
  @ocaml.doc("<p> The build specification (build spec) content for the branch of an Amplify app.
        </p>")
  buildSpec: option<buildSpec>,
  @ocaml.doc("<p> The basic authorization credentials for a branch of an Amplify app. </p>")
  basicAuthCredentials: option<basicAuthCredentials>,
  @ocaml.doc("<p> The thumbnail URL for the branch of an Amplify app. </p>")
  thumbnailUrl: option<thumbnailUrl>,
  @ocaml.doc("<p>Enables performance mode for the branch.</p>
        <p>Performance mode optimizes for faster hosting performance by keeping content cached at the edge for a longer interval. When performance mode is enabled, hosting configuration or code changes can take up to 10 minutes to roll out. </p>")
  enablePerformanceMode: option<enablePerformanceMode>,
  @ocaml.doc("<p> Enables basic authorization for a branch of an Amplify app. </p>")
  enableBasicAuth: enableBasicAuth,
  @ocaml.doc("<p> The total number of jobs that are part of an Amplify app. </p>")
  totalNumberOfJobs: totalNumberOfJobs,
  @ocaml.doc("<p> The ID of the active job for a branch of an Amplify app. </p>")
  activeJobId: activeJobId,
  @ocaml.doc("<p> The framework for a branch of an Amplify app. </p>") framework: framework,
  @ocaml.doc("<p> The custom domains for a branch of an Amplify app. </p>")
  customDomains: customDomains,
  @ocaml.doc("<p> Enables auto-building on push for a branch of an Amplify app. </p>")
  enableAutoBuild: enableAutoBuild,
  @ocaml.doc("<p> The environment variables specific to a branch of an Amplify app. </p>")
  environmentVariables: environmentVariables,
  @ocaml.doc("<p> The last updated date and time for a branch that is part of an Amplify app. </p>")
  updateTime: updateTime,
  @ocaml.doc("<p> The creation date and time for a branch that is part of an Amplify app. </p>")
  createTime: createTime,
  @ocaml.doc("<p> Enables notifications for a branch that is part of an Amplify app. </p>")
  enableNotification: enableNotification,
  @ocaml.doc("<p> The display name for the branch. This is used as the default domain prefix. </p>")
  displayName: displayName,
  @ocaml.doc("<p> The current stage for the branch that is part of an Amplify app. </p>")
  stage: stage,
  @ocaml.doc("<p> The tag for the branch of an Amplify app. </p>") tags: option<tagMap>,
  @ocaml.doc("<p> The description for the branch that is part of an Amplify app. </p>")
  description: description,
  @ocaml.doc("<p> The name for the branch that is part of an Amplify app. </p>")
  branchName: branchName,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) for a branch that is part of an Amplify app. </p>")
  branchArn: branchArn,
}
type backendEnvironments = array<backendEnvironment>
@ocaml.doc("<p> Describes the automated branch creation configuration. </p>")
type autoBranchCreationConfig = {
  @ocaml.doc("<p> The Amplify environment name for the pull request. </p>")
  pullRequestEnvironmentName: option<pullRequestEnvironmentName>,
  @ocaml.doc("<p> Enables pull request previews for the autocreated branch. </p>")
  enablePullRequestPreview: option<enablePullRequestPreview>,
  @ocaml.doc("<p> The build specification (build spec) for the autocreated branch. </p>")
  buildSpec: option<buildSpec>,
  @ocaml.doc("<p>Enables performance mode for the branch.</p>
        <p>Performance mode optimizes for faster hosting performance by keeping content cached at the edge for a longer interval. When performance mode is enabled, hosting configuration or code changes can take up to 10 minutes to roll out. </p>")
  enablePerformanceMode: option<enablePerformanceMode>,
  @ocaml.doc("<p> Enables basic authorization for the autocreated branch. </p>")
  enableBasicAuth: option<enableBasicAuth>,
  @ocaml.doc("<p> The basic authorization credentials for the autocreated branch. </p>")
  basicAuthCredentials: option<basicAuthCredentials>,
  @ocaml.doc("<p> The environment variables for the autocreated branch. </p>")
  environmentVariables: option<environmentVariables>,
  @ocaml.doc("<p> Enables auto building for the autocreated branch. </p>")
  enableAutoBuild: option<enableAutoBuild>,
  @ocaml.doc("<p> The framework for the autocreated branch. </p>") framework: option<framework>,
  @ocaml.doc("<p> Describes the current stage for the autocreated branch. </p>")
  stage: option<stage>,
}
type artifacts = array<artifact>
type subDomains = array<subDomain>
type steps = array<step>
type branches = array<branch>
@ocaml.doc("<p> Represents the different branches of a repository for building, deploying, and
            hosting an Amplify app. </p>")
type app = {
  @ocaml.doc("<p> Describes the automated branch creation configuration for the Amplify app. </p>")
  autoBranchCreationConfig: option<autoBranchCreationConfig>,
  @ocaml.doc("<p> Describes the automated branch creation glob patterns for the Amplify app. </p>")
  autoBranchCreationPatterns: option<autoBranchCreationPatterns>,
  @ocaml.doc("<p> Enables automated branch creation for the Amplify app. </p>")
  enableAutoBranchCreation: option<enableAutoBranchCreation>,
  @ocaml.doc("<p>Describes the custom HTTP headers for the Amplify app.</p>")
  customHeaders: option<customHeaders>,
  @ocaml.doc("<p> Describes the content of the build specification (build spec) for the Amplify app.
        </p>")
  buildSpec: option<buildSpec>,
  @ocaml.doc("<p> Describes the information about a production branch of the Amplify app. </p>")
  productionBranch: option<productionBranch>,
  @ocaml.doc("<p> Describes the custom redirect and rewrite rules for the Amplify app. </p>")
  customRules: option<customRules>,
  @ocaml.doc("<p> The basic authorization credentials for branches for the Amplify app. </p>")
  basicAuthCredentials: option<basicAuthCredentials>,
  @ocaml.doc("<p> Enables basic authorization for the Amplify app's branches. </p>")
  enableBasicAuth: enableBasicAuth,
  @ocaml.doc("<p> Automatically disconnect a branch in the Amplify Console when you delete a branch
            from your Git repository. </p>")
  enableBranchAutoDeletion: option<enableBranchAutoDeletion>,
  @ocaml.doc("<p> Enables the auto-building of branches for the Amplify app. </p>")
  enableBranchAutoBuild: enableBranchAutoBuild,
  @ocaml.doc("<p> The default domain for the Amplify app. </p>") defaultDomain: defaultDomain,
  @ocaml.doc("<p> The environment variables for the Amplify app. </p>")
  environmentVariables: environmentVariables,
  @ocaml.doc("<p> The AWS Identity and Access Management (IAM) service role for the Amazon Resource
            Name (ARN) of the Amplify app. </p>")
  iamServiceRoleArn: option<serviceRoleArn>,
  @ocaml.doc("<p> Updates the date and time for the Amplify app. </p>") updateTime: updateTime,
  @ocaml.doc("<p> Creates a date and time for the Amplify app. </p>") createTime: createTime,
  @ocaml.doc("<p> The platform for the Amplify app. </p>") platform: platform,
  @ocaml.doc("<p> The repository for the Amplify app. </p>") repository: repository,
  @ocaml.doc("<p> The description for the Amplify app. </p>") description: description,
  @ocaml.doc("<p> The tag for the Amplify app. </p>") tags: option<tagMap>,
  @ocaml.doc("<p> The name for the Amplify app. </p>") name: name,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the Amplify app. </p>") appArn: appArn,
  @ocaml.doc("<p> The unique ID of the Amplify app. </p>") appId: appId,
}
@ocaml.doc("<p> Describes an execution job for an Amplify app. </p>")
type job = {
  @ocaml.doc("<p> The execution steps for an execution job, for an Amplify app. </p>") steps: steps,
  @ocaml.doc("<p> Describes the summary for an execution job for an Amplify app. </p>")
  summary: jobSummary,
}
@ocaml.doc("<p> Describes a domain association that associates a custom domain with an Amplify app.
        </p>")
type domainAssociation = {
  @ocaml.doc("<p> The subdomains for the domain association. </p>") subDomains: subDomains,
  @ocaml.doc("<p> The DNS record for certificate verification. </p>")
  certificateVerificationDNSRecord: option<certificateVerificationDNSRecord>,
  @ocaml.doc("<p> The reason for the current status of the domain association. </p>")
  statusReason: statusReason,
  @ocaml.doc("<p> The current status of the domain association. </p>") domainStatus: domainStatus,
  @ocaml.doc("<p> The required AWS Identity and Access Management (IAM) service role for the Amazon
            Resource Name (ARN) for automatically creating subdomains. </p>")
  autoSubDomainIAMRole: option<autoSubDomainIAMRole>,
  @ocaml.doc("<p> Sets branch patterns for automatic subdomain creation. </p>")
  autoSubDomainCreationPatterns: option<autoSubDomainCreationPatterns>,
  @ocaml.doc("<p> Enables the automated creation of subdomains for branches. </p>")
  enableAutoSubDomain: enableAutoSubDomain,
  @ocaml.doc("<p> The name of the domain. </p>") domainName: domainName,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) for the domain association. </p>")
  domainAssociationArn: domainAssociationArn,
}
type apps = array<app>
type domainAssociations = array<domainAssociation>
@ocaml.doc("<p>Amplify enables developers to develop and deploy cloud-powered mobile and web apps.
            The Amplify Console provides a continuous delivery and hosting service for web
            applications. For more information, see the <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html\">Amplify Console User Guide</a>. The
            Amplify Framework is a comprehensive set of SDKs, libraries, tools, and documentation
            for client app development. For more information, see the <a href=\"https://docs.amplify.aws/\">Amplify Framework.</a>
         </p>")
module GetArtifactUrl = {
  type t
  @ocaml.doc("<p> Returns the request structure for the get artifact request. </p>")
  type request = {@ocaml.doc("<p> The unique ID for an artifact. </p>") artifactId: artifactId}
  @ocaml.doc("<p> Returns the result structure for the get artifact request. </p>")
  type response = {
    @ocaml.doc("<p> The presigned URL for the artifact. </p>") artifactUrl: artifactUrl,
    @ocaml.doc("<p> The unique ID for an artifact. </p>") artifactId: artifactId,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "GetArtifactUrlCommand"
  let make = (~artifactId, ()) => new({artifactId: artifactId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GenerateAccessLogs = {
  type t
  @ocaml.doc("<p> The request structure for the generate access logs request. </p>")
  type request = {
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
    @ocaml.doc("<p> The name of the domain. </p>") domainName: domainName,
    @ocaml.doc("<p> The time at which the logs should end. The time range specified is inclusive of the
            end time. </p>")
    endTime: option<endTime>,
    @ocaml.doc("<p> The time at which the logs should start. The time range specified is inclusive of the
            start time. </p>")
    startTime: option<startTime>,
  }
  @ocaml.doc("<p> The result structure for the generate access logs request. </p>")
  type response = {
    @ocaml.doc("<p> The pre-signed URL for the requested access logs. </p>") logUrl: option<logUrl>,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "GenerateAccessLogsCommand"
  let make = (~appId, ~domainName, ~endTime=?, ~startTime=?, ()) =>
    new({appId: appId, domainName: domainName, endTime: endTime, startTime: startTime})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWebhook = {
  type t
  @ocaml.doc("<p> The request structure for the update webhook request. </p>")
  type request = {
    @ocaml.doc("<p> The description for a webhook. </p>") description: option<description>,
    @ocaml.doc("<p> The name for a branch that is part of an Amplify app. </p>")
    branchName: option<branchName>,
    @ocaml.doc("<p> The unique ID for a webhook. </p>") webhookId: webhookId,
  }
  @ocaml.doc("<p> The result structure for the update webhook request. </p>")
  type response = {
    @ocaml.doc("<p> Describes a webhook that connects repository events to an Amplify app. </p>")
    webhook: webhook,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "UpdateWebhookCommand"
  let make = (~webhookId, ~description=?, ~branchName=?, ()) =>
    new({description: description, branchName: branchName, webhookId: webhookId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  @ocaml.doc("<p> The request structure for the untag resource request. </p>")
  type request = {
    @ocaml.doc("<p> The tag keys to use to untag a resource. </p>") tagKeys: tagKeyList,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) to use to untag a resource. </p>")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-amplify") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  @ocaml.doc("<p> The request structure to tag a resource with a tag key and value. </p>")
  type request = {
    @ocaml.doc("<p> The tags used to tag the resource. </p>") tags: tagMap,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) to use to tag a resource. </p>")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-amplify") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopJob = {
  type t
  @ocaml.doc("<p> The request structure for the stop job request. </p>")
  type request = {
    @ocaml.doc("<p> The unique id for the job. </p>") jobId: jobId,
    @ocaml.doc("<p> The name for the branch, for the job. </p>") branchName: branchName,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the stop job request. </p>")
  type response = {@ocaml.doc("<p> The summary for the job. </p>") jobSummary: jobSummary}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "StopJobCommand"
  let make = (~jobId, ~branchName, ~appId, ()) =>
    new({jobId: jobId, branchName: branchName, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartJob = {
  type t
  @ocaml.doc("<p> The request structure for the start job request. </p>")
  type request = {
    @ocaml.doc("<p> The commit date and time for the job. </p>") commitTime: option<commitTime>,
    @ocaml.doc("<p> The commit message from a third-party repository provider for the job. </p>")
    commitMessage: option<commitMessage>,
    @ocaml.doc("<p> The commit ID from a third-party repository provider for the job. </p>")
    commitId: option<commitId>,
    @ocaml.doc("<p> A descriptive reason for starting this job. </p>") jobReason: option<jobReason>,
    @ocaml.doc("<p> Describes the type for the job. The job type <code>RELEASE</code> starts a new job
            with the latest change from the specified branch. This value is available only for apps
            that are connected to a repository. The job type <code>RETRY</code> retries an existing
            job. If the job type value is <code>RETRY</code>, the <code>jobId</code> is also
            required. </p>")
    jobType: jobType,
    @ocaml.doc("<p> The unique ID for an existing job. This is required if the value of
                <code>jobType</code> is <code>RETRY</code>. </p>")
    jobId: option<jobId>,
    @ocaml.doc("<p> The branch name for the job. </p>") branchName: branchName,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the run job request. </p>")
  type response = {@ocaml.doc("<p> The summary for the job. </p>") jobSummary: jobSummary}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "StartJobCommand"
  let make = (
    ~jobType,
    ~branchName,
    ~appId,
    ~commitTime=?,
    ~commitMessage=?,
    ~commitId=?,
    ~jobReason=?,
    ~jobId=?,
    (),
  ) =>
    new({
      commitTime: commitTime,
      commitMessage: commitMessage,
      commitId: commitId,
      jobReason: jobReason,
      jobType: jobType,
      jobId: jobId,
      branchName: branchName,
      appId: appId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDeployment = {
  type t
  @ocaml.doc("<p> The request structure for the start a deployment request. </p>")
  type request = {
    @ocaml.doc("<p> The source URL for this deployment, used when calling start deployment without create
            deployment. The source URL can be any HTTP GET URL that is publicly accessible and
            downloads a single .zip file. </p>")
    sourceUrl: option<sourceUrl>,
    @ocaml.doc(
      "<p> The job ID for this deployment, generated by the create deployment request. </p>"
    )
    jobId: option<jobId>,
    @ocaml.doc("<p> The name for the branch, for the job. </p>") branchName: branchName,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the start a deployment request. </p>")
  type response = {@ocaml.doc("<p> The summary for the job. </p>") jobSummary: jobSummary}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "StartDeploymentCommand"
  let make = (~branchName, ~appId, ~sourceUrl=?, ~jobId=?, ()) =>
    new({sourceUrl: sourceUrl, jobId: jobId, branchName: branchName, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  @ocaml.doc("<p> The request structure to use to list tags for a resource. </p>")
  type request = {
    @ocaml.doc("<p> The Amazon Resource Name (ARN) to use to list tags. </p>")
    resourceArn: resourceArn,
  }
  @ocaml.doc("<p> The response for the list tags for resource request. </p>")
  type response = {
    @ocaml.doc("<p> A list of tags for the specified The Amazon Resource Name (ARN). </p>")
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWebhook = {
  type t
  @ocaml.doc("<p> The request structure for the get webhook request. </p>")
  type request = {@ocaml.doc("<p> The unique ID for a webhook. </p>") webhookId: webhookId}
  @ocaml.doc("<p> The result structure for the get webhook request. </p>")
  type response = {@ocaml.doc("<p> Describes the structure of a webhook. </p>") webhook: webhook}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "GetWebhookCommand"
  let make = (~webhookId, ()) => new({webhookId: webhookId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBackendEnvironment = {
  type t
  @ocaml.doc("<p> The request structure for the get backend environment request. </p>")
  type request = {
    @ocaml.doc("<p> The name for the backend environment. </p>") environmentName: environmentName,
    @ocaml.doc("<p> The unique id for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the get backend environment result. </p>")
  type response = {
    @ocaml.doc("<p> Describes the backend environment for an Amplify app. </p>")
    backendEnvironment: backendEnvironment,
  }
  @module("@aws-sdk/client-amplify") @new
  external new: request => t = "GetBackendEnvironmentCommand"
  let make = (~environmentName, ~appId, ()) => new({environmentName: environmentName, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWebhook = {
  type t
  @ocaml.doc("<p> The request structure for the delete webhook request. </p>")
  type request = {@ocaml.doc("<p> The unique ID for a webhook. </p>") webhookId: webhookId}
  @ocaml.doc("<p> The result structure for the delete webhook request. </p>")
  type response = {
    @ocaml.doc("<p> Describes a webhook that connects repository events to an Amplify app. </p>")
    webhook: webhook,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "DeleteWebhookCommand"
  let make = (~webhookId, ()) => new({webhookId: webhookId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteJob = {
  type t
  @ocaml.doc("<p> The request structure for the delete job request. </p>")
  type request = {
    @ocaml.doc("<p> The unique ID for the job. </p>") jobId: jobId,
    @ocaml.doc("<p> The name for the branch, for the job. </p>") branchName: branchName,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the delete job request. </p>")
  type response = {jobSummary: jobSummary}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "DeleteJobCommand"
  let make = (~jobId, ~branchName, ~appId, ()) =>
    new({jobId: jobId, branchName: branchName, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBackendEnvironment = {
  type t
  @ocaml.doc("<p> The request structure for the delete backend environment request. </p>")
  type request = {
    @ocaml.doc("<p> The name of a backend environment of an Amplify app. </p>")
    environmentName: environmentName,
    @ocaml.doc("<p> The unique ID of an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure of the delete backend environment result. </p>")
  type response = {
    @ocaml.doc("<p> Describes the backend environment for an Amplify app. </p>")
    backendEnvironment: backendEnvironment,
  }
  @module("@aws-sdk/client-amplify") @new
  external new: request => t = "DeleteBackendEnvironmentCommand"
  let make = (~environmentName, ~appId, ()) => new({environmentName: environmentName, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWebhook = {
  type t
  @ocaml.doc("<p> The request structure for the create webhook request. </p>")
  type request = {
    @ocaml.doc("<p> The description for a webhook. </p>") description: option<description>,
    @ocaml.doc("<p> The name for a branch that is part of an Amplify app. </p>")
    branchName: branchName,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the create webhook request. </p>")
  type response = {
    @ocaml.doc("<p> Describes a webhook that connects repository events to an Amplify app. </p>")
    webhook: webhook,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "CreateWebhookCommand"
  let make = (~branchName, ~appId, ~description=?, ()) =>
    new({description: description, branchName: branchName, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeployment = {
  type t
  @ocaml.doc("<p> The request structure for the create a new deployment request. </p>")
  type request = {
    @ocaml.doc("<p> An optional file map that contains the file name as the key and the file content md5
            hash as the value. If this argument is provided, the service will generate a unique
            upload URL per file. Otherwise, the service will only generate a single upload URL for
            the zipped files. </p>")
    fileMap: option<fileMap>,
    @ocaml.doc("<p> The name for the branch, for the job. </p>") branchName: branchName,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the create a new deployment request. </p>")
  type response = {
    @ocaml.doc("<p> When the <code>fileMap</code> argument is not provided in the request, this
                <code>zipUploadUrl</code> is returned. </p>")
    zipUploadUrl: uploadUrl,
    @ocaml.doc("<p> When the <code>fileMap</code> argument is provided in the request,
                <code>fileUploadUrls</code> will contain a map of file names to upload URLs. </p>")
    fileUploadUrls: fileUploadUrls,
    @ocaml.doc("<p> The job ID for this deployment. will supply to start deployment api. </p>")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "CreateDeploymentCommand"
  let make = (~branchName, ~appId, ~fileMap=?, ()) =>
    new({fileMap: fileMap, branchName: branchName, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBackendEnvironment = {
  type t
  @ocaml.doc("<p> The request structure for the backend environment create request. </p>")
  type request = {
    @ocaml.doc("<p> The name of deployment artifacts. </p>")
    deploymentArtifacts: option<deploymentArtifacts>,
    @ocaml.doc("<p> The AWS CloudFormation stack name of a backend environment. </p>")
    stackName: option<stackName>,
    @ocaml.doc("<p> The name for the backend environment. </p>") environmentName: environmentName,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the create backend environment request. </p>")
  type response = {
    @ocaml.doc("<p> Describes the backend environment for an Amplify app. </p>")
    backendEnvironment: backendEnvironment,
  }
  @module("@aws-sdk/client-amplify") @new
  external new: request => t = "CreateBackendEnvironmentCommand"
  let make = (~environmentName, ~appId, ~deploymentArtifacts=?, ~stackName=?, ()) =>
    new({
      deploymentArtifacts: deploymentArtifacts,
      stackName: stackName,
      environmentName: environmentName,
      appId: appId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBranch = {
  type t
  @ocaml.doc("<p> The request structure for the update branch request. </p>")
  type request = {
    @ocaml.doc("<p> The Amazon Resource Name (ARN) for a backend environment that is part of an Amplify
            app. </p>")
    backendEnvironmentArn: option<backendEnvironmentArn>,
    @ocaml.doc("<p> The Amplify environment name for the pull request. </p>")
    pullRequestEnvironmentName: option<pullRequestEnvironmentName>,
    @ocaml.doc("<p> Enables pull request previews for this branch. </p>")
    enablePullRequestPreview: option<enablePullRequestPreview>,
    @ocaml.doc("<p> The display name for a branch. This is used as the default domain prefix. </p>")
    displayName: option<displayName>,
    @ocaml.doc("<p> The content Time to Live (TTL) for the website in seconds. </p>")
    ttl: option<ttl>,
    @ocaml.doc("<p> The build specification (build spec) for the branch. </p>")
    buildSpec: option<buildSpec>,
    @ocaml.doc("<p>Enables performance mode for the branch.</p>
        <p>Performance mode optimizes for faster hosting performance by keeping content cached at the edge for a longer interval. When performance mode is enabled, hosting configuration or code changes can take up to 10 minutes to roll out. </p>")
    enablePerformanceMode: option<enablePerformanceMode>,
    @ocaml.doc("<p> Enables basic authorization for the branch. </p>")
    enableBasicAuth: option<enableBasicAuth>,
    @ocaml.doc("<p> The basic authorization credentials for the branch. </p>")
    basicAuthCredentials: option<basicAuthCredentials>,
    @ocaml.doc("<p> The environment variables for the branch. </p>")
    environmentVariables: option<environmentVariables>,
    @ocaml.doc("<p> Enables auto building for the branch. </p>")
    enableAutoBuild: option<enableAutoBuild>,
    @ocaml.doc("<p> Enables notifications for the branch. </p>")
    enableNotification: option<enableNotification>,
    @ocaml.doc("<p> Describes the current stage for the branch. </p>") stage: option<stage>,
    @ocaml.doc("<p> The framework for the branch. </p>") framework: option<framework>,
    @ocaml.doc("<p> The description for the branch. </p>") description: option<description>,
    @ocaml.doc("<p> The name for the branch. </p>") branchName: branchName,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the update branch request. </p>")
  type response = {
    @ocaml.doc(
      "<p> The branch for an Amplify app, which maps to a third-party repository branch. </p>"
    )
    branch: branch,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "UpdateBranchCommand"
  let make = (
    ~branchName,
    ~appId,
    ~backendEnvironmentArn=?,
    ~pullRequestEnvironmentName=?,
    ~enablePullRequestPreview=?,
    ~displayName=?,
    ~ttl=?,
    ~buildSpec=?,
    ~enablePerformanceMode=?,
    ~enableBasicAuth=?,
    ~basicAuthCredentials=?,
    ~environmentVariables=?,
    ~enableAutoBuild=?,
    ~enableNotification=?,
    ~stage=?,
    ~framework=?,
    ~description=?,
    (),
  ) =>
    new({
      backendEnvironmentArn: backendEnvironmentArn,
      pullRequestEnvironmentName: pullRequestEnvironmentName,
      enablePullRequestPreview: enablePullRequestPreview,
      displayName: displayName,
      ttl: ttl,
      buildSpec: buildSpec,
      enablePerformanceMode: enablePerformanceMode,
      enableBasicAuth: enableBasicAuth,
      basicAuthCredentials: basicAuthCredentials,
      environmentVariables: environmentVariables,
      enableAutoBuild: enableAutoBuild,
      enableNotification: enableNotification,
      stage: stage,
      framework: framework,
      description: description,
      branchName: branchName,
      appId: appId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWebhooks = {
  type t
  @ocaml.doc("<p> The request structure for the list webhooks request. </p>")
  type request = {
    @ocaml.doc("<p> The maximum number of records to list in a single response. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p> A pagination token. Set to null to start listing webhooks from the start. If
            non-null,the pagination token is returned in a result. Pass its value in here to list
            more webhooks. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the list webhooks request. </p>")
  type response = {
    @ocaml.doc("<p> A pagination token. If non-null, the pagination token is returned in a result. Pass
            its value in another request to retrieve more entries. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> A list of webhooks. </p>") webhooks: webhooks,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "ListWebhooksCommand"
  let make = (~appId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobs = {
  type t
  @ocaml.doc("<p> The request structure for the list jobs request. </p>")
  type request = {
    @ocaml.doc("<p> The maximum number of records to list in a single response. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p> A pagination token. Set to null to start listing steps from the start. If a non-null
            pagination token is returned in a result, pass its value in here to list more steps.
        </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> The name for a branch. </p>") branchName: branchName,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The maximum number of records to list in a single response. </p>")
  type response = {
    @ocaml.doc("<p> A pagination token. If non-null the pagination token is returned in a result. Pass
            its value in another request to retrieve more entries. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> The result structure for the list job result request. </p>")
    jobSummaries: jobSummaries,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "ListJobsCommand"
  let make = (~branchName, ~appId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, branchName: branchName, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBackendEnvironments = {
  type t
  @ocaml.doc("<p> The request structure for the list backend environments request. </p>")
  type request = {
    @ocaml.doc("<p> The maximum number of records to list in a single response. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p> A pagination token. Set to null to start listing backend environments from the start.
            If a non-null pagination token is returned in a result, pass its value in here to list
            more backend environments. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> The name of the backend environment </p>")
    environmentName: option<environmentName>,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the list backend environments result. </p>")
  type response = {
    @ocaml.doc("<p> A pagination token. If a non-null pagination token is returned in a result, pass its
            value in another request to retrieve more entries. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> The list of backend environments for an Amplify app. </p>")
    backendEnvironments: backendEnvironments,
  }
  @module("@aws-sdk/client-amplify") @new
  external new: request => t = "ListBackendEnvironmentsCommand"
  let make = (~appId, ~maxResults=?, ~nextToken=?, ~environmentName=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      environmentName: environmentName,
      appId: appId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListArtifacts = {
  type t
  @ocaml.doc("<p> Describes the request structure for the list artifacts request. </p>")
  type request = {
    @ocaml.doc("<p> The maximum number of records to list in a single response. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p> A pagination token. Set to null to start listing artifacts from start. If a non-null
            pagination token is returned in a result, pass its value in here to list more artifacts.
        </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> The unique ID for a job. </p>") jobId: jobId,
    @ocaml.doc("<p> The name of a branch that is part of an Amplify app. </p>")
    branchName: branchName,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the list artifacts request. </p>")
  type response = {
    @ocaml.doc("<p> A pagination token. If a non-null pagination token is returned in a result, pass its
            value in another request to retrieve more entries. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> A list of artifacts. </p>") artifacts: artifacts,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "ListArtifactsCommand"
  let make = (~jobId, ~branchName, ~appId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      jobId: jobId,
      branchName: branchName,
      appId: appId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBranch = {
  type t
  @ocaml.doc("<p> The request structure for the get branch request. </p>")
  type request = {
    @ocaml.doc("<p> The name for the branch. </p>") branchName: branchName,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  type response = {branch: branch}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "GetBranchCommand"
  let make = (~branchName, ~appId, ()) => new({branchName: branchName, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBranch = {
  type t
  @ocaml.doc("<p> The request structure for the delete branch request. </p>")
  type request = {
    @ocaml.doc("<p> The name for the branch. </p>") branchName: branchName,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the delete branch request. </p>")
  type response = {
    @ocaml.doc(
      "<p> The branch for an Amplify app, which maps to a third-party repository branch. </p>"
    )
    branch: branch,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "DeleteBranchCommand"
  let make = (~branchName, ~appId, ()) => new({branchName: branchName, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBranch = {
  type t
  @ocaml.doc("<p> The request structure for the create branch request. </p>")
  type request = {
    @ocaml.doc("<p> The Amazon Resource Name (ARN) for a backend environment that is part of an Amplify
            app. </p>")
    backendEnvironmentArn: option<backendEnvironmentArn>,
    @ocaml.doc("<p> The Amplify environment name for the pull request. </p>")
    pullRequestEnvironmentName: option<pullRequestEnvironmentName>,
    @ocaml.doc("<p> Enables pull request previews for this branch. </p>")
    enablePullRequestPreview: option<enablePullRequestPreview>,
    @ocaml.doc("<p> The display name for a branch. This is used as the default domain prefix. </p>")
    displayName: option<displayName>,
    @ocaml.doc("<p> The content Time To Live (TTL) for the website in seconds. </p>")
    ttl: option<ttl>,
    @ocaml.doc("<p> The build specification (build spec) for the branch. </p>")
    buildSpec: option<buildSpec>,
    @ocaml.doc("<p> The tag for the branch. </p>") tags: option<tagMap>,
    @ocaml.doc("<p>Enables performance mode for the branch.</p>
        <p>Performance mode optimizes for faster hosting performance by keeping content cached at the edge for a longer interval. When performance mode is enabled, hosting configuration or code changes can take up to 10 minutes to roll out. </p>")
    enablePerformanceMode: option<enablePerformanceMode>,
    @ocaml.doc("<p> Enables basic authorization for the branch. </p>")
    enableBasicAuth: option<enableBasicAuth>,
    @ocaml.doc("<p> The basic authorization credentials for the branch. </p>")
    basicAuthCredentials: option<basicAuthCredentials>,
    @ocaml.doc("<p> The environment variables for the branch. </p>")
    environmentVariables: option<environmentVariables>,
    @ocaml.doc("<p> Enables auto building for the branch. </p>")
    enableAutoBuild: option<enableAutoBuild>,
    @ocaml.doc("<p> Enables notifications for the branch. </p>")
    enableNotification: option<enableNotification>,
    @ocaml.doc("<p> The framework for the branch. </p>") framework: option<framework>,
    @ocaml.doc("<p> Describes the current stage for the branch. </p>") stage: option<stage>,
    @ocaml.doc("<p> The description for the branch. </p>") description: option<description>,
    @ocaml.doc("<p> The name for the branch. </p>") branchName: branchName,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for create branch request. </p>")
  type response = {
    @ocaml.doc("<p> Describes the branch for an Amplify app, which maps to a third-party repository
            branch. </p>")
    branch: branch,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "CreateBranchCommand"
  let make = (
    ~branchName,
    ~appId,
    ~backendEnvironmentArn=?,
    ~pullRequestEnvironmentName=?,
    ~enablePullRequestPreview=?,
    ~displayName=?,
    ~ttl=?,
    ~buildSpec=?,
    ~tags=?,
    ~enablePerformanceMode=?,
    ~enableBasicAuth=?,
    ~basicAuthCredentials=?,
    ~environmentVariables=?,
    ~enableAutoBuild=?,
    ~enableNotification=?,
    ~framework=?,
    ~stage=?,
    ~description=?,
    (),
  ) =>
    new({
      backendEnvironmentArn: backendEnvironmentArn,
      pullRequestEnvironmentName: pullRequestEnvironmentName,
      enablePullRequestPreview: enablePullRequestPreview,
      displayName: displayName,
      ttl: ttl,
      buildSpec: buildSpec,
      tags: tags,
      enablePerformanceMode: enablePerformanceMode,
      enableBasicAuth: enableBasicAuth,
      basicAuthCredentials: basicAuthCredentials,
      environmentVariables: environmentVariables,
      enableAutoBuild: enableAutoBuild,
      enableNotification: enableNotification,
      framework: framework,
      stage: stage,
      description: description,
      branchName: branchName,
      appId: appId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApp = {
  type t
  @ocaml.doc("<p> The request structure for the update app request. </p>")
  type request = {
    @ocaml.doc("<p> The personal access token for a third-party source control system for an Amplify app.
            The token is used to create webhook and a read-only deploy key. The token is not stored.
        </p>")
    accessToken: option<accessToken>,
    @ocaml.doc("<p> The OAuth token for a third-party source control system for an Amplify app. The token
            is used to create a webhook and a read-only deploy key. The OAuth token is not stored.
        </p>")
    oauthToken: option<oauthToken>,
    @ocaml.doc("<p> The name of the repository for an Amplify app </p>")
    repository: option<repository>,
    @ocaml.doc("<p> The automated branch creation configuration for an Amplify app. </p>")
    autoBranchCreationConfig: option<autoBranchCreationConfig>,
    @ocaml.doc("<p> Describes the automated branch creation glob patterns for an Amplify app. </p>")
    autoBranchCreationPatterns: option<autoBranchCreationPatterns>,
    @ocaml.doc("<p> Enables automated branch creation for an Amplify app. </p>")
    enableAutoBranchCreation: option<enableAutoBranchCreation>,
    @ocaml.doc("<p>The custom HTTP headers for an Amplify app.</p>")
    customHeaders: option<customHeaders>,
    @ocaml.doc("<p> The build specification (build spec) for an Amplify app. </p>")
    buildSpec: option<buildSpec>,
    @ocaml.doc("<p> The custom redirect and rewrite rules for an Amplify app. </p>")
    customRules: option<customRules>,
    @ocaml.doc("<p> The basic authorization credentials for an Amplify app. </p>")
    basicAuthCredentials: option<basicAuthCredentials>,
    @ocaml.doc("<p> Enables basic authorization for an Amplify app. </p>")
    enableBasicAuth: option<enableBasicAuth>,
    @ocaml.doc("<p> Automatically disconnects a branch in the Amplify Console when you delete a branch
            from your Git repository. </p>")
    enableBranchAutoDeletion: option<enableBranchAutoDeletion>,
    @ocaml.doc("<p> Enables branch auto-building for an Amplify app. </p>")
    enableBranchAutoBuild: option<enableAutoBuild>,
    @ocaml.doc("<p> The environment variables for an Amplify app. </p>")
    environmentVariables: option<environmentVariables>,
    @ocaml.doc(
      "<p> The AWS Identity and Access Management (IAM) service role for an Amplify app. </p>"
    )
    iamServiceRoleArn: option<serviceRoleArn>,
    @ocaml.doc("<p> The platform for an Amplify app. </p>") platform: option<platform>,
    @ocaml.doc("<p> The description for an Amplify app. </p>") description: option<description>,
    @ocaml.doc("<p> The name for an Amplify app. </p>") name: option<name>,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for an Amplify app update request. </p>")
  type response = {@ocaml.doc("<p> Represents the updated Amplify app. </p>") app: app}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "UpdateAppCommand"
  let make = (
    ~appId,
    ~accessToken=?,
    ~oauthToken=?,
    ~repository=?,
    ~autoBranchCreationConfig=?,
    ~autoBranchCreationPatterns=?,
    ~enableAutoBranchCreation=?,
    ~customHeaders=?,
    ~buildSpec=?,
    ~customRules=?,
    ~basicAuthCredentials=?,
    ~enableBasicAuth=?,
    ~enableBranchAutoDeletion=?,
    ~enableBranchAutoBuild=?,
    ~environmentVariables=?,
    ~iamServiceRoleArn=?,
    ~platform=?,
    ~description=?,
    ~name=?,
    (),
  ) =>
    new({
      accessToken: accessToken,
      oauthToken: oauthToken,
      repository: repository,
      autoBranchCreationConfig: autoBranchCreationConfig,
      autoBranchCreationPatterns: autoBranchCreationPatterns,
      enableAutoBranchCreation: enableAutoBranchCreation,
      customHeaders: customHeaders,
      buildSpec: buildSpec,
      customRules: customRules,
      basicAuthCredentials: basicAuthCredentials,
      enableBasicAuth: enableBasicAuth,
      enableBranchAutoDeletion: enableBranchAutoDeletion,
      enableBranchAutoBuild: enableBranchAutoBuild,
      environmentVariables: environmentVariables,
      iamServiceRoleArn: iamServiceRoleArn,
      platform: platform,
      description: description,
      name: name,
      appId: appId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBranches = {
  type t
  @ocaml.doc("<p> The request structure for the list branches request. </p>")
  type request = {
    @ocaml.doc("<p> The maximum number of records to list in a single response. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p> A pagination token. Set to null to start listing branches from the start. If a
            non-null pagination token is returned in a result, pass its value in here to list more
            branches. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the list branches request. </p>")
  type response = {
    @ocaml.doc("<p> A pagination token. If a non-null pagination token is returned in a result, pass its
            value in another request to retrieve more entries. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> A list of branches for an Amplify app. </p>") branches: branches,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "ListBranchesCommand"
  let make = (~appId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApp = {
  type t
  @ocaml.doc("<p> The request structure for the get app request. </p>")
  type request = {@ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId}
  type response = {app: app}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "GetAppCommand"
  let make = (~appId, ()) => new({appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteApp = {
  type t
  @ocaml.doc("<p> Describes the request structure for the delete app request. </p>")
  type request = {@ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId}
  @ocaml.doc("<p> The result structure for the delete app request. </p>") type response = {app: app}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "DeleteAppCommand"
  let make = (~appId, ()) => new({appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApp = {
  type t
  @ocaml.doc("<p> The request structure used to create apps in Amplify. </p>")
  type request = {
    @ocaml.doc("<p> The automated branch creation configuration for an Amplify app. </p>")
    autoBranchCreationConfig: option<autoBranchCreationConfig>,
    @ocaml.doc("<p> The automated branch creation glob patterns for an Amplify app. </p>")
    autoBranchCreationPatterns: option<autoBranchCreationPatterns>,
    @ocaml.doc("<p> Enables automated branch creation for an Amplify app. </p>")
    enableAutoBranchCreation: option<enableAutoBranchCreation>,
    @ocaml.doc("<p>The custom HTTP headers for an Amplify app.</p>")
    customHeaders: option<customHeaders>,
    @ocaml.doc("<p> The build specification (build spec) for an Amplify app. </p>")
    buildSpec: option<buildSpec>,
    @ocaml.doc("<p> The tag for an Amplify app. </p>") tags: option<tagMap>,
    @ocaml.doc("<p> The custom rewrite and redirect rules for an Amplify app. </p>")
    customRules: option<customRules>,
    @ocaml.doc("<p> The credentials for basic authorization for an Amplify app. </p>")
    basicAuthCredentials: option<basicAuthCredentials>,
    @ocaml.doc("<p> Enables basic authorization for an Amplify app. This will apply to all branches that
            are part of this app. </p>")
    enableBasicAuth: option<enableBasicAuth>,
    @ocaml.doc("<p> Automatically disconnects a branch in the Amplify Console when you delete a branch
            from your Git repository. </p>")
    enableBranchAutoDeletion: option<enableBranchAutoDeletion>,
    @ocaml.doc("<p> Enables the auto building of branches for an Amplify app. </p>")
    enableBranchAutoBuild: option<enableBranchAutoBuild>,
    @ocaml.doc("<p> The environment variables map for an Amplify app. </p>")
    environmentVariables: option<environmentVariables>,
    @ocaml.doc("<p> The personal access token for a third-party source control system for an Amplify app.
            The personal access token is used to create a webhook and a read-only deploy key. The
            token is not stored. </p>")
    accessToken: option<accessToken>,
    @ocaml.doc("<p> The OAuth token for a third-party source control system for an Amplify app. The OAuth
            token is used to create a webhook and a read-only deploy key. The OAuth token is not
            stored. </p>")
    oauthToken: option<oauthToken>,
    @ocaml.doc(
      "<p> The AWS Identity and Access Management (IAM) service role for an Amplify app. </p>"
    )
    iamServiceRoleArn: option<serviceRoleArn>,
    @ocaml.doc("<p> The platform or framework for an Amplify app. </p>") platform: option<platform>,
    @ocaml.doc("<p> The repository for an Amplify app. </p>") repository: option<repository>,
    @ocaml.doc("<p> The description for an Amplify app. </p>") description: option<description>,
    @ocaml.doc("<p> The name for an Amplify app. </p>") name: name,
  }
  type response = {app: app}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "CreateAppCommand"
  let make = (
    ~name,
    ~autoBranchCreationConfig=?,
    ~autoBranchCreationPatterns=?,
    ~enableAutoBranchCreation=?,
    ~customHeaders=?,
    ~buildSpec=?,
    ~tags=?,
    ~customRules=?,
    ~basicAuthCredentials=?,
    ~enableBasicAuth=?,
    ~enableBranchAutoDeletion=?,
    ~enableBranchAutoBuild=?,
    ~environmentVariables=?,
    ~accessToken=?,
    ~oauthToken=?,
    ~iamServiceRoleArn=?,
    ~platform=?,
    ~repository=?,
    ~description=?,
    (),
  ) =>
    new({
      autoBranchCreationConfig: autoBranchCreationConfig,
      autoBranchCreationPatterns: autoBranchCreationPatterns,
      enableAutoBranchCreation: enableAutoBranchCreation,
      customHeaders: customHeaders,
      buildSpec: buildSpec,
      tags: tags,
      customRules: customRules,
      basicAuthCredentials: basicAuthCredentials,
      enableBasicAuth: enableBasicAuth,
      enableBranchAutoDeletion: enableBranchAutoDeletion,
      enableBranchAutoBuild: enableBranchAutoBuild,
      environmentVariables: environmentVariables,
      accessToken: accessToken,
      oauthToken: oauthToken,
      iamServiceRoleArn: iamServiceRoleArn,
      platform: platform,
      repository: repository,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDomainAssociation = {
  type t
  @ocaml.doc("<p> The request structure for the update domain association request. </p>")
  type request = {
    @ocaml.doc("<p> The required AWS Identity and Access Management (IAM) service role for the Amazon
            Resource Name (ARN) for automatically creating subdomains. </p>")
    autoSubDomainIAMRole: option<autoSubDomainIAMRole>,
    @ocaml.doc("<p> Sets the branch patterns for automatic subdomain creation. </p>")
    autoSubDomainCreationPatterns: option<autoSubDomainCreationPatterns>,
    @ocaml.doc("<p> Describes the settings for the subdomain. </p>")
    subDomainSettings: subDomainSettings,
    @ocaml.doc("<p> Enables the automated creation of subdomains for branches. </p>")
    enableAutoSubDomain: option<enableAutoSubDomain>,
    @ocaml.doc("<p> The name of the domain. </p>") domainName: domainName,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the update domain association request. </p>")
  type response = {
    @ocaml.doc("<p> Describes a domain association, which associates a custom domain with an Amplify app.
        </p>")
    domainAssociation: domainAssociation,
  }
  @module("@aws-sdk/client-amplify") @new
  external new: request => t = "UpdateDomainAssociationCommand"
  let make = (
    ~subDomainSettings,
    ~domainName,
    ~appId,
    ~autoSubDomainIAMRole=?,
    ~autoSubDomainCreationPatterns=?,
    ~enableAutoSubDomain=?,
    (),
  ) =>
    new({
      autoSubDomainIAMRole: autoSubDomainIAMRole,
      autoSubDomainCreationPatterns: autoSubDomainCreationPatterns,
      subDomainSettings: subDomainSettings,
      enableAutoSubDomain: enableAutoSubDomain,
      domainName: domainName,
      appId: appId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApps = {
  type t
  @ocaml.doc("<p> The request structure for the list apps request. </p>")
  type request = {
    @ocaml.doc("<p> The maximum number of records to list in a single response. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p> A pagination token. If non-null, the pagination token is returned in a result. Pass
            its value in another request to retrieve more entries. </p>")
    nextToken: option<nextToken>,
  }
  @ocaml.doc("<p> The result structure for an Amplify app list request. </p>")
  type response = {
    @ocaml.doc("<p> A pagination token. Set to null to start listing apps from start. If non-null, the
            pagination token is returned in a result. Pass its value in here to list more projects.
        </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> A list of Amplify apps. </p>") apps: apps,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "ListAppsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJob = {
  type t
  @ocaml.doc("<p> The request structure for the get job request. </p>")
  type request = {
    @ocaml.doc("<p> The unique ID for the job. </p>") jobId: jobId,
    @ocaml.doc("<p> The branch name for the job. </p>") branchName: branchName,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  type response = {job: job}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "GetJobCommand"
  let make = (~jobId, ~branchName, ~appId, ()) =>
    new({jobId: jobId, branchName: branchName, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDomainAssociation = {
  type t
  @ocaml.doc("<p> The request structure for the get domain association request. </p>")
  type request = {
    @ocaml.doc("<p> The name of the domain. </p>") domainName: domainName,
    @ocaml.doc("<p> The unique id for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the get domain association request. </p>")
  type response = {
    @ocaml.doc("<p> Describes the structure of a domain association, which associates a custom domain
            with an Amplify app. </p>")
    domainAssociation: domainAssociation,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "GetDomainAssociationCommand"
  let make = (~domainName, ~appId, ()) => new({domainName: domainName, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDomainAssociation = {
  type t
  @ocaml.doc("<p> The request structure for the delete domain association request. </p>")
  type request = {
    @ocaml.doc("<p> The name of the domain. </p>") domainName: domainName,
    @ocaml.doc("<p> The unique id for an Amplify app. </p>") appId: appId,
  }
  type response = {domainAssociation: domainAssociation}
  @module("@aws-sdk/client-amplify") @new
  external new: request => t = "DeleteDomainAssociationCommand"
  let make = (~domainName, ~appId, ()) => new({domainName: domainName, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDomainAssociation = {
  type t
  @ocaml.doc("<p> The request structure for the create domain association request. </p>")
  type request = {
    @ocaml.doc("<p> The required AWS Identity and Access Management (IAM) service role for the Amazon
            Resource Name (ARN) for automatically creating subdomains. </p>")
    autoSubDomainIAMRole: option<autoSubDomainIAMRole>,
    @ocaml.doc("<p> Sets the branch patterns for automatic subdomain creation. </p>")
    autoSubDomainCreationPatterns: option<autoSubDomainCreationPatterns>,
    @ocaml.doc("<p> The setting for the subdomain. </p>") subDomainSettings: subDomainSettings,
    @ocaml.doc("<p> Enables the automated creation of subdomains for branches. </p>")
    enableAutoSubDomain: option<enableAutoSubDomain>,
    @ocaml.doc("<p> The domain name for the domain association. </p>") domainName: domainName,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the create domain association request. </p>")
  type response = {
    @ocaml.doc("<p> Describes the structure of a domain association, which associates a custom domain
            with an Amplify app. </p>")
    domainAssociation: domainAssociation,
  }
  @module("@aws-sdk/client-amplify") @new
  external new: request => t = "CreateDomainAssociationCommand"
  let make = (
    ~subDomainSettings,
    ~domainName,
    ~appId,
    ~autoSubDomainIAMRole=?,
    ~autoSubDomainCreationPatterns=?,
    ~enableAutoSubDomain=?,
    (),
  ) =>
    new({
      autoSubDomainIAMRole: autoSubDomainIAMRole,
      autoSubDomainCreationPatterns: autoSubDomainCreationPatterns,
      subDomainSettings: subDomainSettings,
      enableAutoSubDomain: enableAutoSubDomain,
      domainName: domainName,
      appId: appId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDomainAssociations = {
  type t
  @ocaml.doc("<p> The request structure for the list domain associations request. </p>")
  type request = {
    @ocaml.doc("<p> The maximum number of records to list in a single response. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p> A pagination token. Set to null to start listing apps from the start. If non-null, a
            pagination token is returned in a result. Pass its value in here to list more projects.
        </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> The unique ID for an Amplify app. </p>") appId: appId,
  }
  @ocaml.doc("<p> The result structure for the list domain association request. </p>")
  type response = {
    @ocaml.doc("<p> A pagination token. If non-null, a pagination token is returned in a result. Pass its
            value in another request to retrieve more entries. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> A list of domain associations. </p>") domainAssociations: domainAssociations,
  }
  @module("@aws-sdk/client-amplify") @new
  external new: request => t = "ListDomainAssociationsCommand"
  let make = (~appId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
