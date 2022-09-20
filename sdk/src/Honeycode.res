type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-honeycode") @new
external createClient: unit => awsServiceClient = "HoneycodeClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type workbookCursor = float
type variableName = string
type upsertAction = [@as("APPENDED") #APPENDED | @as("UPDATED") #UPDATED]
type timestampInMillis = Js.Date.t
type tagValue = string
type tagKey = string
type tableName = string
type tableDataImportJobStatus = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("SUBMITTED") #SUBMITTED
]
type tableDataImportJobMessage = string
type tableColumnName = string
type sourceDataColumnIndex = int
type secureURL = string
type rowId = string
type resourceId = string
type resourceArn = string
type rawValue = string
type paginationToken = string
type name = string
type maxResults = int
type jobId = string
type importSourceDataFormat = [@as("DELIMITED_TEXT") #DELIMITED_TEXT]
type importDataCharacterEncoding = [
  | @as("UTF-16") #UTF_16
  | @as("UTF-16LE") #UTF_16LE
  | @as("UTF-16BE") #UTF_16BE
  | @as("ISO-8859-1") #ISO_8859_1
  | @as("US-ASCII") #US_ASCII
  | @as("UTF-8") #UTF_8
]
type ignoreEmptyRows = bool
type hasHeaderRow = bool
type formula = string
type formattedValue = string
type format = [
  | @as("ROWSET") #ROWSET
  | @as("ROWLINK") #ROWLINK
  | @as("CONTACT") #CONTACT
  | @as("ACCOUNTING") #ACCOUNTING
  | @as("TEXT") #TEXT
  | @as("PERCENTAGE") #PERCENTAGE
  | @as("DATE_TIME") #DATE_TIME
  | @as("TIME") #TIME
  | @as("DATE") #DATE
  | @as("CURRENCY") #CURRENCY
  | @as("NUMBER") #NUMBER
  | @as("AUTO") #AUTO
]
type fact = string
type errorMessage = string
type errorCode = [
  | @as("SYSTEM_LIMIT_ERROR") #SYSTEM_LIMIT_ERROR
  | @as("RESOURCE_NOT_FOUND_ERROR") #RESOURCE_NOT_FOUND_ERROR
  | @as("UNKNOWN_ERROR") #UNKNOWN_ERROR
  | @as("FILE_NOT_FOUND_ERROR") #FILE_NOT_FOUND_ERROR
  | @as("FILE_SIZE_LIMIT_ERROR") #FILE_SIZE_LIMIT_ERROR
  | @as("FILE_PARSING_ERROR") #FILE_PARSING_ERROR
  | @as("INVALID_FILE_TYPE_ERROR") #INVALID_FILE_TYPE_ERROR
  | @as("FILE_EMPTY_ERROR") #FILE_EMPTY_ERROR
  | @as("TABLE_NOT_FOUND_ERROR") #TABLE_NOT_FOUND_ERROR
  | @as("INVALID_TABLE_COLUMN_ID_ERROR") #INVALID_TABLE_COLUMN_ID_ERROR
  | @as("INVALID_TABLE_ID_ERROR") #INVALID_TABLE_ID_ERROR
  | @as("INVALID_IMPORT_OPTIONS_ERROR") #INVALID_IMPORT_OPTIONS_ERROR
  | @as("INVALID_URL_ERROR") #INVALID_URL_ERROR
  | @as("ACCESS_DENIED") #ACCESS_DENIED
]
type email = string
type delimitedTextDelimiter = string
type clientRequestToken = string
type batchItemId = string
type batchErrorMessage = string
type awsUserArn = string
@ocaml.doc(
  "<p>The input variables to the app to be used by the InvokeScreenAutomation action request.</p>"
)
type variableValue = {@ocaml.doc("<p>Raw value of the variable.</p>") rawValue: rawValue}
@ocaml.doc("<p>A string to string map representing tags</p>") type tagsMap = Js.Dict.t<tagValue>
@ocaml.doc("<p>A list of tag keys</p>") type tagKeysList = array<tagKey>
@ocaml.doc("<p>An object that contains attributes about a single column in a table</p>")
type tableColumn = {
  @ocaml.doc("<p>
            The column level format that is applied in the table. An empty value in this field means that the
            column format is the default value 'AUTO'.
        </p>")
  format: option<format>,
  @ocaml.doc("<p>The name of the column in the table.</p>")
  tableColumnName: option<tableColumnName>,
  @ocaml.doc("<p>The id of the column in the table.</p>") tableColumnId: option<resourceId>,
}
@ocaml.doc("<p>An object representing the properties of a table in a workbook.</p>")
type table = {
  @ocaml.doc("<p>The name of the table.</p>") tableName: option<tableName>,
  @ocaml.doc("<p>The id of the table.</p>") tableId: option<resourceId>,
}
@ocaml.doc(
  "<p>An object that contains the properties for importing data to a specific column in a table.</p>"
)
type sourceDataColumnProperties = {
  @ocaml.doc("<p>The index of the column in the input file.</p>")
  columnIndex: option<sourceDataColumnIndex>,
}
type rowIdList = array<rowId>
type resourceIds = array<resourceId>
@ocaml.doc("<p>An object that contains the attributes of the submitter of the import job.</p>")
type importJobSubmitter = {
  @ocaml.doc("<p>The AWS user ARN of the submitter of the import job, if available.</p>")
  userArn: option<awsUserArn>,
  @ocaml.doc("<p>The email id of the submitter of the import job, if available.</p>")
  email: option<email>,
}
@ocaml.doc("<p>
            An object that contains the configuration parameters for the data source of an import request.
        </p>")
type importDataSourceConfig = {
  @ocaml.doc("<p>
            The URL from which source data will be downloaded for the import request.
        </p>")
  dataSourceUrl: option<secureURL>,
}
type formattedValuesList = array<formattedValue>
@ocaml.doc("<p>
            An object that represents a filter formula along with the id of the context row under which the filter
            function needs to evaluate.
        </p>")
type filter = {
  @ocaml.doc("<p>
            The optional contextRowId attribute can be used to specify the row id of the context row if the filter
            formula contains unqualified references to table columns and needs a context row to evaluate them
            successfully.
        </p>")
  contextRowId: option<rowId>,
  @ocaml.doc("<p>
            A formula representing a filter function that returns zero or more matching rows from a table. Valid
            formulas in this field return a list of rows from a table. The most common ways of writing a formula to
            return a list of rows are to use the FindRow() or Filter() functions. Any other formula that returns zero or
            more rows is also acceptable. For example, you can use a formula that points to a cell that contains a
            filter function.
        </p>")
  formula: formula,
}
@ocaml.doc("<p>
            A single item in a batch that failed to perform the intended action because of an error preventing it from
            succeeding.
        </p>")
type failedBatchItem = {
  @ocaml.doc("<p>
            The error message that indicates why the batch item failed.
        </p>")
  errorMessage: batchErrorMessage,
  @ocaml.doc("<p>
            The id of the batch item that failed. This is the batch item id for the BatchCreateTableRows and
            BatchUpsertTableRows operations and the row id for the BatchUpdateTableRows and BatchDeleteTableRows
            operations.
        </p>")
  id: batchItemId,
}
type factList = array<fact>
@ocaml.doc("<p>
            An object that contains the options relating to parsing delimited text as part of an import request.
        </p>")
type delimitedTextImportOptions = {
  @ocaml.doc("<p>The encoding of the data in the input file.</p>")
  dataCharacterEncoding: option<importDataCharacterEncoding>,
  @ocaml.doc(
    "<p>A parameter to indicate whether empty rows should be ignored or be included in the import.</p>"
  )
  ignoreEmptyRows: option<ignoreEmptyRows>,
  @ocaml.doc(
    "<p>Indicates whether the input file has a header row at the top containing the column names.</p>"
  )
  hasHeaderRow: option<hasHeaderRow>,
  @ocaml.doc("<p>The delimiter to use for separating columns in a single row of the input.</p>")
  delimiter: delimitedTextDelimiter,
}
@ocaml.doc("<p>The data in a particular data cell defined on the screen.</p>")
type dataItem = {
  @ocaml.doc("<p>The formatted value of the data. e.g. John Smith.</p>")
  formattedValue: option<formattedValue>,
  @ocaml.doc("<p>The raw value of the data. e.g. jsmith@example.com</p>")
  rawValue: option<rawValue>,
  @ocaml.doc("<p>
            The overrideFormat is optional and is specified only if a particular row of data has a different format for
            the data than the default format defined on the screen or the table.
        </p>")
  overrideFormat: option<format>,
}
type createdRowsMap = Js.Dict.t<rowId>
@ocaml.doc("<p>Metadata for column in the table.</p>")
type columnMetadata = {
  @ocaml.doc("<p>The format of the column.</p>") format: format,
  @ocaml.doc("<p>The name of the column.</p>") name: name,
}
type variableValueMap = Js.Dict.t<variableValue>
@ocaml.doc("<p>
            An object that represents the result of a single upsert row request.
        </p>")
type upsertRowsResult = {
  @ocaml.doc("<p>
            The result of the upsert action.
        </p>")
  upsertAction: upsertAction,
  @ocaml.doc("<p>
            The list of row ids that were changed as part of an upsert row operation. If the upsert resulted in an
            update, this list could potentially contain multiple rows that matched the filter and hence got updated.
            If the upsert resulted in an append, this list would only have the single row that was appended.
        </p>")
  rowIds: rowIdList,
}
type tables = array<table>
type tableColumns = array<tableColumn>
type resultHeader = array<columnMetadata>
@ocaml.doc(
  "<p>An object that has details about the source of the data that was submitted for import.</p>"
)
type importDataSource = {
  @ocaml.doc("<p>The configuration parameters for the data source of the import</p>")
  dataSourceConfig: importDataSourceConfig,
}
type importColumnMap = Js.Dict.t<sourceDataColumnProperties>
type failedBatchItems = array<failedBatchItem>
type dataItems = array<dataItem>
@ocaml.doc("<p>
            CellInput object contains the data needed to create or update cells in a table.
        </p>
        <note>
            <p>
                CellInput object has only a facts field or a fact field, but not both. A 400 bad request will be
                thrown if both fact and facts field are present.
            </p>
        </note>")
type cellInput = {
  @ocaml.doc("<p>
            A list representing the values that are entered into a ROWSET cell. Facts list can have either only values
            or rowIDs, and rowIDs should from the same table.
        </p>")
  facts: option<factList>,
  @ocaml.doc("<p>
            Fact represents the data that is entered into a cell. This data can be free text or a formula. Formulas need
            to start with the equals (=) sign.
        </p>")
  fact: option<fact>,
}
@ocaml.doc("<p>An object that represents a single cell in a table.</p>")
type cell = {
  @ocaml.doc("<p>
            A list of formatted values of the cell. This field is only returned when the cell is ROWSET format
            (aka multi-select or multi-record picklist). Values in the list are always represented as strings.
            The formattedValue field will be empty if this field is returned.
        </p>")
  formattedValues: option<formattedValuesList>,
  @ocaml.doc("<p>
            The formatted value of the cell. This is the value that you see displayed in the cell in the UI.
        </p>
        <p>
            Note that the formatted value of a cell is always represented as a string irrespective of the data that is
            stored in the cell. For example, if a cell contains a date, the formatted value of the cell is the string
            representation of the formatted date being shown in the cell in the UI. See details in the rawValue field
            below for how cells of different formats will have different raw and formatted values.
        </p>")
  formattedValue: option<formattedValue>,
  @ocaml.doc("<p>
            The raw value of the data contained in the cell. The raw value depends on the format of the data in the
            cell. However the attribute in the API return value is always a string containing the raw value.
        </p>
        <p>
            Cells with format DATE, DATE_TIME or TIME have the raw value as a floating point
            number where the whole number represents the number of days since 1/1/1900 and the fractional part
            represents the fraction of the day since midnight. For example, a cell with date 11/3/2020 has the raw value
            \"44138\". A cell with the time 9:00 AM has the raw value \"0.375\" and a cell with date/time value of
            11/3/2020 9:00 AM has the raw value \"44138.375\". Notice that even though the raw value is a number in all
            three cases, it is still represented as a string.
        </p>
        <p>
            Cells with format NUMBER, CURRENCY, PERCENTAGE and ACCOUNTING have the raw value of the data as the number
            representing the data being displayed. For example, the number 1.325 with two decimal places in the format
            will have it's raw value as \"1.325\" and formatted value as \"1.33\". A currency value for
            $10 will have the raw value as \"10\" and formatted value as \"$10.00\". A value representing 20% with two
            decimal places in the format will have its raw value as \"0.2\" and the formatted value as \"20.00%\". An
            accounting value of -$25 will have \"-25\" as the raw value and \"$  (25.00)\" as the formatted value.
        </p>
        <p>
            Cells with format TEXT will have the raw text as the raw value. For example, a cell with text \"John Smith\"
            will have \"John Smith\" as both the raw value and the formatted value.
        </p>
        <p>
            Cells with format CONTACT will have the name of the contact as a formatted value and the email address of
            the contact as the raw value. For example, a contact for John Smith will have \"John Smith\" as the
            formatted value and \"john.smith@example.com\" as the raw value.
        </p>
        <p>
            Cells with format ROWLINK (aka picklist) will have the first column of the linked row as the formatted value
            and the row id of the linked row as the raw value. For example, a cell containing a picklist to a table
            that displays task status might have \"Completed\" as the formatted value and
            \"row:dfcefaee-5b37-4355-8f28-40c3e4ff5dd4/ca432b2f-b8eb-431d-9fb5-cbe0342f9f03\" as the raw value.
        </p>
        <p>
            Cells with format ROWSET (aka multi-select or multi-record picklist) will by default have the first column
            of each of the linked rows as the formatted value in the list, and the rowset id of the linked rows as the
            raw value. For example, a cell containing a multi-select picklist to a table that contains items might have
            \"Item A\", \"Item B\" in the formatted value list and \"rows:b742c1f4-6cb0-4650-a845-35eb86fcc2bb/
            [fdea123b-8f68-474a-aa8a-5ff87aa333af,6daf41f0-a138-4eee-89da-123086d36ecf]\" as the raw value.
        </p>
        <p>
            Cells with format ATTACHMENT will have the name of the attachment as the formatted value and the attachment
            id as the raw value. For example, a cell containing an attachment named \"image.jpeg\" will have
            \"image.jpeg\" as the formatted value and \"attachment:ca432b2f-b8eb-431d-9fb5-cbe0342f9f03\" as the raw value.
        </p>
        <p>
            Cells with format AUTO or cells without any format that are auto-detected as one of the formats above will
            contain the raw and formatted values as mentioned above, based on the auto-detected formats. If there is no
            auto-detected format, the raw and formatted values will be the same as the data in the cell.
        </p>")
  rawValue: option<rawValue>,
  @ocaml.doc("<p>The format of the cell. If this field is empty, then the format is either not specified in the
        workbook or the format is set to AUTO.</p>")
  format: option<format>,
  @ocaml.doc("<p>
            The formula contained in the cell. This field is empty if a cell does not have a formula.
        </p>")
  formula: option<formula>,
}
type upsertRowsResultMap = Js.Dict.t<upsertRowsResult>
type rowDataInput = Js.Dict.t<cellInput>
@ocaml.doc("<p>A single row in the ResultSet.</p>")
type resultRow = {
  @ocaml.doc("<p>List of all the data cells in a row.</p>") dataItems: dataItems,
  @ocaml.doc("<p>The ID for a particular row.</p>") rowId: option<rowId>,
}
@ocaml.doc(
  "<p>An object that contains the options relating to the destination of the import request.</p>"
)
type destinationOptions = {
  @ocaml.doc("<p>A map of the column id to the import properties for each column.</p>")
  columnMap: option<importColumnMap>,
}
type cells = array<cell>
@ocaml.doc("<p>
            Data needed to upsert rows in a table as part of a single item in the BatchUpsertTableRows request.
        </p>")
type upsertRowData = {
  @ocaml.doc("<p>
            A map representing the cells to update for the matching rows or an appended row. The key is the column id
            of the cell and the value is the CellInput object that represents the data to set in that cell.
        </p>")
  cellsToUpdate: rowDataInput,
  @ocaml.doc("<p>
            The filter formula to use to find existing matching rows to update. The formula needs to return zero or more
            rows. If the formula returns 0 rows, then a new row will be appended in the target table. If the formula
            returns one or more rows, then the returned rows will be updated.
        </p>
        <p>
            Note that the filter formula needs to return rows from the target table for the upsert operation to succeed.
            If the filter formula has a syntax error or it doesn't evaluate to zero or more rows in the target table
            for any one item in the input list, then the entire BatchUpsertTableRows request fails and no updates are
            made to the table.
        </p>")
  filter: filter,
  @ocaml.doc("<p>
            An external identifier that represents a single item in the request that is being upserted as part of the
            BatchUpsertTableRows request. This can be any string that you can use to identify the item in the request.
            The BatchUpsertTableRows API puts the batch item id in the results to allow you to link data in the
            request to data in the results.
        </p>")
  batchItemId: batchItemId,
}
@ocaml.doc("<p>
            Data needed to create a single row in a table as part of the BatchCreateTableRows request.
        </p>")
type updateRowData = {
  @ocaml.doc("<p>
            A map representing the cells to update in the given row. The key is the column id of the
            cell and the value is the CellInput object that represents the data to set in that cell.
        </p>")
  cellsToUpdate: rowDataInput,
  @ocaml.doc("<p>
            The id of the row that needs to be updated.
        </p>")
  rowId: rowId,
}
@ocaml.doc("<p>An object that contains attributes about a single row in a table</p>")
type tableRow = {
  @ocaml.doc("<p>A list of cells in the table row. The cells appear in the same order as the columns of the table.
        </p>")
  cells: cells,
  @ocaml.doc("<p>The id of the row in the table.</p>") rowId: rowId,
}
type resultRows = array<resultRow>
@ocaml.doc(
  "<p>An object that contains the options specified by the sumitter of the import request.</p>"
)
type importOptions = {
  @ocaml.doc(
    "<p>Options relating to parsing delimited text. Required if dataFormat is DELIMITED_TEXT.</p>"
  )
  delimitedTextOptions: option<delimitedTextImportOptions>,
  @ocaml.doc("<p>Options relating to the destination of the import request.</p>")
  destinationOptions: option<destinationOptions>,
}
@ocaml.doc("<p>
            Data needed to create a single row in a table as part of the BatchCreateTableRows request.
        </p>")
type createRowData = {
  @ocaml.doc("<p>
            A map representing the cells to create in the new row. The key is the column id of the
            cell and the value is the CellInput object that represents the data to set in that cell.
        </p>")
  cellsToCreate: rowDataInput,
  @ocaml.doc("<p>
            An external identifier that represents the single row that is being created as part of the
            BatchCreateTableRows request. This can be any string that you can use to identify the row in the request.
            The BatchCreateTableRows API puts the batch item id in the results to allow you to link data in the
            request to data in the results.
        </p>")
  batchItemId: batchItemId,
}
type upsertRowDataList = array<upsertRowData>
type updateRowDataList = array<updateRowData>
type tableRows = array<tableRow>
@ocaml.doc("<p>The metadata associated with the table data import job that was submitted.</p>")
type tableDataImportJobMetadata = {
  @ocaml.doc("<p>The source of the data that was submitted for import.</p>")
  dataSource: importDataSource,
  @ocaml.doc("<p>The options that was specified at the time of submitting the import request.</p>")
  importOptions: importOptions,
  @ocaml.doc("<p>The timestamp when the job was submitted for import.</p>")
  submitTime: timestampInMillis,
  @ocaml.doc("<p>Details about the submitter of the import request.</p>")
  submitter: importJobSubmitter,
}
@ocaml.doc("<p>
            ResultSet contains the results of the request for a single block or list defined on the screen.
        </p>")
type resultSet = {
  @ocaml.doc("<p>
            List of rows returned by the request. Each row has a row Id and a list of data cells in that row. The data
            cells will be present in the same order as they are defined in the header.
        </p>")
  rows: resultRows,
  @ocaml.doc("<p>
            List of headers for all the data cells in the block. The header identifies the name and default format of
            the data cell. Data cells appear in the same order in all rows as defined in the header. The names and
            formats are not repeated in the rows. If a particular row does not have a value for a data cell, a blank
            value is used.
        </p>
        <p>
            For example, a task list that displays the task name, due date and assigned person might have headers
            [ { \"name\": \"Task Name\"}, {\"name\": \"Due Date\", \"format\": \"DATE\"}, {\"name\": \"Assigned\", \"format\": \"CONTACT\"} ].
            Every row in the result will have the task name as the first item, due date as the second item and assigned
            person as the third item. If a particular task does not have a due date, that row will still have a blank
            value in the second element and the assigned person will still be in the third element.
        </p>")
  headers: resultHeader,
}
type createRowDataList = array<createRowData>
type resultSetMap = Js.Dict.t<resultSet>
@ocaml.doc("<p>
      Amazon Honeycode is a fully managed service that allows you to quickly build mobile and web apps for teams—without
      programming. Build Honeycode apps for managing almost anything, like projects, customers, operations, approvals,
      resources, and even your team.
    </p>")
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag keys to remove from the resource.</p>") tagKeys: tagKeysList,
    @ocaml.doc("<p>The resource's Amazon Resource Name (ARN).</p>") resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-honeycode") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags to apply to the resource.</p>") tags: tagsMap,
    @ocaml.doc("<p>The resource's Amazon Resource Name (ARN).</p>") resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-honeycode") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The resource's Amazon Resource Name (ARN).</p>") resourceArn: resourceArn,
  }
  type response = {@ocaml.doc("<p>The resource's tags.</p>") tags: option<tagsMap>}
  @module("@aws-sdk/client-honeycode") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTables = {
  type t
  type request = {
    @ocaml.doc("<p>
            This parameter is optional. If a nextToken is not specified, the API returns the first page of data.
        </p>
        <p>
            Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API
            will throw ValidationException.
        </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of tables to return in each page of the results.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ID of the workbook whose tables are being retrieved.</p>
        <p>
            If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    workbookId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>
            Indicates the cursor of the workbook at which the data returned by this request is read. Workbook cursor
            keeps increasing with every update and the increments are not sequential.
        </p>")
    workbookCursor: option<workbookCursor>,
    @ocaml.doc("<p>
            Provides the pagination token to load the next page if there are more results matching the request. If a
            pagination token is not present in the response, it means that all data matching the request has been
            loaded.
        </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
            The list of tables in the workbook.
        </p>")
    tables: tables,
  }
  @module("@aws-sdk/client-honeycode") @new external new: request => t = "ListTablesCommand"
  let make = (~workbookId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, workbookId: workbookId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTableColumns = {
  type t
  type request = {
    @ocaml.doc("<p>
            This parameter is optional. If a nextToken is not specified, the API returns the first page of data.
        </p>
        <p>
            Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API
            will throw ValidationException.
        </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The ID of the table whose columns are being retrieved.</p>
        <p>
            If a table with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    tableId: resourceId,
    @ocaml.doc("<p>The ID of the workbook that contains the table whose columns are being retrieved.</p>
        <p>
            If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    workbookId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>
            Indicates the cursor of the workbook at which the data returned by this request is read. Workbook cursor
            keeps increasing with every update and the increments are not sequential.
        </p>")
    workbookCursor: option<workbookCursor>,
    @ocaml.doc("<p>
            Provides the pagination token to load the next page if there are more results matching the request. If a
            pagination token is not present in the response, it means that all data matching the request has been
            loaded.
        </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
            The list of columns in the table.
        </p>")
    tableColumns: tableColumns,
  }
  @module("@aws-sdk/client-honeycode") @new external new: request => t = "ListTableColumnsCommand"
  let make = (~tableId, ~workbookId, ~nextToken=?, ()) =>
    new({nextToken: nextToken, tableId: tableId, workbookId: workbookId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InvokeScreenAutomation = {
  type t
  type request = {
    @ocaml.doc("<p>
            The request token for performing the automation action.
            Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
            like a failed network connection, you can retry the call with the same request token. The service ensures
            that if the first call using that request token is successfully performed, the second call will return the
            response of the previous call rather than performing the action again.
        </p>
        <p>
            Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
            spanning hours or days.
        </p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>
            The row ID for the automation if the automation is defined inside a block with source or list.
        </p>")
    rowId: option<rowId>,
    @ocaml.doc("<p>
            Variables are specified as a map where the key is the name of the variable as defined on the screen. The value is an
            object which currently has only one property, rawValue, which holds the value of the variable to be passed
            to the screen. Any variables defined in a screen are required to be passed in the call.
        </p>")
    variables: option<variableValueMap>,
    @ocaml.doc("<p>The ID of the automation action to be performed.</p>")
    screenAutomationId: resourceId,
    @ocaml.doc("<p>The ID of the screen that contains the screen automation.</p>")
    screenId: resourceId,
    @ocaml.doc("<p>The ID of the app that contains the screen automation.</p>") appId: resourceId,
    @ocaml.doc("<p>The ID of the workbook that contains the screen automation.</p>")
    workbookId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The updated workbook cursor after performing the automation action.</p>")
    workbookCursor: workbookCursor,
  }
  @module("@aws-sdk/client-honeycode") @new
  external new: request => t = "InvokeScreenAutomationCommand"
  let make = (
    ~screenAutomationId,
    ~screenId,
    ~appId,
    ~workbookId,
    ~clientRequestToken=?,
    ~rowId=?,
    ~variables=?,
    (),
  ) =>
    new({
      clientRequestToken: clientRequestToken,
      rowId: rowId,
      variables: variables,
      screenAutomationId: screenAutomationId,
      screenId: screenId,
      appId: appId,
      workbookId: workbookId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDeleteTableRows = {
  type t
  type request = {
    @ocaml.doc("<p>
            The request token for performing the delete action.
            Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
            like a failed network connection, you can retry the call with the same request token. The service ensures
            that if the first call using that request token is successfully performed, the second call will not perform
            the action again.
        </p>
        <p>
            Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
            spanning hours or days.
        </p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>
            The list of row ids to delete from the table. You need to specify at least one row id in this list.
        </p>
        <p>
            Note that if one of the row ids provided in the request does not exist in the table, then the request fails
            and no rows are deleted from the table.
        </p>")
    rowIds: rowIdList,
    @ocaml.doc("<p>The ID of the table where the rows are being deleted.</p>
        <p>
            If a table with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    tableId: resourceId,
    @ocaml.doc("<p>The ID of the workbook where the rows are being deleted.</p>
        <p>
            If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    workbookId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>
            The list of row ids in the request that could not be deleted from the table. Each element in this list
            contains one row id from the request that could not be deleted along with the reason why that item could not
            be deleted.
        </p>")
    failedBatchItems: option<failedBatchItems>,
    @ocaml.doc("<p>The updated workbook cursor after deleting the rows from the table.</p>")
    workbookCursor: workbookCursor,
  }
  @module("@aws-sdk/client-honeycode") @new
  external new: request => t = "BatchDeleteTableRowsCommand"
  let make = (~rowIds, ~tableId, ~workbookId, ~clientRequestToken=?, ()) =>
    new({
      clientRequestToken: clientRequestToken,
      rowIds: rowIds,
      tableId: tableId,
      workbookId: workbookId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartTableDataImportJob = {
  type t
  type request = {
    @ocaml.doc("<p>
            The request token for performing the update action.
            Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
            like a failed network connection, you can retry the call with the same request token. The service ensures
            that if the first call using that request token is successfully performed, the second call will not perform
            the action again.
        </p>
        <p>
            Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
            spanning hours or days.
        </p>")
    clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>
            The options for customizing this import request.
        </p>")
    importOptions: importOptions,
    @ocaml.doc("<p>The ID of the table where the rows are being imported.</p>
        <p>
            If a table with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    destinationTableId: resourceId,
    @ocaml.doc("<p>
            The format of the data that is being imported. Currently the only option supported is \"DELIMITED_TEXT\".
        </p>")
    dataFormat: importSourceDataFormat,
    @ocaml.doc("<p>
            The source of the data that is being imported. The size of source must be no larger than 100 MB.
            Source must have no more than 100,000 cells and no more than 1,000 rows.
        </p>")
    dataSource: importDataSource,
    @ocaml.doc("<p>The ID of the workbook where the rows are being imported.</p>
        <p>
            If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    workbookId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>
            The status of the import job immediately after submitting the request.
        </p>")
    jobStatus: tableDataImportJobStatus,
    @ocaml.doc("<p>
            The id that is assigned to this import job. Future requests to find out the status of this import job
            need to send this id in the appropriate parameter in the request.
        </p>")
    jobId: jobId,
  }
  @module("@aws-sdk/client-honeycode") @new
  external new: request => t = "StartTableDataImportJobCommand"
  let make = (
    ~clientRequestToken,
    ~importOptions,
    ~destinationTableId,
    ~dataFormat,
    ~dataSource,
    ~workbookId,
    (),
  ) =>
    new({
      clientRequestToken: clientRequestToken,
      importOptions: importOptions,
      destinationTableId: destinationTableId,
      dataFormat: dataFormat,
      dataSource: dataSource,
      workbookId: workbookId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module QueryTableRows = {
  type t
  type request = {
    @ocaml.doc("<p>
            This parameter is optional. If a nextToken is not specified, the API returns the first page of data.
        </p>
        <p>
            Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API
            will throw ValidationException.
        </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of rows to return in each page of the results.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An object that represents a filter formula along with the id of the context row under which the filter
            function needs to evaluate.</p>")
    filterFormula: filter,
    @ocaml.doc("<p>The ID of the table whose rows are being queried.</p>
        <p>
            If a table with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    tableId: resourceId,
    @ocaml.doc("<p>The ID of the workbook whose table rows are being queried.</p>
        <p>
            If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    workbookId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>
            Indicates the cursor of the workbook at which the data returned by this request is read. Workbook cursor
            keeps increasing with every update and the increments are not sequential.
        </p>")
    workbookCursor: workbookCursor,
    @ocaml.doc("<p>
            Provides the pagination token to load the next page if there are more results matching the request. If a
            pagination token is not present in the response, it means that all data matching the request has been
            loaded.
        </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
            The list of rows in the table that match the query filter.
        </p>")
    rows: tableRows,
    @ocaml.doc("<p>
            The list of columns in the table whose row data is returned in the result.
        </p>")
    columnIds: resourceIds,
  }
  @module("@aws-sdk/client-honeycode") @new external new: request => t = "QueryTableRowsCommand"
  let make = (~filterFormula, ~tableId, ~workbookId, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filterFormula: filterFormula,
      tableId: tableId,
      workbookId: workbookId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTableRows = {
  type t
  type request = {
    @ocaml.doc("<p>
            This parameter is optional. If a nextToken is not specified, the API returns the first page of data.
        </p>
        <p>
            Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API
            will throw ValidationException.
        </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of rows to return in each page of the results.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
            This parameter is optional. If one or more row ids are specified in this list, then only the specified
            row ids are returned in the result. If no row ids are specified here, then all the rows in the table are
            returned.
        </p>")
    rowIds: option<rowIdList>,
    @ocaml.doc("<p>The ID of the table whose rows are being retrieved.</p>
        <p>
            If a table with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    tableId: resourceId,
    @ocaml.doc("<p>The ID of the workbook that contains the table whose rows are being retrieved.</p>
        <p>
            If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    workbookId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>
            Indicates the cursor of the workbook at which the data returned by this request is read. Workbook cursor
            keeps increasing with every update and the increments are not sequential.
        </p>")
    workbookCursor: workbookCursor,
    @ocaml.doc("<p>
            Provides the pagination token to load the next page if there are more results matching the request. If a
            pagination token is not present in the response, it means that all data matching the request has been
            loaded.
        </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
            The list of row ids included in the request that were not found in the table.
        </p>")
    rowIdsNotFound: option<rowIdList>,
    @ocaml.doc("<p>
            The list of rows in the table. Note that this result is paginated, so this list contains a maximum of 100
            rows.
        </p>")
    rows: tableRows,
    @ocaml.doc("<p>
            The list of columns in the table whose row data is returned in the result.
        </p>")
    columnIds: resourceIds,
  }
  @module("@aws-sdk/client-honeycode") @new external new: request => t = "ListTableRowsCommand"
  let make = (~tableId, ~workbookId, ~nextToken=?, ~maxResults=?, ~rowIds=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      rowIds: rowIds,
      tableId: tableId,
      workbookId: workbookId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTableDataImportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the job that was returned by the StartTableDataImportJob request.</p>
        <p>
            If a job with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    jobId: jobId,
    @ocaml.doc("<p>The ID of the table into which data was imported.</p>
        <p>
            If a table with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    tableId: resourceId,
    @ocaml.doc("<p>The ID of the workbook into which data was imported.</p>
        <p>
            If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    workbookId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>
            If job status is failed, error code to understand reason for the failure.
        </p>")
    errorCode: option<errorCode>,
    @ocaml.doc("<p>
            The metadata about the job that was submitted for import.
        </p>")
    jobMetadata: tableDataImportJobMetadata,
    @ocaml.doc("<p>
            A message providing more details about the current status of the import job.
        </p>")
    message: tableDataImportJobMessage,
    @ocaml.doc("<p>
            The current status of the import job.
        </p>")
    jobStatus: tableDataImportJobStatus,
  }
  @module("@aws-sdk/client-honeycode") @new
  external new: request => t = "DescribeTableDataImportJobCommand"
  let make = (~jobId, ~tableId, ~workbookId, ()) =>
    new({jobId: jobId, tableId: tableId, workbookId: workbookId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchUpsertTableRows = {
  type t
  type request = {
    @ocaml.doc("<p>
            The request token for performing the update action.
            Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
            like a failed network connection, you can retry the call with the same request token. The service ensures
            that if the first call using that request token is successfully performed, the second call will not perform
            the action again.
        </p>
        <p>
            Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
            spanning hours or days.
        </p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>
            The list of rows to upsert in the table. Each item in this list needs to have a batch item id to uniquely
            identify the element in the request, a filter expression to find the rows to update for that element
            and the cell values to set for each column in the upserted rows. You need to specify
            at least one item in this list.
        </p>
        <p>
            Note that if one of the filter formulas in the request fails to evaluate because of an error or one of the
            column ids in any of the rows does not exist in the table, then the request fails
            and no updates are made to the table.
        </p>")
    rowsToUpsert: upsertRowDataList,
    @ocaml.doc("<p>The ID of the table where the rows are being upserted.</p>
        <p>
            If a table with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    tableId: resourceId,
    @ocaml.doc("<p>The ID of the workbook where the rows are being upserted.</p>
        <p>
            If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    workbookId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>
            The list of batch items in the request that could not be updated or appended in the table. Each element in
            this list contains one item from the request that could not be updated in the table along with the reason
            why that item could not be updated or appended.
        </p>")
    failedBatchItems: option<failedBatchItems>,
    @ocaml.doc("<p>The updated workbook cursor after updating or appending rows in the table.</p>")
    workbookCursor: workbookCursor,
    @ocaml.doc("<p>
            A map with the batch item id as the key and the result of the upsert operation as the value. The
            result of the upsert operation specifies whether existing rows were updated or a new row was appended, along
            with the list of row ids that were affected.
        </p>")
    rows: upsertRowsResultMap,
  }
  @module("@aws-sdk/client-honeycode") @new
  external new: request => t = "BatchUpsertTableRowsCommand"
  let make = (~rowsToUpsert, ~tableId, ~workbookId, ~clientRequestToken=?, ()) =>
    new({
      clientRequestToken: clientRequestToken,
      rowsToUpsert: rowsToUpsert,
      tableId: tableId,
      workbookId: workbookId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchUpdateTableRows = {
  type t
  type request = {
    @ocaml.doc("<p>
            The request token for performing the update action.
            Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
            like a failed network connection, you can retry the call with the same request token. The service ensures
            that if the first call using that request token is successfully performed, the second call will not perform
            the action again.
        </p>
        <p>
            Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
            spanning hours or days.
        </p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>
            The list of rows to update in the table. Each item in this list needs to contain the row id to update
            along with the map of column id to cell values for each column in that row that needs to be updated.
            You need to specify at least one row in this list, and for each row, you need to specify at least one
            column to update.
        </p>
        <p>
            Note that if one of the row or column ids in the request does not exist in the table, then the request fails
            and no updates are made to the table.
        </p>")
    rowsToUpdate: updateRowDataList,
    @ocaml.doc("<p>The ID of the table where the rows are being updated.</p>
        <p>
            If a table with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    tableId: resourceId,
    @ocaml.doc("<p>The ID of the workbook where the rows are being updated.</p>
        <p>
            If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
        </p>")
    workbookId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>
            The list of batch items in the request that could not be updated in the table. Each element in this list
            contains one item from the request that could not be updated in the table along with the reason why
            that item could not be updated.
        </p>")
    failedBatchItems: option<failedBatchItems>,
    @ocaml.doc(
      "<p>The updated workbook cursor after adding the new rows at the end of the table.</p>"
    )
    workbookCursor: workbookCursor,
  }
  @module("@aws-sdk/client-honeycode") @new
  external new: request => t = "BatchUpdateTableRowsCommand"
  let make = (~rowsToUpdate, ~tableId, ~workbookId, ~clientRequestToken=?, ()) =>
    new({
      clientRequestToken: clientRequestToken,
      rowsToUpdate: rowsToUpdate,
      tableId: tableId,
      workbookId: workbookId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchCreateTableRows = {
  type t
  type request = {
    @ocaml.doc("<p>
            The request token for performing the batch create operation.
            Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
            like a failed network connection, you can retry the call with the same request token. The service ensures
            that if the first call using that request token is successfully performed, the second call will not perform
            the operation again.
        </p>
        <p>
            Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
            spanning hours or days.
        </p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>
            The list of rows to create at the end of the table. Each item in this list needs to have a batch item id
            to uniquely identify the element in the request and the cells to create for that row.
            You need to specify at least one item in this list.
        </p>
        <p>
            Note that if one of the column ids in any of the rows in the request does not exist in the table, then the
            request fails and no updates are made to the table.
        </p>")
    rowsToCreate: createRowDataList,
    @ocaml.doc("<p>The ID of the table where the new rows are being added.</p>
        <p>
            If a table with the specified ID could not be found, this API throws ResourceNotFoundException.
        </p>")
    tableId: resourceId,
    @ocaml.doc("<p>The ID of the workbook where the new rows are being added.</p>
        <p>
            If a workbook with the specified ID could not be found, this API throws ResourceNotFoundException.
        </p>")
    workbookId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>
            The list of batch items in the request that could not be added to the table. Each element in this list
            contains one item from the request that could not be added to the table along with the reason why
            that item could not be added.
        </p>")
    failedBatchItems: option<failedBatchItems>,
    @ocaml.doc("<p>The map of batch item id to the row id that was created for that item.</p>")
    createdRows: createdRowsMap,
    @ocaml.doc(
      "<p>The updated workbook cursor after adding the new rows at the end of the table.</p>"
    )
    workbookCursor: workbookCursor,
  }
  @module("@aws-sdk/client-honeycode") @new
  external new: request => t = "BatchCreateTableRowsCommand"
  let make = (~rowsToCreate, ~tableId, ~workbookId, ~clientRequestToken=?, ()) =>
    new({
      clientRequestToken: clientRequestToken,
      rowsToCreate: rowsToCreate,
      tableId: tableId,
      workbookId: workbookId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetScreenData = {
  type t
  type request = {
    @ocaml.doc("<p>
            This parameter is optional. If a nextToken is not specified, the API returns the first page of data.
        </p>
        <p>
            Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API
            will throw ValidationException.
        </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
            The number of results to be returned on a single page.
            Specify a number between 1 and 100. The maximum value is 100.
        </p>
        <p>
            This parameter is optional. If you don't specify this parameter, the default page size is 100.
        </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
            Variables are optional and are needed only if the screen requires them to render correctly. Variables are
            specified as a map where the key is the name of the variable as defined on the screen. The value is an
            object which currently has only one property, rawValue, which holds the value of the variable to be passed
            to the screen.
        </p>")
    variables: option<variableValueMap>,
    @ocaml.doc("<p>The ID of the screen.</p>") screenId: resourceId,
    @ocaml.doc("<p>The ID of the app that contains the screen.</p>") appId: resourceId,
    @ocaml.doc("<p>The ID of the workbook that contains the screen.</p>") workbookId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>
            Provides the pagination token to load the next page if there are more results matching the request. If a
            pagination token is not present in the response, it means that all data matching the query has been loaded.
        </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
            Indicates the cursor of the workbook at which the data returned by this workbook is read. Workbook cursor
            keeps increasing with every update and the increments are not sequential.
        </p>")
    workbookCursor: workbookCursor,
    @ocaml.doc("<p>A map of all the rows on the screen keyed by block name.</p>")
    results: resultSetMap,
  }
  @module("@aws-sdk/client-honeycode") @new external new: request => t = "GetScreenDataCommand"
  let make = (~screenId, ~appId, ~workbookId, ~nextToken=?, ~maxResults=?, ~variables=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      variables: variables,
      screenId: screenId,
      appId: appId,
      workbookId: workbookId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
