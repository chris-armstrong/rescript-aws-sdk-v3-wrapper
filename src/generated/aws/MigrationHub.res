type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type updateDateTime = Js.Date.t;
type token = string
type statusDetail = string
type status = [@as("COMPLETED") #COMPLETED | @as("FAILED") #FAILED | @as("IN_PROGRESS") #IN_PROGRESS | @as("NOT_STARTED") #NOT_STARTED]
type retryAfterSeconds = int;
type resourceName = string
type resourceAttributeValue = string
type resourceAttributeType = [@as("MOTHERBOARD_SERIAL_NUMBER") #MOTHERBOARD_SERIAL_NUMBER | @as("BIOS_ID") #BIOS_ID | @as("VM_PATH") #VM_PATH | @as("VM_NAME") #VM_NAME | @as("VM_MANAGED_OBJECT_REFERENCE") #VM_MANAGED_OBJECT_REFERENCE | @as("VM_MANAGER_ID") #VM_MANAGER_ID | @as("FQDN") #FQDN | @as("MAC_ADDRESS") #MAC_ADDRESS | @as("IPV6_ADDRESS") #IPV6_ADDRESS | @as("IPV4_ADDRESS") #IPV4_ADDRESS]
type progressUpdateStream = string
type progressPercent = int;
type nextUpdateSeconds = int;
type migrationTaskName = string
type maxResultsResources = int;
type maxResultsCreatedArtifacts = int;
type maxResults = int;
type errorMessage = string
type dryRun = bool;
type discoveredResourceDescription = string
type createdArtifactName = string
type createdArtifactDescription = string
type configurationId = string
type applicationStatus = [@as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS | @as("NOT_STARTED") #NOT_STARTED]
type applicationId = string
type task = {
@as("ProgressPercent") progressPercent: progressPercent,
@as("StatusDetail") statusDetail: statusDetail,
@as("Status") status: option<status>
}
type resourceAttribute = {
@as("Value") value: option<resourceAttributeValue>,
@as("Type") type_: option<resourceAttributeType>
}
type progressUpdateStreamSummary = {
@as("ProgressUpdateStreamName") progressUpdateStreamName: progressUpdateStream
}
type migrationTaskSummary = {
@as("UpdateDateTime") updateDateTime: updateDateTime,
@as("StatusDetail") statusDetail: statusDetail,
@as("ProgressPercent") progressPercent: progressPercent,
@as("Status") status: status,
@as("MigrationTaskName") migrationTaskName: migrationTaskName,
@as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream
}
type discoveredResource = {
@as("Description") description: discoveredResourceDescription,
@as("ConfigurationId") configurationId: option<configurationId>
}
type createdArtifact = {
@as("Description") description: createdArtifactDescription,
@as("Name") name: option<createdArtifactName>
}
type applicationState = {
@as("LastUpdatedTime") lastUpdatedTime: updateDateTime,
@as("ApplicationStatus") applicationStatus: applicationStatus,
@as("ApplicationId") applicationId: applicationId
}
type applicationIds = array<applicationId>
type resourceAttributeList = array<resourceAttribute>
type progressUpdateStreamSummaryList = array<progressUpdateStreamSummary>
type migrationTaskSummaryList = array<migrationTaskSummary>
type latestResourceAttributeList = array<resourceAttribute>
type discoveredResourceList = array<discoveredResource>
type createdArtifactList = array<createdArtifact>
type applicationStateList = array<applicationState>
type migrationTask = {
@as("ResourceAttributeList") resourceAttributeList: latestResourceAttributeList,
@as("UpdateDateTime") updateDateTime: updateDateTime,
@as("Task") task: task,
@as("MigrationTaskName") migrationTaskName: migrationTaskName,
@as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream
}
type clientType;
@module("@aws-sdk/client-mgh") @new external createClient: unit => clientType = "MigrationHubClient";
module NotifyApplicationState = {
  type t;
  type request = {
@as("DryRun") dryRun: dryRun,
@as("UpdateDateTime") updateDateTime: updateDateTime,
@as("Status") status: option<applicationStatus>,
@as("ApplicationId") applicationId: option<applicationId>
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "NotifyApplicationStateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportMigrationTask = {
  type t;
  type request = {
@as("DryRun") dryRun: dryRun,
@as("MigrationTaskName") migrationTaskName: option<migrationTaskName>,
@as("ProgressUpdateStream") progressUpdateStream: option<progressUpdateStream>
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "ImportMigrationTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateDiscoveredResource = {
  type t;
  type request = {
@as("DryRun") dryRun: dryRun,
@as("ConfigurationId") configurationId: option<configurationId>,
@as("MigrationTaskName") migrationTaskName: option<migrationTaskName>,
@as("ProgressUpdateStream") progressUpdateStream: option<progressUpdateStream>
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "DisassociateDiscoveredResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateCreatedArtifact = {
  type t;
  type request = {
@as("DryRun") dryRun: dryRun,
@as("CreatedArtifactName") createdArtifactName: option<createdArtifactName>,
@as("MigrationTaskName") migrationTaskName: option<migrationTaskName>,
@as("ProgressUpdateStream") progressUpdateStream: option<progressUpdateStream>
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "DisassociateCreatedArtifactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeApplicationState = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<applicationId>
}
  type response = {
@as("LastUpdatedTime") lastUpdatedTime: updateDateTime,
@as("ApplicationStatus") applicationStatus: applicationStatus
}
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "DescribeApplicationStateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProgressUpdateStream = {
  type t;
  type request = {
@as("DryRun") dryRun: dryRun,
@as("ProgressUpdateStreamName") progressUpdateStreamName: option<progressUpdateStream>
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "DeleteProgressUpdateStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProgressUpdateStream = {
  type t;
  type request = {
@as("DryRun") dryRun: dryRun,
@as("ProgressUpdateStreamName") progressUpdateStreamName: option<progressUpdateStream>
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "CreateProgressUpdateStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module NotifyMigrationTaskState = {
  type t;
  type request = {
@as("DryRun") dryRun: dryRun,
@as("NextUpdateSeconds") nextUpdateSeconds: option<nextUpdateSeconds>,
@as("UpdateDateTime") updateDateTime: option<updateDateTime>,
@as("Task") task: option<task>,
@as("MigrationTaskName") migrationTaskName: option<migrationTaskName>,
@as("ProgressUpdateStream") progressUpdateStream: option<progressUpdateStream>
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "NotifyMigrationTaskStateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateDiscoveredResource = {
  type t;
  type request = {
@as("DryRun") dryRun: dryRun,
@as("DiscoveredResource") discoveredResource: option<discoveredResource>,
@as("MigrationTaskName") migrationTaskName: option<migrationTaskName>,
@as("ProgressUpdateStream") progressUpdateStream: option<progressUpdateStream>
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "AssociateDiscoveredResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateCreatedArtifact = {
  type t;
  type request = {
@as("DryRun") dryRun: dryRun,
@as("CreatedArtifact") createdArtifact: option<createdArtifact>,
@as("MigrationTaskName") migrationTaskName: option<migrationTaskName>,
@as("ProgressUpdateStream") progressUpdateStream: option<progressUpdateStream>
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "AssociateCreatedArtifactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutResourceAttributes = {
  type t;
  type request = {
@as("DryRun") dryRun: dryRun,
@as("ResourceAttributeList") resourceAttributeList: option<resourceAttributeList>,
@as("MigrationTaskName") migrationTaskName: option<migrationTaskName>,
@as("ProgressUpdateStream") progressUpdateStream: option<progressUpdateStream>
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "PutResourceAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProgressUpdateStreams = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("ProgressUpdateStreamSummaryList") progressUpdateStreamSummaryList: progressUpdateStreamSummaryList
}
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "ListProgressUpdateStreamsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMigrationTasks = {
  type t;
  type request = {
@as("ResourceName") resourceName: resourceName,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: token
}
  type response = {
@as("MigrationTaskSummaryList") migrationTaskSummaryList: migrationTaskSummaryList,
@as("NextToken") nextToken: token
}
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "ListMigrationTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDiscoveredResources = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsResources,
@as("NextToken") nextToken: token,
@as("MigrationTaskName") migrationTaskName: option<migrationTaskName>,
@as("ProgressUpdateStream") progressUpdateStream: option<progressUpdateStream>
}
  type response = {
@as("DiscoveredResourceList") discoveredResourceList: discoveredResourceList,
@as("NextToken") nextToken: token
}
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "ListDiscoveredResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCreatedArtifacts = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsCreatedArtifacts,
@as("NextToken") nextToken: token,
@as("MigrationTaskName") migrationTaskName: option<migrationTaskName>,
@as("ProgressUpdateStream") progressUpdateStream: option<progressUpdateStream>
}
  type response = {
@as("CreatedArtifactList") createdArtifactList: createdArtifactList,
@as("NextToken") nextToken: token
}
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "ListCreatedArtifactsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApplicationStates = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: token,
@as("ApplicationIds") applicationIds: applicationIds
}
  type response = {
@as("NextToken") nextToken: token,
@as("ApplicationStateList") applicationStateList: applicationStateList
}
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "ListApplicationStatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMigrationTask = {
  type t;
  type request = {
@as("MigrationTaskName") migrationTaskName: option<migrationTaskName>,
@as("ProgressUpdateStream") progressUpdateStream: option<progressUpdateStream>
}
  type response = {
@as("MigrationTask") migrationTask: migrationTask
}
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "DescribeMigrationTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
