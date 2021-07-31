type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type webhookUrl = string
type webhookId = string
type webhookArn = string
type verified = bool;
type uploadUrl = string
type updateTime = Js.Date.t;
type totalNumberOfJobs = string
type thumbnailUrl = string
type thumbnailName = string
type testConfigUrl = string
type testArtifactsUrl = string
type target = string
type tagValue = string
type tagKey = string
type tTL = string
type stepName = string
type statusReason = string
type status = string
type startTime = Js.Date.t;
type stage = [@as("PULL_REQUEST") #PULL_REQUEST | @as("EXPERIMENTAL") #EXPERIMENTAL | @as("DEVELOPMENT") #DEVELOPMENT | @as("BETA") #BETA | @as("PRODUCTION") #PRODUCTION]
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
type maxResults = int;
type mD5Hash = string
type logUrl = string
type lastDeployTime = Js.Date.t;
type jobType = [@as("WEB_HOOK") #WEB_HOOK | @as("MANUAL") #MANUAL | @as("RETRY") #RETRY | @as("RELEASE") #RELEASE]
type jobStatus = [@as("CANCELLED") #CANCELLED | @as("CANCELLING") #CANCELLING | @as("SUCCEED") #SUCCEED | @as("FAILED") #FAILED | @as("RUNNING") #RUNNING | @as("PROVISIONING") #PROVISIONING | @as("PENDING") #PENDING]
type jobReason = string
type jobId = string
type jobArn = string
type framework = string
type fileName = string
type errorMessage = string
type environmentName = string
type envValue = string
type envKey = string
type endTime = Js.Date.t;
type enablePullRequestPreview = bool;
type enablePerformanceMode = bool;
type enableNotification = bool;
type enableBranchAutoDeletion = bool;
type enableBranchAutoBuild = bool;
type enableBasicAuth = bool;
type enableAutoSubDomain = bool;
type enableAutoBuild = bool;
type enableAutoBranchCreation = bool;
type domainStatus = [@as("UPDATING") #UPDATING | @as("REQUESTING_CERTIFICATE") #REQUESTING_CERTIFICATE | @as("CREATING") #CREATING | @as("FAILED") #FAILED | @as("PENDING_DEPLOYMENT") #PENDING_DEPLOYMENT | @as("AVAILABLE") #AVAILABLE | @as("IN_PROGRESS") #IN_PROGRESS | @as("PENDING_VERIFICATION") #PENDING_VERIFICATION]
type domainPrefix = string
type domainName = string
type domainAssociationArn = string
type displayName = string
type description = string
type deploymentArtifacts = string
type defaultDomain = string
type dNSRecord = string
type customHeaders = string
type customDomain = string
type createTime = Js.Date.t;
type context = string
type condition = string
type commitTime = Js.Date.t;
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
@as("updateTime") updateTime: option<updateTime>,
@as("createTime") createTime: option<createTime>,
@as("description") description: option<description>,
@as("branchName") branchName: option<branchName>,
@as("webhookUrl") webhookUrl: option<webhookUrl>,
@as("webhookId") webhookId: option<webhookId>,
@as("webhookArn") webhookArn: option<webhookArn>
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type subDomainSetting = {
@as("branchName") branchName: option<branchName>,
@as("prefix") prefix: option<domainPrefix>
}
type screenshots = Js.Dict.t< thumbnailUrl>
type productionBranch = {
@as("branchName") branchName: branchName,
@as("thumbnailUrl") thumbnailUrl: thumbnailUrl,
@as("status") status: status,
@as("lastDeployTime") lastDeployTime: lastDeployTime
}
type jobSummary = {
@as("jobType") jobType: option<jobType>,
@as("endTime") endTime: endTime,
@as("status") status: option<jobStatus>,
@as("startTime") startTime: option<startTime>,
@as("commitTime") commitTime: option<commitTime>,
@as("commitMessage") commitMessage: option<commitMessage>,
@as("commitId") commitId: option<commitId>,
@as("jobId") jobId: option<jobId>,
@as("jobArn") jobArn: option<jobArn>
}
type fileUploadUrls = Js.Dict.t< uploadUrl>
type fileMap = Js.Dict.t< mD5Hash>
type environmentVariables = Js.Dict.t< envValue>
type customRule = {
@as("condition") condition: condition,
@as("status") status: status,
@as("target") target: option<target>,
@as("source") source: option<source>
}
type customDomains = array<customDomain>
type backendEnvironment = {
@as("updateTime") updateTime: option<updateTime>,
@as("createTime") createTime: option<createTime>,
@as("deploymentArtifacts") deploymentArtifacts: deploymentArtifacts,
@as("stackName") stackName: stackName,
@as("environmentName") environmentName: option<environmentName>,
@as("backendEnvironmentArn") backendEnvironmentArn: option<backendEnvironmentArn>
}
type autoSubDomainCreationPatterns = array<autoSubDomainCreationPattern>
type autoBranchCreationPatterns = array<autoBranchCreationPattern>
type associatedResources = array<associatedResource>
type artifact = {
@as("artifactId") artifactId: option<artifactId>,
@as("artifactFileName") artifactFileName: option<artifactFileName>
}
type webhooks = array<webhook>
type subDomainSettings = array<subDomainSetting>
type subDomain = {
@as("dnsRecord") dnsRecord: option<dNSRecord>,
@as("verified") verified: option<verified>,
@as("subDomainSetting") subDomainSetting: option<subDomainSetting>
}
type step = {
@as("context") context: context,
@as("statusReason") statusReason: statusReason,
@as("screenshots") screenshots: screenshots,
@as("testConfigUrl") testConfigUrl: testConfigUrl,
@as("testArtifactsUrl") testArtifactsUrl: testArtifactsUrl,
@as("artifactsUrl") artifactsUrl: artifactsUrl,
@as("logUrl") logUrl: logUrl,
@as("endTime") endTime: option<endTime>,
@as("status") status: option<jobStatus>,
@as("startTime") startTime: option<startTime>,
@as("stepName") stepName: option<stepName>
}
type jobSummaries = array<jobSummary>
type customRules = array<customRule>
type branch = {
@as("backendEnvironmentArn") backendEnvironmentArn: backendEnvironmentArn,
@as("sourceBranch") sourceBranch: branchName,
@as("destinationBranch") destinationBranch: branchName,
@as("pullRequestEnvironmentName") pullRequestEnvironmentName: pullRequestEnvironmentName,
@as("enablePullRequestPreview") enablePullRequestPreview: option<enablePullRequestPreview>,
@as("associatedResources") associatedResources: associatedResources,
@as("ttl") ttl: option<tTL>,
@as("buildSpec") buildSpec: buildSpec,
@as("basicAuthCredentials") basicAuthCredentials: basicAuthCredentials,
@as("thumbnailUrl") thumbnailUrl: thumbnailUrl,
@as("enablePerformanceMode") enablePerformanceMode: enablePerformanceMode,
@as("enableBasicAuth") enableBasicAuth: option<enableBasicAuth>,
@as("totalNumberOfJobs") totalNumberOfJobs: option<totalNumberOfJobs>,
@as("activeJobId") activeJobId: option<activeJobId>,
@as("framework") framework: option<framework>,
@as("customDomains") customDomains: option<customDomains>,
@as("enableAutoBuild") enableAutoBuild: option<enableAutoBuild>,
@as("environmentVariables") environmentVariables: option<environmentVariables>,
@as("updateTime") updateTime: option<updateTime>,
@as("createTime") createTime: option<createTime>,
@as("enableNotification") enableNotification: option<enableNotification>,
@as("displayName") displayName: option<displayName>,
@as("stage") stage: option<stage>,
@as("tags") tags: tagMap,
@as("description") description: option<description>,
@as("branchName") branchName: option<branchName>,
@as("branchArn") branchArn: option<branchArn>
}
type backendEnvironments = array<backendEnvironment>
type autoBranchCreationConfig = {
@as("pullRequestEnvironmentName") pullRequestEnvironmentName: pullRequestEnvironmentName,
@as("enablePullRequestPreview") enablePullRequestPreview: enablePullRequestPreview,
@as("buildSpec") buildSpec: buildSpec,
@as("enablePerformanceMode") enablePerformanceMode: enablePerformanceMode,
@as("enableBasicAuth") enableBasicAuth: enableBasicAuth,
@as("basicAuthCredentials") basicAuthCredentials: basicAuthCredentials,
@as("environmentVariables") environmentVariables: environmentVariables,
@as("enableAutoBuild") enableAutoBuild: enableAutoBuild,
@as("framework") framework: framework,
@as("stage") stage: stage
}
type artifacts = array<artifact>
type subDomains = array<subDomain>
type steps = array<step>
type branches = array<branch>
type app = {
@as("autoBranchCreationConfig") autoBranchCreationConfig: autoBranchCreationConfig,
@as("autoBranchCreationPatterns") autoBranchCreationPatterns: autoBranchCreationPatterns,
@as("enableAutoBranchCreation") enableAutoBranchCreation: enableAutoBranchCreation,
@as("customHeaders") customHeaders: customHeaders,
@as("buildSpec") buildSpec: buildSpec,
@as("productionBranch") productionBranch: productionBranch,
@as("customRules") customRules: customRules,
@as("basicAuthCredentials") basicAuthCredentials: basicAuthCredentials,
@as("enableBasicAuth") enableBasicAuth: option<enableBasicAuth>,
@as("enableBranchAutoDeletion") enableBranchAutoDeletion: enableBranchAutoDeletion,
@as("enableBranchAutoBuild") enableBranchAutoBuild: option<enableBranchAutoBuild>,
@as("defaultDomain") defaultDomain: option<defaultDomain>,
@as("environmentVariables") environmentVariables: option<environmentVariables>,
@as("iamServiceRoleArn") iamServiceRoleArn: serviceRoleArn,
@as("updateTime") updateTime: option<updateTime>,
@as("createTime") createTime: option<createTime>,
@as("platform") platform: option<platform>,
@as("repository") repository: option<repository>,
@as("description") description: option<description>,
@as("tags") tags: tagMap,
@as("name") name: option<name>,
@as("appArn") appArn: option<appArn>,
@as("appId") appId: option<appId>
}
type job = {
@as("steps") steps: option<steps>,
@as("summary") summary: option<jobSummary>
}
type domainAssociation = {
@as("subDomains") subDomains: option<subDomains>,
@as("certificateVerificationDNSRecord") certificateVerificationDNSRecord: certificateVerificationDNSRecord,
@as("statusReason") statusReason: option<statusReason>,
@as("domainStatus") domainStatus: option<domainStatus>,
@as("autoSubDomainIAMRole") autoSubDomainIAMRole: autoSubDomainIAMRole,
@as("autoSubDomainCreationPatterns") autoSubDomainCreationPatterns: autoSubDomainCreationPatterns,
@as("enableAutoSubDomain") enableAutoSubDomain: option<enableAutoSubDomain>,
@as("domainName") domainName: option<domainName>,
@as("domainAssociationArn") domainAssociationArn: option<domainAssociationArn>
}
type apps = array<app>
type domainAssociations = array<domainAssociation>
type clientType;
@module("@aws-sdk/client-amplify") @new external createClient: unit => clientType = "AmplifyClient";
module GetArtifactUrl = {
  type t;
  type request = {
@as("artifactId") artifactId: option<artifactId>
}
  type response = {
@as("artifactUrl") artifactUrl: option<artifactUrl>,
@as("artifactId") artifactId: option<artifactId>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "GetArtifactUrlCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GenerateAccessLogs = {
  type t;
  type request = {
@as("appId") appId: option<appId>,
@as("domainName") domainName: option<domainName>,
@as("endTime") endTime: endTime,
@as("startTime") startTime: startTime
}
  type response = {
@as("logUrl") logUrl: logUrl
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "GenerateAccessLogsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateWebhook = {
  type t;
  type request = {
@as("description") description: description,
@as("branchName") branchName: branchName,
@as("webhookId") webhookId: option<webhookId>
}
  type response = {
@as("webhook") webhook: option<webhook>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "UpdateWebhookCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopJob = {
  type t;
  type request = {
@as("jobId") jobId: option<jobId>,
@as("branchName") branchName: option<branchName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("jobSummary") jobSummary: option<jobSummary>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "StopJobCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartJob = {
  type t;
  type request = {
@as("commitTime") commitTime: commitTime,
@as("commitMessage") commitMessage: commitMessage,
@as("commitId") commitId: commitId,
@as("jobReason") jobReason: jobReason,
@as("jobType") jobType: option<jobType>,
@as("jobId") jobId: jobId,
@as("branchName") branchName: option<branchName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("jobSummary") jobSummary: option<jobSummary>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "StartJobCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartDeployment = {
  type t;
  type request = {
@as("sourceUrl") sourceUrl: sourceUrl,
@as("jobId") jobId: jobId,
@as("branchName") branchName: option<branchName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("jobSummary") jobSummary: option<jobSummary>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "StartDeploymentCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetWebhook = {
  type t;
  type request = {
@as("webhookId") webhookId: option<webhookId>
}
  type response = {
@as("webhook") webhook: option<webhook>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "GetWebhookCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBackendEnvironment = {
  type t;
  type request = {
@as("environmentName") environmentName: option<environmentName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("backendEnvironment") backendEnvironment: option<backendEnvironment>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "GetBackendEnvironmentCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteWebhook = {
  type t;
  type request = {
@as("webhookId") webhookId: option<webhookId>
}
  type response = {
@as("webhook") webhook: option<webhook>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "DeleteWebhookCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteJob = {
  type t;
  type request = {
@as("jobId") jobId: option<jobId>,
@as("branchName") branchName: option<branchName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("jobSummary") jobSummary: option<jobSummary>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "DeleteJobCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBackendEnvironment = {
  type t;
  type request = {
@as("environmentName") environmentName: option<environmentName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("backendEnvironment") backendEnvironment: option<backendEnvironment>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "DeleteBackendEnvironmentCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateWebhook = {
  type t;
  type request = {
@as("description") description: description,
@as("branchName") branchName: option<branchName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("webhook") webhook: option<webhook>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "CreateWebhookCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDeployment = {
  type t;
  type request = {
@as("fileMap") fileMap: fileMap,
@as("branchName") branchName: option<branchName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("zipUploadUrl") zipUploadUrl: option<uploadUrl>,
@as("fileUploadUrls") fileUploadUrls: option<fileUploadUrls>,
@as("jobId") jobId: jobId
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "CreateDeploymentCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBackendEnvironment = {
  type t;
  type request = {
@as("deploymentArtifacts") deploymentArtifacts: deploymentArtifacts,
@as("stackName") stackName: stackName,
@as("environmentName") environmentName: option<environmentName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("backendEnvironment") backendEnvironment: option<backendEnvironment>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "CreateBackendEnvironmentCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBranch = {
  type t;
  type request = {
@as("backendEnvironmentArn") backendEnvironmentArn: backendEnvironmentArn,
@as("pullRequestEnvironmentName") pullRequestEnvironmentName: pullRequestEnvironmentName,
@as("enablePullRequestPreview") enablePullRequestPreview: enablePullRequestPreview,
@as("displayName") displayName: displayName,
@as("ttl") ttl: tTL,
@as("buildSpec") buildSpec: buildSpec,
@as("enablePerformanceMode") enablePerformanceMode: enablePerformanceMode,
@as("enableBasicAuth") enableBasicAuth: enableBasicAuth,
@as("basicAuthCredentials") basicAuthCredentials: basicAuthCredentials,
@as("environmentVariables") environmentVariables: environmentVariables,
@as("enableAutoBuild") enableAutoBuild: enableAutoBuild,
@as("enableNotification") enableNotification: enableNotification,
@as("stage") stage: stage,
@as("framework") framework: framework,
@as("description") description: description,
@as("branchName") branchName: option<branchName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("branch") branch: option<branch>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "UpdateBranchCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWebhooks = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("appId") appId: option<appId>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("webhooks") webhooks: option<webhooks>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "ListWebhooksCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJobs = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("branchName") branchName: option<branchName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("jobSummaries") jobSummaries: option<jobSummaries>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "ListJobsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBackendEnvironments = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("environmentName") environmentName: environmentName,
@as("appId") appId: option<appId>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("backendEnvironments") backendEnvironments: option<backendEnvironments>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "ListBackendEnvironmentsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListArtifacts = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("jobId") jobId: option<jobId>,
@as("branchName") branchName: option<branchName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("artifacts") artifacts: option<artifacts>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "ListArtifactsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBranch = {
  type t;
  type request = {
@as("branchName") branchName: option<branchName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("branch") branch: option<branch>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "GetBranchCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBranch = {
  type t;
  type request = {
@as("branchName") branchName: option<branchName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("branch") branch: option<branch>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "DeleteBranchCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBranch = {
  type t;
  type request = {
@as("backendEnvironmentArn") backendEnvironmentArn: backendEnvironmentArn,
@as("pullRequestEnvironmentName") pullRequestEnvironmentName: pullRequestEnvironmentName,
@as("enablePullRequestPreview") enablePullRequestPreview: enablePullRequestPreview,
@as("displayName") displayName: displayName,
@as("ttl") ttl: tTL,
@as("buildSpec") buildSpec: buildSpec,
@as("tags") tags: tagMap,
@as("enablePerformanceMode") enablePerformanceMode: enablePerformanceMode,
@as("enableBasicAuth") enableBasicAuth: enableBasicAuth,
@as("basicAuthCredentials") basicAuthCredentials: basicAuthCredentials,
@as("environmentVariables") environmentVariables: environmentVariables,
@as("enableAutoBuild") enableAutoBuild: enableAutoBuild,
@as("enableNotification") enableNotification: enableNotification,
@as("framework") framework: framework,
@as("stage") stage: stage,
@as("description") description: description,
@as("branchName") branchName: option<branchName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("branch") branch: option<branch>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "CreateBranchCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApp = {
  type t;
  type request = {
@as("accessToken") accessToken: accessToken,
@as("oauthToken") oauthToken: oauthToken,
@as("repository") repository: repository,
@as("autoBranchCreationConfig") autoBranchCreationConfig: autoBranchCreationConfig,
@as("autoBranchCreationPatterns") autoBranchCreationPatterns: autoBranchCreationPatterns,
@as("enableAutoBranchCreation") enableAutoBranchCreation: enableAutoBranchCreation,
@as("customHeaders") customHeaders: customHeaders,
@as("buildSpec") buildSpec: buildSpec,
@as("customRules") customRules: customRules,
@as("basicAuthCredentials") basicAuthCredentials: basicAuthCredentials,
@as("enableBasicAuth") enableBasicAuth: enableBasicAuth,
@as("enableBranchAutoDeletion") enableBranchAutoDeletion: enableBranchAutoDeletion,
@as("enableBranchAutoBuild") enableBranchAutoBuild: enableAutoBuild,
@as("environmentVariables") environmentVariables: environmentVariables,
@as("iamServiceRoleArn") iamServiceRoleArn: serviceRoleArn,
@as("platform") platform: platform,
@as("description") description: description,
@as("name") name: name,
@as("appId") appId: option<appId>
}
  type response = {
@as("app") app: option<app>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "UpdateAppCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBranches = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("appId") appId: option<appId>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("branches") branches: option<branches>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "ListBranchesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApp = {
  type t;
  type request = {
@as("appId") appId: option<appId>
}
  type response = {
@as("app") app: option<app>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "GetAppCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApp = {
  type t;
  type request = {
@as("appId") appId: option<appId>
}
  type response = {
@as("app") app: option<app>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "DeleteAppCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApp = {
  type t;
  type request = {
@as("autoBranchCreationConfig") autoBranchCreationConfig: autoBranchCreationConfig,
@as("autoBranchCreationPatterns") autoBranchCreationPatterns: autoBranchCreationPatterns,
@as("enableAutoBranchCreation") enableAutoBranchCreation: enableAutoBranchCreation,
@as("customHeaders") customHeaders: customHeaders,
@as("buildSpec") buildSpec: buildSpec,
@as("tags") tags: tagMap,
@as("customRules") customRules: customRules,
@as("basicAuthCredentials") basicAuthCredentials: basicAuthCredentials,
@as("enableBasicAuth") enableBasicAuth: enableBasicAuth,
@as("enableBranchAutoDeletion") enableBranchAutoDeletion: enableBranchAutoDeletion,
@as("enableBranchAutoBuild") enableBranchAutoBuild: enableBranchAutoBuild,
@as("environmentVariables") environmentVariables: environmentVariables,
@as("accessToken") accessToken: accessToken,
@as("oauthToken") oauthToken: oauthToken,
@as("iamServiceRoleArn") iamServiceRoleArn: serviceRoleArn,
@as("platform") platform: platform,
@as("repository") repository: repository,
@as("description") description: description,
@as("name") name: option<name>
}
  type response = {
@as("app") app: option<app>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "CreateAppCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDomainAssociation = {
  type t;
  type request = {
@as("autoSubDomainIAMRole") autoSubDomainIAMRole: autoSubDomainIAMRole,
@as("autoSubDomainCreationPatterns") autoSubDomainCreationPatterns: autoSubDomainCreationPatterns,
@as("subDomainSettings") subDomainSettings: option<subDomainSettings>,
@as("enableAutoSubDomain") enableAutoSubDomain: enableAutoSubDomain,
@as("domainName") domainName: option<domainName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("domainAssociation") domainAssociation: option<domainAssociation>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "UpdateDomainAssociationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApps = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("apps") apps: option<apps>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "ListAppsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJob = {
  type t;
  type request = {
@as("jobId") jobId: option<jobId>,
@as("branchName") branchName: option<branchName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("job") job: option<job>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "GetJobCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDomainAssociation = {
  type t;
  type request = {
@as("domainName") domainName: option<domainName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("domainAssociation") domainAssociation: option<domainAssociation>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "GetDomainAssociationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDomainAssociation = {
  type t;
  type request = {
@as("domainName") domainName: option<domainName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("domainAssociation") domainAssociation: option<domainAssociation>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "DeleteDomainAssociationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDomainAssociation = {
  type t;
  type request = {
@as("autoSubDomainIAMRole") autoSubDomainIAMRole: autoSubDomainIAMRole,
@as("autoSubDomainCreationPatterns") autoSubDomainCreationPatterns: autoSubDomainCreationPatterns,
@as("subDomainSettings") subDomainSettings: option<subDomainSettings>,
@as("enableAutoSubDomain") enableAutoSubDomain: enableAutoSubDomain,
@as("domainName") domainName: option<domainName>,
@as("appId") appId: option<appId>
}
  type response = {
@as("domainAssociation") domainAssociation: option<domainAssociation>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "CreateDomainAssociationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDomainAssociations = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("appId") appId: option<appId>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("domainAssociations") domainAssociations: option<domainAssociations>
}
  @module("@aws-sdk/client-amplify") @new external new_: (Js.Promise.t<request>) => t = "ListDomainAssociationsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}
