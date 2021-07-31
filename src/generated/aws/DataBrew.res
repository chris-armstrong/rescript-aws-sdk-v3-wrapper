type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type valueReference = string
type timezoneOffset = string
type timeout = int;
type targetColumn = string
type tagValue = string
type tagKey = string
type tableName = string
type stepIndex = int;
type startedBy = string
type startColumnIndex = int;
type source = [@as("DATABASE") #DATABASE | @as("DATA-CATALOG") #DATA_CATALOG | @as("S3") #S3]
type sheetName = string
type sheetIndex = int;
type sessionStatus = [@as("UPDATING") #UPDATING | @as("TERMINATING") #TERMINATING | @as("TERMINATED") #TERMINATED | @as("ROTATING") #ROTATING | @as("RECYCLING") #RECYCLING | @as("READY") #READY | @as("PROVISIONING") #PROVISIONING | @as("INITIALIZING") #INITIALIZING | @as("FAILED") #FAILED | @as("ASSIGNED") #ASSIGNED]
type scheduleName = string
type sampleType = [@as("RANDOM") #RANDOM | @as("LAST_N") #LAST_N | @as("FIRST_N") #FIRST_N]
type sampleSize = int;
type sampleMode = [@as("CUSTOM_ROWS") #CUSTOM_ROWS | @as("FULL_DATASET") #FULL_DATASET]
type result = string
type recipeVersion = string
type recipeName = string
type recipeErrorMessage = string
type recipeDescription = string
type publishedBy = string
type projectName = string
type preview = bool;
type pathParameterName = string
type parameterValue = string
type parameterType = [@as("String") #String | @as("Number") #Number | @as("Datetime") #Datetime]
type parameterName = string
type overwriteOutput = bool;
type outputFormat = [@as("XML") #XML | @as("ORC") #ORC | @as("AVRO") #AVRO | @as("GLUEPARQUET") #GLUEPARQUET | @as("PARQUET") #PARQUET | @as("JSON") #JSON | @as("CSV") #CSV]
type orderedBy = [@as("LAST_MODIFIED_DATE") #LAST_MODIFIED_DATE]
type order = [@as("ASCENDING") #ASCENDING | @as("DESCENDING") #DESCENDING]
type operation = string
type openedBy = string
type nextToken = string
type multiLine = bool;
type message = string
type maxRetries = int;
type maxResults100 = int;
type maxFiles = int;
type maxCapacity = int;
type logSubscription = [@as("DISABLE") #DISABLE | @as("ENABLE") #ENABLE]
type logGroupName = string
type localeCode = string
type lastModifiedBy = string
type key = string
type jobType = [@as("RECIPE") #RECIPE | @as("PROFILE") #PROFILE]
type jobSize = float;
type jobRunState = [@as("TIMEOUT") #TIMEOUT | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("STOPPED") #STOPPED | @as("STOPPING") #STOPPING | @as("RUNNING") #RUNNING | @as("STARTING") #STARTING]
type jobRunId = string
type jobRunErrorMessage = string
type jobName = string
type inputFormat = [@as("EXCEL") #EXCEL | @as("PARQUET") #PARQUET | @as("JSON") #JSON | @as("CSV") #CSV]
type headerRow = bool;
type glueConnectionName = string
type expression = string
type executionTime = int;
type errorCode = string
type encryptionMode = [@as("SSE-S3") #SSE_S3 | @as("SSE-KMS") #SSE_KMS]
type encryptionKeyArn = string
type delimiter = string
type datetimeFormat = string
type date = Js.Date.t;
type datasetName = string
type databaseTableName = string
type databaseName = string
type cronExpression = string
type createdBy = string
type createColumn = bool;
type conditionValue = string
type condition = string
type compressionFormat = [@as("ZLIB") #ZLIB | @as("ZSTD") #ZSTD | @as("BROTLI") #BROTLI | @as("LZO") #LZO | @as("DEFLATE") #DEFLATE | @as("BZIP2") #BZIP2 | @as("SNAPPY") #SNAPPY | @as("LZ4") #LZ4 | @as("GZIP") #GZIP]
type columnRange = int;
type columnName = string
type clientSessionId = string
type catalogId = string
type bucket = string
type attempt = int;
type assumeControl = bool;
type arn = string
type actionId = int;
type accountId = string
type valuesMap = Js.Dict.t< conditionValue>
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type sheetNameList = array<sheetName>
type sheetIndexList = array<sheetIndex>
type sample = {
@as("Type") type_: option<sampleType>,
@as("Size") size: sampleSize
}
type s3Location = {
@as("Key") key: key,
@as("Bucket") bucket: option<bucket>
}
type recipeVersionList = array<recipeVersion>
type recipeVersionErrorDetail = {
@as("RecipeVersion") recipeVersion: recipeVersion,
@as("ErrorMessage") errorMessage: recipeErrorMessage,
@as("ErrorCode") errorCode: errorCode
}
type recipeReference = {
@as("RecipeVersion") recipeVersion: recipeVersion,
@as("Name") name: option<recipeName>
}
type parameterMap = Js.Dict.t< parameterValue>
type jsonOptions = {
@as("MultiLine") multiLine: multiLine
}
type jobSample = {
@as("Size") size: jobSize,
@as("Mode") mode: sampleMode
}
type jobNameList = array<jobName>
type hiddenColumnList = array<columnName>
type filesLimit = {
@as("Order") order: order,
@as("OrderedBy") orderedBy: orderedBy,
@as("MaxFiles") maxFiles: option<maxFiles>
}
type datetimeOptions = {
@as("LocaleCode") localeCode: localeCode,
@as("TimezoneOffset") timezoneOffset: timezoneOffset,
@as("Format") format: option<datetimeFormat>
}
type csvOutputOptions = {
@as("Delimiter") delimiter: delimiter
}
type csvOptions = {
@as("HeaderRow") headerRow: headerRow,
@as("Delimiter") delimiter: delimiter
}
type conditionExpression = {
@as("TargetColumn") targetColumn: option<targetColumn>,
@as("Value") value: conditionValue,
@as("Condition") condition: option<condition>
}
type columnNameList = array<columnName>
type viewFrame = {
@as("HiddenColumns") hiddenColumns: hiddenColumnList,
@as("ColumnRange") columnRange: columnRange,
@as("StartColumnIndex") startColumnIndex: option<startColumnIndex>
}
type schedule = {
@as("Name") name: option<scheduleName>,
@as("Tags") tags: tagMap,
@as("CronExpression") cronExpression: cronExpression,
@as("ResourceArn") resourceArn: arn,
@as("LastModifiedDate") lastModifiedDate: date,
@as("LastModifiedBy") lastModifiedBy: lastModifiedBy,
@as("JobNames") jobNames: jobNameList,
@as("CreateDate") createDate: date,
@as("CreatedBy") createdBy: createdBy,
@as("AccountId") accountId: accountId
}
type recipeErrorList = array<recipeVersionErrorDetail>
type recipeAction = {
@as("Parameters") parameters: parameterMap,
@as("Operation") operation: option<operation>
}
type project = {
@as("OpenDate") openDate: date,
@as("OpenedBy") openedBy: openedBy,
@as("RoleArn") roleArn: arn,
@as("Tags") tags: tagMap,
@as("Sample") sample: sample,
@as("ResourceArn") resourceArn: arn,
@as("RecipeName") recipeName: option<recipeName>,
@as("Name") name: option<projectName>,
@as("LastModifiedBy") lastModifiedBy: lastModifiedBy,
@as("LastModifiedDate") lastModifiedDate: date,
@as("DatasetName") datasetName: datasetName,
@as("CreatedBy") createdBy: createdBy,
@as("CreateDate") createDate: date,
@as("AccountId") accountId: accountId
}
type outputFormatOptions = {
@as("Csv") csv: csvOutputOptions
}
type filterExpression = {
@as("ValuesMap") valuesMap: option<valuesMap>,
@as("Expression") expression: option<expression>
}
type excelOptions = {
@as("HeaderRow") headerRow: headerRow,
@as("SheetIndexes") sheetIndexes: sheetIndexList,
@as("SheetNames") sheetNames: sheetNameList
}
type databaseInputDefinition = {
@as("TempDirectory") tempDirectory: s3Location,
@as("DatabaseTableName") databaseTableName: option<databaseTableName>,
@as("GlueConnectionName") glueConnectionName: option<glueConnectionName>
}
type dataCatalogInputDefinition = {
@as("TempDirectory") tempDirectory: s3Location,
@as("TableName") tableName: option<tableName>,
@as("DatabaseName") databaseName: option<databaseName>,
@as("CatalogId") catalogId: catalogId
}
type conditionExpressionList = array<conditionExpression>
type scheduleList = array<schedule>
type recipeStep = {
@as("ConditionExpressions") conditionExpressions: conditionExpressionList,
@as("Action") action: option<recipeAction>
}
type projectList = array<project>
type output = {
@as("FormatOptions") formatOptions: outputFormatOptions,
@as("Overwrite") overwrite: overwriteOutput,
@as("Location") location: option<s3Location>,
@as("PartitionColumns") partitionColumns: columnNameList,
@as("Format") format: outputFormat,
@as("CompressionFormat") compressionFormat: compressionFormat
}
type input = {
@as("DatabaseInputDefinition") databaseInputDefinition: databaseInputDefinition,
@as("DataCatalogInputDefinition") dataCatalogInputDefinition: dataCatalogInputDefinition,
@as("S3InputDefinition") s3InputDefinition: s3Location
}
type formatOptions = {
@as("Csv") csv: csvOptions,
@as("Excel") excel: excelOptions,
@as("Json") json: jsonOptions
}
type datasetParameter = {
@as("Filter") filter: filterExpression,
@as("CreateColumn") createColumn: createColumn,
@as("DatetimeOptions") datetimeOptions: datetimeOptions,
@as("Type") type_: option<parameterType>,
@as("Name") name: option<pathParameterName>
}
type recipeStepList = array<recipeStep>
type pathParametersMap = Js.Dict.t< datasetParameter>
type outputList = array<output>
type recipe = {
@as("RecipeVersion") recipeVersion: recipeVersion,
@as("Tags") tags: tagMap,
@as("Steps") steps: recipeStepList,
@as("ResourceArn") resourceArn: arn,
@as("Name") name: option<recipeName>,
@as("Description") description: recipeDescription,
@as("PublishedDate") publishedDate: date,
@as("PublishedBy") publishedBy: publishedBy,
@as("ProjectName") projectName: projectName,
@as("LastModifiedDate") lastModifiedDate: date,
@as("LastModifiedBy") lastModifiedBy: lastModifiedBy,
@as("CreateDate") createDate: date,
@as("CreatedBy") createdBy: createdBy
}
type pathOptions = {
@as("Parameters") parameters: pathParametersMap,
@as("FilesLimit") filesLimit: filesLimit,
@as("LastModifiedDateCondition") lastModifiedDateCondition: filterExpression
}
type jobRun = {
@as("JobSample") jobSample: jobSample,
@as("StartedOn") startedOn: date,
@as("StartedBy") startedBy: startedBy,
@as("RecipeReference") recipeReference: recipeReference,
@as("Outputs") outputs: outputList,
@as("LogGroupName") logGroupName: logGroupName,
@as("LogSubscription") logSubscription: logSubscription,
@as("State") state: jobRunState,
@as("RunId") runId: jobRunId,
@as("JobName") jobName: jobName,
@as("ExecutionTime") executionTime: executionTime,
@as("ErrorMessage") errorMessage: jobRunErrorMessage,
@as("DatasetName") datasetName: datasetName,
@as("CompletedOn") completedOn: date,
@as("Attempt") attempt: attempt
}
type job = {
@as("JobSample") jobSample: jobSample,
@as("Tags") tags: tagMap,
@as("Timeout") timeout: timeout,
@as("RoleArn") roleArn: arn,
@as("ResourceArn") resourceArn: arn,
@as("RecipeReference") recipeReference: recipeReference,
@as("ProjectName") projectName: projectName,
@as("Outputs") outputs: outputList,
@as("MaxRetries") maxRetries: maxRetries,
@as("MaxCapacity") maxCapacity: maxCapacity,
@as("LogSubscription") logSubscription: logSubscription,
@as("LastModifiedDate") lastModifiedDate: date,
@as("LastModifiedBy") lastModifiedBy: lastModifiedBy,
@as("Type") type_: jobType,
@as("Name") name: option<jobName>,
@as("EncryptionMode") encryptionMode: encryptionMode,
@as("EncryptionKeyArn") encryptionKeyArn: encryptionKeyArn,
@as("DatasetName") datasetName: datasetName,
@as("CreateDate") createDate: date,
@as("CreatedBy") createdBy: createdBy,
@as("AccountId") accountId: accountId
}
type recipeList = array<recipe>
type jobRunList = array<jobRun>
type jobList = array<job>
type dataset = {
@as("ResourceArn") resourceArn: arn,
@as("Tags") tags: tagMap,
@as("PathOptions") pathOptions: pathOptions,
@as("Source") source: source,
@as("LastModifiedBy") lastModifiedBy: lastModifiedBy,
@as("LastModifiedDate") lastModifiedDate: date,
@as("Input") input: option<input>,
@as("FormatOptions") formatOptions: formatOptions,
@as("Format") format: inputFormat,
@as("Name") name: option<datasetName>,
@as("CreateDate") createDate: date,
@as("CreatedBy") createdBy: createdBy,
@as("AccountId") accountId: accountId
}
type datasetList = array<dataset>
type clientType;
@module("@aws-sdk/client-databrew") @new external createClient: unit => clientType = "DataBrewClient";
module StopJobRun = {
  type t;
  type request = {
@as("RunId") runId: option<jobRunId>,
@as("Name") name: option<jobName>
}
  type response = {
@as("RunId") runId: option<jobRunId>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "StopJobRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartProjectSession = {
  type t;
  type request = {
@as("AssumeControl") assumeControl: assumeControl,
@as("Name") name: option<projectName>
}
  type response = {
@as("ClientSessionId") clientSessionId: clientSessionId,
@as("Name") name: option<projectName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "StartProjectSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartJobRun = {
  type t;
  type request = {
@as("Name") name: option<jobName>
}
  type response = {
@as("RunId") runId: option<jobRunId>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "StartJobRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PublishRecipe = {
  type t;
  type request = {
@as("Name") name: option<recipeName>,
@as("Description") description: recipeDescription
}
  type response = {
@as("Name") name: option<recipeName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "PublishRecipeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSchedule = {
  type t;
  type request = {
@as("Name") name: option<scheduleName>
}
  type response = {
@as("Name") name: option<scheduleName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "DeleteScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRecipeVersion = {
  type t;
  type request = {
@as("RecipeVersion") recipeVersion: option<recipeVersion>,
@as("Name") name: option<recipeName>
}
  type response = {
@as("RecipeVersion") recipeVersion: option<recipeVersion>,
@as("Name") name: option<recipeName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "DeleteRecipeVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProject = {
  type t;
  type request = {
@as("Name") name: option<projectName>
}
  type response = {
@as("Name") name: option<projectName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "DeleteProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteJob = {
  type t;
  type request = {
@as("Name") name: option<jobName>
}
  type response = {
@as("Name") name: option<jobName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "DeleteJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDataset = {
  type t;
  type request = {
@as("Name") name: option<datasetName>
}
  type response = {
@as("Name") name: option<datasetName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "DeleteDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSchedule = {
  type t;
  type request = {
@as("Name") name: option<scheduleName>,
@as("CronExpression") cronExpression: option<cronExpression>,
@as("JobNames") jobNames: jobNameList
}
  type response = {
@as("Name") name: option<scheduleName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "UpdateScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateProject = {
  type t;
  type request = {
@as("Name") name: option<projectName>,
@as("RoleArn") roleArn: option<arn>,
@as("Sample") sample: sample
}
  type response = {
@as("Name") name: option<projectName>,
@as("LastModifiedDate") lastModifiedDate: date
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "UpdateProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateProfileJob = {
  type t;
  type request = {
@as("JobSample") jobSample: jobSample,
@as("Timeout") timeout: timeout,
@as("RoleArn") roleArn: option<arn>,
@as("OutputLocation") outputLocation: option<s3Location>,
@as("MaxRetries") maxRetries: maxRetries,
@as("MaxCapacity") maxCapacity: maxCapacity,
@as("LogSubscription") logSubscription: logSubscription,
@as("Name") name: option<jobName>,
@as("EncryptionMode") encryptionMode: encryptionMode,
@as("EncryptionKeyArn") encryptionKeyArn: encryptionKeyArn
}
  type response = {
@as("Name") name: option<jobName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "UpdateProfileJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<arn>
}
  type response = {
@as("Tags") tags: tagMap
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSchedule = {
  type t;
  type request = {
@as("Name") name: option<scheduleName>
}
  type response = {
@as("Name") name: option<scheduleName>,
@as("Tags") tags: tagMap,
@as("CronExpression") cronExpression: cronExpression,
@as("ResourceArn") resourceArn: arn,
@as("LastModifiedDate") lastModifiedDate: date,
@as("LastModifiedBy") lastModifiedBy: lastModifiedBy,
@as("JobNames") jobNames: jobNameList,
@as("CreatedBy") createdBy: createdBy,
@as("CreateDate") createDate: date
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "DescribeScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProject = {
  type t;
  type request = {
@as("Name") name: option<projectName>
}
  type response = {
@as("OpenDate") openDate: date,
@as("OpenedBy") openedBy: openedBy,
@as("SessionStatus") sessionStatus: sessionStatus,
@as("Tags") tags: tagMap,
@as("RoleArn") roleArn: arn,
@as("Sample") sample: sample,
@as("ResourceArn") resourceArn: arn,
@as("RecipeName") recipeName: recipeName,
@as("Name") name: option<projectName>,
@as("LastModifiedBy") lastModifiedBy: lastModifiedBy,
@as("LastModifiedDate") lastModifiedDate: date,
@as("DatasetName") datasetName: datasetName,
@as("CreatedBy") createdBy: createdBy,
@as("CreateDate") createDate: date
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "DescribeProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSchedule = {
  type t;
  type request = {
@as("Name") name: option<scheduleName>,
@as("Tags") tags: tagMap,
@as("CronExpression") cronExpression: option<cronExpression>,
@as("JobNames") jobNames: jobNameList
}
  type response = {
@as("Name") name: option<scheduleName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "CreateScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProject = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("RoleArn") roleArn: option<arn>,
@as("Sample") sample: sample,
@as("RecipeName") recipeName: option<recipeName>,
@as("Name") name: option<projectName>,
@as("DatasetName") datasetName: option<datasetName>
}
  type response = {
@as("Name") name: option<projectName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "CreateProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProfileJob = {
  type t;
  type request = {
@as("JobSample") jobSample: jobSample,
@as("Timeout") timeout: timeout,
@as("Tags") tags: tagMap,
@as("RoleArn") roleArn: option<arn>,
@as("OutputLocation") outputLocation: option<s3Location>,
@as("MaxRetries") maxRetries: maxRetries,
@as("MaxCapacity") maxCapacity: maxCapacity,
@as("LogSubscription") logSubscription: logSubscription,
@as("Name") name: option<jobName>,
@as("EncryptionMode") encryptionMode: encryptionMode,
@as("EncryptionKeyArn") encryptionKeyArn: encryptionKeyArn,
@as("DatasetName") datasetName: option<datasetName>
}
  type response = {
@as("Name") name: option<jobName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "CreateProfileJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteRecipeVersion = {
  type t;
  type request = {
@as("RecipeVersions") recipeVersions: option<recipeVersionList>,
@as("Name") name: option<recipeName>
}
  type response = {
@as("Errors") errors: recipeErrorList,
@as("Name") name: option<recipeName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "BatchDeleteRecipeVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendProjectSessionAction = {
  type t;
  type request = {
@as("ViewFrame") viewFrame: viewFrame,
@as("ClientSessionId") clientSessionId: clientSessionId,
@as("StepIndex") stepIndex: stepIndex,
@as("RecipeStep") recipeStep: recipeStep,
@as("Name") name: option<projectName>,
@as("Preview") preview: preview
}
  type response = {
@as("ActionId") actionId: actionId,
@as("Name") name: option<projectName>,
@as("Result") result: result
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "SendProjectSessionActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSchedules = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults100,
@as("JobName") jobName: jobName
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Schedules") schedules: option<scheduleList>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "ListSchedulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProjects = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults100,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Projects") projects: option<projectList>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "ListProjectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRecipeJob = {
  type t;
  type request = {
@as("Timeout") timeout: timeout,
@as("RoleArn") roleArn: option<arn>,
@as("Outputs") outputs: option<outputList>,
@as("MaxRetries") maxRetries: maxRetries,
@as("MaxCapacity") maxCapacity: maxCapacity,
@as("LogSubscription") logSubscription: logSubscription,
@as("Name") name: option<jobName>,
@as("EncryptionMode") encryptionMode: encryptionMode,
@as("EncryptionKeyArn") encryptionKeyArn: encryptionKeyArn
}
  type response = {
@as("Name") name: option<jobName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "UpdateRecipeJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRecipe = {
  type t;
  type request = {
@as("Steps") steps: recipeStepList,
@as("Name") name: option<recipeName>,
@as("Description") description: recipeDescription
}
  type response = {
@as("Name") name: option<recipeName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "UpdateRecipeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRecipe = {
  type t;
  type request = {
@as("RecipeVersion") recipeVersion: recipeVersion,
@as("Name") name: option<recipeName>
}
  type response = {
@as("RecipeVersion") recipeVersion: recipeVersion,
@as("ResourceArn") resourceArn: arn,
@as("Tags") tags: tagMap,
@as("Steps") steps: recipeStepList,
@as("Name") name: option<recipeName>,
@as("Description") description: recipeDescription,
@as("PublishedDate") publishedDate: date,
@as("PublishedBy") publishedBy: publishedBy,
@as("ProjectName") projectName: projectName,
@as("LastModifiedDate") lastModifiedDate: date,
@as("LastModifiedBy") lastModifiedBy: lastModifiedBy,
@as("CreateDate") createDate: date,
@as("CreatedBy") createdBy: createdBy
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "DescribeRecipeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeJobRun = {
  type t;
  type request = {
@as("RunId") runId: option<jobRunId>,
@as("Name") name: option<jobName>
}
  type response = {
@as("JobSample") jobSample: jobSample,
@as("StartedOn") startedOn: date,
@as("StartedBy") startedBy: startedBy,
@as("RecipeReference") recipeReference: recipeReference,
@as("Outputs") outputs: outputList,
@as("LogGroupName") logGroupName: logGroupName,
@as("LogSubscription") logSubscription: logSubscription,
@as("State") state: jobRunState,
@as("RunId") runId: jobRunId,
@as("JobName") jobName: option<jobName>,
@as("ExecutionTime") executionTime: executionTime,
@as("ErrorMessage") errorMessage: jobRunErrorMessage,
@as("DatasetName") datasetName: datasetName,
@as("CompletedOn") completedOn: date,
@as("Attempt") attempt: attempt
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "DescribeJobRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeJob = {
  type t;
  type request = {
@as("Name") name: option<jobName>
}
  type response = {
@as("JobSample") jobSample: jobSample,
@as("Timeout") timeout: timeout,
@as("Tags") tags: tagMap,
@as("RoleArn") roleArn: arn,
@as("ResourceArn") resourceArn: arn,
@as("RecipeReference") recipeReference: recipeReference,
@as("ProjectName") projectName: projectName,
@as("Outputs") outputs: outputList,
@as("MaxRetries") maxRetries: maxRetries,
@as("MaxCapacity") maxCapacity: maxCapacity,
@as("LogSubscription") logSubscription: logSubscription,
@as("LastModifiedDate") lastModifiedDate: date,
@as("LastModifiedBy") lastModifiedBy: lastModifiedBy,
@as("Type") type_: jobType,
@as("Name") name: option<jobName>,
@as("EncryptionMode") encryptionMode: encryptionMode,
@as("EncryptionKeyArn") encryptionKeyArn: encryptionKeyArn,
@as("DatasetName") datasetName: datasetName,
@as("CreatedBy") createdBy: createdBy,
@as("CreateDate") createDate: date
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "DescribeJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRecipeJob = {
  type t;
  type request = {
@as("Timeout") timeout: timeout,
@as("Tags") tags: tagMap,
@as("RoleArn") roleArn: option<arn>,
@as("RecipeReference") recipeReference: recipeReference,
@as("ProjectName") projectName: projectName,
@as("Outputs") outputs: option<outputList>,
@as("MaxRetries") maxRetries: maxRetries,
@as("MaxCapacity") maxCapacity: maxCapacity,
@as("LogSubscription") logSubscription: logSubscription,
@as("Name") name: option<jobName>,
@as("EncryptionMode") encryptionMode: encryptionMode,
@as("EncryptionKeyArn") encryptionKeyArn: encryptionKeyArn,
@as("DatasetName") datasetName: datasetName
}
  type response = {
@as("Name") name: option<jobName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "CreateRecipeJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRecipe = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("Steps") steps: option<recipeStepList>,
@as("Name") name: option<recipeName>,
@as("Description") description: recipeDescription
}
  type response = {
@as("Name") name: option<recipeName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "CreateRecipeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDataset = {
  type t;
  type request = {
@as("PathOptions") pathOptions: pathOptions,
@as("Input") input: option<input>,
@as("FormatOptions") formatOptions: formatOptions,
@as("Format") format: inputFormat,
@as("Name") name: option<datasetName>
}
  type response = {
@as("Name") name: option<datasetName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "UpdateDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDataset = {
  type t;
  type request = {
@as("Name") name: option<datasetName>
}
  type response = {
@as("ResourceArn") resourceArn: arn,
@as("Tags") tags: tagMap,
@as("PathOptions") pathOptions: pathOptions,
@as("Source") source: source,
@as("LastModifiedBy") lastModifiedBy: lastModifiedBy,
@as("LastModifiedDate") lastModifiedDate: date,
@as("Input") input: option<input>,
@as("FormatOptions") formatOptions: formatOptions,
@as("Format") format: inputFormat,
@as("Name") name: option<datasetName>,
@as("CreateDate") createDate: date,
@as("CreatedBy") createdBy: createdBy
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "DescribeDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDataset = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("PathOptions") pathOptions: pathOptions,
@as("Input") input: option<input>,
@as("FormatOptions") formatOptions: formatOptions,
@as("Format") format: inputFormat,
@as("Name") name: option<datasetName>
}
  type response = {
@as("Name") name: option<datasetName>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "CreateDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRecipes = {
  type t;
  type request = {
@as("RecipeVersion") recipeVersion: recipeVersion,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults100
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Recipes") recipes: option<recipeList>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "ListRecipesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRecipeVersions = {
  type t;
  type request = {
@as("Name") name: option<recipeName>,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults100
}
  type response = {
@as("Recipes") recipes: option<recipeList>,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "ListRecipeVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJobs = {
  type t;
  type request = {
@as("ProjectName") projectName: projectName,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults100,
@as("DatasetName") datasetName: datasetName
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Jobs") jobs: option<jobList>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "ListJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJobRuns = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults100,
@as("Name") name: option<jobName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("JobRuns") jobRuns: option<jobRunList>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "ListJobRunsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDatasets = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults100
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Datasets") datasets: option<datasetList>
}
  @module("@aws-sdk/client-databrew") @new external new_: (request) => t = "ListDatasetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
