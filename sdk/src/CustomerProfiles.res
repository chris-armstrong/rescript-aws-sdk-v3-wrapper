type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-profile") @new
external createClient: unit => awsServiceClient = "CustomerProfilesClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type uuid = string
type typeName = string
type token = string
type timestamp_ = Js.Date.t
type text = string
type stringifiedJson = string
type stringTo2048 = string
type string1To255 = string
type string1To1000 = string
type string0To255 = string
type string0To1000 = string
type sqsQueueUrl = string
type s3KeyNameCustomerOutputConfig = string
type s3KeyName = string
type s3BucketName = string
type optionalBoolean = bool
type name = string
type message = string
type maxSize100 = int
type matchesNumber = int
type long = float
type expirationDaysInteger = int
type encryptionKey = string
type boolean_ = bool
type zendeskConnectorOperator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("PROJECTION") #PROJECTION
]
type workflowType = [@as("APPFLOW_INTEGRATION") #APPFLOW_INTEGRATION]
type triggerType = [@as("OnDemand") #OnDemand | @as("Event") #Event | @as("Scheduled") #Scheduled]
type timezone = string
type taskType = [
  | @as("Validate") #Validate
  | @as("Truncate") #Truncate
  | @as("Merge") #Merge
  | @as("Mask") #Mask
  | @as("Map") #Map
  | @as("Filter") #Filter
  | @as("Arithmetic") #Arithmetic
]
type tagValue = string
type tagKey = string
type tagArn = string
type status = [
  | @as("CANCELLED") #CANCELLED
  | @as("RETRY") #RETRY
  | @as("SPLIT") #SPLIT
  | @as("FAILED") #FAILED
  | @as("COMPLETE") #COMPLETE
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("NOT_STARTED") #NOT_STARTED
]
type standardIdentifier = [
  | @as("ORDER") #ORDER
  | @as("NEW_ONLY") #NEW_ONLY
  | @as("LOOKUP_ONLY") #LOOKUP_ONLY
  | @as("SECONDARY") #SECONDARY
  | @as("UNIQUE") #UNIQUE
  | @as("CASE") #CASE
  | @as("ASSET") #ASSET
  | @as("PROFILE") #PROFILE
]
type sourceConnectorType = [
  | @as("S3") #S3
  | @as("Servicenow") #Servicenow
  | @as("Zendesk") #Zendesk
  | @as("Marketo") #Marketo
  | @as("Salesforce") #Salesforce
]
type serviceNowConnectorOperator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("NOT_EQUAL_TO") #NOT_EQUAL_TO
  | @as("EQUAL_TO") #EQUAL_TO
  | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO
  | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO
  | @as("BETWEEN") #BETWEEN
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("LESS_THAN") #LESS_THAN
  | @as("CONTAINS") #CONTAINS
  | @as("PROJECTION") #PROJECTION
]
type scheduleOffset = float
type scheduleExpression = string
type salesforceConnectorOperator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("NOT_EQUAL_TO") #NOT_EQUAL_TO
  | @as("EQUAL_TO") #EQUAL_TO
  | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO
  | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO
  | @as("BETWEEN") #BETWEEN
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("CONTAINS") #CONTAINS
  | @as("LESS_THAN") #LESS_THAN
  | @as("PROJECTION") #PROJECTION
]
type s3ConnectorOperator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("NOT_EQUAL_TO") #NOT_EQUAL_TO
  | @as("EQUAL_TO") #EQUAL_TO
  | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO
  | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO
  | @as("BETWEEN") #BETWEEN
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("LESS_THAN") #LESS_THAN
  | @as("PROJECTION") #PROJECTION
]
type roleArn = string
type property = string
type partyType = [@as("OTHER") #OTHER | @as("BUSINESS") #BUSINESS | @as("INDIVIDUAL") #INDIVIDUAL]
type operatorPropertiesKeys = [
  | @as("SUBFIELD_CATEGORY_MAP") #SUBFIELD_CATEGORY_MAP
  | @as("CONCAT_FORMAT") #CONCAT_FORMAT
  | @as("MATH_OPERATION_FIELDS_ORDER") #MATH_OPERATION_FIELDS_ORDER
  | @as("TRUNCATE_LENGTH") #TRUNCATE_LENGTH
  | @as("MASK_LENGTH") #MASK_LENGTH
  | @as("MASK_VALUE") #MASK_VALUE
  | @as("VALIDATION_ACTION") #VALIDATION_ACTION
  | @as("DESTINATION_DATA_TYPE") #DESTINATION_DATA_TYPE
  | @as("SOURCE_DATA_TYPE") #SOURCE_DATA_TYPE
  | @as("LOWER_BOUND") #LOWER_BOUND
  | @as("UPPER_BOUND") #UPPER_BOUND
  | @as("DATA_TYPE") #DATA_TYPE
  | @as("VALUES") #VALUES
  | @as("VALUE") #VALUE
]
type object_ = string
type marketoConnectorOperator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("BETWEEN") #BETWEEN
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("LESS_THAN") #LESS_THAN
  | @as("PROJECTION") #PROJECTION
]
type kmsArn = string
type jobScheduleTime = string
type jobScheduleDayOfTheWeek = [
  | @as("SATURDAY") #SATURDAY
  | @as("FRIDAY") #FRIDAY
  | @as("THURSDAY") #THURSDAY
  | @as("WEDNESDAY") #WEDNESDAY
  | @as("TUESDAY") #TUESDAY
  | @as("MONDAY") #MONDAY
  | @as("SUNDAY") #SUNDAY
]
type identityResolutionJobStatus = [
  | @as("FAILED") #FAILED
  | @as("PARTIAL_SUCCESS") #PARTIAL_SUCCESS
  | @as("COMPLETED") #COMPLETED
  | @as("MERGING") #MERGING
  | @as("FIND_MATCHING") #FIND_MATCHING
  | @as("PREPROCESSING") #PREPROCESSING
  | @as("PENDING") #PENDING
]
type gender = [@as("UNSPECIFIED") #UNSPECIFIED | @as("FEMALE") #FEMALE | @as("MALE") #MALE]
type flowName = string
type flowDescription = string
type fieldContentType = [
  | @as("NAME") #NAME
  | @as("EMAIL_ADDRESS") #EMAIL_ADDRESS
  | @as("PHONE_NUMBER") #PHONE_NUMBER
  | @as("NUMBER") #NUMBER
  | @as("STRING") #STRING
]
type double = float
type destinationField = string
type datetimeTypeFieldName = string
type date = Js.Date.t
type dataPullMode = [@as("Complete") #Complete | @as("Incremental") #Incremental]
type connectorProfileName = string
type conflictResolvingModel = [@as("SOURCE") #SOURCE | @as("RECENCY") #RECENCY]
type bucketPrefix = string
type bucketName = string
type requestValueList = array<string1To255>
@ocaml.doc("<p>The properties that are applied when using Zendesk as a flow source.</p>")
type zendeskSourceProperties = {
  @ocaml.doc("<p>The object specified in the Zendesk flow source.</p>") @as("Object")
  object_: object_,
}
type updateAttributes = Js.Dict.t<string0To255>
@ocaml.doc("<p>Updates associated with the address properties of a customer profile.</p>")
type updateAddress = {
  @ocaml.doc("<p>The postal code of a customer address.</p>") @as("PostalCode")
  postalCode: option<string0To255>,
  @ocaml.doc("<p>The country in which a customer lives.</p>") @as("Country")
  country: option<string0To255>,
  @ocaml.doc("<p>The province in which a customer lives.</p>") @as("Province")
  province: option<string0To255>,
  @ocaml.doc("<p>The state in which a customer lives.</p>") @as("State")
  state: option<string0To255>,
  @ocaml.doc("<p>The county in which a customer lives.</p>") @as("County")
  county: option<string0To255>,
  @ocaml.doc("<p>The city in which a customer lives.</p>") @as("City") city: option<string0To255>,
  @ocaml.doc("<p>The fourth line of a customer address.</p>") @as("Address4")
  address4: option<string0To255>,
  @ocaml.doc("<p>The third line of a customer address.</p>") @as("Address3")
  address3: option<string0To255>,
  @ocaml.doc("<p>The second line of a customer address.</p>") @as("Address2")
  address2: option<string0To255>,
  @ocaml.doc("<p>The first line of a customer address.</p>") @as("Address1")
  address1: option<string0To255>,
}
type taskPropertiesMap = Js.Dict.t<property>
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type standardIdentifierList = array<standardIdentifier>
type sourceFields = array<stringTo2048>
@ocaml.doc("<p>The properties that are applied when ServiceNow is being used as a source.</p>")
type serviceNowSourceProperties = {
  @ocaml.doc("<p>The object specified in the ServiceNow flow source.</p>") @as("Object")
  object_: object_,
}
@ocaml.doc("<p>Specifies the configuration details of a scheduled-trigger flow that you define.
         Currently, these settings only apply to the scheduled-trigger type.</p>")
type scheduledTriggerProperties = {
  @ocaml.doc("<p>Specifies the date range for the records to import from the connector in the first flow
         run.</p>")
  @as("FirstExecutionFrom")
  firstExecutionFrom: option<date>,
  @ocaml.doc("<p>Specifies the optional offset that is added to the time interval for a
         schedule-triggered flow.</p>")
  @as("ScheduleOffset")
  scheduleOffset: option<scheduleOffset>,
  @ocaml.doc("<p>Specifies the time zone used when referring to the date and time of a
         scheduled-triggered flow, such as America/New_York.</p>")
  @as("Timezone")
  timezone: option<timezone>,
  @ocaml.doc("<p>Specifies the scheduled end time for a scheduled-trigger flow.</p>")
  @as("ScheduleEndTime")
  scheduleEndTime: option<date>,
  @ocaml.doc("<p>Specifies the scheduled start time for a scheduled-trigger flow.</p>")
  @as("ScheduleStartTime")
  scheduleStartTime: option<date>,
  @ocaml.doc("<p>Specifies whether a scheduled flow has an incremental data transfer or a complete data
         transfer for each flow run.</p>")
  @as("DataPullMode")
  dataPullMode: option<dataPullMode>,
  @ocaml.doc("<p>The scheduling expression that determines the rate at which the schedule will run, for
         example rate (5 minutes).</p>")
  @as("ScheduleExpression")
  scheduleExpression: scheduleExpression,
}
@ocaml.doc("<p>The properties that are applied when Salesforce is being used as a source.</p>")
type salesforceSourceProperties = {
  @ocaml.doc("<p>Indicates whether Amazon AppFlow includes deleted files in the flow run.</p>")
  @as("IncludeDeletedRecords")
  includeDeletedRecords: option<boolean_>,
  @ocaml.doc("<p>The flag that enables dynamic fetching of new (recently added) fields in the Salesforce
         objects while running a flow.</p>")
  @as("EnableDynamicFieldUpdate")
  enableDynamicFieldUpdate: option<boolean_>,
  @ocaml.doc("<p>The object specified in the Salesforce flow source.</p>") @as("Object")
  object_: object_,
}
@ocaml.doc(
  "<p>The properties that are applied when Amazon S3 is being used as the flow source.</p>"
)
type s3SourceProperties = {
  @ocaml.doc("<p>The object key for the Amazon S3 bucket in which the source files are stored.</p>")
  @as("BucketPrefix")
  bucketPrefix: option<bucketPrefix>,
  @ocaml.doc("<p>The Amazon S3 bucket name where the source files are stored.</p>")
  @as("BucketName")
  bucketName: bucketName,
}
@ocaml.doc("<p>The S3 location where Identity Resolution Jobs write result files.</p>")
type s3ExportingLocation = {
  @ocaml.doc(
    "<p>The S3 key name of the location where Identity Resolution Jobs write result files.</p>"
  )
  @as("S3KeyName")
  s3KeyName: option<s3KeyName>,
  @ocaml.doc(
    "<p>The name of the S3 bucket name where Identity Resolution Jobs write result files.</p>"
  )
  @as("S3BucketName")
  s3BucketName: option<s3BucketName>,
}
@ocaml.doc(
  "<p>Configuration information about the S3 bucket where Identity Resolution Jobs write result files.</p>"
)
type s3ExportingConfig = {
  @ocaml.doc(
    "<p>The S3 key name of the location where Identity Resolution Jobs write result files.</p>"
  )
  @as("S3KeyName")
  s3KeyName: option<s3KeyNameCustomerOutputConfig>,
  @ocaml.doc("<p>The name of the S3 bucket where Identity Resolution Jobs write result files.</p>")
  @as("S3BucketName")
  s3BucketName: s3BucketName,
}
type profileIdToBeMergedList = array<uuid>
type profileIdList = array<uuid>
type objectTypeNames = Js.Dict.t<typeName>
@ocaml.doc("<p>Represents a field in a ProfileObjectType.</p>")
type objectTypeField = {
  @ocaml.doc("<p>The content type of the field. Used for determining equality when searching.</p>")
  @as("ContentType")
  contentType: option<fieldContentType>,
  @ocaml.doc("<p>The location of the data in the standard ProfileObject model. For example:
         _profile.Address.PostalCode.</p>")
  @as("Target")
  target: option<text>,
  @ocaml.doc("<p>A field of a ProfileObject. For example: _source.FirstName, where “_source” is a
         ProfileObjectType of a Zendesk user and “FirstName” is a field in that ObjectType.</p>")
  @as("Source")
  source: option<text>,
}
type matchingAttributes = array<string1To255>
@ocaml.doc("<p>The properties that are applied when Marketo is being used as a source.</p>")
type marketoSourceProperties = {
  @ocaml.doc("<p>The object specified in the Marketo flow source.</p>") @as("Object")
  object_: object_,
}
@ocaml.doc("<p>A workflow in list of workflows.</p>")
type listWorkflowsItem = {
  @ocaml.doc("<p>Last updated timestamp for workflow.</p>") @as("LastUpdatedAt")
  lastUpdatedAt: timestamp_,
  @ocaml.doc("<p>Creation timestamp for workflow.</p>") @as("CreatedAt") createdAt: timestamp_,
  @ocaml.doc("<p>Description for workflow execution status.</p>") @as("StatusDescription")
  statusDescription: string1To255,
  @ocaml.doc("<p>Status of workflow execution.</p>") @as("Status") status: status,
  @ocaml.doc("<p>Unique identifier for the workflow.</p>") @as("WorkflowId")
  workflowId: string1To255,
  @ocaml.doc("<p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>")
  @as("WorkflowType")
  workflowType: workflowType,
}
@ocaml.doc("<p>A ProfileObject in a list of ProfileObjects.</p>")
type listProfileObjectsItem = {
  @ocaml.doc("<p>A JSON representation of a ProfileObject that belongs to a profile.</p>")
  @as("Object")
  object_: option<stringifiedJson>,
  @ocaml.doc("<p>The unique identifier of the ProfileObject generated by the service.</p>")
  @as("ProfileObjectUniqueKey")
  profileObjectUniqueKey: option<string1To255>,
  @ocaml.doc("<p>Specifies the kind of object being added to a profile, such as
         \"Salesforce-Account.\"</p>")
  @as("ObjectTypeName")
  objectTypeName: option<typeName>,
}
@ocaml.doc("<p>A ProfileObjectTypeTemplate in a list of ProfileObjectTypeTemplates.</p>")
type listProfileObjectTypeTemplateItem = {
  @ocaml.doc("<p>The source of the object template.</p>") @as("SourceObject")
  sourceObject: option<name>,
  @ocaml.doc("<p>The name of the source of the object template.</p>") @as("SourceName")
  sourceName: option<name>,
  @ocaml.doc("<p>A unique identifier for the object template.</p>") @as("TemplateId")
  templateId: option<name>,
}
@ocaml.doc("<p>Statistics about the Identity Resolution Job.</p>")
type jobStats = {
  @ocaml.doc("<p>The number of merges completed.</p>") @as("NumberOfMergesDone")
  numberOfMergesDone: option<long>,
  @ocaml.doc("<p>The number of matches found.</p>") @as("NumberOfMatchesFound")
  numberOfMatchesFound: option<long>,
  @ocaml.doc("<p>The number of profiles reviewed.</p>") @as("NumberOfProfilesReviewed")
  numberOfProfilesReviewed: option<long>,
}
@ocaml.doc(
  "<p>The day and time when do you want to start the Identity Resolution Job every week.</p>"
)
type jobSchedule = {
  @ocaml.doc("<p>The time when the Identity Resolution Job should run every week.</p>") @as("Time")
  time: jobScheduleTime,
  @ocaml.doc("<p>The day when the Identity Resolution Job should run every week.</p>")
  @as("DayOfTheWeek")
  dayOfTheWeek: jobScheduleDayOfTheWeek,
}
@ocaml.doc("<p>Specifies the configuration used when importing incremental records from the
         source.</p>")
type incrementalPullConfig = {
  @ocaml.doc("<p>A field that specifies the date time or timestamp field as the criteria to use when
         importing incremental records from the source.</p>")
  @as("DatetimeTypeFieldName")
  datetimeTypeFieldName: option<datetimeTypeFieldName>,
}
type fieldNameList = array<name>
@ocaml.doc("<p>Usage-specific statistics about the domain.</p>")
type domainStats = {
  @ocaml.doc("<p>The total size, in bytes, of all objects in the domain.</p>") @as("TotalSize")
  totalSize: option<long>,
  @ocaml.doc("<p>The total number of objects in domain.</p>") @as("ObjectCount")
  objectCount: option<long>,
  @ocaml.doc("<p>The number of profiles that you are currently paying for in the domain. If you have more
         than 100 objects associated with a single profile, that profile counts as two profiles. If
         you have more than 200 objects, that profile counts as three, and so on.</p>")
  @as("MeteringProfileCount")
  meteringProfileCount: option<long>,
  @ocaml.doc("<p>The total number of profiles currently in the domain.</p>") @as("ProfileCount")
  profileCount: option<long>,
}
@ocaml.doc("<p>The operation to be performed on the provided source fields.</p>")
type connectorOperator = {
  @ocaml.doc("<p>The operation to be performed on the provided Zendesk source fields.</p>")
  @as("Zendesk")
  zendesk: option<zendeskConnectorOperator>,
  @ocaml.doc("<p>The operation to be performed on the provided ServiceNow source fields.</p>")
  @as("ServiceNow")
  serviceNow: option<serviceNowConnectorOperator>,
  @ocaml.doc("<p>The operation to be performed on the provided Salesforce source fields.</p>")
  @as("Salesforce")
  salesforce: option<salesforceConnectorOperator>,
  @ocaml.doc("<p>The operation to be performed on the provided Amazon S3 source fields.</p>")
  @as("S3")
  s3: option<s3ConnectorOperator>,
  @ocaml.doc("<p>The operation to be performed on the provided Marketo source fields.</p>")
  @as("Marketo")
  marketo: option<marketoConnectorOperator>,
}
@ocaml.doc(
  "<p>How the auto-merging process should resolve conflicts between different profiles.</p>"
)
type conflictResolution = {
  @ocaml.doc("<p>The <code>ObjectType</code> name that is used to resolve profile merging conflicts when
         choosing <code>SOURCE</code> as the <code>ConflictResolvingModel</code>.</p>")
  @as("SourceName")
  sourceName: option<string1To255>,
  @ocaml.doc("<p>How the auto-merging process should resolve conflicts between different profiles.</p>
         <ul>
            <li>
               <p>
                  <code>RECENCY</code>: Uses the data that was most recently updated.</p>
            </li>
            <li>
               <p>
                  <code>SOURCE</code>: Uses the data from a specific source. For example, if a
               company has been aquired or two departments have merged, data from the specified
               source is used. If two duplicate profiles are from the same source, then
                  <code>RECENCY</code> is used again.</p>
            </li>
         </ul>")
  @as("ConflictResolvingModel")
  conflictResolvingModel: conflictResolvingModel,
}
@ocaml.doc(
  "<p>Batch defines the boundaries for ingestion for each step in <code>APPFLOW_INTEGRATION</code> workflow. <code>APPFLOW_INTEGRATION</code> workflow splits ingestion based on these boundaries.</p>"
)
type batch = {
  @ocaml.doc("<p>End time of batch to split ingestion.</p>") @as("EndTime") endTime: timestamp_,
  @ocaml.doc("<p>Start time of batch to split ingestion.</p>") @as("StartTime")
  startTime: timestamp_,
}
type attributes = Js.Dict.t<string1To255>
type attributeSourceIdMap = Js.Dict.t<uuid>
@ocaml.doc("<p>Workflow step details for <code>APPFLOW_INTEGRATION</code> workflow.</p>")
type appflowIntegrationWorkflowStep = {
  @ocaml.doc(
    "<p>Last updated timestamp for workflow step for <code>APPFLOW_INTEGRATION</code> workflow.</p>"
  )
  @as("LastUpdatedAt")
  lastUpdatedAt: timestamp_,
  @ocaml.doc(
    "<p>Creation timestamp of workflow step for <code>APPFLOW_INTEGRATION</code> workflow.</p>"
  )
  @as("CreatedAt")
  createdAt: timestamp_,
  @ocaml.doc(
    "<p>End datetime of records pulled in batch during execution of workflow step for <code>APPFLOW_INTEGRATION</code> workflow.</p>"
  )
  @as("BatchRecordsEndTime")
  batchRecordsEndTime: string1To255,
  @ocaml.doc(
    "<p>Start datetime of records pulled in batch during execution of workflow step for <code>APPFLOW_INTEGRATION</code> workflow.</p>"
  )
  @as("BatchRecordsStartTime")
  batchRecordsStartTime: string1To255,
  @ocaml.doc(
    "<p>Total number of records processed during execution of workflow step for <code>APPFLOW_INTEGRATION</code> workflow.</p>"
  )
  @as("RecordsProcessed")
  recordsProcessed: long,
  @ocaml.doc(
    "<p>Message indicating execution of workflow step for <code>APPFLOW_INTEGRATION</code> workflow.</p>"
  )
  @as("ExecutionMessage")
  executionMessage: string1To255,
  @ocaml.doc("<p>Workflow step status for <code>APPFLOW_INTEGRATION</code> workflow.</p>")
  @as("Status")
  status: status,
  @ocaml.doc(
    "<p>Name of the flow created during execution of workflow step. <code>APPFLOW_INTEGRATION</code> workflow type creates an appflow flow during workflow step execution on the customers behalf.</p>"
  )
  @as("FlowName")
  flowName: flowName,
}
@ocaml.doc(
  "<p>Workflow specific execution metrics for <code>APPFLOW_INTEGRATION</code> workflow.</p>"
)
type appflowIntegrationWorkflowMetrics = {
  @ocaml.doc("<p>Total steps in <code>APPFLOW_INTEGRATION</code> workflow.</p>") @as("TotalSteps")
  totalSteps: long,
  @ocaml.doc("<p>Total steps completed in <code>APPFLOW_INTEGRATION</code> workflow.</p>")
  @as("StepsCompleted")
  stepsCompleted: long,
  @ocaml.doc("<p>Number of records processed in <code>APPFLOW_INTEGRATION</code> workflow.</p>")
  @as("RecordsProcessed")
  recordsProcessed: long,
}
@ocaml.doc(
  "<p>Structure holding all <code>APPFLOW_INTEGRATION</code> specific workflow attributes.</p>"
)
type appflowIntegrationWorkflowAttributes = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the IAM role. Customer Profiles assumes this role to create resources on your behalf as part of workflow execution.</p>"
  )
  @as("RoleArn")
  roleArn: option<string1To255>,
  @ocaml.doc("<p>The name of the AppFlow connector profile used for ingestion.</p>")
  @as("ConnectorProfileName")
  connectorProfileName: connectorProfileName,
  @ocaml.doc(
    "<p>Specifies the source connector type, such as Salesforce, ServiceNow, and Marketo. Indicates source of ingestion.</p>"
  )
  @as("SourceConnectorType")
  sourceConnectorType: sourceConnectorType,
}
@ocaml.doc("<p>A generic address associated with the customer that is not mailing, shipping, or
         billing.</p>")
type address = {
  @ocaml.doc("<p>The postal code of a customer address.</p>") @as("PostalCode")
  postalCode: option<string1To255>,
  @ocaml.doc("<p>The country in which a customer lives.</p>") @as("Country")
  country: option<string1To255>,
  @ocaml.doc("<p>The province in which a customer lives.</p>") @as("Province")
  province: option<string1To255>,
  @ocaml.doc("<p>The state in which a customer lives.</p>") @as("State")
  state: option<string1To255>,
  @ocaml.doc("<p>The county in which a customer lives.</p>") @as("County")
  county: option<string1To255>,
  @ocaml.doc("<p>The city in which a customer lives.</p>") @as("City") city: option<string1To255>,
  @ocaml.doc("<p>The fourth line of a customer address.</p>") @as("Address4")
  address4: option<string1To255>,
  @ocaml.doc("<p>The third line of a customer address.</p>") @as("Address3")
  address3: option<string1To255>,
  @ocaml.doc("<p>The second line of a customer address.</p>") @as("Address2")
  address2: option<string1To255>,
  @ocaml.doc("<p>The first line of a customer address.</p>") @as("Address1")
  address1: option<string1To255>,
}
@ocaml.doc("<p>List containing steps in workflow.</p>")
type workflowStepItem = {
  @ocaml.doc(
    "<p>Workflow step information specific to <code>APPFLOW_INTEGRATION</code> workflow.</p>"
  )
  @as("AppflowIntegration")
  appflowIntegration: option<appflowIntegrationWorkflowStep>,
}
@ocaml.doc("<p>Generic object containing workflow execution metrics.</p>")
type workflowMetrics = {
  @ocaml.doc("<p>Workflow execution metrics for <code>APPFLOW_INTEGRATION</code> workflow.</p>")
  @as("AppflowIntegration")
  appflowIntegration: option<appflowIntegrationWorkflowMetrics>,
}
type workflowList = array<listWorkflowsItem>
@ocaml.doc("<p>Structure to hold workflow attributes.</p>")
type workflowAttributes = {
  @ocaml.doc("<p>Workflow attributes specific to <code>APPFLOW_INTEGRATION</code> workflow.</p>")
  @as("AppflowIntegration")
  appflowIntegration: option<appflowIntegrationWorkflowAttributes>,
}
@ocaml.doc("<p>Specifies the configuration details that control the trigger for a flow. Currently,
         these settings only apply to the Scheduled trigger type.</p>")
type triggerProperties = {
  @ocaml.doc(
    "<p>Specifies the configuration details of a schedule-triggered flow that you define.</p>"
  )
  @as("Scheduled")
  scheduled: option<scheduledTriggerProperties>,
}
@ocaml.doc("<p>A class for modeling different type of tasks. Task implementation varies based on the
         TaskType.</p>")
type task = {
  @ocaml.doc("<p>Specifies the particular task implementation that Amazon AppFlow performs.</p>")
  @as("TaskType")
  taskType: taskType,
  @ocaml.doc("<p>A map used to store task-related information. The service looks for particular
         information based on the TaskType.</p>")
  @as("TaskProperties")
  taskProperties: option<taskPropertiesMap>,
  @ocaml.doc("<p>The source fields to which a particular task is applied.</p>") @as("SourceFields")
  sourceFields: sourceFields,
  @ocaml.doc("<p>A field in a destination connector, or a field value against which Amazon AppFlow validates a
         source field.</p>")
  @as("DestinationField")
  destinationField: option<destinationField>,
  @ocaml.doc("<p>The operation to be performed on the provided source fields.</p>")
  @as("ConnectorOperator")
  connectorOperator: option<connectorOperator>,
}
@ocaml.doc("<p>Specifies the information that is required to query a particular Amazon AppFlow connector.
         Customer Profiles supports Salesforce, Zendesk, Marketo, ServiceNow and Amazon S3.</p>")
type sourceConnectorProperties = {
  @ocaml.doc("<p>The properties that are applied when using Zendesk as a flow source.</p>")
  @as("Zendesk")
  zendesk: option<zendeskSourceProperties>,
  @ocaml.doc("<p>The properties that are applied when ServiceNow is being used as a source.</p>")
  @as("ServiceNow")
  serviceNow: option<serviceNowSourceProperties>,
  @ocaml.doc("<p>The properties that are applied when Salesforce is being used as a source.</p>")
  @as("Salesforce")
  salesforce: option<salesforceSourceProperties>,
  @ocaml.doc(
    "<p>The properties that are applied when Amazon S3 is being used as the flow source.</p>"
  )
  @as("S3")
  s3: option<s3SourceProperties>,
  @ocaml.doc("<p>The properties that are applied when Marketo is being used as a source.</p>")
  @as("Marketo")
  marketo: option<marketoSourceProperties>,
}
type profileObjectTypeTemplateList = array<listProfileObjectTypeTemplateItem>
type profileObjectList = array<listProfileObjectsItem>
@ocaml.doc("<p>The standard profile of a customer.</p>")
type profile = {
  @ocaml.doc("<p>A key value pair of attributes of a customer profile.</p>") @as("Attributes")
  attributes: option<attributes>,
  @ocaml.doc("<p>The customer’s billing address.</p>") @as("BillingAddress")
  billingAddress: option<address>,
  @ocaml.doc("<p>The customer’s mailing address.</p>") @as("MailingAddress")
  mailingAddress: option<address>,
  @ocaml.doc("<p>The customer’s shipping address.</p>") @as("ShippingAddress")
  shippingAddress: option<address>,
  @ocaml.doc("<p>A generic address associated with the customer that is not mailing, shipping, or
         billing.</p>")
  @as("Address")
  address: option<address>,
  @ocaml.doc("<p>The customer’s business email address.</p>") @as("BusinessEmailAddress")
  businessEmailAddress: option<string1To255>,
  @ocaml.doc("<p>The customer’s personal email address.</p>") @as("PersonalEmailAddress")
  personalEmailAddress: option<string1To255>,
  @ocaml.doc("<p>The customer’s email address, which has not been specified as a personal or business
         address. </p>")
  @as("EmailAddress")
  emailAddress: option<string1To255>,
  @ocaml.doc("<p>The customer’s home phone number.</p>") @as("BusinessPhoneNumber")
  businessPhoneNumber: option<string1To255>,
  @ocaml.doc("<p>The customer’s home phone number.</p>") @as("HomePhoneNumber")
  homePhoneNumber: option<string1To255>,
  @ocaml.doc("<p>The customer’s mobile phone number.</p>") @as("MobilePhoneNumber")
  mobilePhoneNumber: option<string1To255>,
  @ocaml.doc("<p>The customer's phone number, which has not been specified as a mobile, home, or business
         number.</p>")
  @as("PhoneNumber")
  phoneNumber: option<string1To255>,
  @ocaml.doc("<p>The gender with which the customer identifies. </p>") @as("Gender")
  gender: option<gender>,
  @ocaml.doc("<p>The customer’s birth date. </p>") @as("BirthDate")
  birthDate: option<string1To255>,
  @ocaml.doc("<p>The customer’s last name.</p>") @as("LastName") lastName: option<string1To255>,
  @ocaml.doc("<p>The customer’s middle name.</p>") @as("MiddleName")
  middleName: option<string1To255>,
  @ocaml.doc("<p>The customer’s first name.</p>") @as("FirstName")
  firstName: option<string1To255>,
  @ocaml.doc("<p>The name of the customer’s business.</p>") @as("BusinessName")
  businessName: option<string1To255>,
  @ocaml.doc("<p>The type of profile used to describe the customer.</p>") @as("PartyType")
  partyType: option<partyType>,
  @ocaml.doc("<p>Any additional information relevant to the customer’s profile.</p>")
  @as("AdditionalInformation")
  additionalInformation: option<string1To1000>,
  @ocaml.doc("<p>A unique account number that you have given to the customer.</p>")
  @as("AccountNumber")
  accountNumber: option<string1To255>,
  @ocaml.doc("<p>The unique identifier of a customer profile.</p>") @as("ProfileId")
  profileId: option<uuid>,
}
@ocaml.doc("<p>An object that defines the Key element of a ProfileObject. A Key is a special element
         that can be used to search for a customer profile.</p>")
type objectTypeKey = {
  @ocaml.doc("<p>The reference for the key name of the fields map.</p>") @as("FieldNames")
  fieldNames: option<fieldNameList>,
  @ocaml.doc("<p>The types of keys that a ProfileObject can have. Each ProfileObject can have only 1
         UNIQUE key but multiple PROFILE keys. PROFILE, ASSET, CASE, or ORDER  means that this key can be
         used to tie an object to a PROFILE, ASSET, CASE, or ORDER respectively. UNIQUE means that it can be
         used to uniquely identify an object. If a key a is marked as SECONDARY, it will be used to
         search for profiles after all other PROFILE keys have been searched. A LOOKUP_ONLY key is
         only used to match a profile but is not persisted to be used for searching of the profile.
         A NEW_ONLY key is only used if the profile does not already exist before the object is
         ingested, otherwise it is only used for matching objects to profiles.</p>")
  @as("StandardIdentifiers")
  standardIdentifiers: option<standardIdentifierList>,
}
@ocaml.doc("<p>The filter applied to ListProfileObjects response to include profile objects with the
         specified index values. This filter is only supported for ObjectTypeName _asset, _case and
         _order.</p>")
type objectFilter = {
  @ocaml.doc("<p>A list of key values.</p>") @as("Values") values: requestValueList,
  @ocaml.doc("<p>A searchable identifier of a standard profile object. The predefined keys you can use to
         search for _asset include: _assetId, _assetName, _serialNumber. The predefined keys you can
         use to search for _case include: _caseId. The predefined keys you can use to search for
         _order include: _orderId.</p>")
  @as("KeyName")
  keyName: name,
}
type matchingAttributesList = array<matchingAttributes>
@ocaml.doc("<p>The Match group object.</p>")
type matchItem = {
  @ocaml.doc("<p>A number between 0 and 1 that represents the confidence level of assigning profiles to a
         matching group. A score of 1 likely indicates an exact match.</p>")
  @as("ConfidenceScore")
  confidenceScore: option<double>,
  @ocaml.doc("<p>A list of identifiers for profiles that match.</p>") @as("ProfileIds")
  profileIds: option<profileIdList>,
  @ocaml.doc("<p>The unique identifiers for this group of profiles that match.</p>") @as("MatchId")
  matchId: option<string1To255>,
}
@ocaml.doc("<p>A ProfileObjectType instance.</p>")
type listProfileObjectTypeItem = {
  @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
  @as("Tags")
  tags: option<tagMap>,
  @ocaml.doc("<p>The timestamp of when the domain was most recently edited.</p>")
  @as("LastUpdatedAt")
  lastUpdatedAt: option<timestamp_>,
  @ocaml.doc("<p>The timestamp of when the domain was created.</p>") @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>Description of the profile object type.</p>") @as("Description") description: text,
  @ocaml.doc("<p>The name of the profile object type.</p>") @as("ObjectTypeName")
  objectTypeName: typeName,
}
@ocaml.doc("<p>An integration in list of integrations.</p>")
type listIntegrationItem = {
  @ocaml.doc("<p>Unique identifier for the workflow.</p>") @as("WorkflowId")
  workflowId: option<string1To255>,
  @ocaml.doc("<p>A map in which each key is an event type from an external application such as Segment or Shopify, and each value is an <code>ObjectTypeName</code> (template) used to ingest the event.
It supports the following event types: <code>SegmentIdentify</code>, <code>ShopifyCreateCustomers</code>, <code>ShopifyUpdateCustomers</code>, <code>ShopifyCreateDraftOrders</code>, 
<code>ShopifyUpdateDraftOrders</code>, <code>ShopifyCreateOrders</code>, and <code>ShopifyUpdatedOrders</code>.</p>")
  @as("ObjectTypeNames")
  objectTypeNames: option<objectTypeNames>,
  @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
  @as("Tags")
  tags: option<tagMap>,
  @ocaml.doc("<p>The timestamp of when the domain was most recently edited.</p>")
  @as("LastUpdatedAt")
  lastUpdatedAt: timestamp_,
  @ocaml.doc("<p>The timestamp of when the domain was created.</p>") @as("CreatedAt")
  createdAt: timestamp_,
  @ocaml.doc("<p>The name of the profile object type.</p>") @as("ObjectTypeName")
  objectTypeName: option<typeName>,
  @ocaml.doc("<p>The URI of the S3 bucket or any other type of data source.</p>") @as("Uri")
  uri: string1To255,
  @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
}
@ocaml.doc("<p>An object in a list that represents a domain.</p>")
type listDomainItem = {
  @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
  @as("Tags")
  tags: option<tagMap>,
  @ocaml.doc("<p>The timestamp of when the domain was most recently edited.</p>")
  @as("LastUpdatedAt")
  lastUpdatedAt: timestamp_,
  @ocaml.doc("<p>The timestamp of when the domain was created.</p>") @as("CreatedAt")
  createdAt: timestamp_,
  @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
}
@ocaml.doc("<p>A duplicate customer profile that is to be merged into a main profile. </p>")
type fieldSourceProfileIds = {
  @ocaml.doc("<p>A unique identifier for the attributes field to be merged.</p>") @as("Attributes")
  attributes: option<attributeSourceIdMap>,
  @ocaml.doc("<p>A unique identifier for the billing type field to be merged.</p>")
  @as("BillingAddress")
  billingAddress: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the mailing address field to be merged.</p>")
  @as("MailingAddress")
  mailingAddress: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the shipping address field to be merged.</p>")
  @as("ShippingAddress")
  shippingAddress: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the party type field to be merged.</p>") @as("Address")
  address: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the party type field to be merged.</p>")
  @as("BusinessEmailAddress")
  businessEmailAddress: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the personal email address field to be merged.</p>")
  @as("PersonalEmailAddress")
  personalEmailAddress: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the email address field to be merged.</p>")
  @as("EmailAddress")
  emailAddress: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the business phone number field to be merged.</p>")
  @as("BusinessPhoneNumber")
  businessPhoneNumber: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the home phone number field to be merged.</p>")
  @as("HomePhoneNumber")
  homePhoneNumber: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the mobile phone number field to be merged.</p>")
  @as("MobilePhoneNumber")
  mobilePhoneNumber: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the phone number field to be merged.</p>")
  @as("PhoneNumber")
  phoneNumber: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the gender field to be merged.</p>") @as("Gender")
  gender: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the birthdate field to be merged.</p>") @as("BirthDate")
  birthDate: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the last name field to be merged.</p>") @as("LastName")
  lastName: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the middle name field to be merged.</p>") @as("MiddleName")
  middleName: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the first name field to be merged.</p>") @as("FirstName")
  firstName: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the business name field to be merged.</p>")
  @as("BusinessName")
  businessName: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the party type field to be merged.</p>") @as("PartyType")
  partyType: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the additional information field to be merged.</p>")
  @as("AdditionalInformation")
  additionalInformation: option<uuid>,
  @ocaml.doc("<p>A unique identifier for the account number field to be merged. </p>")
  @as("AccountNumber")
  accountNumber: option<uuid>,
}
type fieldMap = Js.Dict.t<objectTypeField>
@ocaml.doc("<p>The S3 location where Identity Resolution Jobs write result files.</p>")
type exportingLocation = {
  @ocaml.doc(
    "<p>Information about the S3 location where Identity Resolution Jobs write result files.</p>"
  )
  @as("S3Exporting")
  s3Exporting: option<s3ExportingLocation>,
}
@ocaml.doc("<p>Configuration information about the S3 bucket where Identity Resolution Jobs writes result files. </p>
         <note>
            <p>You need to give Customer Profiles service principal write permission to your S3 bucket.
            Otherwise, you'll get an exception in the API response. For an example policy, see
               <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html#customer-profiles-cross-service\">Amazon Connect Customer Profiles cross-service confused deputy prevention</a>. </p>
         </note>")
type exportingConfig = {
  @ocaml.doc("<p>The S3 location where Identity Resolution Jobs write result files.</p>")
  @as("S3Exporting")
  s3Exporting: option<s3ExportingConfig>,
}
type batches = array<batch>
type workflowStepsList = array<workflowStepItem>
@ocaml.doc("<p>The trigger settings that determine how and when Amazon AppFlow runs the specified
         flow.</p>")
type triggerConfig = {
  @ocaml.doc("<p>Specifies the configuration details of a schedule-triggered flow that you define.
         Currently, these settings only apply to the Scheduled trigger type.</p>")
  @as("TriggerProperties")
  triggerProperties: option<triggerProperties>,
  @ocaml.doc("<p>Specifies the type of flow trigger. It can be OnDemand, Scheduled, or Event.</p>")
  @as("TriggerType")
  triggerType: triggerType,
}
type tasks = array<task>
@ocaml.doc("<p>Contains information about the configuration of the source connector used in the
         flow.</p>")
type sourceFlowConfig = {
  @ocaml.doc("<p>Specifies the information that is required to query a particular source
         connector.</p>")
  @as("SourceConnectorProperties")
  sourceConnectorProperties: sourceConnectorProperties,
  @ocaml.doc("<p>Defines the configuration for a scheduled incremental data pull. If a valid
         configuration is provided, the fields specified in the configuration are used when querying
         for the incremental data pull.</p>")
  @as("IncrementalPullConfig")
  incrementalPullConfig: option<incrementalPullConfig>,
  @ocaml.doc("<p>The type of connector, such as Salesforce, Marketo, and so on.</p>")
  @as("ConnectorType")
  connectorType: sourceConnectorType,
  @ocaml.doc("<p>The name of the AppFlow connector profile. This name must be unique for each connector
         profile in the AWS account.</p>")
  @as("ConnectorProfileName")
  connectorProfileName: option<connectorProfileName>,
}
type profileObjectTypeList = array<listProfileObjectTypeItem>
type profileList = array<profile>
type objectTypeKeyList = array<objectTypeKey>
type matchesList = array<matchItem>
type integrationList = array<listIntegrationItem>
@ocaml.doc("<p>Information about the Identity Resolution Job.</p>")
type identityResolutionJob = {
  @ocaml.doc("<p>The error messages that are generated when the Identity Resolution Job runs.</p>")
  @as("Message")
  message: option<stringTo2048>,
  @ocaml.doc("<p>The S3 location where the Identity Resolution Job writes result files.</p>")
  @as("ExportingLocation")
  exportingLocation: option<exportingLocation>,
  @ocaml.doc("<p>Statistics about an Identity Resolution Job.</p>") @as("JobStats")
  jobStats: option<jobStats>,
  @ocaml.doc("<p>The timestamp of when the job was completed.</p>") @as("JobEndTime")
  jobEndTime: option<timestamp_>,
  @ocaml.doc("<p>The timestamp of when the job was started or will be started.</p>")
  @as("JobStartTime")
  jobStartTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the Identity Resolution Job.</p>
         <ul>
            <li>
               <p>
                  <code>PENDING</code>: The Identity Resolution Job is scheduled but has not started yet. If you turn
               off the Identity Resolution feature in your domain, jobs in the <code>PENDING</code> state are
               deleted.</p>
            </li>
            <li>
               <p>
                  <code>PREPROCESSING</code>: The Identity Resolution Job is loading your data.</p>
            </li>
            <li>
               <p>
                  <code>FIND_MATCHING</code>: The Identity Resolution Job is using the machine learning model to
               identify profiles that belong to the same matching group.</p>
            </li>
            <li>
               <p>
                  <code>MERGING</code>: The Identity Resolution Job is merging duplicate profiles.</p>
            </li>
            <li>
               <p>
                  <code>COMPLETED</code>: The Identity Resolution Job completed successfully.</p>
            </li>
            <li>
               <p>
                  <code>PARTIAL_SUCCESS</code>: There's a system error and not all of the data is
               merged. The Identity Resolution Job writes a message indicating the source of the problem.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code>: The Identity Resolution Job did not merge any data. It writes a message
               indicating the source of the problem.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<identityResolutionJobStatus>,
  @ocaml.doc("<p>The unique identifier of the Identity Resolution Job.</p>") @as("JobId")
  jobId: option<uuid>,
  @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: option<name>,
}
type domainList = array<listDomainItem>
@ocaml.doc("<p>The matching criteria to be used during the auto-merging process. </p>")
type consolidation = {
  @ocaml.doc("<p>A list of matching criteria.</p>") @as("MatchingAttributesList")
  matchingAttributesList: matchingAttributesList,
}
type keyMap = Js.Dict.t<objectTypeKeyList>
type identityResolutionJobsList = array<identityResolutionJob>
@ocaml.doc("<p>The configurations that control how Customer Profiles retrieves data from the source,
         Amazon AppFlow. Customer Profiles uses this information to create an AppFlow flow on behalf of
         customers.</p>")
type flowDefinition = {
  @ocaml.doc("<p>The trigger settings that determine how and when the flow runs.</p>")
  @as("TriggerConfig")
  triggerConfig: triggerConfig,
  @ocaml.doc("<p>A list of tasks that Customer Profiles performs while transferring the data in the flow
         run.</p>")
  @as("Tasks")
  tasks: tasks,
  @ocaml.doc("<p>The configuration that controls how Customer Profiles retrieves data from the
         source.</p>")
  @as("SourceFlowConfig")
  sourceFlowConfig: sourceFlowConfig,
  @ocaml.doc(
    "<p>The Amazon Resource Name of the AWS Key Management Service (KMS) key you provide for encryption.</p>"
  )
  @as("KmsArn")
  kmsArn: kmsArn,
  @ocaml.doc("<p>The specified name of the flow. Use underscores (_) or hyphens (-) only. Spaces are not
         allowed.</p>")
  @as("FlowName")
  flowName: flowName,
  @ocaml.doc("<p>A description of the flow you want to create.</p>") @as("Description")
  description: option<flowDescription>,
}
@ocaml.doc("<p>Configuration settings for how to perform the auto-merging of profiles.</p>")
type autoMerging = {
  @ocaml.doc("<p>How the auto-merging process should resolve conflicts between different profiles. For
         example, if Profile A and Profile B have the same <code>FirstName</code> and
            <code>LastName</code> (and that is the matching criteria), which
            <code>EmailAddress</code> should be used? </p>")
  @as("ConflictResolution")
  conflictResolution: option<conflictResolution>,
  @ocaml.doc("<p>A list of matching attributes that represent matching criteria. If two profiles meet at
         least one of the requirements in the matching attributes list, they will be merged.</p>")
  @as("Consolidation")
  consolidation: option<consolidation>,
  @ocaml.doc("<p>The flag that enables the auto-merging of duplicate profiles.</p>") @as("Enabled")
  enabled: optionalBoolean,
}
@ocaml.doc("<p>The flag that enables the matching process of duplicate profiles.</p>")
type matchingResponse = {
  @ocaml.doc("<p>Configuration information for exporting Identity Resolution results, for example, to an S3
         bucket.</p>")
  @as("ExportingConfig")
  exportingConfig: option<exportingConfig>,
  @ocaml.doc("<p>Configuration information about the auto-merging process.</p>") @as("AutoMerging")
  autoMerging: option<autoMerging>,
  @ocaml.doc(
    "<p>The day and time when do you want to start the Identity Resolution Job every week.</p>"
  )
  @as("JobSchedule")
  jobSchedule: option<jobSchedule>,
  @ocaml.doc("<p>The flag that enables the matching process of duplicate profiles.</p>")
  @as("Enabled")
  enabled: option<optionalBoolean>,
}
@ocaml.doc("<p>The flag that enables the matching process of duplicate profiles.</p>")
type matchingRequest = {
  @ocaml.doc("<p>Configuration information for exporting Identity Resolution results, for example, to an S3
         bucket.</p>")
  @as("ExportingConfig")
  exportingConfig: option<exportingConfig>,
  @ocaml.doc("<p>Configuration information about the auto-merging process.</p>") @as("AutoMerging")
  autoMerging: option<autoMerging>,
  @ocaml.doc(
    "<p>The day and time when do you want to start the Identity Resolution Job every week.</p>"
  )
  @as("JobSchedule")
  jobSchedule: option<jobSchedule>,
  @ocaml.doc("<p>The flag that enables the matching process of duplicate profiles.</p>")
  @as("Enabled")
  enabled: optionalBoolean,
}
@ocaml.doc("<p>Details for workflow of type <code>APPFLOW_INTEGRATION</code>.</p>")
type appflowIntegration = {
  @ocaml.doc("<p>Batches in workflow of type <code>APPFLOW_INTEGRATION</code>.</p>") @as("Batches")
  batches: option<batches>,
  @as("FlowDefinition") flowDefinition: flowDefinition,
}
@ocaml.doc("<p>Configuration data for integration workflow.</p>")
type integrationConfig = {
  @ocaml.doc("<p>Configuration data for <code>APPFLOW_INTEGRATION</code> workflow type.</p>")
  @as("AppflowIntegration")
  appflowIntegration: option<appflowIntegration>,
}
@ocaml.doc("<fullname>Amazon Connect Customer Profiles</fullname>
         <p>Welcome to the Amazon Connect Customer Profiles API Reference. This guide provides information
         about the Amazon Connect Customer Profiles API, including supported operations, data types,
         parameters, and schemas.</p>
         <p>Amazon Connect Customer Profiles is a unified customer profile for your contact center that has
         pre-built connectors powered by AppFlow that make it easy to combine customer information
         from third party applications, such as Salesforce (CRM), ServiceNow (ITSM), and your
         enterprise resource planning (ERP), with contact history from your Amazon Connect contact
         center.</p>
         <p>If you're new to Amazon Connect , you might find it helpful to also review the <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/what-is-amazon-connect.html\">Amazon Connect Administrator Guide</a>.</p>")
module PutProfileObject = {
  type t
  type request = {
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
    @ocaml.doc("<p>A string that is serialized from a JSON object.</p>") @as("Object")
    object_: stringifiedJson,
    @ocaml.doc("<p>The name of the profile object type.</p>") @as("ObjectTypeName")
    objectTypeName: typeName,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of the profile object generated by the service.</p>")
    @as("ProfileObjectUniqueKey")
    profileObjectUniqueKey: option<string1To255>,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "PutProfileObjectCommand"
  let make = (~domainName, ~object_, ~objectTypeName, ()) =>
    new({domainName: domainName, object_: object_, objectTypeName: objectTypeName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWorkflow = {
  type t
  type request = {
    @ocaml.doc("<p>Unique identifier for the workflow.</p>") @as("WorkflowId")
    workflowId: string1To255,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {.}
  @module("@aws-sdk/client-profile") @new external new: request => t = "DeleteWorkflowCommand"
  let make = (~workflowId, ~domainName, ()) => new({workflowId: workflowId, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteProfileObjectType = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the profile object type.</p>") @as("ObjectTypeName")
    objectTypeName: typeName,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>A message that indicates the delete request is done.</p>") @as("Message")
    message: message,
  }
  @module("@aws-sdk/client-profile") @new
  external new: request => t = "DeleteProfileObjectTypeCommand"
  let make = (~objectTypeName, ~domainName, ()) =>
    new({objectTypeName: objectTypeName, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProfileObject = {
  type t
  type request = {
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
    @ocaml.doc("<p>The name of the profile object type.</p>") @as("ObjectTypeName")
    objectTypeName: typeName,
    @ocaml.doc("<p>The unique identifier of the profile object generated by the service.</p>")
    @as("ProfileObjectUniqueKey")
    profileObjectUniqueKey: string1To255,
    @ocaml.doc("<p>The unique identifier of a customer profile.</p>") @as("ProfileId")
    profileId: uuid,
  }
  type response = {
    @ocaml.doc("<p>A message that indicates the delete request is done.</p>") @as("Message")
    message: option<message>,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "DeleteProfileObjectCommand"
  let make = (~domainName, ~objectTypeName, ~profileObjectUniqueKey, ~profileId, ()) =>
    new({
      domainName: domainName,
      objectTypeName: objectTypeName,
      profileObjectUniqueKey: profileObjectUniqueKey,
      profileId: profileId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
    @ocaml.doc("<p>The unique identifier of a customer profile.</p>") @as("ProfileId")
    profileId: uuid,
  }
  type response = {
    @ocaml.doc("<p>A message that indicates the delete request is done.</p>") @as("Message")
    message: option<message>,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "DeleteProfileCommand"
  let make = (~domainName, ~profileId, ()) => new({domainName: domainName, profileId: profileId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteIntegration = {
  type t
  type request = {
    @ocaml.doc("<p>The URI of the S3 bucket or any other type of data source.</p>") @as("Uri")
    uri: string1To255,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>A message that indicates the delete request is done.</p>") @as("Message")
    message: message,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "DeleteIntegrationCommand"
  let make = (~uri, ~domainName, ()) => new({uri: uri, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDomain = {
  type t
  type request = {
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>A message that indicates the delete request is done.</p>") @as("Message")
    message: message,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "DeleteDomainCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProfile = {
  type t
  type request = {
    @ocaml.doc("<p>A key value pair of attributes of a customer profile.</p>") @as("Attributes")
    attributes: option<updateAttributes>,
    @ocaml.doc("<p>The customer’s billing address.</p>") @as("BillingAddress")
    billingAddress: option<updateAddress>,
    @ocaml.doc("<p>The customer’s mailing address.</p>") @as("MailingAddress")
    mailingAddress: option<updateAddress>,
    @ocaml.doc("<p>The customer’s shipping address.</p>") @as("ShippingAddress")
    shippingAddress: option<updateAddress>,
    @ocaml.doc("<p>A generic address associated with the customer that is not mailing, shipping, or
         billing.</p>")
    @as("Address")
    address: option<updateAddress>,
    @ocaml.doc("<p>The customer’s business email address.</p>") @as("BusinessEmailAddress")
    businessEmailAddress: option<string0To255>,
    @ocaml.doc("<p>The customer’s personal email address.</p>") @as("PersonalEmailAddress")
    personalEmailAddress: option<string0To255>,
    @ocaml.doc("<p>The customer’s email address, which has not been specified as a personal or business
         address. </p>")
    @as("EmailAddress")
    emailAddress: option<string0To255>,
    @ocaml.doc("<p>The customer’s business phone number.</p>") @as("BusinessPhoneNumber")
    businessPhoneNumber: option<string0To255>,
    @ocaml.doc("<p>The customer’s home phone number.</p>") @as("HomePhoneNumber")
    homePhoneNumber: option<string0To255>,
    @ocaml.doc("<p>The customer’s mobile phone number.</p>") @as("MobilePhoneNumber")
    mobilePhoneNumber: option<string0To255>,
    @ocaml.doc("<p>The customer’s phone number, which has not been specified as a mobile, home, or business
         number. </p>")
    @as("PhoneNumber")
    phoneNumber: option<string0To255>,
    @ocaml.doc("<p>The gender with which the customer identifies. </p>") @as("Gender")
    gender: option<gender>,
    @ocaml.doc("<p>The customer’s birth date. </p>") @as("BirthDate")
    birthDate: option<string0To255>,
    @ocaml.doc("<p>The customer’s last name.</p>") @as("LastName") lastName: option<string0To255>,
    @ocaml.doc("<p>The customer’s middle name.</p>") @as("MiddleName")
    middleName: option<string0To255>,
    @ocaml.doc("<p>The customer’s first name.</p>") @as("FirstName")
    firstName: option<string0To255>,
    @ocaml.doc("<p>The name of the customer’s business.</p>") @as("BusinessName")
    businessName: option<string0To255>,
    @ocaml.doc("<p>The type of profile used to describe the customer.</p>") @as("PartyType")
    partyType: option<partyType>,
    @ocaml.doc("<p>A unique account number that you have given to the customer.</p>")
    @as("AccountNumber")
    accountNumber: option<string0To255>,
    @ocaml.doc("<p>Any additional information relevant to the customer’s profile.</p>")
    @as("AdditionalInformation")
    additionalInformation: option<string0To1000>,
    @ocaml.doc("<p>The unique identifier of a customer profile.</p>") @as("ProfileId")
    profileId: uuid,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of a customer profile.</p>") @as("ProfileId")
    profileId: uuid,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "UpdateProfileCommand"
  let make = (
    ~profileId,
    ~domainName,
    ~attributes=?,
    ~billingAddress=?,
    ~mailingAddress=?,
    ~shippingAddress=?,
    ~address=?,
    ~businessEmailAddress=?,
    ~personalEmailAddress=?,
    ~emailAddress=?,
    ~businessPhoneNumber=?,
    ~homePhoneNumber=?,
    ~mobilePhoneNumber=?,
    ~phoneNumber=?,
    ~gender=?,
    ~birthDate=?,
    ~lastName=?,
    ~middleName=?,
    ~firstName=?,
    ~businessName=?,
    ~partyType=?,
    ~accountNumber=?,
    ~additionalInformation=?,
    (),
  ) =>
    new({
      attributes: attributes,
      billingAddress: billingAddress,
      mailingAddress: mailingAddress,
      shippingAddress: shippingAddress,
      address: address,
      businessEmailAddress: businessEmailAddress,
      personalEmailAddress: personalEmailAddress,
      emailAddress: emailAddress,
      businessPhoneNumber: businessPhoneNumber,
      homePhoneNumber: homePhoneNumber,
      mobilePhoneNumber: mobilePhoneNumber,
      phoneNumber: phoneNumber,
      gender: gender,
      birthDate: birthDate,
      lastName: lastName,
      middleName: middleName,
      firstName: firstName,
      businessName: businessName,
      partyType: partyType,
      accountNumber: accountNumber,
      additionalInformation: additionalInformation,
      profileId: profileId,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tag keys to remove from the resource.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the resource from which you are removing tags.</p>")
    resourceArn: tagArn,
  }
  type response = {.}
  @module("@aws-sdk/client-profile") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    tags: tagMap,
    @ocaml.doc("<p>The ARN of the resource that you're adding tags to.</p>") resourceArn: tagArn,
  }
  type response = {.}
  @module("@aws-sdk/client-profile") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource for which you want to view tags.</p>")
    resourceArn: tagArn,
  }
  type response = {
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIntegration = {
  type t
  type request = {
    @ocaml.doc("<p>The URI of the S3 bucket or any other type of data source.</p>") @as("Uri")
    uri: string1To255,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>Unique identifier for the workflow.</p>") @as("WorkflowId")
    workflowId: option<string1To255>,
    @ocaml.doc("<p>A map in which each key is an event type from an external application such as Segment or Shopify, and each value is an <code>ObjectTypeName</code> (template) used to ingest the event.
It supports the following event types: <code>SegmentIdentify</code>, <code>ShopifyCreateCustomers</code>, <code>ShopifyUpdateCustomers</code>, <code>ShopifyCreateDraftOrders</code>, 
<code>ShopifyUpdateDraftOrders</code>, <code>ShopifyCreateOrders</code>, and <code>ShopifyUpdatedOrders</code>.</p>")
    @as("ObjectTypeNames")
    objectTypeNames: option<objectTypeNames>,
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The timestamp of when the domain was most recently edited.</p>")
    @as("LastUpdatedAt")
    lastUpdatedAt: timestamp_,
    @ocaml.doc("<p>The timestamp of when the domain was created.</p>") @as("CreatedAt")
    createdAt: timestamp_,
    @ocaml.doc("<p>The name of the profile object type.</p>") @as("ObjectTypeName")
    objectTypeName: option<typeName>,
    @ocaml.doc("<p>The URI of the S3 bucket or any other type of data source.</p>") @as("Uri")
    uri: string1To255,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "GetIntegrationCommand"
  let make = (~uri, ~domainName, ()) => new({uri: uri, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProfileKey = {
  type t
  type request = {
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
    @ocaml.doc("<p>A list of key values.</p>") @as("Values") values: requestValueList,
    @ocaml.doc("<p>A searchable identifier of a customer profile.</p>") @as("KeyName")
    keyName: name,
    @ocaml.doc("<p>The unique identifier of a customer profile.</p>") @as("ProfileId")
    profileId: uuid,
  }
  type response = {
    @ocaml.doc("<p>A message that indicates the delete request is done.</p>") @as("Message")
    message: option<message>,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "DeleteProfileKeyCommand"
  let make = (~domainName, ~values, ~keyName, ~profileId, ()) =>
    new({domainName: domainName, values: values, keyName: keyName, profileId: profileId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProfile = {
  type t
  type request = {
    @ocaml.doc("<p>A key value pair of attributes of a customer profile.</p>") @as("Attributes")
    attributes: option<attributes>,
    @ocaml.doc("<p>The customer’s billing address.</p>") @as("BillingAddress")
    billingAddress: option<address>,
    @ocaml.doc("<p>The customer’s mailing address.</p>") @as("MailingAddress")
    mailingAddress: option<address>,
    @ocaml.doc("<p>The customer’s shipping address.</p>") @as("ShippingAddress")
    shippingAddress: option<address>,
    @ocaml.doc("<p>A generic address associated with the customer that is not mailing, shipping, or
         billing.</p>")
    @as("Address")
    address: option<address>,
    @ocaml.doc("<p>The customer’s business email address.</p>") @as("BusinessEmailAddress")
    businessEmailAddress: option<string1To255>,
    @ocaml.doc("<p>The customer’s personal email address.</p>") @as("PersonalEmailAddress")
    personalEmailAddress: option<string1To255>,
    @ocaml.doc("<p>The customer’s email address, which has not been specified as a personal or business
         address. </p>")
    @as("EmailAddress")
    emailAddress: option<string1To255>,
    @ocaml.doc("<p>The customer’s business phone number.</p>") @as("BusinessPhoneNumber")
    businessPhoneNumber: option<string1To255>,
    @ocaml.doc("<p>The customer’s home phone number.</p>") @as("HomePhoneNumber")
    homePhoneNumber: option<string1To255>,
    @ocaml.doc("<p>The customer’s mobile phone number.</p>") @as("MobilePhoneNumber")
    mobilePhoneNumber: option<string1To255>,
    @ocaml.doc("<p>The customer’s phone number, which has not been specified as a mobile, home, or business
         number. </p>")
    @as("PhoneNumber")
    phoneNumber: option<string1To255>,
    @ocaml.doc("<p>The gender with which the customer identifies. </p>") @as("Gender")
    gender: option<gender>,
    @ocaml.doc("<p>The customer’s birth date. </p>") @as("BirthDate")
    birthDate: option<string1To255>,
    @ocaml.doc("<p>The customer’s last name.</p>") @as("LastName") lastName: option<string1To255>,
    @ocaml.doc("<p>The customer’s middle name.</p>") @as("MiddleName")
    middleName: option<string1To255>,
    @ocaml.doc("<p>The customer’s first name.</p>") @as("FirstName")
    firstName: option<string1To255>,
    @ocaml.doc("<p>The name of the customer’s business.</p>") @as("BusinessName")
    businessName: option<string1To255>,
    @ocaml.doc("<p>The type of profile used to describe the customer.</p>") @as("PartyType")
    partyType: option<partyType>,
    @ocaml.doc("<p>Any additional information relevant to the customer’s profile.</p>")
    @as("AdditionalInformation")
    additionalInformation: option<string1To1000>,
    @ocaml.doc("<p>A unique account number that you have given to the customer.</p>")
    @as("AccountNumber")
    accountNumber: option<string1To255>,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of a customer profile.</p>") @as("ProfileId")
    profileId: uuid,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "CreateProfileCommand"
  let make = (
    ~domainName,
    ~attributes=?,
    ~billingAddress=?,
    ~mailingAddress=?,
    ~shippingAddress=?,
    ~address=?,
    ~businessEmailAddress=?,
    ~personalEmailAddress=?,
    ~emailAddress=?,
    ~businessPhoneNumber=?,
    ~homePhoneNumber=?,
    ~mobilePhoneNumber=?,
    ~phoneNumber=?,
    ~gender=?,
    ~birthDate=?,
    ~lastName=?,
    ~middleName=?,
    ~firstName=?,
    ~businessName=?,
    ~partyType=?,
    ~additionalInformation=?,
    ~accountNumber=?,
    (),
  ) =>
    new({
      attributes: attributes,
      billingAddress: billingAddress,
      mailingAddress: mailingAddress,
      shippingAddress: shippingAddress,
      address: address,
      businessEmailAddress: businessEmailAddress,
      personalEmailAddress: personalEmailAddress,
      emailAddress: emailAddress,
      businessPhoneNumber: businessPhoneNumber,
      homePhoneNumber: homePhoneNumber,
      mobilePhoneNumber: mobilePhoneNumber,
      phoneNumber: phoneNumber,
      gender: gender,
      birthDate: birthDate,
      lastName: lastName,
      middleName: middleName,
      firstName: firstName,
      businessName: businessName,
      partyType: partyType,
      additionalInformation: additionalInformation,
      accountNumber: accountNumber,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddProfileKey = {
  type t
  type request = {
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
    @ocaml.doc("<p>A list of key values.</p>") @as("Values") values: requestValueList,
    @ocaml.doc("<p>A searchable identifier of a customer profile.</p>") @as("KeyName")
    keyName: name,
    @ocaml.doc("<p>The unique identifier of a customer profile.</p>") @as("ProfileId")
    profileId: uuid,
  }
  type response = {
    @ocaml.doc("<p>A list of key values.</p>") @as("Values") values: option<requestValueList>,
    @ocaml.doc("<p>A searchable identifier of a customer profile.</p>") @as("KeyName")
    keyName: option<name>,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "AddProfileKeyCommand"
  let make = (~domainName, ~values, ~keyName, ~profileId, ()) =>
    new({domainName: domainName, values: values, keyName: keyName, profileId: profileId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module MergeProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>The identifiers of the fields in the profile that has the information you want to apply
         to the merge. For example, say you want to merge EmailAddress from Profile1 into
         MainProfile. This would be the identifier of the EmailAddress field in Profile1. </p>")
    @as("FieldSourceProfileIds")
    fieldSourceProfileIds: option<fieldSourceProfileIds>,
    @ocaml.doc("<p>The identifier of the profile to be merged into MainProfileId.</p>")
    @as("ProfileIdsToBeMerged")
    profileIdsToBeMerged: profileIdToBeMergedList,
    @ocaml.doc("<p>The identifier of the profile to be taken.</p>") @as("MainProfileId")
    mainProfileId: uuid,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>A message that indicates the merge request is complete.</p>") @as("Message")
    message: option<message>,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "MergeProfilesCommand"
  let make = (~profileIdsToBeMerged, ~mainProfileId, ~domainName, ~fieldSourceProfileIds=?, ()) =>
    new({
      fieldSourceProfileIds: fieldSourceProfileIds,
      profileIdsToBeMerged: profileIdsToBeMerged,
      mainProfileId: mainProfileId,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorkflows = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>Retrieve workflows ended after timestamp.</p>") @as("QueryEndDate")
    queryEndDate: option<timestamp_>,
    @ocaml.doc("<p>Retrieve workflows started after timestamp.</p>") @as("QueryStartDate")
    queryStartDate: option<timestamp_>,
    @ocaml.doc("<p>Status of workflow execution.</p>") @as("Status") status: option<status>,
    @ocaml.doc("<p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>")
    @as("WorkflowType")
    workflowType: option<workflowType>,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>List containing workflow details.</p>") @as("Items") items: option<workflowList>,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "ListWorkflowsCommand"
  let make = (
    ~domainName,
    ~maxResults=?,
    ~nextToken=?,
    ~queryEndDate=?,
    ~queryStartDate=?,
    ~status=?,
    ~workflowType=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      queryEndDate: queryEndDate,
      queryStartDate: queryStartDate,
      status: status,
      workflowType: workflowType,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProfileObjects = {
  type t
  type request = {
    @ocaml.doc("<p>Applies a filter to the response to include profile objects with the specified index
         values. This filter is only supported for ObjectTypeName _asset, _case and _order.</p>")
    @as("ObjectFilter")
    objectFilter: option<objectFilter>,
    @ocaml.doc("<p>The unique identifier of a customer profile.</p>") @as("ProfileId")
    profileId: uuid,
    @ocaml.doc("<p>The name of the profile object type.</p>") @as("ObjectTypeName")
    objectTypeName: typeName,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
    @ocaml.doc("<p>The maximum number of objects returned per page.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>The pagination token from the previous call to ListProfileObjects.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token from the previous call to ListProfileObjects.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The list of ListProfileObject instances.</p>") @as("Items")
    items: option<profileObjectList>,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "ListProfileObjectsCommand"
  let make = (
    ~profileId,
    ~objectTypeName,
    ~domainName,
    ~objectFilter=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      objectFilter: objectFilter,
      profileId: profileId,
      objectTypeName: objectTypeName,
      domainName: domainName,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProfileObjectTypeTemplates = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects returned per page.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>The pagination token from the previous ListObjectTypeTemplates API call.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token from the previous ListObjectTypeTemplates API call. </p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The list of ListProfileObjectType template instances.</p>") @as("Items")
    items: option<profileObjectTypeTemplateList>,
  }
  @module("@aws-sdk/client-profile") @new
  external new: request => t = "ListProfileObjectTypeTemplatesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWorkflow = {
  type t
  type request = {
    @ocaml.doc("<p>Unique identifier for the workflow.</p>") @as("WorkflowId") workflowId: uuid,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>Workflow specific execution metrics.</p>") @as("Metrics")
    metrics: option<workflowMetrics>,
    @ocaml.doc("<p>Attributes provided for workflow execution.</p>") @as("Attributes")
    attributes: option<workflowAttributes>,
    @ocaml.doc("<p>The timestamp that represents when workflow execution last updated.</p>")
    @as("LastUpdatedAt")
    lastUpdatedAt: option<timestamp_>,
    @ocaml.doc("<p>The timestamp that represents when workflow execution started.</p>")
    @as("StartDate")
    startDate: option<timestamp_>,
    @ocaml.doc("<p>Workflow error messages during execution (if any).</p>") @as("ErrorDescription")
    errorDescription: option<string1To255>,
    @ocaml.doc("<p>Status of workflow execution.</p>") @as("Status") status: option<status>,
    @ocaml.doc("<p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>")
    @as("WorkflowType")
    workflowType: option<workflowType>,
    @ocaml.doc("<p>Unique identifier for the workflow.</p>") @as("WorkflowId")
    workflowId: option<uuid>,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "GetWorkflowCommand"
  let make = (~workflowId, ~domainName, ()) => new({workflowId: workflowId, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key values.</p>") @as("Values") values: requestValueList,
    @ocaml.doc("<p>A searchable identifier of a customer profile. The predefined keys you can use
         to search include: _account, _profileId, _assetId, _caseId, _orderId, _fullName, _phone,
         _email, _ctrContactId, _marketoLeadId, _salesforceAccountId, _salesforceContactId,
         _salesforceAssetId, _zendeskUserId, _zendeskExternalId, _zendeskTicketId,
         _serviceNowSystemId, _serviceNowIncidentId, _segmentUserId, _shopifyCustomerId,
         _shopifyOrderId.</p>")
    @as("KeyName")
    keyName: name,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
    @ocaml.doc("<p>The maximum number of objects returned per page.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>The pagination token from the previous SearchProfiles API call.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token from the previous SearchProfiles API call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The list of SearchProfiles instances.</p>") @as("Items")
    items: option<profileList>,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "SearchProfilesCommand"
  let make = (~values, ~keyName, ~domainName, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      values: values,
      keyName: keyName,
      domainName: domainName,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProfileObjectTypes = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects returned per page.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The list of ListProfileObjectTypes instances.</p>") @as("Items")
    items: option<profileObjectTypeList>,
  }
  @module("@aws-sdk/client-profile") @new
  external new: request => t = "ListProfileObjectTypesCommand"
  let make = (~domainName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIntegrations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Boolean to indicate if hidden integration should be returned. Defaults to <code>False</code>.</p>"
    )
    @as("IncludeHidden")
    includeHidden: option<optionalBoolean>,
    @ocaml.doc("<p>The maximum number of objects returned per page.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>The pagination token from the previous ListIntegrations API call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>The pagination token from the previous ListIntegrations API call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The list of ListIntegrations instances.</p>") @as("Items")
    items: option<integrationList>,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "ListIntegrationsCommand"
  let make = (~domainName, ~includeHidden=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      includeHidden: includeHidden,
      maxResults: maxResults,
      nextToken: nextToken,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDomains = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects returned per page.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>The pagination token from the previous ListDomain API call.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token from the previous ListDomains API call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The list of ListDomains instances.</p>") @as("Items") items: option<domainList>,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "ListDomainsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccountIntegrations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Boolean to indicate if hidden integration should be returned. Defaults to <code>False</code>.</p>"
    )
    @as("IncludeHidden")
    includeHidden: option<optionalBoolean>,
    @ocaml.doc("<p>The maximum number of objects returned per page.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>The pagination token from the previous ListAccountIntegrations API call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The URI of the S3 bucket or any other type of data source.</p>") @as("Uri")
    uri: string1To255,
  }
  type response = {
    @ocaml.doc("<p>The pagination token from the previous ListAccountIntegrations API call.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The list of ListAccountIntegration instances.</p>") @as("Items")
    items: option<integrationList>,
  }
  @module("@aws-sdk/client-profile") @new
  external new: request => t = "ListAccountIntegrationsCommand"
  let make = (~uri, ~includeHidden=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({includeHidden: includeHidden, maxResults: maxResults, nextToken: nextToken, uri: uri})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWorkflowSteps = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>Unique identifier for the workflow.</p>") @as("WorkflowId") workflowId: uuid,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>List containing workflow step details.</p>") @as("Items")
    items: option<workflowStepsList>,
    @ocaml.doc("<p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>")
    @as("WorkflowType")
    workflowType: option<workflowType>,
    @ocaml.doc("<p>Unique identifier for the workflow.</p>") @as("WorkflowId")
    workflowId: option<uuid>,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "GetWorkflowStepsCommand"
  let make = (~workflowId, ~domainName, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      workflowId: workflowId,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMatches = {
  type t
  type request = {
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>The list of matched profiles for this instance.</p>") @as("Matches")
    matches: option<matchesList>,
    @ocaml.doc("<p>The number of potential matches found.</p>") @as("PotentialMatches")
    potentialMatches: option<matchesNumber>,
    @ocaml.doc("<p>The timestamp this version of Match Result generated.</p>")
    @as("MatchGenerationDate")
    matchGenerationDate: option<timestamp_>,
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<token>,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "GetMatchesCommand"
  let make = (~domainName, ~maxResults=?, ~nextToken=?, ()) =>
    new({domainName: domainName, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAutoMergingPreview = {
  type t
  type request = {
    @ocaml.doc(
      "<p>How the auto-merging process should resolve conflicts between different profiles.</p>"
    )
    @as("ConflictResolution")
    conflictResolution: conflictResolution,
    @ocaml.doc("<p>A list of matching attributes that represent matching criteria.</p>")
    @as("Consolidation")
    consolidation: consolidation,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc(
      "<p>The number of profiles that would be merged if this wasn't a preview dry run.</p>"
    )
    @as("NumberOfProfilesWillBeMerged")
    numberOfProfilesWillBeMerged: option<long>,
    @ocaml.doc("<p>The number of profiles found in this preview dry run.</p>")
    @as("NumberOfProfilesInSample")
    numberOfProfilesInSample: option<long>,
    @ocaml.doc("<p>The number of match groups in the domain that have been reviewed in this preview dry
         run.</p>")
    @as("NumberOfMatchesInSample")
    numberOfMatchesInSample: option<long>,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  @module("@aws-sdk/client-profile") @new
  external new: request => t = "GetAutoMergingPreviewCommand"
  let make = (~conflictResolution, ~consolidation, ~domainName, ()) =>
    new({
      conflictResolution: conflictResolution,
      consolidation: consolidation,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutProfileObjectType = {
  type t
  type request = {
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>A list of unique keys that can be used to map data to the profile.</p>")
    @as("Keys")
    keys: option<keyMap>,
    @ocaml.doc("<p>A map of the name and ObjectType field.</p>") @as("Fields")
    fields: option<fieldMap>,
    @ocaml.doc("<p>The format of your <code>sourceLastUpdatedTimestamp</code> that was previously set up.
      </p>")
    @as("SourceLastUpdatedTimestampFormat")
    sourceLastUpdatedTimestampFormat: option<string1To255>,
    @ocaml.doc("<p>Indicates whether a profile should be created when data is received if one doesn’t exist
         for an object of this type. The default is <code>FALSE</code>. If the AllowProfileCreation
         flag is set to <code>FALSE</code>, then the service tries to fetch a standard profile and
         associate this object with the profile. If it is set to <code>TRUE</code>, and if no match
         is found, then the service creates a new standard profile.</p>")
    @as("AllowProfileCreation")
    allowProfileCreation: option<boolean_>,
    @ocaml.doc("<p>The customer-provided key to encrypt the profile object that will be created in this
         profile object type.</p>")
    @as("EncryptionKey")
    encryptionKey: option<encryptionKey>,
    @ocaml.doc("<p>The number of days until the data in the object expires.</p>")
    @as("ExpirationDays")
    expirationDays: option<expirationDaysInteger>,
    @ocaml.doc("<p>A unique identifier for the object template.</p>") @as("TemplateId")
    templateId: option<name>,
    @ocaml.doc("<p>Description of the profile object type.</p>") @as("Description")
    description: text,
    @ocaml.doc("<p>The name of the profile object type.</p>") @as("ObjectTypeName")
    objectTypeName: typeName,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The timestamp of when the domain was most recently edited.</p>")
    @as("LastUpdatedAt")
    lastUpdatedAt: option<timestamp_>,
    @ocaml.doc("<p>The timestamp of when the domain was created.</p>") @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>A list of unique keys that can be used to map data to the profile.</p>")
    @as("Keys")
    keys: option<keyMap>,
    @ocaml.doc("<p>A map of the name and ObjectType field.</p>") @as("Fields")
    fields: option<fieldMap>,
    @ocaml.doc("<p>The format of your <code>sourceLastUpdatedTimestamp</code> that was previously set up in
         fields that were parsed using <a href=\"https://docs.oracle.com/javase/10/docs/api/java/text/SimpleDateFormat.html\">SimpleDateFormat</a>. If you have <code>sourceLastUpdatedTimestamp</code> in your
         field, you must set up <code>sourceLastUpdatedTimestampFormat</code>.</p>")
    @as("SourceLastUpdatedTimestampFormat")
    sourceLastUpdatedTimestampFormat: option<string1To255>,
    @ocaml.doc("<p>Indicates whether a profile should be created when data is received if one doesn’t exist
         for an object of this type. The default is <code>FALSE</code>. If the AllowProfileCreation
         flag is set to <code>FALSE</code>, then the service tries to fetch a standard profile and
         associate this object with the profile. If it is set to <code>TRUE</code>, and if no match
         is found, then the service creates a new standard profile.</p>")
    @as("AllowProfileCreation")
    allowProfileCreation: option<boolean_>,
    @ocaml.doc("<p>The customer-provided key to encrypt the profile object that will be created in this
         profile object type.</p>")
    @as("EncryptionKey")
    encryptionKey: option<encryptionKey>,
    @ocaml.doc("<p>The number of days until the data in the object expires.</p>")
    @as("ExpirationDays")
    expirationDays: option<expirationDaysInteger>,
    @ocaml.doc("<p>A unique identifier for the object template.</p>") @as("TemplateId")
    templateId: option<name>,
    @ocaml.doc("<p>Description of the profile object type.</p>") @as("Description")
    description: text,
    @ocaml.doc("<p>The name of the profile object type.</p>") @as("ObjectTypeName")
    objectTypeName: typeName,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "PutProfileObjectTypeCommand"
  let make = (
    ~description,
    ~objectTypeName,
    ~domainName,
    ~tags=?,
    ~keys=?,
    ~fields=?,
    ~sourceLastUpdatedTimestampFormat=?,
    ~allowProfileCreation=?,
    ~encryptionKey=?,
    ~expirationDays=?,
    ~templateId=?,
    (),
  ) =>
    new({
      tags: tags,
      keys: keys,
      fields: fields,
      sourceLastUpdatedTimestampFormat: sourceLastUpdatedTimestampFormat,
      allowProfileCreation: allowProfileCreation,
      encryptionKey: encryptionKey,
      expirationDays: expirationDays,
      templateId: templateId,
      description: description,
      objectTypeName: objectTypeName,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutIntegration = {
  type t
  type request = {
    @ocaml.doc("<p>A map in which each key is an event type from an external application such as Segment or Shopify, and each value is an <code>ObjectTypeName</code> (template) used to ingest the event.
It supports the following event types: <code>SegmentIdentify</code>, <code>ShopifyCreateCustomers</code>, <code>ShopifyUpdateCustomers</code>, <code>ShopifyCreateDraftOrders</code>, 
<code>ShopifyUpdateDraftOrders</code>, <code>ShopifyCreateOrders</code>, and <code>ShopifyUpdatedOrders</code>.</p>")
    @as("ObjectTypeNames")
    objectTypeNames: option<objectTypeNames>,
    @ocaml.doc("<p>The configuration that controls how Customer Profiles retrieves data from the
         source.</p>")
    @as("FlowDefinition")
    flowDefinition: option<flowDefinition>,
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The name of the profile object type.</p>") @as("ObjectTypeName")
    objectTypeName: option<typeName>,
    @ocaml.doc("<p>The URI of the S3 bucket or any other type of data source.</p>") @as("Uri")
    uri: option<string1To255>,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>Unique identifier for the workflow.</p>") @as("WorkflowId")
    workflowId: option<string1To255>,
    @ocaml.doc("<p>A map in which each key is an event type from an external application such as Segment or Shopify, and each value is an <code>ObjectTypeName</code> (template) used to ingest the event.
It supports the following event types: <code>SegmentIdentify</code>, <code>ShopifyCreateCustomers</code>, <code>ShopifyUpdateCustomers</code>, <code>ShopifyCreateDraftOrders</code>, 
<code>ShopifyUpdateDraftOrders</code>, <code>ShopifyCreateOrders</code>, and <code>ShopifyUpdatedOrders</code>.</p>")
    @as("ObjectTypeNames")
    objectTypeNames: option<objectTypeNames>,
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The timestamp of when the domain was most recently edited.</p>")
    @as("LastUpdatedAt")
    lastUpdatedAt: timestamp_,
    @ocaml.doc("<p>The timestamp of when the domain was created.</p>") @as("CreatedAt")
    createdAt: timestamp_,
    @ocaml.doc("<p>The name of the profile object type.</p>") @as("ObjectTypeName")
    objectTypeName: option<typeName>,
    @ocaml.doc("<p>The URI of the S3 bucket or any other type of data source.</p>") @as("Uri")
    uri: string1To255,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "PutIntegrationCommand"
  let make = (
    ~domainName,
    ~objectTypeNames=?,
    ~flowDefinition=?,
    ~tags=?,
    ~objectTypeName=?,
    ~uri=?,
    (),
  ) =>
    new({
      objectTypeNames: objectTypeNames,
      flowDefinition: flowDefinition,
      tags: tags,
      objectTypeName: objectTypeName,
      uri: uri,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIdentityResolutionJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of Identity Resolution Jobs.</p>") @as("IdentityResolutionJobsList")
    identityResolutionJobsList: option<identityResolutionJobsList>,
  }
  @module("@aws-sdk/client-profile") @new
  external new: request => t = "ListIdentityResolutionJobsCommand"
  let make = (~domainName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetProfileObjectTypeTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the object template.</p>") @as("TemplateId")
    templateId: name,
  }
  type response = {
    @ocaml.doc("<p>A list of unique keys that can be used to map data to the profile.</p>")
    @as("Keys")
    keys: option<keyMap>,
    @ocaml.doc("<p>A map of the name and ObjectType field.</p>") @as("Fields")
    fields: option<fieldMap>,
    @ocaml.doc("<p>The format of your <code>sourceLastUpdatedTimestamp</code> that was previously set
         up.</p>")
    @as("SourceLastUpdatedTimestampFormat")
    sourceLastUpdatedTimestampFormat: option<string1To255>,
    @ocaml.doc("<p>Indicates whether a profile should be created when data is received if one doesn’t exist
         for an object of this type. The default is <code>FALSE</code>. If the AllowProfileCreation
         flag is set to <code>FALSE</code>, then the service tries to fetch a standard profile and
         associate this object with the profile. If it is set to <code>TRUE</code>, and if no match
         is found, then the service creates a new standard profile.</p>")
    @as("AllowProfileCreation")
    allowProfileCreation: option<boolean_>,
    @ocaml.doc("<p>The source of the object template.</p>") @as("SourceObject")
    sourceObject: option<name>,
    @ocaml.doc("<p>The name of the source of the object template.</p>") @as("SourceName")
    sourceName: option<name>,
    @ocaml.doc("<p>A unique identifier for the object template.</p>") @as("TemplateId")
    templateId: option<name>,
  }
  @module("@aws-sdk/client-profile") @new
  external new: request => t = "GetProfileObjectTypeTemplateCommand"
  let make = (~templateId, ()) => new({templateId: templateId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetProfileObjectType = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the profile object type.</p>") @as("ObjectTypeName")
    objectTypeName: typeName,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The timestamp of when the domain was most recently edited.</p>")
    @as("LastUpdatedAt")
    lastUpdatedAt: option<timestamp_>,
    @ocaml.doc("<p>The timestamp of when the domain was created.</p>") @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>A list of unique keys that can be used to map data to the profile.</p>")
    @as("Keys")
    keys: option<keyMap>,
    @ocaml.doc("<p>A map of the name and ObjectType field.</p>") @as("Fields")
    fields: option<fieldMap>,
    @ocaml.doc("<p>The format of your <code>sourceLastUpdatedTimestamp</code> that was previously set
         up.</p>")
    @as("SourceLastUpdatedTimestampFormat")
    sourceLastUpdatedTimestampFormat: option<string1To255>,
    @ocaml.doc("<p>Indicates whether a profile should be created when data is received if one doesn’t exist
         for an object of this type. The default is <code>FALSE</code>. If the AllowProfileCreation
         flag is set to <code>FALSE</code>, then the service tries to fetch a standard profile and
         associate this object with the profile. If it is set to <code>TRUE</code>, and if no match
         is found, then the service creates a new standard profile.</p>")
    @as("AllowProfileCreation")
    allowProfileCreation: option<boolean_>,
    @ocaml.doc("<p>The customer-provided key to encrypt the profile object that will be created in this
         profile object type.</p>")
    @as("EncryptionKey")
    encryptionKey: option<encryptionKey>,
    @ocaml.doc("<p>The number of days until the data in the object expires.</p>")
    @as("ExpirationDays")
    expirationDays: option<expirationDaysInteger>,
    @ocaml.doc("<p>A unique identifier for the object template.</p>") @as("TemplateId")
    templateId: option<name>,
    @ocaml.doc("<p>The description of the profile object type.</p>") @as("Description")
    description: text,
    @ocaml.doc("<p>The name of the profile object type.</p>") @as("ObjectTypeName")
    objectTypeName: typeName,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "GetProfileObjectTypeCommand"
  let make = (~objectTypeName, ~domainName, ()) =>
    new({objectTypeName: objectTypeName, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIdentityResolutionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the Identity Resolution Job.</p>") @as("JobId")
    jobId: uuid,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>Statistics about the Identity Resolution Job.</p>") @as("JobStats")
    jobStats: option<jobStats>,
    @ocaml.doc("<p>The S3 location where the Identity Resolution Job writes result files.</p>")
    @as("ExportingLocation")
    exportingLocation: option<exportingLocation>,
    @ocaml.doc("<p>Configuration settings for how to perform the auto-merging of profiles.</p>")
    @as("AutoMerging")
    autoMerging: option<autoMerging>,
    @ocaml.doc("<p>The timestamp of when the Identity Resolution Job will expire.</p>")
    @as("JobExpirationTime")
    jobExpirationTime: option<timestamp_>,
    @ocaml.doc("<p>The timestamp of when the Identity Resolution Job was most recently edited.</p>")
    @as("LastUpdatedAt")
    lastUpdatedAt: option<timestamp_>,
    @ocaml.doc("<p>The timestamp of when the Identity Resolution Job was completed.</p>")
    @as("JobEndTime")
    jobEndTime: option<timestamp_>,
    @ocaml.doc(
      "<p>The timestamp of when the Identity Resolution Job was started or will be started.</p>"
    )
    @as("JobStartTime")
    jobStartTime: option<timestamp_>,
    @ocaml.doc(
      "<p>The error messages that are generated when the Identity Resolution Job runs.</p>"
    )
    @as("Message")
    message: option<stringTo2048>,
    @ocaml.doc("<p>The status of the Identity Resolution Job.</p>
         <ul>
            <li>
               <p>
                  <code>PENDING</code>: The Identity Resolution Job is scheduled but has not started yet. If you turn
               off the Identity Resolution feature in your domain, jobs in the <code>PENDING</code> state are
               deleted.</p>
            </li>
            <li>
               <p>
                  <code>PREPROCESSING</code>: The Identity Resolution Job is loading your data.</p>
            </li>
            <li>
               <p>
                  <code>FIND_MATCHING</code>: The Identity Resolution Job is using the machine learning model to
               identify profiles that belong to the same matching group.</p>
            </li>
            <li>
               <p>
                  <code>MERGING</code>: The Identity Resolution Job is merging duplicate profiles.</p>
            </li>
            <li>
               <p>
                  <code>COMPLETED</code>: The Identity Resolution Job completed successfully.</p>
            </li>
            <li>
               <p>
                  <code>PARTIAL_SUCCESS</code>: There's a system error and not all of the data is
               merged. The Identity Resolution Job writes a message indicating the source of the problem.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code>: The Identity Resolution Job did not merge any data. It writes a message
               indicating the source of the problem.</p>
            </li>
         </ul>")
    @as("Status")
    status: option<identityResolutionJobStatus>,
    @ocaml.doc("<p>The unique identifier of the Identity Resolution Job.</p>") @as("JobId")
    jobId: option<uuid>,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: option<name>,
  }
  @module("@aws-sdk/client-profile") @new
  external new: request => t = "GetIdentityResolutionJobCommand"
  let make = (~jobId, ~domainName, ()) => new({jobId: jobId, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDomain = {
  type t
  type request = {
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every 
Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
         <p>After the Identity Resolution Job completes, use the 
<a href=\"https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html\">GetMatches</a>
API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
S3.</p>")
    @as("Matching")
    matching: option<matchingRequest>,
    @ocaml.doc("<p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
         ingesting data from third party applications. If specified as an empty string, it will
         clear any existing value. You must set up a policy on the DeadLetterQueue for the
         SendMessage operation to enable Amazon Connect Customer Profiles to send messages to the
         DeadLetterQueue.</p>")
    @as("DeadLetterQueueUrl")
    deadLetterQueueUrl: option<sqsQueueUrl>,
    @ocaml.doc("<p>The default encryption key, which is an AWS managed key, is used when no specific type
         of encryption key is specified. It is used to encrypt all data before it is placed in
         permanent or semi-permanent storage. If specified as an empty string, it will clear any
         existing value.</p>")
    @as("DefaultEncryptionKey")
    defaultEncryptionKey: option<encryptionKey>,
    @ocaml.doc("<p>The default number of days until the data within the domain expires.</p>")
    @as("DefaultExpirationDays")
    defaultExpirationDays: option<expirationDaysInteger>,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The timestamp of when the domain was most recently edited.</p>")
    @as("LastUpdatedAt")
    lastUpdatedAt: timestamp_,
    @ocaml.doc("<p>The timestamp of when the domain was created.</p>") @as("CreatedAt")
    createdAt: timestamp_,
    @ocaml.doc("<p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every 
Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
         <p>After the Identity Resolution Job completes, use the 
<a href=\"https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html\">GetMatches</a>
API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
S3.</p>")
    @as("Matching")
    matching: option<matchingResponse>,
    @ocaml.doc("<p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
         ingesting data from third party applications.</p>")
    @as("DeadLetterQueueUrl")
    deadLetterQueueUrl: option<sqsQueueUrl>,
    @ocaml.doc("<p>The default encryption key, which is an AWS managed key, is used when no specific type
         of encryption key is specified. It is used to encrypt all data before it is placed in
         permanent or semi-permanent storage.</p>")
    @as("DefaultEncryptionKey")
    defaultEncryptionKey: option<encryptionKey>,
    @ocaml.doc("<p>The default number of days until the data within the domain expires.</p>")
    @as("DefaultExpirationDays")
    defaultExpirationDays: option<expirationDaysInteger>,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "UpdateDomainCommand"
  let make = (
    ~domainName,
    ~tags=?,
    ~matching=?,
    ~deadLetterQueueUrl=?,
    ~defaultEncryptionKey=?,
    ~defaultExpirationDays=?,
    (),
  ) =>
    new({
      tags: tags,
      matching: matching,
      deadLetterQueueUrl: deadLetterQueueUrl,
      defaultEncryptionKey: defaultEncryptionKey,
      defaultExpirationDays: defaultExpirationDays,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDomain = {
  type t
  type request = {
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The timestamp of when the domain was most recently edited.</p>")
    @as("LastUpdatedAt")
    lastUpdatedAt: timestamp_,
    @ocaml.doc("<p>The timestamp of when the domain was created.</p>") @as("CreatedAt")
    createdAt: timestamp_,
    @ocaml.doc("<p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every 
Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
         <p>After the Identity Resolution Job completes, use the 
<a href=\"https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html\">GetMatches</a>
API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
S3.</p>")
    @as("Matching")
    matching: option<matchingResponse>,
    @ocaml.doc("<p>Usage-specific statistics about the domain.</p>") @as("Stats")
    stats: option<domainStats>,
    @ocaml.doc("<p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
         ingesting data from third party applications.</p>")
    @as("DeadLetterQueueUrl")
    deadLetterQueueUrl: option<sqsQueueUrl>,
    @ocaml.doc("<p>The default encryption key, which is an AWS managed key, is used when no specific type
         of encryption key is specified. It is used to encrypt all data before it is placed in
         permanent or semi-permanent storage.</p>")
    @as("DefaultEncryptionKey")
    defaultEncryptionKey: option<encryptionKey>,
    @ocaml.doc("<p>The default number of days until the data within the domain expires.</p>")
    @as("DefaultExpirationDays")
    defaultExpirationDays: option<expirationDaysInteger>,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "GetDomainCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDomain = {
  type t
  type request = {
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every 
Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
         <p>After the Identity Resolution Job completes, use the 
<a href=\"https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html\">GetMatches</a>
API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
S3.</p>")
    @as("Matching")
    matching: option<matchingRequest>,
    @ocaml.doc("<p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
         ingesting data from third party applications. You must set up a policy on the
         DeadLetterQueue for the SendMessage operation to enable Amazon Connect Customer Profiles to send
         messages to the DeadLetterQueue.</p>")
    @as("DeadLetterQueueUrl")
    deadLetterQueueUrl: option<sqsQueueUrl>,
    @ocaml.doc("<p>The default encryption key, which is an AWS managed key, is used when no specific type
         of encryption key is specified. It is used to encrypt all data before it is placed in
         permanent or semi-permanent storage.</p>")
    @as("DefaultEncryptionKey")
    defaultEncryptionKey: option<encryptionKey>,
    @ocaml.doc("<p>The default number of days until the data within the domain expires.</p>")
    @as("DefaultExpirationDays")
    defaultExpirationDays: expirationDaysInteger,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The timestamp of when the domain was most recently edited.</p>")
    @as("LastUpdatedAt")
    lastUpdatedAt: timestamp_,
    @ocaml.doc("<p>The timestamp of when the domain was created.</p>") @as("CreatedAt")
    createdAt: timestamp_,
    @ocaml.doc("<p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every 
Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
         <p>After the Identity Resolution Job completes, use the 
<a href=\"https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html\">GetMatches</a>
API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
S3.</p>")
    @as("Matching")
    matching: option<matchingResponse>,
    @ocaml.doc("<p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
         ingesting data from third party applications.</p>")
    @as("DeadLetterQueueUrl")
    deadLetterQueueUrl: option<sqsQueueUrl>,
    @ocaml.doc("<p>The default encryption key, which is an AWS managed key, is used when no specific type
         of encryption key is specified. It is used to encrypt all data before it is placed in
         permanent or semi-permanent storage.</p>")
    @as("DefaultEncryptionKey")
    defaultEncryptionKey: option<encryptionKey>,
    @ocaml.doc("<p>The default number of days until the data within the domain expires.</p>")
    @as("DefaultExpirationDays")
    defaultExpirationDays: expirationDaysInteger,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  @module("@aws-sdk/client-profile") @new external new: request => t = "CreateDomainCommand"
  let make = (
    ~defaultExpirationDays,
    ~domainName,
    ~tags=?,
    ~matching=?,
    ~deadLetterQueueUrl=?,
    ~defaultEncryptionKey=?,
    (),
  ) =>
    new({
      tags: tags,
      matching: matching,
      deadLetterQueueUrl: deadLetterQueueUrl,
      defaultEncryptionKey: defaultEncryptionKey,
      defaultExpirationDays: defaultExpirationDays,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIntegrationWorkflow = {
  type t
  type request = {
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the IAM role. Customer Profiles assumes this role to create resources on your behalf as part of workflow execution.</p>"
    )
    @as("RoleArn")
    roleArn: roleArn,
    @ocaml.doc("<p>The name of the profile object type.</p>") @as("ObjectTypeName")
    objectTypeName: typeName,
    @ocaml.doc("<p>Configuration data for integration workflow.</p>") @as("IntegrationConfig")
    integrationConfig: integrationConfig,
    @ocaml.doc("<p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>")
    @as("WorkflowType")
    workflowType: workflowType,
    @ocaml.doc("<p>The unique name of the domain.</p>") @as("DomainName") domainName: name,
  }
  type response = {
    @ocaml.doc("<p>A message indicating create request was received.</p>") @as("Message")
    message: string1To255,
    @ocaml.doc("<p>Unique identifier for the workflow.</p>") @as("WorkflowId") workflowId: uuid,
  }
  @module("@aws-sdk/client-profile") @new
  external new: request => t = "CreateIntegrationWorkflowCommand"
  let make = (
    ~roleArn,
    ~objectTypeName,
    ~integrationConfig,
    ~workflowType,
    ~domainName,
    ~tags=?,
    (),
  ) =>
    new({
      tags: tags,
      roleArn: roleArn,
      objectTypeName: objectTypeName,
      integrationConfig: integrationConfig,
      workflowType: workflowType,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
