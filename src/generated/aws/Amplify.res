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
type ttl = string
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
type webhook = {
  updateTime: updateTime,
  createTime: createTime,
  description: description,
  branchName: branchName,
  webhookUrl: webhookUrl,
  webhookId: webhookId,
  webhookArn: webhookArn,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type subDomainSetting = {
  branchName: branchName,
  prefix: domainPrefix,
}
type screenshots = Js.Dict.t<thumbnailUrl>
type productionBranch = {
  branchName: option<branchName>,
  thumbnailUrl: option<thumbnailUrl>,
  status: option<status>,
  lastDeployTime: option<lastDeployTime>,
}
type jobSummary = {
  jobType: jobType,
  endTime: option<endTime>,
  status: jobStatus,
  startTime: startTime,
  commitTime: commitTime,
  commitMessage: commitMessage,
  commitId: commitId,
  jobId: jobId,
  jobArn: jobArn,
}
type fileUploadUrls = Js.Dict.t<uploadUrl>
type fileMap = Js.Dict.t<md5Hash>
type environmentVariables = Js.Dict.t<envValue>
type customRule = {
  condition: option<condition>,
  status: option<status>,
  target: target,
  source: source,
}
type customDomains = array<customDomain>
type backendEnvironment = {
  updateTime: updateTime,
  createTime: createTime,
  deploymentArtifacts: option<deploymentArtifacts>,
  stackName: option<stackName>,
  environmentName: environmentName,
  backendEnvironmentArn: backendEnvironmentArn,
}
type autoSubDomainCreationPatterns = array<autoSubDomainCreationPattern>
type autoBranchCreationPatterns = array<autoBranchCreationPattern>
type associatedResources = array<associatedResource>
type artifact = {
  artifactId: artifactId,
  artifactFileName: artifactFileName,
}
type webhooks = array<webhook>
type subDomainSettings = array<subDomainSetting>
type subDomain = {
  dnsRecord: dnsrecord,
  verified: verified,
  subDomainSetting: subDomainSetting,
}
type step = {
  context: option<context>,
  statusReason: option<statusReason>,
  screenshots: option<screenshots>,
  testConfigUrl: option<testConfigUrl>,
  testArtifactsUrl: option<testArtifactsUrl>,
  artifactsUrl: option<artifactsUrl>,
  logUrl: option<logUrl>,
  endTime: endTime,
  status: jobStatus,
  startTime: startTime,
  stepName: stepName,
}
type jobSummaries = array<jobSummary>
type customRules = array<customRule>
type branch = {
  backendEnvironmentArn: option<backendEnvironmentArn>,
  sourceBranch: option<branchName>,
  destinationBranch: option<branchName>,
  pullRequestEnvironmentName: option<pullRequestEnvironmentName>,
  enablePullRequestPreview: enablePullRequestPreview,
  associatedResources: option<associatedResources>,
  ttl: ttl,
  buildSpec: option<buildSpec>,
  basicAuthCredentials: option<basicAuthCredentials>,
  thumbnailUrl: option<thumbnailUrl>,
  enablePerformanceMode: option<enablePerformanceMode>,
  enableBasicAuth: enableBasicAuth,
  totalNumberOfJobs: totalNumberOfJobs,
  activeJobId: activeJobId,
  framework: framework,
  customDomains: customDomains,
  enableAutoBuild: enableAutoBuild,
  environmentVariables: environmentVariables,
  updateTime: updateTime,
  createTime: createTime,
  enableNotification: enableNotification,
  displayName: displayName,
  stage: stage,
  tags: option<tagMap>,
  description: description,
  branchName: branchName,
  branchArn: branchArn,
}
type backendEnvironments = array<backendEnvironment>
type autoBranchCreationConfig = {
  pullRequestEnvironmentName: option<pullRequestEnvironmentName>,
  enablePullRequestPreview: option<enablePullRequestPreview>,
  buildSpec: option<buildSpec>,
  enablePerformanceMode: option<enablePerformanceMode>,
  enableBasicAuth: option<enableBasicAuth>,
  basicAuthCredentials: option<basicAuthCredentials>,
  environmentVariables: option<environmentVariables>,
  enableAutoBuild: option<enableAutoBuild>,
  framework: option<framework>,
  stage: option<stage>,
}
type artifacts = array<artifact>
type subDomains = array<subDomain>
type steps = array<step>
type branches = array<branch>
type app = {
  autoBranchCreationConfig: option<autoBranchCreationConfig>,
  autoBranchCreationPatterns: option<autoBranchCreationPatterns>,
  enableAutoBranchCreation: option<enableAutoBranchCreation>,
  customHeaders: option<customHeaders>,
  buildSpec: option<buildSpec>,
  productionBranch: option<productionBranch>,
  customRules: option<customRules>,
  basicAuthCredentials: option<basicAuthCredentials>,
  enableBasicAuth: enableBasicAuth,
  enableBranchAutoDeletion: option<enableBranchAutoDeletion>,
  enableBranchAutoBuild: enableBranchAutoBuild,
  defaultDomain: defaultDomain,
  environmentVariables: environmentVariables,
  iamServiceRoleArn: option<serviceRoleArn>,
  updateTime: updateTime,
  createTime: createTime,
  platform: platform,
  repository: repository,
  description: description,
  tags: option<tagMap>,
  name: name,
  appArn: appArn,
  appId: appId,
}
type job = {
  steps: steps,
  summary: jobSummary,
}
type domainAssociation = {
  subDomains: subDomains,
  certificateVerificationDNSRecord: option<certificateVerificationDNSRecord>,
  statusReason: statusReason,
  domainStatus: domainStatus,
  autoSubDomainIAMRole: option<autoSubDomainIAMRole>,
  autoSubDomainCreationPatterns: option<autoSubDomainCreationPatterns>,
  enableAutoSubDomain: enableAutoSubDomain,
  domainName: domainName,
  domainAssociationArn: domainAssociationArn,
}
type apps = array<app>
type domainAssociations = array<domainAssociation>

module GetArtifactUrl = {
  type t
  type request = {artifactId: artifactId}
  type response = {
    artifactUrl: artifactUrl,
    artifactId: artifactId,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "GetArtifactUrlCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GenerateAccessLogs = {
  type t
  type request = {
    appId: appId,
    domainName: domainName,
    endTime: option<endTime>,
    startTime: option<startTime>,
  }
  type response = {logUrl: option<logUrl>}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "GenerateAccessLogsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWebhook = {
  type t
  type request = {
    description: option<description>,
    branchName: option<branchName>,
    webhookId: webhookId,
  }
  type response = {webhook: webhook}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "UpdateWebhookCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeyList,
    resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-amplify") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagMap,
    resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-amplify") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopJob = {
  type t
  type request = {
    jobId: jobId,
    branchName: branchName,
    appId: appId,
  }
  type response = {jobSummary: jobSummary}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "StopJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartJob = {
  type t
  type request = {
    commitTime: option<commitTime>,
    commitMessage: option<commitMessage>,
    commitId: option<commitId>,
    jobReason: option<jobReason>,
    jobType: jobType,
    jobId: option<jobId>,
    branchName: branchName,
    appId: appId,
  }
  type response = {jobSummary: jobSummary}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "StartJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDeployment = {
  type t
  type request = {
    sourceUrl: option<sourceUrl>,
    jobId: option<jobId>,
    branchName: branchName,
    appId: appId,
  }
  type response = {jobSummary: jobSummary}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "StartDeploymentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {resourceArn: resourceArn}
  type response = {tags: option<tagMap>}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWebhook = {
  type t
  type request = {webhookId: webhookId}
  type response = {webhook: webhook}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "GetWebhookCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBackendEnvironment = {
  type t
  type request = {
    environmentName: environmentName,
    appId: appId,
  }
  type response = {backendEnvironment: backendEnvironment}
  @module("@aws-sdk/client-amplify") @new
  external new: request => t = "GetBackendEnvironmentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWebhook = {
  type t
  type request = {webhookId: webhookId}
  type response = {webhook: webhook}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "DeleteWebhookCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteJob = {
  type t
  type request = {
    jobId: jobId,
    branchName: branchName,
    appId: appId,
  }
  type response = {jobSummary: jobSummary}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "DeleteJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBackendEnvironment = {
  type t
  type request = {
    environmentName: environmentName,
    appId: appId,
  }
  type response = {backendEnvironment: backendEnvironment}
  @module("@aws-sdk/client-amplify") @new
  external new: request => t = "DeleteBackendEnvironmentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWebhook = {
  type t
  type request = {
    description: option<description>,
    branchName: branchName,
    appId: appId,
  }
  type response = {webhook: webhook}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "CreateWebhookCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeployment = {
  type t
  type request = {
    fileMap: option<fileMap>,
    branchName: branchName,
    appId: appId,
  }
  type response = {
    zipUploadUrl: uploadUrl,
    fileUploadUrls: fileUploadUrls,
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "CreateDeploymentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBackendEnvironment = {
  type t
  type request = {
    deploymentArtifacts: option<deploymentArtifacts>,
    stackName: option<stackName>,
    environmentName: environmentName,
    appId: appId,
  }
  type response = {backendEnvironment: backendEnvironment}
  @module("@aws-sdk/client-amplify") @new
  external new: request => t = "CreateBackendEnvironmentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBranch = {
  type t
  type request = {
    backendEnvironmentArn: option<backendEnvironmentArn>,
    pullRequestEnvironmentName: option<pullRequestEnvironmentName>,
    enablePullRequestPreview: option<enablePullRequestPreview>,
    displayName: option<displayName>,
    ttl: option<ttl>,
    buildSpec: option<buildSpec>,
    enablePerformanceMode: option<enablePerformanceMode>,
    enableBasicAuth: option<enableBasicAuth>,
    basicAuthCredentials: option<basicAuthCredentials>,
    environmentVariables: option<environmentVariables>,
    enableAutoBuild: option<enableAutoBuild>,
    enableNotification: option<enableNotification>,
    stage: option<stage>,
    framework: option<framework>,
    description: option<description>,
    branchName: branchName,
    appId: appId,
  }
  type response = {branch: branch}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "UpdateBranchCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWebhooks = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    appId: appId,
  }
  type response = {
    nextToken: option<nextToken>,
    webhooks: webhooks,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "ListWebhooksCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobs = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    branchName: branchName,
    appId: appId,
  }
  type response = {
    nextToken: option<nextToken>,
    jobSummaries: jobSummaries,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "ListJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBackendEnvironments = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    environmentName: option<environmentName>,
    appId: appId,
  }
  type response = {
    nextToken: option<nextToken>,
    backendEnvironments: backendEnvironments,
  }
  @module("@aws-sdk/client-amplify") @new
  external new: request => t = "ListBackendEnvironmentsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListArtifacts = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    jobId: jobId,
    branchName: branchName,
    appId: appId,
  }
  type response = {
    nextToken: option<nextToken>,
    artifacts: artifacts,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "ListArtifactsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBranch = {
  type t
  type request = {
    branchName: branchName,
    appId: appId,
  }
  type response = {branch: branch}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "GetBranchCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBranch = {
  type t
  type request = {
    branchName: branchName,
    appId: appId,
  }
  type response = {branch: branch}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "DeleteBranchCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBranch = {
  type t
  type request = {
    backendEnvironmentArn: option<backendEnvironmentArn>,
    pullRequestEnvironmentName: option<pullRequestEnvironmentName>,
    enablePullRequestPreview: option<enablePullRequestPreview>,
    displayName: option<displayName>,
    ttl: option<ttl>,
    buildSpec: option<buildSpec>,
    tags: option<tagMap>,
    enablePerformanceMode: option<enablePerformanceMode>,
    enableBasicAuth: option<enableBasicAuth>,
    basicAuthCredentials: option<basicAuthCredentials>,
    environmentVariables: option<environmentVariables>,
    enableAutoBuild: option<enableAutoBuild>,
    enableNotification: option<enableNotification>,
    framework: option<framework>,
    stage: option<stage>,
    description: option<description>,
    branchName: branchName,
    appId: appId,
  }
  type response = {branch: branch}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "CreateBranchCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApp = {
  type t
  type request = {
    accessToken: option<accessToken>,
    oauthToken: option<oauthToken>,
    repository: option<repository>,
    autoBranchCreationConfig: option<autoBranchCreationConfig>,
    autoBranchCreationPatterns: option<autoBranchCreationPatterns>,
    enableAutoBranchCreation: option<enableAutoBranchCreation>,
    customHeaders: option<customHeaders>,
    buildSpec: option<buildSpec>,
    customRules: option<customRules>,
    basicAuthCredentials: option<basicAuthCredentials>,
    enableBasicAuth: option<enableBasicAuth>,
    enableBranchAutoDeletion: option<enableBranchAutoDeletion>,
    enableBranchAutoBuild: option<enableAutoBuild>,
    environmentVariables: option<environmentVariables>,
    iamServiceRoleArn: option<serviceRoleArn>,
    platform: option<platform>,
    description: option<description>,
    name: option<name>,
    appId: appId,
  }
  type response = {app: app}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "UpdateAppCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBranches = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    appId: appId,
  }
  type response = {
    nextToken: option<nextToken>,
    branches: branches,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "ListBranchesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApp = {
  type t
  type request = {appId: appId}
  type response = {app: app}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "GetAppCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteApp = {
  type t
  type request = {appId: appId}
  type response = {app: app}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "DeleteAppCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApp = {
  type t
  type request = {
    autoBranchCreationConfig: option<autoBranchCreationConfig>,
    autoBranchCreationPatterns: option<autoBranchCreationPatterns>,
    enableAutoBranchCreation: option<enableAutoBranchCreation>,
    customHeaders: option<customHeaders>,
    buildSpec: option<buildSpec>,
    tags: option<tagMap>,
    customRules: option<customRules>,
    basicAuthCredentials: option<basicAuthCredentials>,
    enableBasicAuth: option<enableBasicAuth>,
    enableBranchAutoDeletion: option<enableBranchAutoDeletion>,
    enableBranchAutoBuild: option<enableBranchAutoBuild>,
    environmentVariables: option<environmentVariables>,
    accessToken: option<accessToken>,
    oauthToken: option<oauthToken>,
    iamServiceRoleArn: option<serviceRoleArn>,
    platform: option<platform>,
    repository: option<repository>,
    description: option<description>,
    name: name,
  }
  type response = {app: app}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "CreateAppCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDomainAssociation = {
  type t
  type request = {
    autoSubDomainIAMRole: option<autoSubDomainIAMRole>,
    autoSubDomainCreationPatterns: option<autoSubDomainCreationPatterns>,
    subDomainSettings: subDomainSettings,
    enableAutoSubDomain: option<enableAutoSubDomain>,
    domainName: domainName,
    appId: appId,
  }
  type response = {domainAssociation: domainAssociation}
  @module("@aws-sdk/client-amplify") @new
  external new: request => t = "UpdateDomainAssociationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApps = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    apps: apps,
  }
  @module("@aws-sdk/client-amplify") @new external new: request => t = "ListAppsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJob = {
  type t
  type request = {
    jobId: jobId,
    branchName: branchName,
    appId: appId,
  }
  type response = {job: job}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "GetJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDomainAssociation = {
  type t
  type request = {
    domainName: domainName,
    appId: appId,
  }
  type response = {domainAssociation: domainAssociation}
  @module("@aws-sdk/client-amplify") @new external new: request => t = "GetDomainAssociationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDomainAssociation = {
  type t
  type request = {
    domainName: domainName,
    appId: appId,
  }
  type response = {domainAssociation: domainAssociation}
  @module("@aws-sdk/client-amplify") @new
  external new: request => t = "DeleteDomainAssociationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDomainAssociation = {
  type t
  type request = {
    autoSubDomainIAMRole: option<autoSubDomainIAMRole>,
    autoSubDomainCreationPatterns: option<autoSubDomainCreationPatterns>,
    subDomainSettings: subDomainSettings,
    enableAutoSubDomain: option<enableAutoSubDomain>,
    domainName: domainName,
    appId: appId,
  }
  type response = {domainAssociation: domainAssociation}
  @module("@aws-sdk/client-amplify") @new
  external new: request => t = "CreateDomainAssociationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDomainAssociations = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    appId: appId,
  }
  type response = {
    nextToken: option<nextToken>,
    domainAssociations: domainAssociations,
  }
  @module("@aws-sdk/client-amplify") @new
  external new: request => t = "ListDomainAssociationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
