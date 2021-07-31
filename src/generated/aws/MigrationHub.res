type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-mgh") @new
external createClient: unit => awsServiceClient = "MigrationHubClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type updateDateTime = Js.Date.t
type token = string
type statusDetail = string
type status = [
  | @as("COMPLETED") #COMPLETED
  | @as("FAILED") #FAILED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("NOT_STARTED") #NOT_STARTED
]
type retryAfterSeconds = int
type resourceName = string
type resourceAttributeValue = string
type resourceAttributeType = [
  | @as("MOTHERBOARD_SERIAL_NUMBER") #MOTHERBOARD_SERIAL_NUMBER
  | @as("BIOS_ID") #BIOS_ID
  | @as("VM_PATH") #VM_PATH
  | @as("VM_NAME") #VM_NAME
  | @as("VM_MANAGED_OBJECT_REFERENCE") #VM_MANAGED_OBJECT_REFERENCE
  | @as("VM_MANAGER_ID") #VM_MANAGER_ID
  | @as("FQDN") #FQDN
  | @as("MAC_ADDRESS") #MAC_ADDRESS
  | @as("IPV6_ADDRESS") #IPV6_ADDRESS
  | @as("IPV4_ADDRESS") #IPV4_ADDRESS
]
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
type applicationStatus = [
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("NOT_STARTED") #NOT_STARTED
]
type applicationId = string
type task = {
  @as("ProgressPercent") progressPercent: option<progressPercent>,
  @as("StatusDetail") statusDetail: option<statusDetail>,
  @as("Status") status: status,
}
type resourceAttribute = {
  @as("Value") value: resourceAttributeValue,
  @as("Type") type_: resourceAttributeType,
}
type progressUpdateStreamSummary = {
  @as("ProgressUpdateStreamName") progressUpdateStreamName: option<progressUpdateStream>,
}
type migrationTaskSummary = {
  @as("UpdateDateTime") updateDateTime: option<updateDateTime>,
  @as("StatusDetail") statusDetail: option<statusDetail>,
  @as("ProgressPercent") progressPercent: option<progressPercent>,
  @as("Status") status: option<status>,
  @as("MigrationTaskName") migrationTaskName: option<migrationTaskName>,
  @as("ProgressUpdateStream") progressUpdateStream: option<progressUpdateStream>,
}
type discoveredResource = {
  @as("Description") description: option<discoveredResourceDescription>,
  @as("ConfigurationId") configurationId: configurationId,
}
type createdArtifact = {
  @as("Description") description: option<createdArtifactDescription>,
  @as("Name") name: createdArtifactName,
}
type applicationState = {
  @as("LastUpdatedTime") lastUpdatedTime: option<updateDateTime>,
  @as("ApplicationStatus") applicationStatus: option<applicationStatus>,
  @as("ApplicationId") applicationId: option<applicationId>,
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
  @as("ProgressUpdateStream") progressUpdateStream: option<progressUpdateStream>,
}

