type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-finspace-api") @new
external createClient: unit => awsServiceClient = "FinspacedataClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type stringValueMaxLength1000 = string
type stringValueLength1to63 = string
type stringValueLength1to1024 = string
type locationType = [@as("SAGEMAKER") #SAGEMAKER | @as("INGESTION") #INGESTION]
type userType = [@as("APP_USER") #APP_USER | @as("SUPER_USER") #SUPER_USER]
type userStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED | @as("CREATING") #CREATING]
type userId = string
@ocaml.doc("Milliseconds since UTC epoch") type timestampEpoch = float
type stringValueLength1to2552 = string
@ocaml.doc("1 - 255 character String") type stringValueLength1to255 = string
@ocaml.doc("1 - 250 character String") type stringValueLength1to250 = string
type stringMapValue = string
type stringMapKey = string
type sessionDuration = float
type roleArn = string
@ocaml.doc("Maximum number of results to be returned as part of a list operation")
type resultLimit = int
@ocaml.doc("PhoneNumber of Dataset Owner") type phoneNumber = string
type permissionGroupName = string
type permissionGroupId = string
type permissionGroupDescription = string
type password = string
@ocaml.doc("Pagination token for list operations") type paginationToken = string
@ocaml.doc("1 - 250 character String") type ownerName = string
type lastName = string
@ocaml.doc("Status of the ingestion process returned from scheduler service.")
type ingestionStatus = [
  | @as("STOP_REQUESTED") #STOP_REQUESTED
  | @as("RUNNING") #RUNNING
  | @as("SUCCESS") #SUCCESS
  | @as("FAILED") #FAILED
  | @as("PENDING") #PENDING
]
type idType = string
type firstName = string
@ocaml.doc("Data View Export File Format")
type exportFileFormat = [@as("DELIMITED_TEXT") #DELIMITED_TEXT | @as("PARQUET") #PARQUET]
type errorMessage2 = string
@ocaml.doc("Changeset Error Message") type errorMessage = string
@ocaml.doc("Changeset Error Category")
type errorCategory = [
  | @as("USER_RECOVERABLE") #USER_RECOVERABLE
  | @as("CANCELLED") #CANCELLED
  | @as("INTERNAL_SERVICE_EXCEPTION") #INTERNAL_SERVICE_EXCEPTION
  | @as("THROTTLING") #THROTTLING
  | @as("RESOURCE_NOT_FOUND") #RESOURCE_NOT_FOUND
  | @as("ACCESS_DENIED") #ACCESS_DENIED
  | @as("SERVICE_QUOTA_EXCEEDED") #SERVICE_QUOTA_EXCEEDED
  | @as("VALIDATION") #VALIDATION
]
type email = string
@ocaml.doc("Title for a given Dataset") type datasetTitle = string
@ocaml.doc("Status of the dataset process returned from scheduler service.")
type datasetStatus = [
  | @as("RUNNING") #RUNNING
  | @as("SUCCESS") #SUCCESS
  | @as("FAILED") #FAILED
  | @as("PENDING") #PENDING
]
@ocaml.doc("Dataset Kind")
type datasetKind = [@as("NON_TABULAR") #NON_TABULAR | @as("TABULAR") #TABULAR]
@ocaml.doc("ID for a given Dataset") type datasetId = string
@ocaml.doc("Description of a dataset") type datasetDescription = string
@ocaml.doc("Arn of a Dataset") type datasetArn = string
@ocaml.doc("Status of a DataView")
type dataViewStatus = [
  | @as("FAILED_CLEANUP_FAILED") #FAILED_CLEANUP_FAILED
  | @as("PENDING") #PENDING
  | @as("SUCCESS") #SUCCESS
  | @as("TIMEOUT") #TIMEOUT
  | @as("CANCELLED") #CANCELLED
  | @as("FAILED") #FAILED
  | @as("STARTING") #STARTING
  | @as("RUNNING") #RUNNING
]
@ocaml.doc("DataView ID") type dataViewId = string
@ocaml.doc("DataView Destination Type") type dataViewDestinationType = string
@ocaml.doc("Arn of a DataView") type dataViewArn = string
@ocaml.doc("Column Name") type columnName = string
@ocaml.doc("Column Description") type columnDescription = string
@ocaml.doc("Data type of a column.")
type columnDataType = [
  | @as("BINARY") #BINARY
  | @as("BOOLEAN") #BOOLEAN
  | @as("DATETIME") #DATETIME
  | @as("DATE") #DATE
  | @as("DOUBLE") #DOUBLE
  | @as("FLOAT") #FLOAT
  | @as("BIGINT") #BIGINT
  | @as("SMALLINT") #SMALLINT
  | @as("TINYINT") #TINYINT
  | @as("INTEGER") #INTEGER
  | @as("CHAR") #CHAR
  | @as("STRING") #STRING
]
@ocaml.doc("Idempotence Token for API operations") type clientToken = string
@ocaml.doc("ID used to identify a Changeset") type changesetId = string
@ocaml.doc("Arn for a given Changeset") type changesetArn = string
@ocaml.doc("Indicates how the given change will be applied to the dataset.")
type changeType = [@as("MODIFY") #MODIFY | @as("APPEND") #APPEND | @as("REPLACE") #REPLACE]
@ocaml.doc("Common Boolean data type") type boolean_ = bool
type applicationPermission = [
  | @as("GetTemporaryCredentials") #GetTemporaryCredentials
  | @as("AccessNotebooks") #AccessNotebooks
  | @as("ViewAuditData") #ViewAuditData
  | @as("ManageAttributeSets") #ManageAttributeSets
  | @as("ManageUsersAndGroups") #ManageUsersAndGroups
  | @as("ManageClusters") #ManageClusters
  | @as("CreateDataset") #CreateDataset
]
type apiAccess = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type aliasString = string
@ocaml.doc("<p>The details of the user account.</p>")
type user = {
  @ocaml.doc("<p>Describes the last time that the user logged into their account. The value is determined as epoch time in milliseconds.
    </p>")
  lastLoginTime: option<timestampEpoch>,
  @ocaml.doc("<p>Describes the last time the user account was updated. The value is determined as epoch time in milliseconds.
    </p>")
  lastModifiedTime: option<timestampEpoch>,
  @ocaml.doc(
    "<p>Describes the last time the user account was disabled. The value is determined as epoch time in milliseconds.</p>"
  )
  lastDisabledTime: option<timestampEpoch>,
  @ocaml.doc("<p> Describes the last time the user account was enabled. The value is determined as epoch time in milliseconds.
    </p>")
  lastEnabledTime: option<timestampEpoch>,
  @ocaml.doc(
    "<p>The timestamp at which the user account was created in FinSpace. The value is determined as epoch time in milliseconds. </p>"
  )
  createTime: option<timestampEpoch>,
  @ocaml.doc(
    "<p>The ARN identifier of an AWS user or role that is allowed to call the <code>GetProgrammaticAccessCredentials</code> API to obtain a credentials token for a specific FinSpace user. This must be an IAM role within your FinSpace account.</p>"
  )
  apiAccessPrincipalArn: option<roleArn>,
  @ocaml.doc("<p>Indicates whether the user can use the <code>GetProgrammaticAccessCredentials</code> API to obtain credentials that can then be used to access other FinSpace Data API operations.</p>
         <ul>
            <li>
               <p>
                  <code>ENABLED</code> – The user has permissions to use the APIs.</p>
            </li>
            <li>
               <p>
                  <code>DISABLED</code> – The user does not have permissions to use any APIs.</p>
            </li>
         </ul>")
  apiAccess: option<apiAccess>,
  @ocaml.doc("<p> Indicates the type of user.</p>
         <ul>
            <li>
               <p>
                  <code>SUPER_USER</code> – A user with permission to all the functionality and data in FinSpace.</p>
            </li>
            <li>
               <p>
                  <code>APP_USER</code> – A user with specific permissions in FinSpace. The users are assigned permissions by adding them to a permissions group.</p>
            </li>
         </ul>")
  @as("type")
  type_: option<userType>,
  @ocaml.doc(
    "<p>The email address of the user. The email address serves as a uniquer identifier for each user and cannot be changed after it's created.</p>"
  )
  emailAddress: option<email>,
  @ocaml.doc("<p> The last name of the user.</p>") lastName: option<lastName>,
  @ocaml.doc("<p>The first name of the user.</p>") firstName: option<firstName>,
  @ocaml.doc("<p>The current status of the user account. </p>
         <ul>
            <li>
               <p>
                  <code>CREATING</code> – The user account creation is in progress.</p>
            </li>
            <li>
               <p>
                  <code>ENABLED</code> – The user account is created and is currently active.</p>
            </li>
            <li>
               <p>
                  <code>DISABLED</code> – The user account is currently inactive.</p>
            </li>
         </ul>")
  status: option<userStatus>,
  @ocaml.doc("<p>The unique identifier for the user.</p>") userId: option<userId>,
}
@ocaml.doc("Source Parameters of a Changeset") type sourceParams = Js.Dict.t<stringMapValue>
@ocaml.doc("DataView Sort Column List") type sortColumnList = array<stringValueLength1to255>
type s3DestinationFormatOptions = Js.Dict.t<stringMapValue>
@ocaml.doc("<p>Resource permission for a dataset. When you create a dataset, all the other members of the same user group inherit access to the dataset. You can only create a dataset if your user group has application permission for Create Datasets.</p>
         <p>The following is a list of valid dataset permissions that you can apply:
  
  </p>
         <ul>
            <li>
               <p>
                  <code>ViewDatasetDetails</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ReadDatasetDetails</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AddDatasetData</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CreateSnapshot</code>
               </p>
            </li>
            <li>
               <p>
                  <code>EditDatasetMetadata</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DeleteDataset</code>
               </p>
            </li>
         </ul>
         <p>For more information on the dataset permissions, see <a href=\"https://docs.aws.amazon.com/finspace/latest/userguide/managing-user-permissions.html#supported-dataset-permissions\">Supported Dataset Permissions</a> in the FinSpace User Guide.</p>")
type resourcePermission = {
  @ocaml.doc("<p>Permission for a resource.</p>") permission: option<stringValueLength1to250>,
}
@ocaml.doc("DataView Partition Column List")
type partitionColumnList = array<stringValueLength1to255>
@ocaml.doc("Format Parameters of a Changeset") type formatParams = Js.Dict.t<stringMapValue>
@ocaml.doc("<p>A structure for Dataset owner info.</p>")
type datasetOwnerInfo = {
  @ocaml.doc("<p>Email address for the Dataset owner.</p>") email: option<email>,
  @ocaml.doc("<p>Phone number for the Dataset owner.</p>") phoneNumber: option<phoneNumber>,
  @ocaml.doc("<p>The name of the Dataset owner.</p>") name: option<ownerName>,
}
@ocaml.doc("<p>The structure with error messages.</p>")
type dataViewErrorInfo = {
  @ocaml.doc("<p>The category of the error.</p>
         <ul>
            <li>
               <p>
                  <code>VALIDATION</code> – The inputs to this request are invalid.</p>
            </li>
            <li>
               <p>
                  <code>SERVICE_QUOTA_EXCEEDED</code> – Service quotas have been exceeded. Please
          contact AWS support to increase quotas.</p>
            </li>
            <li>
               <p>
                  <code>ACCESS_DENIED</code> – Missing required permission to perform this
          request.</p>
            </li>
            <li>
               <p>
                  <code>RESOURCE_NOT_FOUND</code> – One or more inputs to this request were not
          found.</p>
            </li>
            <li>
               <p>
                  <code>THROTTLING</code> – The system temporarily lacks sufficient resources to process
          the request.</p>
            </li>
            <li>
               <p>
                  <code>INTERNAL_SERVICE_EXCEPTION</code> – An internal service error has
          occurred.</p>
            </li>
            <li>
               <p>
                  <code>CANCELLED</code> – Cancelled.</p>
            </li>
            <li>
               <p>
                  <code>USER_RECOVERABLE</code> – A user recoverable error has occurred.</p>
            </li>
         </ul>")
  errorCategory: option<errorCategory>,
  @ocaml.doc("<p>The text of the error message.</p>") errorMessage: option<errorMessage>,
}
@ocaml.doc("<p>Short term API credentials.</p>")
type credentials = {
  @ocaml.doc("<p>The session token.</p>") sessionToken: option<stringValueMaxLength1000>,
  @ocaml.doc("<p>The access key.</p>") secretAccessKey: option<stringValueMaxLength1000>,
  @ocaml.doc("<p>The access key identifier.</p>") accessKeyId: option<stringValueLength1to2552>,
}
@ocaml.doc("List of Column Names") type columnNameList = array<columnName>
@ocaml.doc("<p>The definition of a column in a tabular Dataset.</p>")
type columnDefinition = {
  @ocaml.doc("<p>Description for a column.</p>") columnDescription: option<columnDescription>,
  @ocaml.doc("<p>The name of a column.</p>") columnName: option<columnName>,
  @ocaml.doc("<p>Data type of a column.</p>
         <ul>
            <li>
               <p>
                  <code>STRING</code> – A String data type.</p>
               <p>
                  <code>CHAR</code> – A char data type.</p>
               <p>
                  <code>INTEGER</code> – An integer data type.</p>
               <p>
                  <code>TINYINT</code> – A tinyint data type.</p>
               <p>
                  <code>SMALLINT</code> – A smallint data type.</p>
               <p>
                  <code>BIGINT</code> – A bigint data type.</p>
               <p>
                  <code>FLOAT</code> – A float data type.</p>
               <p>
                  <code>DOUBLE</code> – A double data type.</p>
               <p>
                  <code>DATE</code> – A date data type.</p>
               <p>
                  <code>DATETIME</code> – A datetime data type.</p>
               <p>
                  <code>BOOLEAN</code> – A boolean data type.</p>
               <p>
                  <code>BINARY</code> – A binary data type.</p>
            </li>
         </ul>")
  dataType: option<columnDataType>,
}
@ocaml.doc("<p>The structure with error messages.</p>")
type changesetErrorInfo = {
  @ocaml.doc("<p>The category of the error.</p>
         <ul>
            <li>
               <p>
                  <code>VALIDATION</code> – The inputs to this request are invalid.</p>
            </li>
            <li>
               <p>
                  <code>SERVICE_QUOTA_EXCEEDED</code> – Service quotas have been exceeded. Please
          contact AWS support to increase quotas.</p>
            </li>
            <li>
               <p>
                  <code>ACCESS_DENIED</code> – Missing required permission to perform this
          request.</p>
            </li>
            <li>
               <p>
                  <code>RESOURCE_NOT_FOUND</code> – One or more inputs to this request were not
          found.</p>
            </li>
            <li>
               <p>
                  <code>THROTTLING</code> – The system temporarily lacks sufficient resources to process
          the request.</p>
            </li>
            <li>
               <p>
                  <code>INTERNAL_SERVICE_EXCEPTION</code> – An internal service error has
          occurred.</p>
            </li>
            <li>
               <p>
                  <code>CANCELLED</code> – Cancelled.</p>
            </li>
            <li>
               <p>
                  <code>USER_RECOVERABLE</code> – A user recoverable error has occurred.</p>
            </li>
         </ul>")
  errorCategory: option<errorCategory>,
  @ocaml.doc("<p>The text of the error message.</p>") errorMessage: option<errorMessage>,
}
type applicationPermissionList = array<applicationPermission>
type userList = array<user>
@ocaml.doc("List of Resource Permissions") type resourcePermissionsList = array<resourcePermission>
@ocaml.doc("<p>The structure for a permission group.</p>")
type permissionGroup = {
  @ocaml.doc("<p>Describes the last time the permission group was updated. The value is determined as epoch time in milliseconds.
    </p>")
  lastModifiedTime: option<timestampEpoch>,
  @ocaml.doc("<p>The timestamp at which the group was created in FinSpace. The value is determined as epoch time in milliseconds.
    </p>")
  createTime: option<timestampEpoch>,
  @ocaml.doc("<p>Indicates the permissions that are granted to a specific group for accessing the FinSpace application.</p>
         <ul>
            <li>
               <p>
                  <code>CreateDataset</code> – Group members can create new datasets.</p>
            </li>
            <li>
               <p>
                  <code>ManageClusters</code> – Group members can manage Apache Spark clusters from FinSpace notebooks.</p>
            </li>
            <li>
               <p>
                  <code>ManageUsersAndGroups</code> – Group members can manage users and permission groups.</p>
            </li>
            <li>
               <p>
                  <code>ManageAttributeSets</code> – Group members can manage attribute sets.</p>
            </li>
            <li>
               <p>
                  <code>ViewAuditData</code> – Group members can view audit data.</p>
            </li>
            <li>
               <p>
                  <code>AccessNotebooks</code> – Group members will have access to FinSpace notebooks.</p>
            </li>
            <li>
               <p>
                  <code>GetTemporaryCredentials</code> – Group members can get temporary API credentials.</p>
            </li>
         </ul>")
  applicationPermissions: option<applicationPermissionList>,
  @ocaml.doc("<p> A brief description for the permission group.</p>")
  description: option<permissionGroupDescription>,
  @ocaml.doc("<p>The name of the permission group.</p>") name: option<permissionGroupName>,
  @ocaml.doc("<p> The unique identifier for the permission group.</p>")
  permissionGroupId: option<permissionGroupId>,
}
@ocaml.doc("<p>Structure for the Dataview destination type parameters.</p>")
type dataViewDestinationTypeParams = {
  @ocaml.doc("<p>Format Options for S3 Destination type.</p>
         <p>Here is an example of how you could specify the <code>s3DestinationExportFileFormatOptions</code> 
         </p>
         <p>
            <code>
        {
        \"header\": \"true\",
        \"delimiter\": \",\",
        \"compression\": \"gzip\"
        }</code>
         </p>")
  s3DestinationExportFileFormatOptions: option<s3DestinationFormatOptions>,
  @ocaml.doc("<p>Data view export file format.</p>
         <ul>
            <li>
               <p>
                  <code>PARQUET</code> – Parquet export file format.</p>
            </li>
            <li>
               <p>
                  <code>DELIMITED_TEXT</code> – Delimited text export file format.</p>
            </li>
         </ul>")
  s3DestinationExportFileFormat: option<exportFileFormat>,
  @ocaml.doc("<p>Destination type for a Dataview.</p>
         <ul>
            <li>
               <p>
                  <code>GLUE_TABLE</code> – Glue table destination type.</p>
            </li>
            <li>
               <p>
                  <code>S3</code> – S3 destination type.</p>
            </li>
         </ul>")
  destinationType: dataViewDestinationType,
}
@ocaml.doc("List of Column Definitions") type columnList = array<columnDefinition>
@ocaml.doc("<p>A Changeset is unit of data in a Dataset.</p>")
type changesetSummary = {
  @ocaml.doc("<p>The unique identifier of the updated Changeset.</p>")
  updatedByChangesetId: option<changesetId>,
  @ocaml.doc("<p>The unique identifier of the Changeset that is updated.</p>")
  updatesChangesetId: option<changesetId>,
  @ocaml.doc(
    "<p>Beginning time from which the Changeset is active. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"
  )
  activeFromTimestamp: option<timestampEpoch>,
  @ocaml.doc(
    "<p>Time until which the Changeset is active. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"
  )
  activeUntilTimestamp: option<timestampEpoch>,
  @ocaml.doc("<p>The structure with error messages.</p>") errorInfo: option<changesetErrorInfo>,
  @ocaml.doc("<p>Status of the Changeset ingestion.</p>
         <ul>
            <li> 
               <p>
                  <code>PENDING</code> – Changeset is pending creation.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> – Changeset creation has failed.</p>
            </li>
            <li> 
               <p>
                  <code>SUCCESS</code> – Changeset creation has succeeded.</p>
            </li>
            <li> 
               <p>
                  <code>RUNNING</code> – Changeset creation is running.</p>
            </li>
            <li> 
               <p>
                  <code>STOP_REQUESTED</code> – User requested Changeset creation to stop.</p>
            </li>
         </ul>")
  status: option<ingestionStatus>,
  @ocaml.doc(
    "<p>The timestamp at which the Changeset was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"
  )
  createTime: option<timestampEpoch>,
  @ocaml.doc("<p>Options that define the structure of the source file(s).</p>")
  formatParams: option<formatParams>,
  @ocaml.doc("<p>Options that define the location of the data being ingested.</p>")
  sourceParams: option<sourceParams>,
  @ocaml.doc("<p>Type that indicates how a Changeset is applied to a Dataset.</p>
         <ul>
            <li>
               <p>
                  <code>REPLACE</code> – Changeset is considered as a replacement to all prior loaded
          Changesets.</p>
            </li>
            <li>
               <p>
                  <code>APPEND</code> – Changeset is considered as an addition to the end of all prior
          loaded Changesets.</p>
            </li>
            <li>
               <p>
                  <code>MODIFY</code> – Changeset is considered as a replacement to a specific prior
          ingested Changeset.</p>
            </li>
         </ul>")
  changeType: option<changeType>,
  @ocaml.doc(
    "<p>The unique identifier for the FinSpace Dataset in which the Changeset is created.</p>"
  )
  datasetId: option<datasetId>,
  @ocaml.doc("<p>The ARN identifier of the Changeset.</p>") changesetArn: option<changesetArn>,
  @ocaml.doc("<p>The unique identifier for a Changeset.</p>") changesetId: option<changesetId>,
}
@ocaml.doc("<p>Definition for a schema on a tabular Dataset.</p>")
type schemaDefinition = {
  @ocaml.doc("<p>List of column names used for primary key.</p>")
  primaryKeyColumns: option<columnNameList>,
  @ocaml.doc("<p>List of column definitions.</p>") columns: option<columnList>,
}
@ocaml.doc("<p>Permission group parameters for Dataset permissions.</p>
         <p>Here is an example of how you could specify the <code>PermissionGroupParams</code>:</p>
         <p>
            <code>
        {
        \"permissionGroupId\": \"0r6fCRtSTUk4XPfXQe3M0g\",
        \"datasetPermissions\": [
        {\"permission\": \"ViewDatasetDetails\"},
        {\"permission\": \"AddDatasetData\"},
        {\"permission\": \"EditDatasetMetadata\"},
        {\"permission\": \"DeleteDataset\"}
        ]
        }
      </code>
         </p>")
type permissionGroupParams = {
  @ocaml.doc("<p>List of resource permissions.</p>")
  datasetPermissions: option<resourcePermissionsList>,
  @ocaml.doc("<p>The unique identifier for the <code>PermissionGroup</code>.</p>")
  permissionGroupId: option<permissionGroupId>,
}
type permissionGroupList = array<permissionGroup>
@ocaml.doc("<p>Structure for the summary of a Dataview.</p>")
type dataViewSummary = {
  @ocaml.doc(
    "<p>The last time that a Dataview was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"
  )
  lastModifiedTime: option<timestampEpoch>,
  @ocaml.doc(
    "<p>The timestamp at which the Dataview was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"
  )
  createTime: option<timestampEpoch>,
  @ocaml.doc("<p>The flag to indicate Dataview should be updated automatically.</p>")
  autoUpdate: option<boolean_>,
  @ocaml.doc("<p>Information about the Dataview destination.</p>")
  destinationTypeProperties: option<dataViewDestinationTypeParams>,
  @ocaml.doc("<p>The structure with error messages.</p>") errorInfo: option<dataViewErrorInfo>,
  @ocaml.doc("<p>The status of a Dataview creation.</p>
         <ul>
            <li>
               <p>
                  <code>RUNNING</code> – Dataview creation is running.</p> 
            </li>
            <li>
               <p>
                  <code>STARTING</code> – Dataview creation is starting.</p> 
            </li>
            <li>
               <p>
                  <code>FAILED</code> – Dataview creation has failed.</p> 
            </li>
            <li>
               <p>
                  <code>CANCELLED</code> – Dataview creation has been cancelled.</p> 
            </li>
            <li>
               <p>
                  <code>TIMEOUT</code> – Dataview creation has timed out.</p> 
            </li>
            <li>
               <p>
                  <code>SUCCESS</code> – Dataview creation has succeeded.</p> 
            </li>
            <li>
               <p>
                  <code>PENDING</code> – Dataview creation is pending.</p> 
            </li>
            <li>
               <p>
                  <code>FAILED_CLEANUP_FAILED</code> – Dataview creation failed and resource cleanup failed.</p> 
            </li>
         </ul>")
  status: option<dataViewStatus>,
  @ocaml.doc("<p>Columns to be used for sorting the data.</p>") sortColumns: option<sortColumnList>,
  @ocaml.doc("<p>Ordered set of column names used to partition data.</p>")
  partitionColumns: option<partitionColumnList>,
  @ocaml.doc(
    "<p>Time range to use for the Dataview. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"
  )
  asOfTimestamp: option<timestampEpoch>,
  @ocaml.doc("<p>Th unique identifier for the Dataview Dataset.</p>") datasetId: option<datasetId>,
  @ocaml.doc("<p>The ARN identifier of the Dataview.</p>") dataViewArn: option<dataViewArn>,
  @ocaml.doc("<p>The unique identifier for the Dataview.</p>") dataViewId: option<dataViewId>,
}
@ocaml.doc("List of Changeset Summaries") type changesetList = array<changesetSummary>
@ocaml.doc("<p>A union of schema types.</p>")
type schemaUnion = {
  @ocaml.doc("<p>The configuration for a schema on a tabular Dataset.</p>")
  tabularSchemaConfig: option<schemaDefinition>,
}
@ocaml.doc("List of Data Views") type dataViewList = array<dataViewSummary>
@ocaml.doc("<p>The structure for a Dataset.</p>")
type dataset = {
  @ocaml.doc("<p>The unique resource identifier for a Dataset.</p>") alias: option<aliasString>,
  @ocaml.doc("<p>Definition for a schema on a tabular Dataset.</p>")
  schemaDefinition: option<schemaUnion>,
  @ocaml.doc(
    "<p>The last time that the Dataset was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"
  )
  lastModifiedTime: option<timestampEpoch>,
  @ocaml.doc(
    "<p>The timestamp at which the Dataset was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"
  )
  createTime: option<timestampEpoch>,
  @ocaml.doc("<p>Contact information for a Dataset owner.</p>") ownerInfo: option<datasetOwnerInfo>,
  @ocaml.doc("<p>Description for a Dataset.</p>") datasetDescription: option<datasetDescription>,
  @ocaml.doc("<p>The format in which Dataset data is structured.</p>
         <ul>
            <li>
               <p>
                  <code>TABULAR</code> – Data is structured in a tabular format.</p>
            </li>
            <li>
               <p>
                  <code>NON_TABULAR</code> – Data is structured in a non-tabular format.</p>
            </li>
         </ul>")
  kind: option<datasetKind>,
  @ocaml.doc("<p>Display title for a Dataset.</p>") datasetTitle: option<datasetTitle>,
  @ocaml.doc("<p>The ARN identifier of the Dataset.</p>") datasetArn: option<datasetArn>,
  @ocaml.doc("<p>An identifier for a Dataset.</p>") datasetId: option<datasetId>,
}
@ocaml.doc("List of Dataset structures") type datasetList = array<dataset>
@ocaml.doc("<p> The FinSpace APIs let you take actions inside the FinSpace.</p>")
module UpdateUser = {
  type t
  type request = {
    @ocaml.doc("<p>A token that ensures idempotency. This token expires in 10 minutes.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc(
      "<p>The ARN identifier of an AWS user or role that is allowed to call the <code>GetProgrammaticAccessCredentials</code> API to obtain a credentials token for a specific FinSpace user. This must be an IAM role within your FinSpace account.</p>"
    )
    apiAccessPrincipalArn: option<roleArn>,
    @ocaml.doc("<p>The option to indicate whether the user can use the <code>GetProgrammaticAccessCredentials</code> API to obtain credentials that can then be used to access other FinSpace Data API operations.</p>
         <ul>
            <li>
               <p>
                  <code>ENABLED</code> – The user has permissions to use the APIs.</p>
            </li>
            <li>
               <p>
                  <code>DISABLED</code> – The user does not have permissions to use any APIs.</p>
            </li>
         </ul>")
    apiAccess: option<apiAccess>,
    @ocaml.doc("<p>The last name of the user.</p>") lastName: option<lastName>,
    @ocaml.doc("<p>The first name of the user.</p>") firstName: option<firstName>,
    @ocaml.doc("<p>The option to indicate the type of user.</p>
         <ul>
            <li>
               <p>
                  <code>SUPER_USER</code>– A user with permission to all the functionality and data in FinSpace.</p>
            </li>
            <li>
               <p>
                  <code>APP_USER</code> – A user with specific permissions in FinSpace. The users are assigned permissions by adding them to a permissions group.</p>
            </li>
         </ul>")
    @as("type")
    type_: option<userType>,
    @ocaml.doc("<p>The unique identifier for the user account to update.</p>") userId: userId,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of the updated user account.</p>") userId: option<userId>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "UpdateUserCommand"
  let make = (
    ~userId,
    ~clientToken=?,
    ~apiAccessPrincipalArn=?,
    ~apiAccess=?,
    ~lastName=?,
    ~firstName=?,
    ~type_=?,
    (),
  ) => new({clientToken, apiAccessPrincipalArn, apiAccess, lastName, firstName, type_, userId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ResetUserPassword = {
  type t
  type request = {
    @ocaml.doc("<p>A token that ensures idempotency. This token expires in 10 minutes.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc(
      "<p>The unique identifier of the user that a temporary password is requested for.</p>"
    )
    userId: userId,
  }
  type response = {
    @ocaml.doc(
      "<p>A randomly generated temporary password for the requested user account. This password expires in 7 days.</p>"
    )
    temporaryPassword: option<password>,
    @ocaml.doc("<p>The unique identifier of the user that a new password is generated for.</p>")
    userId: option<userId>,
  }
  @module("@aws-sdk/client-finspace-api") @new
  external new: request => t = "ResetUserPasswordCommand"
  let make = (~userId, ~clientToken=?, ()) => new({clientToken, userId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetWorkingLocation = {
  type t
  type request = {
    @ocaml.doc("<p>Specify the type of the working location.</p>
         <ul>
            <li>
               <p>
                  <code>SAGEMAKER</code> – Use the Amazon S3 location as a temporary location to store data content when
          working with FinSpace Notebooks that run on SageMaker studio.</p>
            </li>
            <li>
               <p>
                  <code>INGESTION</code> – Use the Amazon S3 location as a staging location to copy your
          data content and then use the location with the Changeset creation operation.</p>
            </li>
         </ul>")
    locationType: option<locationType>,
  }
  type response = {
    @ocaml.doc("<p>Returns the Amazon S3 bucket name for the working location.</p>")
    s3Bucket: option<stringValueLength1to63>,
    @ocaml.doc("<p>Returns the Amazon S3 Path for the working location.</p>")
    s3Path: option<stringValueLength1to1024>,
    @ocaml.doc("<p>Returns the Amazon S3 URI for the working location.</p>")
    s3Uri: option<stringValueLength1to1024>,
  }
  @module("@aws-sdk/client-finspace-api") @new
  external new: request => t = "GetWorkingLocationCommand"
  let make = (~locationType=?, ()) => new({locationType: locationType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetUser = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the user to get data for.</p>") userId: userId,
  }
  type response = {
    @ocaml.doc(
      "<p>Describes the last time that the user logged into their account. The value is determined as epoch time in milliseconds.</p>"
    )
    lastLoginTime: option<timestampEpoch>,
    @ocaml.doc(
      "<p>Describes the last time the user account was updated. The value is determined as epoch time in milliseconds.</p>"
    )
    lastModifiedTime: option<timestampEpoch>,
    @ocaml.doc(
      "<p>Describes the last time the user account was disabled. The value is determined as epoch time in milliseconds.</p>"
    )
    lastDisabledTime: option<timestampEpoch>,
    @ocaml.doc(
      "<p>Describes the last time the user account was enabled. The value is determined as epoch time in milliseconds.</p>"
    )
    lastEnabledTime: option<timestampEpoch>,
    @ocaml.doc(
      "<p>The timestamp at which the user account was created in FinSpace. The value is determined as epoch time in milliseconds. </p>"
    )
    createTime: option<timestampEpoch>,
    @ocaml.doc(
      "<p>The ARN identifier of an AWS user or role that is allowed to call the <code>GetProgrammaticAccessCredentials</code> API to obtain a credentials token for a specific FinSpace user. This must be an IAM role within your FinSpace account.</p>"
    )
    apiAccessPrincipalArn: option<roleArn>,
    @ocaml.doc("<p>Indicates whether the user can use the <code>GetProgrammaticAccessCredentials</code> API to obtain credentials that can then be used to access other FinSpace Data API operations. </p>
         <ul>
            <li>
               <p>
                  <code>ENABLED</code> – The user has permissions to use the APIs.</p>
            </li>
            <li>
               <p>
                  <code>DISABLED</code> – The user does not have permissions to use any APIs.</p>
            </li>
         </ul>")
    apiAccess: option<apiAccess>,
    @ocaml.doc("<p>Indicates the type of user.  </p>
         <ul>
            <li>
               <p>
                  <code>SUPER_USER</code> – A user with permission to all the functionality and data in FinSpace.</p>
            </li>
         </ul>
         <ul>
            <li>
               <p>
                  <code>APP_USER</code> – A user with specific permissions in FinSpace. The users are assigned permissions by adding them to a permissions group.</p>
            </li>
         </ul>")
    @as("type")
    type_: option<userType>,
    @ocaml.doc("<p>The email address that is associated with the user.</p>")
    emailAddress: option<email>,
    @ocaml.doc("<p>The last name of the user.</p>") lastName: option<lastName>,
    @ocaml.doc("<p>The first name of the user.</p>") firstName: option<firstName>,
    @ocaml.doc("<p>The current status of the user account. </p>
         <ul>
            <li>
               <p>
                  <code>CREATING</code> – The user account creation is in progress.</p>
            </li>
            <li>
               <p>
                  <code>ENABLED</code> – The user account is created and is currently active.</p>
            </li>
            <li>
               <p>
                  <code>DISABLED</code> – The user account is currently inactive.</p>
            </li>
         </ul>")
    status: option<userStatus>,
    @ocaml.doc("<p>The unique identifier for the user account that is retrieved.</p>")
    userId: option<userId>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "GetUserCommand"
  let make = (~userId, ()) => new({userId: userId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module EnableUser = {
  type t
  type request = {
    @ocaml.doc("<p>A token that ensures idempotency. This token expires in 10 minutes.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The unique identifier for the user account that you want to enable.</p>")
    userId: userId,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for the enabled user account.</p>") userId: option<userId>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "EnableUserCommand"
  let make = (~userId, ~clientToken=?, ()) => new({clientToken, userId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisableUser = {
  type t
  type request = {
    @ocaml.doc("<p>A token that ensures idempotency. This token expires in 10 minutes.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The unique identifier for the user account that you want to disable.</p>")
    userId: userId,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for the disabled user account.</p>")
    userId: option<userId>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "DisableUserCommand"
  let make = (~userId, ~clientToken=?, ()) => new({clientToken, userId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeletePermissionGroup = {
  type t
  type request = {
    @ocaml.doc("<p>A token that ensures idempotency. This token expires in 10 minutes.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The unique identifier for the permission group that you want to delete.</p>")
    permissionGroupId: permissionGroupId,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for the deleted permission group.</p>")
    permissionGroupId: option<permissionGroupId>,
  }
  @module("@aws-sdk/client-finspace-api") @new
  external new: request => t = "DeletePermissionGroupCommand"
  let make = (~permissionGroupId, ~clientToken=?, ()) => new({clientToken, permissionGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteDataset = {
  type t
  @ocaml.doc("The request for a DeleteDataset operation.")
  type request = {
    @ocaml.doc("<p>The unique identifier of the Dataset to be deleted.</p>") datasetId: datasetId,
    @ocaml.doc("<p>A token that ensures idempotency. This token expires in 10 minutes.</p>")
    clientToken: option<clientToken>,
  }
  @ocaml.doc("The response from an DeleteDataset operation")
  type response = {
    @ocaml.doc("<p>The unique identifier for the deleted Dataset.</p>")
    datasetId: option<datasetId>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "DeleteDatasetCommand"
  let make = (~datasetId, ~clientToken=?, ()) => new({datasetId, clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateUser = {
  type t
  type request = {
    @ocaml.doc("<p>A token that ensures idempotency. This token expires in 10 minutes.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc(
      "<p>The ARN identifier of an AWS user or role that is allowed to call the <code>GetProgrammaticAccessCredentials</code> API to obtain a credentials token for a specific FinSpace user. This must be an IAM role within your FinSpace account.</p>"
    )
    apiAccessPrincipalArn: option<roleArn>,
    @ocaml.doc("<p>The option to indicate whether the user can use the <code>GetProgrammaticAccessCredentials</code> API to obtain credentials that can then be used to access other FinSpace Data API operations.</p>
         <ul>
            <li>
               <p>
                  <code>ENABLED</code> – The user has permissions to use the APIs.</p>
            </li>
            <li>
               <p>
                  <code>DISABLED</code> – The user does not have permissions to use any APIs.</p>
            </li>
         </ul>")
    @as("ApiAccess")
    apiAccess: option<apiAccess>,
    @ocaml.doc("<p>The last name of the user that you want to register.</p>")
    lastName: option<lastName>,
    @ocaml.doc("<p>The first name of the user that you want to register.</p>")
    firstName: option<firstName>,
    @ocaml.doc("<p>The option to indicate the type of user. Use one of the following options to specify this parameter:</p>
         <ul>
            <li>
               <p>
                  <code>SUPER_USER</code> – A user with permission to all the functionality and data in FinSpace.</p>
            </li>
            <li>
               <p>
                  <code>APP_USER</code> – A user with specific permissions in FinSpace. The users are assigned permissions by adding them to a permission group.</p>
            </li>
         </ul>")
    @as("type")
    type_: userType,
    @ocaml.doc(
      "<p>The email address of the user that you want to register. The email address serves as a uniquer identifier for each user and cannot be changed after it's created.</p>"
    )
    emailAddress: email,
  }
  type response = {@ocaml.doc("<p>The unique identifier for the user.</p>") userId: option<userId>}
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "CreateUserCommand"
  let make = (
    ~type_,
    ~emailAddress,
    ~clientToken=?,
    ~apiAccessPrincipalArn=?,
    ~apiAccess=?,
    ~lastName=?,
    ~firstName=?,
    (),
  ) =>
    new({clientToken, apiAccessPrincipalArn, apiAccess, lastName, firstName, type_, emailAddress})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdatePermissionGroup = {
  type t
  type request = {
    @ocaml.doc("<p>A token that ensures idempotency. This token expires in 10 minutes.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The permissions that are granted to a specific group for accessing the FinSpace application.</p>
         <ul>
            <li>
               <p>
                  <code>CreateDataset</code> – Group members can create new datasets.</p>
            </li>
            <li>
               <p>
                  <code>ManageClusters</code> – Group members can manage Apache Spark clusters from FinSpace notebooks.</p>
            </li>
            <li>
               <p>
                  <code>ManageUsersAndGroups</code> – Group members can manage users and permission groups.</p>
            </li>
            <li>
               <p>
                  <code>ManageAttributeSets</code> – Group members can manage attribute sets.</p>
            </li>
            <li>
               <p>
                  <code>ViewAuditData</code> – Group members can view audit data.</p>
            </li>
            <li>
               <p>
                  <code>AccessNotebooks</code> – Group members will have access to FinSpace notebooks.</p>
            </li>
            <li>
               <p>
                  <code>GetTemporaryCredentials</code> – Group members can get temporary API credentials.</p>
            </li>
         </ul>")
    applicationPermissions: option<applicationPermissionList>,
    @ocaml.doc("<p>A brief description for the permission group.</p>")
    description: option<permissionGroupDescription>,
    @ocaml.doc("<p>The name of the permission group.</p>") name: option<permissionGroupName>,
    @ocaml.doc("<p>The unique identifier for the permission group to update.</p>")
    permissionGroupId: permissionGroupId,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for the updated permission group.</p>")
    permissionGroupId: option<permissionGroupId>,
  }
  @module("@aws-sdk/client-finspace-api") @new
  external new: request => t = "UpdatePermissionGroupCommand"
  let make = (
    ~permissionGroupId,
    ~clientToken=?,
    ~applicationPermissions=?,
    ~description=?,
    ~name=?,
    (),
  ) => new({clientToken, applicationPermissions, description, name, permissionGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateChangeset = {
  type t
  @ocaml.doc("Request to update an existing changeset.")
  type request = {
    @ocaml.doc("<p>Options that define the structure of the source file(s) including the format type (<code>formatType</code>), header row (<code>withHeader</code>), data separation character (<code>separator</code>) and the type of compression (<code>compression</code>).
    </p>
         <p>
            <code>formatType</code> is a required attribute and can have the following values:
    </p>
         <ul>
            <li>
               <p>
                  <code>PARQUET</code> – Parquet source file format.</p>
            </li>
            <li>
               <p>
                  <code>CSV</code> – CSV source file format.</p>
            </li>
            <li>
               <p>
                  <code>JSON</code> – JSON source file format.</p>
            </li>
            <li>
               <p>
                  <code>XML</code> – XML source file format.</p>
            </li>
         </ul>
    
         <p>Here is an example of how you could specify the <code>formatParams</code>:</p>
         <p>
            <code>
        \"formatParams\": 
        {
        \"formatType\": \"CSV\",
        \"withHeader\": \"true\",
        \"separator\": \",\",
        \"compression\":\"None\"
        } 
      </code> 
         </p>
         <p>Note that if you only provide <code>formatType</code> as <code>CSV</code>, the rest of the attributes will automatically default to CSV values as following:</p>
         <p>
            <code>
        {
        \"withHeader\": \"true\",
        \"separator\": \",\"
        }
        </code>
         </p>
         <p> For more information about supported file formats, see <a href=\"https://docs.aws.amazon.com/finspace/latest/userguide/supported-data-types.html\">Supported Data Types and File Formats</a> in the FinSpace User Guide.</p>")
    formatParams: formatParams,
    @ocaml.doc("<p>Options that define the location of the data being ingested (<code>s3SourcePath</code>) and the source of the changeset (<code>sourceType</code>).</p>
         <p>Both <code>s3SourcePath</code> and <code>sourceType</code> are required attributes.</p>
         <p>Here is an example of how you could specify the <code>sourceParams</code>:</p>
         <p>
            <code>
        \"sourceParams\": 
        {
        \"s3SourcePath\": \"s3://finspace-landing-us-east-2-bk7gcfvitndqa6ebnvys4d/scratch/wr5hh8pwkpqqkxa4sxrmcw/ingestion/equity.csv\",
        \"sourceType\": \"S3\"
        }
      </code>
         </p>
         <p>The S3 path that you specify must allow the FinSpace role access. To do that, you first need to configure the IAM policy on S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#access-s3-buckets\">Loading data from an Amazon S3 Bucket using the FinSpace API</a>section.</p>")
    sourceParams: sourceParams,
    @ocaml.doc("<p>The unique identifier for the Changeset to update.</p>")
    changesetId: changesetId,
    @ocaml.doc(
      "<p>The unique identifier for the FinSpace Dataset in which the Changeset is created.</p>"
    )
    datasetId: datasetId,
    @ocaml.doc("<p>A token that ensures idempotency. This token expires in 10 minutes.</p>")
    clientToken: option<clientToken>,
  }
  @ocaml.doc("The response from a update changeset operation.")
  type response = {
    @ocaml.doc(
      "<p>The unique identifier for the FinSpace Dataset in which the Changeset is created.</p>"
    )
    datasetId: option<datasetId>,
    @ocaml.doc("<p>The unique identifier for the Changeset to update.</p>")
    changesetId: option<changesetId>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "UpdateChangesetCommand"
  let make = (~formatParams, ~sourceParams, ~changesetId, ~datasetId, ~clientToken=?, ()) =>
    new({formatParams, sourceParams, changesetId, datasetId, clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetProgrammaticAccessCredentials = {
  type t
  @ocaml.doc("Request for GetProgrammaticAccessCredentials operation")
  type request = {
    @ocaml.doc("<p>The FinSpace environment identifier.</p>") environmentId: idType,
    @ocaml.doc("<p>The time duration in which the credentials remain valid. </p>")
    durationInMinutes: option<sessionDuration>,
  }
  @ocaml.doc("Response for GetProgrammaticAccessCredentials operation")
  type response = {
    @ocaml.doc("<p>Returns the duration in which the credentials will remain valid.</p>")
    durationInMinutes: option<sessionDuration>,
    @ocaml.doc("<p>Returns the programmatic credentials.</p>") credentials: option<credentials>,
  }
  @module("@aws-sdk/client-finspace-api") @new
  external new: request => t = "GetProgrammaticAccessCredentialsCommand"
  let make = (~environmentId, ~durationInMinutes=?, ()) => new({environmentId, durationInMinutes})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetChangeset = {
  type t
  @ocaml.doc("Request to describe a changeset.")
  type request = {
    @ocaml.doc("<p>The unique identifier of the Changeset for which to get data.</p>")
    changesetId: changesetId,
    @ocaml.doc(
      "<p>The unique identifier for the FinSpace Dataset where the Changeset is created.</p>"
    )
    datasetId: datasetId,
  }
  @ocaml.doc("The response from a describe changeset operation")
  type response = {
    @ocaml.doc("<p>The unique identifier of the updated Changeset.</p>")
    updatedByChangesetId: option<changesetId>,
    @ocaml.doc("<p>The unique identifier of the Changeset that is being updated.</p>")
    updatesChangesetId: option<changesetId>,
    @ocaml.doc(
      "<p>Beginning time from which the Changeset is active. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"
    )
    activeFromTimestamp: option<timestampEpoch>,
    @ocaml.doc(
      "<p>Time until which the Changeset is active. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"
    )
    activeUntilTimestamp: option<timestampEpoch>,
    @ocaml.doc("<p>The structure with error messages.</p>") errorInfo: option<changesetErrorInfo>,
    @ocaml.doc("<p>The status of Changeset creation operation.</p>")
    status: option<ingestionStatus>,
    @ocaml.doc(
      "<p>The timestamp at which the Changeset was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"
    )
    createTime: option<timestampEpoch>,
    @ocaml.doc("<p>Structure of the source file(s).</p>") formatParams: option<formatParams>,
    @ocaml.doc("<p>Options that define the location of the data being ingested.</p>")
    sourceParams: option<sourceParams>,
    @ocaml.doc("<p>Type that indicates how a Changeset is applied to a Dataset.</p>
         <ul>
            <li>
               <p>
                  <code>REPLACE</code> – Changeset is considered as a replacement to all prior loaded Changesets.</p>
            </li>
            <li>
               <p>
                  <code>APPEND</code> – Changeset is considered as an addition to the end of all prior loaded Changesets.</p>
            </li>
            <li>
               <p>
                  <code>MODIFY</code> – Changeset is considered as a replacement to a specific prior ingested Changeset.</p>
            </li>
         </ul>")
    changeType: option<changeType>,
    @ocaml.doc(
      "<p>The unique identifier for the FinSpace Dataset where the Changeset is created.</p>"
    )
    datasetId: option<datasetId>,
    @ocaml.doc("<p>The ARN identifier of the Changeset.</p>") changesetArn: option<changesetArn>,
    @ocaml.doc("<p>The unique identifier for a Changeset.</p>") changesetId: option<changesetId>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "GetChangesetCommand"
  let make = (~changesetId, ~datasetId, ()) => new({changesetId, datasetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreatePermissionGroup = {
  type t
  type request = {
    @ocaml.doc("<p>A token that ensures idempotency. This token expires in 10 minutes.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The option to indicate FinSpace application permissions that are granted to a specific group.</p>
         <ul>
            <li>
               <p>
                  <code>CreateDataset</code> – Group members can create new datasets.</p>
            </li>
            <li>
               <p>
                  <code>ManageClusters</code> – Group members can manage Apache Spark clusters from FinSpace notebooks.</p>
            </li>
            <li>
               <p>
                  <code>ManageUsersAndGroups</code> – Group members can manage users and permission groups.</p>
            </li>
            <li>
               <p>
                  <code>ManageAttributeSets</code> – Group members can manage attribute sets.</p>
            </li>
            <li>
               <p>
                  <code>ViewAuditData</code> – Group members can view audit data.</p>
            </li>
            <li>
               <p>
                  <code>AccessNotebooks</code> – Group members will have access to FinSpace notebooks.</p>
            </li>
            <li>
               <p>
                  <code>GetTemporaryCredentials</code> – Group members can get temporary API credentials.</p>
            </li>
         </ul>")
    applicationPermissions: applicationPermissionList,
    @ocaml.doc("<p>A brief description for the permission group.</p>")
    description: option<permissionGroupDescription>,
    @ocaml.doc("<p>The name of the permission group.</p>") name: permissionGroupName,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for the permission group.</p>")
    permissionGroupId: option<permissionGroupId>,
  }
  @module("@aws-sdk/client-finspace-api") @new
  external new: request => t = "CreatePermissionGroupCommand"
  let make = (~applicationPermissions, ~name, ~clientToken=?, ~description=?, ()) =>
    new({clientToken, applicationPermissions, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateChangeset = {
  type t
  @ocaml.doc("The request for a CreateChangeset operation.")
  type request = {
    @ocaml.doc("<p>Options that define the structure of the source file(s) including the format type (<code>formatType</code>), header row (<code>withHeader</code>), data separation character (<code>separator</code>) and the type of compression (<code>compression</code>).
    </p>
         <p>
            <code>formatType</code> is a required attribute and can have the following values:
    </p>
         <ul>
            <li>
               <p>
                  <code>PARQUET</code> – Parquet source file format.</p>
            </li>
            <li>
               <p>
                  <code>CSV</code> – CSV source file format.</p>
            </li>
            <li>
               <p>
                  <code>JSON</code> – JSON source file format.</p>
            </li>
            <li>
               <p>
                  <code>XML</code> – XML source file format.</p>
            </li>
         </ul>
    
         <p>Here is an example of how you could specify the <code>formatParams</code>:</p>
         <p>
            <code>
          \"formatParams\": 
        {
         \"formatType\": \"CSV\",
         \"withHeader\": \"true\",
         \"separator\": \",\",
         \"compression\":\"None\"
         } 
      </code> 
         </p>
         <p>Note that if you only provide <code>formatType</code> as <code>CSV</code>, the rest of the attributes will automatically default to CSV values as following:</p>
         <p>
            <code>
          {
          \"withHeader\": \"true\",
          \"separator\": \",\"
           }
        </code>
         </p>
         <p> For more information about supported file formats, see <a href=\"https://docs.aws.amazon.com/finspace/latest/userguide/supported-data-types.html\">Supported Data Types and File Formats</a> in the FinSpace User Guide.</p>")
    formatParams: formatParams,
    @ocaml.doc("<p>Options that define the location of the data being ingested (<code>s3SourcePath</code>) and the source of the changeset (<code>sourceType</code>).</p>
         <p>Both <code>s3SourcePath</code> and <code>sourceType</code> are required attributes.</p>
         <p>Here is an example of how you could specify the <code>sourceParams</code>:</p>
         <p>
            <code>
        \"sourceParams\": 
        {
        \"s3SourcePath\": \"s3://finspace-landing-us-east-2-bk7gcfvitndqa6ebnvys4d/scratch/wr5hh8pwkpqqkxa4sxrmcw/ingestion/equity.csv\",
        \"sourceType\": \"S3\"
        }
      </code>
         </p>
         <p>The S3 path that you specify must allow the FinSpace role access. To do that, you first need to configure the IAM policy on S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#access-s3-buckets\">Loading data from an Amazon S3 Bucket using the FinSpace API</a> section.</p>")
    sourceParams: sourceParams,
    @ocaml.doc("<p>The option to indicate how a Changeset will be applied to a Dataset.</p>
         <ul>
            <li>
               <p>
                  <code>REPLACE</code> – Changeset will be considered as a replacement to all prior
          loaded Changesets.</p>
            </li>
            <li>
               <p>
                  <code>APPEND</code> – Changeset will be considered as an addition to the end of all
          prior loaded Changesets.</p>
            </li>
            <li>
               <p>
                  <code>MODIFY</code> – Changeset is considered as a replacement to a specific prior ingested Changeset.</p>
            </li>
         </ul>")
    changeType: changeType,
    @ocaml.doc("<p>The unique identifier for the FinSpace Dataset where the Changeset will be created.
    </p>")
    datasetId: datasetId,
    @ocaml.doc("<p>A token that ensures idempotency. This token expires in 10 minutes.</p>")
    clientToken: option<clientToken>,
  }
  @ocaml.doc("The response from a CreateChangeset operation.")
  type response = {
    @ocaml.doc("<p>The unique identifier of the Changeset that is created.</p>")
    changesetId: option<changesetId>,
    @ocaml.doc(
      "<p>The unique identifier for the FinSpace Dataset where the Changeset is created.</p>"
    )
    datasetId: option<datasetId>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "CreateChangesetCommand"
  let make = (~formatParams, ~sourceParams, ~changeType, ~datasetId, ~clientToken=?, ()) =>
    new({formatParams, sourceParams, changeType, datasetId, clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListUsers = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results per page.</p>") maxResults: resultLimit,
    @ocaml.doc("<p>A token that indicates where a results page should begin.</p>")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>A token that indicates where a results page should begin.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of all the user accounts.</p>") users: option<userList>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "ListUsersCommand"
  let make = (~maxResults, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDataView = {
  type t
  @ocaml.doc(
    "Request for retrieving a data view detail. Grouped / accessible within a dataset by its dataset id."
  )
  type request = {
    @ocaml.doc("<p>The unique identifier for the Dataset used in the Dataview.</p>")
    datasetId: datasetId,
    @ocaml.doc("<p>The unique identifier for the Dataview.</p>") dataViewId: dataViewId,
  }
  @ocaml.doc(
    "Response from retrieving a dataview, which includes details on the target database and table name"
  )
  type response = {
    @ocaml.doc("<p>The status of a Dataview creation.</p>
         <ul>
            <li>
               <p>
                  <code>RUNNING</code> – Dataview creation is running.</p>
            </li>
            <li>
               <p>
                  <code>STARTING</code> – Dataview creation is starting.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> – Dataview creation has failed.</p>
            </li>
            <li>
               <p>
                  <code>CANCELLED</code> – Dataview creation has been cancelled.</p>
            </li>
            <li> 
               <p>
                  <code>TIMEOUT</code> – Dataview creation has timed out.</p>
            </li>
            <li>
               <p>
                  <code>SUCCESS</code> – Dataview creation has succeeded.</p>
            </li>
            <li>
               <p>
                  <code>PENDING</code> – Dataview creation is pending.</p>
            </li>
            <li>
               <p>
                  <code>FAILED_CLEANUP_FAILED</code> – Dataview creation failed and resource cleanup failed.</p>
            </li>
         </ul>")
    status: option<dataViewStatus>,
    @ocaml.doc("<p>Options that define the destination type for the Dataview.</p>")
    destinationTypeParams: option<dataViewDestinationTypeParams>,
    @ocaml.doc("<p>The ARN identifier of the Dataview.</p>") dataViewArn: option<dataViewArn>,
    @ocaml.doc("<p>The unique identifier for the Dataview.</p>") dataViewId: option<dataViewId>,
    @ocaml.doc("<p>Columns to be used for sorting the data.</p>")
    sortColumns: option<sortColumnList>,
    @ocaml.doc(
      "<p>The timestamp at which the Dataview was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"
    )
    createTime: option<timestampEpoch>,
    @ocaml.doc(
      "<p>The last time that a Dataview was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"
    )
    lastModifiedTime: option<timestampEpoch>,
    @ocaml.doc("<p>Information about an error that occurred for the Dataview.</p>")
    errorInfo: option<dataViewErrorInfo>,
    @ocaml.doc(
      "<p>Time range to use for the Dataview. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"
    )
    asOfTimestamp: option<timestampEpoch>,
    @ocaml.doc("<p>The unique identifier for the Dataset used in the Dataview.</p>")
    datasetId: option<datasetId>,
    @ocaml.doc("<p>Ordered set of column names used to partition data.</p>")
    partitionColumns: option<partitionColumnList>,
    @ocaml.doc("<p>Flag to indicate Dataview should be updated automatically.</p>")
    autoUpdate: option<boolean_>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "GetDataViewCommand"
  let make = (~datasetId, ~dataViewId, ()) => new({datasetId, dataViewId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDataView = {
  type t
  @ocaml.doc("Request for creating a data view.")
  type request = {
    @ocaml.doc("<p>Options that define the destination type for the Dataview.</p>")
    destinationTypeParams: dataViewDestinationTypeParams,
    @ocaml.doc(
      "<p>Beginning time to use for the Dataview. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"
    )
    asOfTimestamp: option<timestampEpoch>,
    @ocaml.doc("<p>Ordered set of column names used to partition data.</p>")
    partitionColumns: option<partitionColumnList>,
    @ocaml.doc("<p>Columns to be used for sorting the data.</p>")
    sortColumns: option<sortColumnList>,
    @ocaml.doc("<p>Flag to indicate Dataview should be updated automatically.</p>")
    autoUpdate: option<boolean_>,
    @ocaml.doc("<p>The unique Dataset identifier that is used to create a Dataview.</p>")
    datasetId: datasetId,
    @ocaml.doc("<p>A token that ensures idempotency. This token expires in 10 minutes.</p>")
    clientToken: option<clientToken>,
  }
  @ocaml.doc("Response for creating a data view.")
  type response = {
    @ocaml.doc("<p>The unique identifier for the created Dataview.</p>")
    dataViewId: option<dataViewId>,
    @ocaml.doc("<p>The unique identifier of the Dataset used for the Dataview.</p>")
    datasetId: option<datasetId>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "CreateDataViewCommand"
  let make = (
    ~destinationTypeParams,
    ~datasetId,
    ~asOfTimestamp=?,
    ~partitionColumns=?,
    ~sortColumns=?,
    ~autoUpdate=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      destinationTypeParams,
      asOfTimestamp,
      partitionColumns,
      sortColumns,
      autoUpdate,
      datasetId,
      clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListPermissionGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results per page.</p>") maxResults: resultLimit,
    @ocaml.doc("<p>A token that indicates where a results page should begin.</p>")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>A token that indicates where a results page should begin.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of all the permission groups.</p>")
    permissionGroups: option<permissionGroupList>,
  }
  @module("@aws-sdk/client-finspace-api") @new
  external new: request => t = "ListPermissionGroupsCommand"
  let make = (~maxResults, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChangesets = {
  type t
  @ocaml.doc("Request to ListChangesetsRequest. It exposes minimal query filters.")
  type request = {
    @ocaml.doc("<p>A token that indicates where a results page should begin.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of results per page.</p>") maxResults: option<resultLimit>,
    @ocaml.doc(
      "<p>The unique identifier for the FinSpace Dataset to which the Changeset belongs.</p>"
    )
    datasetId: datasetId,
  }
  @ocaml.doc(
    "Response to ListChangesetsResponse. This returns a list of dataset changesets that match the query criteria."
  )
  type response = {
    @ocaml.doc("<p>A token that indicates where a results page should begin.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>List of Changesets found.</p>") changesets: option<changesetList>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "ListChangesetsCommand"
  let make = (~datasetId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, datasetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateDataset = {
  type t
  @ocaml.doc("The request for an UpdateDataset operation")
  type request = {
    @ocaml.doc("<p>Definition for a schema on a tabular Dataset.</p>")
    schemaDefinition: option<schemaUnion>,
    @ocaml.doc("<p>The unique resource identifier for a Dataset.</p>") alias: option<aliasString>,
    @ocaml.doc("<p>A description for the Dataset.</p>")
    datasetDescription: option<datasetDescription>,
    @ocaml.doc("<p>The format in which the Dataset data is structured.</p>
         <ul>
            <li>
               <p>
                  <code>TABULAR</code> – Data is structured in a tabular format.</p>
            </li>
            <li>
               <p>
                  <code>NON_TABULAR</code> – Data is structured in a non-tabular format.</p>
            </li>
         </ul>")
    kind: datasetKind,
    @ocaml.doc("<p>A display title for the Dataset.</p>") datasetTitle: datasetTitle,
    @ocaml.doc("<p>The unique identifier for the Dataset to update.</p>") datasetId: datasetId,
    @ocaml.doc("<p>A token that ensures idempotency. This token expires in 10 minutes.</p>")
    clientToken: option<clientToken>,
  }
  @ocaml.doc("The response from an UpdateDataset operation")
  type response = {
    @ocaml.doc("<p>The unique identifier for updated Dataset.</p>") datasetId: option<datasetId>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "UpdateDatasetCommand"
  let make = (
    ~kind,
    ~datasetTitle,
    ~datasetId,
    ~schemaDefinition=?,
    ~alias=?,
    ~datasetDescription=?,
    ~clientToken=?,
    (),
  ) =>
    new({schemaDefinition, alias, datasetDescription, kind, datasetTitle, datasetId, clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDataViews = {
  type t
  @ocaml.doc("Request for a list data views.")
  type request = {
    @ocaml.doc("<p>The maximum number of results per page.</p>") maxResults: option<resultLimit>,
    @ocaml.doc("<p>A token that indicates where a results page should begin.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The unique identifier of the Dataset for which to retrieve Dataviews.</p>")
    datasetId: datasetId,
  }
  type response = {
    @ocaml.doc("<p>A list of Dataviews.</p>") dataViews: option<dataViewList>,
    @ocaml.doc("<p>A token that indicates where a results page should begin.</p>")
    nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "ListDataViewsCommand"
  let make = (~datasetId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, datasetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDataset = {
  type t
  @ocaml.doc("Request for the GetDataset operation.")
  type request = {
    @ocaml.doc("<p>The unique identifier for a Dataset.</p>") datasetId: stringValueLength1to255,
  }
  @ocaml.doc("Response for the GetDataset operation")
  type response = {
    @ocaml.doc("<p>Status of the Dataset creation.</p>
         <ul>
            <li>
               <p>
                  <code>PENDING</code> – Dataset is pending creation.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> – Dataset creation has failed.</p>
            </li>
            <li>
               <p>
                  <code>SUCCESS</code> – Dataset creation has succeeded.</p>
            </li>
            <li>
               <p>
                  <code>RUNNING</code> – Dataset creation is running.</p>
            </li>
         </ul>")
    status: option<datasetStatus>,
    @ocaml.doc("<p>The unique resource identifier for a Dataset.</p>") alias: option<aliasString>,
    @ocaml.doc("<p>Definition for a schema on a tabular Dataset.</p>")
    schemaDefinition: option<schemaUnion>,
    @ocaml.doc(
      "<p>The last time that the Dataset was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"
    )
    lastModifiedTime: option<timestampEpoch>,
    @ocaml.doc(
      "<p>The timestamp at which the Dataset was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"
    )
    createTime: option<timestampEpoch>,
    @ocaml.doc("<p>A description of the Dataset.</p>")
    datasetDescription: option<datasetDescription>,
    @ocaml.doc("<p>The format in which Dataset data is structured.</p>
         <ul>
            <li>
               <p>
                  <code>TABULAR</code> – Data is structured in a tabular format.</p>
            </li>
            <li>
               <p>
                  <code>NON_TABULAR</code> – Data is structured in a non-tabular format.</p>
            </li>
         </ul>")
    kind: option<datasetKind>,
    @ocaml.doc("<p>Display title for a Dataset.</p>") datasetTitle: option<datasetTitle>,
    @ocaml.doc("<p>The ARN identifier of the Dataset.</p>") datasetArn: option<datasetArn>,
    @ocaml.doc("<p>The unique identifier for a Dataset.</p>") datasetId: option<datasetId>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "GetDatasetCommand"
  let make = (~datasetId, ()) => new({datasetId: datasetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDataset = {
  type t
  @ocaml.doc("The request for a CreateDataset operation")
  type request = {
    @ocaml.doc("<p>Definition for a schema on a tabular Dataset.</p>")
    schemaDefinition: option<schemaUnion>,
    @ocaml.doc("<p>The unique resource identifier for a Dataset.</p>") alias: option<aliasString>,
    @ocaml.doc("<p>Permission group parameters for Dataset permissions.</p>")
    permissionGroupParams: permissionGroupParams,
    @ocaml.doc("<p>Contact information for a Dataset owner.</p>")
    ownerInfo: option<datasetOwnerInfo>,
    @ocaml.doc("<p>Description of a Dataset.</p>") datasetDescription: option<datasetDescription>,
    @ocaml.doc("<p>The format in which Dataset data is structured.</p>
         <ul>
            <li>
               <p>
                  <code>TABULAR</code> – Data is structured in a tabular format.</p>
            </li>
            <li>
               <p>
                  <code>NON_TABULAR</code> – Data is structured in a non-tabular format.</p>
            </li>
         </ul>")
    kind: datasetKind,
    @ocaml.doc("<p>Display title for a FinSpace Dataset.</p>") datasetTitle: datasetTitle,
    @ocaml.doc("<p>A token that ensures idempotency. This token expires in 10 minutes.</p>")
    clientToken: option<clientToken>,
  }
  @ocaml.doc("The response from a CreateDataset operation")
  type response = {
    @ocaml.doc("<p>The unique identifier for the created Dataset.</p>")
    datasetId: option<datasetId>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "CreateDatasetCommand"
  let make = (
    ~permissionGroupParams,
    ~kind,
    ~datasetTitle,
    ~schemaDefinition=?,
    ~alias=?,
    ~ownerInfo=?,
    ~datasetDescription=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      schemaDefinition,
      alias,
      permissionGroupParams,
      ownerInfo,
      datasetDescription,
      kind,
      datasetTitle,
      clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDatasets = {
  type t
  @ocaml.doc("Request for the ListDatasets operation.")
  type request = {
    @ocaml.doc("<p>The maximum number of results per page.</p>") maxResults: option<resultLimit>,
    @ocaml.doc("<p>A token that indicates where a results page should begin.</p>")
    nextToken: option<paginationToken>,
  }
  @ocaml.doc("Response for the ListDatasets operation")
  type response = {
    @ocaml.doc("<p>A token that indicates where a results page should begin.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>List of Datasets.</p>") datasets: option<datasetList>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "ListDatasetsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
