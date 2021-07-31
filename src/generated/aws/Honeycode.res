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
type workbookCursor = float
type variableName = string
type upsertAction = [@as("APPENDED") #APPENDED | @as("UPDATED") #UPDATED]
type timestampInMillis = Js.Date.t;
type tableName = string
type tableDataImportJobStatus = [@as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #INPROGRESS | @as("SUBMITTED") #SUBMITTED]
type tableDataImportJobMessage = string
type tableColumnName = string
type sourceDataColumnIndex = int
type secureURL = string
type rowId = string
type resourceId = string
type rawValue = string
type paginationToken = string
type name = string
type maxResults = int
type jobId = string
type importSourceDataFormat = [@as("DELIMITED_TEXT") #DELIMITEDTEXT]
type importDataCharacterEncoding = [@as("UTF-16") #UTF16 | @as("UTF-16LE") #UTF16LE | @as("UTF-16BE") #UTF16BE | @as("ISO-8859-1") #ISO88591 | @as("US-ASCII") #USASCII | @as("UTF-8") #UTF8]
type ignoreEmptyRows = bool
type hasHeaderRow = bool
type formula = string
type formattedValue = string
type format = [@as("ROWLINK") #ROWLINK | @as("CONTACT") #CONTACT | @as("ACCOUNTING") #ACCOUNTING | @as("TEXT") #TEXT | @as("PERCENTAGE") #PERCENTAGE | @as("DATE_TIME") #DATETIME | @as("TIME") #TIME | @as("DATE") #DATE | @as("CURRENCY") #CURRENCY | @as("NUMBER") #NUMBER | @as("AUTO") #AUTO]
type fact = string
type errorMessage = string
type email = string
type delimitedTextDelimiter = string
type clientRequestToken = string
type batchItemId = string
type batchErrorMessage = string
type awsUserArn = string
type variableValue = {
rawValue: rawValue
}
type tableColumn = {
format: option<format>,
tableColumnName: option<tableColumnName>,
tableColumnId: option<resourceId>
}
type table = {
tableName: option<tableName>,
tableId: option<resourceId>
}
type sourceDataColumnProperties = {
columnIndex: option<sourceDataColumnIndex>
}
type rowIdList = array<rowId>
type resourceIds = array<resourceId>
type importJobSubmitter = {
userArn: option<awsUserArn>,
email: option<email>
}
type importDataSourceConfig = {
dataSourceUrl: option<secureURL>
}
type filter = {
contextRowId: option<rowId>,
formula: formula
}
type failedBatchItem = {
errorMessage: batchErrorMessage,
id: batchItemId
}
type delimitedTextImportOptions = {
dataCharacterEncoding: option<importDataCharacterEncoding>,
ignoreEmptyRows: option<ignoreEmptyRows>,
hasHeaderRow: option<hasHeaderRow>,
delimiter: delimitedTextDelimiter
}
type dataItem = {
formattedValue: option<formattedValue>,
rawValue: option<rawValue>,
overrideFormat: option<format>
}
type createdRowsMap = Js.Dict.t< rowId>
type columnMetadata = {
format: format,
name: name
}
type cellInput = {
fact: option<fact>
}
type cell = {
formattedValue: option<formattedValue>,
rawValue: option<rawValue>,
format: option<format>,
formula: option<formula>
}
type variableValueMap = Js.Dict.t< variableValue>
type upsertRowsResult = {
upsertAction: upsertAction,
rowIds: rowIdList
}
type tables = array<table>
type tableColumns = array<tableColumn>
type rowDataInput = Js.Dict.t< cellInput>
type resultHeader = array<columnMetadata>
type importDataSource = {
dataSourceConfig: importDataSourceConfig
}
type importColumnMap = Js.Dict.t< sourceDataColumnProperties>
type failedBatchItems = array<failedBatchItem>
type dataItems = array<dataItem>
type cells = array<cell>
type upsertRowsResultMap = Js.Dict.t< upsertRowsResult>
type upsertRowData = {
cellsToUpdate: rowDataInput,
filter: filter,
batchItemId: batchItemId
}
type updateRowData = {
cellsToUpdate: rowDataInput,
rowId: rowId
}
type tableRow = {
cells: cells,
rowId: rowId
}
type resultRow = {
dataItems: dataItems,
rowId: option<rowId>
}
type destinationOptions = {
columnMap: option<importColumnMap>
}
type createRowData = {
cellsToCreate: rowDataInput,
batchItemId: batchItemId
}
type upsertRowDataList = array<upsertRowData>
type updateRowDataList = array<updateRowData>
type tableRows = array<tableRow>
type resultRows = array<resultRow>
type importOptions = {
delimitedTextOptions: option<delimitedTextImportOptions>,
destinationOptions: option<destinationOptions>
}
type createRowDataList = array<createRowData>
type tableDataImportJobMetadata = {
dataSource: importDataSource,
importOptions: importOptions,
submitTime: timestampInMillis,
submitter: importJobSubmitter
}
type resultSet = {
rows: resultRows,
headers: resultHeader
}
type resultSetMap = Js.Dict.t< resultSet>
type awsServiceClient;
@module("@aws-sdk/client-honeycode") @new external createClient: unit => awsServiceClient = "HoneycodeClient";
module ListTables = {
  type t;
  type request = {
nextToken: option<paginationToken>,
maxResults: option<maxResults>,
workbookId: resourceId
}
  type response = {
workbookCursor: option<workbookCursor>,
nextToken: option<paginationToken>,
tables: tables
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "ListTablesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTableColumns = {
  type t;
  type request = {
nextToken: option<paginationToken>,
tableId: resourceId,
workbookId: resourceId
}
  type response = {
workbookCursor: option<workbookCursor>,
nextToken: option<paginationToken>,
tableColumns: tableColumns
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "ListTableColumnsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module InvokeScreenAutomation = {
  type t;
  type request = {
clientRequestToken: option<clientRequestToken>,
rowId: option<rowId>,
variables: option<variableValueMap>,
screenAutomationId: resourceId,
screenId: resourceId,
appId: resourceId,
workbookId: resourceId
}
  type response = {
workbookCursor: workbookCursor
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "InvokeScreenAutomationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteTableRows = {
  type t;
  type request = {
clientRequestToken: option<clientRequestToken>,
rowIds: rowIdList,
tableId: resourceId,
workbookId: resourceId
}
  type response = {
failedBatchItems: option<failedBatchItems>,
workbookCursor: workbookCursor
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "BatchDeleteTableRowsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartTableDataImportJob = {
  type t;
  type request = {
clientRequestToken: clientRequestToken,
importOptions: importOptions,
destinationTableId: resourceId,
dataFormat: importSourceDataFormat,
dataSource: importDataSource,
workbookId: resourceId
}
  type response = {
jobStatus: tableDataImportJobStatus,
jobId: jobId
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "StartTableDataImportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module QueryTableRows = {
  type t;
  type request = {
nextToken: option<paginationToken>,
maxResults: option<maxResults>,
filterFormula: filter,
tableId: resourceId,
workbookId: resourceId
}
  type response = {
workbookCursor: workbookCursor,
nextToken: option<paginationToken>,
rows: tableRows,
columnIds: resourceIds
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "QueryTableRowsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTableRows = {
  type t;
  type request = {
nextToken: option<paginationToken>,
maxResults: option<maxResults>,
rowIds: option<rowIdList>,
tableId: resourceId,
workbookId: resourceId
}
  type response = {
workbookCursor: workbookCursor,
nextToken: option<paginationToken>,
rowIdsNotFound: option<rowIdList>,
rows: tableRows,
columnIds: resourceIds
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "ListTableRowsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchUpsertTableRows = {
  type t;
  type request = {
clientRequestToken: option<clientRequestToken>,
rowsToUpsert: upsertRowDataList,
tableId: resourceId,
workbookId: resourceId
}
  type response = {
failedBatchItems: option<failedBatchItems>,
workbookCursor: workbookCursor,
rows: upsertRowsResultMap
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "BatchUpsertTableRowsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchUpdateTableRows = {
  type t;
  type request = {
clientRequestToken: option<clientRequestToken>,
rowsToUpdate: updateRowDataList,
tableId: resourceId,
workbookId: resourceId
}
  type response = {
failedBatchItems: option<failedBatchItems>,
workbookCursor: workbookCursor
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "BatchUpdateTableRowsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchCreateTableRows = {
  type t;
  type request = {
clientRequestToken: option<clientRequestToken>,
rowsToCreate: createRowDataList,
tableId: resourceId,
workbookId: resourceId
}
  type response = {
failedBatchItems: option<failedBatchItems>,
createdRows: createdRowsMap,
workbookCursor: workbookCursor
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "BatchCreateTableRowsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTableDataImportJob = {
  type t;
  type request = {
jobId: jobId,
tableId: resourceId,
workbookId: resourceId
}
  type response = {
jobMetadata: tableDataImportJobMetadata,
message: tableDataImportJobMessage,
jobStatus: tableDataImportJobStatus
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "DescribeTableDataImportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetScreenData = {
  type t;
  type request = {
nextToken: option<paginationToken>,
maxResults: option<maxResults>,
variables: option<variableValueMap>,
screenId: resourceId,
appId: resourceId,
workbookId: resourceId
}
  type response = {
nextToken: option<paginationToken>,
workbookCursor: workbookCursor,
results: resultSetMap
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "GetScreenDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
