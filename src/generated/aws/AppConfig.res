type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type boolean_ = bool
type timestamp_ = Js.Date.t;
type long = float
type version = string
type validatorType = [@as("LAMBDA") #LAMBDA | @as("JSON_SCHEMA") #JSONSCHEMA]
type uri = string
type triggeredBy = [@as("INTERNAL_ERROR") #INTERNALERROR | @as("CLOUDWATCH_ALARM") #CLOUDWATCHALARM | @as("APPCONFIG") #APPCONFIG | @as("USER") #USER]
type tagValue = string
type tagKey = string
type stringWithLengthBetween1And64 = string
type stringWithLengthBetween1And255 = string
type stringWithLengthBetween0And32768 = string
type string_ = string
type roleArn = string
type replicateTo = [@as("SSM_DOCUMENT") #SSMDOCUMENT | @as("NONE") #NONE]
type percentage = float
type nextToken = string
type name = string
type minutesBetween0And24Hours = int
type maxResults = int
type iso8601DateTime = Js.Date.t;
type integer_ = int
type id = string
type growthType = [@as("EXPONENTIAL") #EXPONENTIAL | @as("LINEAR") #LINEAR]
type growthFactor = float
type float_ = float
type environmentState = [@as("ROLLED_BACK") #ROLLEDBACK | @as("ROLLING_BACK") #ROLLINGBACK | @as("DEPLOYING") #DEPLOYING | @as("READY_FOR_DEPLOYMENT") #READYFORDEPLOYMENT]
type description = string
type deploymentStrategyId = string
type deploymentState = [@as("ROLLED_BACK") #ROLLEDBACK | @as("ROLLING_BACK") #ROLLINGBACK | @as("COMPLETE") #COMPLETE | @as("DEPLOYING") #DEPLOYING | @as("VALIDATING") #VALIDATING | @as("BAKING") #BAKING]
type deploymentEventType = [@as("DEPLOYMENT_COMPLETED") #DEPLOYMENTCOMPLETED | @as("DEPLOYMENT_STARTED") #DEPLOYMENTSTARTED | @as("BAKE_TIME_STARTED") #BAKETIMESTARTED | @as("ROLLBACK_COMPLETED") #ROLLBACKCOMPLETED | @as("ROLLBACK_STARTED") #ROLLBACKSTARTED | @as("PERCENTAGE_UPDATED") #PERCENTAGEUPDATED]
type bytesMeasure = [@as("KILOBYTES") #KILOBYTES]
type blob = NodeJs.Buffer.t
type arn = string
type validatorTypeList = array<validatorType>
type validator = {
@as("Content") content: stringWithLengthBetween0And32768,
@as("Type") type_: validatorType
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type monitor = {
@as("AlarmRoleArn") alarmRoleArn: option<roleArn>,
@as("AlarmArn") alarmArn: option<arn>
}
type hostedConfigurationVersionSummary = {
@as("ContentType") contentType: option<stringWithLengthBetween1And255>,
@as("Description") description: option<description>,
@as("VersionNumber") versionNumber: option<integer_>,
@as("ConfigurationProfileId") configurationProfileId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
type deploymentSummary = {
@as("CompletedAt") completedAt: option<iso8601DateTime>,
@as("StartedAt") startedAt: option<iso8601DateTime>,
@as("PercentageComplete") percentageComplete: option<percentage>,
@as("State") state: option<deploymentState>,
@as("FinalBakeTimeInMinutes") finalBakeTimeInMinutes: option<minutesBetween0And24Hours>,
@as("GrowthFactor") growthFactor: option<percentage>,
@as("GrowthType") growthType: option<growthType>,
@as("DeploymentDurationInMinutes") deploymentDurationInMinutes: option<minutesBetween0And24Hours>,
@as("ConfigurationVersion") configurationVersion: option<version>,
@as("ConfigurationName") configurationName: option<name>,
@as("DeploymentNumber") deploymentNumber: option<integer_>
}
type deploymentStrategy = {
@as("ReplicateTo") replicateTo: option<replicateTo>,
@as("FinalBakeTimeInMinutes") finalBakeTimeInMinutes: option<minutesBetween0And24Hours>,
@as("GrowthFactor") growthFactor: option<percentage>,
@as("GrowthType") growthType: option<growthType>,
@as("DeploymentDurationInMinutes") deploymentDurationInMinutes: option<minutesBetween0And24Hours>,
@as("Description") description: option<description>,
@as("Name") name: option<name>,
@as("Id") id: option<id>
}
type deploymentEvent = {
@as("OccurredAt") occurredAt: option<iso8601DateTime>,
@as("Description") description: option<description>,
@as("TriggeredBy") triggeredBy: option<triggeredBy>,
@as("EventType") eventType: option<deploymentEventType>
}
type application = {
@as("Description") description: option<description>,
@as("Name") name: option<name>,
@as("Id") id: option<id>
}
type validatorList = array<validator>
type monitorList = array<monitor>
type hostedConfigurationVersionSummaryList = array<hostedConfigurationVersionSummary>
type deploymentStrategyList = array<deploymentStrategy>
type deploymentList = array<deploymentSummary>
type deploymentEvents = array<deploymentEvent>
type configurationProfileSummary = {
@as("ValidatorTypes") validatorTypes: option<validatorTypeList>,
@as("LocationUri") locationUri: option<uri>,
@as("Name") name: option<name>,
@as("Id") id: option<id>,
@as("ApplicationId") applicationId: option<id>
}
type applicationList = array<application>
type environment = {
@as("Monitors") monitors: option<monitorList>,
@as("State") state: option<environmentState>,
@as("Description") description: option<description>,
@as("Name") name: option<name>,
@as("Id") id: option<id>,
@as("ApplicationId") applicationId: option<id>
}
type configurationProfileSummaryList = array<configurationProfileSummary>
type environmentList = array<environment>
type awsServiceClient;
@module("@aws-sdk/client-appconfig") @new external createClient: unit => awsServiceClient = "AppConfigClient";
module ValidateConfiguration = {
  type t;
  type request = {
@as("ConfigurationVersion") configurationVersion: version,
@as("ConfigurationProfileId") configurationProfileId: id,
@as("ApplicationId") applicationId: id
}
  
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "ValidateConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateDeploymentStrategy = {
  type t;
  type request = {
@as("GrowthType") growthType: option<growthType>,
@as("GrowthFactor") growthFactor: option<growthFactor>,
@as("FinalBakeTimeInMinutes") finalBakeTimeInMinutes: option<minutesBetween0And24Hours>,
@as("DeploymentDurationInMinutes") deploymentDurationInMinutes: option<minutesBetween0And24Hours>,
@as("Description") description: option<description>,
@as("DeploymentStrategyId") deploymentStrategyId: deploymentStrategyId
}
  type response = deploymentStrategy;
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "UpdateDeploymentStrategyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApplication = {
  type t;
  type request = {
@as("Description") description: option<description>,
@as("Name") name: option<name>,
@as("ApplicationId") applicationId: id
}
  type response = application;
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "UpdateApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetHostedConfigurationVersion = {
  type t;
  type request = {
@as("VersionNumber") versionNumber: integer_,
@as("ConfigurationProfileId") configurationProfileId: id,
@as("ApplicationId") applicationId: id
}
  type response = {
@as("ContentType") contentType: option<stringWithLengthBetween1And255>,
@as("Content") content: option<blob>,
@as("Description") description: option<description>,
@as("VersionNumber") versionNumber: option<integer_>,
@as("ConfigurationProfileId") configurationProfileId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "GetHostedConfigurationVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDeploymentStrategy = {
  type t;
  type request = {
@as("DeploymentStrategyId") deploymentStrategyId: deploymentStrategyId
}
  type response = deploymentStrategy;
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "GetDeploymentStrategyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetConfiguration = {
  type t;
  type request = {
@as("ClientConfigurationVersion") clientConfigurationVersion: option<version>,
@as("ClientId") clientId: stringWithLengthBetween1And64,
@as("Configuration") configuration: stringWithLengthBetween1And64,
@as("Environment") environment: stringWithLengthBetween1And64,
@as("Application") application: stringWithLengthBetween1And64
}
  type response = {
@as("ContentType") contentType: option<string_>,
@as("ConfigurationVersion") configurationVersion: option<version>,
@as("Content") content: option<blob>
}
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "GetConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetApplication = {
  type t;
  type request = {
@as("ApplicationId") applicationId: id
}
  type response = application;
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "GetApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteHostedConfigurationVersion = {
  type t;
  type request = {
@as("VersionNumber") versionNumber: integer_,
@as("ConfigurationProfileId") configurationProfileId: id,
@as("ApplicationId") applicationId: id
}
  
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "DeleteHostedConfigurationVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteEnvironment = {
  type t;
  type request = {
@as("EnvironmentId") environmentId: id,
@as("ApplicationId") applicationId: id
}
  
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "DeleteEnvironmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteDeploymentStrategy = {
  type t;
  type request = {
@as("DeploymentStrategyId") deploymentStrategyId: deploymentStrategyId
}
  
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "DeleteDeploymentStrategyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteConfigurationProfile = {
  type t;
  type request = {
@as("ConfigurationProfileId") configurationProfileId: id,
@as("ApplicationId") applicationId: id
}
  
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "DeleteConfigurationProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteApplication = {
  type t;
  type request = {
@as("ApplicationId") applicationId: id
}
  
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "DeleteApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CreateHostedConfigurationVersion = {
  type t;
  type request = {
@as("LatestVersionNumber") latestVersionNumber: option<integer_>,
@as("ContentType") contentType: stringWithLengthBetween1And255,
@as("Content") content: blob,
@as("Description") description: option<description>,
@as("ConfigurationProfileId") configurationProfileId: id,
@as("ApplicationId") applicationId: id
}
  type response = {
@as("ContentType") contentType: option<stringWithLengthBetween1And255>,
@as("Content") content: option<blob>,
@as("Description") description: option<description>,
@as("VersionNumber") versionNumber: option<integer_>,
@as("ConfigurationProfileId") configurationProfileId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "CreateHostedConfigurationVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
@as("ResourceArn") resourceArn: arn
}
  
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("ResourceArn") resourceArn: arn
}
  
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: arn
}
  type response = {
@as("Tags") tags: option<tagMap>
}
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDeploymentStrategy = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("ReplicateTo") replicateTo: replicateTo,
@as("GrowthType") growthType: option<growthType>,
@as("GrowthFactor") growthFactor: growthFactor,
@as("FinalBakeTimeInMinutes") finalBakeTimeInMinutes: option<minutesBetween0And24Hours>,
@as("DeploymentDurationInMinutes") deploymentDurationInMinutes: minutesBetween0And24Hours,
@as("Description") description: option<description>,
@as("Name") name: name
}
  type response = deploymentStrategy;
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "CreateDeploymentStrategyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateApplication = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("Description") description: option<description>,
@as("Name") name: name
}
  type response = application;
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "CreateApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateEnvironment = {
  type t;
  type request = {
@as("Monitors") monitors: option<monitorList>,
@as("Description") description: option<description>,
@as("Name") name: option<name>,
@as("EnvironmentId") environmentId: id,
@as("ApplicationId") applicationId: id
}
  type response = environment;
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "UpdateEnvironmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateConfigurationProfile = {
  type t;
  type request = {
@as("Validators") validators: option<validatorList>,
@as("RetrievalRoleArn") retrievalRoleArn: option<roleArn>,
@as("Description") description: option<description>,
@as("Name") name: option<name>,
@as("ConfigurationProfileId") configurationProfileId: id,
@as("ApplicationId") applicationId: id
}
  type response = {
@as("Validators") validators: option<validatorList>,
@as("RetrievalRoleArn") retrievalRoleArn: option<roleArn>,
@as("LocationUri") locationUri: option<uri>,
@as("Description") description: option<description>,
@as("Name") name: option<name>,
@as("Id") id: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "UpdateConfigurationProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopDeployment = {
  type t;
  type request = {
@as("DeploymentNumber") deploymentNumber: integer_,
@as("EnvironmentId") environmentId: id,
@as("ApplicationId") applicationId: id
}
  type response = {
@as("CompletedAt") completedAt: option<iso8601DateTime>,
@as("StartedAt") startedAt: option<iso8601DateTime>,
@as("PercentageComplete") percentageComplete: option<percentage>,
@as("EventLog") eventLog: option<deploymentEvents>,
@as("State") state: option<deploymentState>,
@as("FinalBakeTimeInMinutes") finalBakeTimeInMinutes: option<minutesBetween0And24Hours>,
@as("GrowthFactor") growthFactor: option<percentage>,
@as("GrowthType") growthType: option<growthType>,
@as("DeploymentDurationInMinutes") deploymentDurationInMinutes: option<minutesBetween0And24Hours>,
@as("Description") description: option<description>,
@as("ConfigurationVersion") configurationVersion: option<version>,
@as("ConfigurationLocationUri") configurationLocationUri: option<uri>,
@as("ConfigurationName") configurationName: option<name>,
@as("DeploymentNumber") deploymentNumber: option<integer_>,
@as("ConfigurationProfileId") configurationProfileId: option<id>,
@as("DeploymentStrategyId") deploymentStrategyId: option<id>,
@as("EnvironmentId") environmentId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "StopDeploymentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartDeployment = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("Description") description: option<description>,
@as("ConfigurationVersion") configurationVersion: version,
@as("ConfigurationProfileId") configurationProfileId: id,
@as("DeploymentStrategyId") deploymentStrategyId: deploymentStrategyId,
@as("EnvironmentId") environmentId: id,
@as("ApplicationId") applicationId: id
}
  type response = {
@as("CompletedAt") completedAt: option<iso8601DateTime>,
@as("StartedAt") startedAt: option<iso8601DateTime>,
@as("PercentageComplete") percentageComplete: option<percentage>,
@as("EventLog") eventLog: option<deploymentEvents>,
@as("State") state: option<deploymentState>,
@as("FinalBakeTimeInMinutes") finalBakeTimeInMinutes: option<minutesBetween0And24Hours>,
@as("GrowthFactor") growthFactor: option<percentage>,
@as("GrowthType") growthType: option<growthType>,
@as("DeploymentDurationInMinutes") deploymentDurationInMinutes: option<minutesBetween0And24Hours>,
@as("Description") description: option<description>,
@as("ConfigurationVersion") configurationVersion: option<version>,
@as("ConfigurationLocationUri") configurationLocationUri: option<uri>,
@as("ConfigurationName") configurationName: option<name>,
@as("DeploymentNumber") deploymentNumber: option<integer_>,
@as("ConfigurationProfileId") configurationProfileId: option<id>,
@as("DeploymentStrategyId") deploymentStrategyId: option<id>,
@as("EnvironmentId") environmentId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "StartDeploymentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListHostedConfigurationVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("ConfigurationProfileId") configurationProfileId: id,
@as("ApplicationId") applicationId: id
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Items") items: option<hostedConfigurationVersionSummaryList>
}
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "ListHostedConfigurationVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDeployments = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("EnvironmentId") environmentId: id,
@as("ApplicationId") applicationId: id
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Items") items: option<deploymentList>
}
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "ListDeploymentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDeploymentStrategies = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Items") items: option<deploymentStrategyList>
}
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "ListDeploymentStrategiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListApplications = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Items") items: option<applicationList>
}
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "ListApplicationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEnvironment = {
  type t;
  type request = {
@as("EnvironmentId") environmentId: id,
@as("ApplicationId") applicationId: id
}
  type response = environment;
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "GetEnvironmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDeployment = {
  type t;
  type request = {
@as("DeploymentNumber") deploymentNumber: integer_,
@as("EnvironmentId") environmentId: id,
@as("ApplicationId") applicationId: id
}
  type response = {
@as("CompletedAt") completedAt: option<iso8601DateTime>,
@as("StartedAt") startedAt: option<iso8601DateTime>,
@as("PercentageComplete") percentageComplete: option<percentage>,
@as("EventLog") eventLog: option<deploymentEvents>,
@as("State") state: option<deploymentState>,
@as("FinalBakeTimeInMinutes") finalBakeTimeInMinutes: option<minutesBetween0And24Hours>,
@as("GrowthFactor") growthFactor: option<percentage>,
@as("GrowthType") growthType: option<growthType>,
@as("DeploymentDurationInMinutes") deploymentDurationInMinutes: option<minutesBetween0And24Hours>,
@as("Description") description: option<description>,
@as("ConfigurationVersion") configurationVersion: option<version>,
@as("ConfigurationLocationUri") configurationLocationUri: option<uri>,
@as("ConfigurationName") configurationName: option<name>,
@as("DeploymentNumber") deploymentNumber: option<integer_>,
@as("ConfigurationProfileId") configurationProfileId: option<id>,
@as("DeploymentStrategyId") deploymentStrategyId: option<id>,
@as("EnvironmentId") environmentId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "GetDeploymentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetConfigurationProfile = {
  type t;
  type request = {
@as("ConfigurationProfileId") configurationProfileId: id,
@as("ApplicationId") applicationId: id
}
  type response = {
@as("Validators") validators: option<validatorList>,
@as("RetrievalRoleArn") retrievalRoleArn: option<roleArn>,
@as("LocationUri") locationUri: option<uri>,
@as("Description") description: option<description>,
@as("Name") name: option<name>,
@as("Id") id: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "GetConfigurationProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateEnvironment = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("Monitors") monitors: option<monitorList>,
@as("Description") description: option<description>,
@as("Name") name: name,
@as("ApplicationId") applicationId: id
}
  type response = environment;
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "CreateEnvironmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationProfile = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("Validators") validators: option<validatorList>,
@as("RetrievalRoleArn") retrievalRoleArn: option<roleArn>,
@as("LocationUri") locationUri: uri,
@as("Description") description: option<description>,
@as("Name") name: name,
@as("ApplicationId") applicationId: id
}
  type response = {
@as("Validators") validators: option<validatorList>,
@as("RetrievalRoleArn") retrievalRoleArn: option<roleArn>,
@as("LocationUri") locationUri: option<uri>,
@as("Description") description: option<description>,
@as("Name") name: option<name>,
@as("Id") id: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "CreateConfigurationProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListConfigurationProfiles = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("ApplicationId") applicationId: id
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Items") items: option<configurationProfileSummaryList>
}
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "ListConfigurationProfilesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEnvironments = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("ApplicationId") applicationId: id
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Items") items: option<environmentList>
}
  @module("@aws-sdk/client-appconfig") @new external new_: (request) => t = "ListEnvironmentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
