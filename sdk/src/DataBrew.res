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
type validationMode = [@as("CHECK_ALL") #CHECK_ALL]
type timezoneOffset = string
type timeout = int
type thresholdValue = float
type thresholdUnit = [@as("PERCENTAGE") #PERCENTAGE | @as("COUNT") #COUNT]
type thresholdType = [
  | @as("LESS_THAN") #LESS_THAN
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("LESS_THAN_OR_EQUAL") #LESS_THAN_OR_EQUAL
  | @as("GREATER_THAN_OR_EQUAL") #GREATER_THAN_OR_EQUAL
]
type targetColumn = string
type tagValue = string
type tagKey = string
type tableName = string
type stepIndex = int
type statistic = string
type startedBy = string
type startRowIndex = int
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
type rulesetName = string
type rulesetDescription = string
type ruleName = string
type ruleCount = int
type rowRange = int
type result = string
type recipeVersion = string
type recipeName = string
type recipeErrorMessage = string
type recipeDescription = string
type queryString = string
type publishedBy = string
type projectName = string
type preview = bool
type pathParameterName = string
type parameterValue = string
type parameterType = [@as("String") #String | @as("Number") #Number | @as("Datetime") #Datetime]
type parameterName = string
type overwriteOutput = bool
type outputFormat = [
  | @as("TABLEAUHYPER") #TABLEAUHYPER
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
type maxOutputFiles = int
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
  | @as("ORC") #ORC
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
type entityType = string
type encryptionMode = [@as("SSE-S3") #SSE_S3 | @as("SSE-KMS") #SSE_KMS]
type encryptionKeyArn = string
type disabled = bool
type delimiter = string
type datetimeFormat = string
type date = Js.Date.t
type datasetName = string
type databaseTableName = string
type databaseOutputMode = [@as("NEW_TABLE") #NEW_TABLE]
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
type bucketOwner = string
type bucket = string
type attempt = int
type assumeControl = bool
type arn = string
type analyticsMode = [@as("DISABLE") #DISABLE | @as("ENABLE") #ENABLE]
type actionId = int
type accountId = string
type valuesMap = Js.Dict.t<conditionValue>
@ocaml.doc("<p>Configuration for data quality validation. Used to select the Rulesets and Validation Mode 
            to be used in the profile job. When ValidationConfiguration is null, the profile 
            job will run without data quality validation.</p>")
type validationConfiguration = {
  @ocaml.doc("<p>Mode of data quality validation. Default mode is “CHECK_ALL” which verifies all rules 
            defined in the selected ruleset.</p>")
  @as("ValidationMode")
  validationMode: option<validationMode>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the ruleset to be validated in the profile job. 
            The TargetArn of the selected ruleset should be the same as the Amazon Resource Name (ARN) of 
            the dataset that is associated with the profile job.</p>")
  @as("RulesetArn")
  rulesetArn: arn,
}
@ocaml.doc("<p>The threshold used with a non-aggregate check expression. The non-aggregate check expression 
            will be applied to each row in a specific column. Then the threshold will be used to determine 
            whether the validation succeeds.</p>")
type threshold = {
  @ocaml.doc("<p>Unit of threshold value. Can be either a COUNT or PERCENTAGE of the full sample size 
            used for validation.</p>")
  @as("Unit")
  unit_: option<thresholdUnit>,
  @ocaml.doc("<p>The type of a threshold. Used for comparison of an actual count of rows that satisfy the 
            rule to the threshold value.</p>")
  @as("Type")
  type_: option<thresholdType>,
  @ocaml.doc("<p>The value of a threshold.</p>") @as("Value") value: thresholdValue,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type statisticList = array<statistic>
type sheetNameList = array<sheetName>
type sheetIndexList = array<sheetIndex>
@ocaml.doc("<p>Represents the sample size and sampling type for DataBrew to use for interactive data
            analysis.</p>")
type sample = {
  @ocaml.doc("<p>The way in which DataBrew obtains rows from a dataset.</p>") @as("Type")
  type_: sampleType,
  @ocaml.doc("<p>The number of rows in the sample.</p>") @as("Size") size: option<sampleSize>,
}
@ocaml.doc("<p>Represents an Amazon S3 location (bucket name, bucket owner, and object key) where DataBrew can read
            input data, or write output from a job.</p>")
type s3Location = {
  @ocaml.doc("<p>The Amazon Web Services account ID of the bucket owner.</p>") @as("BucketOwner")
  bucketOwner: option<bucketOwner>,
  @ocaml.doc("<p>The unique name of the object in the bucket.</p>") @as("Key") key: option<key>,
  @ocaml.doc("<p>The Amazon S3 bucket name.</p>") @as("Bucket") bucket: bucket,
}
type recipeVersionList = array<recipeVersion>
@ocaml.doc("<p>Represents any errors encountered when attempting to delete multiple recipe
            versions.</p>")
type recipeVersionErrorDetail = {
  @ocaml.doc("<p>The identifier for the recipe version associated with this error.</p>")
  @as("RecipeVersion")
  recipeVersion: option<recipeVersion>,
  @ocaml.doc("<p>The text of the error message.</p>") @as("ErrorMessage")
  errorMessage: option<recipeErrorMessage>,
  @ocaml.doc("<p>The HTTP status code for the error.</p>") @as("ErrorCode")
  errorCode: option<errorCode>,
}
@ocaml.doc("<p>Represents the name and version of a DataBrew recipe.</p>")
type recipeReference = {
  @ocaml.doc("<p>The identifier for the version for the recipe. </p>") @as("RecipeVersion")
  recipeVersion: option<recipeVersion>,
  @ocaml.doc("<p>The name of the recipe.</p>") @as("Name") name: recipeName,
}
type parameterMap = Js.Dict.t<parameterValue>
@ocaml.doc("<p>Contains additional resource information needed for specific datasets.</p>")
type metadata = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) associated with the dataset. Currently, DataBrew 
            only supports ARNs from Amazon AppFlow.</p>")
  @as("SourceArn")
  sourceArn: option<arn>,
}
@ocaml.doc(
  "<p>Represents the JSON-specific options that define how input is to be interpreted by Glue DataBrew.</p>"
)
type jsonOptions = {
  @ocaml.doc("<p>A value that specifies whether JSON input contains embedded new line
            characters.</p>")
  @as("MultiLine")
  multiLine: option<multiLine>,
}
@ocaml.doc("<p>A sample configuration for profile jobs only, which determines the number of rows on which the
            profile job is run. If a <code>JobSample</code> value isn't provided, the
            default is used. The default value is CUSTOM_ROWS for the mode parameter and
            20,000 for the size parameter.</p>")
type jobSample = {
  @ocaml.doc("<p>The <code>Size</code> parameter is only required when the mode is CUSTOM_ROWS. The
            profile job is run on the specified number of rows. The maximum value for size is
            Long.MAX_VALUE.</p>
        <p>Long.MAX_VALUE = 9223372036854775807</p>")
  @as("Size")
  size: option<jobSize>,
  @ocaml.doc("<p>A value that determines whether the profile job is run on the entire dataset or a
            specified number of rows. This value must be one of the following:</p>
        <ul>
            <li>
                <p>FULL_DATASET - The profile job is run on the entire dataset.</p>
            </li>
            <li>
                <p>CUSTOM_ROWS - The profile job is run on the number of rows specified in the
                    <code>Size</code> parameter.</p>
            </li>
         </ul>")
  @as("Mode")
  mode: option<sampleMode>,
}
type jobNameList = array<jobName>
type hiddenColumnList = array<columnName>
@ocaml.doc("<p>Represents a limit imposed on number of Amazon S3 files that should be selected for a 
            dataset from a connected Amazon S3 path.</p>")
type filesLimit = {
  @ocaml.doc("<p>A criteria to use for Amazon S3 files sorting before their selection. By
            default uses DESCENDING order, i.e. most recent files are selected first. Another
            possible value is ASCENDING.</p>")
  @as("Order")
  order: option<order>,
  @ocaml.doc("<p>A criteria to use for Amazon S3 files sorting before their selection. By default uses LAST_MODIFIED_DATE as 
            a sorting criteria. Currently it's the only allowed value.</p>")
  @as("OrderedBy")
  orderedBy: option<orderedBy>,
  @ocaml.doc("<p>The number of Amazon S3 files to select.</p>") @as("MaxFiles") maxFiles: maxFiles,
}
type entityTypeList = array<entityType>
@ocaml.doc("<p>Represents additional options for correct interpretation of datetime parameters used in 
            the Amazon S3 path of a dataset.</p>")
type datetimeOptions = {
  @ocaml.doc(
    "<p>Optional value for a non-US locale code, needed for correct interpretation of some date formats.</p>"
  )
  @as("LocaleCode")
  localeCode: option<localeCode>,
  @ocaml.doc("<p>Optional value for a timezone offset of the datetime parameter value in the Amazon S3 
            path. Shouldn't be used if Format for this parameter includes timezone fields.
            If no offset specified, UTC is assumed.</p>")
  @as("TimezoneOffset")
  timezoneOffset: option<timezoneOffset>,
  @ocaml.doc("<p>Required option, that defines the datetime format used for a date parameter in the 
            Amazon S3 path. Should use only supported datetime specifiers and separation characters, all 
            literal a-z or A-Z characters should be escaped with single quotes. E.g. \"MM.dd.yyyy-'at'-HH:mm\".</p>")
  @as("Format")
  format: datetimeFormat,
}
@ocaml.doc("<p>Represents a set of options that define how DataBrew will write a 
            comma-separated value (CSV) file.</p>")
type csvOutputOptions = {
  @ocaml.doc(
    "<p>A single character that specifies the delimiter used to create CSV job output.</p>"
  )
  @as("Delimiter")
  delimiter: option<delimiter>,
}
@ocaml.doc("<p>Represents a set of options that define how DataBrew will read a 
            comma-separated value (CSV) file when creating a dataset from that file.</p>")
type csvOptions = {
  @ocaml.doc("<p>A variable that specifies whether the first row in the file is parsed as the
            header. If this value is false, column names are auto-generated.</p>")
  @as("HeaderRow")
  headerRow: option<headerRow>,
  @ocaml.doc("<p>A single character that specifies the delimiter being used in the CSV file.</p>")
  @as("Delimiter")
  delimiter: option<delimiter>,
}
@ocaml.doc("<p>Represents an individual condition that evaluates to true or false.</p>
        <p>Conditions are used with recipe actions. The action is only performed for column values where the 
            condition evaluates to true.</p>
        <p>If a recipe requires more than one condition, then the recipe must specify multiple 
            <code>ConditionExpression</code> elements. Each condition is applied to the rows in a dataset first, before 
            the recipe action is performed.</p>")
type conditionExpression = {
  @ocaml.doc("<p>A column to apply this condition to.</p>") @as("TargetColumn")
  targetColumn: targetColumn,
  @ocaml.doc("<p>A value that the condition must evaluate to for the condition to succeed.</p>")
  @as("Value")
  value: option<conditionValue>,
  @ocaml.doc("<p>A specific condition to apply to a recipe action. For more information, see <a href=\"https://docs.aws.amazon.com/databrew/latest/dg/recipes.html#recipes.structure\">Recipe
            structure</a> in the <i>Glue DataBrew Developer
            Guide</i>.</p>")
  @as("Condition")
  condition: condition,
}
@ocaml.doc("<p>Selector of a column from a dataset for profile job configuration. 
            One selector includes either a column name or a regular expression.</p>")
type columnSelector = {
  @ocaml.doc("<p>The name of a column from a dataset.</p>") @as("Name") name: option<columnName>,
  @ocaml.doc("<p>A regular expression for selecting a column from a dataset.</p>") @as("Regex")
  regex: option<columnName>,
}
type columnNameList = array<columnName>
@ocaml.doc("<p>Represents the data being transformed during an action.</p>")
type viewFrame = {
  @ocaml.doc("<p>Controls if analytics computation is enabled or disabled. Enabled by default.</p>")
  @as("Analytics")
  analytics: option<analyticsMode>,
  @ocaml.doc("<p>The number of rows to include in the view frame, beginning with the 
            <code>StartRowIndex</code> value.</p>")
  @as("RowRange")
  rowRange: option<rowRange>,
  @ocaml.doc("<p>The starting index for the range of rows to return in the view frame.</p>")
  @as("StartRowIndex")
  startRowIndex: option<startRowIndex>,
  @ocaml.doc("<p>A list of columns to hide in the view frame.</p>") @as("HiddenColumns")
  hiddenColumns: option<hiddenColumnList>,
  @ocaml.doc("<p>The number of columns to include in the view frame, beginning with the
                <code>StartColumnIndex</code> value and ignoring any columns in the
                <code>HiddenColumns</code> list.</p>")
  @as("ColumnRange")
  columnRange: option<columnRange>,
  @ocaml.doc("<p>The starting index for the range of columns to return in the view frame.</p>")
  @as("StartColumnIndex")
  startColumnIndex: startColumnIndex,
}
type validationConfigurationList = array<validationConfiguration>
@ocaml.doc("<p>Override of a particular evaluation for a profile job. </p>")
type statisticOverride = {
  @ocaml.doc("<p>A map that includes overrides of an evaluation’s parameters.</p>")
  @as("Parameters")
  parameters: parameterMap,
  @ocaml.doc("<p>The name of an evaluation</p>") @as("Statistic") statistic: statistic,
}
@ocaml.doc("<p>Represents one or more dates and times when a job is to run.</p>")
type schedule = {
  @ocaml.doc("<p>The name of the schedule.</p>") @as("Name") name: scheduleName,
  @ocaml.doc("<p>Metadata tags that have been applied to the schedule.</p>") @as("Tags")
  tags: option<tagMap>,
  @ocaml.doc("<p>The dates and times when the job is to run. For more information, see <a href=\"https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html\">Cron
            expressions</a> in the <i>Glue DataBrew Developer
            Guide</i>.</p>")
  @as("CronExpression")
  cronExpression: option<cronExpression>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the schedule.</p>") @as("ResourceArn")
  resourceArn: option<arn>,
  @ocaml.doc("<p>The date and time when the schedule was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: option<date>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who last modified the schedule.</p>")
  @as("LastModifiedBy")
  lastModifiedBy: option<lastModifiedBy>,
  @ocaml.doc("<p>A list of jobs to be run, according to the schedule.</p>") @as("JobNames")
  jobNames: option<jobNameList>,
  @ocaml.doc("<p>The date and time that the schedule was created.</p>") @as("CreateDate")
  createDate: option<date>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who created the schedule.</p>")
  @as("CreatedBy")
  createdBy: option<createdBy>,
  @ocaml.doc("<p>The ID of the Amazon Web Services account that owns the schedule.</p>")
  @as("AccountId")
  accountId: option<accountId>,
}
@ocaml.doc("<p>Represents options that specify how and where DataBrew writes the Amazon S3 output 
            generated by recipe jobs.</p>")
type s3TableOutputOptions = {
  @ocaml.doc("<p>Represents an Amazon S3 location (bucket name and object key) where DataBrew can write output 
            from a job.</p>")
  @as("Location")
  location: s3Location,
}
@ocaml.doc("<p>Contains metadata about the ruleset.</p>")
type rulesetItem = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of a resource (dataset) that the ruleset is 
            associated with.</p>")
  @as("TargetArn")
  targetArn: arn,
  @ocaml.doc("<p>Metadata tags that have been applied to the ruleset.</p>") @as("Tags")
  tags: option<tagMap>,
  @ocaml.doc("<p>The number of rules that are defined in the ruleset.</p>") @as("RuleCount")
  ruleCount: option<ruleCount>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the ruleset.</p>") @as("ResourceArn")
  resourceArn: option<arn>,
  @ocaml.doc("<p>The name of the ruleset.</p>") @as("Name") name: rulesetName,
  @ocaml.doc("<p>The modification date and time of the ruleset.</p>") @as("LastModifiedDate")
  lastModifiedDate: option<date>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who last modified the ruleset.</p>")
  @as("LastModifiedBy")
  lastModifiedBy: option<lastModifiedBy>,
  @ocaml.doc("<p>The description of the ruleset.</p>") @as("Description")
  description: option<rulesetDescription>,
  @ocaml.doc("<p>The date and time that the ruleset was created.</p>") @as("CreateDate")
  createDate: option<date>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who created the ruleset.</p>")
  @as("CreatedBy")
  createdBy: option<createdBy>,
  @ocaml.doc("<p>The ID of the Amazon Web Services account that owns the ruleset.</p>")
  @as("AccountId")
  accountId: option<accountId>,
}
type recipeErrorList = array<recipeVersionErrorDetail>
@ocaml.doc("<p>Represents a transformation and associated parameters that are used to apply a change
            to a DataBrew dataset. For more information, see <a href=\"https://docs.aws.amazon.com/databrew/latest/dg/recipe-actions-reference.html\">Recipe
                actions reference</a>.</p>")
type recipeAction = {
  @ocaml.doc("<p>Contextual parameters for the transformation.</p>") @as("Parameters")
  parameters: option<parameterMap>,
  @ocaml.doc("<p>The name of a valid DataBrew transformation to be performed on the data.</p>")
  @as("Operation")
  operation: operation,
}
@ocaml.doc("<p>Represents all of the attributes of a DataBrew project.</p>")
type project = {
  @ocaml.doc("<p>The date and time when the project was opened.</p>") @as("OpenDate")
  openDate: option<date>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user that opened the project for use.</p>")
  @as("OpenedBy")
  openedBy: option<openedBy>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the role that will be assumed for this
            project.</p>")
  @as("RoleArn")
  roleArn: option<arn>,
  @ocaml.doc("<p>Metadata tags that have been applied to the project.</p>") @as("Tags")
  tags: option<tagMap>,
  @ocaml.doc("<p>The sample size and sampling type to apply to the data. If this parameter isn't
            specified, then the sample consists of the first 500 rows from the dataset.</p>")
  @as("Sample")
  sample: option<sample>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the project.</p>") @as("ResourceArn")
  resourceArn: option<arn>,
  @ocaml.doc("<p>The name of a recipe that will be developed during a project session.</p>")
  @as("RecipeName")
  recipeName: recipeName,
  @ocaml.doc("<p>The unique name of a project.</p>") @as("Name") name: projectName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who last modified the project.</p>")
  @as("LastModifiedBy")
  lastModifiedBy: option<lastModifiedBy>,
  @ocaml.doc("<p>The last modification date and time for the project.</p>") @as("LastModifiedDate")
  lastModifiedDate: option<date>,
  @ocaml.doc("<p>The dataset that the project is to act upon.</p>") @as("DatasetName")
  datasetName: option<datasetName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who crated the project.</p>")
  @as("CreatedBy")
  createdBy: option<createdBy>,
  @ocaml.doc("<p>The date and time that the project was created.</p>") @as("CreateDate")
  createDate: option<date>,
  @ocaml.doc("<p>The ID of the Amazon Web Services account that owns the project.</p>")
  @as("AccountId")
  accountId: option<accountId>,
}
@ocaml.doc(
  "<p>Represents a set of options that define the structure of comma-separated (CSV) job output.</p>"
)
type outputFormatOptions = {
  @ocaml.doc("<p>Represents a set of options that define the structure of comma-separated value (CSV)
            job output.</p>")
  @as("Csv")
  csv: option<csvOutputOptions>,
}
@ocaml.doc("<p>Represents a structure for defining parameter conditions. Supported conditions are described
            here: <a href=\"https://docs.aws.amazon.com/databrew/latest/dg/datasets.multiple-files.html#conditions.for.dynamic.datasets\">Supported 
                conditions for dynamic datasets</a> in the 
            <i>Glue DataBrew Developer Guide</i>.</p>")
type filterExpression = {
  @ocaml.doc(
    "<p>The map of substitution variable names to their values used in this filter expression.</p>"
  )
  @as("ValuesMap")
  valuesMap: valuesMap,
  @ocaml.doc("<p>The expression which includes condition names followed by substitution variables, possibly grouped 
            and combined with other conditions. For example, \"(starts_with :prefix1 or starts_with :prefix2) and 
            (ends_with :suffix1 or ends_with :suffix2)\". Substitution variables should start with ':' symbol.</p>")
  @as("Expression")
  expression: expression,
}
@ocaml.doc("<p>Represents a set of options that define how DataBrew will interpret a Microsoft Excel file when 
            creating a dataset from that file.</p>")
type excelOptions = {
  @ocaml.doc("<p>A variable that specifies whether the first row in the file is parsed as the
            header. If this value is false, column names are auto-generated.</p>")
  @as("HeaderRow")
  headerRow: option<headerRow>,
  @ocaml.doc("<p>One or more sheet numbers in the Excel file that will be included in the
            dataset.</p>")
  @as("SheetIndexes")
  sheetIndexes: option<sheetIndexList>,
  @ocaml.doc(
    "<p>One or more named sheets in the Excel file that will be included in the dataset.</p>"
  )
  @as("SheetNames")
  sheetNames: option<sheetNameList>,
}
@ocaml.doc("<p>Represents options that specify how and where DataBrew writes the database 
            output generated by recipe jobs.</p>")
type databaseTableOutputOptions = {
  @ocaml.doc("<p>A prefix for the name of a table DataBrew will create in the database.</p>")
  @as("TableName")
  tableName: databaseTableName,
  @ocaml.doc("<p>Represents an Amazon S3 location (bucket name and object key) where DataBrew can store 
            intermediate results.</p>")
  @as("TempDirectory")
  tempDirectory: option<s3Location>,
}
@ocaml.doc("<p>Connection information for dataset input files stored in a database.</p>")
type databaseInputDefinition = {
  @ocaml.doc("<p>Custom SQL to run against the provided Glue connection. This SQL will be used as 
            the input for DataBrew projects and jobs.</p>")
  @as("QueryString")
  queryString: option<queryString>,
  @as("TempDirectory") tempDirectory: option<s3Location>,
  @ocaml.doc("<p>The table within the target database.</p>") @as("DatabaseTableName")
  databaseTableName: option<databaseTableName>,
  @ocaml.doc("<p>The Glue Connection that stores the connection information for the target
            database.</p>")
  @as("GlueConnectionName")
  glueConnectionName: glueConnectionName,
}
@ocaml.doc("<p>Represents how metadata stored in the Glue Data Catalog is defined in a DataBrew
            dataset. </p>")
type dataCatalogInputDefinition = {
  @ocaml.doc("<p>Represents an Amazon location where DataBrew can store intermediate results.</p>")
  @as("TempDirectory")
  tempDirectory: option<s3Location>,
  @ocaml.doc("<p>The name of a database table in the Data Catalog. This table corresponds to a DataBrew
            dataset.</p>")
  @as("TableName")
  tableName: tableName,
  @ocaml.doc("<p>The name of a database in the Data Catalog.</p>") @as("DatabaseName")
  databaseName: databaseName,
  @ocaml.doc("<p>The unique identifier of the Amazon Web Services account that holds the Data Catalog that stores the
            data.</p>")
  @as("CatalogId")
  catalogId: option<catalogId>,
}
type conditionExpressionList = array<conditionExpression>
type columnSelectorList = array<columnSelector>
@ocaml.doc("<p>Configuration of statistics that are allowed to be run on columns that 
            contain detected entities. When undefined, no statistics will be computed 
            on columns that contain detected entities.</p>")
type allowedStatistics = {
  @ocaml.doc(
    "<p>One or more column statistics to allow for columns that contain detected entities.</p>"
  )
  @as("Statistics")
  statistics: statisticList,
}
type statisticOverrideList = array<statisticOverride>
type scheduleList = array<schedule>
type rulesetItemList = array<rulesetItem>
@ocaml.doc("<p>Represents a single data quality requirement that should be validated in the 
            scope of this dataset.</p>")
type rule = {
  @ocaml.doc("<p>List of column selectors. Selectors can be used to select columns using a name or regular 
            expression from the dataset. Rule will be applied to selected columns.</p>")
  @as("ColumnSelectors")
  columnSelectors: option<columnSelectorList>,
  @ocaml.doc("<p>The threshold used with a non-aggregate check expression. Non-aggregate check expressions 
            will be applied to each row in a specific column, and the threshold will be used to determine 
            whether the validation succeeds.</p>")
  @as("Threshold")
  threshold: option<threshold>,
  @ocaml.doc("<p>The map of substitution variable names to their values used in a check 
            expression. Variable names should start with a ':' (colon).  Variable values can either 
            be actual values or column names. To differentiate between the two, column names 
            should be enclosed in backticks, for example, <code>\":col1\": \"`Column A`\".</code>
         </p>")
  @as("SubstitutionMap")
  substitutionMap: option<valuesMap>,
  @ocaml.doc("<p>The expression which includes column references, condition names followed by variable
            references, possibly grouped and combined with other conditions. For example,
                <code>(:col1 starts_with :prefix1 or :col1 starts_with :prefix2) and (:col1
                ends_with :suffix1 or :col1 ends_with :suffix2)</code>. Column and value references
            are substitution variables that should start with the ':' symbol. Depending on the
            context, substitution variables' values can be either an actual value or a column name.
            These values are defined in the SubstitutionMap. If a CheckExpression starts with a
            column reference, then ColumnSelectors in the rule should be null. If ColumnSelectors
            has been defined, then there should be no column reference in the left side of a
            condition, for example, <code>is_between :val1 and :val2</code>.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/databrew/latest/dg/profile.data-quality-available-checks.html\">Available checks</a>
         </p>")
  @as("CheckExpression")
  checkExpression: expression,
  @ocaml.doc("<p>A value that specifies whether the rule is disabled. Once a rule is 
            disabled, a profile job will not validate it during a job run. Default 
            value is false.</p>")
  @as("Disabled")
  disabled: option<disabled>,
  @ocaml.doc("<p>The name of the rule.</p>") @as("Name") name: ruleName,
}
@ocaml.doc("<p>Represents a single step from a DataBrew recipe to be performed.</p>")
type recipeStep = {
  @ocaml.doc("<p>One or more conditions that must be met for the recipe step to succeed.</p>
        <note>
            <p>All of the conditions in the array must be met. In other words, all of the
                conditions must be combined using a logical AND operation.</p>
        </note>")
  @as("ConditionExpressions")
  conditionExpressions: option<conditionExpressionList>,
  @ocaml.doc("<p>The particular action to be performed in the recipe step.</p>") @as("Action")
  action: recipeAction,
}
type projectList = array<project>
@ocaml.doc("<p>Represents options that specify how and where in Amazon S3 DataBrew writes the output generated by
            recipe jobs or profile jobs.</p>")
type output = {
  @ocaml.doc("<p>Maximum number of files to be generated by the job and written to the output folder. For output partitioned 
            by column(s), the MaxOutputFiles value is the maximum number of files per partition.</p>")
  @as("MaxOutputFiles")
  maxOutputFiles: option<maxOutputFiles>,
  @ocaml.doc("<p>Represents options that define how DataBrew formats job output files.</p>")
  @as("FormatOptions")
  formatOptions: option<outputFormatOptions>,
  @ocaml.doc("<p>A value that, if true, means that any data in the location specified for output is
            overwritten with new output.</p>")
  @as("Overwrite")
  overwrite: option<overwriteOutput>,
  @ocaml.doc("<p>The location in Amazon S3 where the job writes its output.</p>") @as("Location")
  location: s3Location,
  @ocaml.doc("<p>The names of one or more partition columns for the output of the job.</p>")
  @as("PartitionColumns")
  partitionColumns: option<columnNameList>,
  @ocaml.doc("<p>The data format of the output of the job.</p>") @as("Format")
  format: option<outputFormat>,
  @ocaml.doc("<p>The compression algorithm used to compress the output text of the job.</p>")
  @as("CompressionFormat")
  compressionFormat: option<compressionFormat>,
}
@ocaml.doc("<p>Represents information on how DataBrew can find data, in either the Glue Data Catalog or
            Amazon S3.</p>")
type input = {
  @ocaml.doc("<p>Contains additional resource information needed for specific datasets.</p>")
  @as("Metadata")
  metadata: option<metadata>,
  @ocaml.doc("<p>Connection information for dataset input files stored in a database.</p>")
  @as("DatabaseInputDefinition")
  databaseInputDefinition: option<databaseInputDefinition>,
  @ocaml.doc("<p>The Glue Data Catalog parameters for the data.</p>")
  @as("DataCatalogInputDefinition")
  dataCatalogInputDefinition: option<dataCatalogInputDefinition>,
  @ocaml.doc("<p>The Amazon S3 location where the data is stored.</p>") @as("S3InputDefinition")
  s3InputDefinition: option<s3Location>,
}
@ocaml.doc("<p>Represents a set of options that define the structure of either comma-separated value (CSV),
            Excel, or JSON input.</p>")
type formatOptions = {
  @ocaml.doc("<p>Options that define how CSV input is to be interpreted by DataBrew.</p>")
  @as("Csv")
  csv: option<csvOptions>,
  @ocaml.doc("<p>Options that define how Excel input is to be interpreted by DataBrew.</p>")
  @as("Excel")
  excel: option<excelOptions>,
  @ocaml.doc("<p>Options that define how JSON input is to be interpreted by DataBrew.</p>")
  @as("Json")
  json: option<jsonOptions>,
}
@ocaml.doc("<p>Represents a dataset parameter that defines type and conditions for a parameter in the
                Amazon S3 path of the dataset.</p>")
type datasetParameter = {
  @ocaml.doc(
    "<p>The optional filter expression structure to apply additional matching criteria to the parameter.</p>"
  )
  @as("Filter")
  filter: option<filterExpression>,
  @ocaml.doc("<p>Optional boolean value that defines whether the captured value of this parameter 
            should be used to create a new column in a dataset.</p>")
  @as("CreateColumn")
  createColumn: option<createColumn>,
  @ocaml.doc(
    "<p>Additional parameter options such as a format and a timezone. Required for datetime parameters.</p>"
  )
  @as("DatetimeOptions")
  datetimeOptions: option<datetimeOptions>,
  @ocaml.doc(
    "<p>The type of the dataset parameter, can be one of a 'String', 'Number' or 'Datetime'.</p>"
  )
  @as("Type")
  type_: parameterType,
  @ocaml.doc("<p>The name of the parameter that is used in the dataset's Amazon S3 path.</p>")
  @as("Name")
  name: pathParameterName,
}
@ocaml.doc("<p>Represents a JDBC database output object which defines the output destination for 
            a DataBrew recipe job to write into.</p>")
type databaseOutput = {
  @ocaml.doc(
    "<p>The output mode to write into the database. Currently supported option: NEW_TABLE.</p>"
  )
  @as("DatabaseOutputMode")
  databaseOutputMode: option<databaseOutputMode>,
  @ocaml.doc("<p>Represents options that specify how and where DataBrew writes the database output 
            generated by recipe jobs.</p>")
  @as("DatabaseOptions")
  databaseOptions: databaseTableOutputOptions,
  @ocaml.doc("<p>The Glue connection that stores the connection information for the 
            target database.</p>")
  @as("GlueConnectionName")
  glueConnectionName: glueConnectionName,
}
@ocaml.doc("<p>Represents options that specify how and where in the Glue Data Catalog DataBrew 
            writes the output generated by recipe jobs.</p>")
type dataCatalogOutput = {
  @ocaml.doc("<p>A value that, if true, means that any data in the location specified for output 
            is overwritten with new output. Not supported with DatabaseOptions.</p>")
  @as("Overwrite")
  overwrite: option<overwriteOutput>,
  @ocaml.doc("<p>Represents options that specify how and where DataBrew writes the database output 
            generated by recipe jobs.</p>")
  @as("DatabaseOptions")
  databaseOptions: option<databaseTableOutputOptions>,
  @ocaml.doc("<p>Represents options that specify how and where DataBrew writes the Amazon S3 
            output generated by recipe jobs.</p>")
  @as("S3Options")
  s3Options: option<s3TableOutputOptions>,
  @ocaml.doc("<p>The name of a table in the Data Catalog.</p>") @as("TableName")
  tableName: tableName,
  @ocaml.doc("<p>The name of a database in the Data Catalog.</p>") @as("DatabaseName")
  databaseName: databaseName,
  @ocaml.doc("<p>The unique identifier of the Amazon Web Services account that holds the Data Catalog that 
            stores the data.</p>")
  @as("CatalogId")
  catalogId: option<catalogId>,
}
type allowedStatisticList = array<allowedStatistics>
@ocaml.doc("<p>Configuration of evaluations for a profile job. This configuration can be used to select 
            evaluations and override the parameters of selected evaluations.
        </p>")
type statisticsConfiguration = {
  @ocaml.doc("<p>List of overrides for evaluations.</p>") @as("Overrides")
  overrides: option<statisticOverrideList>,
  @ocaml.doc("<p>List of included evaluations. When the list is undefined, all supported 
            evaluations will be included.</p>")
  @as("IncludedStatistics")
  includedStatistics: option<statisticList>,
}
type ruleList = array<rule>
type recipeStepList = array<recipeStep>
@ocaml.doc("<p>A structure that map names of parameters used in the Amazon S3 path of a dataset to their definitions. 
            A definition includes parameter type and conditions.</p>")
type pathParametersMap = Js.Dict.t<datasetParameter>
type outputList = array<output>
@ocaml.doc("<p>Configuration of entity detection for a profile job. When undefined, entity 
            detection is disabled.</p>")
type entityDetectorConfiguration = {
  @ocaml.doc("<p>Configuration of statistics that are allowed to be run on columns that 
            contain detected entities. When undefined, no statistics will be computed 
            on columns that contain detected entities.</p>")
  @as("AllowedStatistics")
  allowedStatistics: option<allowedStatisticList>,
  @ocaml.doc("<p>Entity types to detect. Can be any of the following:</p>
        <ul>
            <li>
               <p>USA_SSN</p>
            </li>
            <li>
               <p>EMAIL</p>
            </li>
            <li>
               <p>USA_ITIN</p>
            </li>
            <li>
               <p>USA_PASSPORT_NUMBER</p>
            </li>
            <li>
               <p>PHONE_NUMBER</p>
            </li>
            <li>
               <p>USA_DRIVING_LICENSE</p>
            </li>
            <li>
               <p>BANK_ACCOUNT</p>
            </li>
            <li>
               <p>CREDIT_CARD</p>
            </li>
            <li>
               <p>IP_ADDRESS</p>
            </li>
            <li>
               <p>MAC_ADDRESS</p>
            </li>
            <li>
               <p>USA_DEA_NUMBER</p>
            </li>
            <li>
               <p>USA_HCPCS_CODE</p>
            </li>
            <li>
               <p>USA_NATIONAL_PROVIDER_IDENTIFIER</p>
            </li>
            <li>
               <p>USA_NATIONAL_DRUG_CODE</p>
            </li>
            <li>
               <p>USA_HEALTH_INSURANCE_CLAIM_NUMBER</p>
            </li>
            <li>
               <p>USA_MEDICARE_BENEFICIARY_IDENTIFIER</p>
            </li>
            <li>
               <p>USA_CPT_CODE</p>
            </li>
            <li>
               <p>PERSON_NAME</p>
            </li>
            <li>
               <p>DATE</p>
            </li>
         </ul>
        <p>The Entity type group USA_ALL is also supported, and includes all of the 
            above entity types except PERSON_NAME and DATE.</p>")
  @as("EntityTypes")
  entityTypes: entityTypeList,
}
type databaseOutputList = array<databaseOutput>
type dataCatalogOutputList = array<dataCatalogOutput>
@ocaml.doc("<p>Represents one or more actions to be performed on a DataBrew dataset.</p>")
type recipe = {
  @ocaml.doc("<p>The identifier for the version for the recipe. Must be one of the following:</p>
        <ul>
            <li>
                <p>Numeric version (<code>X.Y</code>) - <code>X</code> and <code>Y</code> stand
                    for major and minor version numbers. The maximum length of each is 6 digits, and
                    neither can be negative values. Both <code>X</code> and <code>Y</code> are
                    required, and \"0.0\" isn't a valid version.</p>
            </li>
            <li>
                <p>
                  <code>LATEST_WORKING</code> - the most recent valid version being developed in
                    a DataBrew project.</p>
            </li>
            <li>
                <p>
                  <code>LATEST_PUBLISHED</code> - the most recent published version.</p>
            </li>
         </ul>")
  @as("RecipeVersion")
  recipeVersion: option<recipeVersion>,
  @ocaml.doc("<p>Metadata tags that have been applied to the recipe.</p>") @as("Tags")
  tags: option<tagMap>,
  @ocaml.doc("<p>A list of steps that are defined by the recipe.</p>") @as("Steps")
  steps: option<recipeStepList>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the recipe.</p>") @as("ResourceArn")
  resourceArn: option<arn>,
  @ocaml.doc("<p>The unique name for the recipe.</p>") @as("Name") name: recipeName,
  @ocaml.doc("<p>The description of the recipe.</p>") @as("Description")
  description: option<recipeDescription>,
  @ocaml.doc("<p>The date and time when the recipe was published.</p>") @as("PublishedDate")
  publishedDate: option<date>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who published the recipe.</p>")
  @as("PublishedBy")
  publishedBy: option<publishedBy>,
  @ocaml.doc("<p>The name of the project that the recipe is associated with.</p>")
  @as("ProjectName")
  projectName: option<projectName>,
  @ocaml.doc("<p>The last modification date and time of the recipe.</p>") @as("LastModifiedDate")
  lastModifiedDate: option<date>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who last modified the recipe.</p>")
  @as("LastModifiedBy")
  lastModifiedBy: option<lastModifiedBy>,
  @ocaml.doc("<p>The date and time that the recipe was created.</p>") @as("CreateDate")
  createDate: option<date>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who created the recipe.</p>")
  @as("CreatedBy")
  createdBy: option<createdBy>,
}
@ocaml.doc("<p>Represents a set of options that define how DataBrew selects files for a given Amazon S3 
            path in a dataset.</p>")
type pathOptions = {
  @ocaml.doc(
    "<p>A structure that maps names of parameters used in the Amazon S3 path of a dataset to their definitions.</p>"
  )
  @as("Parameters")
  parameters: option<pathParametersMap>,
  @ocaml.doc(
    "<p>If provided, this structure imposes a limit on a number of files that should be selected.</p>"
  )
  @as("FilesLimit")
  filesLimit: option<filesLimit>,
  @ocaml.doc("<p>If provided, this structure defines a date range for matching Amazon S3 objects based on their 
            LastModifiedDate attribute in Amazon S3.</p>")
  @as("LastModifiedDateCondition")
  lastModifiedDateCondition: option<filterExpression>,
}
@ocaml.doc("<p>Represents one run of a DataBrew job.</p>")
type jobRun = {
  @ocaml.doc("<p>List of validation configurations that are applied to the profile job run.</p>")
  @as("ValidationConfigurations")
  validationConfigurations: option<validationConfigurationList>,
  @ocaml.doc("<p>A sample configuration for profile jobs only, which determines the number of rows on which the
            profile job is run. If a <code>JobSample</code> value isn't provided, the default
            is used. The default value is CUSTOM_ROWS for the mode parameter and 20,000 for the
            size parameter.</p>")
  @as("JobSample")
  jobSample: option<jobSample>,
  @ocaml.doc("<p>The date and time when the job run began. </p>") @as("StartedOn")
  startedOn: option<date>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who initiated the job run. </p>")
  @as("StartedBy")
  startedBy: option<startedBy>,
  @ocaml.doc("<p>The set of steps processed by the job.</p>") @as("RecipeReference")
  recipeReference: option<recipeReference>,
  @ocaml.doc("<p>Represents a list of JDBC database output objects which defines the output 
            destination for a DataBrew recipe job to write into.</p>")
  @as("DatabaseOutputs")
  databaseOutputs: option<databaseOutputList>,
  @ocaml.doc("<p>One or more artifacts that represent the Glue Data Catalog output 
            from running the job.</p>")
  @as("DataCatalogOutputs")
  dataCatalogOutputs: option<dataCatalogOutputList>,
  @ocaml.doc("<p>One or more output artifacts from a job run.</p>") @as("Outputs")
  outputs: option<outputList>,
  @ocaml.doc("<p>The name of an Amazon CloudWatch log group, where the job writes diagnostic messages
            when it runs.</p>")
  @as("LogGroupName")
  logGroupName: option<logGroupName>,
  @ocaml.doc("<p>The current status of Amazon CloudWatch logging for the job run.</p>")
  @as("LogSubscription")
  logSubscription: option<logSubscription>,
  @ocaml.doc("<p>The current state of the job run entity itself.</p>") @as("State")
  state: option<jobRunState>,
  @ocaml.doc("<p>The unique identifier of the job run.</p>") @as("RunId") runId: option<jobRunId>,
  @ocaml.doc("<p>The name of the job being processed during this run.</p>") @as("JobName")
  jobName: option<jobName>,
  @ocaml.doc("<p>The amount of time, in seconds, during which a job run consumed resources.</p>")
  @as("ExecutionTime")
  executionTime: option<executionTime>,
  @ocaml.doc("<p>A message indicating an error (if any) that was encountered when the job ran.</p>")
  @as("ErrorMessage")
  errorMessage: option<jobRunErrorMessage>,
  @ocaml.doc("<p>The name of the dataset for the job to process.</p>") @as("DatasetName")
  datasetName: option<datasetName>,
  @ocaml.doc("<p>The date and time when the job completed processing.</p>") @as("CompletedOn")
  completedOn: option<date>,
  @ocaml.doc("<p>The number of times that DataBrew has attempted to run the job.</p>")
  @as("Attempt")
  attempt: option<attempt>,
}
@ocaml.doc("<p>Represents all of the attributes of a DataBrew job.</p>")
type job = {
  @ocaml.doc("<p>List of validation configurations that are applied to the profile job.</p>")
  @as("ValidationConfigurations")
  validationConfigurations: option<validationConfigurationList>,
  @ocaml.doc("<p>A sample configuration for profile jobs only, which determines the number of rows on which the
            profile job is run. If a <code>JobSample</code> value isn't provided, the default value
            is used. The default value is CUSTOM_ROWS for the mode parameter and 20,000 for the
            size parameter.</p>")
  @as("JobSample")
  jobSample: option<jobSample>,
  @ocaml.doc("<p>Metadata tags that have been applied to the job.</p>") @as("Tags")
  tags: option<tagMap>,
  @ocaml.doc("<p>The job's timeout in minutes. A job that attempts to run longer than this timeout
            period ends with a status of <code>TIMEOUT</code>.</p>")
  @as("Timeout")
  timeout: option<timeout>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the role to be assumed for this job.</p>")
  @as("RoleArn")
  roleArn: option<arn>,
  @ocaml.doc("<p>The unique Amazon Resource Name (ARN) for the job.</p>") @as("ResourceArn")
  resourceArn: option<arn>,
  @ocaml.doc("<p>A set of steps that the job runs.</p>") @as("RecipeReference")
  recipeReference: option<recipeReference>,
  @ocaml.doc("<p>The name of the project that the job is associated with.</p>") @as("ProjectName")
  projectName: option<projectName>,
  @ocaml.doc("<p>Represents a list of JDBC database output objects which defines the output 
            destination for a DataBrew recipe job to write into.</p>")
  @as("DatabaseOutputs")
  databaseOutputs: option<databaseOutputList>,
  @ocaml.doc("<p>One or more artifacts that represent the Glue Data Catalog output 
            from running the job.</p>")
  @as("DataCatalogOutputs")
  dataCatalogOutputs: option<dataCatalogOutputList>,
  @ocaml.doc("<p>One or more artifacts that represent output from running the job.</p>")
  @as("Outputs")
  outputs: option<outputList>,
  @ocaml.doc("<p>The maximum number of times to retry the job after a job run fails.</p>")
  @as("MaxRetries")
  maxRetries: option<maxRetries>,
  @ocaml.doc("<p>The maximum number of nodes that can be consumed when the job processes data.</p>")
  @as("MaxCapacity")
  maxCapacity: option<maxCapacity>,
  @ocaml.doc("<p>The current status of Amazon CloudWatch logging for the job.</p>")
  @as("LogSubscription")
  logSubscription: option<logSubscription>,
  @ocaml.doc("<p>The modification date and time of the job.</p>") @as("LastModifiedDate")
  lastModifiedDate: option<date>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who last modified the job.</p>")
  @as("LastModifiedBy")
  lastModifiedBy: option<lastModifiedBy>,
  @ocaml.doc("<p>The job type of the job, which must be one of the following:</p>
        <ul>
            <li>
                <p>
                  <code>PROFILE</code> - A job to analyze a dataset, to determine its size, data
                    types, data distribution, and more.</p>
            </li>
            <li>
                <p>
                  <code>RECIPE</code> - A job to apply one or more transformations to a
                    dataset.</p>
            </li>
         </ul>")
  @as("Type")
  type_: option<jobType>,
  @ocaml.doc("<p>The unique name of the job.</p>") @as("Name") name: jobName,
  @ocaml.doc("<p>The encryption mode for the job, which can be one of the following:</p>
        <ul>
            <li>
                <p>
                  <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>
            </li>
            <li>
                <p>
                  <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>
            </li>
         </ul>")
  @as("EncryptionMode")
  encryptionMode: option<encryptionMode>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the job
            output. For more information, see <a href=\"https://docs.aws.amazon.com/databrew/latest/dg/encryption-security-configuration.html\">Encrypting data
                written by DataBrew jobs</a>
         </p>")
  @as("EncryptionKeyArn")
  encryptionKeyArn: option<encryptionKeyArn>,
  @ocaml.doc("<p>A dataset that the job is to process.</p>") @as("DatasetName")
  datasetName: option<datasetName>,
  @ocaml.doc("<p>The date and time that the job was created.</p>") @as("CreateDate")
  createDate: option<date>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who created the job.</p>")
  @as("CreatedBy")
  createdBy: option<createdBy>,
  @ocaml.doc("<p>The ID of the Amazon Web Services account that owns the job.</p>") @as("AccountId")
  accountId: option<accountId>,
}
@ocaml.doc("<p>Configuration for column evaluations for a profile job. ColumnStatisticsConfiguration can be used to select 
            evaluations and override parameters of evaluations for particular columns. 
        </p>")
type columnStatisticsConfiguration = {
  @ocaml.doc("<p>Configuration for evaluations. Statistics can be used to select evaluations and override 
            parameters of evaluations. 
        </p>")
  @as("Statistics")
  statistics: statisticsConfiguration,
  @ocaml.doc("<p>List of column selectors. Selectors can be used to select columns from the dataset. 
            When selectors are undefined, configuration will be applied to all supported columns.
        </p>")
  @as("Selectors")
  selectors: option<columnSelectorList>,
}
type recipeList = array<recipe>
type jobRunList = array<jobRun>
type jobList = array<job>
@ocaml.doc("<p>Represents a dataset that can be processed by DataBrew.</p>")
type dataset = {
  @ocaml.doc("<p>The unique Amazon Resource Name (ARN) for the dataset.</p>") @as("ResourceArn")
  resourceArn: option<arn>,
  @ocaml.doc("<p>Metadata tags that have been applied to the dataset.</p>") @as("Tags")
  tags: option<tagMap>,
  @ocaml.doc("<p>A set of options that defines how DataBrew interprets an Amazon S3 
            path of the dataset.</p>")
  @as("PathOptions")
  pathOptions: option<pathOptions>,
  @ocaml.doc(
    "<p>The location of the data for the dataset, either Amazon S3 or the Glue Data Catalog.</p>"
  )
  @as("Source")
  source: option<source>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who last modified the dataset.</p>")
  @as("LastModifiedBy")
  lastModifiedBy: option<lastModifiedBy>,
  @ocaml.doc("<p>The last modification date and time of the dataset.</p>") @as("LastModifiedDate")
  lastModifiedDate: option<date>,
  @ocaml.doc("<p>Information on how DataBrew can find the dataset, in either the Glue Data Catalog
            or Amazon S3.</p>")
  @as("Input")
  input: input,
  @ocaml.doc("<p>A set of options that define how DataBrew interprets the data in the dataset.</p>")
  @as("FormatOptions")
  formatOptions: option<formatOptions>,
  @ocaml.doc(
    "<p>The file format of a dataset that is created from an Amazon S3 file or folder.</p>"
  )
  @as("Format")
  format: option<inputFormat>,
  @ocaml.doc("<p>The unique name of the dataset.</p>") @as("Name") name: datasetName,
  @ocaml.doc("<p>The date and time that the dataset was created.</p>") @as("CreateDate")
  createDate: option<date>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who created the dataset.</p>")
  @as("CreatedBy")
  createdBy: option<createdBy>,
  @ocaml.doc("<p>The ID of the Amazon Web Services account that owns the dataset.</p>")
  @as("AccountId")
  accountId: option<accountId>,
}
type columnStatisticsConfigurationList = array<columnStatisticsConfiguration>
@ocaml.doc("<p>Configuration for profile jobs. Configuration can be used to select columns, do evaluations, and override default 
            parameters of evaluations. When configuration is undefined, the profile job will apply default settings to all 
            supported columns.
        </p>")
type profileConfiguration = {
  @ocaml.doc(
    "<p>Configuration of entity detection for a profile job. When undefined, entity detection is disabled.</p>"
  )
  @as("EntityDetectorConfiguration")
  entityDetectorConfiguration: option<entityDetectorConfiguration>,
  @ocaml.doc("<p>List of configurations for column evaluations. ColumnStatisticsConfigurations are used to 
            select evaluations and override parameters of evaluations for particular columns. When 
            ColumnStatisticsConfigurations is undefined,  the profile job will profile all supported columns 
            and run all supported  evaluations.
        </p>")
  @as("ColumnStatisticsConfigurations")
  columnStatisticsConfigurations: option<columnStatisticsConfigurationList>,
  @ocaml.doc("<p>List of column selectors. ProfileColumns can be used to select columns from the dataset. When 
            ProfileColumns is undefined, the profile job will profile all supported columns.
        </p>")
  @as("ProfileColumns")
  profileColumns: option<columnSelectorList>,
  @ocaml.doc("<p>Configuration for inter-column evaluations. Configuration can be used to select evaluations and override 
            parameters of evaluations. When configuration is undefined, the profile job will run all supported 
            inter-column evaluations.
        </p>")
  @as("DatasetStatisticsConfiguration")
  datasetStatisticsConfiguration: option<statisticsConfiguration>,
}
type datasetList = array<dataset>
@ocaml.doc("<p>Glue DataBrew is a visual, cloud-scale data-preparation service. DataBrew
            simplifies data preparation tasks, targeting data issues that are hard to spot and
            time-consuming to fix. DataBrew empowers users of all technical levels to visualize the
            data and perform one-click data transformations, with no coding required.</p>")
module StopJobRun = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the job run to be stopped.</p>") @as("RunId") runId: jobRunId,
    @ocaml.doc("<p>The name of the job to be stopped.</p>") @as("Name") name: jobName,
  }
  type response = {
    @ocaml.doc("<p>The ID of the job run that you stopped.</p>") @as("RunId") runId: jobRunId,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "StopJobRunCommand"
  let make = (~runId, ~name, ()) => new({runId, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartProjectSession = {
  type t
  type request = {
    @ocaml.doc("<p>A value that, if true, enables you to take control of a session, even if a different
            client is currently accessing the project.</p>")
    @as("AssumeControl")
    assumeControl: option<assumeControl>,
    @ocaml.doc("<p>The name of the project to act upon.</p>") @as("Name") name: projectName,
  }
  type response = {
    @ocaml.doc("<p>A system-generated identifier for the session.</p>") @as("ClientSessionId")
    clientSessionId: option<clientSessionId>,
    @ocaml.doc("<p>The name of the project to be acted upon.</p>") @as("Name") name: projectName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "StartProjectSessionCommand"
  let make = (~name, ~assumeControl=?, ()) => new({assumeControl, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartJobRun = {
  type t
  type request = {@ocaml.doc("<p>The name of the job to be run.</p>") @as("Name") name: jobName}
  type response = {
    @ocaml.doc("<p>A system-generated identifier for this particular job run.</p>") @as("RunId")
    runId: jobRunId,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "StartJobRunCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PublishRecipe = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the recipe to be published.</p>") @as("Name") name: recipeName,
    @ocaml.doc(
      "<p>A description of the recipe to be published, for this version of the recipe.</p>"
    )
    @as("Description")
    description: option<recipeDescription>,
  }
  type response = {
    @ocaml.doc("<p>The name of the recipe that you published.</p>") @as("Name") name: recipeName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "PublishRecipeCommand"
  let make = (~name, ~description=?, ()) => new({name, description})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the schedule to be deleted.</p>") @as("Name") name: scheduleName,
  }
  type response = {
    @ocaml.doc("<p>The name of the schedule that was deleted.</p>") @as("Name") name: scheduleName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DeleteScheduleCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteRuleset = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the ruleset to be deleted.</p>") @as("Name") name: rulesetName,
  }
  type response = {
    @ocaml.doc("<p>The name of the deleted ruleset.</p>") @as("Name") name: rulesetName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DeleteRulesetCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteRecipeVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the recipe to be deleted. You can specify a numeric versions
                (<code>X.Y</code>) or <code>LATEST_WORKING</code>. <code>LATEST_PUBLISHED</code> is
            not supported.</p>")
    @as("RecipeVersion")
    recipeVersion: recipeVersion,
    @ocaml.doc("<p>The name of the recipe.</p>") @as("Name") name: recipeName,
  }
  type response = {
    @ocaml.doc("<p>The version of the recipe that was deleted.</p>") @as("RecipeVersion")
    recipeVersion: recipeVersion,
    @ocaml.doc("<p>The name of the recipe that was deleted.</p>") @as("Name") name: recipeName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DeleteRecipeVersionCommand"
  let make = (~recipeVersion, ~name, ()) => new({recipeVersion, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteProject = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the project to be deleted.</p>") @as("Name") name: projectName,
  }
  type response = {
    @ocaml.doc("<p>The name of the project that you deleted.</p>") @as("Name") name: projectName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DeleteProjectCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteJob = {
  type t
  type request = {@ocaml.doc("<p>The name of the job to be deleted.</p>") @as("Name") name: jobName}
  type response = {
    @ocaml.doc("<p>The name of the job that you deleted.</p>") @as("Name") name: jobName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DeleteJobCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteDataset = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the dataset to be deleted.</p>") @as("Name") name: datasetName,
  }
  type response = {
    @ocaml.doc("<p>The name of the dataset that you deleted.</p>") @as("Name") name: datasetName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DeleteDatasetCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the schedule to update.</p>") @as("Name") name: scheduleName,
    @ocaml.doc("<p>The date or dates and time or times when the jobs are to be run. For more information,
            see <a href=\"https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html\">Cron
                expressions</a> in the <i>Glue DataBrew Developer
            Guide</i>.</p>")
    @as("CronExpression")
    cronExpression: cronExpression,
    @ocaml.doc("<p>The name or names of one or more jobs to be run for this schedule.</p>")
    @as("JobNames")
    jobNames: option<jobNameList>,
  }
  type response = {
    @ocaml.doc("<p>The name of the schedule that was updated.</p>") @as("Name") name: scheduleName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "UpdateScheduleCommand"
  let make = (~name, ~cronExpression, ~jobNames=?, ()) => new({name, cronExpression, jobNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateProject = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the project to be updated.</p>") @as("Name") name: projectName,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the IAM role to be assumed for this request.</p>"
    )
    @as("RoleArn")
    roleArn: arn,
    @as("Sample") sample: option<sample>,
  }
  type response = {
    @ocaml.doc("<p>The name of the project that you updated.</p>") @as("Name") name: projectName,
    @ocaml.doc("<p>The date and time that the project was last modified.</p>")
    @as("LastModifiedDate")
    lastModifiedDate: option<date>,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "UpdateProjectCommand"
  let make = (~name, ~roleArn, ~sample=?, ()) => new({name, roleArn, sample})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys (names) of one or more tags to be removed.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>A DataBrew resource from which you want to remove a tag or tags. The value for this
            parameter is an Amazon Resource Name (ARN). </p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags to be assigned to the resource.</p>") @as("Tags") tags: tagMap,
    @ocaml.doc("<p>The DataBrew resource to which tags should be added. The value for this parameter is
            an Amazon Resource Name (ARN). For DataBrew, you can tag a dataset, a job, a project, or
            a recipe.</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-databrew") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) string that uniquely identifies the DataBrew resource.
        </p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>A list of tags associated with the DataBrew resource.</p>") @as("Tags")
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the schedule to be described.</p>") @as("Name") name: scheduleName,
  }
  type response = {
    @ocaml.doc("<p>The name of the schedule.</p>") @as("Name") name: scheduleName,
    @ocaml.doc("<p>Metadata tags associated with this schedule.</p>") @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The date or dates and time or times when the jobs are to be run for the schedule. For
            more information, see <a href=\"https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html\">Cron expressions</a> in the
            <i>Glue DataBrew Developer Guide</i>.</p>")
    @as("CronExpression")
    cronExpression: option<cronExpression>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the schedule.</p>") @as("ResourceArn")
    resourceArn: option<arn>,
    @ocaml.doc("<p>The date and time that the schedule was last modified.</p>")
    @as("LastModifiedDate")
    lastModifiedDate: option<date>,
    @ocaml.doc("<p>The identifier (user name) of the user who last modified the schedule.</p>")
    @as("LastModifiedBy")
    lastModifiedBy: option<lastModifiedBy>,
    @ocaml.doc("<p>The name or names of one or more jobs to be run by using the schedule.</p>")
    @as("JobNames")
    jobNames: option<jobNameList>,
    @ocaml.doc("<p>The identifier (user name) of the user who created the schedule. </p>")
    @as("CreatedBy")
    createdBy: option<createdBy>,
    @ocaml.doc("<p>The date and time that the schedule was created.</p>") @as("CreateDate")
    createDate: option<date>,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DescribeScheduleCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeProject = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the project to be described.</p>") @as("Name") name: projectName,
  }
  type response = {
    @ocaml.doc("<p>The date and time when the project was opened. </p>") @as("OpenDate")
    openDate: option<date>,
    @ocaml.doc("<p>The identifier (user name) of the user that opened the project for use. </p>")
    @as("OpenedBy")
    openedBy: option<openedBy>,
    @ocaml.doc("<p>Describes the current state of the session:</p>
        <ul>
            <li>
                <p>
                  <code>PROVISIONING</code> - allocating resources for the session.</p>
            </li>
            <li>
                <p>
                  <code>INITIALIZING</code> - getting the session ready for first use.</p>
            </li>
            <li>
                <p>
                  <code>ASSIGNED</code> - the session is ready for use.</p>
            </li>
         </ul>")
    @as("SessionStatus")
    sessionStatus: option<sessionStatus>,
    @ocaml.doc("<p>Metadata tags associated with this project.</p>") @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The ARN of the Identity and Access Management (IAM) role to be assumed when
            DataBrew runs the job.</p>")
    @as("RoleArn")
    roleArn: option<arn>,
    @as("Sample") sample: option<sample>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the project.</p>") @as("ResourceArn")
    resourceArn: option<arn>,
    @ocaml.doc("<p>The recipe associated with this job.</p>") @as("RecipeName")
    recipeName: option<recipeName>,
    @ocaml.doc("<p>The name of the project.</p>") @as("Name") name: projectName,
    @ocaml.doc("<p>The identifier (user name) of the user who last modified the project.</p>")
    @as("LastModifiedBy")
    lastModifiedBy: option<lastModifiedBy>,
    @ocaml.doc("<p>The date and time that the project was last modified.</p>")
    @as("LastModifiedDate")
    lastModifiedDate: option<date>,
    @ocaml.doc("<p>The dataset associated with the project.</p>") @as("DatasetName")
    datasetName: option<datasetName>,
    @ocaml.doc("<p>The identifier (user name) of the user who created the project.</p>")
    @as("CreatedBy")
    createdBy: option<createdBy>,
    @ocaml.doc("<p>The date and time that the project was created.</p>") @as("CreateDate")
    createDate: option<date>,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DescribeProjectCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>A unique name for the schedule. Valid characters are alphanumeric (A-Z, a-z, 0-9),
            hyphen (-), period (.), and space.</p>")
    @as("Name")
    name: scheduleName,
    @ocaml.doc("<p>Metadata tags to apply to this schedule.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The date or dates and time or times when the jobs are to be run. For more information,
            see <a href=\"https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html\">Cron
                expressions</a> in the <i>Glue DataBrew Developer
            Guide</i>.</p>")
    @as("CronExpression")
    cronExpression: cronExpression,
    @ocaml.doc("<p>The name or names of one or more jobs to be run.</p>") @as("JobNames")
    jobNames: option<jobNameList>,
  }
  type response = {
    @ocaml.doc("<p>The name of the schedule that was created.</p>") @as("Name") name: scheduleName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "CreateScheduleCommand"
  let make = (~name, ~cronExpression, ~tags=?, ~jobNames=?, ()) =>
    new({name, tags, cronExpression, jobNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateProject = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata tags to apply to this project.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
            be assumed for this request.</p>")
    @as("RoleArn")
    roleArn: arn,
    @as("Sample") sample: option<sample>,
    @ocaml.doc("<p>The name of an existing recipe to associate with the project.</p>")
    @as("RecipeName")
    recipeName: recipeName,
    @ocaml.doc("<p>A unique name for the new project. Valid characters are alphanumeric (A-Z, a-z, 0-9),
            hyphen (-), period (.), and space.</p>")
    @as("Name")
    name: projectName,
    @ocaml.doc("<p>The name of an existing dataset to associate this project with.</p>")
    @as("DatasetName")
    datasetName: datasetName,
  }
  type response = {
    @ocaml.doc("<p>The name of the project that you created.</p>") @as("Name") name: projectName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "CreateProjectCommand"
  let make = (~roleArn, ~recipeName, ~name, ~datasetName, ~tags=?, ~sample=?, ()) =>
    new({tags, roleArn, sample, recipeName, name, datasetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchDeleteRecipeVersion = {
  type t
  type request = {
    @ocaml.doc("<p>An array of version identifiers, for the recipe versions to be deleted. You can
            specify numeric versions (<code>X.Y</code>) or <code>LATEST_WORKING</code>.
                <code>LATEST_PUBLISHED</code> is not supported.</p>")
    @as("RecipeVersions")
    recipeVersions: recipeVersionList,
    @ocaml.doc("<p>The name of the recipe whose versions are to be deleted.</p>") @as("Name")
    name: recipeName,
  }
  type response = {
    @ocaml.doc(
      "<p>Errors, if any, that occurred while attempting to delete the recipe versions.</p>"
    )
    @as("Errors")
    errors: option<recipeErrorList>,
    @ocaml.doc("<p>The name of the recipe that was modified.</p>") @as("Name") name: recipeName,
  }
  @module("@aws-sdk/client-databrew") @new
  external new: request => t = "BatchDeleteRecipeVersionCommand"
  let make = (~recipeVersions, ~name, ()) => new({recipeVersions, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SendProjectSessionAction = {
  type t
  type request = {
    @as("ViewFrame") viewFrame: option<viewFrame>,
    @ocaml.doc("<p>A unique identifier for an interactive session that's currently open and ready for
            work. The action will be performed on this session.</p>")
    @as("ClientSessionId")
    clientSessionId: option<clientSessionId>,
    @ocaml.doc("<p>The index from which to preview a step. This index is used to preview the result of
            steps that have already been applied, so that the resulting view frame is from earlier
            in the view frame stack.</p>")
    @as("StepIndex")
    stepIndex: option<stepIndex>,
    @as("RecipeStep") recipeStep: option<recipeStep>,
    @ocaml.doc("<p>The name of the project to apply the action to.</p>") @as("Name")
    name: projectName,
    @ocaml.doc("<p>If true, the result of the recipe step will be returned, but not applied.</p>")
    @as("Preview")
    preview: option<preview>,
  }
  type response = {
    @ocaml.doc("<p>A unique identifier for the action that was performed.</p>") @as("ActionId")
    actionId: option<actionId>,
    @ocaml.doc("<p>The name of the project that was affected by the action.</p>") @as("Name")
    name: projectName,
    @ocaml.doc("<p>A message indicating the result of performing the action.</p>") @as("Result")
    result: option<result>,
  }
  @module("@aws-sdk/client-databrew") @new
  external new: request => t = "SendProjectSessionActionCommand"
  let make = (
    ~name,
    ~viewFrame=?,
    ~clientSessionId=?,
    ~stepIndex=?,
    ~recipeStep=?,
    ~preview=?,
    (),
  ) => new({viewFrame, clientSessionId, stepIndex, recipeStep, name, preview})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSchedules = {
  type t
  type request = {
    @ocaml.doc("<p>The token returned by a previous call to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in this request. </p>") @as("MaxResults")
    maxResults: option<maxResults100>,
    @ocaml.doc("<p>The name of the job that these schedules apply to.</p>") @as("JobName")
    jobName: option<jobName>,
  }
  type response = {
    @ocaml.doc("<p>A token that you can use in a subsequent call to retrieve the next set of
            results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of schedules that are defined.</p>") @as("Schedules")
    schedules: scheduleList,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "ListSchedulesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~jobName=?, ()) => new({nextToken, maxResults, jobName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRulesets = {
  type t
  type request = {
    @ocaml.doc("<p>A token generated by DataBrew that specifies where to continue pagination 
            if a previous request was truncated. To get the next set of pages, pass in 
            the NextToken value from the response object of the previous page call.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in this request.</p>") @as("MaxResults")
    maxResults: option<maxResults100>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a resource (dataset). Using this parameter 
            indicates to return only those rulesets that are associated with the specified resource.</p>")
    @as("TargetArn")
    targetArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>A token that you can use in a subsequent call to retrieve the next set of
            results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of RulesetItem. RulesetItem contains meta data of a ruleset.</p>")
    @as("Rulesets")
    rulesets: rulesetItemList,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "ListRulesetsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~targetArn=?, ()) =>
    new({nextToken, maxResults, targetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListProjects = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in this request. </p>") @as("MaxResults")
    maxResults: option<maxResults100>,
    @ocaml.doc("<p>The token returned by a previous call to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A token that you can use in a subsequent call to retrieve the next set of
            results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of projects that are defined .</p>") @as("Projects")
    projects: projectList,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "ListProjectsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateRuleset = {
  type t
  type request = {
    @ocaml.doc("<p>A list of rules that are defined with the ruleset. A rule includes one or more 
            checks to be validated on a DataBrew dataset.</p>")
    @as("Rules")
    rules: ruleList,
    @ocaml.doc("<p>The description of the ruleset.</p>") @as("Description")
    description: option<rulesetDescription>,
    @ocaml.doc("<p>The name of the ruleset to be updated.</p>") @as("Name") name: rulesetName,
  }
  type response = {
    @ocaml.doc("<p>The name of the updated ruleset.</p>") @as("Name") name: rulesetName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "UpdateRulesetCommand"
  let make = (~rules, ~name, ~description=?, ()) => new({rules, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateRecipeJob = {
  type t
  type request = {
    @ocaml.doc("<p>The job's timeout in minutes. A job that attempts to run longer than this timeout
            period ends with a status of <code>TIMEOUT</code>.</p>")
    @as("Timeout")
    timeout: option<timeout>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
            be assumed when DataBrew runs the job.</p>")
    @as("RoleArn")
    roleArn: arn,
    @ocaml.doc("<p>Represents a list of JDBC database output objects which defines the output destination for a 
            DataBrew recipe job to write into.</p>")
    @as("DatabaseOutputs")
    databaseOutputs: option<databaseOutputList>,
    @ocaml.doc(
      "<p>One or more artifacts that represent the Glue Data Catalog output from running the job.</p>"
    )
    @as("DataCatalogOutputs")
    dataCatalogOutputs: option<dataCatalogOutputList>,
    @ocaml.doc("<p>One or more artifacts that represent the output from running the job. </p>")
    @as("Outputs")
    outputs: option<outputList>,
    @ocaml.doc("<p>The maximum number of times to retry the job after a job run fails.</p>")
    @as("MaxRetries")
    maxRetries: option<maxRetries>,
    @ocaml.doc("<p>The maximum number of nodes that DataBrew can consume when the job processes
            data.</p>")
    @as("MaxCapacity")
    maxCapacity: option<maxCapacity>,
    @ocaml.doc("<p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,
            CloudWatch writes one log stream for each job run.</p>")
    @as("LogSubscription")
    logSubscription: option<logSubscription>,
    @ocaml.doc("<p>The name of the job to update.</p>") @as("Name") name: jobName,
    @ocaml.doc("<p>The encryption mode for the job, which can be one of the following:</p>
        <ul>
            <li>
                <p>
                  <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>
            </li>
            <li>
                <p>
                  <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>
            </li>
         </ul>")
    @as("EncryptionMode")
    encryptionMode: option<encryptionMode>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
            job.</p>")
    @as("EncryptionKeyArn")
    encryptionKeyArn: option<encryptionKeyArn>,
  }
  type response = {
    @ocaml.doc("<p>The name of the job that you updated.</p>") @as("Name") name: jobName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "UpdateRecipeJobCommand"
  let make = (
    ~roleArn,
    ~name,
    ~timeout=?,
    ~databaseOutputs=?,
    ~dataCatalogOutputs=?,
    ~outputs=?,
    ~maxRetries=?,
    ~maxCapacity=?,
    ~logSubscription=?,
    ~encryptionMode=?,
    ~encryptionKeyArn=?,
    (),
  ) =>
    new({
      timeout,
      roleArn,
      databaseOutputs,
      dataCatalogOutputs,
      outputs,
      maxRetries,
      maxCapacity,
      logSubscription,
      name,
      encryptionMode,
      encryptionKeyArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateRecipe = {
  type t
  type request = {
    @ocaml.doc("<p>One or more steps to be performed by the recipe. Each step consists of an action, and
            the conditions under which the action should succeed.</p>")
    @as("Steps")
    steps: option<recipeStepList>,
    @ocaml.doc("<p>The name of the recipe to be updated.</p>") @as("Name") name: recipeName,
    @ocaml.doc("<p>A description of the recipe.</p>") @as("Description")
    description: option<recipeDescription>,
  }
  type response = {
    @ocaml.doc("<p>The name of the recipe that was updated.</p>") @as("Name") name: recipeName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "UpdateRecipeCommand"
  let make = (~name, ~steps=?, ~description=?, ()) => new({steps, name, description})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeRuleset = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the ruleset to be described.</p>") @as("Name") name: rulesetName,
  }
  type response = {
    @ocaml.doc("<p>Metadata tags that have been applied to the ruleset.</p>") @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the ruleset.</p>") @as("ResourceArn")
    resourceArn: option<arn>,
    @ocaml.doc("<p>The modification date and time of the ruleset.</p>") @as("LastModifiedDate")
    lastModifiedDate: option<date>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who last modified the ruleset.</p>")
    @as("LastModifiedBy")
    lastModifiedBy: option<lastModifiedBy>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who created the ruleset.</p>")
    @as("CreatedBy")
    createdBy: option<createdBy>,
    @ocaml.doc("<p>The date and time that the ruleset was created.</p>") @as("CreateDate")
    createDate: option<date>,
    @ocaml.doc("<p>A list of rules that are defined with the ruleset. A rule includes one 
            or more checks to be validated on a DataBrew dataset.</p>")
    @as("Rules")
    rules: option<ruleList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a resource (dataset) that the ruleset is 
            associated with.</p>")
    @as("TargetArn")
    targetArn: option<arn>,
    @ocaml.doc("<p>The description of the ruleset.</p>") @as("Description")
    description: option<rulesetDescription>,
    @ocaml.doc("<p>The name of the ruleset.</p>") @as("Name") name: rulesetName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DescribeRulesetCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeRecipe = {
  type t
  type request = {
    @ocaml.doc("<p>The recipe version identifier. If this parameter isn't specified, then the latest
            published version is returned.</p>")
    @as("RecipeVersion")
    recipeVersion: option<recipeVersion>,
    @ocaml.doc("<p>The name of the recipe to be described.</p>") @as("Name") name: recipeName,
  }
  type response = {
    @ocaml.doc("<p>The recipe version identifier.</p>") @as("RecipeVersion")
    recipeVersion: option<recipeVersion>,
    @ocaml.doc("<p>The ARN of the recipe.</p>") @as("ResourceArn") resourceArn: option<arn>,
    @ocaml.doc("<p>Metadata tags associated with this project.</p>") @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>One or more steps to be performed by the recipe. Each step consists of an action, and
            the conditions under which the action should succeed.</p>")
    @as("Steps")
    steps: option<recipeStepList>,
    @ocaml.doc("<p>The name of the recipe.</p>") @as("Name") name: recipeName,
    @ocaml.doc("<p>The description of the recipe.</p>") @as("Description")
    description: option<recipeDescription>,
    @ocaml.doc("<p>The date and time when the recipe was last published.</p>") @as("PublishedDate")
    publishedDate: option<date>,
    @ocaml.doc("<p>The identifier (user name) of the user who last published the recipe.</p>")
    @as("PublishedBy")
    publishedBy: option<publishedBy>,
    @ocaml.doc("<p>The name of the project associated with this recipe.</p>") @as("ProjectName")
    projectName: option<projectName>,
    @ocaml.doc("<p>The date and time that the recipe was last modified.</p>")
    @as("LastModifiedDate")
    lastModifiedDate: option<date>,
    @ocaml.doc("<p>The identifier (user name) of the user who last modified the recipe.</p>")
    @as("LastModifiedBy")
    lastModifiedBy: option<lastModifiedBy>,
    @ocaml.doc("<p>The date and time that the recipe was created.</p>") @as("CreateDate")
    createDate: option<date>,
    @ocaml.doc("<p>The identifier (user name) of the user who created the recipe.</p>")
    @as("CreatedBy")
    createdBy: option<createdBy>,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DescribeRecipeCommand"
  let make = (~name, ~recipeVersion=?, ()) => new({recipeVersion, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRuleset = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata tags to apply to the ruleset.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>A list of rules that are defined with the ruleset. A rule includes 
            one or more checks to be validated on a DataBrew dataset.</p>")
    @as("Rules")
    rules: ruleList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a resource (dataset) that the 
            ruleset is associated with.</p>")
    @as("TargetArn")
    targetArn: arn,
    @ocaml.doc("<p>The description of the ruleset.</p>") @as("Description")
    description: option<rulesetDescription>,
    @ocaml.doc("<p>The name of the ruleset to be created. Valid characters are alphanumeric 
            (A-Z, a-z, 0-9), hyphen (-), period (.), and space.</p>")
    @as("Name")
    name: rulesetName,
  }
  type response = {
    @ocaml.doc("<p>The unique name of the created ruleset.</p>") @as("Name") name: rulesetName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "CreateRulesetCommand"
  let make = (~rules, ~targetArn, ~name, ~tags=?, ~description=?, ()) =>
    new({tags, rules, targetArn, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRecipeJob = {
  type t
  type request = {
    @ocaml.doc("<p>The job's timeout in minutes. A job that attempts to run longer than this timeout
            period ends with a status of <code>TIMEOUT</code>.</p>")
    @as("Timeout")
    timeout: option<timeout>,
    @ocaml.doc("<p>Metadata tags to apply to this job.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
            be assumed when DataBrew runs the job.</p>")
    @as("RoleArn")
    roleArn: arn,
    @as("RecipeReference") recipeReference: option<recipeReference>,
    @ocaml.doc("<p>Either the name of an existing project, or a combination of a recipe and a dataset to
            associate with the recipe.</p>")
    @as("ProjectName")
    projectName: option<projectName>,
    @ocaml.doc("<p>Represents a list of JDBC database output objects which defines the output destination for 
            a DataBrew recipe job to write to. </p>")
    @as("DatabaseOutputs")
    databaseOutputs: option<databaseOutputList>,
    @ocaml.doc(
      "<p>One or more artifacts that represent the Glue Data Catalog output from running the job.</p>"
    )
    @as("DataCatalogOutputs")
    dataCatalogOutputs: option<dataCatalogOutputList>,
    @ocaml.doc("<p>One or more artifacts that represent the output from running the job.</p>")
    @as("Outputs")
    outputs: option<outputList>,
    @ocaml.doc("<p>The maximum number of times to retry the job after a job run fails.</p>")
    @as("MaxRetries")
    maxRetries: option<maxRetries>,
    @ocaml.doc("<p>The maximum number of nodes that DataBrew can consume when the job processes
            data.</p>")
    @as("MaxCapacity")
    maxCapacity: option<maxCapacity>,
    @ocaml.doc("<p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,
            CloudWatch writes one log stream for each job run.</p>")
    @as("LogSubscription")
    logSubscription: option<logSubscription>,
    @ocaml.doc("<p>A unique name for the job. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen
            (-), period (.), and space.</p>")
    @as("Name")
    name: jobName,
    @ocaml.doc("<p>The encryption mode for the job, which can be one of the following:</p>
        <ul>
            <li>
                <p>
                  <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>
            </li>
            <li>
                <p>
                  <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>
            </li>
         </ul>")
    @as("EncryptionMode")
    encryptionMode: option<encryptionMode>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
            job.</p>")
    @as("EncryptionKeyArn")
    encryptionKeyArn: option<encryptionKeyArn>,
    @ocaml.doc("<p>The name of the dataset that this job processes.</p>") @as("DatasetName")
    datasetName: option<datasetName>,
  }
  type response = {
    @ocaml.doc("<p>The name of the job that you created.</p>") @as("Name") name: jobName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "CreateRecipeJobCommand"
  let make = (
    ~roleArn,
    ~name,
    ~timeout=?,
    ~tags=?,
    ~recipeReference=?,
    ~projectName=?,
    ~databaseOutputs=?,
    ~dataCatalogOutputs=?,
    ~outputs=?,
    ~maxRetries=?,
    ~maxCapacity=?,
    ~logSubscription=?,
    ~encryptionMode=?,
    ~encryptionKeyArn=?,
    ~datasetName=?,
    (),
  ) =>
    new({
      timeout,
      tags,
      roleArn,
      recipeReference,
      projectName,
      databaseOutputs,
      dataCatalogOutputs,
      outputs,
      maxRetries,
      maxCapacity,
      logSubscription,
      name,
      encryptionMode,
      encryptionKeyArn,
      datasetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRecipe = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata tags to apply to this recipe.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>An array containing the steps to be performed by the recipe. Each recipe step consists
            of one recipe action and (optionally) an array of condition expressions.</p>")
    @as("Steps")
    steps: recipeStepList,
    @ocaml.doc("<p>A unique name for the recipe. Valid characters are alphanumeric (A-Z, a-z, 0-9),
            hyphen (-), period (.), and space.</p>")
    @as("Name")
    name: recipeName,
    @ocaml.doc("<p>A description for the recipe.</p>") @as("Description")
    description: option<recipeDescription>,
  }
  type response = {
    @ocaml.doc("<p>The name of the recipe that you created.</p>") @as("Name") name: recipeName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "CreateRecipeCommand"
  let make = (~steps, ~name, ~tags=?, ~description=?, ()) => new({tags, steps, name, description})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateDataset = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A set of options that defines how DataBrew interprets an Amazon S3 path of the dataset.</p>"
    )
    @as("PathOptions")
    pathOptions: option<pathOptions>,
    @as("Input") input: input,
    @as("FormatOptions") formatOptions: option<formatOptions>,
    @ocaml.doc(
      "<p>The file format of a dataset that is created from an Amazon S3 file or folder.</p>"
    )
    @as("Format")
    format: option<inputFormat>,
    @ocaml.doc("<p>The name of the dataset to be updated.</p>") @as("Name") name: datasetName,
  }
  type response = {
    @ocaml.doc("<p>The name of the dataset that you updated.</p>") @as("Name") name: datasetName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "UpdateDatasetCommand"
  let make = (~input, ~name, ~pathOptions=?, ~formatOptions=?, ~format=?, ()) =>
    new({pathOptions, input, formatOptions, format, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDataset = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the dataset to be described.</p>") @as("Name") name: datasetName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset.</p>") @as("ResourceArn")
    resourceArn: option<arn>,
    @ocaml.doc("<p>Metadata tags associated with this dataset.</p>") @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>A set of options that defines how DataBrew interprets an Amazon S3 
            path of the dataset.</p>")
    @as("PathOptions")
    pathOptions: option<pathOptions>,
    @ocaml.doc("<p>The location of the data for this dataset, Amazon S3 or the 
            Glue Data Catalog.</p>")
    @as("Source")
    source: option<source>,
    @ocaml.doc("<p>The identifier (user name) of the user who last modified the dataset.</p>")
    @as("LastModifiedBy")
    lastModifiedBy: option<lastModifiedBy>,
    @ocaml.doc("<p>The date and time that the dataset was last modified.</p>")
    @as("LastModifiedDate")
    lastModifiedDate: option<date>,
    @as("Input") input: input,
    @as("FormatOptions") formatOptions: option<formatOptions>,
    @ocaml.doc("<p>The file format of a dataset that is created from an Amazon S3 file 
            or folder.</p>")
    @as("Format")
    format: option<inputFormat>,
    @ocaml.doc("<p>The name of the dataset.</p>") @as("Name") name: datasetName,
    @ocaml.doc("<p>The date and time that the dataset was created.</p>") @as("CreateDate")
    createDate: option<date>,
    @ocaml.doc("<p>The identifier (user name) of the user who created the dataset.</p>")
    @as("CreatedBy")
    createdBy: option<createdBy>,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DescribeDatasetCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDataset = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata tags to apply to this dataset.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc(
      "<p>A set of options that defines how DataBrew interprets an Amazon S3 path of the dataset.</p>"
    )
    @as("PathOptions")
    pathOptions: option<pathOptions>,
    @as("Input") input: input,
    @as("FormatOptions") formatOptions: option<formatOptions>,
    @ocaml.doc(
      "<p>The file format of a dataset that is created from an Amazon S3 file or folder.</p>"
    )
    @as("Format")
    format: option<inputFormat>,
    @ocaml.doc("<p>The name of the dataset to be created. Valid characters are alphanumeric (A-Z, a-z,
            0-9), hyphen (-), period (.), and space.</p>")
    @as("Name")
    name: datasetName,
  }
  type response = {
    @ocaml.doc("<p>The name of the dataset that you created.</p>") @as("Name") name: datasetName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "CreateDatasetCommand"
  let make = (~input, ~name, ~tags=?, ~pathOptions=?, ~formatOptions=?, ~format=?, ()) =>
    new({tags, pathOptions, input, formatOptions, format, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRecipes = {
  type t
  type request = {
    @ocaml.doc("<p>Return only those recipes with a version identifier of <code>LATEST_WORKING</code> or
                <code>LATEST_PUBLISHED</code>. If <code>RecipeVersion</code> is omitted,
                <code>ListRecipes</code> returns all of the <code>LATEST_PUBLISHED</code> recipe
            versions.</p>
        <p>Valid values: <code>LATEST_WORKING</code> | <code>LATEST_PUBLISHED</code>
         </p>")
    @as("RecipeVersion")
    recipeVersion: option<recipeVersion>,
    @ocaml.doc("<p>The token returned by a previous call to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in this request. </p>") @as("MaxResults")
    maxResults: option<maxResults100>,
  }
  type response = {
    @ocaml.doc("<p>A token that you can use in a subsequent call to retrieve the next set of
            results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of recipes that are defined.</p>") @as("Recipes") recipes: recipeList,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "ListRecipesCommand"
  let make = (~recipeVersion=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({recipeVersion, nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRecipeVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the recipe for which to return version information.</p>") @as("Name")
    name: recipeName,
    @ocaml.doc("<p>The token returned by a previous call to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in this request. </p>") @as("MaxResults")
    maxResults: option<maxResults100>,
  }
  type response = {
    @ocaml.doc("<p>A list of versions for the specified recipe.</p>") @as("Recipes")
    recipes: recipeList,
    @ocaml.doc("<p>A token that you can use in a subsequent call to retrieve the next set of
            results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "ListRecipeVersionsCommand"
  let make = (~name, ~nextToken=?, ~maxResults=?, ()) => new({name, nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The name of a project. Using this parameter indicates to return only those jobs that
            are associated with the specified project.</p>")
    @as("ProjectName")
    projectName: option<projectName>,
    @ocaml.doc("<p>A token generated by DataBrew that specifies where to continue pagination if a
            previous request was truncated. To get the next set of pages, pass in the NextToken
            value from the response object of the previous page call. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in this request. </p>") @as("MaxResults")
    maxResults: option<maxResults100>,
    @ocaml.doc("<p>The name of a dataset. Using this parameter indicates to return only those jobs that
            act on the specified dataset.</p>")
    @as("DatasetName")
    datasetName: option<datasetName>,
  }
  type response = {
    @ocaml.doc("<p>A token that you can use in a subsequent call to retrieve the next set of
            results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of jobs that are defined.</p>") @as("Jobs") jobs: jobList,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "ListJobsCommand"
  let make = (~projectName=?, ~nextToken=?, ~maxResults=?, ~datasetName=?, ()) =>
    new({projectName, nextToken, maxResults, datasetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListJobRuns = {
  type t
  type request = {
    @ocaml.doc("<p>The token returned by a previous call to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in this request. </p>") @as("MaxResults")
    maxResults: option<maxResults100>,
    @ocaml.doc("<p>The name of the job.</p>") @as("Name") name: jobName,
  }
  type response = {
    @ocaml.doc("<p>A token that you can use in a subsequent call to retrieve the next set of
            results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of job runs that have occurred for the specified job.</p>") @as("JobRuns")
    jobRuns: jobRunList,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "ListJobRunsCommand"
  let make = (~name, ~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateProfileJob = {
  type t
  type request = {
    @ocaml.doc("<p>Sample configuration for Profile Jobs only. Determines the number of rows on which the
            Profile job will be executed. If a JobSample value is not provided for profile jobs, the
            default value will be used. The default value is CUSTOM_ROWS for the mode parameter and
            20000 for the size parameter.</p>")
    @as("JobSample")
    jobSample: option<jobSample>,
    @ocaml.doc("<p>The job's timeout in minutes. A job that attempts to run longer than this timeout
            period ends with a status of <code>TIMEOUT</code>.</p>")
    @as("Timeout")
    timeout: option<timeout>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
            be assumed when DataBrew runs the job.</p>")
    @as("RoleArn")
    roleArn: arn,
    @ocaml.doc("<p>List of validation configurations that are applied to the profile job.</p>")
    @as("ValidationConfigurations")
    validationConfigurations: option<validationConfigurationList>,
    @as("OutputLocation") outputLocation: s3Location,
    @ocaml.doc("<p>The maximum number of times to retry the job after a job run fails.</p>")
    @as("MaxRetries")
    maxRetries: option<maxRetries>,
    @ocaml.doc("<p>The maximum number of compute nodes that DataBrew can use when the job processes
            data.</p>")
    @as("MaxCapacity")
    maxCapacity: option<maxCapacity>,
    @ocaml.doc("<p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,
            CloudWatch writes one log stream for each job run.</p>")
    @as("LogSubscription")
    logSubscription: option<logSubscription>,
    @ocaml.doc("<p>The name of the job to be updated.</p>") @as("Name") name: jobName,
    @ocaml.doc("<p>The encryption mode for the job, which can be one of the following:</p>
        <ul>
            <li>
                <p>
                  <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>
            </li>
            <li>
                <p>
                  <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon
                    S3.</p>
            </li>
         </ul>")
    @as("EncryptionMode")
    encryptionMode: option<encryptionMode>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
            job.</p>")
    @as("EncryptionKeyArn")
    encryptionKeyArn: option<encryptionKeyArn>,
    @ocaml.doc("<p>Configuration for profile jobs. Used to select columns, do evaluations, 
            and override default parameters of evaluations. When configuration is null, the
            profile job will run with default settings.</p>")
    @as("Configuration")
    configuration: option<profileConfiguration>,
  }
  type response = {
    @ocaml.doc("<p>The name of the job that was updated.</p>") @as("Name") name: jobName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "UpdateProfileJobCommand"
  let make = (
    ~roleArn,
    ~outputLocation,
    ~name,
    ~jobSample=?,
    ~timeout=?,
    ~validationConfigurations=?,
    ~maxRetries=?,
    ~maxCapacity=?,
    ~logSubscription=?,
    ~encryptionMode=?,
    ~encryptionKeyArn=?,
    ~configuration=?,
    (),
  ) =>
    new({
      jobSample,
      timeout,
      roleArn,
      validationConfigurations,
      outputLocation,
      maxRetries,
      maxCapacity,
      logSubscription,
      name,
      encryptionMode,
      encryptionKeyArn,
      configuration,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDatasets = {
  type t
  type request = {
    @ocaml.doc("<p>The token returned by a previous call to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in this request. </p>") @as("MaxResults")
    maxResults: option<maxResults100>,
  }
  type response = {
    @ocaml.doc("<p>A token that you can use in a subsequent call to retrieve the next set of
            results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of datasets that are defined.</p>") @as("Datasets") datasets: datasetList,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "ListDatasetsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeJobRun = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the job run.</p>") @as("RunId") runId: jobRunId,
    @ocaml.doc("<p>The name of the job being processed during this run.</p>") @as("Name")
    name: jobName,
  }
  type response = {
    @ocaml.doc("<p>Sample configuration for profile jobs only. Determines the number of rows on which the
            profile job will be executed. If a JobSample value is not provided, the default value
            will be used. The default value is CUSTOM_ROWS for the mode parameter and 20000 for the
            size parameter.</p>")
    @as("JobSample")
    jobSample: option<jobSample>,
    @ocaml.doc("<p>The date and time when the job run began.</p>") @as("StartedOn")
    startedOn: option<date>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who started the job run.</p>")
    @as("StartedBy")
    startedBy: option<startedBy>,
    @as("RecipeReference") recipeReference: option<recipeReference>,
    @ocaml.doc("<p>Represents a list of JDBC database output objects which defines the output 
            destination for a DataBrew recipe job to write into.</p>")
    @as("DatabaseOutputs")
    databaseOutputs: option<databaseOutputList>,
    @ocaml.doc(
      "<p>One or more artifacts that represent the Glue Data Catalog output from running the job.</p>"
    )
    @as("DataCatalogOutputs")
    dataCatalogOutputs: option<dataCatalogOutputList>,
    @ocaml.doc("<p>One or more output artifacts from a job run.</p>") @as("Outputs")
    outputs: option<outputList>,
    @ocaml.doc("<p>The name of an Amazon CloudWatch log group, where the job writes diagnostic messages
            when it runs.</p>")
    @as("LogGroupName")
    logGroupName: option<logGroupName>,
    @ocaml.doc("<p>The current status of Amazon CloudWatch logging for the job run.</p>")
    @as("LogSubscription")
    logSubscription: option<logSubscription>,
    @ocaml.doc("<p>The current state of the job run entity itself.</p>") @as("State")
    state: option<jobRunState>,
    @ocaml.doc("<p>The unique identifier of the job run.</p>") @as("RunId") runId: option<jobRunId>,
    @ocaml.doc("<p>List of validation configurations that are applied to the profile job.</p>")
    @as("ValidationConfigurations")
    validationConfigurations: option<validationConfigurationList>,
    @ocaml.doc("<p>Configuration for profile jobs. Used to select columns, do evaluations, 
            and override default parameters of evaluations. When configuration is null, the
            profile job will run with default settings.</p>")
    @as("ProfileConfiguration")
    profileConfiguration: option<profileConfiguration>,
    @ocaml.doc("<p>The name of the job being processed during this run.</p>") @as("JobName")
    jobName: jobName,
    @ocaml.doc(
      "<p>The amount of time, in seconds, during which the job run consumed resources.</p>"
    )
    @as("ExecutionTime")
    executionTime: option<executionTime>,
    @ocaml.doc(
      "<p>A message indicating an error (if any) that was encountered when the job ran.</p>"
    )
    @as("ErrorMessage")
    errorMessage: option<jobRunErrorMessage>,
    @ocaml.doc("<p>The name of the dataset for the job to process.</p>") @as("DatasetName")
    datasetName: option<datasetName>,
    @ocaml.doc("<p>The date and time when the job completed processing.</p>") @as("CompletedOn")
    completedOn: option<date>,
    @ocaml.doc("<p>The number of times that DataBrew has attempted to run the job.</p>")
    @as("Attempt")
    attempt: option<attempt>,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DescribeJobRunCommand"
  let make = (~runId, ~name, ()) => new({runId, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeJob = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the job to be described.</p>") @as("Name") name: jobName,
  }
  type response = {
    @ocaml.doc("<p>Sample configuration for profile jobs only. Determines the number of rows on which the
            profile job will be executed.</p>")
    @as("JobSample")
    jobSample: option<jobSample>,
    @ocaml.doc("<p>The job's timeout in minutes. A job that attempts to run longer than this timeout
            period ends with a status of <code>TIMEOUT</code>.</p>")
    @as("Timeout")
    timeout: option<timeout>,
    @ocaml.doc("<p>Metadata tags associated with this job.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The ARN of the Identity and Access Management (IAM) role to be assumed when
            DataBrew runs the job.</p>")
    @as("RoleArn")
    roleArn: option<arn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the job.</p>") @as("ResourceArn")
    resourceArn: option<arn>,
    @as("RecipeReference") recipeReference: option<recipeReference>,
    @ocaml.doc("<p>List of validation configurations that are applied to the profile job.</p>")
    @as("ValidationConfigurations")
    validationConfigurations: option<validationConfigurationList>,
    @ocaml.doc("<p>Configuration for profile jobs. Used to select columns, do evaluations, 
            and override default parameters of evaluations. When configuration is null, the
            profile job will run with default settings.</p>")
    @as("ProfileConfiguration")
    profileConfiguration: option<profileConfiguration>,
    @ocaml.doc("<p>The DataBrew project associated with this job.</p>") @as("ProjectName")
    projectName: option<projectName>,
    @ocaml.doc("<p>Represents a list of JDBC database output objects which defines the output 
            destination for a DataBrew recipe job to write into.</p>")
    @as("DatabaseOutputs")
    databaseOutputs: option<databaseOutputList>,
    @ocaml.doc(
      "<p>One or more artifacts that represent the Glue Data Catalog output from running the job.</p>"
    )
    @as("DataCatalogOutputs")
    dataCatalogOutputs: option<dataCatalogOutputList>,
    @ocaml.doc("<p>One or more artifacts that represent the output from running the job.</p>")
    @as("Outputs")
    outputs: option<outputList>,
    @ocaml.doc("<p>The maximum number of times to retry the job after a job run fails.</p>")
    @as("MaxRetries")
    maxRetries: option<maxRetries>,
    @ocaml.doc("<p>The maximum number of compute nodes that DataBrew can consume when the job processes
            data.</p>")
    @as("MaxCapacity")
    maxCapacity: option<maxCapacity>,
    @ocaml.doc("<p>Indicates whether Amazon CloudWatch logging is enabled for this job.</p>")
    @as("LogSubscription")
    logSubscription: option<logSubscription>,
    @ocaml.doc("<p>The date and time that the job was last modified.</p>") @as("LastModifiedDate")
    lastModifiedDate: option<date>,
    @ocaml.doc("<p>The identifier (user name) of the user who last modified the job.</p>")
    @as("LastModifiedBy")
    lastModifiedBy: option<lastModifiedBy>,
    @ocaml.doc("<p>The job type, which must be one of the following:</p>
        <ul>
            <li>
                <p>
                  <code>PROFILE</code> - The job analyzes the dataset to determine its size,
                    data types, data distribution, and more.</p>
            </li>
            <li>
                <p>
                  <code>RECIPE</code> - The job applies one or more transformations to a
                    dataset.</p>
            </li>
         </ul>")
    @as("Type")
    type_: option<jobType>,
    @ocaml.doc("<p>The name of the job.</p>") @as("Name") name: jobName,
    @ocaml.doc("<p>The encryption mode for the job, which can be one of the following:</p>
        <ul>
            <li>
                <p>
                  <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>
            </li>
            <li>
                <p>
                  <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon
                    S3.</p>
            </li>
         </ul>")
    @as("EncryptionMode")
    encryptionMode: option<encryptionMode>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
            job.</p>")
    @as("EncryptionKeyArn")
    encryptionKeyArn: option<encryptionKeyArn>,
    @ocaml.doc("<p>The dataset that the job acts upon.</p>") @as("DatasetName")
    datasetName: option<datasetName>,
    @ocaml.doc(
      "<p>The identifier (user name) of the user associated with the creation of the job.</p>"
    )
    @as("CreatedBy")
    createdBy: option<createdBy>,
    @ocaml.doc("<p>The date and time that the job was created.</p>") @as("CreateDate")
    createDate: option<date>,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "DescribeJobCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateProfileJob = {
  type t
  type request = {
    @ocaml.doc("<p>Sample configuration for profile jobs only. Determines the number of rows on which the
            profile job will be executed. If a JobSample value is not provided, the default value
            will be used. The default value is CUSTOM_ROWS for the mode parameter and 20000 for the
            size parameter.</p>")
    @as("JobSample")
    jobSample: option<jobSample>,
    @ocaml.doc("<p>The job's timeout in minutes. A job that attempts to run longer than this timeout
            period ends with a status of <code>TIMEOUT</code>.</p>")
    @as("Timeout")
    timeout: option<timeout>,
    @ocaml.doc("<p>Metadata tags to apply to this job.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
            be assumed when DataBrew runs the job.</p>")
    @as("RoleArn")
    roleArn: arn,
    @ocaml.doc("<p>List of validation configurations that are applied to the profile job.</p>")
    @as("ValidationConfigurations")
    validationConfigurations: option<validationConfigurationList>,
    @ocaml.doc("<p>Configuration for profile jobs. Used to select columns, do evaluations, 
            and override default parameters of evaluations. When configuration is null, the
            profile job will run with default settings.</p>")
    @as("Configuration")
    configuration: option<profileConfiguration>,
    @as("OutputLocation") outputLocation: s3Location,
    @ocaml.doc("<p>The maximum number of times to retry the job after a job run fails.</p>")
    @as("MaxRetries")
    maxRetries: option<maxRetries>,
    @ocaml.doc(
      "<p>The maximum number of nodes that DataBrew can use when the job processes data.</p>"
    )
    @as("MaxCapacity")
    maxCapacity: option<maxCapacity>,
    @ocaml.doc("<p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,
            CloudWatch writes one log stream for each job run.</p>")
    @as("LogSubscription")
    logSubscription: option<logSubscription>,
    @ocaml.doc("<p>The name of the job to be created. Valid characters are alphanumeric (A-Z, a-z, 0-9),
            hyphen (-), period (.), and space.</p>")
    @as("Name")
    name: jobName,
    @ocaml.doc("<p>The encryption mode for the job, which can be one of the following:</p>
        <ul>
            <li>
                <p>
                  <code>SSE-KMS</code> - <code>SSE-KMS</code> - Server-side encryption with 
                    KMS-managed keys.</p>
            </li>
            <li>
                <p>
                  <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>
            </li>
         </ul>")
    @as("EncryptionMode")
    encryptionMode: option<encryptionMode>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
            job.</p>")
    @as("EncryptionKeyArn")
    encryptionKeyArn: option<encryptionKeyArn>,
    @ocaml.doc("<p>The name of the dataset that this job is to act upon.</p>") @as("DatasetName")
    datasetName: datasetName,
  }
  type response = {
    @ocaml.doc("<p>The name of the job that was created.</p>") @as("Name") name: jobName,
  }
  @module("@aws-sdk/client-databrew") @new external new: request => t = "CreateProfileJobCommand"
  let make = (
    ~roleArn,
    ~outputLocation,
    ~name,
    ~datasetName,
    ~jobSample=?,
    ~timeout=?,
    ~tags=?,
    ~validationConfigurations=?,
    ~configuration=?,
    ~maxRetries=?,
    ~maxCapacity=?,
    ~logSubscription=?,
    ~encryptionMode=?,
    ~encryptionKeyArn=?,
    (),
  ) =>
    new({
      jobSample,
      timeout,
      tags,
      roleArn,
      validationConfigurations,
      configuration,
      outputLocation,
      maxRetries,
      maxCapacity,
      logSubscription,
      name,
      encryptionMode,
      encryptionKeyArn,
      datasetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
