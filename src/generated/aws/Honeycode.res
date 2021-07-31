type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type workbookCursor = float;
type variableName = string
type upsertAction = [@as("APPENDED") #APPENDED | @as("UPDATED") #UPDATED]
type timestampInMillis = Js.Date.t;
type tableName = string
type tableDataImportJobStatus = [@as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS | @as("SUBMITTED") #SUBMITTED]
type tableDataImportJobMessage = string
type tableColumnName = string
type sourceDataColumnIndex = int;
type secureURL = string
type rowId = string
type resourceId = string
type rawValue = string
type paginationToken = string
type name = string
type maxResults = int;
type jobId = string
type importSourceDataFormat = [@as("DELIMITED_TEXT") #DELIMITED_TEXT]
type importDataCharacterEncoding = [@as("UTF-16") #UTF_16 | @as("UTF-16LE") #UTF_16LE | @as("UTF-16BE") #UTF_16BE | @as("ISO-8859-1") #ISO_8859_1 | @as("US-ASCII") #US_ASCII | @as("UTF-8") #UTF_8]
type ignoreEmptyRows = bool;
type hasHeaderRow = bool;
type formula = string
type formattedValue = string
type format = [@as("ROWLINK") #ROWLINK | @as("CONTACT") #CONTACT | @as("ACCOUNTING") #ACCOUNTING | @as("TEXT") #TEXT | @as("PERCENTAGE") #PERCENTAGE | @as("DATE_TIME") #DATE_TIME | @as("TIME") #TIME | @as("DATE") #DATE | @as("CURRENCY") #CURRENCY | @as("NUMBER") #NUMBER | @as("AUTO") #AUTO]
type fact = string
type errorMessage = string
type email = string
type delimitedTextDelimiter = string
type clientRequestToken = string
type batchItemId = string
type batchErrorMessage = string
type awsUserArn = string
type variableValue = {
@as("rawValue") rawValue: option<rawValue>
}
type tableColumn = {
@as("format") format: format,
@as("tableColumnName") tableColumnName: tableColumnName,
@as("tableColumnId") tableColumnId: resourceId
}
type table = {
@as("tableName") tableName: tableName,
@as("tableId") tableId: resourceId
}
type sourceDataColumnProperties = {
@as("columnIndex") columnIndex: sourceDataColumnIndex
}
type rowIdList = array<rowId>
type resourceIds = array<resourceId>
type importJobSubmitter = {
@as("userArn") userArn: awsUserArn,
@as("email") email: email
}
type importDataSourceConfig = {
@as("dataSourceUrl") dataSourceUrl: secureURL
}
type filter = {
@as("contextRowId") contextRowId: rowId,
@as("formula") formula: option<formula>
}
type failedBatchItem = {
@as("errorMessage") errorMessage: option<batchErrorMessage>,
@as("id") id: option<batchItemId>
}
type delimitedTextImportOptions = {
@as("dataCharacterEncoding") dataCharacterEncoding: importDataCharacterEncoding,
@as("ignoreEmptyRows") ignoreEmptyRows: ignoreEmptyRows,
@as("hasHeaderRow") hasHeaderRow: hasHeaderRow,
@as("delimiter") delimiter: option<delimitedTextDelimiter>
}
type dataItem = {
@as("formattedValue") formattedValue: formattedValue,
@as("rawValue") rawValue: rawValue,
@as("overrideFormat") overrideFormat: format
}
type createdRowsMap = Js.Dict.t< rowId>
type columnMetadata = {
@as("format") format: option<format>,
@as("name") name: option<name>
}
type cellInput = {
@as("fact") fact: fact
}
type cell = {
@as("formattedValue") formattedValue: formattedValue,
@as("rawValue") rawValue: rawValue,
@as("format") format: format,
@as("formula") formula: formula
}
type variableValueMap = Js.Dict.t< variableValue>
type upsertRowsResult = {
@as("upsertAction") upsertAction: option<upsertAction>,
@as("rowIds") rowIds: option<rowIdList>
}
type tables = array<table>
type tableColumns = array<tableColumn>
type rowDataInput = Js.Dict.t< cellInput>
type resultHeader = array<columnMetadata>
type importDataSource = {
@as("dataSourceConfig") dataSourceConfig: option<importDataSourceConfig>
}
type importColumnMap = Js.Dict.t< sourceDataColumnProperties>
type failedBatchItems = array<failedBatchItem>
type dataItems = array<dataItem>
type cells = array<cell>
type upsertRowsResultMap = Js.Dict.t< upsertRowsResult>
type upsertRowData = {
@as("cellsToUpdate") cellsToUpdate: option<rowDataInput>,
@as("filter") filter: option<filter>,
@as("batchItemId") batchItemId: option<batchItemId>
}
type updateRowData = {
@as("cellsToUpdate") cellsToUpdate: option<rowDataInput>,
@as("rowId") rowId: option<rowId>
}
type tableRow = {
@as("cells") cells: option<cells>,
@as("rowId") rowId: option<rowId>
}
type resultRow = {
@as("dataItems") dataItems: option<dataItems>,
@as("rowId") rowId: rowId
}
type destinationOptions = {
@as("columnMap") columnMap: importColumnMap
}
type createRowData = {
@as("cellsToCreate") cellsToCreate: option<rowDataInput>,
@as("batchItemId") batchItemId: option<batchItemId>
}
type upsertRowDataList = array<upsertRowData>
type updateRowDataList = array<updateRowData>
type tableRows = array<tableRow>
type resultRows = array<resultRow>
type importOptions = {
@as("delimitedTextOptions") delimitedTextOptions: delimitedTextImportOptions,
@as("destinationOptions") destinationOptions: destinationOptions
}
type createRowDataList = array<createRowData>
type tableDataImportJobMetadata = {
@as("dataSource") dataSource: option<importDataSource>,
@as("importOptions") importOptions: option<importOptions>,
@as("submitTime") submitTime: option<timestampInMillis>,
@as("submitter") submitter: option<importJobSubmitter>
}
type resultSet = {
@as("rows") rows: option<resultRows>,
@as("headers") headers: option<resultHeader>
}
type resultSetMap = Js.Dict.t< resultSet>
type clientType;
@module("@aws-sdk/client-honeycode") @new external createClient: unit => clientType = "HoneycodeClient";
module ListTables = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: maxResults,
@as("workbookId") workbookId: option<resourceId>
}
  type response = {
@as("workbookCursor") workbookCursor: workbookCursor,
@as("nextToken") nextToken: paginationToken,
@as("tables") tables: option<tables>
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "ListTablesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTableColumns = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("tableId") tableId: option<resourceId>,
@as("workbookId") workbookId: option<resourceId>
}
  type response = {
@as("workbookCursor") workbookCursor: workbookCursor,
@as("nextToken") nextToken: paginationToken,
@as("tableColumns") tableColumns: option<tableColumns>
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "ListTableColumnsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InvokeScreenAutomation = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("rowId") rowId: rowId,
@as("variables") variables: variableValueMap,
@as("screenAutomationId") screenAutomationId: option<resourceId>,
@as("screenId") screenId: option<resourceId>,
@as("appId") appId: option<resourceId>,
@as("workbookId") workbookId: option<resourceId>
}
  type response = {
@as("workbookCursor") workbookCursor: option<workbookCursor>
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "InvokeScreenAutomationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteTableRows = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("rowIds") rowIds: option<rowIdList>,
@as("tableId") tableId: option<resourceId>,
@as("workbookId") workbookId: option<resourceId>
}
  type response = {
@as("failedBatchItems") failedBatchItems: failedBatchItems,
@as("workbookCursor") workbookCursor: option<workbookCursor>
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "BatchDeleteTableRowsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartTableDataImportJob = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("importOptions") importOptions: option<importOptions>,
@as("destinationTableId") destinationTableId: option<resourceId>,
@as("dataFormat") dataFormat: option<importSourceDataFormat>,
@as("dataSource") dataSource: option<importDataSource>,
@as("workbookId") workbookId: option<resourceId>
}
  type response = {
@as("jobStatus") jobStatus: option<tableDataImportJobStatus>,
@as("jobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "StartTableDataImportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module QueryTableRows = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: maxResults,
@as("filterFormula") filterFormula: option<filter>,
@as("tableId") tableId: option<resourceId>,
@as("workbookId") workbookId: option<resourceId>
}
  type response = {
@as("workbookCursor") workbookCursor: option<workbookCursor>,
@as("nextToken") nextToken: paginationToken,
@as("rows") rows: option<tableRows>,
@as("columnIds") columnIds: option<resourceIds>
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "QueryTableRowsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTableRows = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: maxResults,
@as("rowIds") rowIds: rowIdList,
@as("tableId") tableId: option<resourceId>,
@as("workbookId") workbookId: option<resourceId>
}
  type response = {
@as("workbookCursor") workbookCursor: option<workbookCursor>,
@as("nextToken") nextToken: paginationToken,
@as("rowIdsNotFound") rowIdsNotFound: rowIdList,
@as("rows") rows: option<tableRows>,
@as("columnIds") columnIds: option<resourceIds>
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "ListTableRowsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchUpsertTableRows = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("rowsToUpsert") rowsToUpsert: option<upsertRowDataList>,
@as("tableId") tableId: option<resourceId>,
@as("workbookId") workbookId: option<resourceId>
}
  type response = {
@as("failedBatchItems") failedBatchItems: failedBatchItems,
@as("workbookCursor") workbookCursor: option<workbookCursor>,
@as("rows") rows: option<upsertRowsResultMap>
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "BatchUpsertTableRowsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchUpdateTableRows = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("rowsToUpdate") rowsToUpdate: option<updateRowDataList>,
@as("tableId") tableId: option<resourceId>,
@as("workbookId") workbookId: option<resourceId>
}
  type response = {
@as("failedBatchItems") failedBatchItems: failedBatchItems,
@as("workbookCursor") workbookCursor: option<workbookCursor>
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "BatchUpdateTableRowsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchCreateTableRows = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("rowsToCreate") rowsToCreate: option<createRowDataList>,
@as("tableId") tableId: option<resourceId>,
@as("workbookId") workbookId: option<resourceId>
}
  type response = {
@as("failedBatchItems") failedBatchItems: failedBatchItems,
@as("createdRows") createdRows: option<createdRowsMap>,
@as("workbookCursor") workbookCursor: option<workbookCursor>
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "BatchCreateTableRowsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTableDataImportJob = {
  type t;
  type request = {
@as("jobId") jobId: option<jobId>,
@as("tableId") tableId: option<resourceId>,
@as("workbookId") workbookId: option<resourceId>
}
  type response = {
@as("jobMetadata") jobMetadata: option<tableDataImportJobMetadata>,
@as("message") message: option<tableDataImportJobMessage>,
@as("jobStatus") jobStatus: option<tableDataImportJobStatus>
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "DescribeTableDataImportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetScreenData = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: maxResults,
@as("variables") variables: variableValueMap,
@as("screenId") screenId: option<resourceId>,
@as("appId") appId: option<resourceId>,
@as("workbookId") workbookId: option<resourceId>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("workbookCursor") workbookCursor: option<workbookCursor>,
@as("results") results: option<resultSetMap>
}
  @module("@aws-sdk/client-honeycode") @new external new_: (request) => t = "GetScreenDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
