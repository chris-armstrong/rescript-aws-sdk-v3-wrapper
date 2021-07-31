type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type version = string
type validatorType = [@as("LAMBDA") #LAMBDA | @as("JSON_SCHEMA") #JSON_SCHEMA]
type uri = string
type triggeredBy = [@as("INTERNAL_ERROR") #INTERNAL_ERROR | @as("CLOUDWATCH_ALARM") #CLOUDWATCH_ALARM | @as("APPCONFIG") #APPCONFIG | @as("USER") #USER]
type tagValue = string
type tagKey = string
type stringWithLengthBetween1And64 = string
type stringWithLengthBetween1And255 = string
type stringWithLengthBetween0And32768 = string
type amazonawsString = string
type roleArn = string
type replicateTo = [@as("SSM_DOCUMENT") #SSM_DOCUMENT | @as("NONE") #NONE]
type percentage = float;
type nextToken = string
type name = string
type minutesBetween0And24Hours = int;
type maxResults = int;
type iso8601DateTime = Js.Date.t;
type amazonawsInteger = int;
type id = string
type growthType = [@as("EXPONENTIAL") #EXPONENTIAL | @as("LINEAR") #LINEAR]
type growthFactor = float;
type float = float;
type environmentState = [@as("ROLLED_BACK") #ROLLED_BACK | @as("ROLLING_BACK") #ROLLING_BACK | @as("DEPLOYING") #DEPLOYING | @as("READY_FOR_DEPLOYMENT") #READY_FOR_DEPLOYMENT]
type description = string
type deploymentStrategyId = string
type deploymentState = [@as("ROLLED_BACK") #ROLLED_BACK | @as("ROLLING_BACK") #ROLLING_BACK | @as("COMPLETE") #COMPLETE | @as("DEPLOYING") #DEPLOYING | @as("VALIDATING") #VALIDATING | @as("BAKING") #BAKING]
type deploymentEventType = [@as("DEPLOYMENT_COMPLETED") #DEPLOYMENT_COMPLETED | @as("DEPLOYMENT_STARTED") #DEPLOYMENT_STARTED | @as("BAKE_TIME_STARTED") #BAKE_TIME_STARTED | @as("ROLLBACK_COMPLETED") #ROLLBACK_COMPLETED | @as("ROLLBACK_STARTED") #ROLLBACK_STARTED | @as("PERCENTAGE_UPDATED") #PERCENTAGE_UPDATED]
type bytesMeasure = [@as("KILOBYTES") #KILOBYTES]
type blob = NodeJs.Buffer.t;
type arn = string
type validatorTypeList = array<validatorType>
type validator = {
@as("Content") content: option<stringWithLengthBetween0And32768>,
@as("Type") type_: option<validatorType>
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type monitor = {
@as("AlarmRoleArn") alarmRoleArn: roleArn,
@as("AlarmArn") alarmArn: arn
}
type hostedConfigurationVersionSummary = {
@as("ContentType") contentType: stringWithLengthBetween1And255,
@as("Description") description: description,
@as("VersionNumber") versionNumber: amazonawsInteger,
@as("ConfigurationProfileId") configurationProfileId: id,
@as("ApplicationId") applicationId: id
}
type deploymentSummary = {
@as("CompletedAt") completedAt: iso8601DateTime,
@as("StartedAt") startedAt: iso8601DateTime,
@as("PercentageComplete") percentageComplete: percentage,
@as("State") state: deploymentState,
@as("FinalBakeTimeInMinutes") finalBakeTimeInMinutes: minutesBetween0And24Hours,
@as("GrowthFactor") growthFactor: percentage,
@as("GrowthType") growthType: growthType,
@as("DeploymentDurationInMinutes") deploymentDurationInMinutes: minutesBetween0And24Hours,
@as("ConfigurationVersion") configurationVersion: version,
@as("ConfigurationName") configurationName: name,
@as("DeploymentNumber") deploymentNumber: amazonawsInteger
}
type deploymentStrategy = {
@as("ReplicateTo") replicateTo: replicateTo,
@as("FinalBakeTimeInMinutes") finalBakeTimeInMinutes: minutesBetween0And24Hours,
@as("GrowthFactor") growthFactor: percentage,
@as("GrowthType") growthType: growthType,
@as("DeploymentDurationInMinutes") deploymentDurationInMinutes: minutesBetween0And24Hours,
@as("Description") description: description,
@as("Name") name: name,
@as("Id") id: id
}
type deploymentEvent = {
@as("OccurredAt") occurredAt: iso8601DateTime,
@as("Description") description: description,
@as("TriggeredBy") triggeredBy: triggeredBy,
@as("EventType") eventType: deploymentEventType
}
type application = {
@as("Description") description: description,
@as("Name") name: name,
@as("Id") id: id
}
type validatorList = array<validator>
type monitorList = array<monitor>
type hostedConfigurationVersionSummaryList = array<hostedConfigurationVersionSummary>
type deploymentStrategyList = array<deploymentStrategy>
type deploymentList = array<deploymentSummary>
type deploymentEvents = array<deploymentEvent>
type configurationProfileSummary = {
@as("ValidatorTypes") validatorTypes: validatorTypeList,
@as("LocationUri") locationUri: uri,
@as("Name") name: name,
@as("Id") id: id,
@as("ApplicationId") applicationId: id
}
type applicationList = array<application>
type environment = {
@as("Monitors") monitors: monitorList,
@as("State") state: environmentState,
@as("Description") description: description,
@as("Name") name: name,
@as("Id") id: id,
@as("ApplicationId") applicationId: id
}
type configurationProfileSummaryList = array<configurationProfileSummary>
type environmentList = array<environment>
type clientType;
@module("@aws-sdk/client-appconfig") @new external createClient: unit => clientType = "AppConfigClient";
module ValidateConfiguration = {
  type t;
  type request = {
@as("ConfigurationVersion") configurationVersion: option<version>,
@as("ConfigurationProfileId") configurationProfileId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "ValidateConfigurationCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateDeploymentStrategy = {
  type t;
  type request = {
@as("GrowthType") growthType: growthType,
@as("GrowthFactor") growthFactor: growthFactor,
@as("FinalBakeTimeInMinutes") finalBakeTimeInMinutes: minutesBetween0And24Hours,
@as("DeploymentDurationInMinutes") deploymentDurationInMinutes: minutesBetween0And24Hours,
@as("Description") description: description,
@as("DeploymentStrategyId") deploymentStrategyId: option<deploymentStrategyId>
}
  type response = deploymentStrategy;
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "UpdateDeploymentStrategyCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApplication = {
  type t;
  type request = {
@as("Description") description: description,
@as("Name") name: name,
@as("ApplicationId") applicationId: option<id>
}
  type response = application;
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "UpdateApplicationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetHostedConfigurationVersion = {
  type t;
  type request = {
@as("VersionNumber") versionNumber: option<amazonawsInteger>,
@as("ConfigurationProfileId") configurationProfileId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  type response = {
@as("ContentType") contentType: stringWithLengthBetween1And255,
@as("Content") content: blob,
@as("Description") description: description,
@as("VersionNumber") versionNumber: amazonawsInteger,
@as("ConfigurationProfileId") configurationProfileId: id,
@as("ApplicationId") applicationId: id
}
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "GetHostedConfigurationVersionCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeploymentStrategy = {
  type t;
  type request = {
@as("DeploymentStrategyId") deploymentStrategyId: option<deploymentStrategyId>
}
  type response = deploymentStrategy;
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "GetDeploymentStrategyCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConfiguration = {
  type t;
  type request = {
@as("ClientConfigurationVersion") clientConfigurationVersion: version,
@as("ClientId") clientId: option<stringWithLengthBetween1And64>,
@as("Configuration") configuration: option<stringWithLengthBetween1And64>,
@as("Environment") environment: option<stringWithLengthBetween1And64>,
@as("Application") application: option<stringWithLengthBetween1And64>
}
  type response = {
@as("ContentType") contentType: amazonawsString,
@as("ConfigurationVersion") configurationVersion: version,
@as("Content") content: blob
}
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "GetConfigurationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApplication = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<id>
}
  type response = application;
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "GetApplicationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteHostedConfigurationVersion = {
  type t;
  type request = {
@as("VersionNumber") versionNumber: option<amazonawsInteger>,
@as("ConfigurationProfileId") configurationProfileId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "DeleteHostedConfigurationVersionCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteEnvironment = {
  type t;
  type request = {
@as("EnvironmentId") environmentId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "DeleteEnvironmentCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDeploymentStrategy = {
  type t;
  type request = {
@as("DeploymentStrategyId") deploymentStrategyId: option<deploymentStrategyId>
}
  
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "DeleteDeploymentStrategyCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteConfigurationProfile = {
  type t;
  type request = {
@as("ConfigurationProfileId") configurationProfileId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "DeleteConfigurationProfileCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteApplication = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<id>
}
  
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "DeleteApplicationCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateHostedConfigurationVersion = {
  type t;
  type request = {
@as("LatestVersionNumber") latestVersionNumber: amazonawsInteger,
@as("ContentType") contentType: option<stringWithLengthBetween1And255>,
@as("Content") content: option<blob>,
@as("Description") description: description,
@as("ConfigurationProfileId") configurationProfileId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  type response = {
@as("ContentType") contentType: stringWithLengthBetween1And255,
@as("Content") content: blob,
@as("Description") description: description,
@as("VersionNumber") versionNumber: amazonawsInteger,
@as("ConfigurationProfileId") configurationProfileId: id,
@as("ApplicationId") applicationId: id
}
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "CreateHostedConfigurationVersionCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<arn>
}
  
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("ResourceArn") resourceArn: option<arn>
}
  
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<arn>
}
  type response = {
@as("Tags") tags: tagMap
}
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDeploymentStrategy = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("ReplicateTo") replicateTo: option<replicateTo>,
@as("GrowthType") growthType: growthType,
@as("GrowthFactor") growthFactor: option<growthFactor>,
@as("FinalBakeTimeInMinutes") finalBakeTimeInMinutes: minutesBetween0And24Hours,
@as("DeploymentDurationInMinutes") deploymentDurationInMinutes: option<minutesBetween0And24Hours>,
@as("Description") description: description,
@as("Name") name: option<name>
}
  type response = deploymentStrategy;
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "CreateDeploymentStrategyCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApplication = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("Description") description: description,
@as("Name") name: option<name>
}
  type response = application;
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "CreateApplicationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateEnvironment = {
  type t;
  type request = {
@as("Monitors") monitors: monitorList,
@as("Description") description: description,
@as("Name") name: name,
@as("EnvironmentId") environmentId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  type response = environment;
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "UpdateEnvironmentCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConfigurationProfile = {
  type t;
  type request = {
@as("Validators") validators: validatorList,
@as("RetrievalRoleArn") retrievalRoleArn: roleArn,
@as("Description") description: description,
@as("Name") name: name,
@as("ConfigurationProfileId") configurationProfileId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  type response = {
@as("Validators") validators: validatorList,
@as("RetrievalRoleArn") retrievalRoleArn: roleArn,
@as("LocationUri") locationUri: uri,
@as("Description") description: description,
@as("Name") name: name,
@as("Id") id: id,
@as("ApplicationId") applicationId: id
}
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "UpdateConfigurationProfileCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopDeployment = {
  type t;
  type request = {
@as("DeploymentNumber") deploymentNumber: option<amazonawsInteger>,
@as("EnvironmentId") environmentId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  type response = {
@as("CompletedAt") completedAt: iso8601DateTime,
@as("StartedAt") startedAt: iso8601DateTime,
@as("PercentageComplete") percentageComplete: percentage,
@as("EventLog") eventLog: deploymentEvents,
@as("State") state: deploymentState,
@as("FinalBakeTimeInMinutes") finalBakeTimeInMinutes: minutesBetween0And24Hours,
@as("GrowthFactor") growthFactor: percentage,
@as("GrowthType") growthType: growthType,
@as("DeploymentDurationInMinutes") deploymentDurationInMinutes: minutesBetween0And24Hours,
@as("Description") description: description,
@as("ConfigurationVersion") configurationVersion: version,
@as("ConfigurationLocationUri") configurationLocationUri: uri,
@as("ConfigurationName") configurationName: name,
@as("DeploymentNumber") deploymentNumber: amazonawsInteger,
@as("ConfigurationProfileId") configurationProfileId: id,
@as("DeploymentStrategyId") deploymentStrategyId: id,
@as("EnvironmentId") environmentId: id,
@as("ApplicationId") applicationId: id
}
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "StopDeploymentCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartDeployment = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("Description") description: description,
@as("ConfigurationVersion") configurationVersion: option<version>,
@as("ConfigurationProfileId") configurationProfileId: option<id>,
@as("DeploymentStrategyId") deploymentStrategyId: option<deploymentStrategyId>,
@as("EnvironmentId") environmentId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  type response = {
@as("CompletedAt") completedAt: iso8601DateTime,
@as("StartedAt") startedAt: iso8601DateTime,
@as("PercentageComplete") percentageComplete: percentage,
@as("EventLog") eventLog: deploymentEvents,
@as("State") state: deploymentState,
@as("FinalBakeTimeInMinutes") finalBakeTimeInMinutes: minutesBetween0And24Hours,
@as("GrowthFactor") growthFactor: percentage,
@as("GrowthType") growthType: growthType,
@as("DeploymentDurationInMinutes") deploymentDurationInMinutes: minutesBetween0And24Hours,
@as("Description") description: description,
@as("ConfigurationVersion") configurationVersion: version,
@as("ConfigurationLocationUri") configurationLocationUri: uri,
@as("ConfigurationName") configurationName: name,
@as("DeploymentNumber") deploymentNumber: amazonawsInteger,
@as("ConfigurationProfileId") configurationProfileId: id,
@as("DeploymentStrategyId") deploymentStrategyId: id,
@as("EnvironmentId") environmentId: id,
@as("ApplicationId") applicationId: id
}
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "StartDeploymentCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListHostedConfigurationVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("ConfigurationProfileId") configurationProfileId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: hostedConfigurationVersionSummaryList
}
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "ListHostedConfigurationVersionsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeployments = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("EnvironmentId") environmentId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: deploymentList
}
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "ListDeploymentsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeploymentStrategies = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: deploymentStrategyList
}
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "ListDeploymentStrategiesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApplications = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: applicationList
}
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "ListApplicationsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEnvironment = {
  type t;
  type request = {
@as("EnvironmentId") environmentId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  type response = environment;
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "GetEnvironmentCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeployment = {
  type t;
  type request = {
@as("DeploymentNumber") deploymentNumber: option<amazonawsInteger>,
@as("EnvironmentId") environmentId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  type response = {
@as("CompletedAt") completedAt: iso8601DateTime,
@as("StartedAt") startedAt: iso8601DateTime,
@as("PercentageComplete") percentageComplete: percentage,
@as("EventLog") eventLog: deploymentEvents,
@as("State") state: deploymentState,
@as("FinalBakeTimeInMinutes") finalBakeTimeInMinutes: minutesBetween0And24Hours,
@as("GrowthFactor") growthFactor: percentage,
@as("GrowthType") growthType: growthType,
@as("DeploymentDurationInMinutes") deploymentDurationInMinutes: minutesBetween0And24Hours,
@as("Description") description: description,
@as("ConfigurationVersion") configurationVersion: version,
@as("ConfigurationLocationUri") configurationLocationUri: uri,
@as("ConfigurationName") configurationName: name,
@as("DeploymentNumber") deploymentNumber: amazonawsInteger,
@as("ConfigurationProfileId") configurationProfileId: id,
@as("DeploymentStrategyId") deploymentStrategyId: id,
@as("EnvironmentId") environmentId: id,
@as("ApplicationId") applicationId: id
}
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "GetDeploymentCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConfigurationProfile = {
  type t;
  type request = {
@as("ConfigurationProfileId") configurationProfileId: option<id>,
@as("ApplicationId") applicationId: option<id>
}
  type response = {
@as("Validators") validators: validatorList,
@as("RetrievalRoleArn") retrievalRoleArn: roleArn,
@as("LocationUri") locationUri: uri,
@as("Description") description: description,
@as("Name") name: name,
@as("Id") id: id,
@as("ApplicationId") applicationId: id
}
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "GetConfigurationProfileCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEnvironment = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("Monitors") monitors: monitorList,
@as("Description") description: description,
@as("Name") name: option<name>,
@as("ApplicationId") applicationId: option<id>
}
  type response = environment;
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "CreateEnvironmentCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationProfile = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("Validators") validators: validatorList,
@as("RetrievalRoleArn") retrievalRoleArn: roleArn,
@as("LocationUri") locationUri: option<uri>,
@as("Description") description: description,
@as("Name") name: option<name>,
@as("ApplicationId") applicationId: option<id>
}
  type response = {
@as("Validators") validators: validatorList,
@as("RetrievalRoleArn") retrievalRoleArn: roleArn,
@as("LocationUri") locationUri: uri,
@as("Description") description: description,
@as("Name") name: name,
@as("Id") id: id,
@as("ApplicationId") applicationId: id
}
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "CreateConfigurationProfileCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConfigurationProfiles = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("ApplicationId") applicationId: option<id>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: configurationProfileSummaryList
}
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "ListConfigurationProfilesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEnvironments = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("ApplicationId") applicationId: option<id>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: environmentList
}
  @module("@aws-sdk/client-appconfig") @new external new_: (Js.Promise.t<request>) => t = "ListEnvironmentsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}
