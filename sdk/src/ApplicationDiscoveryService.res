type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-discovery") @new
external createClient: unit => awsServiceClient = "ApplicationDiscoveryServiceClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type orderString = [@as("DESC") #DESC | @as("ASC") #ASC]
type timeStamp = Js.Date.t
type tagValue = string
type tagKey = string
type stringMax255 = string
type string_ = string
type s3PresignedUrl = string
type s3Bucket = string
type nextToken = string
type message = string
type long = float
type integer_ = int
type importURL = string
type importTaskName = string
type importTaskIdentifier = string
type importTaskFilterValue = string
type importTaskFilterName = [
  | @as("NAME") #NAME
  | @as("STATUS") #STATUS
  | @as("IMPORT_TASK_ID") #IMPORT_TASK_ID
]
type importStatus = [
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
  | @as("DELETE_FAILED_LIMIT_EXCEEDED") #DELETE_FAILED_LIMIT_EXCEEDED
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETE_COMPLETE") #DELETE_COMPLETE
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("IMPORT_FAILED_RECORD_LIMIT_EXCEEDED") #IMPORT_FAILED_RECORD_LIMIT_EXCEEDED
  | @as("IMPORT_FAILED_SERVER_LIMIT_EXCEEDED") #IMPORT_FAILED_SERVER_LIMIT_EXCEEDED
  | @as("IMPORT_FAILED") #IMPORT_FAILED
  | @as("IMPORT_COMPLETE_WITH_ERRORS") #IMPORT_COMPLETE_WITH_ERRORS
  | @as("IMPORT_COMPLETE") #IMPORT_COMPLETE
  | @as("IMPORT_IN_PROGRESS") #IMPORT_IN_PROGRESS
]
type filterValue = string
type filterName = string
type exportStatusMessage = string
type exportStatus = [
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("FAILED") #FAILED
]
type exportRequestTime = Js.Date.t
type exportDataFormat = [@as("GRAPHML") #GRAPHML | @as("CSV") #CSV]
type describeImportTasksMaxResults = int
type describeContinuousExportsMaxResults = int
type databaseName = string
type dataSource = [@as("AGENT") #AGENT]
type continuousExportStatus = [
  | @as("INACTIVE") #INACTIVE
  | @as("STOP_FAILED") #STOP_FAILED
  | @as("STOP_IN_PROGRESS") #STOP_IN_PROGRESS
  | @as("ERROR") #ERROR
  | @as("ACTIVE") #ACTIVE
  | @as("START_FAILED") #START_FAILED
  | @as("START_IN_PROGRESS") #START_IN_PROGRESS
]
type configurationsExportId = string
type configurationsDownloadUrl = string
type configurationItemType = [
  | @as("APPLICATION") #APPLICATION
  | @as("CONNECTION") #CONNECTION
  | @as("PROCESS") #PROCESS
  | @as("SERVER") #SERVER
]
type configurationId = string
type condition = string
type clientRequestToken = string
type boxedInteger = int
type boolean_ = bool
type batchDeleteImportDataErrorDescription = string
type batchDeleteImportDataErrorCode = [
  | @as("OVER_LIMIT") #OVER_LIMIT
  | @as("INTERNAL_SERVER_ERROR") #INTERNAL_SERVER_ERROR
  | @as("NOT_FOUND") #NOT_FOUND
]
type applicationId = string
type agentStatus = [
  | @as("SHUTDOWN") #SHUTDOWN
  | @as("BLACKLISTED") #BLACKLISTED
  | @as("UNKNOWN") #UNKNOWN
  | @as("RUNNING") #RUNNING
  | @as("UNHEALTHY") #UNHEALTHY
  | @as("HEALTHY") #HEALTHY
]
type agentId = string
type toDeleteIdentifierList = array<importTaskIdentifier>
@ocaml.doc("<p>Metadata that help you categorize IT assets.</p>")
type tag = {
  @ocaml.doc("<p>A value for a tag key on which to filter.</p>") value: tagValue,
  @ocaml.doc("<p>The type of tag on which to filter.</p>") key: tagKey,
}
type schemaStorageConfig = Js.Dict.t<string_>
@ocaml.doc("<p>A field and direction for ordered output.</p>")
type orderByElement = {
  @ocaml.doc("<p>Ordering direction.</p>") sortOrder: option<orderString>,
  @ocaml.doc("<p>The field on which to order.</p>") fieldName: string_,
}
@ocaml.doc("<p>Details about neighboring servers.</p>")
type neighborConnectionDetail = {
  @ocaml.doc("<p>The number of open network connections with the neighboring server.</p>")
  connectionsCount: long,
  @ocaml.doc("<p>The network protocol used for the connection.</p>")
  transportProtocol: option<string_>,
  @ocaml.doc("<p>The destination network port for the connection.</p>")
  destinationPort: option<boxedInteger>,
  @ocaml.doc("<p>The ID of the server that accepted the network connection.</p>")
  destinationServerId: configurationId,
  @ocaml.doc("<p>The ID of the server that opened the network connection.</p>")
  sourceServerId: configurationId,
}
type importTaskFilterValueList = array<importTaskFilterValue>
@ocaml.doc("<p>An array of information related to the import task request that includes status
      information, times, IDs, the Amazon S3 Object URL for the import file, and more.</p>")
type importTask = {
  @ocaml.doc("<p>A link to a compressed archive folder (in the ZIP format) that contains an error log and a
      file of failed records. You can use these two files to quickly identify records that failed,
      why they failed, and correct those records. Afterward, you can upload the corrected file to
      your Amazon S3 bucket and create another import task request.</p>

         <p>This field also includes authorization information so you can confirm the authenticity of
      the compressed archive before you download it.</p>

         <p>If some records failed to be imported we recommend that you correct the records in the
      failed entries file and then imports that failed entries file. This prevents you from having
      to correct and update the larger original file and attempt importing it again.</p>")
  errorsAndFailedEntriesZip: option<s3PresignedUrl>,
  @ocaml.doc("<p>The total number of application records in the import file that failed to be
      imported.</p>")
  applicationImportFailure: option<integer_>,
  @ocaml.doc("<p>The total number of application records in the import file that were successfully
      imported.</p>")
  applicationImportSuccess: option<integer_>,
  @ocaml.doc(
    "<p>The total number of server records in the import file that failed to be imported.</p>"
  )
  serverImportFailure: option<integer_>,
  @ocaml.doc("<p>The total number of server records in the import file that were successfully
      imported.</p>")
  serverImportSuccess: option<integer_>,
  @ocaml.doc("<p>The time that the import task request was deleted, presented in the Unix time stamp
      format.</p>")
  importDeletedTime: option<timeStamp>,
  @ocaml.doc("<p>The time that the import task request finished, presented in the Unix time stamp
      format.</p>")
  importCompletionTime: option<timeStamp>,
  @ocaml.doc("<p>The time that the import task request was made, presented in the Unix time stamp
      format.</p>")
  importRequestTime: option<timeStamp>,
  @ocaml.doc("<p>The status of the import task. An import can have the status of
        <code>IMPORT_COMPLETE</code> and still have some records fail to import from the overall
      request. More information can be found in the downloadable archive defined in the
        <code>errorsAndFailedEntriesZip</code> field, or in the Migration Hub management
      console.</p>")
  status: option<importStatus>,
  @ocaml.doc("<p>The URL for your import file that you've uploaded to Amazon S3.</p>")
  importUrl: option<importURL>,
  @ocaml.doc("<p>A descriptive name for an import task. You can use this name to filter future requests
      related to this import task, such as identifying applications and servers that were included
      in this import task. We recommend that you use a meaningful name for each import task.</p>")
  name: option<importTaskName>,
  @ocaml.doc("<p>A unique token used to prevent the same import request from occurring more than once. If
      you didn't provide a token, a token was automatically generated when the import task request
      was sent.</p>")
  clientRequestToken: option<clientRequestToken>,
  @ocaml.doc("<p>The unique ID for a specific import task. These IDs aren't globally unique, but they are
      unique within an AWS account.</p>")
  importTaskId: option<importTaskIdentifier>,
}
type filterValues = array<filterValue>
@ocaml.doc("<p>Information regarding the export status of discovered data. The value is an array of
      objects.</p>")
type exportInfo = {
  @ocaml.doc("<p>The <code>endTime</code> used in the <code>StartExportTask</code> request. If no
        <code>endTime</code> was requested, this result does not appear in
      <code>ExportInfo</code>.</p>")
  requestedEndTime: option<timeStamp>,
  @ocaml.doc("<p>The value of <code>startTime</code> parameter in the <code>StartExportTask</code>
      request. If no <code>startTime</code> was requested, this result does not appear in
        <code>ExportInfo</code>.</p>")
  requestedStartTime: option<timeStamp>,
  @ocaml.doc("<p>If true, the export of agent information exceeded the size limit for a single export
      and the exported data is incomplete for the requested time range. To address this, select a
      smaller time range for the export by using <code>startDate</code> and
      <code>endDate</code>.</p>")
  isTruncated: option<boolean_>,
  @ocaml.doc("<p>The time that the data export was initiated.</p>")
  exportRequestTime: exportRequestTime,
  @ocaml.doc("<p>A URL for an Amazon S3 bucket where you can review the exported data. The URL is
      displayed only if the export succeeded.</p>")
  configurationsDownloadUrl: option<configurationsDownloadUrl>,
  @ocaml.doc("<p>A status message provided for API callers.</p>")
  statusMessage: exportStatusMessage,
  @ocaml.doc("<p>The status of the data export job.</p>") exportStatus: exportStatus,
  @ocaml.doc("<p>A unique identifier used to query an export.</p>")
  exportId: configurationsExportId,
}
type exportIds = array<configurationsExportId>
type exportDataFormats = array<exportDataFormat>
type describeConfigurationsAttribute = Js.Dict.t<string_>
@ocaml.doc("<p>Inventory data for installed discovery connectors.</p>")
type customerConnectorInfo = {
  @ocaml.doc("<p>Number of unknown discovery connectors.</p>") unknownConnectors: integer_,
  @ocaml.doc("<p>Total number of discovery connectors.</p>") totalConnectors: integer_,
  @ocaml.doc("<p>Number of unhealthy discovery connectors.</p>") unhealthyConnectors: integer_,
  @ocaml.doc("<p>Number of discovery connectors with status SHUTDOWN,</p>")
  shutdownConnectors: integer_,
  @ocaml.doc("<p>Number of blacklisted discovery connectors.</p>") blackListedConnectors: integer_,
  @ocaml.doc("<p>Number of healthy discovery connectors.</p>") healthyConnectors: integer_,
  @ocaml.doc("<p>Number of active discovery connectors.</p>") activeConnectors: integer_,
}
@ocaml.doc("<p>Inventory data for installed discovery agents.</p>")
type customerAgentInfo = {
  @ocaml.doc("<p>Number of unknown discovery agents.</p>") unknownAgents: integer_,
  @ocaml.doc("<p>Total number of discovery agents.</p>") totalAgents: integer_,
  @ocaml.doc("<p>Number of unhealthy discovery agents.</p>") unhealthyAgents: integer_,
  @ocaml.doc("<p>Number of discovery agents with status SHUTDOWN.</p>") shutdownAgents: integer_,
  @ocaml.doc("<p>Number of blacklisted discovery agents.</p>") blackListedAgents: integer_,
  @ocaml.doc("<p>Number of healthy discovery agents</p>") healthyAgents: integer_,
  @ocaml.doc("<p>Number of active discovery agents.</p>") activeAgents: integer_,
}
type continuousExportIds = array<configurationsExportId>
@ocaml.doc("<p>Tags for a configuration item. Tags are metadata that help you categorize IT
      assets.</p>")
type configurationTag = {
  @ocaml.doc("<p>The time the configuration tag was created in Coordinated Universal Time
      (UTC).</p>")
  timeOfCreation: option<timeStamp>,
  @ocaml.doc("<p>A value on which to filter. For example <i>key = serverType</i> and
        <i>value = web server</i>.</p>")
  value: option<tagValue>,
  @ocaml.doc("<p>A type of tag on which to filter. For example,
      <i>serverType</i>.</p>")
  key: option<tagKey>,
  @ocaml.doc("<p>The configuration ID for the item to tag. You can specify a list of keys and
      values.</p>")
  configurationId: option<configurationId>,
  @ocaml.doc("<p>A type of IT asset to tag.</p>") configurationType: option<configurationItemType>,
}
type configurationIdList = array<configurationId>
type configuration = Js.Dict.t<string_>
@ocaml.doc("<p>Error messages returned for each import task that you deleted as a response for this
      command.</p>")
type batchDeleteImportDataError = {
  @ocaml.doc("<p>The description of the error that occurred for a specific import task.</p>")
  errorDescription: option<batchDeleteImportDataErrorDescription>,
  @ocaml.doc("<p>The type of error that occurred for a specific import task.</p>")
  errorCode: option<batchDeleteImportDataErrorCode>,
  @ocaml.doc("<p>The unique import ID associated with the error that occurred.</p>")
  importTaskId: option<importTaskIdentifier>,
}
type applicationIdsList = array<applicationId>
@ocaml.doc("<p>Network details about the host where the agent/connector resides.</p>")
type agentNetworkInfo = {
  @ocaml.doc("<p>The MAC address for the host where the agent/connector resides.</p>")
  macAddress: option<string_>,
  @ocaml.doc("<p>The IP address for the host where the agent/connector resides.</p>")
  ipAddress: option<string_>,
}
type agentIds = array<agentId>
@ocaml.doc("<p>Information about agents or connectors that were instructed to start collecting data.
      Information includes the agent/connector ID, a description of the operation, and whether the
      agent/connector configuration was updated.</p>")
type agentConfigurationStatus = {
  @ocaml.doc("<p>A description of the operation performed.</p>") description: option<string_>,
  @ocaml.doc("<p>Information about the status of the <code>StartDataCollection</code> and
        <code>StopDataCollection</code> operations. The system has recorded the data collection
      operation. The agent/connector receives this command the next time it polls for a new command.
    </p>")
  operationSucceeded: option<boolean_>,
  @ocaml.doc("<p>The agent/connector ID.</p>") agentId: option<string_>,
}
type tagSet = array<tag>
@ocaml.doc("<p>The tag filter. Valid names are: <code>tagKey</code>, <code>tagValue</code>,
        <code>configurationId</code>.</p>")
type tagFilter = {
  @ocaml.doc("<p>Values for the tag filter.</p>") values: filterValues,
  @ocaml.doc("<p>A name of the tag filter.</p>") name: filterName,
}
type orderByList = array<orderByElement>
type neighborDetailsList = array<neighborConnectionDetail>
type importTaskList = array<importTask>
@ocaml.doc("<p>A name-values pair of elements you can use to filter the results when querying your import
      tasks. Currently, wildcards are not supported for filters.</p>

         <note>
            <p>When filtering by import status, all other filter values are ignored.</p>
         </note>")
type importTaskFilter = {
  @ocaml.doc("<p>An array of strings that you can provide to match against a specific name, status, or
      import task ID to filter the results for your import task queries.</p>")
  values: option<importTaskFilterValueList>,
  @ocaml.doc("<p>The name, status, or import task ID for a specific import task.</p>")
  name: option<importTaskFilterName>,
}
@ocaml.doc("<p>A filter that can use conditional operators.</p>
         <p>For more information about filters, see <a href=\"https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html\">Querying Discovered
        Configuration Items</a> in the <i>AWS Application Discovery Service User
        Guide</i>. </p>")
type filter = {
  @ocaml.doc("<p>A conditional operator. The following operators are valid: EQUALS, NOT_EQUALS,
      CONTAINS, NOT_CONTAINS. If you specify multiple filters, the system utilizes all filters as
      though concatenated by <i>AND</i>. If you specify multiple values for a
      particular filter, the system differentiates the values using <i>OR</i>. Calling
      either <i>DescribeConfigurations</i> or <i>ListConfigurations</i>
      returns attributes of matching configuration items.</p>")
  condition: condition,
  @ocaml.doc("<p>A string value on which to filter. For example, if you choose the
        <code>destinationServer.osVersion</code> filter name, you could specify <code>Ubuntu</code>
      for the value.</p>")
  values: filterValues,
  @ocaml.doc("<p>The name of the filter.</p>") name: string_,
}
type exportsInfo = array<exportInfo>
@ocaml.doc("<p>Used to select which agent's data is to be exported. A single agent ID may be selected
      for export using the <a href=\"http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_StartExportTask.html\">StartExportTask</a> action.</p>")
type exportFilter = {
  @ocaml.doc("<p>Supported condition: <code>EQUALS</code>
         </p>")
  condition: condition,
  @ocaml.doc("<p>A single <code>agentId</code> for a Discovery Agent. An <code>agentId</code> can be
      found using the <a href=\"http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeExportTasks.html\">DescribeAgents</a> action. Typically an ADS <code>agentId</code> is in the form
        <code>o-0123456789abcdef0</code>.</p>")
  values: filterValues,
  @ocaml.doc("<p>A single <code>ExportFilter</code> name. Supported filters:
      <code>agentId</code>.</p>")
  name: filterName,
}
type describeConfigurationsAttributes = array<describeConfigurationsAttribute>
@ocaml.doc("<p>A list of continuous export descriptions.</p>")
type continuousExportDescription = {
  @ocaml.doc("<p>An object which describes how the data is stored.</p>
         <ul>
            <li>
               <p>
                  <code>databaseName</code> - the name of the Glue database used to store the
          schema.</p>
            </li>
         </ul>")
  schemaStorageConfig: option<schemaStorageConfig>,
  @ocaml.doc("<p>The type of data collector used to gather this data (currently only offered for
      AGENT).</p>")
  dataSource: option<dataSource>,
  @ocaml.doc("<p>The timestamp that represents when this continuous export was stopped.</p>")
  stopTime: option<timeStamp>,
  @ocaml.doc("<p>The timestamp representing when the continuous export was started.</p>")
  startTime: option<timeStamp>,
  @ocaml.doc("<p>The name of the s3 bucket where the export data parquet files are stored.</p>")
  s3Bucket: option<s3Bucket>,
  @ocaml.doc("<p>Contains information about any errors that have occurred. This data type can have the
      following values:</p>

         <ul>
            <li>
               <p>ACCESS_DENIED - You don’t have permission to start Data Exploration in Amazon
          Athena. Contact your AWS administrator for help. For more information, see <a href=\"http://docs.aws.amazon.com/application-discovery/latest/userguide/setting-up.html\">Setting Up AWS Application Discovery Service</a> in the Application Discovery
          Service User Guide.</p>
            </li>
            <li>
               <p>DELIVERY_STREAM_LIMIT_FAILURE - You reached the limit for Amazon Kinesis Data
          Firehose delivery streams. Reduce the number of streams or request a limit increase and
          try again. For more information, see <a href=\"http://docs.aws.amazon.com/streams/latest/dev/service-sizes-and-limits.html\">Kinesis Data Streams Limits</a> in the Amazon Kinesis Data Streams Developer
          Guide.</p>
            </li>
            <li>
               <p>FIREHOSE_ROLE_MISSING - The Data Exploration feature is in an error state because
          your IAM User is missing the AWSApplicationDiscoveryServiceFirehose role. Turn on Data
          Exploration in Amazon Athena and try again. For more information, see <a href=\"http://docs.aws.amazon.com/application-discovery/latest/userguide/setting-up.html#setting-up-user-policy\">Step 3: Provide Application Discovery Service Access to Non-Administrator Users by
            Attaching Policies</a> in the Application Discovery Service User Guide.</p>
            </li>
            <li>
               <p>FIREHOSE_STREAM_DOES_NOT_EXIST - The Data Exploration feature is in an error state
          because your IAM User is missing one or more of the Kinesis data delivery
          streams.</p>
            </li>
            <li>
               <p>INTERNAL_FAILURE - The Data Exploration feature is in an error state because of an
          internal failure. Try again later. If this problem persists, contact AWS
          Support.</p>
            </li>
            <li>
               <p>S3_BUCKET_LIMIT_FAILURE - You reached the limit for Amazon S3 buckets. Reduce the
          number of Amazon S3 buckets or request a limit increase and try again. For more
          information, see <a href=\"http://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html\">Bucket
            Restrictions and Limitations</a> in the Amazon Simple Storage Service Developer
          Guide.</p>
            </li>
            <li>
               <p>S3_NOT_SIGNED_UP - Your account is not signed up for the Amazon S3 service. You
          must sign up before you can use Amazon S3. You can sign up at the following URL: <a href=\"https://aws.amazon.com/s3\">https://aws.amazon.com/s3</a>.</p>
            </li>
         </ul>")
  statusDetail: option<stringMax255>,
  @ocaml.doc("<p>Describes the status of the export. Can be one of the following values:</p>
         <ul>
            <li>
               <p>START_IN_PROGRESS - setting up resources to start continuous export.</p>
            </li>
            <li>
               <p>START_FAILED - an error occurred setting up continuous export. To recover, call
          start-continuous-export again.</p>
            </li>
            <li>
               <p>ACTIVE - data is being exported to the customer bucket.</p>
            </li>
            <li>
               <p>ERROR - an error occurred during export. To fix the issue, call
          stop-continuous-export and start-continuous-export.</p>
            </li>
            <li>
               <p>STOP_IN_PROGRESS - stopping the export.</p>
            </li>
            <li>
               <p>STOP_FAILED - an error occurred stopping the export. To recover, call
          stop-continuous-export again.</p>
            </li>
            <li>
               <p>INACTIVE - the continuous export has been stopped. Data is no longer being exported
          to the customer bucket.</p>
            </li>
         </ul>")
  status: option<continuousExportStatus>,
  @ocaml.doc("<p>The unique ID assigned to this export.</p>")
  exportId: option<configurationsExportId>,
}
type configurations = array<configuration>
type configurationTagSet = array<configurationTag>
type batchDeleteImportDataErrorList = array<batchDeleteImportDataError>
type agentNetworkInfoList = array<agentNetworkInfo>
type agentConfigurationStatusList = array<agentConfigurationStatus>
type tagFilters = array<tagFilter>
type filters = array<filter>
type exportFilters = array<exportFilter>
type describeImportTasksFilterList = array<importTaskFilter>
type continuousExportDescriptions = array<continuousExportDescription>
@ocaml.doc("<p>Information about agents or connectors associated with the user’s AWS account.
      Information includes agent or connector IDs, IP addresses, media access control (MAC)
      addresses, agent or connector health, hostname where the agent or connector resides, and agent
      version for each agent.</p>")
type agentInfo = {
  @ocaml.doc("<p>Agent's first registration timestamp in UTC.</p>") registeredTime: option<string_>,
  @ocaml.doc("<p>Type of agent.</p>") agentType: option<string_>,
  @ocaml.doc("<p>Status of the collection process for an agent or connector.</p>")
  collectionStatus: option<string_>,
  @ocaml.doc("<p>Time since agent or connector health was reported.</p>")
  lastHealthPingTime: option<string_>,
  @ocaml.doc("<p>The health of the agent or connector.</p>") health: option<agentStatus>,
  @ocaml.doc("<p>The agent or connector version.</p>") version: option<string_>,
  @ocaml.doc("<p>The ID of the connector.</p>") connectorId: option<string_>,
  @ocaml.doc("<p>Network details about the host where the agent or connector resides.</p>")
  agentNetworkInfoList: option<agentNetworkInfoList>,
  @ocaml.doc("<p>The name of the host where the agent or connector resides. The host can be a server or
      virtual machine.</p>")
  hostName: option<string_>,
  @ocaml.doc("<p>The agent or connector ID.</p>") agentId: option<agentId>,
}
type agentsInfo = array<agentInfo>
@ocaml.doc("<fullname>AWS Application Discovery Service</fullname>

         <p>AWS Application Discovery Service helps you plan application migration projects. It
      automatically identifies servers, virtual machines (VMs), and network dependencies in your
      on-premises data centers. For more information, see the <a href=\"http://aws.amazon.com/application-discovery/faqs/\">AWS Application Discovery Service
        FAQ</a>. Application Discovery Service offers three ways of performing discovery and
      collecting data about your on-premises servers:</p>

         <ul>
            <li>
               <p>
                  <b>Agentless discovery</b> is recommended for environments
          that use VMware vCenter Server. This mode doesn't require you to install an agent on each
          host. It does not work in non-VMware environments.</p>

               <ul>
                  <li>
                     <p>Agentless discovery gathers server information regardless of the operating
              systems, which minimizes the time required for initial on-premises infrastructure
              assessment.</p>
                  </li>
                  <li>
                     <p>Agentless discovery doesn't collect information about network dependencies, only
              agent-based discovery collects that information.</p>
                  </li>
               </ul>
            </li>
         </ul>

         <ul>
            <li>
               <p>
                  <b>Agent-based discovery</b> collects a richer set of data
          than agentless discovery by using the AWS Application Discovery Agent, which you install
          on one or more hosts in your data center.</p>

               <ul>
                  <li>
                     <p> The agent captures infrastructure and application information, including an
              inventory of running processes, system performance information, resource utilization,
              and network dependencies.</p>
                  </li>
                  <li>
                     <p>The information collected by agents is secured at rest and in transit to the
              Application Discovery Service database in the cloud. </p>
                  </li>
               </ul>
            </li>
         </ul>

         <ul>
            <li>
               <p>
                  <b>AWS Partner Network (APN) solutions</b> integrate with
          Application Discovery Service, enabling you to import details of your on-premises
          environment directly into Migration Hub without using the discovery connector or discovery
          agent.</p>

               <ul>
                  <li>
                     <p>Third-party application discovery tools can query AWS Application Discovery
              Service, and they can write to the Application Discovery Service database using the
              public API.</p>
                  </li>
                  <li>
                     <p>In this way, you can import data into Migration Hub and view it, so that you can
              associate applications with servers and track migrations.</p>
                  </li>
               </ul>
            </li>
         </ul>


         <p>
            <b>Recommendations</b>
         </p>
         <p>We recommend that you use agent-based discovery for non-VMware environments, and
      whenever you want to collect information about network dependencies. You can run agent-based
      and agentless discovery simultaneously. Use agentless discovery to complete the initial
      infrastructure assessment quickly, and then install agents on select hosts to collect
      additional information.</p>

         <p>
            <b>Working With This Guide</b>
         </p>

         <p>This API reference provides descriptions, syntax, and usage examples for each of the
      actions and data types for Application Discovery Service. The topic for each action shows the
      API request parameters and the response. Alternatively, you can use one of the AWS SDKs to
      access an API that is tailored to the programming language or platform that you're using. For
      more information, see <a href=\"http://aws.amazon.com/tools/#SDKs\">AWS
      SDKs</a>.</p>

         <note>
            <ul>
               <li>
                  <p>Remember that you must set your Migration Hub home region before you call any of
            these APIs.</p>
               </li>
               <li>
                  <p>You must make API calls for write actions (create, notify, associate, disassociate,
            import, or put) while in your home region, or a <code>HomeRegionNotSetException</code>
            error is returned.</p>
               </li>
               <li>
                  <p>API calls for read actions (list, describe, stop, and delete) are permitted outside
            of your home region.</p>
               </li>
               <li>
                  <p>Although it is unlikely, the Migration Hub home region could change. If you call
            APIs outside the home region, an <code>InvalidInputException</code> is returned.</p>
               </li>
               <li>
                  <p>You must call <code>GetHomeRegion</code> to obtain the latest Migration Hub home
            region.</p>
               </li>
            </ul>
         </note>

         <p>This guide is intended for use with the <a href=\"http://docs.aws.amazon.com/application-discovery/latest/userguide/\">AWS Application
        Discovery Service User Guide</a>.</p>

         <important>
            <p>All data is handled according to the <a href=\"http://aws.amazon.com/privacy/\">AWS
          Privacy Policy</a>. You can operate Application Discovery Service offline to inspect
        collected data before it is shared with the service.</p>
         </important>")
module UpdateApplication = {
  type t
  type request = {
    @ocaml.doc("<p>New description of the application to be updated.</p>")
    description: option<string_>,
    @ocaml.doc("<p>New name of the application to be updated.</p>") name: option<string_>,
    @ocaml.doc("<p>Configuration ID of the application to be updated.</p>")
    configurationId: applicationId,
  }
  type response = {.}
  @module("@aws-sdk/client-discovery") @new external new: request => t = "UpdateApplicationCommand"
  let make = (~configurationId, ~description=?, ~name=?, ()) =>
    new({description, name, configurationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StopContinuousExport = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID assigned to this export.</p>") exportId: configurationsExportId,
  }
  type response = {
    @ocaml.doc("<p>Timestamp that represents when this continuous export was stopped.</p>")
    stopTime: option<timeStamp>,
    @ocaml.doc("<p>Timestamp that represents when this continuous export started collecting
      data.</p>")
    startTime: option<timeStamp>,
  }
  @module("@aws-sdk/client-discovery") @new
  external new: request => t = "StopContinuousExportCommand"
  let make = (~exportId, ()) => new({exportId: exportId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ExportConfigurations = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>A unique identifier that you can use to query the export status.</p>")
    exportId: option<configurationsExportId>,
  }
  @module("@aws-sdk/client-discovery") @new
  external new: request => t = "ExportConfigurationsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateApplication = {
  type t
  type request = {
    @ocaml.doc("<p>Description of the application to be created.</p>") description: option<string_>,
    @ocaml.doc("<p>Name of the application to be created.</p>") name: string_,
  }
  type response = {
    @ocaml.doc("<p>Configuration ID of an application to be created.</p>")
    configurationId: option<string_>,
  }
  @module("@aws-sdk/client-discovery") @new external new: request => t = "CreateApplicationCommand"
  let make = (~name, ~description=?, ()) => new({description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartImportTask = {
  type t
  type request = {
    @ocaml.doc("<p>The URL for your import file that you've uploaded to Amazon S3.</p>

         <note>
            <p>If you're using the AWS CLI, this URL is structured as follows:
          <code>s3://BucketName/ImportFileName.CSV</code>
            </p>
         </note>")
    importUrl: importURL,
    @ocaml.doc("<p>A descriptive name for this request. You can use this name to filter future requests
      related to this import task, such as identifying applications and servers that were included
      in this import task. We recommend that you use a meaningful name for each import task.</p>")
    name: importTaskName,
    @ocaml.doc("<p>Optional. A unique token that you can provide to prevent the same import request from
      occurring more than once. If you don't provide a token, a token is automatically
      generated.</p>

         <p>Sending more than one <code>StartImportTask</code> request with the same client request
      token will return information about the original import task with that client request
      token.</p>")
    clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    @ocaml.doc("<p>An array of information related to the import task request including status information,
      times, IDs, the Amazon S3 Object URL for the import file, and more. </p>")
    task: option<importTask>,
  }
  @module("@aws-sdk/client-discovery") @new external new: request => t = "StartImportTaskCommand"
  let make = (~importUrl, ~name, ~clientRequestToken=?, ()) =>
    new({importUrl, name, clientRequestToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartContinuousExport = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>A dictionary which describes how the data is stored.</p>
         <ul>
            <li>
               <p>
                  <code>databaseName</code> - the name of the Glue database used to store the
          schema.</p>
            </li>
         </ul>")
    schemaStorageConfig: option<schemaStorageConfig>,
    @ocaml.doc("<p>The type of data collector used to gather this data (currently only offered for
      AGENT).</p>")
    dataSource: option<dataSource>,
    @ocaml.doc("<p>The timestamp representing when the continuous export was started.</p>")
    startTime: option<timeStamp>,
    @ocaml.doc("<p>The name of the s3 bucket where the export data parquet files are stored.</p>")
    s3Bucket: option<s3Bucket>,
    @ocaml.doc("<p>The unique ID assigned to this export.</p>")
    exportId: option<configurationsExportId>,
  }
  @module("@aws-sdk/client-discovery") @new
  external new: request => t = "StartContinuousExportCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDiscoverySummary = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>Details about discovered connectors, including connector status and health.</p>")
    connectorSummary: option<customerConnectorInfo>,
    @ocaml.doc("<p>Details about discovered agents, including agent status and health.</p>")
    agentSummary: option<customerAgentInfo>,
    @ocaml.doc("<p>The number of servers mapped to tags.</p>") serversMappedtoTags: option<long>,
    @ocaml.doc("<p>The number of servers mapped to applications.</p>")
    serversMappedToApplications: option<long>,
    @ocaml.doc("<p>The number of applications discovered.</p>") applications: option<long>,
    @ocaml.doc("<p>The number of servers discovered.</p>") servers: option<long>,
  }
  @module("@aws-sdk/client-discovery") @new
  external new: request => t = "GetDiscoverySummaryCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateConfigurationItemsFromApplication = {
  type t
  type request = {
    @ocaml.doc("<p>Configuration ID of each item to be disassociated from an application.</p>")
    configurationIds: configurationIdList,
    @ocaml.doc("<p>Configuration ID of an application from which each item is disassociated.</p>")
    applicationConfigurationId: applicationId,
  }
  type response = {.}
  @module("@aws-sdk/client-discovery") @new
  external new: request => t = "DisassociateConfigurationItemsFromApplicationCommand"
  let make = (~configurationIds, ~applicationConfigurationId, ()) =>
    new({configurationIds, applicationConfigurationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteApplications = {
  type t
  type request = {
    @ocaml.doc("<p>Configuration ID of an application to be deleted.</p>")
    configurationIds: applicationIdsList,
  }
  type response = {.}
  @module("@aws-sdk/client-discovery") @new external new: request => t = "DeleteApplicationsCommand"
  let make = (~configurationIds, ()) => new({configurationIds: configurationIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AssociateConfigurationItemsToApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of each configuration item to be associated with an application.</p>")
    configurationIds: configurationIdList,
    @ocaml.doc(
      "<p>The configuration ID of an application with which items are to be associated.</p>"
    )
    applicationConfigurationId: applicationId,
  }
  type response = {.}
  @module("@aws-sdk/client-discovery") @new
  external new: request => t = "AssociateConfigurationItemsToApplicationCommand"
  let make = (~configurationIds, ~applicationConfigurationId, ()) =>
    new({configurationIds, applicationConfigurationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StopDataCollectionByAgentIds = {
  type t
  type request = {
    @ocaml.doc("<p>The IDs of the agents or connectors from which to stop collecting data.</p>")
    agentIds: agentIds,
  }
  type response = {
    @ocaml.doc("<p>Information about the agents or connector that were instructed to stop collecting data.
      Information includes the agent/connector ID, a description of the operation performed, and
      whether the agent/connector configuration was updated.</p>")
    agentsConfigurationStatus: option<agentConfigurationStatusList>,
  }
  @module("@aws-sdk/client-discovery") @new
  external new: request => t = "StopDataCollectionByAgentIdsCommand"
  let make = (~agentIds, ()) => new({agentIds: agentIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartDataCollectionByAgentIds = {
  type t
  type request = {
    @ocaml.doc("<p>The IDs of the agents or connectors from which to start collecting data. If you send a
      request to an agent/connector ID that you do not have permission to contact, according to your
      AWS account, the service does not throw an exception. Instead, it returns the error in the
        <i>Description</i> field. If you send a request to multiple agents/connectors
      and you do not have permission to contact some of those agents/connectors, the system does not
      throw an exception. Instead, the system shows <code>Failed</code> in the
        <i>Description</i> field.</p>")
    agentIds: agentIds,
  }
  type response = {
    @ocaml.doc("<p>Information about agents or the connector that were instructed to start collecting
      data. Information includes the agent/connector ID, a description of the operation performed,
      and whether the agent/connector configuration was updated.</p>")
    agentsConfigurationStatus: option<agentConfigurationStatusList>,
  }
  @module("@aws-sdk/client-discovery") @new
  external new: request => t = "StartDataCollectionByAgentIdsCommand"
  let make = (~agentIds, ()) => new({agentIds: agentIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListServerNeighbors = {
  type t
  type request = {
    @ocaml.doc("<p>Token to retrieve the next set of results. For example, if you previously specified 100
      IDs for <code>ListServerNeighborsRequest$neighborConfigurationIds</code> but set
        <code>ListServerNeighborsRequest$maxResults</code> to 10, you received a set of 10 results
      along with a token. Use that token in this query to get the next set of 10.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>Maximum number of results to return in a single page of output.</p>")
    maxResults: option<integer_>,
    @ocaml.doc("<p>List of configuration IDs to test for one-hop-away.</p>")
    neighborConfigurationIds: option<configurationIdList>,
    @ocaml.doc("<p>Flag to indicate if port and protocol information is needed as part of the
      response.</p>")
    portInformationNeeded: option<boolean_>,
    @ocaml.doc("<p>Configuration ID of the server for which neighbors are being listed.</p>")
    configurationId: configurationId,
  }
  type response = {
    @ocaml.doc("<p>Count of distinct servers that are one hop away from the given server.</p>")
    knownDependencyCount: option<long>,
    @ocaml.doc("<p>Token to retrieve the next set of results. For example, if you specified 100 IDs for
        <code>ListServerNeighborsRequest$neighborConfigurationIds</code> but set
        <code>ListServerNeighborsRequest$maxResults</code> to 10, you received a set of 10 results
      along with this token. Use this token in the next query to retrieve the next set of
      10.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>List of distinct servers that are one hop away from the given server.</p>")
    neighbors: neighborDetailsList,
  }
  @module("@aws-sdk/client-discovery") @new
  external new: request => t = "ListServerNeighborsCommand"
  let make = (
    ~configurationId,
    ~nextToken=?,
    ~maxResults=?,
    ~neighborConfigurationIds=?,
    ~portInformationNeeded=?,
    (),
  ) =>
    new({nextToken, maxResults, neighborConfigurationIds, portInformationNeeded, configurationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeExportConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>The token from the previous call to describe-export-tasks.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A number between 1 and 100 specifying the maximum number of continuous export
      descriptions returned.</p>")
    maxResults: option<integer_>,
    @ocaml.doc("<p>A list of continuous export IDs to search for.</p>")
    exportIds: option<exportIds>,
  }
  type response = {
    @ocaml.doc("<p>The token from the previous call to describe-export-tasks.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p></p>") exportsInfo: option<exportsInfo>,
  }
  @module("@aws-sdk/client-discovery") @new
  external new: request => t = "DescribeExportConfigurationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~exportIds=?, ()) =>
    new({nextToken, maxResults, exportIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>One or more configuration IDs.</p>") configurationIds: configurationIdList,
  }
  type response = {
    @ocaml.doc("<p>A key in the response map. The value is an array of data.</p>")
    configurations: option<describeConfigurationsAttributes>,
  }
  @module("@aws-sdk/client-discovery") @new
  external new: request => t = "DescribeConfigurationsCommand"
  let make = (~configurationIds, ()) => new({configurationIds: configurationIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteTags = {
  type t
  type request = {
    @ocaml.doc("<p>Tags that you want to delete from one or more configuration items. Specify the tags
      that you want to delete in a <i>key</i>-<i>value</i> format. For
      example:</p>
         <p>
            <code>{\"key\": \"serverType\", \"value\": \"webServer\"}</code>
         </p>")
    tags: option<tagSet>,
    @ocaml.doc("<p>A list of configuration items with tags that you want to delete.</p>")
    configurationIds: configurationIdList,
  }
  type response = {.}
  @module("@aws-sdk/client-discovery") @new external new: request => t = "DeleteTagsCommand"
  let make = (~configurationIds, ~tags=?, ()) => new({tags, configurationIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateTags = {
  type t
  type request = {
    @ocaml.doc("<p>Tags that you want to associate with one or more configuration items. Specify the tags
      that you want to create in a <i>key</i>-<i>value</i> format. For
      example:</p>
         <p>
            <code>{\"key\": \"serverType\", \"value\": \"webServer\"}</code>
         </p>")
    tags: tagSet,
    @ocaml.doc("<p>A list of configuration items that you want to tag.</p>")
    configurationIds: configurationIdList,
  }
  type response = {.}
  @module("@aws-sdk/client-discovery") @new external new: request => t = "CreateTagsCommand"
  let make = (~tags, ~configurationIds, ()) => new({tags, configurationIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module BatchDeleteImportData = {
  type t
  type request = {
    @ocaml.doc("<p>The IDs for the import tasks that you want to delete.</p>")
    importTaskIds: toDeleteIdentifierList,
  }
  type response = {
    @ocaml.doc("<p>Error messages returned for each import task that you deleted as a response for this
      command.</p>")
    errors: option<batchDeleteImportDataErrorList>,
  }
  @module("@aws-sdk/client-discovery") @new
  external new: request => t = "BatchDeleteImportDataCommand"
  let make = (~importTaskIds, ()) => new({importTaskIds: importTaskIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartExportTask = {
  type t
  type request = {
    @ocaml.doc("<p>The end timestamp for exported data from the single Application Discovery Agent
      selected in the filters. If no value is specified, exported data includes the most recent data
      collected by the agent.</p>")
    endTime: option<timeStamp>,
    @ocaml.doc("<p>The start timestamp for exported data from the single Application Discovery Agent
      selected in the filters. If no value is specified, data is exported starting from the first
      data collected by the agent.</p>")
    startTime: option<timeStamp>,
    @ocaml.doc("<p>If a filter is present, it selects the single <code>agentId</code> of the Application
      Discovery Agent for which data is exported. The <code>agentId</code> can be found in the
      results of the <code>DescribeAgents</code> API or CLI. If no filter is present,
        <code>startTime</code> and <code>endTime</code> are ignored and exported data includes both
      Agentless Discovery Connector data and summary data from Application Discovery agents.
    </p>")
    filters: option<exportFilters>,
    @ocaml.doc("<p>The file format for the returned export data. Default value is <code>CSV</code>.
        <b>Note:</b>
            <i>The</i>
            <code>GRAPHML</code>
            <i>option has been deprecated.</i>
         </p>")
    exportDataFormat: option<exportDataFormats>,
  }
  type response = {
    @ocaml.doc("<p>A unique identifier used to query the status of an export request.</p>")
    exportId: option<configurationsExportId>,
  }
  @module("@aws-sdk/client-discovery") @new external new: request => t = "StartExportTaskCommand"
  let make = (~endTime=?, ~startTime=?, ~filters=?, ~exportDataFormat=?, ()) =>
    new({endTime, startTime, filters, exportDataFormat})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>Certain filter criteria return output that can be sorted in ascending or descending
      order. For a list of output characteristics for each filter, see <a href=\"https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#ListConfigurations\">Using the ListConfigurations Action</a> in the <i>AWS Application Discovery
        Service User Guide</i>.</p>")
    orderBy: option<orderByList>,
    @ocaml.doc("<p>Token to retrieve the next set of results. For example, if a previous call to
      ListConfigurations returned 100 items, but you set
        <code>ListConfigurationsRequest$maxResults</code> to 10, you received a set of 10 results
      along with a token. Use that token in this query to get the next set of 10.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The total number of items to return. The maximum value is 100.</p>")
    maxResults: option<integer_>,
    @ocaml.doc("<p>You can filter the request using various logical operators and a
        <i>key</i>-<i>value</i> format. For example: </p>
         <p>
            <code>{\"key\": \"serverType\", \"value\": \"webServer\"}</code>
         </p>
         <p>For a complete list of filter options and guidance about using them with this action,
      see <a href=\"https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#ListConfigurations\">Using the ListConfigurations Action</a> in the <i>AWS Application Discovery
        Service User Guide</i>.</p>")
    filters: option<filters>,
    @ocaml.doc("<p>A valid configuration identified by Application Discovery Service. </p>")
    configurationType: configurationItemType,
  }
  type response = {
    @ocaml.doc("<p>Token to retrieve the next set of results. For example, if your call to
      ListConfigurations returned 100 items, but you set
        <code>ListConfigurationsRequest$maxResults</code> to 10, you received a set of 10 results
      along with this token. Use this token in the next query to retrieve the next set of
      10.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns configuration details, including the configuration ID, attribute names, and
      attribute values.</p>")
    configurations: option<configurations>,
  }
  @module("@aws-sdk/client-discovery") @new external new: request => t = "ListConfigurationsCommand"
  let make = (~configurationType, ~orderBy=?, ~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({orderBy, nextToken, maxResults, filters, configurationType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeTags = {
  type t
  type request = {
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The total number of items to return in a single page of output. The maximum value is
      100.</p>")
    maxResults: option<integer_>,
    @ocaml.doc("<p>You can filter the list using a <i>key</i>-<i>value</i>
      format. You can separate these items by using logical operators. Allowed filters include
        <code>tagKey</code>, <code>tagValue</code>, and <code>configurationId</code>. </p>")
    filters: option<tagFilters>,
  }
  type response = {
    @ocaml.doc("<p>The call returns a token. Use this token to get the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Depending on the input, this is a list of configuration items tagged with a specific
      tag, or a list of tags for a specific configuration item.</p>")
    tags: option<configurationTagSet>,
  }
  @module("@aws-sdk/client-discovery") @new external new: request => t = "DescribeTagsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) => new({nextToken, maxResults, filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeImportTasks = {
  type t
  type request = {
    @ocaml.doc("<p>The token to request a specific page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of results that you want this request to return, up to 100.</p>"
    )
    maxResults: option<describeImportTasksMaxResults>,
    @ocaml.doc("<p>An array of name-value pairs that you provide to filter the results for the
        <code>DescribeImportTask</code> request to a specific subset of results. Currently, wildcard
      values aren't supported for filters.</p>")
    filters: option<describeImportTasksFilterList>,
  }
  type response = {
    @ocaml.doc("<p>A returned array of import tasks that match any applied filters, up to the specified
      number of maximum results.</p>")
    tasks: option<importTaskList>,
    @ocaml.doc("<p>The token to request the next page of results.</p>")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-discovery") @new
  external new: request => t = "DescribeImportTasksCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) => new({nextToken, maxResults, filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeExportTasks = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
        <code>DescribeExportTasks</code> request where <code>maxResults</code> was used and the
      results exceeded the value of that parameter. Pagination continues from the end of the
      previous results that returned the <code>nextToken</code> value. This value is null when there
      are no more results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of volume results returned by <code>DescribeExportTasks</code> in
      paginated output. When this parameter is used, <code>DescribeExportTasks</code> only returns
        <code>maxResults</code> results in a single page along with a <code>nextToken</code>
      response element.</p>")
    maxResults: option<integer_>,
    @ocaml.doc("<p>One or more filters.</p>
         <ul>
            <li>
               <p>
                  <code>AgentId</code> - ID of the agent whose collected data will be
          exported</p>
            </li>
         </ul>")
    filters: option<exportFilters>,
    @ocaml.doc(
      "<p>One or more unique identifiers used to query the status of an export request.</p>"
    )
    exportIds: option<exportIds>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future
        <code>DescribeExportTasks</code> request. When the results of a
        <code>DescribeExportTasks</code> request exceed <code>maxResults</code>, this value can be
      used to retrieve the next page of results. This value is null when there are no more results
      to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Contains one or more sets of export request details. When the status of a request is
        <code>SUCCEEDED</code>, the response includes a URL for an Amazon S3 bucket where you can
      view the data in a CSV file.</p>")
    exportsInfo: option<exportsInfo>,
  }
  @module("@aws-sdk/client-discovery") @new
  external new: request => t = "DescribeExportTasksCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~exportIds=?, ()) =>
    new({nextToken, maxResults, filters, exportIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeContinuousExports = {
  type t
  type request = {
    @ocaml.doc("<p>The token from the previous call to <code>DescribeExportTasks</code>.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A number between 1 and 100 specifying the maximum number of continuous export
      descriptions returned.</p>")
    maxResults: option<describeContinuousExportsMaxResults>,
    @ocaml.doc("<p>The unique IDs assigned to the exports.</p>")
    exportIds: option<continuousExportIds>,
  }
  type response = {
    @ocaml.doc("<p>The token from the previous call to <code>DescribeExportTasks</code>.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of continuous export descriptions.</p>")
    descriptions: option<continuousExportDescriptions>,
  }
  @module("@aws-sdk/client-discovery") @new
  external new: request => t = "DescribeContinuousExportsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~exportIds=?, ()) =>
    new({nextToken, maxResults, exportIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAgents = {
  type t
  type request = {
    @ocaml.doc("<p>Token to retrieve the next set of results. For example, if you previously specified 100
      IDs for <code>DescribeAgentsRequest$agentIds</code> but set
        <code>DescribeAgentsRequest$maxResults</code> to 10, you received a set of 10 results along
      with a token. Use that token in this query to get the next set of 10.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The total number of agents/Connectors to return in a single page of output. The maximum
      value is 100.</p>")
    maxResults: option<integer_>,
    @ocaml.doc("<p>You can filter the request using various logical operators and a
        <i>key</i>-<i>value</i> format. For example: </p>
         <p>
            <code>{\"key\": \"collectionStatus\", \"value\": \"STARTED\"}</code>
         </p>")
    filters: option<filters>,
    @ocaml.doc("<p>The agent or the Connector IDs for which you want information. If you specify no IDs,
      the system returns information about all agents/Connectors associated with your AWS user
      account.</p>")
    agentIds: option<agentIds>,
  }
  type response = {
    @ocaml.doc("<p>Token to retrieve the next set of results. For example, if you specified 100 IDs for
        <code>DescribeAgentsRequest$agentIds</code> but set
        <code>DescribeAgentsRequest$maxResults</code> to 10, you received a set of 10 results along
      with this token. Use this token in the next query to retrieve the next set of 10.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Lists agents or the Connector by ID or lists all agents/Connectors associated with your
      user account if you did not specify an agent/Connector ID. The output includes agent/Connector
      IDs, IP addresses, media access control (MAC) addresses, agent/Connector health, host name
      where the agent/Connector resides, and the version number of each agent/Connector.</p>")
    agentsInfo: option<agentsInfo>,
  }
  @module("@aws-sdk/client-discovery") @new external new: request => t = "DescribeAgentsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~agentIds=?, ()) =>
    new({nextToken, maxResults, filters, agentIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
