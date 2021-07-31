type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type orderString = [@as("DESC") #DESC | @as("ASC") #ASC]
type timeStamp = Js.Date.t;
type tagValue = string
type tagKey = string
type stringMax255 = string
type amazonawsString = string
type s3PresignedUrl = string
type s3Bucket = string
type nextToken = string
type message = string
type amazonawsLong = float;
type amazonawsInteger = int;
type importURL = string
type importTaskName = string
type importTaskIdentifier = string
type importTaskFilterValue = string
type importTaskFilterName = [@as("NAME") #NAME | @as("STATUS") #STATUS | @as("IMPORT_TASK_ID") #IMPORT_TASK_ID]
type importStatus = [@as("INTERNAL_ERROR") #INTERNAL_ERROR | @as("DELETE_FAILED_LIMIT_EXCEEDED") #DELETE_FAILED_LIMIT_EXCEEDED | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETE_COMPLETE") #DELETE_COMPLETE | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("IMPORT_FAILED_RECORD_LIMIT_EXCEEDED") #IMPORT_FAILED_RECORD_LIMIT_EXCEEDED | @as("IMPORT_FAILED_SERVER_LIMIT_EXCEEDED") #IMPORT_FAILED_SERVER_LIMIT_EXCEEDED | @as("IMPORT_FAILED") #IMPORT_FAILED | @as("IMPORT_COMPLETE_WITH_ERRORS") #IMPORT_COMPLETE_WITH_ERRORS | @as("IMPORT_COMPLETE") #IMPORT_COMPLETE | @as("IMPORT_IN_PROGRESS") #IMPORT_IN_PROGRESS]
type filterValue = string
type filterName = string
type exportStatusMessage = string
type exportStatus = [@as("IN_PROGRESS") #IN_PROGRESS | @as("SUCCEEDED") #SUCCEEDED | @as("FAILED") #FAILED]
type exportRequestTime = Js.Date.t;
type exportDataFormat = [@as("GRAPHML") #GRAPHML | @as("CSV") #CSV]
type describeImportTasksMaxResults = int;
type describeContinuousExportsMaxResults = int;
type databaseName = string
type dataSource = [@as("AGENT") #AGENT]
type continuousExportStatus = [@as("INACTIVE") #INACTIVE | @as("STOP_FAILED") #STOP_FAILED | @as("STOP_IN_PROGRESS") #STOP_IN_PROGRESS | @as("ERROR") #ERROR | @as("ACTIVE") #ACTIVE | @as("START_FAILED") #START_FAILED | @as("START_IN_PROGRESS") #START_IN_PROGRESS]
type configurationsExportId = string
type configurationsDownloadUrl = string
type configurationItemType = [@as("APPLICATION") #APPLICATION | @as("CONNECTION") #CONNECTION | @as("PROCESS") #PROCESS | @as("SERVER") #SERVER]
type configurationId = string
type condition = string
type clientRequestToken = string
type boxedInteger = int;
type amazonawsBoolean = bool;
type batchDeleteImportDataErrorDescription = string
type batchDeleteImportDataErrorCode = [@as("OVER_LIMIT") #OVER_LIMIT | @as("INTERNAL_SERVER_ERROR") #INTERNAL_SERVER_ERROR | @as("NOT_FOUND") #NOT_FOUND]
type applicationId = string
type agentStatus = [@as("SHUTDOWN") #SHUTDOWN | @as("BLACKLISTED") #BLACKLISTED | @as("UNKNOWN") #UNKNOWN | @as("RUNNING") #RUNNING | @as("UNHEALTHY") #UNHEALTHY | @as("HEALTHY") #HEALTHY]
type agentId = string
type toDeleteIdentifierList = array<importTaskIdentifier>
type tag = {
@as("value") value: option<tagValue>,
@as("key") key: option<tagKey>
}
type schemaStorageConfig = Js.Dict.t< amazonawsString>
type orderByElement = {
@as("sortOrder") sortOrder: orderString,
@as("fieldName") fieldName: option<amazonawsString>
}
type neighborConnectionDetail = {
@as("connectionsCount") connectionsCount: option<amazonawsLong>,
@as("transportProtocol") transportProtocol: amazonawsString,
@as("destinationPort") destinationPort: boxedInteger,
@as("destinationServerId") destinationServerId: option<configurationId>,
@as("sourceServerId") sourceServerId: option<configurationId>
}
type importTaskFilterValueList = array<importTaskFilterValue>
type importTask = {
@as("errorsAndFailedEntriesZip") errorsAndFailedEntriesZip: s3PresignedUrl,
@as("applicationImportFailure") applicationImportFailure: amazonawsInteger,
@as("applicationImportSuccess") applicationImportSuccess: amazonawsInteger,
@as("serverImportFailure") serverImportFailure: amazonawsInteger,
@as("serverImportSuccess") serverImportSuccess: amazonawsInteger,
@as("importDeletedTime") importDeletedTime: timeStamp,
@as("importCompletionTime") importCompletionTime: timeStamp,
@as("importRequestTime") importRequestTime: timeStamp,
@as("status") status: importStatus,
@as("importUrl") importUrl: importURL,
@as("name") name: importTaskName,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("importTaskId") importTaskId: importTaskIdentifier
}
type filterValues = array<filterValue>
type exportInfo = {
@as("requestedEndTime") requestedEndTime: timeStamp,
@as("requestedStartTime") requestedStartTime: timeStamp,
@as("isTruncated") isTruncated: amazonawsBoolean,
@as("exportRequestTime") exportRequestTime: option<exportRequestTime>,
@as("configurationsDownloadUrl") configurationsDownloadUrl: configurationsDownloadUrl,
@as("statusMessage") statusMessage: option<exportStatusMessage>,
@as("exportStatus") exportStatus: option<exportStatus>,
@as("exportId") exportId: option<configurationsExportId>
}
type exportIds = array<configurationsExportId>
type exportDataFormats = array<exportDataFormat>
type describeConfigurationsAttribute = Js.Dict.t< amazonawsString>
type customerConnectorInfo = {
@as("unknownConnectors") unknownConnectors: option<amazonawsInteger>,
@as("totalConnectors") totalConnectors: option<amazonawsInteger>,
@as("unhealthyConnectors") unhealthyConnectors: option<amazonawsInteger>,
@as("shutdownConnectors") shutdownConnectors: option<amazonawsInteger>,
@as("blackListedConnectors") blackListedConnectors: option<amazonawsInteger>,
@as("healthyConnectors") healthyConnectors: option<amazonawsInteger>,
@as("activeConnectors") activeConnectors: option<amazonawsInteger>
}
type customerAgentInfo = {
@as("unknownAgents") unknownAgents: option<amazonawsInteger>,
@as("totalAgents") totalAgents: option<amazonawsInteger>,
@as("unhealthyAgents") unhealthyAgents: option<amazonawsInteger>,
@as("shutdownAgents") shutdownAgents: option<amazonawsInteger>,
@as("blackListedAgents") blackListedAgents: option<amazonawsInteger>,
@as("healthyAgents") healthyAgents: option<amazonawsInteger>,
@as("activeAgents") activeAgents: option<amazonawsInteger>
}
type continuousExportIds = array<configurationsExportId>
type configurationTag = {
@as("timeOfCreation") timeOfCreation: timeStamp,
@as("value") value: tagValue,
@as("key") key: tagKey,
@as("configurationId") configurationId: configurationId,
@as("configurationType") configurationType: configurationItemType
}
type configurationIdList = array<configurationId>
type configuration = Js.Dict.t< amazonawsString>
type batchDeleteImportDataError = {
@as("errorDescription") errorDescription: batchDeleteImportDataErrorDescription,
@as("errorCode") errorCode: batchDeleteImportDataErrorCode,
@as("importTaskId") importTaskId: importTaskIdentifier
}
type applicationIdsList = array<applicationId>
type agentNetworkInfo = {
@as("macAddress") macAddress: amazonawsString,
@as("ipAddress") ipAddress: amazonawsString
}
type agentIds = array<agentId>
type agentConfigurationStatus = {
@as("description") description: amazonawsString,
@as("operationSucceeded") operationSucceeded: amazonawsBoolean,
@as("agentId") agentId: amazonawsString
}
type tagSet = array<tag>
type tagFilter = {
@as("values") values: option<filterValues>,
@as("name") name: option<filterName>
}
type orderByList = array<orderByElement>
type neighborDetailsList = array<neighborConnectionDetail>
type importTaskList = array<importTask>
type importTaskFilter = {
@as("values") values: importTaskFilterValueList,
@as("name") name: importTaskFilterName
}
type filter = {
@as("condition") condition: option<condition>,
@as("values") values: option<filterValues>,
@as("name") name: option<amazonawsString>
}
type exportsInfo = array<exportInfo>
type exportFilter = {
@as("condition") condition: option<condition>,
@as("values") values: option<filterValues>,
@as("name") name: option<filterName>
}
type describeConfigurationsAttributes = array<describeConfigurationsAttribute>
type continuousExportDescription = {
@as("schemaStorageConfig") schemaStorageConfig: schemaStorageConfig,
@as("dataSource") dataSource: dataSource,
@as("stopTime") stopTime: timeStamp,
@as("startTime") startTime: timeStamp,
@as("s3Bucket") s3Bucket: s3Bucket,
@as("statusDetail") statusDetail: stringMax255,
@as("status") status: continuousExportStatus,
@as("exportId") exportId: configurationsExportId
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
@as("registeredTime") registeredTime: amazonawsString,
@as("agentType") agentType: amazonawsString,
@as("collectionStatus") collectionStatus: amazonawsString,
@as("lastHealthPingTime") lastHealthPingTime: amazonawsString,
@as("health") health: agentStatus,
@as("version") version: amazonawsString,
@as("connectorId") connectorId: amazonawsString,
@as("agentNetworkInfoList") agentNetworkInfoList: agentNetworkInfoList,
@as("hostName") hostName: amazonawsString,
@as("agentId") agentId: agentId
}
type agentsInfo = array<agentInfo>
type clientType;
@module("@aws-sdk/client-discovery") @new external createClient: unit => clientType = "ApplicationDiscoveryServiceClient";
module UpdateApplication = {
  type t;
  type request = {
@as("description") description: amazonawsString,
@as("name") name: amazonawsString,
@as("configurationId") configurationId: option<applicationId>
}
  type response = unit
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "UpdateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopContinuousExport = {
  type t;
  type request = {
@as("exportId") exportId: option<configurationsExportId>
}
  type response = {
@as("stopTime") stopTime: timeStamp,
@as("startTime") startTime: timeStamp
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "StopContinuousExportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExportConfigurations = {
  type t;
  
  type response = {
@as("exportId") exportId: configurationsExportId
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<unit>) => t = "ExportConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApplication = {
  type t;
  type request = {
@as("description") description: amazonawsString,
@as("name") name: option<amazonawsString>
}
  type response = {
@as("configurationId") configurationId: amazonawsString
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "CreateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartImportTask = {
  type t;
  type request = {
@as("importUrl") importUrl: option<importURL>,
@as("name") name: option<importTaskName>,
@as("clientRequestToken") clientRequestToken: clientRequestToken
}
  type response = {
@as("task") task: importTask
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "StartImportTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartContinuousExport = {
  type t;
  type request = unit
  type response = {
@as("schemaStorageConfig") schemaStorageConfig: schemaStorageConfig,
@as("dataSource") dataSource: dataSource,
@as("startTime") startTime: timeStamp,
@as("s3Bucket") s3Bucket: s3Bucket,
@as("exportId") exportId: configurationsExportId
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "StartContinuousExportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDiscoverySummary = {
  type t;
  type request = unit
  type response = {
@as("connectorSummary") connectorSummary: customerConnectorInfo,
@as("agentSummary") agentSummary: customerAgentInfo,
@as("serversMappedtoTags") serversMappedtoTags: amazonawsLong,
@as("serversMappedToApplications") serversMappedToApplications: amazonawsLong,
@as("applications") applications: amazonawsLong,
@as("servers") servers: amazonawsLong
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "GetDiscoverySummaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateConfigurationItemsFromApplication = {
  type t;
  type request = {
@as("configurationIds") configurationIds: option<configurationIdList>,
@as("applicationConfigurationId") applicationConfigurationId: option<applicationId>
}
  type response = unit
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "DisassociateConfigurationItemsFromApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApplications = {
  type t;
  type request = {
@as("configurationIds") configurationIds: option<applicationIdsList>
}
  type response = unit
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "DeleteApplicationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateConfigurationItemsToApplication = {
  type t;
  type request = {
@as("configurationIds") configurationIds: option<configurationIdList>,
@as("applicationConfigurationId") applicationConfigurationId: option<applicationId>
}
  type response = unit
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "AssociateConfigurationItemsToApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopDataCollectionByAgentIds = {
  type t;
  type request = {
@as("agentIds") agentIds: option<agentIds>
}
  type response = {
@as("agentsConfigurationStatus") agentsConfigurationStatus: agentConfigurationStatusList
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "StopDataCollectionByAgentIdsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartDataCollectionByAgentIds = {
  type t;
  type request = {
@as("agentIds") agentIds: option<agentIds>
}
  type response = {
@as("agentsConfigurationStatus") agentsConfigurationStatus: agentConfigurationStatusList
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "StartDataCollectionByAgentIdsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListServerNeighbors = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("maxResults") maxResults: amazonawsInteger,
@as("neighborConfigurationIds") neighborConfigurationIds: configurationIdList,
@as("portInformationNeeded") portInformationNeeded: amazonawsBoolean,
@as("configurationId") configurationId: option<configurationId>
}
  type response = {
@as("knownDependencyCount") knownDependencyCount: amazonawsLong,
@as("nextToken") nextToken: amazonawsString,
@as("neighbors") neighbors: option<neighborDetailsList>
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "ListServerNeighborsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeExportConfigurations = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: amazonawsInteger,
@as("exportIds") exportIds: exportIds
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("exportsInfo") exportsInfo: exportsInfo
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "DescribeExportConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurations = {
  type t;
  type request = {
@as("configurationIds") configurationIds: option<configurationIdList>
}
  type response = {
@as("configurations") configurations: describeConfigurationsAttributes
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "DescribeConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTags = {
  type t;
  type request = {
@as("tags") tags: tagSet,
@as("configurationIds") configurationIds: option<configurationIdList>
}
  type response = unit
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "DeleteTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTags = {
  type t;
  type request = {
@as("tags") tags: option<tagSet>,
@as("configurationIds") configurationIds: option<configurationIdList>
}
  type response = unit
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "CreateTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteImportData = {
  type t;
  type request = {
@as("importTaskIds") importTaskIds: option<toDeleteIdentifierList>
}
  type response = {
@as("errors") errors: batchDeleteImportDataErrorList
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "BatchDeleteImportDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartExportTask = {
  type t;
  type request = {
@as("endTime") endTime: timeStamp,
@as("startTime") startTime: timeStamp,
@as("filters") filters: exportFilters,
@as("exportDataFormat") exportDataFormat: exportDataFormats
}
  type response = {
@as("exportId") exportId: configurationsExportId
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "StartExportTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConfigurations = {
  type t;
  type request = {
@as("orderBy") orderBy: orderByList,
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: amazonawsInteger,
@as("filters") filters: filters,
@as("configurationType") configurationType: option<configurationItemType>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("configurations") configurations: configurations
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "ListConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTags = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: amazonawsInteger,
@as("filters") filters: tagFilters
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("tags") tags: configurationTagSet
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "DescribeTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeImportTasks = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: describeImportTasksMaxResults,
@as("filters") filters: describeImportTasksFilterList
}
  type response = {
@as("tasks") tasks: importTaskList,
@as("nextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "DescribeImportTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeExportTasks = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: amazonawsInteger,
@as("filters") filters: exportFilters,
@as("exportIds") exportIds: exportIds
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("exportsInfo") exportsInfo: exportsInfo
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "DescribeExportTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeContinuousExports = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: describeContinuousExportsMaxResults,
@as("exportIds") exportIds: continuousExportIds
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("descriptions") descriptions: continuousExportDescriptions
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "DescribeContinuousExportsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAgents = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: amazonawsInteger,
@as("filters") filters: filters,
@as("agentIds") agentIds: agentIds
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("agentsInfo") agentsInfo: agentsInfo
}
  @module("@aws-sdk/client-discovery") @new external new_: (Js.Promise.t<request>) => t = "DescribeAgentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
