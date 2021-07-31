type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type updateDateTime = Js.Date.t;
type token = string
type statusDetail = string
type status = [@as("COMPLETED") #COMPLETED | @as("FAILED") #FAILED | @as("IN_PROGRESS") #INPROGRESS | @as("NOT_STARTED") #NOTSTARTED]
type retryAfterSeconds = int
type resourceName = string
type resourceAttributeValue = string
type resourceAttributeType = [@as("MOTHERBOARD_SERIAL_NUMBER") #MOTHERBOARDSERIALNUMBER | @as("BIOS_ID") #BIOSID | @as("VM_PATH") #VMPATH | @as("VM_NAME") #VMNAME | @as("VM_MANAGED_OBJECT_REFERENCE") #VMMANAGEDOBJECTREFERENCE | @as("VM_MANAGER_ID") #VMMANAGERID | @as("FQDN") #FQDN | @as("MAC_ADDRESS") #MACADDRESS | @as("IPV6_ADDRESS") #IPV6ADDRESS | @as("IPV4_ADDRESS") #IPV4ADDRESS]
type progressUpdateStream = string
type progressPercent = int
type nextUpdateSeconds = int
type migrationTaskName = string
type maxResultsResources = int
type maxResultsCreatedArtifacts = int
type maxResults = int
type errorMessage = string
type dryRun = bool
type discoveredResourceDescription = string
type createdArtifactName = string
type createdArtifactDescription = string
type configurationId = string
type applicationStatus = [@as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #INPROGRESS | @as("NOT_STARTED") #NOTSTARTED]
type applicationId = string
type task = {
@as("ProgressPercent") progressPercent: option<progressPercent>,
@as("StatusDetail") statusDetail: option<statusDetail>,
@as("Status") status: status
}
type resourceAttribute = {
@as("Value") value: resourceAttributeValue,
@as("Type") type_: resourceAttributeType
}
type progressUpdateStreamSummary = {
@as("ProgressUpdateStreamName") progressUpdateStreamName: option<progressUpdateStream>
}
type migrationTaskSummary = {
@as("UpdateDateTime") updateDateTime: option<updateDateTime>,
@as("StatusDetail") statusDetail: option<statusDetail>,
@as("ProgressPercent") progressPercent: option<progressPercent>,
@as("Status") status: option<status>,
@as("MigrationTaskName") migrationTaskName: option<migrationTaskName>,
@as("ProgressUpdateStream") progressUpdateStream: option<progressUpdateStream>
}
type discoveredResource = {
@as("Description") description: option<discoveredResourceDescription>,
@as("ConfigurationId") configurationId: configurationId
}
type createdArtifact = {
@as("Description") description: option<createdArtifactDescription>,
@as("Name") name: createdArtifactName
}
type applicationState = {
@as("LastUpdatedTime") lastUpdatedTime: option<updateDateTime>,
@as("ApplicationStatus") applicationStatus: option<applicationStatus>,
@as("ApplicationId") applicationId: option<applicationId>
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
@as("ResourceAttributeList") resourceAttributeList: option<latestResourceAttributeList>,
@as("UpdateDateTime") updateDateTime: option<updateDateTime>,
@as("Task") task: option<task>,
@as("MigrationTaskName") migrationTaskName: option<migrationTaskName>,
@as("ProgressUpdateStream") progressUpdateStream: option<progressUpdateStream>
}
type awsServiceClient;
@module("@aws-sdk/client-mgh") @new external createClient: unit => awsServiceClient = "MigrationHubClient";
module NotifyApplicationState = {
  type t;
  type request = {
@as("DryRun") dryRun: option<dryRun>,
@as("UpdateDateTime") updateDateTime: option<updateDateTime>,
@as("Status") status: applicationStatus,
@as("ApplicationId") applicationId: applicationId
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "NotifyApplicationStateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ImportMigrationTask = {
  type t;
  type request = {
@as("DryRun") dryRun: option<dryRun>,
@as("MigrationTaskName") migrationTaskName: migrationTaskName,
@as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "ImportMigrationTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateDiscoveredResource = {
  type t;
  type request = {
@as("DryRun") dryRun: option<dryRun>,
@as("ConfigurationId") configurationId: configurationId,
@as("MigrationTaskName") migrationTaskName: migrationTaskName,
@as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "DisassociateDiscoveredResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateCreatedArtifact = {
  type t;
  type request = {
@as("DryRun") dryRun: option<dryRun>,
@as("CreatedArtifactName") createdArtifactName: createdArtifactName,
@as("MigrationTaskName") migrationTaskName: migrationTaskName,
@as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "DisassociateCreatedArtifactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeApplicationState = {
  type t;
  type request = {
@as("ApplicationId") applicationId: applicationId
}
  type response = {
@as("LastUpdatedTime") lastUpdatedTime: option<updateDateTime>,
@as("ApplicationStatus") applicationStatus: option<applicationStatus>
}
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "DescribeApplicationStateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteProgressUpdateStream = {
  type t;
  type request = {
@as("DryRun") dryRun: option<dryRun>,
@as("ProgressUpdateStreamName") progressUpdateStreamName: progressUpdateStream
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "DeleteProgressUpdateStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateProgressUpdateStream = {
  type t;
  type request = {
@as("DryRun") dryRun: option<dryRun>,
@as("ProgressUpdateStreamName") progressUpdateStreamName: progressUpdateStream
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "CreateProgressUpdateStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module NotifyMigrationTaskState = {
  type t;
  type request = {
@as("DryRun") dryRun: option<dryRun>,
@as("NextUpdateSeconds") nextUpdateSeconds: nextUpdateSeconds,
@as("UpdateDateTime") updateDateTime: updateDateTime,
@as("Task") task: task,
@as("MigrationTaskName") migrationTaskName: migrationTaskName,
@as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "NotifyMigrationTaskStateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateDiscoveredResource = {
  type t;
  type request = {
@as("DryRun") dryRun: option<dryRun>,
@as("DiscoveredResource") discoveredResource: discoveredResource,
@as("MigrationTaskName") migrationTaskName: migrationTaskName,
@as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "AssociateDiscoveredResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateCreatedArtifact = {
  type t;
  type request = {
@as("DryRun") dryRun: option<dryRun>,
@as("CreatedArtifact") createdArtifact: createdArtifact,
@as("MigrationTaskName") migrationTaskName: migrationTaskName,
@as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "AssociateCreatedArtifactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutResourceAttributes = {
  type t;
  type request = {
@as("DryRun") dryRun: option<dryRun>,
@as("ResourceAttributeList") resourceAttributeList: resourceAttributeList,
@as("MigrationTaskName") migrationTaskName: migrationTaskName,
@as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream
}
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "PutResourceAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListProgressUpdateStreams = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<token>
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("ProgressUpdateStreamSummaryList") progressUpdateStreamSummaryList: option<progressUpdateStreamSummaryList>
}
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "ListProgressUpdateStreamsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListMigrationTasks = {
  type t;
  type request = {
@as("ResourceName") resourceName: option<resourceName>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<token>
}
  type response = {
@as("MigrationTaskSummaryList") migrationTaskSummaryList: option<migrationTaskSummaryList>,
@as("NextToken") nextToken: option<token>
}
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "ListMigrationTasksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDiscoveredResources = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultsResources>,
@as("NextToken") nextToken: option<token>,
@as("MigrationTaskName") migrationTaskName: migrationTaskName,
@as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream
}
  type response = {
@as("DiscoveredResourceList") discoveredResourceList: option<discoveredResourceList>,
@as("NextToken") nextToken: option<token>
}
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "ListDiscoveredResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListCreatedArtifacts = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultsCreatedArtifacts>,
@as("NextToken") nextToken: option<token>,
@as("MigrationTaskName") migrationTaskName: migrationTaskName,
@as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream
}
  type response = {
@as("CreatedArtifactList") createdArtifactList: option<createdArtifactList>,
@as("NextToken") nextToken: option<token>
}
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "ListCreatedArtifactsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListApplicationStates = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<token>,
@as("ApplicationIds") applicationIds: option<applicationIds>
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("ApplicationStateList") applicationStateList: option<applicationStateList>
}
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "ListApplicationStatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeMigrationTask = {
  type t;
  type request = {
@as("MigrationTaskName") migrationTaskName: migrationTaskName,
@as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream
}
  type response = {
@as("MigrationTask") migrationTask: option<migrationTask>
}
  @module("@aws-sdk/client-mgh") @new external new_: (request) => t = "DescribeMigrationTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
