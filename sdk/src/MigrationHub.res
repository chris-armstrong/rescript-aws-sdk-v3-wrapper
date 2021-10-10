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
@ocaml.doc("<p>Task object encapsulating task information.</p>")
type task = {
  @ocaml.doc("<p>Indication of the percentage completion of the task.</p>") @as("ProgressPercent")
  progressPercent: option<progressPercent>,
  @ocaml.doc("<p>Details of task status as notified by a migration tool. A tool might use this field to
         provide clarifying information about the status that is unique to that tool or that
         explains an error state.</p>")
  @as("StatusDetail")
  statusDetail: option<statusDetail>,
  @ocaml.doc("<p>Status of the task - Not Started, In-Progress, Complete.</p>") @as("Status")
  status: status,
}
@ocaml.doc("<p>Attribute associated with a resource.</p>
         <p>Note the corresponding format required per type listed below:</p>


         <dl>
            <dt>IPV4</dt>
            <dd>
               <p>
                  <code>x.x.x.x</code>
               </p>
               <p>
                  <i>where x is an integer in the range [0,255]</i>
               </p>
            </dd>
            <dt>IPV6</dt>
            <dd>
               <p>
                  <code>y : y : y : y : y : y : y : y</code>
               </p>
               <p>
                  <i>where y is a hexadecimal between 0 and FFFF. [0,
                  FFFF]</i>
               </p>
            </dd>
            <dt>MAC_ADDRESS</dt>
            <dd>
               <p>
                  <code>^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$</code>
               </p>
            </dd>
            <dt>FQDN</dt>
            <dd>
               <p>
                  <code>^[^<>{}\\\\\\\\/?,=\\\\p{Cntrl}]{1,256}$</code>
               </p>
            </dd>
         </dl>")
type resourceAttribute = {
  @ocaml.doc("<p>Value of the resource type.</p>") @as("Value") value: resourceAttributeValue,
  @ocaml.doc("<p>Type of resource.</p>") @as("Type") type_: resourceAttributeType,
}
@ocaml.doc("<p>Summary of the AWS resource used for access control that is implicitly linked to your
         AWS account.</p>")
type progressUpdateStreamSummary = {
  @ocaml.doc("<p>The name of the ProgressUpdateStream. <i>Do not store personal data in this
            field.</i>
         </p>")
  @as("ProgressUpdateStreamName")
  progressUpdateStreamName: option<progressUpdateStream>,
}
@ocaml.doc("<p>MigrationTaskSummary includes <code>MigrationTaskName</code>,
            <code>ProgressPercent</code>, <code>ProgressUpdateStream</code>, <code>Status</code>,
         and <code>UpdateDateTime</code> for each task.</p>")
type migrationTaskSummary = {
  @ocaml.doc("<p>The timestamp when the task was gathered.</p>") @as("UpdateDateTime")
  updateDateTime: option<updateDateTime>,
  @ocaml.doc("<p>Detail information of what is being done within the overall status state.</p>")
  @as("StatusDetail")
  statusDetail: option<statusDetail>,
  @ocaml.doc("<p>Indication of the percentage completion of the task.</p>") @as("ProgressPercent")
  progressPercent: option<progressPercent>,
  @ocaml.doc("<p>Status of the task.</p>") @as("Status") status: option<status>,
  @ocaml.doc("<p>Unique identifier that references the migration task. <i>Do not store personal
            data in this field.</i>
         </p>")
  @as("MigrationTaskName")
  migrationTaskName: option<migrationTaskName>,
  @ocaml.doc("<p>An AWS resource used for access control. It should uniquely identify the migration tool
         as it is used for all updates made by the tool.</p>")
  @as("ProgressUpdateStream")
  progressUpdateStream: option<progressUpdateStream>,
}
@ocaml.doc("<p>Object representing the on-premises resource being migrated.</p>")
type discoveredResource = {
  @ocaml.doc("<p>A description that can be free-form text to record additional detail about the
         discovered resource for clarity or later reference.</p>")
  @as("Description")
  description: option<discoveredResourceDescription>,
  @ocaml.doc("<p>The configurationId in Application Discovery Service that uniquely identifies the
         on-premise resource.</p>")
  @as("ConfigurationId")
  configurationId: configurationId,
}
@ocaml.doc("<p>An ARN of the AWS cloud resource target receiving the migration (e.g., AMI, EC2
         instance, RDS instance, etc.).</p>")
type createdArtifact = {
  @ocaml.doc("<p>A description that can be free-form text to record additional detail about the artifact
         for clarity or for later reference.</p>")
  @as("Description")
  description: option<createdArtifactDescription>,
  @ocaml.doc("<p>An ARN that uniquely identifies the result of a migration task.</p>") @as("Name")
  name: createdArtifactName,
}
@ocaml.doc("<p>The state of an application discovered through Migration Hub import, the AWS Agentless
         Discovery Connector, or the AWS Application Discovery Agent.</p>")
type applicationState = {
  @ocaml.doc("<p>The timestamp when the application status was last updated.</p>")
  @as("LastUpdatedTime")
  lastUpdatedTime: option<updateDateTime>,
  @ocaml.doc("<p>The current status of an application.</p>") @as("ApplicationStatus")
  applicationStatus: option<applicationStatus>,
  @ocaml.doc("<p>The configurationId from the Application Discovery Service that uniquely identifies an
         application.</p>")
  @as("ApplicationId")
  applicationId: option<applicationId>,
}
type applicationIds = array<applicationId>
type resourceAttributeList = array<resourceAttribute>
type progressUpdateStreamSummaryList = array<progressUpdateStreamSummary>
type migrationTaskSummaryList = array<migrationTaskSummary>
type latestResourceAttributeList = array<resourceAttribute>
type discoveredResourceList = array<discoveredResource>
type createdArtifactList = array<createdArtifact>
type applicationStateList = array<applicationState>
@ocaml.doc("<p>Represents a migration task in a migration tool.</p>")
type migrationTask = {
  @ocaml.doc("<p>Information about the resource that is being migrated. This data will be used to map the
         task to a resource in the Application Discovery Service repository.</p>")
  @as("ResourceAttributeList")
  resourceAttributeList: option<latestResourceAttributeList>,
  @ocaml.doc("<p>The timestamp when the task was gathered.</p>") @as("UpdateDateTime")
  updateDateTime: option<updateDateTime>,
  @ocaml.doc("<p>Task object encapsulating task information.</p>") @as("Task") task: option<task>,
  @ocaml.doc("<p>Unique identifier that references the migration task. <i>Do not store personal
            data in this field.</i>
         </p>")
  @as("MigrationTaskName")
  migrationTaskName: option<migrationTaskName>,
  @ocaml.doc("<p>A name that identifies the vendor of the migration tool being used.</p>")
  @as("ProgressUpdateStream")
  progressUpdateStream: option<progressUpdateStream>,
}
@ocaml.doc("<p>The AWS Migration Hub API methods help to obtain server and application migration status
         and integrate your resource-specific migration tool by providing a programmatic interface
         to Migration Hub.</p>
         <p>Remember that you must set your AWS Migration Hub home region before you call any of
         these APIs, or a <code>HomeRegionNotSetException</code> error will be returned. Also, you
         must make the API calls while in your home region.</p>")
module NotifyApplicationState = {
  type t
  type request = {
    @ocaml.doc("<p>Optional boolean flag to indicate whether any effect should take place. Used to test if
         the caller has permission to make the call.</p>")
    @as("DryRun")
    dryRun: option<dryRun>,
    @ocaml.doc("<p>The timestamp when the application state changed.</p>") @as("UpdateDateTime")
    updateDateTime: option<updateDateTime>,
    @ocaml.doc("<p>Status of the application - Not Started, In-Progress, Complete.</p>")
    @as("Status")
    status: applicationStatus,
    @ocaml.doc("<p>The configurationId in Application Discovery Service that uniquely identifies the
         grouped application.</p>")
    @as("ApplicationId")
    applicationId: applicationId,
  }

  @module("@aws-sdk/client-mgh") @new external new: request => t = "NotifyApplicationStateCommand"
  let make = (~status, ~applicationId, ~dryRun=?, ~updateDateTime=?, ()) =>
    new({
      dryRun: dryRun,
      updateDateTime: updateDateTime,
      status: status,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ImportMigrationTask = {
  type t
  type request = {
    @ocaml.doc("<p>Optional boolean flag to indicate whether any effect should take place. Used to test if
         the caller has permission to make the call.</p>")
    @as("DryRun")
    dryRun: option<dryRun>,
    @ocaml.doc("<p>Unique identifier that references the migration task. <i>Do not store personal
            data in this field.</i>
         </p>")
    @as("MigrationTaskName")
    migrationTaskName: migrationTaskName,
    @ocaml.doc("<p>The name of the ProgressUpdateStream. ></p>") @as("ProgressUpdateStream")
    progressUpdateStream: progressUpdateStream,
  }

  @module("@aws-sdk/client-mgh") @new external new: request => t = "ImportMigrationTaskCommand"
  let make = (~migrationTaskName, ~progressUpdateStream, ~dryRun=?, ()) =>
    new({
      dryRun: dryRun,
      migrationTaskName: migrationTaskName,
      progressUpdateStream: progressUpdateStream,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateDiscoveredResource = {
  type t
  type request = {
    @ocaml.doc("<p>Optional boolean flag to indicate whether any effect should take place. Used to test if
         the caller has permission to make the call.</p>")
    @as("DryRun")
    dryRun: option<dryRun>,
    @ocaml.doc("<p>ConfigurationId of the Application Discovery Service resource to be
         disassociated.</p>")
    @as("ConfigurationId")
    configurationId: configurationId,
    @ocaml.doc("<p>The identifier given to the MigrationTask. <i>Do not store personal data in this
            field.</i>
         </p>")
    @as("MigrationTaskName")
    migrationTaskName: migrationTaskName,
    @ocaml.doc("<p>The name of the ProgressUpdateStream.</p>") @as("ProgressUpdateStream")
    progressUpdateStream: progressUpdateStream,
  }

  @module("@aws-sdk/client-mgh") @new
  external new: request => t = "DisassociateDiscoveredResourceCommand"
  let make = (~configurationId, ~migrationTaskName, ~progressUpdateStream, ~dryRun=?, ()) =>
    new({
      dryRun: dryRun,
      configurationId: configurationId,
      migrationTaskName: migrationTaskName,
      progressUpdateStream: progressUpdateStream,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateCreatedArtifact = {
  type t
  type request = {
    @ocaml.doc("<p>Optional boolean flag to indicate whether any effect should take place. Used to test if
         the caller has permission to make the call.</p>")
    @as("DryRun")
    dryRun: option<dryRun>,
    @ocaml.doc("<p>An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS
         instance, etc.)</p>")
    @as("CreatedArtifactName")
    createdArtifactName: createdArtifactName,
    @ocaml.doc("<p>Unique identifier that references the migration task to be disassociated with the
         artifact. <i>Do not store personal data in this field.</i>
         </p>")
    @as("MigrationTaskName")
    migrationTaskName: migrationTaskName,
    @ocaml.doc("<p>The name of the ProgressUpdateStream. </p>") @as("ProgressUpdateStream")
    progressUpdateStream: progressUpdateStream,
  }

  @module("@aws-sdk/client-mgh") @new
  external new: request => t = "DisassociateCreatedArtifactCommand"
  let make = (~createdArtifactName, ~migrationTaskName, ~progressUpdateStream, ~dryRun=?, ()) =>
    new({
      dryRun: dryRun,
      createdArtifactName: createdArtifactName,
      migrationTaskName: migrationTaskName,
      progressUpdateStream: progressUpdateStream,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeApplicationState = {
  type t
  type request = {
    @ocaml.doc("<p>The configurationId in Application Discovery Service that uniquely identifies the
         grouped application.</p>")
    @as("ApplicationId")
    applicationId: applicationId,
  }
  type response = {
    @ocaml.doc("<p>The timestamp when the application status was last updated.</p>")
    @as("LastUpdatedTime")
    lastUpdatedTime: option<updateDateTime>,
    @ocaml.doc("<p>Status of the application - Not Started, In-Progress, Complete.</p>")
    @as("ApplicationStatus")
    applicationStatus: option<applicationStatus>,
  }
  @module("@aws-sdk/client-mgh") @new external new: request => t = "DescribeApplicationStateCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProgressUpdateStream = {
  type t
  type request = {
    @ocaml.doc("<p>Optional boolean flag to indicate whether any effect should take place. Used to test if
         the caller has permission to make the call.</p>")
    @as("DryRun")
    dryRun: option<dryRun>,
    @ocaml.doc("<p>The name of the ProgressUpdateStream. <i>Do not store personal data in this
            field.</i>
         </p>")
    @as("ProgressUpdateStreamName")
    progressUpdateStreamName: progressUpdateStream,
  }

  @module("@aws-sdk/client-mgh") @new
  external new: request => t = "DeleteProgressUpdateStreamCommand"
  let make = (~progressUpdateStreamName, ~dryRun=?, ()) =>
    new({dryRun: dryRun, progressUpdateStreamName: progressUpdateStreamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateProgressUpdateStream = {
  type t
  type request = {
    @ocaml.doc("<p>Optional boolean flag to indicate whether any effect should take place. Used to test if
         the caller has permission to make the call.</p>")
    @as("DryRun")
    dryRun: option<dryRun>,
    @ocaml.doc("<p>The name of the ProgressUpdateStream. <i>Do not store personal data in this
            field.</i>
         </p>")
    @as("ProgressUpdateStreamName")
    progressUpdateStreamName: progressUpdateStream,
  }

  @module("@aws-sdk/client-mgh") @new
  external new: request => t = "CreateProgressUpdateStreamCommand"
  let make = (~progressUpdateStreamName, ~dryRun=?, ()) =>
    new({dryRun: dryRun, progressUpdateStreamName: progressUpdateStreamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module NotifyMigrationTaskState = {
  type t
  type request = {
    @ocaml.doc("<p>Optional boolean flag to indicate whether any effect should take place. Used to test if
         the caller has permission to make the call.</p>")
    @as("DryRun")
    dryRun: option<dryRun>,
    @ocaml.doc("<p>Number of seconds after the UpdateDateTime within which the Migration Hub can expect an
         update. If Migration Hub does not receive an update within the specified interval, then the
         migration task will be considered stale.</p>")
    @as("NextUpdateSeconds")
    nextUpdateSeconds: nextUpdateSeconds,
    @ocaml.doc("<p>The timestamp when the task was gathered.</p>") @as("UpdateDateTime")
    updateDateTime: updateDateTime,
    @ocaml.doc("<p>Information about the task's progress and status.</p>") @as("Task") task: task,
    @ocaml.doc("<p>Unique identifier that references the migration task. <i>Do not store personal
            data in this field.</i>
         </p>")
    @as("MigrationTaskName")
    migrationTaskName: migrationTaskName,
    @ocaml.doc("<p>The name of the ProgressUpdateStream. </p>") @as("ProgressUpdateStream")
    progressUpdateStream: progressUpdateStream,
  }

  @module("@aws-sdk/client-mgh") @new external new: request => t = "NotifyMigrationTaskStateCommand"
  let make = (
    ~nextUpdateSeconds,
    ~updateDateTime,
    ~task,
    ~migrationTaskName,
    ~progressUpdateStream,
    ~dryRun=?,
    (),
  ) =>
    new({
      dryRun: dryRun,
      nextUpdateSeconds: nextUpdateSeconds,
      updateDateTime: updateDateTime,
      task: task,
      migrationTaskName: migrationTaskName,
      progressUpdateStream: progressUpdateStream,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateDiscoveredResource = {
  type t
  type request = {
    @ocaml.doc("<p>Optional boolean flag to indicate whether any effect should take place. Used to test if
         the caller has permission to make the call.</p>")
    @as("DryRun")
    dryRun: option<dryRun>,
    @ocaml.doc("<p>Object representing a Resource.</p>") @as("DiscoveredResource")
    discoveredResource: discoveredResource,
    @ocaml.doc("<p>The identifier given to the MigrationTask. <i>Do not store personal data in this
            field.</i>
         </p>")
    @as("MigrationTaskName")
    migrationTaskName: migrationTaskName,
    @ocaml.doc("<p>The name of the ProgressUpdateStream.</p>") @as("ProgressUpdateStream")
    progressUpdateStream: progressUpdateStream,
  }

  @module("@aws-sdk/client-mgh") @new
  external new: request => t = "AssociateDiscoveredResourceCommand"
  let make = (~discoveredResource, ~migrationTaskName, ~progressUpdateStream, ~dryRun=?, ()) =>
    new({
      dryRun: dryRun,
      discoveredResource: discoveredResource,
      migrationTaskName: migrationTaskName,
      progressUpdateStream: progressUpdateStream,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateCreatedArtifact = {
  type t
  type request = {
    @ocaml.doc("<p>Optional boolean flag to indicate whether any effect should take place. Used to test if
         the caller has permission to make the call.</p>")
    @as("DryRun")
    dryRun: option<dryRun>,
    @ocaml.doc("<p>An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS
         instance, etc.) </p>")
    @as("CreatedArtifact")
    createdArtifact: createdArtifact,
    @ocaml.doc("<p>Unique identifier that references the migration task. <i>Do not store personal
            data in this field.</i>
         </p>")
    @as("MigrationTaskName")
    migrationTaskName: migrationTaskName,
    @ocaml.doc("<p>The name of the ProgressUpdateStream. </p>") @as("ProgressUpdateStream")
    progressUpdateStream: progressUpdateStream,
  }

  @module("@aws-sdk/client-mgh") @new external new: request => t = "AssociateCreatedArtifactCommand"
  let make = (~createdArtifact, ~migrationTaskName, ~progressUpdateStream, ~dryRun=?, ()) =>
    new({
      dryRun: dryRun,
      createdArtifact: createdArtifact,
      migrationTaskName: migrationTaskName,
      progressUpdateStream: progressUpdateStream,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutResourceAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>Optional boolean flag to indicate whether any effect should take place. Used to test if
         the caller has permission to make the call.</p>")
    @as("DryRun")
    dryRun: option<dryRun>,
    @ocaml.doc("<p>Information about the resource that is being migrated. This data will be used to map the
         task to a resource in the Application Discovery Service repository.</p>
         <note>
            <p>Takes the object array of <code>ResourceAttribute</code> where the <code>Type</code>
            field is reserved for the following values: <code>IPV4_ADDRESS | IPV6_ADDRESS |
               MAC_ADDRESS | FQDN | VM_MANAGER_ID | VM_MANAGED_OBJECT_REFERENCE | VM_NAME | VM_PATH
               | BIOS_ID | MOTHERBOARD_SERIAL_NUMBER</code> where the identifying value can be a
            string up to 256 characters.</p>
         </note>
         <important>
            <ul>
               <li>

                  <p>If any \"VM\" related value is set for a <code>ResourceAttribute</code> object,
                  it is required that <code>VM_MANAGER_ID</code>, as a minimum, is always set. If
                     <code>VM_MANAGER_ID</code> is not set, then all \"VM\" fields will be discarded
                  and \"VM\" fields will not be used for matching the migration task to a server in
                  Application Discovery Service repository. See the <a href=\"https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#API_PutResourceAttributes_Examples\">Example</a> section below for a use case of specifying \"VM\" related
                  values.</p>
               </li>
               <li>
                  <p> If a server you are trying to match has multiple IP or MAC addresses, you
                  should provide as many as you know in separate type/value pairs passed to the
                     <code>ResourceAttributeList</code> parameter to maximize the chances of
                  matching.</p>
               </li>
            </ul>
         </important>")
    @as("ResourceAttributeList")
    resourceAttributeList: resourceAttributeList,
    @ocaml.doc("<p>Unique identifier that references the migration task. <i>Do not store personal
            data in this field.</i>
         </p>")
    @as("MigrationTaskName")
    migrationTaskName: migrationTaskName,
    @ocaml.doc("<p>The name of the ProgressUpdateStream. </p>") @as("ProgressUpdateStream")
    progressUpdateStream: progressUpdateStream,
  }

  @module("@aws-sdk/client-mgh") @new external new: request => t = "PutResourceAttributesCommand"
  let make = (~resourceAttributeList, ~migrationTaskName, ~progressUpdateStream, ~dryRun=?, ()) =>
    new({
      dryRun: dryRun,
      resourceAttributeList: resourceAttributeList,
      migrationTaskName: migrationTaskName,
      progressUpdateStream: progressUpdateStream,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListProgressUpdateStreams = {
  type t
  type request = {
    @ocaml.doc("<p>Filter to limit the maximum number of results to list per page.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If a <code>NextToken</code> was returned by a previous call, there are more results
         available. To retrieve the next page of results, make the call again using the returned
         token in <code>NextToken</code>.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>If there are more streams created than the max result, return the next token to be
         passed to the next call as a bookmark of where to start from.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>List of progress update streams up to the max number of results passed in the
         input.</p>")
    @as("ProgressUpdateStreamSummaryList")
    progressUpdateStreamSummaryList: option<progressUpdateStreamSummaryList>,
  }
  @module("@aws-sdk/client-mgh") @new
  external new: request => t = "ListProgressUpdateStreamsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMigrationTasks = {
  type t
  type request = {
    @ocaml.doc("<p>Filter migration tasks by discovered resource name.</p>") @as("ResourceName")
    resourceName: option<resourceName>,
    @ocaml.doc("<p>Value to specify how many results are returned per page.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If a <code>NextToken</code> was returned by a previous call, there are more results
         available. To retrieve the next page of results, make the call again using the returned
         token in <code>NextToken</code>.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>Lists the migration task's summary which includes: <code>MigrationTaskName</code>,
            <code>ProgressPercent</code>, <code>ProgressUpdateStream</code>, <code>Status</code>,
         and the <code>UpdateDateTime</code> for each task.</p>")
    @as("MigrationTaskSummaryList")
    migrationTaskSummaryList: option<migrationTaskSummaryList>,
    @ocaml.doc("<p>If there are more migration tasks than the max result, return the next token to be
         passed to the next call as a bookmark of where to start from.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  @module("@aws-sdk/client-mgh") @new external new: request => t = "ListMigrationTasksCommand"
  let make = (~resourceName=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({resourceName: resourceName, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDiscoveredResources = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results returned per page.</p>") @as("MaxResults")
    maxResults: option<maxResultsResources>,
    @ocaml.doc("<p>If a <code>NextToken</code> was returned by a previous call, there are more results
         available. To retrieve the next page of results, make the call again using the returned
         token in <code>NextToken</code>.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The name of the MigrationTask. <i>Do not store personal data in this
            field.</i>
         </p>")
    @as("MigrationTaskName")
    migrationTaskName: migrationTaskName,
    @ocaml.doc("<p>The name of the ProgressUpdateStream.</p>") @as("ProgressUpdateStream")
    progressUpdateStream: progressUpdateStream,
  }
  type response = {
    @ocaml.doc(
      "<p>Returned list of discovered resources associated with the given MigrationTask.</p>"
    )
    @as("DiscoveredResourceList")
    discoveredResourceList: option<discoveredResourceList>,
    @ocaml.doc("<p>If there are more discovered resources than the max result, return the next token to be
         passed to the next call as a bookmark of where to start from.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  @module("@aws-sdk/client-mgh") @new external new: request => t = "ListDiscoveredResourcesCommand"
  let make = (~migrationTaskName, ~progressUpdateStream, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      migrationTaskName: migrationTaskName,
      progressUpdateStream: progressUpdateStream,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCreatedArtifacts = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of results to be returned per page.</p>") @as("MaxResults")
    maxResults: option<maxResultsCreatedArtifacts>,
    @ocaml.doc("<p>If a <code>NextToken</code> was returned by a previous call, there are more results
         available. To retrieve the next page of results, make the call again using the returned
         token in <code>NextToken</code>.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>Unique identifier that references the migration task. <i>Do not store personal
            data in this field.</i>
         </p>")
    @as("MigrationTaskName")
    migrationTaskName: migrationTaskName,
    @ocaml.doc("<p>The name of the ProgressUpdateStream. </p>") @as("ProgressUpdateStream")
    progressUpdateStream: progressUpdateStream,
  }
  type response = {
    @ocaml.doc("<p>List of created artifacts up to the maximum number of results specified in the
         request.</p>")
    @as("CreatedArtifactList")
    createdArtifactList: option<createdArtifactList>,
    @ocaml.doc("<p>If there are more created artifacts than the max result, return the next token to be
         passed to the next call as a bookmark of where to start from.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  @module("@aws-sdk/client-mgh") @new external new: request => t = "ListCreatedArtifactsCommand"
  let make = (~migrationTaskName, ~progressUpdateStream, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      migrationTaskName: migrationTaskName,
      progressUpdateStream: progressUpdateStream,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplicationStates = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of results to be returned per page.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If a <code>NextToken</code> was returned by a previous call, there are more results
         available. To retrieve the next page of results, make the call again using the returned
         token in <code>NextToken</code>.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The configurationIds from the Application Discovery Service that uniquely identifies
         your applications.</p>")
    @as("ApplicationIds")
    applicationIds: option<applicationIds>,
  }
  type response = {
    @ocaml.doc("<p>If a <code>NextToken</code> was returned by a previous call, there are more results
         available. To retrieve the next page of results, make the call again using the returned
         token in <code>NextToken</code>.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of Applications that exist in Application Discovery Service.</p>")
    @as("ApplicationStateList")
    applicationStateList: option<applicationStateList>,
  }
  @module("@aws-sdk/client-mgh") @new external new: request => t = "ListApplicationStatesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~applicationIds=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, applicationIds: applicationIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMigrationTask = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier given to the MigrationTask. <i>Do not store personal data in this
            field.</i>
         </p>")
    @as("MigrationTaskName")
    migrationTaskName: migrationTaskName,
    @ocaml.doc("<p>The name of the ProgressUpdateStream. </p>") @as("ProgressUpdateStream")
    progressUpdateStream: progressUpdateStream,
  }
  type response = {
    @ocaml.doc("<p>Object encapsulating information about the migration task.</p>")
    @as("MigrationTask")
    migrationTask: option<migrationTask>,
  }
  @module("@aws-sdk/client-mgh") @new external new: request => t = "DescribeMigrationTaskCommand"
  let make = (~migrationTaskName, ~progressUpdateStream, ()) =>
    new({migrationTaskName: migrationTaskName, progressUpdateStream: progressUpdateStream})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
