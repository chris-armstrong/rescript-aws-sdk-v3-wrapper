type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-databrew") @new
external createClient: unit => awsServiceClient = "DataBrewClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type valueReference = string
type timezoneOffset = string
type timeout = int
type targetColumn = string
type tagValue = string
type tagKey = string
type tableName = string
type stepIndex = int
type startedBy = string
type startColumnIndex = int
type source = [@as("DATABASE") #DATABASE | @as("DATA-CATALOG") #DATA_CATALOG | @as("S3") #S3]
type sheetName = string
type sheetIndex = int
type sessionStatus = [
  | @as("UPDATING") #UPDATING
  | @as("TERMINATING") #TERMINATING
  | @as("TERMINATED") #TERMINATED
  | @as("ROTATING") #ROTATING
  | @as("RECYCLING") #RECYCLING
  | @as("READY") #READY
  | @as("PROVISIONING") #PROVISIONING
  | @as("INITIALIZING") #INITIALIZING
  | @as("FAILED") #FAILED
  | @as("ASSIGNED") #ASSIGNED
]
type scheduleName = string
type sampleType = [@as("RANDOM") #RANDOM | @as("LAST_N") #LAST_N | @as("FIRST_N") #FIRST_N]
type sampleSize = int
type sampleMode = [@as("CUSTOM_ROWS") #CUSTOM_ROWS | @as("FULL_DATASET") #FULL_DATASET]
type result = string
type recipeVersion = string
type recipeName = string
type recipeErrorMessage = string
type recipeDescription = string
type publishedBy = string
type projectName = string
type preview = bool
type pathParameterName = string
type parameterValue = string
type parameterType = [@as("String") #String | @as("Number") #Number | @as("Datetime") #Datetime]
type parameterName = string
type overwriteOutput = bool
type outputFormat = [
  | @as("XML") #XML
  | @as("ORC") #ORC
  | @as("AVRO") #AVRO
  | @as("GLUEPARQUET") #GLUEPARQUET
  | @as("PARQUET") #PARQUET
  | @as("JSON") #JSON
  | @as("CSV") #CSV
]
type orderedBy = [@as("LAST_MODIFIED_DATE") #LAST_MODIFIED_DATE]
type order = [@as("ASCENDING") #ASCENDING | @as("DESCENDING") #DESCENDING]
type operation = string
type openedBy = string
type nextToken = string
type multiLine = bool
type message = string
type maxRetries = int
type maxResults100 = int
type maxFiles = int
type maxCapacity = int
type logSubscription = [@as("DISABLE") #DISABLE | @as("ENABLE") #ENABLE]
type logGroupName = string
type localeCode = string
type lastModifiedBy = string
type key = string
type jobType = [@as("RECIPE") #RECIPE | @as("PROFILE") #PROFILE]
type jobSize = float
type jobRunState = [
  | @as("TIMEOUT") #TIMEOUT
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("RUNNING") #RUNNING
  | @as("STARTING") #STARTING
]
type jobRunId = string
type jobRunErrorMessage = string
type jobName = string
type inputFormat = [
  | @as("EXCEL") #EXCEL
  | @as("PARQUET") #PARQUET
  | @as("JSON") #JSON
  | @as("CSV") #CSV
]
type headerRow = bool
type glueConnectionName = string
type expression = string
type executionTime = int
type errorCode = string
type encryptionMode = [@as("SSE-S3") #SSE_S3 | @as("SSE-KMS") #SSE_KMS]
type encryptionKeyArn = string
type delimiter = string
type datetimeFormat = string
type date = Js.Date.t
type datasetName = string
type databaseTableName = string
type databaseName = string
type cronExpression = string
type createdBy = string
type createColumn = bool
type conditionValue = string
type condition = string
type compressionFormat = [
  | @as("ZLIB") #ZLIB
  | @as("ZSTD") #ZSTD
  | @as("BROTLI") #BROTLI
  | @as("LZO") #LZO
  | @as("DEFLATE") #DEFLATE
  | @as("BZIP2") #BZIP2
  | @as("SNAPPY") #SNAPPY
  | @as("LZ4") #LZ4
  | @as("GZIP") #GZIP
]
type columnRange = int
type columnName = string
type clientSessionId = string
type catalogId = string
type bucket = string
type attempt = int
type assumeControl = bool
type arn = string
type actionId = int
type accountId = string
type valuesMap = Js.Dict.t<conditionValue>
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type sheetNameList = array<sheetName>
type sheetIndexList = array<sheetIndex>
type sample = {
  @as("Type") type_: sampleType,
  @as("Size") size: option<sampleSize>,
}
type s3Location = {
  @as("Key") key: option<key>,
  @as("Bucket") bucket: bucket,
}
type recipeVersionList = array<recipeVersion>
type recipeVersionErrorDetail = {
  @as("RecipeVersion") recipeVersion: option<recipeVersion>,
  @as("ErrorMessage") errorMessage: option<recipeErrorMessage>,
  @as("ErrorCode") errorCode: option<errorCode>,
}
type recipeReference = {
  @as("RecipeVersion") recipeVersion: option<recipeVersion>,
  @as("Name") name: recipeName,
}
type parameterMap = Js.Dict.t<parameterValue>
type jsonOptions = {@as("MultiLine") multiLine: option<multiLine>}
type jobSample = {
  @as("Size") size: option<jobSize>,
  @as("Mode") mode: option<sampleMode>,
}
type jobNameList = array<jobName>
type hiddenColumnList = array<columnName>
type filesLimit = {
  @as("Order") order: option<order>,
  @as("OrderedBy") orderedBy: option<orderedBy>,
  @as("MaxFiles") maxFiles: maxFiles,
}
type datetimeOptions = {
  @as("LocaleCode") localeCode: option<localeCode>,
  @as("TimezoneOffset") timezoneOffset: option<timezoneOffset>,
  @as("Format") format: datetimeFormat,
}
type csvOutputOptions = {@as("Delimiter") delimiter: option<delimiter>}
type csvOptions = {
  @as("HeaderRow") headerRow: option<headerRow>,
  @as("Delimiter") delimiter: option<delimiter>,
}
type conditionExpression = {
  @as("TargetColumn") targetColumn: targetColumn,
  @as("Value") value: option<conditionValue>,
  @as("Condition") condition: condition,
}
type columnNameList = array<columnName>
type viewFrame = {
  @as("HiddenColumns") hiddenColumns: option<hiddenColumnList>,
  @as("ColumnRange") columnRange: option<columnRange>,
  @as("StartColumnIndex") startColumnIndex: startColumnIndex,
}
type schedule = {
  @as("Name") name: scheduleName,
  @as("Tags") tags: option<tagMap>,
  @as("CronExpression") cronExpression: option<cronExpression>,
  @as("ResourceArn") resourceArn: option<arn>,
  @as("LastModifiedDate") lastModifiedDate: option<date>,
  @as("LastModifiedBy") lastModifiedBy: option<lastModifiedBy>,
  @as("JobNames") jobNames: option<jobNameList>,
  @as("CreateDate") createDate: option<date>,
  @as("CreatedBy") createdBy: option<createdBy>,
  @as("AccountId") accountId: option<accountId>,
}
type recipeErrorList = array<recipeVersionErrorDetail>
type recipeAction = {
  @as("Parameters") parameters: option<parameterMap>,
  @as("Operation") operation: operation,
}
type project = {
  @as("OpenDate") openDate: option<date>,
  @as("OpenedBy") openedBy: option<openedBy>,
  @as("RoleArn") roleArn: option<arn>,
  @as("Tags") tags: option<tagMap>,
  @as("Sample") sample: option<sample>,
  @as("ResourceArn") resourceArn: option<arn>,
  @as("RecipeName") recipeName: recipeName,
  @as("Name") name: projectName,
  @as("LastModifiedBy") lastModifiedBy: option<lastModifiedBy>,
  @as("LastModifiedDate") lastModifiedDate: option<date>,
  @as("DatasetName") datasetName: option<datasetName>,
  @as("CreatedBy") createdBy: option<createdBy>,
  @as("CreateDate") createDate: option<date>,
  @as("AccountId") accountId: option<accountId>,
}
type outputFormatOptions = {@as("Csv") csv: option<csvOutputOptions>}
type filterExpression = {
  @as("ValuesMap") valuesMap: valuesMap,
  @as("Expression") expression: expression,
}
type excelOptions = {
  @as("HeaderRow") headerRow: option<headerRow>,
  @as("SheetIndexes") sheetIndexes: option<sheetIndexList>,
  @as("SheetNames") sheetNames: option<sheetNameList>,
}
type databaseInputDefinition = {
  @as("TempDirectory") tempDirectory: option<s3Location>,
  @as("DatabaseTableName") databaseTableName: databaseTableName,
  @as("GlueConnectionName") glueConnectionName: glueConnectionName,
}
type dataCatalogInputDefinition = {
  @as("TempDirectory") tempDirectory: option<s3Location>,
  @as("TableName") tableName: tableName,
  @as("DatabaseName") databaseName: databaseName,
  @as("CatalogId") catalogId: option<catalogId>,
}
type conditionExpressionList = array<conditionExpression>
type scheduleList = array<schedule>
type recipeStep = {
  @as("ConditionExpressions") conditionExpressions: option<conditionExpressionList>,
  @as("Action") action: recipeAction,
}
type projectList = array<project>
type output = {
  @as("FormatOptions") formatOptions: option<outputFormatOptions>,
  @as("Overwrite") overwrite: option<overwriteOutput>,
  @as("Location") location: s3Location,
  @as("PartitionColumns") partitionColumns: option<columnNameList>,
  @as("Format") format: option<outputFormat>,
  @as("CompressionFormat") compressionFormat: option<compressionFormat>,
}
type input = {
  @as("DatabaseInputDefinition") databaseInputDefinition: option<databaseInputDefinition>,
  @as("DataCatalogInputDefinition") dataCatalogInputDefinition: option<dataCatalogInputDefinition>,
  @as("S3InputDefinition") s3InputDefinition: option<s3Location>,
}
type formatOptions = {
  @as("Csv") csv: option<csvOptions>,
  @as("Excel") excel: option<excelOptions>,
  @as("Json") json: option<jsonOptions>,
}
type datasetParameter = {
  @as("Filter") filter: option<filterExpression>,
  @as("CreateColumn") createColumn: option<createColumn>,
  @as("DatetimeOptions") datetimeOptions: option<datetimeOptions>,
  @as("Type") type_: parameterType,
  @as("Name") name: pathParameterName,
}
type recipeStepList = array<recipeStep>
type pathParametersMap = Js.Dict.t<datasetParameter>
type outputList = array<output>
type recipe = {
  @as("RecipeVersion") recipeVersion: option<recipeVersion>,
  @as("Tags") tags: option<tagMap>,
  @as("Steps") steps: option<recipeStepList>,
  @as("ResourceArn") resourceArn: option<arn>,
  @as("Name") name: recipeName,
  @as("Description") description: option<recipeDescription>,
  @as("PublishedDate") publishedDate: option<date>,
  @as("PublishedBy") publishedBy: option<publishedBy>,
  @as("ProjectName") projectName: option<projectName>,
  @as("LastModifiedDate") lastModifiedDate: option<date>,
  @as("LastModifiedBy") lastModifiedBy: option<lastModifiedBy>,
  @as("CreateDate") createDate: option<date>,
  @as("CreatedBy") createdBy: option<createdBy>,
}
type pathOptions = {
  @as("Parameters") parameters: option<pathParametersMap>,
  @as("FilesLimit") filesLimit: option<filesLimit>,
  @as("LastModifiedDateCondition") lastModifiedDateCondition: option<filterExpression>,
}
type jobRun = {
  @as("JobSample") jobSample: option<jobSample>,
  @as("StartedOn") startedOn: option<date>,
  @as("StartedBy") startedBy: option<startedBy>,
  @as("RecipeReference") recipeReference: option<recipeReference>,
  @as("Outputs") outputs: option<outputList>,
  @as("LogGroupName") logGroupName: option<logGroupName>,
  @as("LogSubscription") logSubscription: option<logSubscription>,
  @as("State") state: option<jobRunState>,
  @as("RunId") runId: option<jobRunId>,
  @as("JobName") jobName: option<jobName>,
  @as("ExecutionTime") executionTime: option<executionTime>,
  @as("ErrorMessage") errorMessage: option<jobRunErrorMessage>,
  @as("DatasetName") datasetName: option<datasetName>,
  @as("CompletedOn") completedOn: option<date>,
  @as("Attempt") attempt: option<attempt>,
}
type job = {
  @as("JobSample") jobSample: option<jobSample>,
  @as("Tags") tags: option<tagMap>,
  @as("Timeout") timeout: option<timeout>,
  @as("RoleArn") roleArn: option<arn>,
  @as("ResourceArn") resourceArn: option<arn>,
  @as("RecipeReference") recipeReference: option<recipeReference>,
  @as("ProjectName") projectName: option<projectName>,
  @as("Outputs") outputs: option<outputList>,
  @as("MaxRetries") maxRetries: option<maxRetries>,
  @as("MaxCapacity") maxCapacity: option<maxCapacity>,
  @as("LogSubscription") logSubscription: option<logSubscription>,
  @as("LastModifiedDate") lastModifiedDate: option<date>,
  @as("LastModifiedBy") lastModifiedBy: option<lastModifiedBy>,
  @as("Type") type_: option<jobType>,
  @as("Name") name: jobName,
  @as("EncryptionMode") encryptionMode: option<encryptionMode>,
  @as("EncryptionKeyArn") encryptionKeyArn: option<encryptionKeyArn>,
  @as("DatasetName") datasetName: option<datasetName>,
  @as("CreateDate") createDate: option<date>,
  @as("CreatedBy") createdBy: option<createdBy>,
  @as("AccountId") accountId: option<accountId>,
}
type recipeList = array<recipe>
type jobRunList = array<jobRun>
type jobList = array<job>
type dataset = {
  @as("ResourceArn") resourceArn: option<arn>,
  @as("Tags") tags: option<tagMap>,
  @as("PathOptions") pathOptions: option<pathOptions>,
  @as("Source") source: option<source>,
  @as("LastModifiedBy") lastModifiedBy: option<lastModifiedBy>,
  @as("LastModifiedDate") lastModifiedDate: option<date>,
  @as("Input") input: input,
  @as("FormatOptions") formatOptions: option<formatOptions>,
  @as("Format") format: option<inputFormat>,
  @as("Name") name: datasetName,
  @as("CreateDate") createDate: option<date>,
  @as("CreatedBy") createdBy: option<createdBy>,
  @as("AccountId") accountId: option<accountId>,
}
type datasetList = array<dataset>

module StopJobRun = {
  type t
  type request = {
    @as("RunId") runId: jobRunId,
    @as("Name") name: jobName,
  }
  type response = {@as("RunId") runId: jobRunId}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "StopJobRunCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartProjectSession = {
  type t
  type request = {
    @as("AssumeControl") assumeControl: option<assumeControl>,
    @as("Name") name: projectName,
  }
  type response = {
    @as("ClientSessionId") clientSessionId: option<clientSessionId>,
    @as("Name") name: projectName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "StartProjectSessionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartJobRun = {
  type t
  type request = {@as("Name") name: jobName}
  type response = {@as("RunId") runId: jobRunId}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "StartJobRunCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PublishRecipe = {
  type t
  type request = {
    @as("Name") name: recipeName,
    @as("Description") description: option<recipeDescription>,
  }
  type response = {@as("Name") name: recipeName}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "PublishRecipeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSchedule = {
  type t
  type request = {@as("Name") name: scheduleName}
  type response = {@as("Name") name: scheduleName}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DeleteScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRecipeVersion = {
  type t
  type request = {
    @as("RecipeVersion") recipeVersion: recipeVersion,
    @as("Name") name: recipeName,
  }
  type response = {
    @as("RecipeVersion") recipeVersion: recipeVersion,
    @as("Name") name: recipeName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DeleteRecipeVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProject = {
  type t
  type request = {@as("Name") name: projectName}
  type response = {@as("Name") name: projectName}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DeleteProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteJob = {
  type t
  type request = {@as("Name") name: jobName}
  type response = {@as("Name") name: jobName}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DeleteJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDataset = {
  type t
  type request = {@as("Name") name: datasetName}
  type response = {@as("Name") name: datasetName}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DeleteDatasetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSchedule = {
  type t
  type request = {
    @as("Name") name: scheduleName,
    @as("CronExpression") cronExpression: cronExpression,
    @as("JobNames") jobNames: option<jobNameList>,
  }
  type response = {@as("Name") name: scheduleName}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "UpdateScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProject = {
  type t
  type request = {
    @as("Name") name: projectName,
    @as("RoleArn") roleArn: arn,
    @as("Sample") sample: option<sample>,
  }
  type response = {
    @as("Name") name: projectName,
    @as("LastModifiedDate") lastModifiedDate: option<date>,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "UpdateProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProfileJob = {
  type t
  type request = {
    @as("JobSample") jobSample: option<jobSample>,
    @as("Timeout") timeout: option<timeout>,
    @as("RoleArn") roleArn: arn,
    @as("OutputLocation") outputLocation: s3Location,
    @as("MaxRetries") maxRetries: option<maxRetries>,
    @as("MaxCapacity") maxCapacity: option<maxCapacity>,
    @as("LogSubscription") logSubscription: option<logSubscription>,
    @as("Name") name: jobName,
    @as("EncryptionMode") encryptionMode: option<encryptionMode>,
    @as("EncryptionKeyArn") encryptionKeyArn: option<encryptionKeyArn>,
  }
  type response = {@as("Name") name: jobName}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "UpdateProfileJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-databrew") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagMap,
    @as("ResourceArn") resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-databrew") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: arn}
  type response = {@as("Tags") tags: option<tagMap>}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSchedule = {
  type t
  type request = {@as("Name") name: scheduleName}
  type response = {
    @as("Name") name: scheduleName,
    @as("Tags") tags: option<tagMap>,
    @as("CronExpression") cronExpression: option<cronExpression>,
    @as("ResourceArn") resourceArn: option<arn>,
    @as("LastModifiedDate") lastModifiedDate: option<date>,
    @as("LastModifiedBy") lastModifiedBy: option<lastModifiedBy>,
    @as("JobNames") jobNames: option<jobNameList>,
    @as("CreatedBy") createdBy: option<createdBy>,
    @as("CreateDate") createDate: option<date>,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DescribeScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProject = {
  type t
  type request = {@as("Name") name: projectName}
  type response = {
    @as("OpenDate") openDate: option<date>,
    @as("OpenedBy") openedBy: option<openedBy>,
    @as("SessionStatus") sessionStatus: option<sessionStatus>,
    @as("Tags") tags: option<tagMap>,
    @as("RoleArn") roleArn: option<arn>,
    @as("Sample") sample: option<sample>,
    @as("ResourceArn") resourceArn: option<arn>,
    @as("RecipeName") recipeName: option<recipeName>,
    @as("Name") name: projectName,
    @as("LastModifiedBy") lastModifiedBy: option<lastModifiedBy>,
    @as("LastModifiedDate") lastModifiedDate: option<date>,
    @as("DatasetName") datasetName: option<datasetName>,
    @as("CreatedBy") createdBy: option<createdBy>,
    @as("CreateDate") createDate: option<date>,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DescribeProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSchedule = {
  type t
  type request = {
    @as("Name") name: scheduleName,
    @as("Tags") tags: option<tagMap>,
    @as("CronExpression") cronExpression: cronExpression,
    @as("JobNames") jobNames: option<jobNameList>,
  }
  type response = {@as("Name") name: scheduleName}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "CreateScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProject = {
  type t
  type request = {
    @as("Tags") tags: option<tagMap>,
    @as("RoleArn") roleArn: arn,
    @as("Sample") sample: option<sample>,
    @as("RecipeName") recipeName: recipeName,
    @as("Name") name: projectName,
    @as("DatasetName") datasetName: datasetName,
  }
  type response = {@as("Name") name: projectName}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "CreateProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProfileJob = {
  type t
  type request = {
    @as("JobSample") jobSample: option<jobSample>,
    @as("Timeout") timeout: option<timeout>,
    @as("Tags") tags: option<tagMap>,
    @as("RoleArn") roleArn: arn,
    @as("OutputLocation") outputLocation: s3Location,
    @as("MaxRetries") maxRetries: option<maxRetries>,
    @as("MaxCapacity") maxCapacity: option<maxCapacity>,
    @as("LogSubscription") logSubscription: option<logSubscription>,
    @as("Name") name: jobName,
    @as("EncryptionMode") encryptionMode: option<encryptionMode>,
    @as("EncryptionKeyArn") encryptionKeyArn: option<encryptionKeyArn>,
    @as("DatasetName") datasetName: datasetName,
  }
  type response = {@as("Name") name: jobName}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "CreateProfileJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDeleteRecipeVersion = {
  type t
  type request = {
    @as("RecipeVersions") recipeVersions: recipeVersionList,
    @as("Name") name: recipeName,
  }
  type response = {
    @as("Errors") errors: option<recipeErrorList>,
    @as("Name") name: recipeName,
  }
  @module("@aws-sdk/client-databrew") @new
  external new: request => t = "BatchDeleteRecipeVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendProjectSessionAction = {
  type t
  type request = {
    @as("ViewFrame") viewFrame: option<viewFrame>,
    @as("ClientSessionId") clientSessionId: option<clientSessionId>,
    @as("StepIndex") stepIndex: option<stepIndex>,
    @as("RecipeStep") recipeStep: option<recipeStep>,
    @as("Name") name: projectName,
    @as("Preview") preview: option<preview>,
  }
  type response = {
    @as("ActionId") actionId: option<actionId>,
    @as("Name") name: projectName,
    @as("Result") result: option<result>,
  }
  @module("@aws-sdk/client-databrew") @new
  external new: request => t = "SendProjectSessionActionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSchedules = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults100>,
    @as("JobName") jobName: option<jobName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Schedules") schedules: scheduleList,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "ListSchedulesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProjects = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults100>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Projects") projects: projectList,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "ListProjectsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRecipeJob = {
  type t
  type request = {
    @as("Timeout") timeout: option<timeout>,
    @as("RoleArn") roleArn: arn,
    @as("Outputs") outputs: outputList,
    @as("MaxRetries") maxRetries: option<maxRetries>,
    @as("MaxCapacity") maxCapacity: option<maxCapacity>,
    @as("LogSubscription") logSubscription: option<logSubscription>,
    @as("Name") name: jobName,
    @as("EncryptionMode") encryptionMode: option<encryptionMode>,
    @as("EncryptionKeyArn") encryptionKeyArn: option<encryptionKeyArn>,
  }
  type response = {@as("Name") name: jobName}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "UpdateRecipeJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRecipe = {
  type t
  type request = {
    @as("Steps") steps: option<recipeStepList>,
    @as("Name") name: recipeName,
    @as("Description") description: option<recipeDescription>,
  }
  type response = {@as("Name") name: recipeName}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "UpdateRecipeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRecipe = {
  type t
  type request = {
    @as("RecipeVersion") recipeVersion: option<recipeVersion>,
    @as("Name") name: recipeName,
  }
  type response = {
    @as("RecipeVersion") recipeVersion: option<recipeVersion>,
    @as("ResourceArn") resourceArn: option<arn>,
    @as("Tags") tags: option<tagMap>,
    @as("Steps") steps: option<recipeStepList>,
    @as("Name") name: recipeName,
    @as("Description") description: option<recipeDescription>,
    @as("PublishedDate") publishedDate: option<date>,
    @as("PublishedBy") publishedBy: option<publishedBy>,
    @as("ProjectName") projectName: option<projectName>,
    @as("LastModifiedDate") lastModifiedDate: option<date>,
    @as("LastModifiedBy") lastModifiedBy: option<lastModifiedBy>,
    @as("CreateDate") createDate: option<date>,
    @as("CreatedBy") createdBy: option<createdBy>,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DescribeRecipeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJobRun = {
  type t
  type request = {
    @as("RunId") runId: jobRunId,
    @as("Name") name: jobName,
  }
  type response = {
    @as("JobSample") jobSample: option<jobSample>,
    @as("StartedOn") startedOn: option<date>,
    @as("StartedBy") startedBy: option<startedBy>,
    @as("RecipeReference") recipeReference: option<recipeReference>,
    @as("Outputs") outputs: option<outputList>,
    @as("LogGroupName") logGroupName: option<logGroupName>,
    @as("LogSubscription") logSubscription: option<logSubscription>,
    @as("State") state: option<jobRunState>,
    @as("RunId") runId: option<jobRunId>,
    @as("JobName") jobName: jobName,
    @as("ExecutionTime") executionTime: option<executionTime>,
    @as("ErrorMessage") errorMessage: option<jobRunErrorMessage>,
    @as("DatasetName") datasetName: option<datasetName>,
    @as("CompletedOn") completedOn: option<date>,
    @as("Attempt") attempt: option<attempt>,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DescribeJobRunCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJob = {
  type t
  type request = {@as("Name") name: jobName}
  type response = {
    @as("JobSample") jobSample: option<jobSample>,
    @as("Timeout") timeout: option<timeout>,
    @as("Tags") tags: option<tagMap>,
    @as("RoleArn") roleArn: option<arn>,
    @as("ResourceArn") resourceArn: option<arn>,
    @as("RecipeReference") recipeReference: option<recipeReference>,
    @as("ProjectName") projectName: option<projectName>,
    @as("Outputs") outputs: option<outputList>,
    @as("MaxRetries") maxRetries: option<maxRetries>,
    @as("MaxCapacity") maxCapacity: option<maxCapacity>,
    @as("LogSubscription") logSubscription: option<logSubscription>,
    @as("LastModifiedDate") lastModifiedDate: option<date>,
    @as("LastModifiedBy") lastModifiedBy: option<lastModifiedBy>,
    @as("Type") type_: option<jobType>,
    @as("Name") name: jobName,
    @as("EncryptionMode") encryptionMode: option<encryptionMode>,
    @as("EncryptionKeyArn") encryptionKeyArn: option<encryptionKeyArn>,
    @as("DatasetName") datasetName: option<datasetName>,
    @as("CreatedBy") createdBy: option<createdBy>,
    @as("CreateDate") createDate: option<date>,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DescribeJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRecipeJob = {
  type t
  type request = {
    @as("Timeout") timeout: option<timeout>,
    @as("Tags") tags: option<tagMap>,
    @as("RoleArn") roleArn: arn,
    @as("RecipeReference") recipeReference: option<recipeReference>,
    @as("ProjectName") projectName: option<projectName>,
    @as("Outputs") outputs: outputList,
    @as("MaxRetries") maxRetries: option<maxRetries>,
    @as("MaxCapacity") maxCapacity: option<maxCapacity>,
    @as("LogSubscription") logSubscription: option<logSubscription>,
    @as("Name") name: jobName,
    @as("EncryptionMode") encryptionMode: option<encryptionMode>,
    @as("EncryptionKeyArn") encryptionKeyArn: option<encryptionKeyArn>,
    @as("DatasetName") datasetName: option<datasetName>,
  }
  type response = {@as("Name") name: jobName}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "CreateRecipeJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRecipe = {
  type t
  type request = {
    @as("Tags") tags: option<tagMap>,
    @as("Steps") steps: recipeStepList,
    @as("Name") name: recipeName,
    @as("Description") description: option<recipeDescription>,
  }
  type response = {@as("Name") name: recipeName}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "CreateRecipeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDataset = {
  type t
  type request = {
    @as("PathOptions") pathOptions: option<pathOptions>,
    @as("Input") input: input,
    @as("FormatOptions") formatOptions: option<formatOptions>,
    @as("Format") format: option<inputFormat>,
    @as("Name") name: datasetName,
  }
  type response = {@as("Name") name: datasetName}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "UpdateDatasetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataset = {
  type t
  type request = {@as("Name") name: datasetName}
  type response = {
    @as("ResourceArn") resourceArn: option<arn>,
    @as("Tags") tags: option<tagMap>,
    @as("PathOptions") pathOptions: option<pathOptions>,
    @as("Source") source: option<source>,
    @as("LastModifiedBy") lastModifiedBy: option<lastModifiedBy>,
    @as("LastModifiedDate") lastModifiedDate: option<date>,
    @as("Input") input: input,
    @as("FormatOptions") formatOptions: option<formatOptions>,
    @as("Format") format: option<inputFormat>,
    @as("Name") name: datasetName,
    @as("CreateDate") createDate: option<date>,
    @as("CreatedBy") createdBy: option<createdBy>,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DescribeDatasetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataset = {
  type t
  type request = {
    @as("Tags") tags: option<tagMap>,
    @as("PathOptions") pathOptions: option<pathOptions>,
    @as("Input") input: input,
    @as("FormatOptions") formatOptions: option<formatOptions>,
    @as("Format") format: option<inputFormat>,
    @as("Name") name: datasetName,
  }
  type response = {@as("Name") name: datasetName}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "CreateDatasetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRecipes = {
  type t
  type request = {
    @as("RecipeVersion") recipeVersion: option<recipeVersion>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults100>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Recipes") recipes: recipeList,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "ListRecipesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRecipeVersions = {
  type t
  type request = {
    @as("Name") name: recipeName,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults100>,
  }
  type response = {
    @as("Recipes") recipes: recipeList,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "ListRecipeVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobs = {
  type t
  type request = {
    @as("ProjectName") projectName: option<projectName>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults100>,
    @as("DatasetName") datasetName: option<datasetName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Jobs") jobs: jobList,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "ListJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobRuns = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults100>,
    @as("Name") name: jobName,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("JobRuns") jobRuns: jobRunList,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "ListJobRunsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatasets = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults100>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Datasets") datasets: datasetList,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "ListDatasetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