module NotifyApplicationState = {
  type t
  type request = {
    @as("DryRun") dryRun: option<dryRun>,
    @as("UpdateDateTime") updateDateTime: option<updateDateTime>,
    @as("Status") status: applicationStatus,
    @as("ApplicationId") applicationId: applicationId,
  }
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new: request => t = "NotifyApplicationStateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportMigrationTask = {
  type t
  type request = {
    @as("DryRun") dryRun: option<dryRun>,
    @as("MigrationTaskName") migrationTaskName: migrationTaskName,
    @as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream,
  }
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new: request => t = "ImportMigrationTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateDiscoveredResource = {
  type t
  type request = {
    @as("DryRun") dryRun: option<dryRun>,
    @as("ConfigurationId") configurationId: configurationId,
    @as("MigrationTaskName") migrationTaskName: migrationTaskName,
    @as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream,
  }
  type response = unit
  @module("@aws-sdk/client-mgh") @new
  external new: request => t = "DisassociateDiscoveredResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateCreatedArtifact = {
  type t
  type request = {
    @as("DryRun") dryRun: option<dryRun>,
    @as("CreatedArtifactName") createdArtifactName: createdArtifactName,
    @as("MigrationTaskName") migrationTaskName: migrationTaskName,
    @as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream,
  }
  type response = unit
  @module("@aws-sdk/client-mgh") @new
  external new: request => t = "DisassociateCreatedArtifactCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeApplicationState = {
  type t
  type request = {@as("ApplicationId") applicationId: applicationId}
  type response = {
    @as("LastUpdatedTime") lastUpdatedTime: option<updateDateTime>,
    @as("ApplicationStatus") applicationStatus: option<applicationStatus>,
  }
  @module("@aws-sdk/client-mgh") @new external new: request => t = "DescribeApplicationStateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProgressUpdateStream = {
  type t
  type request = {
    @as("DryRun") dryRun: option<dryRun>,
    @as("ProgressUpdateStreamName") progressUpdateStreamName: progressUpdateStream,
  }
  type response = unit
  @module("@aws-sdk/client-mgh") @new
  external new: request => t = "DeleteProgressUpdateStreamCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProgressUpdateStream = {
  type t
  type request = {
    @as("DryRun") dryRun: option<dryRun>,
    @as("ProgressUpdateStreamName") progressUpdateStreamName: progressUpdateStream,
  }
  type response = unit
  @module("@aws-sdk/client-mgh") @new
  external new: request => t = "CreateProgressUpdateStreamCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module NotifyMigrationTaskState = {
  type t
  type request = {
    @as("DryRun") dryRun: option<dryRun>,
    @as("NextUpdateSeconds") nextUpdateSeconds: nextUpdateSeconds,
    @as("UpdateDateTime") updateDateTime: updateDateTime,
    @as("Task") task: task,
    @as("MigrationTaskName") migrationTaskName: migrationTaskName,
    @as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream,
  }
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new: request => t = "NotifyMigrationTaskStateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateDiscoveredResource = {
  type t
  type request = {
    @as("DryRun") dryRun: option<dryRun>,
    @as("DiscoveredResource") discoveredResource: discoveredResource,
    @as("MigrationTaskName") migrationTaskName: migrationTaskName,
    @as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream,
  }
  type response = unit
  @module("@aws-sdk/client-mgh") @new
  external new: request => t = "AssociateDiscoveredResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateCreatedArtifact = {
  type t
  type request = {
    @as("DryRun") dryRun: option<dryRun>,
    @as("CreatedArtifact") createdArtifact: createdArtifact,
    @as("MigrationTaskName") migrationTaskName: migrationTaskName,
    @as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream,
  }
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new: request => t = "AssociateCreatedArtifactCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutResourceAttributes = {
  type t
  type request = {
    @as("DryRun") dryRun: option<dryRun>,
    @as("ResourceAttributeList") resourceAttributeList: resourceAttributeList,
    @as("MigrationTaskName") migrationTaskName: migrationTaskName,
    @as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream,
  }
  type response = unit
  @module("@aws-sdk/client-mgh") @new external new: request => t = "PutResourceAttributesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProgressUpdateStreams = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<token>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("ProgressUpdateStreamSummaryList")
    progressUpdateStreamSummaryList: option<progressUpdateStreamSummaryList>,
  }
  @module("@aws-sdk/client-mgh") @new
  external new: request => t = "ListProgressUpdateStreamsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMigrationTasks = {
  type t
  type request = {
    @as("ResourceName") resourceName: option<resourceName>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<token>,
  }
  type response = {
    @as("MigrationTaskSummaryList") migrationTaskSummaryList: option<migrationTaskSummaryList>,
    @as("NextToken") nextToken: option<token>,
  }
  @module("@aws-sdk/client-mgh") @new external new: request => t = "ListMigrationTasksCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDiscoveredResources = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResultsResources>,
    @as("NextToken") nextToken: option<token>,
    @as("MigrationTaskName") migrationTaskName: migrationTaskName,
    @as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream,
  }
  type response = {
    @as("DiscoveredResourceList") discoveredResourceList: option<discoveredResourceList>,
    @as("NextToken") nextToken: option<token>,
  }
  @module("@aws-sdk/client-mgh") @new external new: request => t = "ListDiscoveredResourcesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCreatedArtifacts = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResultsCreatedArtifacts>,
    @as("NextToken") nextToken: option<token>,
    @as("MigrationTaskName") migrationTaskName: migrationTaskName,
    @as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream,
  }
  type response = {
    @as("CreatedArtifactList") createdArtifactList: option<createdArtifactList>,
    @as("NextToken") nextToken: option<token>,
  }
  @module("@aws-sdk/client-mgh") @new external new: request => t = "ListCreatedArtifactsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplicationStates = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<token>,
    @as("ApplicationIds") applicationIds: option<applicationIds>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("ApplicationStateList") applicationStateList: option<applicationStateList>,
  }
  @module("@aws-sdk/client-mgh") @new external new: request => t = "ListApplicationStatesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMigrationTask = {
  type t
  type request = {
    @as("MigrationTaskName") migrationTaskName: migrationTaskName,
    @as("ProgressUpdateStream") progressUpdateStream: progressUpdateStream,
  }
  type response = {@as("MigrationTask") migrationTask: option<migrationTask>}
  @module("@aws-sdk/client-mgh") @new external new: request => t = "DescribeMigrationTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
