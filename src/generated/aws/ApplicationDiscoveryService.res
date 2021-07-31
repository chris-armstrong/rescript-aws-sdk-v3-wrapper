type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type timestamp_ = Js.Date.t;
type orderString = [@as("DESC") #DESC | @as("ASC") #ASC]
type timeStamp = Js.Date.t;
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
type importTaskFilterName = [@as("NAME") #NAME | @as("STATUS") #STATUS | @as("IMPORT_TASK_ID") #IMPORTTASKID]
type importStatus = [@as("INTERNAL_ERROR") #INTERNALERROR | @as("DELETE_FAILED_LIMIT_EXCEEDED") #DELETEFAILEDLIMITEXCEEDED | @as("DELETE_FAILED") #DELETEFAILED | @as("DELETE_COMPLETE") #DELETECOMPLETE | @as("DELETE_IN_PROGRESS") #DELETEINPROGRESS | @as("IMPORT_FAILED_RECORD_LIMIT_EXCEEDED") #IMPORTFAILEDRECORDLIMITEXCEEDED | @as("IMPORT_FAILED_SERVER_LIMIT_EXCEEDED") #IMPORTFAILEDSERVERLIMITEXCEEDED | @as("IMPORT_FAILED") #IMPORTFAILED | @as("IMPORT_COMPLETE_WITH_ERRORS") #IMPORTCOMPLETEWITHERRORS | @as("IMPORT_COMPLETE") #IMPORTCOMPLETE | @as("IMPORT_IN_PROGRESS") #IMPORTINPROGRESS]
type filterValue = string
type filterName = string
type exportStatusMessage = string
type exportStatus = [@as("IN_PROGRESS") #INPROGRESS | @as("SUCCEEDED") #SUCCEEDED | @as("FAILED") #FAILED]
type exportRequestTime = Js.Date.t;
type exportDataFormat = [@as("GRAPHML") #GRAPHML | @as("CSV") #CSV]
type describeImportTasksMaxResults = int
type describeContinuousExportsMaxResults = int
type databaseName = string
type dataSource = [@as("AGENT") #AGENT]
type continuousExportStatus = [@as("INACTIVE") #INACTIVE | @as("STOP_FAILED") #STOPFAILED | @as("STOP_IN_PROGRESS") #STOPINPROGRESS | @as("ERROR") #ERROR | @as("ACTIVE") #ACTIVE | @as("START_FAILED") #STARTFAILED | @as("START_IN_PROGRESS") #STARTINPROGRESS]
type configurationsExportId = string
type configurationsDownloadUrl = string
type configurationItemType = [@as("APPLICATION") #APPLICATION | @as("CONNECTION") #CONNECTION | @as("PROCESS") #PROCESS | @as("SERVER") #SERVER]
type configurationId = string
type condition = string
type clientRequestToken = string
type boxedInteger = int
type boolean_ = bool
type batchDeleteImportDataErrorDescription = string
type batchDeleteImportDataErrorCode = [@as("OVER_LIMIT") #OVERLIMIT | @as("INTERNAL_SERVER_ERROR") #INTERNALSERVERERROR | @as("NOT_FOUND") #NOTFOUND]
type applicationId = string
type agentStatus = [@as("SHUTDOWN") #SHUTDOWN | @as("BLACKLISTED") #BLACKLISTED | @as("UNKNOWN") #UNKNOWN | @as("RUNNING") #RUNNING | @as("UNHEALTHY") #UNHEALTHY | @as("HEALTHY") #HEALTHY]
type agentId = string
type toDeleteIdentifierList = array<importTaskIdentifier>
type tag = {
value: tagValue,
key: tagKey
}
type schemaStorageConfig = Js.Dict.t< string_>
type orderByElement = {
sortOrder: option<orderString>,
fieldName: string_
}
type neighborConnectionDetail = {
connectionsCount: long,
transportProtocol: option<string_>,
destinationPort: option<boxedInteger>,
destinationServerId: configurationId,
sourceServerId: configurationId
}
type importTaskFilterValueList = array<importTaskFilterValue>
type importTask = {
errorsAndFailedEntriesZip: option<s3PresignedUrl>,
applicationImportFailure: option<integer_>,
applicationImportSuccess: option<integer_>,
serverImportFailure: option<integer_>,
serverImportSuccess: option<integer_>,
importDeletedTime: option<timeStamp>,
importCompletionTime: option<timeStamp>,
importRequestTime: option<timeStamp>,
status: option<importStatus>,
importUrl: option<importURL>,
name: option<importTaskName>,
clientRequestToken: option<clientRequestToken>,
importTaskId: option<importTaskIdentifier>
}
type filterValues = array<filterValue>
type exportInfo = {
requestedEndTime: option<timeStamp>,
requestedStartTime: option<timeStamp>,
isTruncated: option<boolean_>,
exportRequestTime: exportRequestTime,
configurationsDownloadUrl: option<configurationsDownloadUrl>,
statusMessage: exportStatusMessage,
exportStatus: exportStatus,
exportId: configurationsExportId
}
type exportIds = array<configurationsExportId>
type exportDataFormats = array<exportDataFormat>
type describeConfigurationsAttribute = Js.Dict.t< string_>
type customerConnectorInfo = {
unknownConnectors: integer_,
totalConnectors: integer_,
unhealthyConnectors: integer_,
shutdownConnectors: integer_,
blackListedConnectors: integer_,
healthyConnectors: integer_,
activeConnectors: integer_
}
type customerAgentInfo = {
unknownAgents: integer_,
totalAgents: integer_,
unhealthyAgents: integer_,
shutdownAgents: integer_,
blackListedAgents: integer_,
healthyAgents: integer_,
activeAgents: integer_
}
type continuousExportIds = array<configurationsExportId>
type configurationTag = {
timeOfCreation: option<timeStamp>,
value: option<tagValue>,
key: option<tagKey>,
configurationId: option<configurationId>,
configurationType: option<configurationItemType>
}
type configurationIdList = array<configurationId>
type configuration = Js.Dict.t< string_>
type batchDeleteImportDataError = {
errorDescription: option<batchDeleteImportDataErrorDescription>,
errorCode: option<batchDeleteImportDataErrorCode>,
importTaskId: option<importTaskIdentifier>
}
type applicationIdsList = array<applicationId>
type agentNetworkInfo = {
macAddress: option<string_>,
ipAddress: option<string_>
}
type agentIds = array<agentId>
type agentConfigurationStatus = {
description: option<string_>,
operationSucceeded: option<boolean_>,
agentId: option<string_>
}
type tagSet = array<tag>
type tagFilter = {
values: filterValues,
name: filterName
}
type orderByList = array<orderByElement>
type neighborDetailsList = array<neighborConnectionDetail>
type importTaskList = array<importTask>
type importTaskFilter = {
values: option<importTaskFilterValueList>,
name: option<importTaskFilterName>
}
type filter = {
condition: condition,
values: filterValues,
name: string_
}
type exportsInfo = array<exportInfo>
type exportFilter = {
condition: condition,
values: filterValues,
name: filterName
}
type describeConfigurationsAttributes = array<describeConfigurationsAttribute>
type continuousExportDescription = {
schemaStorageConfig: option<schemaStorageConfig>,
dataSource: option<dataSource>,
stopTime: option<timeStamp>,
startTime: option<timeStamp>,
s3Bucket: option<s3Bucket>,
statusDetail: option<stringMax255>,
status: option<continuousExportStatus>,
exportId: option<configurationsExportId>
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
type agentInfo = {
registeredTime: option<string_>,
agentType: option<string_>,
collectionStatus: option<string_>,
lastHealthPingTime: option<string_>,
health: option<agentStatus>,
version: option<string_>,
connectorId: option<string_>,
agentNetworkInfoList: option<agentNetworkInfoList>,
hostName: option<string_>,
agentId: option<agentId>
}
type agentsInfo = array<agentInfo>
type awsServiceClient;
@module("@aws-sdk/client-discovery") @new external createClient: unit => awsServiceClient = "ApplicationDiscoveryServiceClient";
module UpdateApplication = {
  type t;
  type request = {
description: option<string_>,
name: option<string_>,
configurationId: applicationId
}
  type response = unit
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "UpdateApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopContinuousExport = {
  type t;
  type request = {
exportId: configurationsExportId
}
  type response = {
stopTime: option<timeStamp>,
startTime: option<timeStamp>
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "StopContinuousExportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ExportConfigurations = {
  type t;
  
  type response = {
exportId: option<configurationsExportId>
}
  @module("@aws-sdk/client-discovery") @new external new_: (unit) => t = "ExportConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateApplication = {
  type t;
  type request = {
description: option<string_>,
name: string_
}
  type response = {
configurationId: option<string_>
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "CreateApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartImportTask = {
  type t;
  type request = {
importUrl: importURL,
name: importTaskName,
clientRequestToken: option<clientRequestToken>
}
  type response = {
task: option<importTask>
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "StartImportTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartContinuousExport = {
  type t;
  type request = unit
  type response = {
schemaStorageConfig: option<schemaStorageConfig>,
dataSource: option<dataSource>,
startTime: option<timeStamp>,
s3Bucket: option<s3Bucket>,
exportId: option<configurationsExportId>
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "StartContinuousExportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDiscoverySummary = {
  type t;
  type request = unit
  type response = {
connectorSummary: option<customerConnectorInfo>,
agentSummary: option<customerAgentInfo>,
serversMappedtoTags: option<long>,
serversMappedToApplications: option<long>,
applications: option<long>,
servers: option<long>
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "GetDiscoverySummaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateConfigurationItemsFromApplication = {
  type t;
  type request = {
configurationIds: configurationIdList,
applicationConfigurationId: applicationId
}
  type response = unit
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "DisassociateConfigurationItemsFromApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApplications = {
  type t;
  type request = {
configurationIds: applicationIdsList
}
  type response = unit
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "DeleteApplicationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateConfigurationItemsToApplication = {
  type t;
  type request = {
configurationIds: configurationIdList,
applicationConfigurationId: applicationId
}
  type response = unit
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "AssociateConfigurationItemsToApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopDataCollectionByAgentIds = {
  type t;
  type request = {
agentIds: agentIds
}
  type response = {
agentsConfigurationStatus: option<agentConfigurationStatusList>
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "StopDataCollectionByAgentIdsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartDataCollectionByAgentIds = {
  type t;
  type request = {
agentIds: agentIds
}
  type response = {
agentsConfigurationStatus: option<agentConfigurationStatusList>
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "StartDataCollectionByAgentIdsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListServerNeighbors = {
  type t;
  type request = {
nextToken: option<string_>,
maxResults: option<integer_>,
neighborConfigurationIds: option<configurationIdList>,
portInformationNeeded: option<boolean_>,
configurationId: configurationId
}
  type response = {
knownDependencyCount: option<long>,
nextToken: option<string_>,
neighbors: neighborDetailsList
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "ListServerNeighborsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeExportConfigurations = {
  type t;
  type request = {
nextToken: option<nextToken>,
maxResults: option<integer_>,
exportIds: option<exportIds>
}
  type response = {
nextToken: option<nextToken>,
exportsInfo: option<exportsInfo>
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "DescribeExportConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurations = {
  type t;
  type request = {
configurationIds: configurationIdList
}
  type response = {
configurations: option<describeConfigurationsAttributes>
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "DescribeConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTags = {
  type t;
  type request = {
tags: option<tagSet>,
configurationIds: configurationIdList
}
  type response = unit
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "DeleteTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTags = {
  type t;
  type request = {
tags: tagSet,
configurationIds: configurationIdList
}
  type response = unit
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "CreateTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteImportData = {
  type t;
  type request = {
importTaskIds: toDeleteIdentifierList
}
  type response = {
errors: option<batchDeleteImportDataErrorList>
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "BatchDeleteImportDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartExportTask = {
  type t;
  type request = {
endTime: option<timeStamp>,
startTime: option<timeStamp>,
filters: option<exportFilters>,
exportDataFormat: option<exportDataFormats>
}
  type response = {
exportId: option<configurationsExportId>
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "StartExportTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListConfigurations = {
  type t;
  type request = {
orderBy: option<orderByList>,
nextToken: option<nextToken>,
maxResults: option<integer_>,
filters: option<filters>,
configurationType: configurationItemType
}
  type response = {
nextToken: option<nextToken>,
configurations: option<configurations>
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "ListConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTags = {
  type t;
  type request = {
nextToken: option<nextToken>,
maxResults: option<integer_>,
filters: option<tagFilters>
}
  type response = {
nextToken: option<nextToken>,
tags: option<configurationTagSet>
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "DescribeTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeImportTasks = {
  type t;
  type request = {
nextToken: option<nextToken>,
maxResults: option<describeImportTasksMaxResults>,
filters: option<describeImportTasksFilterList>
}
  type response = {
tasks: option<importTaskList>,
nextToken: option<nextToken>
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "DescribeImportTasksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeExportTasks = {
  type t;
  type request = {
nextToken: option<nextToken>,
maxResults: option<integer_>,
filters: option<exportFilters>,
exportIds: option<exportIds>
}
  type response = {
nextToken: option<nextToken>,
exportsInfo: option<exportsInfo>
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "DescribeExportTasksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeContinuousExports = {
  type t;
  type request = {
nextToken: option<nextToken>,
maxResults: option<describeContinuousExportsMaxResults>,
exportIds: option<continuousExportIds>
}
  type response = {
nextToken: option<nextToken>,
descriptions: option<continuousExportDescriptions>
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "DescribeContinuousExportsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAgents = {
  type t;
  type request = {
nextToken: option<nextToken>,
maxResults: option<integer_>,
filters: option<filters>,
agentIds: option<agentIds>
}
  type response = {
nextToken: option<nextToken>,
agentsInfo: option<agentsInfo>
}
  @module("@aws-sdk/client-discovery") @new external new_: (request) => t = "DescribeAgentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
