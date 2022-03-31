type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-dms") @new external createClient: unit => awsServiceClient = "DMSClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type targetDbType = [
  | @as("multiple-databases") #Multiple_Databases
  | @as("specific-database") #Specific_Database
]
type tstamp = Js.Date.t
type string_ = string
type startReplicationTaskTypeValue = [
  | @as("reload-target") #Reload_Target
  | @as("resume-processing") #Resume_Processing
  | @as("start-replication") #Start_Replication
]
type sslSecurityProtocolValue = [
  | @as("ssl-encryption") #Ssl_Encryption
  | @as("plaintext") #Plaintext
]
type sourceType = [@as("replication-instance") #Replication_Instance]
type secretString = string
type safeguardPolicy = [
  | @as("shared-automatic-truncation") #Shared_Automatic_Truncation
  | @as("exclusive-automatic-truncation") #Exclusive_Automatic_Truncation
  | @as("rely-on-sql-server-replication-agent") #Rely_On_Sql_Server_Replication_Agent
]
type resourceArn = string
type replicationEndpointTypeValue = [@as("target") #Target | @as("source") #Source]
type reloadOptionValue = [@as("validate-only") #Validate_Only | @as("data-reload") #Data_Reload]
type releaseStatusValues = [@as("beta") #Beta]
type refreshSchemasStatusTypeValue = [
  | @as("refreshing") #Refreshing
  | @as("failed") #Failed
  | @as("successful") #Successful
]
type redisAuthTypeValue = [
  | @as("auth-token") #Auth_Token
  | @as("auth-role") #Auth_Role
  | @as("none") #None
]
type pluginNameValue = [
  | @as("pglogical") #Pglogical
  | @as("test-decoding") #Test_Decoding
  | @as("no-preference") #No_Preference
]
type parquetVersionValue = [@as("parquet-2-0") #Parquet_2_0 | @as("parquet-1-0") #Parquet_1_0]
type nestingLevelValue = [@as("one") #One | @as("none") #None]
type migrationTypeValue = [
  | @as("full-load-and-cdc") #Full_Load_And_Cdc
  | @as("cdc") #Cdc
  | @as("full-load") #Full_Load
]
type messageFormatValue = [@as("json-unformatted") #Json_Unformatted | @as("json") #Json]
type long = float
type kafkaSecurityProtocol = [
  | @as("sasl-ssl") #Sasl_Ssl
  | @as("ssl-encryption") #Ssl_Encryption
  | @as("ssl-authentication") #Ssl_Authentication
  | @as("plaintext") #Plaintext
]
type integerOptional = int
type integer_ = int
type exceptionMessage = string
type endpointSettingTypeValue = [
  | @as("enum") #Enum
  | @as("integer") #Integer
  | @as("boolean") #Boolean
  | @as("string") #String
]
type encryptionModeValue = [@as("sse-kms") #Sse_Kms | @as("sse-s3") #Sse_S3]
type encodingTypeValue = [
  | @as("rle-dictionary") #Rle_Dictionary
  | @as("plain-dictionary") #Plain_Dictionary
  | @as("plain") #Plain
]
type dmsSslModeValue = [
  | @as("verify-full") #Verify_Full
  | @as("verify-ca") #Verify_Ca
  | @as("require") #Require
  | @as("none") #None
]
type datePartitionSequenceValue = [
  | @as("DDMMYYYY") #DDMMYYYY
  | @as("MMYYYYDD") #MMYYYYDD
  | @as("YYYYMM") #YYYYMM
  | @as("YYYYMMDDHH") #YYYYMMDDHH
  | @as("YYYYMMDD") #YYYYMMDD
]
type datePartitionDelimiterValue = [
  | @as("NONE") #NONE
  | @as("DASH") #DASH
  | @as("UNDERSCORE") #UNDERSCORE
  | @as("SLASH") #SLASH
]
type dataFormatValue = [@as("parquet") #Parquet | @as("csv") #Csv]
type compressionTypeValue = [@as("gzip") #Gzip | @as("none") #None]
type charLengthSemantics = [@as("byte") #Byte | @as("char") #Char | @as("default") #Default]
type certificateWallet = NodeJs.Buffer.t
type cannedAclForObjectsValue = [
  | @as("bucket-owner-full-control") #Bucket_Owner_Full_Control
  | @as("bucket-owner-read") #Bucket_Owner_Read
  | @as("aws-exec-read") #Aws_Exec_Read
  | @as("authenticated-read") #Authenticated_Read
  | @as("public-read-write") #Public_Read_Write
  | @as("public-read") #Public_Read
  | @as("private") #Private
  | @as("none") #None
]
type booleanOptional = bool
type boolean_ = bool
type authTypeValue = [@as("password") #Password | @as("no") #No]
type authMechanismValue = [
  | @as("scram_sha_1") #Scram_Sha_1
  | @as("mongodb_cr") #Mongodb_Cr
  | @as("default") #Default
]
@ocaml.doc("<p>Describes the status of a security group associated with the virtual private cloud (VPC)
         hosting your replication and DB instances.</p>")
type vpcSecurityGroupMembership = {
  @ocaml.doc("<p>The status of the VPC security group.</p>") @as("Status") status: option<string_>,
  @ocaml.doc("<p>The VPC security group ID.</p>") @as("VpcSecurityGroupId")
  vpcSecurityGroupId: option<string_>,
}
type vpcSecurityGroupIdList = array<string_>
@ocaml.doc("<p>A user-defined key-value pair that describes metadata added to an DMS resource and
         that is used by operations such as the following:</p>
         <ul>
            <li>
               <p>
                  <code>AddTagsToResource</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ListTagsForResource</code>
               </p>
            </li>
            <li>
               <p>
                  <code>RemoveTagsFromResource</code>
               </p>
            </li>
         </ul>")
type tag = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) string that uniquely identifies the resource for which the tag is created.</p>"
  )
  @as("ResourceArn")
  resourceArn: option<string_>,
  @ocaml.doc("<p>A value is the optional value of the tag. The string value can be 1-256 Unicode
         characters in length and can't be prefixed with \"aws:\" or \"dms:\". The string can only
         contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-'
         (Java regular expressions: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>")
  @as("Value")
  value: option<string_>,
  @ocaml.doc("<p>A key is the required name of the tag. The string value can be 1-128 Unicode characters
         in length and can't be prefixed with \"aws:\" or \"dms:\". The string can only contain
         only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java
         regular expressions: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>")
  @as("Key")
  key: option<string_>,
}
@ocaml.doc("<p>Provides the name of the schema and table to be reloaded.</p>")
type tableToReload = {
  @ocaml.doc("<p>The table name of the table to be reloaded.</p>") @as("TableName")
  tableName: string_,
  @ocaml.doc("<p>The schema name of the table to be reloaded.</p>") @as("SchemaName")
  schemaName: string_,
}
@ocaml.doc("<p>Provides a collection of table statistics in response to a request by the
         <code>DescribeTableStatistics</code> operation.</p>")
type tableStatistics = {
  @ocaml.doc("<p>Additional details about the state of validation.</p>")
  @as("ValidationStateDetails")
  validationStateDetails: option<string_>,
  @ocaml.doc("<p>The validation state of the table.</p>
         <p>This parameter can have the following values:</p>
         <ul>
            <li>
               <p>Not enabled – Validation isn't enabled for the table in the migration
               task.</p>
            </li>
            <li>
               <p>Pending records – Some records in the table are waiting for validation.</p>
            </li>
            <li>
               <p>Mismatched records – Some records in the table don't match between the source
               and target.</p>
            </li>
            <li>
               <p>Suspended records – Some records in the table couldn't be validated.</p>
            </li>
            <li>
               <p>No primary key  –The table couldn't be validated because it has no primary
               key.</p>
            </li>
            <li>
               <p>Table error – The table wasn't validated because it's in an error state
               and some data wasn't migrated.</p>
            </li>
            <li>
               <p>Validated – All rows in the table are validated. If the table is updated, the
               status can change from Validated.</p>
            </li>
            <li>
               <p>Error – The table couldn't be validated because of an unexpected
               error.</p>
            </li>
            <li>
               <p>Pending validation – The table is waiting validation.</p>
            </li>
            <li>
               <p>Preparing table – Preparing the table enabled in the migration task for validation.</p>
            </li>
            <li>
               <p>Pending revalidation – All rows in the table are pending validation after the table was updated.</p>
            </li>
         </ul>")
  @as("ValidationState")
  validationState: option<string_>,
  @ocaml.doc("<p>The number of records that couldn't be validated.</p>")
  @as("ValidationSuspendedRecords")
  validationSuspendedRecords: option<long>,
  @ocaml.doc("<p>The number of records that failed validation.</p>") @as("ValidationFailedRecords")
  validationFailedRecords: option<long>,
  @ocaml.doc("<p>The number of records that have yet to be validated.</p>")
  @as("ValidationPendingRecords")
  validationPendingRecords: option<long>,
  @ocaml.doc("<p>The state of the tables described.</p>
         <p>Valid states: Table does not exist | Before load | Full load | Table completed | Table
         cancelled | Table error | Table all | Table updates | Table is being reloaded</p>")
  @as("TableState")
  tableState: option<string_>,
  @ocaml.doc("<p>The last time a table was updated.</p>") @as("LastUpdateTime")
  lastUpdateTime: option<tstamp>,
  @ocaml.doc("<p>A value that indicates if the table was reloaded (<code>true</code>) 
         or loaded as part of a new full load operation (<code>false</code>).</p>")
  @as("FullLoadReloaded")
  fullLoadReloaded: option<booleanOptional>,
  @ocaml.doc("<p>The time when the full load operation completed.</p>") @as("FullLoadEndTime")
  fullLoadEndTime: option<tstamp>,
  @ocaml.doc("<p>The time when the full load operation started.</p>") @as("FullLoadStartTime")
  fullLoadStartTime: option<tstamp>,
  @ocaml.doc("<p>The number of rows that failed to load during the full load operation (valid only for
         migrations where DynamoDB is the target).</p>")
  @as("FullLoadErrorRows")
  fullLoadErrorRows: option<long>,
  @ocaml.doc("<p>The number of rows that failed conditional checks during the full load operation (valid
         only for migrations where DynamoDB is the target).</p>")
  @as("FullLoadCondtnlChkFailedRows")
  fullLoadCondtnlChkFailedRows: option<long>,
  @ocaml.doc("<p>The number of rows added during the full load operation.</p>") @as("FullLoadRows")
  fullLoadRows: option<long>,
  @ocaml.doc(
    "<p>The data definition language (DDL) used to build and modify the structure of your tables.</p>"
  )
  @as("Ddls")
  ddls: option<long>,
  @ocaml.doc("<p>The number of update actions performed on a table.</p>") @as("Updates")
  updates: option<long>,
  @ocaml.doc("<p>The number of delete actions performed on a table.</p>") @as("Deletes")
  deletes: option<long>,
  @ocaml.doc("<p>The number of insert actions performed on a table.</p>") @as("Inserts")
  inserts: option<long>,
  @ocaml.doc("<p>The name of the table.</p>") @as("TableName") tableName: option<string_>,
  @ocaml.doc("<p>The schema name.</p>") @as("SchemaName") schemaName: option<string_>,
}
@ocaml.doc("<p>Provides information that defines a SAP ASE endpoint.</p>")
type sybaseSettings = {
  @ocaml.doc(
    "<p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code> that contains the SAP SAE endpoint connection details.</p>"
  )
  @as("SecretsManagerSecretId")
  secretsManagerSecretId: option<string_>,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
         trusted entity and grants the required permissions to access the value in
         <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
         <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager
          secret that allows access to the SAP ASE endpoint.</p>
         <note>
            <p>You can specify one of two sets of values for these permissions. You can specify the
            values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
            clear-text values for <code>UserName</code>, <code>Password</code>,
               <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
            information on creating this <code>SecretsManagerSecret</code> and the
               <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
            required to access it, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager\">Using secrets to access Database Migration Service
               resources</a> in the <i>Database Migration Service User
               Guide</i>.</p>
         </note>")
  @as("SecretsManagerAccessRoleArn")
  secretsManagerAccessRoleArn: option<string_>,
  @ocaml.doc("<p>Endpoint connection user name.</p>") @as("Username") username: option<string_>,
  @ocaml.doc("<p>Fully qualified domain name of the endpoint.</p>") @as("ServerName")
  serverName: option<string_>,
  @ocaml.doc("<p>Endpoint TCP port. The default is 5000.</p>") @as("Port")
  port: option<integerOptional>,
  @ocaml.doc("<p>Endpoint connection password.</p>") @as("Password") password: option<secretString>,
  @ocaml.doc("<p>Database name for the endpoint.</p>") @as("DatabaseName")
  databaseName: option<string_>,
}
@ocaml.doc("<p>Provides information about types of supported endpoints in response to a request by the
            <code>DescribeEndpointTypes</code> operation. This information includes the type of
         endpoint, the database engine name, and whether change data capture (CDC) is
         supported.</p>")
type supportedEndpointType = {
  @ocaml.doc("<p>The expanded name for the engine name. For example, if the <code>EngineName</code>
         parameter is \"aurora,\" this value would be \"Amazon Aurora MySQL.\"</p>")
  @as("EngineDisplayName")
  engineDisplayName: option<string_>,
  @ocaml.doc(
    "<p>The earliest DMS engine version that supports this endpoint engine. Note that endpoint engines released with DMS versions earlier than 3.1.1 do not return a value for this parameter.</p>"
  )
  @as("ReplicationInstanceEngineMinimumVersion")
  replicationInstanceEngineMinimumVersion: option<string_>,
  @ocaml.doc(
    "<p>The type of endpoint.  Valid values are <code>source</code> and <code>target</code>.</p>"
  )
  @as("EndpointType")
  endpointType: option<replicationEndpointTypeValue>,
  @ocaml.doc("<p>Indicates if change data capture (CDC) is supported.</p>") @as("SupportsCDC")
  supportsCDC: option<boolean_>,
  @ocaml.doc("<p>The database engine name. Valid values, depending on the EndpointType,  include
         <code>\"mysql\"</code>, <code>\"oracle\"</code>, <code>\"postgres\"</code>,
         <code>\"mariadb\"</code>, <code>\"aurora\"</code>, <code>\"aurora-postgresql\"</code>,
         <code>\"redshift\"</code>, <code>\"s3\"</code>, <code>\"db2\"</code>, <code>\"azuredb\"</code>,
         <code>\"sybase\"</code>, <code>\"dynamodb\"</code>, <code>\"mongodb\"</code>,
         <code>\"kinesis\"</code>, <code>\"kafka\"</code>, <code>\"elasticsearch\"</code>,
         <code>\"documentdb\"</code>, <code>\"sqlserver\"</code>, and <code>\"neptune\"</code>.</p>")
  @as("EngineName")
  engineName: option<string_>,
}
type subnetIdentifierList = array<string_>
type sourceIdsList = array<string_>
type schemaList = array<string_>
@ocaml.doc("<p>Settings for exporting data to Amazon S3. </p>")
type s3Settings = {
  @ocaml.doc("<p>When creating an S3 target endpoint, set <code>DatePartitionTimezone</code> to convert
         the current UTC time into a specified time zone. The conversion occurs when a date
         partition folder is created and a CDC filename is generated. The time zone format is Area/Location.
         Use this parameter when <code>DatePartitionedEnabled</code> is set to <code>true</code>, as shown in the
         following example.</p>
         <p>
            <code>s3-settings='{\"DatePartitionEnabled\": true, \"DatePartitionSequence\": \"YYYYMMDDHH\",
            \"DatePartitionDelimiter\": \"SLASH\",
               \"DatePartitionTimezone\":\"<i>Asia/Seoul</i>\", \"BucketName\":
            \"dms-nattarat-test\"}'</code>
         </p>")
  @as("DatePartitionTimezone")
  datePartitionTimezone: option<string_>,
  @ocaml.doc("<p>For an S3 source, when this value is set to <code>true</code> or <code>y</code>,
         each leading double quotation mark has to be followed by an
         ending double quotation mark. This formatting complies with RFC
         4180. When this value is set to <code>false</code> or
         <code>n</code>, string literals are copied to the target as
         is. In this case, a delimiter (row or column) signals the end of
         the field. Thus, you can't use a delimiter as part of the
         string, because it signals the end of the value.</p>
         <p>For an S3 target, an optional parameter used to set behavior to comply with RFC
         4180 for data migrated to Amazon S3 using .csv file format only. When this
         value is set to <code>true</code> or <code>y</code> using Amazon
         S3 as a target, if the data has quotation marks or newline
         characters in it, DMS encloses the entire column with an
         additional pair of double quotation marks (\"). Every quotation
         mark within the data is repeated twice.</p>
         <p>The default value is <code>true</code>. Valid values include <code>true</code>, <code>false</code>,
         <code>y</code>, and <code>n</code>.</p>")
  @as("Rfc4180")
  rfc4180: option<booleanOptional>,
  @ocaml.doc("<p>A value that specifies the maximum size (in KB) of any .csv
         file to be created while migrating to an S3 target during full
         load.</p>
         <p>The default value is 1,048,576 KB (1 GB). Valid values include 1 to 1,048,576.</p>")
  @as("MaxFileSize")
  maxFileSize: option<integerOptional>,
  @ocaml.doc("<p>When this value is set to 1, DMS ignores the first row header in a .csv file. A value
         of 1 turns on the feature; a value of 0 turns off the feature.</p>
         <p>The default is 0.</p>")
  @as("IgnoreHeaderRows")
  ignoreHeaderRows: option<integerOptional>,
  @ocaml.doc("<p>An optional parameter that specifies how DMS treats null
         values. While handling the null value, you can use this
         parameter to pass a user-defined string as null when writing to
         the target. For example, when target columns are not nullable,
         you can use this option to differentiate between the empty
         string value and the null value. So, if you set this parameter
         value to the empty string (\"\" or ''), DMS treats the empty
         string as the null value instead of <code>NULL</code>.</p>
         <p>The default value is <code>NULL</code>. Valid values include any valid string.</p>")
  @as("CsvNullValue")
  csvNullValue: option<string_>,
  @ocaml.doc("<p>Minimum file size, defined in megabytes, to reach for a file output to Amazon S3.</p>
         <p>When <code>CdcMinFileSize</code> and <code>CdcMaxBatchInterval</code> are both specified, the file 
         write is triggered by whichever parameter condition is met first within an DMS 
         CloudFormation template.</p>
         <p>The default value is 32 MB.</p>")
  @as("CdcMinFileSize")
  cdcMinFileSize: option<integerOptional>,
  @ocaml.doc("<p>Maximum length of the interval, defined in seconds, after which to output a file to Amazon S3.</p>
         <p>When <code>CdcMaxBatchInterval</code> and <code>CdcMinFileSize</code> are both specified, the
         file write is triggered by whichever parameter condition is met first within an DMS
         CloudFormation template.</p>
         <p>The default value is 60 seconds.</p>")
  @as("CdcMaxBatchInterval")
  cdcMaxBatchInterval: option<integerOptional>,
  @ocaml.doc("<p>An optional parameter that, when set to <code>true</code> or <code>y</code>, you can use
         to add column name information to the .csv output file.</p>
         <p>The default value is <code>false</code>. Valid values are <code>true</code>, <code>false</code>,
         <code>y</code>, and <code>n</code>.</p>")
  @as("AddColumnName")
  addColumnName: option<booleanOptional>,
  @ocaml.doc("<p>A value that enables DMS to specify a predefined (canned) access control list for
         objects created in an Amazon S3 bucket as .csv or .parquet files. For more information
         about Amazon S3 canned ACLs, see <a href=\"http://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl\">Canned
            ACL</a> in the <i>Amazon S3 Developer Guide.</i>
         </p>
         <p>The default value is NONE. Valid values include NONE, PRIVATE,
         PUBLIC_READ, PUBLIC_READ_WRITE, AUTHENTICATED_READ,
         AWS_EXEC_READ, BUCKET_OWNER_READ, and
         BUCKET_OWNER_FULL_CONTROL.</p>")
  @as("CannedAclForObjects")
  cannedAclForObjects: option<cannedAclForObjectsValue>,
  @ocaml.doc("<p>When set to true, this parameter uses the task start time as the timestamp column value instead of 
         the time data is written to target. For full load, when <code>useTaskStartTimeForFullLoadTimestamp</code>
         is set to <code>true</code>, each row of the timestamp column contains the task start time. For CDC loads, 
         each row of the timestamp column contains the transaction commit time.</p>
         
         <p>When <code>useTaskStartTimeForFullLoadTimestamp</code> is set to <code>false</code>, the full load timestamp 
         in the timestamp column increments with the time data arrives at the target. </p>")
  @as("UseTaskStartTimeForFullLoadTimestamp")
  useTaskStartTimeForFullLoadTimestamp: option<booleanOptional>,
  @ocaml.doc("<p>Specifies the folder path of CDC files. For an S3 source, this setting is required if a
         task captures change data; otherwise, it's optional. If <code>CdcPath</code> is set, DMS
          reads CDC files from this path and replicates the data changes to the target endpoint.
         For an S3 target if you set <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-PreserveTransactions\">
               <code>PreserveTransactions</code>
            </a> to <code>true</code>, DMS
          verifies that you have set this parameter to a folder path on your S3 target where DMS
          can save the transaction order for the CDC load. DMS creates this CDC folder path
         in either your S3 target working directory or the S3 target location specified by <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-BucketFolder\">
               <code>BucketFolder</code>
            </a> and <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-BucketName\">
               <code>BucketName</code>
            </a>.</p>
         <p>For example, if you specify <code>CdcPath</code> as <code>MyChangedData</code>, and you
         specify <code>BucketName</code> as <code>MyTargetBucket</code> but do not specify
            <code>BucketFolder</code>, DMS creates the CDC folder path following:
            <code>MyTargetBucket/MyChangedData</code>.</p>
         <p>If you specify the same <code>CdcPath</code>, and you specify <code>BucketName</code> as
            <code>MyTargetBucket</code> and <code>BucketFolder</code> as <code>MyTargetData</code>,
         DMS creates the CDC folder path following:
            <code>MyTargetBucket/MyTargetData/MyChangedData</code>.</p>
         <p>For more information on CDC including transaction order on an S3 target, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.EndpointSettings.CdcPath\">Capturing data changes (CDC) including transaction order on the S3
            target</a>.</p>
         <note>
            <p>This setting is supported in DMS versions 3.4.2 and later.</p>
         </note>")
  @as("CdcPath")
  cdcPath: option<string_>,
  @ocaml.doc("<p>If set to <code>true</code>, DMS saves the transaction order for a change data
         capture (CDC) load on the Amazon S3 target specified by <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-CdcPath\">
               <code>CdcPath</code>
            </a>. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.EndpointSettings.CdcPath\">Capturing data changes (CDC) including transaction order on the S3
            target</a>.</p>
         <note>
            <p>This setting is supported in DMS versions 3.4.2 and later.</p>
         </note>")
  @as("PreserveTransactions")
  preserveTransactions: option<booleanOptional>,
  @ocaml.doc("<p>This setting only applies if your Amazon S3 output files during a change data capture
         (CDC) load are written in .csv format. If <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-UseCsvNoSupValue\">
               <code>UseCsvNoSupValue</code>
            </a> is set to true, specify a
         string value that you want DMS to use for all columns not included in the supplemental
         log. If you do not specify a string value, DMS uses the null value for these columns
         regardless of the <code>UseCsvNoSupValue</code> setting.</p>
         <note>
            <p>This setting is supported in DMS versions 3.4.1 and later.</p>
         </note>")
  @as("CsvNoSupValue")
  csvNoSupValue: option<string_>,
  @ocaml.doc("<p>This setting applies if the S3 output files during a change data capture (CDC) load are
         written in .csv format. If set to <code>true</code> for columns not included in the
         supplemental log, DMS uses the value specified by <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-CsvNoSupValue\">
               <code>CsvNoSupValue</code>
            </a>. If not set or set to
            <code>false</code>, DMS uses the null value for these columns.</p>
         <note>
            <p>This setting is supported in DMS versions 3.4.1 and later.</p>
         </note>")
  @as("UseCsvNoSupValue")
  useCsvNoSupValue: option<booleanOptional>,
  @ocaml.doc("<p>Specifies a date separating delimiter to use during folder partitioning. The default value is 
         <code>SLASH</code>. Use this parameter when <code>DatePartitionedEnabled</code> is set to <code>true</code>.</p>")
  @as("DatePartitionDelimiter")
  datePartitionDelimiter: option<datePartitionDelimiterValue>,
  @ocaml.doc("<p>Identifies the sequence of the date format to use during folder partitioning. The default value is 
         <code>YYYYMMDD</code>. Use this parameter when <code>DatePartitionedEnabled</code> is set to <code>true</code>.</p>")
  @as("DatePartitionSequence")
  datePartitionSequence: option<datePartitionSequenceValue>,
  @ocaml.doc("<p>When set to <code>true</code>, this parameter partitions S3 bucket folders based on
         transaction commit dates. The default value is <code>false</code>. For more information
         about date-based folder partitioning, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.DatePartitioning\">Using date-based folder partitioning</a>.</p>")
  @as("DatePartitionEnabled")
  datePartitionEnabled: option<booleanOptional>,
  @ocaml.doc("<p>A value that enables a change data capture (CDC) load to write INSERT and UPDATE
         operations to .csv or .parquet (columnar storage) output files. The default setting is
            <code>false</code>, but when <code>CdcInsertsAndUpdates</code> is set to
            <code>true</code> or <code>y</code>, only INSERTs and UPDATEs from the source database
         are migrated to the .csv or .parquet file. </p>      
         <p>For .csv file format only, how these INSERTs and UPDATEs are recorded depends on the
         value of the <code>IncludeOpForFullLoad</code> parameter. If
            <code>IncludeOpForFullLoad</code> is set to <code>true</code>, the first field of every
         CDC record is set to either <code>I</code> or <code>U</code> to indicate INSERT and UPDATE
         operations at the source. But if <code>IncludeOpForFullLoad</code> is set to
            <code>false</code>, CDC records are written without an indication of INSERT or UPDATE
         operations at the source. For more information about how these settings work together, see
            <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps\">Indicating Source DB Operations in Migrated S3 Data</a> in the <i>Database Migration Service User Guide.</i>.</p>
         <note>

            <p>DMS supports the use of the <code>CdcInsertsAndUpdates</code> parameter in
            versions 3.3.1 and later.</p>

            <p>
               <code>CdcInsertsOnly</code> and <code>CdcInsertsAndUpdates</code> can't
            both be set to <code>true</code> for the same endpoint. Set either
            <code>CdcInsertsOnly</code> or <code>CdcInsertsAndUpdates</code> to <code>true</code>
            for the same endpoint, but not both.</p>

         </note>")
  @as("CdcInsertsAndUpdates")
  cdcInsertsAndUpdates: option<booleanOptional>,
  @ocaml.doc("<p>A value that specifies the precision of any <code>TIMESTAMP</code> column values that
         are written to an Amazon S3 object file in .parquet format.</p>
         <note>
            <p>DMS supports the <code>ParquetTimestampInMillisecond</code> parameter in versions
            3.1.4 and later.</p>
         </note>
         <p>When <code>ParquetTimestampInMillisecond</code> is set to <code>true</code> or
            <code>y</code>, DMS writes all <code>TIMESTAMP</code> columns in a .parquet
         formatted file with millisecond precision. Otherwise, DMS writes them with microsecond
         precision.</p>
         <p>Currently, Amazon Athena and Glue can handle only
         millisecond precision for <code>TIMESTAMP</code> values. Set
         this parameter to <code>true</code> for S3 endpoint object
         files that are .parquet formatted only if you plan to query or process the data with Athena or Glue.</p>
         <note>
              <p>DMS writes any <code>TIMESTAMP</code> column
                  values written to an S3 file in .csv format with
                  microsecond precision.</p>

               <p>Setting <code>ParquetTimestampInMillisecond</code> has no effect on the string
            format of the timestamp column value that is inserted by setting the
               <code>TimestampColumnName</code> parameter.</p>
         </note>")
  @as("ParquetTimestampInMillisecond")
  parquetTimestampInMillisecond: option<booleanOptional>,
  @ocaml.doc("<p>A value that when nonblank causes DMS to add a column with timestamp information to
         the endpoint data for an Amazon S3 target.</p>
         <note>
            <p>DMS supports the <code>TimestampColumnName</code> parameter in versions 3.1.4 and later.</p>
         </note>
         <p>DMS includes an additional <code>STRING</code> column in the
         .csv or .parquet object files of your migrated data when you set
         <code>TimestampColumnName</code> to a nonblank value.</p>
         <p>For a full load, each row of this timestamp column contains a
         timestamp for when the data was transferred from the source to
         the target by DMS. </p>
         <p>For a change data capture (CDC) load, each row of the timestamp column contains the
         timestamp for the commit of that row in the source
         database.</p>
         <p>The string format for this timestamp column value is
         <code>yyyy-MM-dd HH:mm:ss.SSSSSS</code>. By default, the
         precision of this value is in microseconds. For a CDC load, the
         rounding of the precision depends on the commit timestamp
         supported by DMS for the source database.</p>
         <p>When the <code>AddColumnName</code> parameter is set to <code>true</code>, DMS also
         includes a name for the timestamp column that you set with
         <code>TimestampColumnName</code>.</p>")
  @as("TimestampColumnName")
  timestampColumnName: option<string_>,
  @ocaml.doc("<p>A value that enables a change data capture (CDC) load to write only INSERT operations to
         .csv or columnar storage (.parquet) output files. By default (the
            <code>false</code> setting), the first field in a .csv or .parquet record contains the
         letter I (INSERT), U (UPDATE), or D (DELETE). These values indicate whether the row was
         inserted, updated, or deleted at the source database for a CDC load to the target.</p>
         <p>If <code>CdcInsertsOnly</code> is set to <code>true</code> or <code>y</code>, only
         INSERTs from the source database are migrated to the .csv or .parquet file. For .csv format
         only, how these INSERTs are recorded depends on the value of
            <code>IncludeOpForFullLoad</code>. If <code>IncludeOpForFullLoad</code> is set to
            <code>true</code>, the first field of every CDC record is set to I to indicate the
         INSERT operation at the source. If <code>IncludeOpForFullLoad</code> is set to
            <code>false</code>, every CDC record is written without a first field to indicate the
         INSERT operation at the source. For more information about how these settings work
         together, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps\">Indicating Source DB Operations in Migrated S3 Data</a> in the <i>Database Migration Service User Guide.</i>.</p>

         <note>

               <p>DMS supports the interaction described preceding between the
               <code>CdcInsertsOnly</code> and <code>IncludeOpForFullLoad</code> parameters in
            versions 3.1.4 and later. </p>

               <p>
               <code>CdcInsertsOnly</code> and <code>CdcInsertsAndUpdates</code> can't
            both be set to <code>true</code> for the same endpoint. Set either
               <code>CdcInsertsOnly</code> or <code>CdcInsertsAndUpdates</code> to <code>true</code>
            for the same endpoint, but not both.</p>

         </note>")
  @as("CdcInsertsOnly")
  cdcInsertsOnly: option<booleanOptional>,
  @ocaml.doc("<p>A value that enables a full load to write INSERT operations to the comma-separated value
         (.csv) output files only to indicate how the rows were added to the source database.</p>
         <note>
            <p>DMS supports the <code>IncludeOpForFullLoad</code> parameter in versions 3.1.4 and
            later.</p>
         </note>
         <p>For full load, records can only be inserted. By default (the <code>false</code>
         setting), no information is recorded in these output files for a full load to indicate that
         the rows were inserted at the source database. If <code>IncludeOpForFullLoad</code> is set
         to <code>true</code> or <code>y</code>, the INSERT is recorded as an I annotation in the
         first field of the .csv file. This allows the format of your target records from a full
         load to be consistent with the target records from a CDC load.</p>
         <note>
            <p>This setting works together with the <code>CdcInsertsOnly</code> and the
               <code>CdcInsertsAndUpdates</code> parameters for output to .csv files only. For more
            information about how these settings work together, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps\">Indicating Source DB Operations in Migrated S3 Data</a> in the <i>Database Migration Service
                   User Guide.</i>.</p>
         </note>")
  @as("IncludeOpForFullLoad")
  includeOpForFullLoad: option<booleanOptional>,
  @ocaml.doc("<p>A value that enables statistics for Parquet pages and row groups. Choose
            <code>true</code> to enable statistics, <code>false</code> to disable. Statistics
         include <code>NULL</code>, <code>DISTINCT</code>, <code>MAX</code>, and <code>MIN</code>
         values. This parameter defaults to <code>true</code>. This value is used for
            .parquet file format only.</p>")
  @as("EnableStatistics")
  enableStatistics: option<booleanOptional>,
  @ocaml.doc("<p>The version of the Apache Parquet format that you want to use: <code>parquet_1_0</code>
         (the default) or <code>parquet_2_0</code>.</p>")
  @as("ParquetVersion")
  parquetVersion: option<parquetVersionValue>,
  @ocaml.doc("<p>The size of one data page in bytes. This parameter defaults to 1024 * 1024 bytes (1 MiB).
         This number is used for .parquet file format only. </p>")
  @as("DataPageSize")
  dataPageSize: option<integerOptional>,
  @ocaml.doc("<p>The number of rows in a row group. A smaller row group size provides faster reads. But
         as the number of row groups grows, the slower writes become. This parameter defaults to
         10,000 rows. This number is used for .parquet file format only. </p>
         <p>If you choose a value larger than the maximum, <code>RowGroupLength</code> is set to the
         max row group length in bytes (64 * 1024 * 1024). </p>")
  @as("RowGroupLength")
  rowGroupLength: option<integerOptional>,
  @ocaml.doc("<p>The maximum size of an encoded dictionary page of a column. If the dictionary page
         exceeds this, this column is stored using an encoding type of <code>PLAIN</code>. This
         parameter defaults to 1024 * 1024 bytes (1 MiB), the maximum size of a dictionary page
         before it reverts to <code>PLAIN</code> encoding. This size is used for
           .parquet file format only. </p>")
  @as("DictPageSizeLimit")
  dictPageSizeLimit: option<integerOptional>,
  @ocaml.doc("<p>The type of encoding you are using: </p>
         <ul>
            <li>
               <p>
                  <code>RLE_DICTIONARY</code> uses a combination of bit-packing and run-length
               encoding to store repeated values more efficiently. This is the default.</p>
            </li>
            <li>
               <p>
                  <code>PLAIN</code> doesn't use encoding at all. Values are stored as they
               are.</p>
            </li>
            <li>
               <p>
                  <code>PLAIN_DICTIONARY</code> builds a dictionary of the values encountered in a
               given column. The dictionary is stored in a dictionary page for each column
               chunk.</p>
            </li>
         </ul>")
  @as("EncodingType")
  encodingType: option<encodingTypeValue>,
  @ocaml.doc("<p>The format of the data that you want to use for output. You can choose one of the
         following: </p>
         <ul>
            <li>
               <p>
                  <code>csv</code> : This is a row-based file format with comma-separated values
               (.csv). </p>
            </li>
            <li>
               <p>
                  <code>parquet</code> : Apache Parquet (.parquet) is a columnar storage file format
               that features efficient compression and provides faster query response. </p>
            </li>
         </ul>")
  @as("DataFormat")
  dataFormat: option<dataFormatValue>,
  @ocaml.doc("<p>If you are using <code>SSE_KMS</code> for the <code>EncryptionMode</code>, provide the
         KMS key ID. The key that you use needs an attached policy that enables Identity and Access Management
         (IAM) user permissions and allows use of the key.</p>
         <p>Here is a CLI example: <code>aws dms create-endpoint --endpoint-identifier
               <i>value</i> --endpoint-type target --engine-name s3 --s3-settings
               ServiceAccessRoleArn=<i>value</i>,BucketFolder=<i>value</i>,BucketName=<i>value</i>,EncryptionMode=SSE_KMS,ServerSideEncryptionKmsKeyId=<i>value</i>
            </code>
         </p>")
  @as("ServerSideEncryptionKmsKeyId")
  serverSideEncryptionKmsKeyId: option<string_>,
  @ocaml.doc("<p>The type of server-side encryption that you want to use for your data. This encryption
         type is part of the endpoint settings or the extra connections attributes for Amazon S3.
         You can choose either <code>SSE_S3</code> (the default) or <code>SSE_KMS</code>. </p>
         <note>
            <p>For the <code>ModifyEndpoint</code> operation, you can change the existing value of
            the <code>EncryptionMode</code> parameter from <code>SSE_KMS</code> to
               <code>SSE_S3</code>. But you can’t change the existing value from <code>SSE_S3</code>
            to <code>SSE_KMS</code>.</p>
         </note>
         <p>To use <code>SSE_S3</code>, you need an Identity and Access Management (IAM) role
         with permission to allow <code>\"arn:aws:s3:::dms-*\"</code> to use the following
         actions:</p>
         <ul>
            <li>
               <p>
                  <code>s3:CreateBucket</code>
               </p>
            </li>
            <li>
               <p>
                  <code>s3:ListBucket</code>
               </p>
            </li>
            <li>
               <p>
                  <code>s3:DeleteBucket</code>
               </p>
            </li>
            <li>
               <p>
                  <code>s3:GetBucketLocation</code>
               </p>
            </li>
            <li>
               <p>
                  <code>s3:GetObject</code>
               </p>
            </li>
            <li>
               <p>
                  <code>s3:PutObject</code>
               </p>
            </li>
            <li>
               <p>
                  <code>s3:DeleteObject</code>
               </p>
            </li>
            <li>
               <p>
                  <code>s3:GetObjectVersion</code>
               </p>
            </li>
            <li>
               <p>
                  <code>s3:GetBucketPolicy</code>
               </p>
            </li>
            <li>
               <p>
                  <code>s3:PutBucketPolicy</code>
               </p>
            </li>
            <li>
               <p>
                  <code>s3:DeleteBucketPolicy</code>
               </p>
            </li>
         </ul>")
  @as("EncryptionMode")
  encryptionMode: option<encryptionModeValue>,
  @ocaml.doc("<p>An optional parameter to use GZIP to compress the target files. Set to GZIP to compress
         the target files. Either set this parameter to NONE (the default) or don't use it to leave the files uncompressed.
         This parameter applies to both .csv and .parquet file formats. </p>")
  @as("CompressionType")
  compressionType: option<compressionTypeValue>,
  @ocaml.doc("<p> The name of the S3 bucket. </p>") @as("BucketName") bucketName: option<string_>,
  @ocaml.doc("<p> An optional parameter to set a folder name in the S3 bucket. If provided, tables are
         created in the path
               <code>
               <i>bucketFolder</i>/<i>schema_name</i>/<i>table_name</i>/</code>.
         If this parameter isn't specified, then the path used is
               <code>
               <i>schema_name</i>/<i>table_name</i>/</code>. </p>")
  @as("BucketFolder")
  bucketFolder: option<string_>,
  @ocaml.doc("<p> The delimiter used to separate columns in the .csv file for both source and target. The default is a comma.
      </p>")
  @as("CsvDelimiter")
  csvDelimiter: option<string_>,
  @ocaml.doc("<p> The delimiter used to separate rows in the .csv file for both source and target. The default is a carriage
         return (<code>\\n</code>). </p>")
  @as("CsvRowDelimiter")
  csvRowDelimiter: option<string_>,
  @ocaml.doc("<p> Specifies how tables are defined in the S3 source files only. </p>")
  @as("ExternalTableDefinition")
  externalTableDefinition: option<string_>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) used by the service to access the IAM role.
         The role must allow the <code>iam:PassRole</code> action. It is a required
         parameter that enables DMS to write and read objects from an S3 bucket.</p>")
  @as("ServiceAccessRoleArn")
  serviceAccessRoleArn: option<string_>,
}
@ocaml.doc("<p>In response to a request by the <code>DescribeReplicationTasks</code> operation, this object provides
         a collection of statistics about a replication task.</p>")
type replicationTaskStats = {
  @ocaml.doc("<p>The date the replication task full load was completed.</p>")
  @as("FullLoadFinishDate")
  fullLoadFinishDate: option<tstamp>,
  @ocaml.doc("<p>The date the replication task full load was started.</p>") @as("FullLoadStartDate")
  fullLoadStartDate: option<tstamp>,
  @ocaml.doc("<p>The date the replication task was stopped.</p>") @as("StopDate")
  stopDate: option<tstamp>,
  @ocaml.doc("<p>The date the replication task was started either with a fresh start or a resume. For more information, see 
         <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html#DMS-StartReplicationTask-request-StartReplicationTaskType\">StartReplicationTaskType</a>.</p>")
  @as("StartDate")
  startDate: option<tstamp>,
  @ocaml.doc(
    "<p>The date the replication task was started either with a fresh start or a target reload.</p>"
  )
  @as("FreshStartDate")
  freshStartDate: option<tstamp>,
  @ocaml.doc("<p>The number of errors that have occurred during this task.</p>")
  @as("TablesErrored")
  tablesErrored: option<integer_>,
  @ocaml.doc("<p>The number of tables queued for this task.</p>") @as("TablesQueued")
  tablesQueued: option<integer_>,
  @ocaml.doc("<p>The number of tables currently loading for this task.</p>") @as("TablesLoading")
  tablesLoading: option<integer_>,
  @ocaml.doc("<p>The number of tables loaded for this task.</p>") @as("TablesLoaded")
  tablesLoaded: option<integer_>,
  @ocaml.doc("<p>The elapsed time of the task, in milliseconds.</p>") @as("ElapsedTimeMillis")
  elapsedTimeMillis: option<long>,
  @ocaml.doc("<p>The percent complete for the full load migration task.</p>")
  @as("FullLoadProgressPercent")
  fullLoadProgressPercent: option<integer_>,
}
@ocaml.doc("<p>Provides information that describes an individual assessment from a premigration
         assessment run.</p>")
type replicationTaskIndividualAssessment = {
  @ocaml.doc("<p>Date when this individual assessment was started as part of running the
            <code>StartReplicationTaskAssessmentRun</code> operation.</p>")
  @as("ReplicationTaskIndividualAssessmentStartDate")
  replicationTaskIndividualAssessmentStartDate: option<tstamp>,
  @ocaml.doc("<p>Individual assessment status.</p>
         <p>This status can have one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>\"cancelled\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"error\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"failed\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"passed\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"pending\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"running\"</code>
               </p>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>Name of this individual assessment.</p>") @as("IndividualAssessmentName")
  individualAssessmentName: option<string_>,
  @ocaml.doc("<p>ARN of the premigration assessment run that is created to run this individual
         assessment.</p>")
  @as("ReplicationTaskAssessmentRunArn")
  replicationTaskAssessmentRunArn: option<string_>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of this individual assessment.</p>")
  @as("ReplicationTaskIndividualAssessmentArn")
  replicationTaskIndividualAssessmentArn: option<string_>,
}
@ocaml.doc("<p>The progress values reported by the <code>AssessmentProgress</code> response
         element.</p>")
type replicationTaskAssessmentRunProgress = {
  @ocaml.doc(
    "<p>The number of individual assessments that have completed, successfully or not.</p>"
  )
  @as("IndividualAssessmentCompletedCount")
  individualAssessmentCompletedCount: option<integer_>,
  @ocaml.doc("<p>The number of individual assessments that are specified to run.</p>")
  @as("IndividualAssessmentCount")
  individualAssessmentCount: option<integer_>,
}
@ocaml.doc("<p> The task assessment report in JSON format. </p>")
type replicationTaskAssessmentResult = {
  @ocaml.doc("<p> The URL of the S3 object containing the task assessment results. </p>
         <p>The response object only contains this field if you provide <a>DescribeReplicationTaskAssessmentResultsMessage$ReplicationTaskArn</a>
           in the request.</p>")
  @as("S3ObjectUrl")
  s3ObjectUrl: option<string_>,
  @ocaml.doc("<p> The task assessment results in JSON format. </p>
         <p>The response object only contains this field if you provide <a>DescribeReplicationTaskAssessmentResultsMessage$ReplicationTaskArn</a>
           in the request.</p>")
  @as("AssessmentResults")
  assessmentResults: option<string_>,
  @ocaml.doc("<p> The file containing the results of the task assessment. </p>")
  @as("AssessmentResultsFile")
  assessmentResultsFile: option<string_>,
  @ocaml.doc("<p> The status of the task assessment. </p>") @as("AssessmentStatus")
  assessmentStatus: option<string_>,
  @ocaml.doc("<p>The date the task assessment was completed. </p>")
  @as("ReplicationTaskLastAssessmentDate")
  replicationTaskLastAssessmentDate: option<tstamp>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication task. </p>")
  @as("ReplicationTaskArn")
  replicationTaskArn: option<string_>,
  @ocaml.doc("<p> The replication task identifier of the task on which the task assessment was run.
      </p>")
  @as("ReplicationTaskIdentifier")
  replicationTaskIdentifier: option<string_>,
}
@ocaml.doc("<p>Provides information about the values of pending modifications to a replication
         instance. This data type is an object of the
         <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_ReplicationInstance.html\">
               <code>ReplicationInstance</code>
            </a> user-defined
         data type. </p>")
type replicationPendingModifiedValues = {
  @ocaml.doc("<p>The engine version number of the replication instance.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the
            <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to
            <code>true</code>. </p>")
  @as("MultiAZ")
  multiAZ: option<booleanOptional>,
  @ocaml.doc("<p>The amount of storage (in gigabytes) that is allocated for the replication
         instance.</p>")
  @as("AllocatedStorage")
  allocatedStorage: option<integerOptional>,
  @ocaml.doc("<p>The compute and memory capacity of the replication instance as defined for the specified
         replication instance class.</p>
         <p>For more information on the settings and capacities for the available replication instance classes, see 
         <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth\">
            Selecting the right DMS replication instance for your migration</a>.
      </p>")
  @as("ReplicationInstanceClass")
  replicationInstanceClass: option<string_>,
}
@ocaml.doc("<p>Contains metadata for a replication instance task log.</p>")
type replicationInstanceTaskLog = {
  @ocaml.doc("<p>The size, in bytes, of the replication task log.</p>")
  @as("ReplicationInstanceTaskLogSize")
  replicationInstanceTaskLogSize: option<long>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication task.</p>")
  @as("ReplicationTaskArn")
  replicationTaskArn: option<string_>,
  @ocaml.doc("<p>The name of the replication task.</p>") @as("ReplicationTaskName")
  replicationTaskName: option<string_>,
}
type replicationInstancePublicIpAddressList = array<string_>
type replicationInstancePrivateIpAddressList = array<string_>
@ocaml.doc("<p>Provides information that describes status of a schema at an endpoint specified by the
         <code>DescribeRefreshSchemaStatus</code> operation.</p>")
type refreshSchemasStatus = {
  @ocaml.doc("<p>The last failure message for the schema.</p>") @as("LastFailureMessage")
  lastFailureMessage: option<string_>,
  @ocaml.doc("<p>The date the schema was last refreshed.</p>") @as("LastRefreshDate")
  lastRefreshDate: option<tstamp>,
  @ocaml.doc("<p>The status of the schema.</p>") @as("Status")
  status: option<refreshSchemasStatusTypeValue>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication instance.</p>")
  @as("ReplicationInstanceArn")
  replicationInstanceArn: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>")
  @as("EndpointArn")
  endpointArn: option<string_>,
}
@ocaml.doc("<p>Provides information that defines an Amazon Redshift endpoint.</p>")
type redshiftSettings = {
  @ocaml.doc(
    "<p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code> that contains the Amazon Redshift endpoint connection details.</p>"
  )
  @as("SecretsManagerSecretId")
  secretsManagerSecretId: option<string_>,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
         trusted entity and grants the required permissions to access the value in
         <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
         <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager secret that allows access to the Amazon Redshift endpoint.</p>
         <note>
            <p>You can specify one of two sets of values for these permissions. You can specify the
            values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
            clear-text values for <code>UserName</code>, <code>Password</code>,
               <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
            information on creating this <code>SecretsManagerSecret</code> and the
               <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
            required to access it, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager\">Using secrets to access Database Migration Service
               resources</a> in the <i>Database Migration Service User
               Guide</i>.</p>
         </note>")
  @as("SecretsManagerAccessRoleArn")
  secretsManagerAccessRoleArn: option<string_>,
  @ocaml.doc("<p>The size (in KB) of the in-memory file write buffer used when generating .csv files 
         on the local disk at the DMS replication instance. The default value is 1000 
         (buffer size is 1000KB).</p>")
  @as("WriteBufferSize")
  writeBufferSize: option<integerOptional>,
  @ocaml.doc("<p>An Amazon Redshift user name for a registered user.</p>") @as("Username")
  username: option<string_>,
  @ocaml.doc("<p>A value that specifies to truncate data in columns to the appropriate number of
         characters, so that the data fits in the column. This parameter applies only to columns
         with a VARCHAR or CHAR data type, and rows with a size of 4 MB or less. Choose
            <code>true</code> to truncate data. The default is <code>false</code>.</p>")
  @as("TruncateColumns")
  truncateColumns: option<booleanOptional>,
  @ocaml.doc("<p>A value that specifies to remove the trailing white space characters from a VARCHAR
         string. This parameter applies only to columns with a VARCHAR data type. Choose
            <code>true</code> to remove unneeded white space. The default is
         <code>false</code>.</p>")
  @as("TrimBlanks")
  trimBlanks: option<booleanOptional>,
  @ocaml.doc("<p>The time format that you want to use. Valid values are <code>auto</code>
         (case-sensitive), <code>'timeformat_string'</code>, <code>'epochsecs'</code>, or
         <code>'epochmillisecs'</code>. It defaults to 10. Using <code>auto</code> recognizes
         most strings, even some that aren't supported when you use a time format string. </p>
         <p>If your date and time values use formats different from each other, set this parameter
         to <code>auto</code>. </p>")
  @as("TimeFormat")
  timeFormat: option<string_>,
  @ocaml.doc("<p>The KMS key ID. If you are using <code>SSE_KMS</code> for the <code>EncryptionMode</code>,
         provide this key ID. The key that you use needs an attached policy that enables IAM user
         permissions and allows use of the key.</p>")
  @as("ServerSideEncryptionKmsKeyId")
  serverSideEncryptionKmsKeyId: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role that has access to the Amazon Redshift
         service. The role must allow the <code>iam:PassRole</code> action.</p>")
  @as("ServiceAccessRoleArn")
  serviceAccessRoleArn: option<string_>,
  @ocaml.doc("<p>The name of the Amazon Redshift cluster you are using.</p>") @as("ServerName")
  serverName: option<string_>,
  @ocaml.doc("<p>A value that specifies to replaces the invalid characters specified in
         <code>ReplaceInvalidChars</code>, substituting the specified characters instead. The
         default is <code>\"?\"</code>.</p>")
  @as("ReplaceChars")
  replaceChars: option<string_>,
  @ocaml.doc("<p>A list of characters that you want to replace. Use with
         <code>ReplaceChars</code>.</p>")
  @as("ReplaceInvalidChars")
  replaceInvalidChars: option<string_>,
  @ocaml.doc("<p>A value that specifies to remove surrounding quotation marks from strings in the
         incoming data. All characters within the quotation marks, including delimiters, are
         retained. Choose <code>true</code> to remove quotation marks. The default is
            <code>false</code>.</p>")
  @as("RemoveQuotes")
  removeQuotes: option<booleanOptional>,
  @ocaml.doc("<p>The port number for Amazon Redshift. The default value is 5439.</p>") @as("Port")
  port: option<integerOptional>,
  @ocaml.doc("<p>The password for the user named in the <code>username</code> property.</p>")
  @as("Password")
  password: option<secretString>,
  @ocaml.doc("<p>The maximum size (in KB) of any .csv file used to load data on an S3 bucket and transfer 
            data to Amazon Redshift. It defaults to 1048576KB (1 GB).</p>")
  @as("MaxFileSize")
  maxFileSize: option<integerOptional>,
  @ocaml.doc("<p>The amount of time to wait (in milliseconds) before timing out of operations performed 
            by DMS on a Redshift cluster, such as Redshift COPY, INSERT, DELETE, and UPDATE.</p>")
  @as("LoadTimeout")
  loadTimeout: option<integerOptional>,
  @ocaml.doc("<p>The number of threads used to upload a single file. This parameter accepts a value from
         1 through 64. It defaults to 10.</p>
         <p>The number of parallel streams used to upload a single .csv file to an S3 bucket using
         S3 Multipart Upload. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html\">Multipart upload
            overview</a>. </p>
         <p>
            <code>FileTransferUploadStreams</code> accepts a value from 1 through 64. It
         defaults to 10.</p>")
  @as("FileTransferUploadStreams")
  fileTransferUploadStreams: option<integerOptional>,
  @ocaml.doc("<p>This setting is only valid for a full-load migration task. Set <code>ExplicitIds</code>
         to <code>true</code> to have tables with <code>IDENTITY</code> columns override their
         auto-generated values with explicit values loaded from the source data files used to
         populate the tables. The default is <code>false</code>.</p>")
  @as("ExplicitIds")
  explicitIds: option<booleanOptional>,
  @ocaml.doc("<p>The type of server-side encryption that you want to use for your data. This encryption
         type is part of the endpoint settings or the extra connections attributes for Amazon S3.
         You can choose either <code>SSE_S3</code> (the default) or <code>SSE_KMS</code>. </p>
         <note>
            <p>For the <code>ModifyEndpoint</code> operation, you can change the existing value of the
               <code>EncryptionMode</code> parameter from <code>SSE_KMS</code> to
               <code>SSE_S3</code>. But you can’t change the existing value from <code>SSE_S3</code>
            to <code>SSE_KMS</code>.</p>
         </note>
         <p>To use <code>SSE_S3</code>, create an Identity and Access Management (IAM) role with
         a policy that allows <code>\"arn:aws:s3:::*\"</code> to use the following actions:
            <code>\"s3:PutObject\", \"s3:ListBucket\"</code>
         </p>")
  @as("EncryptionMode")
  encryptionMode: option<encryptionModeValue>,
  @ocaml.doc("<p>A value that specifies whether DMS should migrate empty CHAR and VARCHAR fields as
         NULL. A value of <code>true</code> sets empty CHAR and VARCHAR fields to null. The default
         is <code>false</code>.</p>")
  @as("EmptyAsNull")
  emptyAsNull: option<booleanOptional>,
  @ocaml.doc("<p>The date format that you are using. Valid values are <code>auto</code> (case-sensitive),
         your date format string enclosed in quotes, or NULL. If this parameter is left unset
         (NULL), it defaults to a format of 'YYYY-MM-DD'. Using <code>auto</code> recognizes most
         strings, even some that aren't supported when you use a date format string. </p>
         <p>If your date and time values use formats different from each other, set this to
         <code>auto</code>. </p>")
  @as("DateFormat")
  dateFormat: option<string_>,
  @ocaml.doc("<p>The name of the Amazon Redshift data warehouse (service) that you are working
         with.</p>")
  @as("DatabaseName")
  databaseName: option<string_>,
  @ocaml.doc("<p>A value that sets the amount of time to wait (in milliseconds) before timing out,
         beginning from when you initially establish a connection.</p>")
  @as("ConnectionTimeout")
  connectionTimeout: option<integerOptional>,
  @ocaml.doc("<p>If you set <code>CompUpdate</code> to <code>true</code> Amazon Redshift applies
         automatic compression if the table is empty. This applies even if the table columns already
         have encodings other than <code>RAW</code>. If you set <code>CompUpdate</code> to
            <code>false</code>, automatic compression is disabled and existing column encodings
         aren't changed. The default is <code>true</code>.</p>")
  @as("CompUpdate")
  compUpdate: option<booleanOptional>,
  @ocaml.doc("<p>If Amazon Redshift is configured to support case sensitive schema names, set
            <code>CaseSensitiveNames</code> to <code>true</code>. The default is
         <code>false</code>.</p>")
  @as("CaseSensitiveNames")
  caseSensitiveNames: option<booleanOptional>,
  @ocaml.doc(
    "<p>The name of the intermediate S3 bucket used to store .csv files before uploading data to Redshift.</p>"
  )
  @as("BucketName")
  bucketName: option<string_>,
  @ocaml.doc("<p>An S3 folder where the comma-separated-value (.csv) files are stored before being 
         uploaded to the target Redshift cluster. </p>
         <p>For full load mode, DMS converts source records into .csv files and loads them to
         the <i>BucketFolder/TableID</i> path. DMS uses the Redshift
            <code>COPY</code> command to upload the .csv files to the target table. The files are
         deleted once the <code>COPY</code> operation has finished. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html\">COPY</a> in the
            <i>Amazon Redshift Database Developer Guide</i>.</p>
         <p>For change-data-capture (CDC) mode, DMS creates a <i>NetChanges</i> table, 
         and loads the .csv files to this <i>BucketFolder/NetChangesTableID</i> path.</p>")
  @as("BucketFolder")
  bucketFolder: option<string_>,
  @ocaml.doc("<p>Code to run after connecting. This parameter should contain the code itself, not the
         name of a file containing the code.</p>")
  @as("AfterConnectScript")
  afterConnectScript: option<string_>,
  @ocaml.doc("<p>A value that indicates to allow any date format, including invalid formats such as
         00/00/00 00:00:00, to be loaded without generating an error. You can choose
            <code>true</code> or <code>false</code> (the default).</p>
         <p>This parameter applies only to TIMESTAMP and DATE columns. Always use ACCEPTANYDATE with
         the DATEFORMAT parameter. If the date format for the data doesn't match the DATEFORMAT
         specification, Amazon Redshift inserts a NULL value into that field. </p>")
  @as("AcceptAnyDate")
  acceptAnyDate: option<booleanOptional>,
}
@ocaml.doc("<p>Provides information that defines a Redis target endpoint.</p>")
type redisSettings = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the certificate authority (CA) that DMS uses to
         connect to your Redis target endpoint.</p>")
  @as("SslCaCertificateArn")
  sslCaCertificateArn: option<string_>,
  @ocaml.doc("<p>The password provided with the <code>auth-role</code> and 
         <code>auth-token</code> options of the <code>AuthType</code> setting for a Redis 
         target endpoint.</p>")
  @as("AuthPassword")
  authPassword: option<secretString>,
  @ocaml.doc("<p>The user name provided with the <code>auth-role</code> option of the 
         <code>AuthType</code> setting for a Redis target endpoint.</p>")
  @as("AuthUserName")
  authUserName: option<string_>,
  @ocaml.doc("<p>The type of authentication to perform when connecting to a Redis target. Options include
            <code>none</code>, <code>auth-token</code>, and <code>auth-role</code>. The
            <code>auth-token</code> option requires an <code>AuthPassword</code> value to be provided. The
         <code>auth-role</code> option requires <code>AuthUserName</code> and <code>AuthPassword</code> values
         to be provided.</p>")
  @as("AuthType")
  authType: option<redisAuthTypeValue>,
  @ocaml.doc("<p>The connection to a Redis target endpoint using Transport Layer Security (TLS). Valid
         values include <code>plaintext</code> and <code>ssl-encryption</code>. The default is
            <code>ssl-encryption</code>. The <code>ssl-encryption</code> option makes an encrypted
         connection. Optionally, you can identify an Amazon Resource Name (ARN) for an SSL certificate authority (CA) 
          using the <code>SslCaCertificateArn </code>setting. If an ARN isn't given for a CA, DMS
         uses the Amazon root CA.</p>
         <p>The <code>plaintext</code> option doesn't provide Transport Layer Security (TLS) 
         encryption for traffic between endpoint and database.</p>")
  @as("SslSecurityProtocol")
  sslSecurityProtocol: option<sslSecurityProtocolValue>,
  @ocaml.doc("<p>Transmission Control Protocol (TCP) port for the endpoint.</p>") @as("Port")
  port: integer_,
  @ocaml.doc("<p>Fully qualified domain name of the endpoint.</p>") @as("ServerName")
  serverName: string_,
}
@ocaml.doc("<p>Provides information that defines a PostgreSQL endpoint.</p>")
type postgreSQLSettings = {
  @ocaml.doc(
    "<p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code> that contains the PostgreSQL endpoint connection details.</p>"
  )
  @as("SecretsManagerSecretId")
  secretsManagerSecretId: option<string_>,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
         trusted entity and grants the required permissions to access the value in
         <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
         <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager
          secret that allows access to the PostgreSQL endpoint.</p>
         <note>
            <p>You can specify one of two sets of values for these permissions. You can specify the
            values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
            clear-text values for <code>UserName</code>, <code>Password</code>,
               <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
            information on creating this <code>SecretsManagerSecret</code> and the
               <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
            required to access it, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager\">Using secrets to access Database Migration Service
               resources</a> in the <i>Database Migration Service User
               Guide</i>.</p>
         </note>")
  @as("SecretsManagerAccessRoleArn")
  secretsManagerAccessRoleArn: option<string_>,
  @ocaml.doc("<p>Specifies the plugin to use to create a replication slot.</p>") @as("PluginName")
  pluginName: option<pluginNameValue>,
  @ocaml.doc("<p>Sets the name of a previously created logical replication slot
         for a change data capture (CDC) load of the PostgreSQL source instance. </p>
         <p>When used with the <code>CdcStartPosition</code>
         request parameter for the DMS API , this attribute also makes it possible to use native CDC
         start points. DMS verifies that the specified logical
         replication slot exists before starting the CDC load task. It
         also verifies that the task was created with a valid setting of
         <code>CdcStartPosition</code>. If the specified slot
         doesn't exist or the task doesn't have a valid
         <code>CdcStartPosition</code> setting, DMS raises an
         error.</p>
         <p>For more information about setting the <code>CdcStartPosition</code> request parameter,
         see <a href=\"dms/latest/userguide/CHAP_Task.CDC.html#CHAP_Task.CDC.StartPoint.Native\">Determining a CDC native start point</a> in the <i>Database Migration Service User
            Guide</i>. For more information about using <code>CdcStartPosition</code>, see
            <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateReplicationTask.html\">CreateReplicationTask</a>, <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html\">StartReplicationTask</a>, and <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_ModifyReplicationTask.html\">ModifyReplicationTask</a>.</p>")
  @as("SlotName")
  slotName: option<string_>,
  @ocaml.doc("<p>Endpoint connection user name.</p>") @as("Username") username: option<string_>,
  @ocaml.doc("<p>Fully qualified domain name of the endpoint.</p>") @as("ServerName")
  serverName: option<string_>,
  @ocaml.doc("<p>Endpoint TCP port. The default is 5432.</p>") @as("Port")
  port: option<integerOptional>,
  @ocaml.doc("<p>Endpoint connection password.</p>") @as("Password") password: option<secretString>,
  @ocaml.doc("<p>Sets the WAL heartbeat frequency (in minutes).</p>") @as("HeartbeatFrequency")
  heartbeatFrequency: option<integerOptional>,
  @ocaml.doc("<p>Sets the schema in which the heartbeat artifacts are created.</p>")
  @as("HeartbeatSchema")
  heartbeatSchema: option<string_>,
  @ocaml.doc("<p>The write-ahead log (WAL) heartbeat feature mimics a dummy transaction. By doing this,
         it prevents idle logical replication slots from holding onto old WAL logs, which can result in
         storage full situations on the source. This heartbeat keeps <code>restart_lsn</code> moving
         and prevents storage full scenarios.</p>")
  @as("HeartbeatEnable")
  heartbeatEnable: option<booleanOptional>,
  @ocaml.doc("<p>When set to <code>true</code>, this value causes a task to fail if the
         actual size of a LOB column is greater than the specified
         <code>LobMaxSize</code>.</p>
         <p>If task is set to Limited LOB mode and this option is set to
         true, the task fails instead of truncating the LOB data.</p>")
  @as("FailTasksOnLobTruncation")
  failTasksOnLobTruncation: option<booleanOptional>,
  @ocaml.doc("<p>Sets the client statement timeout for the PostgreSQL
         instance, in seconds. The default value is 60 seconds.</p>
         <p>Example: <code>executeTimeout=100;</code>
         </p>")
  @as("ExecuteTimeout")
  executeTimeout: option<integerOptional>,
  @ocaml.doc("<p>The schema in which the operational DDL database artifacts
         are created.</p>
         <p>Example: <code>ddlArtifactsSchema=xyzddlschema;</code>
         </p>")
  @as("DdlArtifactsSchema")
  ddlArtifactsSchema: option<string_>,
  @ocaml.doc("<p>Database name for the endpoint.</p>") @as("DatabaseName")
  databaseName: option<string_>,
  @ocaml.doc("<p>Specifies the maximum size (in KB) of any .csv file used to
         transfer data to PostgreSQL.</p>
         <p>Example: <code>maxFileSize=512</code>
         </p>")
  @as("MaxFileSize")
  maxFileSize: option<integerOptional>,
  @ocaml.doc("<p>To capture DDL events, DMS creates various artifacts in
         the PostgreSQL database when the task starts. You can later
         remove these artifacts.</p>
         <p>If this value is set to <code>N</code>, you don't have to create tables or
         triggers on the source database.</p>")
  @as("CaptureDdls")
  captureDdls: option<booleanOptional>,
  @ocaml.doc("<p>For use with change data capture (CDC) only, this attribute
         has DMS bypass foreign keys and user triggers to
         reduce the time it takes to bulk load data.</p>
         <p>Example: <code>afterConnectScript=SET
         session_replication_role='replica'</code>
         </p>")
  @as("AfterConnectScript")
  afterConnectScript: option<string_>,
}
@ocaml.doc("<p>Describes a maintenance action pending for an DMS resource, including when and how
         it will be applied. This data type is a response element to the
            <code>DescribePendingMaintenanceActions</code> operation.</p>")
type pendingMaintenanceAction = {
  @ocaml.doc("<p>A description providing more detail about the maintenance action.</p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The effective date when the pending maintenance action will be applied to the resource.
         This date takes into account opt-in requests received from the
            <code>ApplyPendingMaintenanceAction</code> API operation, and also the
            <code>AutoAppliedAfterDate</code> and <code>ForcedApplyDate</code> parameter values.
         This value is blank if an opt-in request has not been received and nothing has been
         specified for <code>AutoAppliedAfterDate</code> or <code>ForcedApplyDate</code>.</p>")
  @as("CurrentApplyDate")
  currentApplyDate: option<tstamp>,
  @ocaml.doc("<p>The type of opt-in request that has been received for the resource.</p>")
  @as("OptInStatus")
  optInStatus: option<string_>,
  @ocaml.doc("<p>The date when the maintenance action will be automatically applied. The maintenance
         action is applied to the resource on this date regardless of the maintenance window for the
         resource. If this date is specified, any <code>immediate</code> opt-in requests are
         ignored.</p>")
  @as("ForcedApplyDate")
  forcedApplyDate: option<tstamp>,
  @ocaml.doc("<p>The date of the maintenance window when the action is to be applied. The maintenance
         action is applied to the resource during its first maintenance window after this date. If
         this date is specified, any <code>next-maintenance</code> opt-in requests are
         ignored.</p>")
  @as("AutoAppliedAfterDate")
  autoAppliedAfterDate: option<tstamp>,
  @ocaml.doc("<p>The type of pending maintenance action that is available for the resource.</p>")
  @as("Action")
  action: option<string_>,
}
@ocaml.doc("<p>Provides information that defines an Amazon Neptune endpoint.</p>")
type neptuneSettings = {
  @ocaml.doc("<p>If you want Identity and Access Management (IAM) authorization enabled for this
         endpoint, set this parameter to <code>true</code>. Then attach the appropriate IAM policy
         document to your service role specified by <code>ServiceAccessRoleArn</code>. The default
         is <code>false</code>.</p>")
  @as("IamAuthEnabled")
  iamAuthEnabled: option<booleanOptional>,
  @ocaml.doc("<p>The number of times for DMS to retry a bulk load of migrated graph data to the
         Neptune target database before raising an error. The default is 5.</p>")
  @as("MaxRetryCount")
  maxRetryCount: option<integerOptional>,
  @ocaml.doc("<p>The maximum size in kilobytes of migrated graph data stored in a .csv file before DMS
         bulk-loads the data to the Neptune target database. The default is 1,048,576 KB. If the
         bulk load is successful, DMS clears the bucket, ready to store the next batch of
         migrated graph data.</p>")
  @as("MaxFileSize")
  maxFileSize: option<integerOptional>,
  @ocaml.doc("<p>The number of milliseconds for DMS to wait to retry a bulk-load of migrated graph
         data to the Neptune target database before raising an error. The default is 250.</p>")
  @as("ErrorRetryDuration")
  errorRetryDuration: option<integerOptional>,
  @ocaml.doc("<p>A folder path where you want DMS to store migrated graph data in the S3 bucket
         specified by <code>S3BucketName</code>
         </p>")
  @as("S3BucketFolder")
  s3BucketFolder: string_,
  @ocaml.doc("<p>The name of the Amazon S3 bucket where DMS can temporarily store migrated graph data
         in .csv files before bulk-loading it to the Neptune target database. DMS maps the SQL
         source data to graph data before storing it in these .csv files.</p>")
  @as("S3BucketName")
  s3BucketName: string_,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the service role that you created for the Neptune
         target endpoint. The role must allow the <code>iam:PassRole</code> action.
         For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.ServiceRole\">Creating an IAM Service Role for Accessing Amazon Neptune as a Target</a> in the <i>Database Migration Service User
            Guide. </i>
         </p>")
  @as("ServiceAccessRoleArn")
  serviceAccessRoleArn: option<string_>,
}
@ocaml.doc("<p>Provides information that defines a MySQL endpoint.</p>")
type mySQLSettings = {
  @ocaml.doc(
    "<p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code> that contains the MySQL endpoint connection details.</p>"
  )
  @as("SecretsManagerSecretId")
  secretsManagerSecretId: option<string_>,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
         trusted entity and grants the required permissions to access the value in
         <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
         <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager
          secret that allows access to the MySQL endpoint.</p>
         <note>
            <p>You can specify one of two sets of values for these permissions. You can specify the
            values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
            clear-text values for <code>UserName</code>, <code>Password</code>,
               <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
            information on creating this <code>SecretsManagerSecret</code> and the
               <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
            required to access it, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager\">Using secrets to access Database Migration Service
               resources</a> in the <i>Database Migration Service User
               Guide</i>.</p>
         </note>")
  @as("SecretsManagerAccessRoleArn")
  secretsManagerAccessRoleArn: option<string_>,
  @ocaml.doc("<p>Endpoint connection user name.</p>") @as("Username") username: option<string_>,
  @ocaml.doc("<p>Specifies the time zone for the source MySQL database.</p>
         <p>Example: <code>serverTimezone=US/Pacific;</code>
         </p>
         <p>Note: Do not enclose time zones in single quotes.</p>")
  @as("ServerTimezone")
  serverTimezone: option<string_>,
  @ocaml.doc("<p>Fully qualified domain name of the endpoint.</p>") @as("ServerName")
  serverName: option<string_>,
  @ocaml.doc("<p>Endpoint TCP port.</p>") @as("Port") port: option<integerOptional>,
  @ocaml.doc("<p>Endpoint connection password.</p>") @as("Password") password: option<secretString>,
  @ocaml.doc("<p>Improves performance when loading data into the MySQL-compatible target database.
         Specifies how many threads to use to load the data into the MySQL-compatible target
         database. Setting a large number of threads can have an adverse effect on database
         performance, because a separate connection is required for each thread. The default is one.</p>
         <p>Example: <code>parallelLoadThreads=1</code>
         </p>")
  @as("ParallelLoadThreads")
  parallelLoadThreads: option<integerOptional>,
  @ocaml.doc("<p>Specifies the maximum size (in KB) of any .csv file used to
         transfer data to a MySQL-compatible database.</p>
         <p>Example: <code>maxFileSize=512</code>
         </p>")
  @as("MaxFileSize")
  maxFileSize: option<integerOptional>,
  @ocaml.doc("<p>Specifies where to migrate source tables on the target, either
         to a single database or multiple databases.</p>
         <p>Example: <code>targetDbType=MULTIPLE_DATABASES</code>
         </p>")
  @as("TargetDbType")
  targetDbType: option<targetDbType>,
  @ocaml.doc("<p>Specifies how often to check the binary log for new
         changes/events when the database is idle. The default is five seconds.</p>
         <p>Example: <code>eventsPollInterval=5;</code>
         </p>
         <p>In the example, DMS checks for changes in the binary
         logs every five seconds.</p>")
  @as("EventsPollInterval")
  eventsPollInterval: option<integerOptional>,
  @ocaml.doc("<p>Database name for the endpoint. For a MySQL source or target endpoint, don't explicitly
         specify the database using the <code>DatabaseName</code> request parameter on either the
         <code>CreateEndpoint</code> or <code>ModifyEndpoint</code> API call. Specifying
         <code>DatabaseName</code> when you create or modify a MySQL endpoint replicates all the
         task tables to this single database. For MySQL endpoints, you specify the database only when
         you specify the schema in the table-mapping rules of the DMS task.</p>")
  @as("DatabaseName")
  databaseName: option<string_>,
  @ocaml.doc("<p>Adjusts the behavior of DMS when migrating from an SQL Server source database 
         that is hosted as part of an Always On availability group cluster.  If you need DMS to poll 
         all the nodes in the Always On cluster for transaction backups, set this attribute to 
         <code>false</code>.</p>")
  @as("CleanSourceMetadataOnMismatch")
  cleanSourceMetadataOnMismatch: option<booleanOptional>,
  @ocaml.doc("<p>Specifies a script to run immediately after DMS
         connects to the endpoint. The migration task continues
         running regardless if the SQL statement succeeds or fails.</p>
         <p>For this parameter, provide the code of the script itself, not the name of a file
         containing the script.</p>")
  @as("AfterConnectScript")
  afterConnectScript: option<string_>,
}
@ocaml.doc("<p>Provides information that defines a MongoDB endpoint.</p>")
type mongoDbSettings = {
  @ocaml.doc(
    "<p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code> that contains the MongoDB endpoint connection details.</p>"
  )
  @as("SecretsManagerSecretId")
  secretsManagerSecretId: option<string_>,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
         trusted entity and grants the required permissions to access the value in
         <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
         <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager secret that allows access to the MongoDB endpoint.</p>
         <note>
            <p>You can specify one of two sets of values for these permissions. You can specify the
            values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
            clear-text values for <code>UserName</code>, <code>Password</code>,
               <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
            information on creating this <code>SecretsManagerSecret</code> and the
               <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
            required to access it, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager\">Using secrets to access Database Migration Service
               resources</a> in the <i>Database Migration Service User
               Guide</i>.</p>
         </note>")
  @as("SecretsManagerAccessRoleArn")
  secretsManagerAccessRoleArn: option<string_>,
  @ocaml.doc("<p>The KMS key identifier that is used to encrypt the content on the replication
         instance. If you don't specify a value for the <code>KmsKeyId</code> parameter, then
         DMS uses your default encryption key. KMS creates the default encryption key for
         your Amazon Web Services account. Your Amazon Web Services account has a different default encryption key for each Amazon Web Services Region.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p> The MongoDB database name. This setting isn't used when <code>AuthType</code> is
         set to <code>\"no\"</code>. </p>
         <p>The default is <code>\"admin\"</code>.</p>")
  @as("AuthSource")
  authSource: option<string_>,
  @ocaml.doc("<p> Indicates the number of documents to preview to determine the document organization.
         Use this setting when <code>NestingLevel</code> is set to <code>\"one\"</code>. </p>
         <p>Must be a positive value greater than <code>0</code>. Default value is
         <code>1000</code>.</p>")
  @as("DocsToInvestigate")
  docsToInvestigate: option<string_>,
  @ocaml.doc("<p> Specifies the document ID. Use this setting when <code>NestingLevel</code> is set to
            <code>\"none\"</code>. </p>
         <p>Default value is <code>\"false\"</code>. </p>")
  @as("ExtractDocId")
  extractDocId: option<string_>,
  @ocaml.doc("<p> Specifies either document or table mode. </p>
         <p>Default value is <code>\"none\"</code>. Specify <code>\"none\"</code> to use document mode.
         Specify <code>\"one\"</code> to use table mode.</p>")
  @as("NestingLevel")
  nestingLevel: option<nestingLevelValue>,
  @ocaml.doc("<p> The authentication mechanism you use to access the MongoDB source endpoint.</p>
         <p>For the default value, in MongoDB version 2.x, <code>\"default\"</code> is
            <code>\"mongodb_cr\"</code>. For MongoDB version 3.x or later, <code>\"default\"</code> is
            <code>\"scram_sha_1\"</code>. This setting isn't used when <code>AuthType</code> is
         set to <code>\"no\"</code>.</p>")
  @as("AuthMechanism")
  authMechanism: option<authMechanismValue>,
  @ocaml.doc("<p> The authentication type you use to access the MongoDB source endpoint.</p>
         <p>When when set to <code>\"no\"</code>, user name and password parameters are not used and
         can be empty. </p>")
  @as("AuthType")
  authType: option<authTypeValue>,
  @ocaml.doc("<p> The database name on the MongoDB source endpoint. </p>") @as("DatabaseName")
  databaseName: option<string_>,
  @ocaml.doc("<p> The port value for the MongoDB source endpoint. </p>") @as("Port")
  port: option<integerOptional>,
  @ocaml.doc("<p> The name of the server on the MongoDB source endpoint. </p>") @as("ServerName")
  serverName: option<string_>,
  @ocaml.doc("<p> The password for the user account you use to access the MongoDB source endpoint.
      </p>")
  @as("Password")
  password: option<secretString>,
  @ocaml.doc("<p>The user name you use to access the MongoDB source endpoint. </p>") @as("Username")
  username: option<string_>,
}
@ocaml.doc("<p>Provides information that defines a Microsoft SQL Server endpoint.</p>")
type microsoftSQLServerSettings = {
  @ocaml.doc(
    "<p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code> that contains the SQL Server endpoint connection details.</p>"
  )
  @as("SecretsManagerSecretId")
  secretsManagerSecretId: option<string_>,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
         trusted entity and grants the required permissions to access the value in
         <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
         <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager
          secret that allows access to the SQL Server endpoint.</p>
         <note>
            <p>You can specify one of two sets of values for these permissions. You can specify the
            values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
            clear-text values for <code>UserName</code>, <code>Password</code>,
               <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
            information on creating this <code>SecretsManagerSecret</code> and the
               <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
            required to access it, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager\">Using secrets to access Database Migration Service
               resources</a> in the <i>Database Migration Service User
               Guide</i>.</p>
         </note>")
  @as("SecretsManagerAccessRoleArn")
  secretsManagerAccessRoleArn: option<string_>,
  @ocaml.doc("<p>When this attribute is set to <code>Y</code>, DMS processes third-party 
         transaction log backups if they are created in native format.</p>")
  @as("UseThirdPartyBackupDevice")
  useThirdPartyBackupDevice: option<booleanOptional>,
  @ocaml.doc("<p>Use this to attribute to transfer data for full-load operations
         using BCP. When the target table contains an identity
         column that does not exist in the source table, you must
         disable the use BCP for loading table option.</p>")
  @as("UseBcpFullLoad")
  useBcpFullLoad: option<booleanOptional>,
  @ocaml.doc("<p>Endpoint connection user name.</p>") @as("Username") username: option<string_>,
  @ocaml.doc("<p>Fully qualified domain name of the endpoint.</p>") @as("ServerName")
  serverName: option<string_>,
  @ocaml.doc("<p>Use this attribute to minimize the need to access the
         backup log and enable DMS to prevent truncation using one of the
         following two methods.</p>
         <p>
            <i>Start transactions in the database:</i> This is the default
         method. When this method is used, DMS prevents
         TLOG truncation by mimicking a transaction in the database.
         As long as such a transaction is open, changes that appear
         after the transaction started aren't truncated. If you need
         Microsoft Replication to be enabled in your database, then
         you must choose this method.</p>
         <p>
            <i>Exclusively use sp_repldone within a single task</i>: When
         this method is used, DMS reads the changes and then
         uses sp_repldone to mark the TLOG transactions as ready
         for truncation. Although this method doesn't involve any
         transactional activities, it can only be used when Microsoft
         Replication isn't running. Also, when using this method, only
         one DMS task can access the database at any given
         time. Therefore, if you need to run parallel DMS tasks
         against the same database, use the default method.</p>")
  @as("SafeguardPolicy")
  safeguardPolicy: option<safeguardPolicy>,
  @ocaml.doc("<p>When this attribute is set to <code>Y</code>, DMS only reads changes
         from transaction log backups and doesn't read from the
         active transaction log file during ongoing replication. Setting
         this parameter to <code>Y</code> enables you to control active transaction
         log file growth during full load and ongoing replication
         tasks. However, it can add some source latency to ongoing
         replication.</p>")
  @as("ReadBackupOnly")
  readBackupOnly: option<booleanOptional>,
  @ocaml.doc("<p>Cleans and recreates table metadata information on the replication instance when 
         a mismatch occurs. An example is a situation where running an alter DDL statement on 
         a table might result in different information about the table cached in the replication 
         instance.</p>")
  @as("QuerySingleAlwaysOnNode")
  querySingleAlwaysOnNode: option<booleanOptional>,
  @ocaml.doc("<p>Endpoint connection password.</p>") @as("Password") password: option<secretString>,
  @ocaml.doc("<p>Specifies a file group for the DMS internal tables. When the replication task
         starts, all the internal DMS control tables (awsdms_ apply_exception, awsdms_apply,
         awsdms_changes) are created for the specified file group.</p>")
  @as("ControlTablesFileGroup")
  controlTablesFileGroup: option<string_>,
  @ocaml.doc("<p>Database name for the endpoint.</p>") @as("DatabaseName")
  databaseName: option<string_>,
  @ocaml.doc("<p>The maximum size of the packets (in bytes) used to transfer
         data using BCP.</p>")
  @as("BcpPacketSize")
  bcpPacketSize: option<integerOptional>,
  @ocaml.doc("<p>Endpoint TCP port.</p>") @as("Port") port: option<integerOptional>,
}
@ocaml.doc("<p>Provides information that describes an Amazon Kinesis Data Stream endpoint. This
         information includes the output format of records applied to the endpoint and details of
         transaction and control table data information.</p>")
type kinesisSettings = {
  @ocaml.doc("<p>Set this optional parameter to <code>true</code> to avoid adding a '0x' prefix
         to raw data in hexadecimal format. For example, by default, DMS adds a '0x'
         prefix to the LOB column type in hexadecimal format moving from an Oracle source to an
         Amazon Kinesis target. Use the <code>NoHexPrefix</code> endpoint setting to enable
         migration of RAW data type columns without adding the '0x' prefix.</p>")
  @as("NoHexPrefix")
  noHexPrefix: option<booleanOptional>,
  @ocaml.doc(
    "<p>Include NULL and empty columns for records migrated to the endpoint. The default is <code>false</code>.</p>"
  )
  @as("IncludeNullAndEmpty")
  includeNullAndEmpty: option<booleanOptional>,
  @ocaml.doc("<p>Shows detailed control information for table definition, column definition, and table
         and column changes in the Kinesis message output. The default is <code>false</code>.</p>")
  @as("IncludeControlDetails")
  includeControlDetails: option<booleanOptional>,
  @ocaml.doc("<p>Includes any data definition language (DDL) operations that change the table in the
         control data, such as <code>rename-table</code>, <code>drop-table</code>,
            <code>add-column</code>, <code>drop-column</code>, and <code>rename-column</code>. The
         default is <code>false</code>.</p>")
  @as("IncludeTableAlterOperations")
  includeTableAlterOperations: option<booleanOptional>,
  @ocaml.doc("<p>Prefixes schema and table names to partition values, when the partition type is
            <code>primary-key-type</code>. Doing this increases data distribution among Kinesis
         shards. For example, suppose that a SysBench schema has thousands of tables and each table
         has only limited range for a primary key. In this case, the same primary key is sent from
         thousands of tables to the same shard, which causes throttling. The default is <code>false</code>.</p>")
  @as("PartitionIncludeSchemaTable")
  partitionIncludeSchemaTable: option<booleanOptional>,
  @ocaml.doc("<p>Shows the partition value within the Kinesis message output, unless the partition type
         is <code>schema-table-type</code>. The default is <code>false</code>.</p>")
  @as("IncludePartitionValue")
  includePartitionValue: option<booleanOptional>,
  @ocaml.doc("<p>Provides detailed transaction information from the source database. This information
         includes a commit timestamp, a log position, and values for <code>transaction_id</code>,
         previous <code>transaction_id</code>, and <code>transaction_record_id</code> (the record
         offset within a transaction). The default is <code>false</code>.</p>")
  @as("IncludeTransactionDetails")
  includeTransactionDetails: option<booleanOptional>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the IAM role
         that DMS uses to write to the Kinesis data stream.
         The role must allow the <code>iam:PassRole</code> action.</p>")
  @as("ServiceAccessRoleArn")
  serviceAccessRoleArn: option<string_>,
  @ocaml.doc("<p>The output format for the records created on the endpoint. The message format is
         <code>JSON</code> (default) or <code>JSON_UNFORMATTED</code> (a single line with no tab).</p>")
  @as("MessageFormat")
  messageFormat: option<messageFormatValue>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the Amazon Kinesis Data Streams endpoint.</p>")
  @as("StreamArn")
  streamArn: option<string_>,
}
type keyList = array<string_>
@ocaml.doc("<p>Provides information that describes an Apache Kafka endpoint. This
         information includes the output format of records applied to the endpoint and details of
         transaction and control table data information.</p>")
type kafkaSettings = {
  @ocaml.doc("<p>Set this optional parameter to <code>true</code> to avoid adding a '0x' prefix
         to raw data in hexadecimal format. For example, by default, DMS adds a '0x'
         prefix to the LOB column type in hexadecimal format moving from an Oracle source to a Kafka
         target. Use the <code>NoHexPrefix</code> endpoint setting to enable migration of RAW data
         type columns without adding the '0x' prefix.</p>")
  @as("NoHexPrefix")
  noHexPrefix: option<booleanOptional>,
  @ocaml.doc("<p>The secure password you created when you first set up your MSK cluster to validate a client identity and 
         make an encrypted connection between server and client using SASL-SSL authentication.</p>")
  @as("SaslPassword")
  saslPassword: option<secretString>,
  @ocaml.doc("<p> The secure user name you created when you first set up your MSK cluster to validate a
         client identity and make an encrypted connection between server and client using SASL-SSL
         authentication.</p>")
  @as("SaslUsername")
  saslUsername: option<string_>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) for the private certificate authority (CA) cert that DMS uses 
         to securely connect to your Kafka target endpoint.</p>")
  @as("SslCaCertificateArn")
  sslCaCertificateArn: option<string_>,
  @ocaml.doc(
    "<p> The password for the client private key used to securely connect to a Kafka target endpoint.</p>"
  )
  @as("SslClientKeyPassword")
  sslClientKeyPassword: option<secretString>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) for the client private key used to securely connect to a Kafka target endpoint.</p>"
  )
  @as("SslClientKeyArn")
  sslClientKeyArn: option<string_>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the client certificate used to securely connect to a Kafka target endpoint.</p>"
  )
  @as("SslClientCertificateArn")
  sslClientCertificateArn: option<string_>,
  @ocaml.doc("<p>Set secure connection to a Kafka target endpoint using Transport Layer Security (TLS). Options include 
         <code>ssl-encryption</code>, <code>ssl-authentication</code>, and <code>sasl-ssl</code>. 
         <code>sasl-ssl</code> requires <code>SaslUsername</code> and <code>SaslPassword</code>.</p>")
  @as("SecurityProtocol")
  securityProtocol: option<kafkaSecurityProtocol>,
  @ocaml.doc(
    "<p>Include NULL and empty columns for records migrated to the endpoint. The default is <code>false</code>.</p>"
  )
  @as("IncludeNullAndEmpty")
  includeNullAndEmpty: option<booleanOptional>,
  @ocaml.doc(
    "<p>The maximum size in bytes for records created on the endpoint The default is 1,000,000.</p>"
  )
  @as("MessageMaxBytes")
  messageMaxBytes: option<integerOptional>,
  @ocaml.doc("<p>Shows detailed control information for table definition, column definition, and table
         and column changes in the Kafka message output. The default is <code>false</code>.</p>")
  @as("IncludeControlDetails")
  includeControlDetails: option<booleanOptional>,
  @ocaml.doc("<p>Includes any data definition language (DDL) operations that change the table in the
         control data, such as <code>rename-table</code>, <code>drop-table</code>,
            <code>add-column</code>, <code>drop-column</code>, and <code>rename-column</code>. The
         default is <code>false</code>.</p>")
  @as("IncludeTableAlterOperations")
  includeTableAlterOperations: option<booleanOptional>,
  @ocaml.doc("<p>Prefixes schema and table names to partition values, when the partition type is
            <code>primary-key-type</code>. Doing this increases data distribution among Kafka
         partitions. For example, suppose that a SysBench schema has thousands of tables and each
         table has only limited range for a primary key. In this case, the same primary key is sent
         from thousands of tables to the same partition, which causes throttling. The default is
            <code>false</code>.</p>")
  @as("PartitionIncludeSchemaTable")
  partitionIncludeSchemaTable: option<booleanOptional>,
  @ocaml.doc("<p>Shows the partition value within the Kafka message output unless the partition type is
            <code>schema-table-type</code>. The default is <code>false</code>.</p>")
  @as("IncludePartitionValue")
  includePartitionValue: option<booleanOptional>,
  @ocaml.doc("<p>Provides detailed transaction information from the source database. This information
         includes a commit timestamp, a log position, and values for <code>transaction_id</code>,
         previous <code>transaction_id</code>, and <code>transaction_record_id</code> (the record
         offset within a transaction). The default is <code>false</code>.</p>")
  @as("IncludeTransactionDetails")
  includeTransactionDetails: option<booleanOptional>,
  @ocaml.doc("<p>The output format for the records created on the endpoint. The message format is
            <code>JSON</code> (default) or <code>JSON_UNFORMATTED</code> (a single line with no
         tab).</p>")
  @as("MessageFormat")
  messageFormat: option<messageFormatValue>,
  @ocaml.doc("<p>The topic to which you migrate the data. If you don't specify a topic, DMS
         specifies <code>\"kafka-default-topic\"</code> as the migration topic.</p>")
  @as("Topic")
  topic: option<string_>,
  @ocaml.doc("<p>A comma-separated list of one or more broker locations in your Kafka cluster that host your Kafka instance. Specify each broker location
         in the form <code>
               <i>broker-hostname-or-ip</i>:<i>port</i>
            </code>. For example, <code>\"ec2-12-345-678-901.compute-1.amazonaws.com:2345\"</code>.
         For more information and examples of specifying a list of broker locations,
         see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html\">Using Apache Kafka as a target for Database Migration Service</a>
         in the <i>Database Migration Service User Guide</i>.
      </p>")
  @as("Broker")
  broker: option<string_>,
}
type integerList = array<integer_>
type individualAssessmentNameList = array<string_>
type includeTestList = array<string_>
@ocaml.doc("<p>Provides information that defines an IBM Db2 LUW endpoint.</p>")
type ibmdb2Settings = {
  @ocaml.doc(
    "<p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code> that contains the Db2 LUW endpoint connection details.</p>"
  )
  @as("SecretsManagerSecretId")
  secretsManagerSecretId: option<string_>,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
         trusted entity and grants the required permissions to access the value in
         <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
         <code>SecretsManagerSecret</code> has the value of
         the Amazon Web Services Secrets Manager secret that allows access to the Db2 LUW endpoint. </p>
         <note>
            <p>You can specify one of two sets of values for these permissions. You can specify the
            values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
            clear-text values for <code>UserName</code>, <code>Password</code>,
               <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
            information on creating this <code>SecretsManagerSecret</code> and the
               <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
            required to access it, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager\">Using secrets to access Database Migration Service
               resources</a> in the <i>Database Migration Service User
               Guide</i>.</p>
         </note>")
  @as("SecretsManagerAccessRoleArn")
  secretsManagerAccessRoleArn: option<string_>,
  @ocaml.doc("<p>Endpoint connection user name.</p>") @as("Username") username: option<string_>,
  @ocaml.doc("<p>Maximum number of bytes per read, as a NUMBER value.
         The default is 64 KB.</p>")
  @as("MaxKBytesPerRead")
  maxKBytesPerRead: option<integerOptional>,
  @ocaml.doc("<p>For ongoing replication (CDC), use CurrentLSN to specify a
         log sequence number (LSN) where you want the replication
         to start.</p>")
  @as("CurrentLsn")
  currentLsn: option<string_>,
  @ocaml.doc("<p>Enables ongoing replication (CDC) as a BOOLEAN value. The
         default is true.</p>")
  @as("SetDataCaptureChanges")
  setDataCaptureChanges: option<booleanOptional>,
  @ocaml.doc("<p>Fully qualified domain name of the endpoint.</p>") @as("ServerName")
  serverName: option<string_>,
  @ocaml.doc("<p>Endpoint TCP port. The default value is 50000.</p>") @as("Port")
  port: option<integerOptional>,
  @ocaml.doc("<p>Endpoint connection password.</p>") @as("Password") password: option<secretString>,
  @ocaml.doc("<p>Database name for the endpoint.</p>") @as("DatabaseName")
  databaseName: option<string_>,
}
@ocaml.doc("<p>Settings in JSON format for the source GCP MySQL endpoint.</p>")
type gcpMySQLSettings = {
  @ocaml.doc("<p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code>
         that contains the MySQL endpoint connection details. </p>")
  @as("SecretsManagerSecretId")
  secretsManagerSecretId: option<string_>,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS
         as the trusted entity and grants the required permissions to access the value in 
         <code>SecretsManagerSecret.</code> The role must allow the <code>iam:PassRole</code> action. 
         <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager secret 
         that allows access to the MySQL endpoint.</p>
         <note>
            <p>You can specify one of two sets of values for these permissions. You can specify 
            the values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify clear-text
            values for <code>UserName</code>, <code>Password</code>, <code>ServerName</code>, and <code>Port</code>.
            You can't specify both. For more information on creating this <code>SecretsManagerSecret</code> 
            and the <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code> required to 
            access it, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager\">Using secrets to access Database Migration Service resources</a> in the 
            Database Migration Service User Guide.
         
      </p>
         </note>")
  @as("SecretsManagerAccessRoleArn")
  secretsManagerAccessRoleArn: option<string_>,
  @ocaml.doc("<p>Endpoint connection user name.</p>") @as("Username") username: option<string_>,
  @ocaml.doc("<p>Specifies the time zone for the source MySQL database.</p>
         
         <p>Example: <code>serverTimezone=US/Pacific;</code>
         </p>
         
         <p>Note: Do not enclose time zones in single quotes.</p>")
  @as("ServerTimezone")
  serverTimezone: option<string_>,
  @ocaml.doc("<p>Endpoint TCP port.</p>") @as("ServerName") serverName: option<string_>,
  @ocaml.doc("<p></p>") @as("Port") port: option<integerOptional>,
  @ocaml.doc("<p>Endpoint connection password.</p>") @as("Password") password: option<secretString>,
  @ocaml.doc("<p>Improves performance when loading data into the MySQL-compatible target database. Specifies how many 
         threads to use to load the data into the MySQL-compatible target database. Setting a large number of 
         threads can have an adverse effect on database performance, because a separate connection is required 
         for each thread. The default is one.</p>
         
         <p>Example: <code>parallelLoadThreads=1</code> 
         </p>")
  @as("ParallelLoadThreads")
  parallelLoadThreads: option<integerOptional>,
  @ocaml.doc("<p>Specifies the maximum size (in KB) of any .csv file used to transfer data to a MySQL-compatible database.</p>
         <p>Example: <code>maxFileSize=512</code> 
         </p>")
  @as("MaxFileSize")
  maxFileSize: option<integerOptional>,
  @ocaml.doc("<p>Specifies where to migrate source tables on the target, either to a single database or multiple databases.</p>
         <p>Example: <code>targetDbType=MULTIPLE_DATABASES</code> 
         </p>")
  @as("TargetDbType")
  targetDbType: option<targetDbType>,
  @ocaml.doc("<p>Specifies how often to check the binary log for new changes/events when the database is idle. The default is five seconds.</p>
         <p>Example: <code>eventsPollInterval=5;</code>
         </p>
         <p>In the example, DMS checks for changes in the binary logs every five seconds. </p>")
  @as("EventsPollInterval")
  eventsPollInterval: option<integerOptional>,
  @ocaml.doc("<p>Database name for the endpoint. For a MySQL source or target endpoint, don't explicitly specify 
         the database using the <code>DatabaseName</code> request parameter on either the <code>CreateEndpoint</code>
         or <code>ModifyEndpoint</code> API call. Specifying <code>DatabaseName</code> when you create or modify a 
         MySQL endpoint replicates all the task tables to this single database. For MySQL endpoints, you specify 
         the database only when you specify the schema in the table-mapping rules of the DMS task. </p>")
  @as("DatabaseName")
  databaseName: option<string_>,
  @ocaml.doc("<p>Adjusts the behavior of DMS when migrating from an SQL Server source database 
         that is hosted as part of an Always On availability group cluster. If you need DMS
         to poll all the nodes in the Always On cluster for transaction backups, set this attribute to <code>false</code>. </p>")
  @as("CleanSourceMetadataOnMismatch")
  cleanSourceMetadataOnMismatch: option<booleanOptional>,
  @ocaml.doc("<p>Specifies a script to run immediately after DMS connects to the endpoint. 
         The migration task continues running regardless if the SQL statement succeeds or fails.</p>
         
         <p>For this parameter, provide the code of the script itself, not the name of a file containing the script. </p>")
  @as("AfterConnectScript")
  afterConnectScript: option<string_>,
}
type filterValueList = array<string_>
type excludeTestList = array<string_>
type eventCategoriesList = array<string_>
type endpointSettingEnumValues = array<string_>
@ocaml.doc("<p>Provides information that defines an OpenSearch endpoint.</p>")
type elasticsearchSettings = {
  @ocaml.doc("<p>The maximum number of seconds for which DMS retries failed API requests to the
         OpenSearch cluster.</p>")
  @as("ErrorRetryDuration")
  errorRetryDuration: option<integerOptional>,
  @ocaml.doc("<p>The maximum percentage of records that can fail to be written before a full load
            operation stops.</p>
         <p>To avoid early failure, this counter is only effective after 1000 records 
         are transferred. OpenSearch also has the concept of error monitoring during the 
         last 10 minutes of an Observation Window. If transfer of all records fail in the 
         last 10 minutes, the full load operation stops. </p>")
  @as("FullLoadErrorPercentage")
  fullLoadErrorPercentage: option<integerOptional>,
  @ocaml.doc("<p>The endpoint for the OpenSearch cluster. DMS uses HTTPS if a transport 
         protocol (http/https) is not specified.</p>")
  @as("EndpointUri")
  endpointUri: string_,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) used by the service to access the IAM role.
         The role must allow the <code>iam:PassRole</code> action.</p>")
  @as("ServiceAccessRoleArn")
  serviceAccessRoleArn: string_,
}
@ocaml.doc("<p>Provides the Amazon Resource Name (ARN) of the Identity and Access Management (IAM)
         role used to define an Amazon DynamoDB target endpoint.</p>")
type dynamoDbSettings = {
  @ocaml.doc(
    "<p> The Amazon Resource Name (ARN) used by the service to access the IAM role. The role must allow the <code>iam:PassRole</code> action.</p>"
  )
  @as("ServiceAccessRoleArn")
  serviceAccessRoleArn: string_,
}
@ocaml.doc("<p>Provides information that defines a DocumentDB endpoint.</p>")
type docDbSettings = {
  @ocaml.doc("<p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code>
         that contains the DocumentDB endpoint connection details.</p>")
  @as("SecretsManagerSecretId")
  secretsManagerSecretId: option<string_>,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
         trusted entity and grants the required permissions to access the value in
         <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
         <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager secret that allows access to the DocumentDB endpoint.</p>
         <note>
            <p>You can specify one of two sets of values for these permissions. You can specify the
            values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
            clear-text values for <code>UserName</code>, <code>Password</code>,
            <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
            information on creating this <code>SecretsManagerSecret</code> and the
            <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
            required to access it, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager\">Using secrets to access Database Migration Service
               resources</a> in the <i>Database Migration Service User
                  Guide</i>.</p>
         </note>")
  @as("SecretsManagerAccessRoleArn")
  secretsManagerAccessRoleArn: option<string_>,
  @ocaml.doc("<p>The KMS key identifier that is used to encrypt the content on the replication
         instance. If you don't specify a value for the <code>KmsKeyId</code> parameter, then
         DMS uses your default encryption key. KMS creates the default encryption key for
         your Amazon Web Services account. Your Amazon Web Services account has a different default encryption key for each Amazon Web Services Region.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p> Indicates the number of documents to preview to determine the document organization.
         Use this setting when <code>NestingLevel</code> is set to <code>\"one\"</code>. </p>
         <p>Must be a positive value greater than <code>0</code>. Default value is
         <code>1000</code>.</p>")
  @as("DocsToInvestigate")
  docsToInvestigate: option<integerOptional>,
  @ocaml.doc("<p> Specifies the document ID. Use this setting when <code>NestingLevel</code> is set to
         <code>\"none\"</code>. </p>
         <p>Default value is <code>\"false\"</code>. </p>")
  @as("ExtractDocId")
  extractDocId: option<booleanOptional>,
  @ocaml.doc("<p> Specifies either document or table mode. </p>
         <p>Default value is <code>\"none\"</code>. Specify <code>\"none\"</code> to use document mode.
         Specify <code>\"one\"</code> to use table mode.</p>")
  @as("NestingLevel")
  nestingLevel: option<nestingLevelValue>,
  @ocaml.doc("<p> The database name on the DocumentDB source endpoint. </p>") @as("DatabaseName")
  databaseName: option<string_>,
  @ocaml.doc("<p> The port value for the DocumentDB source endpoint. </p>") @as("Port")
  port: option<integerOptional>,
  @ocaml.doc("<p> The name of the server on the DocumentDB source endpoint. </p>") @as("ServerName")
  serverName: option<string_>,
  @ocaml.doc("<p> The password for the user account you use to access the DocumentDB source endpoint.
      </p>")
  @as("Password")
  password: option<secretString>,
  @ocaml.doc("<p>The user name you use to access the DocumentDB source endpoint. </p>")
  @as("Username")
  username: option<string_>,
}
@ocaml.doc("<p> The settings in JSON format for the DMS Transfer type source endpoint. </p>")
type dmsTransferSettings = {
  @ocaml.doc("<p> The name of the S3 bucket to use. </p>") @as("BucketName")
  bucketName: option<string_>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) used by the service access IAM role. The role must allow the <code>iam:PassRole</code> action.</p>"
  )
  @as("ServiceAccessRoleArn")
  serviceAccessRoleArn: option<string_>,
}
@ocaml.doc("<p>Status of the connection between an endpoint and a replication instance, including
         Amazon Resource Names (ARNs) and the last error message issued.</p>")
type connection = {
  @ocaml.doc("<p>The replication instance identifier. This parameter is stored as a lowercase
         string.</p>")
  @as("ReplicationInstanceIdentifier")
  replicationInstanceIdentifier: option<string_>,
  @ocaml.doc("<p>The identifier of the endpoint. Identifiers must begin with a letter and must contain only
         ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two
         consecutive hyphens.</p>")
  @as("EndpointIdentifier")
  endpointIdentifier: option<string_>,
  @ocaml.doc("<p>The error message when the connection last failed.</p>") @as("LastFailureMessage")
  lastFailureMessage: option<string_>,
  @ocaml.doc("<p>The connection status. This parameter can return one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>\"successful\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"testing\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"failed\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"deleting\"</code>
               </p>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The ARN string that uniquely identifies the endpoint.</p>") @as("EndpointArn")
  endpointArn: option<string_>,
  @ocaml.doc("<p>The ARN of the replication instance.</p>") @as("ReplicationInstanceArn")
  replicationInstanceArn: option<string_>,
}
@ocaml.doc("<p>The SSL certificate that can be used to encrypt connections between the endpoints and
         the replication instance.</p>")
type certificate = {
  @ocaml.doc("<p>The key length of the cryptographic algorithm being used.</p>") @as("KeyLength")
  keyLength: option<integerOptional>,
  @ocaml.doc("<p>The signing algorithm for the certificate.</p>") @as("SigningAlgorithm")
  signingAlgorithm: option<string_>,
  @ocaml.doc("<p>The final date that the certificate is valid.</p>") @as("ValidToDate")
  validToDate: option<tstamp>,
  @ocaml.doc("<p>The beginning date that the certificate is valid.</p>") @as("ValidFromDate")
  validFromDate: option<tstamp>,
  @ocaml.doc("<p>The owner of the certificate.</p>") @as("CertificateOwner")
  certificateOwner: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the certificate.</p>") @as("CertificateArn")
  certificateArn: option<string_>,
  @ocaml.doc("<p>The location of an imported Oracle Wallet certificate for use with SSL. Example: <code>filebase64(\"${path.root}/rds-ca-2019-root.sso\")</code>
         </p>")
  @as("CertificateWallet")
  certificateWallet: option<certificateWallet>,
  @ocaml.doc(
    "<p>The contents of a <code>.pem</code> file, which contains an X.509 certificate.</p>"
  )
  @as("CertificatePem")
  certificatePem: option<string_>,
  @ocaml.doc("<p>The date that the certificate was created.</p>") @as("CertificateCreationDate")
  certificateCreationDate: option<tstamp>,
  @ocaml.doc("<p>A customer-assigned name for the certificate. Identifiers must begin with a letter and
         must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or
         contain two consecutive hyphens.</p>")
  @as("CertificateIdentifier")
  certificateIdentifier: option<string_>,
}
type availabilityZonesList = array<string_>
@ocaml.doc("<p>The name of an Availability Zone for use during database migration.
            <code>AvailabilityZone</code> is an optional parameter to the <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateReplicationInstance.html\">
               <code>CreateReplicationInstance</code>
            </a> operation, and it’s value relates to
         the Amazon Web Services Region of an endpoint. For example, the availability zone of an endpoint in the
         us-east-1 region might be us-east-1a, us-east-1b, us-east-1c, or us-east-1d.</p>")
type availabilityZone = {
  @ocaml.doc("<p>The name of the Availability Zone.</p>") @as("Name") name: option<string_>,
}
type arnList = array<string_>
@ocaml.doc("<p>Describes a quota for an Amazon Web Services account, for example the number of replication instances
         allowed.</p>")
type accountQuota = {
  @ocaml.doc("<p>The maximum allowed value for the quota.</p>") @as("Max") max: option<long>,
  @ocaml.doc("<p>The amount currently used toward the quota maximum.</p>") @as("Used")
  used: option<long>,
  @ocaml.doc("<p>The name of the DMS quota for this Amazon Web Services account.</p>")
  @as("AccountQuotaName")
  accountQuotaName: option<string_>,
}
type vpcSecurityGroupMembershipList = array<vpcSecurityGroupMembership>
type tagList_ = array<tag>
type tableStatisticsList = array<tableStatistics>
type tableListToReload = array<tableToReload>
type supportedEndpointTypeList = array<supportedEndpointType>
@ocaml.doc("<p>In response to a request by the <code>DescribeReplicationSubnetGroups</code> operation,
         this object identifies a subnet by its given Availability Zone, subnet identifier, and
         status.</p>")
type subnet = {
  @ocaml.doc("<p>The status of the subnet.</p>") @as("SubnetStatus") subnetStatus: option<string_>,
  @ocaml.doc("<p>The Availability Zone of the subnet.</p>") @as("SubnetAvailabilityZone")
  subnetAvailabilityZone: option<availabilityZone>,
  @ocaml.doc("<p>The subnet identifier.</p>") @as("SubnetIdentifier")
  subnetIdentifier: option<string_>,
}
type replicationTaskIndividualAssessmentList = array<replicationTaskIndividualAssessment>
@ocaml.doc("<p>Provides information that describes a premigration assessment run that you have started
         using the <code>StartReplicationTaskAssessmentRun</code> operation.</p>
         <p>Some of the information appears based on other operations that can return the
            <code>ReplicationTaskAssessmentRun</code> object.</p>")
type replicationTaskAssessmentRun = {
  @ocaml.doc("<p>Unique name of the assessment run.</p>") @as("AssessmentRunName")
  assessmentRunName: option<string_>,
  @ocaml.doc("<p>ARN of the KMS encryption key used to encrypt the assessment run results.</p>")
  @as("ResultKmsKeyArn")
  resultKmsKeyArn: option<string_>,
  @ocaml.doc("<p>Encryption mode used to encrypt the assessment run results.</p>")
  @as("ResultEncryptionMode")
  resultEncryptionMode: option<string_>,
  @ocaml.doc("<p>Folder in an Amazon S3 bucket where DMS stores the results of this assessment
         run.</p>")
  @as("ResultLocationFolder")
  resultLocationFolder: option<string_>,
  @ocaml.doc("<p>Amazon S3 bucket where DMS stores the results of this assessment run.</p>")
  @as("ResultLocationBucket")
  resultLocationBucket: option<string_>,
  @ocaml.doc("<p>ARN of the service role used to start the assessment run using the
         <code>StartReplicationTaskAssessmentRun</code> operation. The role must allow the <code>iam:PassRole</code> action.</p>")
  @as("ServiceAccessRoleArn")
  serviceAccessRoleArn: option<string_>,
  @ocaml.doc("<p>Last message generated by an individual assessment failure.</p>")
  @as("LastFailureMessage")
  lastFailureMessage: option<string_>,
  @ocaml.doc("<p>Indication of the completion progress for the individual assessments specified to
         run.</p>")
  @as("AssessmentProgress")
  assessmentProgress: option<replicationTaskAssessmentRunProgress>,
  @ocaml.doc("<p>Date on which the assessment run was created using the
            <code>StartReplicationTaskAssessmentRun</code> operation.</p>")
  @as("ReplicationTaskAssessmentRunCreationDate")
  replicationTaskAssessmentRunCreationDate: option<tstamp>,
  @ocaml.doc("<p>Assessment run status. </p>
         <p>This status can have one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>\"cancelling\"</code> – The assessment run was canceled by the
                  <code>CancelReplicationTaskAssessmentRun</code> operation.</p>
            </li>
            <li>
               <p>
                  <code>\"deleting\"</code> – The assessment run was deleted by the
                  <code>DeleteReplicationTaskAssessmentRun</code> operation.</p>
            </li>
            <li>
               <p>
                  <code>\"failed\"</code> – At least one individual assessment completed with a
                  <code>failed</code> status.</p>
            </li>
            <li>
               <p>
                  <code>\"error-provisioning\"</code> – An internal error occurred while
               resources were provisioned (during <code>provisioning</code> status).</p>
            </li>
            <li>
               <p>
                  <code>\"error-executing\"</code> – An internal error occurred while
               individual assessments ran (during <code>running</code> status).</p>
            </li>
            <li>
               <p>
                  <code>\"invalid state\"</code> – The assessment run is in an unknown state.</p>
            </li>
            <li>
               <p>
                  <code>\"passed\"</code> – All individual assessments have completed, and none
               has a <code>failed</code> status.</p>
            </li>
            <li>
               <p>
                  <code>\"provisioning\"</code> – Resources required to run individual
               assessments are being provisioned.</p>
            </li>
            <li>
               <p>
                  <code>\"running\"</code> – Individual assessments are being run.</p>
            </li>
            <li>
               <p>
                  <code>\"starting\"</code> – The assessment run is starting, but resources are not yet
               being provisioned for individual assessments.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>ARN of the migration task associated with this premigration
         assessment run.</p>")
  @as("ReplicationTaskArn")
  replicationTaskArn: option<string_>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of this assessment run.</p>")
  @as("ReplicationTaskAssessmentRunArn")
  replicationTaskAssessmentRunArn: option<string_>,
}
type replicationTaskAssessmentResultList = array<replicationTaskAssessmentResult>
@ocaml.doc("<p>Provides information that describes a replication task created by the
            <code>CreateReplicationTask</code> operation.</p>")
type replicationTask = {
  @ocaml.doc("<p>The ARN of the replication instance to which this task is moved in response to running
         the <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html\">
               <code>MoveReplicationTask</code>
            </a> operation. Otherwise, this response
         parameter isn't a member of the <code>ReplicationTask</code> object.</p>")
  @as("TargetReplicationInstanceArn")
  targetReplicationInstanceArn: option<string_>,
  @ocaml.doc("<p>Supplemental information that the task requires to migrate the data for certain source and target endpoints. 
            For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html\">Specifying Supplemental Data for Task Settings</a> in the
         <i>Database Migration Service User Guide.</i>
         </p>")
  @as("TaskData")
  taskData: option<string_>,
  @ocaml.doc("<p>The statistics for the task, including elapsed time, tables loaded, and table
         errors.</p>")
  @as("ReplicationTaskStats")
  replicationTaskStats: option<replicationTaskStats>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication task.</p>")
  @as("ReplicationTaskArn")
  replicationTaskArn: option<string_>,
  @ocaml.doc("<p>Indicates the last checkpoint that occurred during a change data capture (CDC)
         operation. You can provide this value to the <code>CdcStartPosition</code> parameter to
         start a CDC operation that begins at that checkpoint.</p>")
  @as("RecoveryCheckpoint")
  recoveryCheckpoint: option<string_>,
  @ocaml.doc("<p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
         either server time or commit time.</p>
         <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
         <p>Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “</p>")
  @as("CdcStopPosition")
  cdcStopPosition: option<string_>,
  @ocaml.doc("<p>Indicates when you want a change data capture (CDC) operation to start. Use either
         <code>CdcStartPosition</code> or <code>CdcStartTime</code> to specify when you want the CDC operation to start.
         Specifying both values results in an error.</p>
         <p>The value can be in date, checkpoint, or LSN/SCN format.</p>
         <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
         <p>Checkpoint Example: --cdc-start-position
         \"checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93\"</p>
         <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>")
  @as("CdcStartPosition")
  cdcStartPosition: option<string_>,
  @ocaml.doc("<p>The date the replication task is scheduled to start.</p>")
  @as("ReplicationTaskStartDate")
  replicationTaskStartDate: option<tstamp>,
  @ocaml.doc("<p>The date the replication task was created.</p>") @as("ReplicationTaskCreationDate")
  replicationTaskCreationDate: option<tstamp>,
  @ocaml.doc("<p>The reason the replication task was stopped. This response parameter can return one of
         the following values:</p>
         <ul>
            <li>
               <p>
                  <code>\"STOP_REASON_FULL_LOAD_COMPLETED\"</code> – Full-load migration
               completed.</p>
            </li>
            <li>
               <p>
                  <code>\"STOP_REASON_CACHED_CHANGES_APPLIED\"</code> – Change data capture (CDC)
               load completed.</p>
            </li>
            <li>
               <p>
                  <code>\"STOP_REASON_CACHED_CHANGES_NOT_APPLIED\"</code> – In a
               full-load and CDC migration, the full load stopped as specified before starting the
               CDC migration.</p>
            </li>
            <li>
               <p>
                  <code>\"STOP_REASON_SERVER_TIME\"</code> – The migration stopped at the
               specified server time.</p>
            </li>
         </ul>")
  @as("StopReason")
  stopReason: option<string_>,
  @ocaml.doc("<p>The last error (failure) message generated for the replication task.</p>")
  @as("LastFailureMessage")
  lastFailureMessage: option<string_>,
  @ocaml.doc("<p>The status of the replication task. This response parameter can return one of
         the following values:</p>
         <ul>
            <li>
               <p>
                  <code>\"moving\"</code> – The task is being moved in response to running the
                  <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html\">
                     <code>MoveReplicationTask</code>
                  </a> operation.</p>
            </li>
            <li>
               <p>
                  <code>\"creating\"</code> – The task is being created in response to running
               the <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateReplicationTask.html\">
                     <code>CreateReplicationTask</code>
                  </a> operation.</p>
            </li>
            <li>
               <p>
                  <code>\"deleting\"</code> – The task is being deleted in response to running
               the <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_DeleteReplicationTask.html\">
                     <code>DeleteReplicationTask</code>
                  </a> operation.</p>
            </li>
            <li>
               <p>
                  <code>\"failed\"</code> – The task failed to successfully complete the database
               migration in response to running the <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html\">
                     <code>StartReplicationTask</code>
                  </a> operation.</p>
            </li>
            <li>
               <p>
                  <code>\"failed-move\"</code> – The task failed to move in response to running
               the <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html\">
                     <code>MoveReplicationTask</code>
                  </a> operation.</p>
            </li>
            <li>
               <p>
                  <code>\"modifying\"</code> – The task definition is being modified in response
               to running the <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_ModifyReplicationTask.html\">
                     <code>ModifyReplicationTask</code>
                  </a> operation.</p>
            </li>
            <li>
               <p>
                  <code>\"ready\"</code> – The task is in a <code>ready</code> state where it can
               respond to other task operations, such as <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html\">
                     <code>StartReplicationTask</code>
                  </a> or <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_DeleteReplicationTask.html\">
                     <code>DeleteReplicationTask</code>
                  </a>. </p>
            </li>
            <li>
               <p>
                  <code>\"running\"</code> – The task is performing a database migration in
               response to running the <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html\">
                     <code>StartReplicationTask</code>
                  </a> operation.</p>
            </li>
            <li>
               <p>
                  <code>\"starting\"</code> – The task is preparing to perform a database
               migration in response to running the <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html\">
                     <code>StartReplicationTask</code>
                  </a> operation.</p>
            </li>
            <li>
               <p>
                  <code>\"stopped\"</code> – The task has stopped in response to running the
                  <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_StopReplicationTask.html\">
                     <code>StopReplicationTask</code>
                  </a> operation.</p>
            </li>
            <li>
               <p>
                  <code>\"stopping\"</code> – The task is preparing to stop in response to
               running the <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_StopReplicationTask.html\">
                     <code>StopReplicationTask</code>
                  </a> operation.</p>
            </li>
            <li>
               <p>
                  <code>\"testing\"</code> – The database migration specified for this task is
               being tested in response to running either the <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessmentRun.html\">
                     <code>StartReplicationTaskAssessmentRun</code>
                  </a> or the
                  <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessment.html\">
                     <code>StartReplicationTaskAssessment</code>
                  </a>
               operation.</p>
               <note>
                  <p>
                     <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessmentRun.html\">
                        <code>StartReplicationTaskAssessmentRun</code>
                     </a> is
                  an improved premigration task assessment operation. The <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessment.html\">
                        <code>StartReplicationTaskAssessment</code>
                     </a>
                  operation assesses data type compatibility only between the source and target
                  database of a given migration task. In contrast, <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessmentRun.html\">
                        <code>StartReplicationTaskAssessmentRun</code>
                     </a>
                  enables you to specify a variety of premigration task assessments in addition to
                  data type compatibility. These assessments include ones for the validity of primary key definitions and
                  likely issues with database migration performance, among others.</p>
               </note>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The settings for the replication task.</p>") @as("ReplicationTaskSettings")
  replicationTaskSettings: option<string_>,
  @ocaml.doc("<p>Table mappings specified in the task.</p>") @as("TableMappings")
  tableMappings: option<string_>,
  @ocaml.doc("<p>The type of migration.</p>") @as("MigrationType")
  migrationType: option<migrationTypeValue>,
  @ocaml.doc("<p>The ARN of the replication instance.</p>") @as("ReplicationInstanceArn")
  replicationInstanceArn: option<string_>,
  @ocaml.doc("<p>The ARN that uniquely identifies the endpoint.</p>") @as("TargetEndpointArn")
  targetEndpointArn: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the endpoint.</p>")
  @as("SourceEndpointArn")
  sourceEndpointArn: option<string_>,
  @ocaml.doc("<p>The user-assigned replication task identifier or name.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain 1-255 alphanumeric characters or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
  @as("ReplicationTaskIdentifier")
  replicationTaskIdentifier: option<string_>,
}
type replicationInstanceTaskLogsList = array<replicationInstanceTaskLog>
type pendingMaintenanceActionDetails = array<pendingMaintenanceAction>
@ocaml.doc("<p>In response to the <code>DescribeOrderableReplicationInstances</code> operation, this
         object describes an available replication instance. This description includes the
         replication instance's type, engine version, and allocated storage.</p>")
type orderableReplicationInstance = {
  @ocaml.doc("<p>The value returned when the specified <code>EngineVersion</code> of the replication 
         instance is in Beta or test mode. This indicates some features might not work as expected.</p>
         <note>
            <p>DMS supports the <code>ReleaseStatus</code> parameter in versions 3.1.4 and later.</p>
         </note>")
  @as("ReleaseStatus")
  releaseStatus: option<releaseStatusValues>,
  @ocaml.doc("<p>List of Availability Zones for this replication instance.</p>")
  @as("AvailabilityZones")
  availabilityZones: option<availabilityZonesList>,
  @ocaml.doc("<p>The amount of storage (in gigabytes) that is allocated for the replication
         instance.</p>")
  @as("IncludedAllocatedStorage")
  includedAllocatedStorage: option<integer_>,
  @ocaml.doc("<p>The default amount of storage (in gigabytes) that is allocated for the replication
         instance.</p>")
  @as("DefaultAllocatedStorage")
  defaultAllocatedStorage: option<integer_>,
  @ocaml.doc("<p>The minimum amount of storage (in gigabytes) that can be allocated for the replication
         instance.</p>")
  @as("MaxAllocatedStorage")
  maxAllocatedStorage: option<integer_>,
  @ocaml.doc("<p>The minimum amount of storage (in gigabytes) that can be allocated for the replication
         instance.</p>")
  @as("MinAllocatedStorage")
  minAllocatedStorage: option<integer_>,
  @ocaml.doc("<p>The type of storage used by the replication instance.</p>") @as("StorageType")
  storageType: option<string_>,
  @ocaml.doc("<p>The compute and memory capacity of the replication instance as defined for the specified
         replication instance class. For example to specify the instance class dms.c4.large, set this parameter to <code>\"dms.c4.large\"</code>.</p>
         <p>For more information on the settings and capacities for the available replication instance classes, see 
         <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth\">
            Selecting the right DMS replication instance for your migration</a>.
      </p>")
  @as("ReplicationInstanceClass")
  replicationInstanceClass: option<string_>,
  @ocaml.doc("<p>The version of the replication engine.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
}
@ocaml.doc("<p>Provides information that defines an Oracle endpoint.</p>")
type oracleSettings = {
  @ocaml.doc("<p>Required only if your Oracle endpoint uses Advanced Storage Manager (ASM). The full ARN, partial ARN, or friendly name of the <code>SecretsManagerOracleAsmSecret</code> 
         that contains the Oracle ASM connection details for the Oracle endpoint.</p>")
  @as("SecretsManagerOracleAsmSecretId")
  secretsManagerOracleAsmSecretId: option<string_>,
  @ocaml.doc("<p>Required only if your Oracle endpoint uses Advanced Storage Manager (ASM). The full ARN
         of the IAM role that specifies DMS as the trusted entity and grants the required
         permissions to access the <code>SecretsManagerOracleAsmSecret</code>. This
            <code>SecretsManagerOracleAsmSecret</code> has the secret value that allows access to
         the Oracle ASM of the endpoint.</p>
         <note>
            <p>You can specify one of two sets of values for these permissions. You can specify the
            values for this setting and <code>SecretsManagerOracleAsmSecretId</code>. Or you can
            specify clear-text values for <code>AsmUserName</code>, <code>AsmPassword</code>, and
               <code>AsmServerName</code>. You can't specify both. For more information on
            creating this <code>SecretsManagerOracleAsmSecret</code> and the
               <code>SecretsManagerOracleAsmAccessRoleArn</code> and
               <code>SecretsManagerOracleAsmSecretId</code> required to access it, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager\">Using secrets to access Database Migration Service
               resources</a> in the <i>Database Migration Service User
               Guide</i>.</p>
         </note>")
  @as("SecretsManagerOracleAsmAccessRoleArn")
  secretsManagerOracleAsmAccessRoleArn: option<string_>,
  @ocaml.doc(
    "<p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code> that contains the Oracle endpoint connection details.</p>"
  )
  @as("SecretsManagerSecretId")
  secretsManagerSecretId: option<string_>,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the
         trusted entity and grants the required permissions to access the value in
         <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code> action.
         <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager
          secret that allows access to the Oracle endpoint.</p>
         <note>
            <p>You can specify one of two sets of values for these permissions. You can specify the
            values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
            clear-text values for <code>UserName</code>, <code>Password</code>,
               <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
            information on creating this <code>SecretsManagerSecret</code> and the
               <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
            required to access it, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager\">Using secrets to access Database Migration Service
               resources</a> in the <i>Database Migration Service User
               Guide</i>.</p>
         </note>")
  @as("SecretsManagerAccessRoleArn")
  secretsManagerAccessRoleArn: option<string_>,
  @ocaml.doc("<p>Set this attribute to Y to capture change data using the Oracle LogMiner utility (the
         default). Set this attribute to N if you want to access the redo logs as a binary file.
         When you set <code>UseLogminerReader</code> to N, also set <code>UseBfile</code> to Y. For
         more information on this setting and using Oracle ASM, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC\"> Using Oracle LogMiner or DMS Binary Reader for CDC</a> in
         the <i>DMS User Guide</i>.</p>")
  @as("UseLogminerReader")
  useLogminerReader: option<booleanOptional>,
  @ocaml.doc("<p>Set this attribute to Y to have DMS use a direct path full load. 
         Specify this value to use the direct path protocol in the Oracle Call Interface (OCI). 
         By using this OCI protocol, you can bulk-load Oracle target tables during a full load.</p>")
  @as("UseDirectPathFullLoad")
  useDirectPathFullLoad: option<booleanOptional>,
  @ocaml.doc("<p>Set this attribute to Y to capture change data using the Binary Reader utility. Set
            <code>UseLogminerReader</code> to N to set this attribute to Y. To use Binary Reader
         with Amazon RDS for Oracle as the source, you set additional attributes. For more information
         about using this setting with Oracle Automatic Storage Management (ASM), see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC\"> Using Oracle LogMiner or DMS Binary Reader for
         CDC</a>.</p>")
  @as("UseBFile")
  useBFile: option<booleanOptional>,
  @ocaml.doc("<p>Endpoint connection user name.</p>") @as("Username") username: option<string_>,
  @ocaml.doc("<p>Use this attribute to specify a time in minutes for the delay in standby sync. If the
         source is an Oracle Active Data Guard standby database, use this attribute to specify the
         time lag between primary and standby databases.</p>
         <p>In DMS, you can create an Oracle CDC task that uses an Active Data Guard standby
         instance as a source for replicating ongoing changes. Doing this eliminates the need to connect
         to an active database that might be in production.</p>")
  @as("StandbyDelayTime")
  standbyDelayTime: option<integerOptional>,
  @ocaml.doc("<p>Use this attribute to convert <code>SDO_GEOMETRY</code> to 
         <code>GEOJSON</code> format. By default, DMS calls the 
         <code>SDO2GEOJSON</code> custom function if present and accessible. 
         Or you can create your own custom function that mimics the operation of 
         <code>SDOGEOJSON</code> and set 
         <code>SpatialDataOptionToGeoJsonFunctionName</code> to call it instead. </p>")
  @as("SpatialDataOptionToGeoJsonFunctionName")
  spatialDataOptionToGeoJsonFunctionName: option<string_>,
  @ocaml.doc("<p>Fully qualified domain name of the endpoint.</p>") @as("ServerName")
  serverName: option<string_>,
  @ocaml.doc("<p>For an Oracle source endpoint, the name of a key used for the transparent data
         encryption (TDE) of the columns and tablespaces in an Oracle source database that is
         encrypted using TDE. The key value is the value of the <code>SecurityDbEncryption</code>
         setting. For more information on setting the key name value of
            <code>SecurityDbEncryptionName</code>, see the information and example for setting the
            <code>securityDbEncryptionName</code> extra connection attribute in <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.Encryption\"> Supported encryption methods for using Oracle as a source for DMS
            </a> in the <i>Database Migration Service User
         Guide</i>.</p>")
  @as("SecurityDbEncryptionName")
  securityDbEncryptionName: option<string_>,
  @ocaml.doc("<p>For an Oracle source endpoint, the transparent data encryption (TDE) password required
         by AWM DMS to access Oracle redo logs encrypted by TDE using Binary Reader. It is also the
               <code>
               <i>TDE_Password</i>
            </code> part of the comma-separated value you
         set to the <code>Password</code> request parameter when you create the endpoint. The
            <code>SecurityDbEncryptian</code> setting is related to this
            <code>SecurityDbEncryptionName</code> setting. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.Encryption\"> Supported encryption methods for using Oracle as a source for DMS
            </a> in the <i>Database Migration Service User Guide</i>. </p>")
  @as("SecurityDbEncryption")
  securityDbEncryption: option<secretString>,
  @ocaml.doc("<p>Specifies the number of seconds that the system waits
         before resending a query.</p>
         <p>Example: <code>retryInterval=6;</code>
         </p>")
  @as("RetryInterval")
  retryInterval: option<integerOptional>,
  @ocaml.doc("<p>When set to <code>true</code>, this attribute supports tablespace
         replication.</p>")
  @as("ReadTableSpaceName")
  readTableSpaceName: option<booleanOptional>,
  @ocaml.doc("<p>Endpoint TCP port.</p>") @as("Port") port: option<integerOptional>,
  @ocaml.doc("<p>Endpoint connection password.</p>") @as("Password") password: option<secretString>,
  @ocaml.doc("<p>Specifies the number scale. You can select a scale up to 38,
         or you can select FLOAT. By default, the NUMBER data type
         is converted to precision 38, scale 10.</p>
         <p>Example: <code>numberDataTypeScale=12</code>
         </p>")
  @as("NumberDatatypeScale")
  numberDatatypeScale: option<integerOptional>,
  @ocaml.doc("<p>When set to <code>true</code>, this attribute causes a task to fail if the
         actual size of an LOB column is greater than the specified
         <code>LobMaxSize</code>.</p> 
         <p>If a task is set to limited LOB mode and this option is set to
         <code>true</code>, the task fails instead of truncating the LOB data.</p>")
  @as("FailTasksOnLobTruncation")
  failTasksOnLobTruncation: option<booleanOptional>,
  @ocaml.doc("<p>When set to <code>true</code>, this attribute specifies a parallel load
         when <code>useDirectPathFullLoad</code> is set to <code>Y</code>. This attribute
         also only applies when you use the DMS parallel load
         feature.  Note that the target table cannot have any constraints or indexes.</p>")
  @as("DirectPathParallelLoad")
  directPathParallelLoad: option<booleanOptional>,
  @ocaml.doc("<p>Database name for the endpoint.</p>") @as("DatabaseName")
  databaseName: option<string_>,
  @ocaml.doc("<p>Specifies whether the length of a character column is in
         bytes or in characters. To indicate that the character column
         length is in characters, set this attribute to <code>CHAR</code>. Otherwise,
         the character column length is in bytes.</p>
         <p>Example: <code>charLengthSemantics=CHAR;</code>
         </p>")
  @as("CharLengthSemantics")
  charLengthSemantics: option<charLengthSemantics>,
  @ocaml.doc("<p>For an Oracle source endpoint, your ASM user name. You can set this value from the
            <code>asm_user</code> value. You set <code>asm_user</code> as part of the extra
         connection attribute string to access an Oracle server with Binary Reader that uses ASM.
         For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration\">Configuration for change data capture (CDC) on an Oracle source
            database</a>.</p>")
  @as("AsmUser")
  asmUser: option<string_>,
  @ocaml.doc("<p>For an Oracle source endpoint, your ASM server address. You can set this value from the
            <code>asm_server</code> value. You set <code>asm_server</code> as part of the extra
         connection attribute string to access an Oracle server with Binary Reader that uses ASM.
         For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration\">Configuration for change data capture (CDC) on an Oracle source
            database</a>.</p>")
  @as("AsmServer")
  asmServer: option<string_>,
  @ocaml.doc("<p>For an Oracle source endpoint, your Oracle Automatic Storage Management (ASM) password.
         You can set this value from the <code>
               <i>asm_user_password</i>
            </code> value.
         You set this value as part of the comma-separated value that you set to the
            <code>Password</code> request parameter when you create the endpoint to access
         transaction logs using Binary Reader. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration\">Configuration for change data capture (CDC) on an Oracle source
            database</a>.</p>")
  @as("AsmPassword")
  asmPassword: option<secretString>,
  @ocaml.doc("<p>When this field is set to <code>Y</code>, DMS only accesses the
         archived redo logs. If the archived redo logs are stored on
         Oracle ASM only, the DMS user account needs to be
         granted ASM privileges.</p>")
  @as("ArchivedLogsOnly")
  archivedLogsOnly: option<booleanOptional>,
  @ocaml.doc("<p>When set to <code>true</code>, this attribute helps to increase the
         commit rate on the Oracle target database by writing
         directly to tables and not writing a trail to database logs.</p>")
  @as("DirectPathNoLog")
  directPathNoLog: option<booleanOptional>,
  @ocaml.doc("<p>Set this attribute to enable homogenous tablespace
         replication and create existing tables or indexes under the
         same tablespace on the target.</p>")
  @as("EnableHomogenousTablespace")
  enableHomogenousTablespace: option<booleanOptional>,
  @ocaml.doc("<p>Set this attribute to true in order to use the Binary Reader
         to capture change data for an Amazon RDS for Oracle as the
         source. This setting tells DMS instance to replace the default
         Oracle root with the specified <code>usePathPrefix</code> setting to
         access the redo logs.</p>")
  @as("ReplacePathPrefix")
  replacePathPrefix: option<booleanOptional>,
  @ocaml.doc("<p>Set this string attribute to the required value in order to use
         the Binary Reader to capture change data for an Amazon
         RDS for Oracle as the source. This value specifies the path
         prefix used to replace the default Oracle root to access the
         redo logs.</p>")
  @as("UsePathPrefix")
  usePathPrefix: option<string_>,
  @ocaml.doc("<p>Set this string attribute to the required value in order to use
         the Binary Reader to capture change data for an Amazon
         RDS for Oracle as the source. This value specifies the
         default Oracle root used to access the redo logs.</p>")
  @as("OraclePathPrefix")
  oraclePathPrefix: option<string_>,
  @ocaml.doc("<p>Set this attribute to <code>true</code> in order to use the Binary Reader
         to capture change data for an Amazon RDS for Oracle as
         the source. This tells the DMS instance to use any specified
         prefix replacement to access all online redo logs.</p>")
  @as("UseAlternateFolderForOnline")
  useAlternateFolderForOnline: option<booleanOptional>,
  @ocaml.doc("<p>Set this attribute to <code>false</code> in order to use the Binary Reader
         to capture change data for an Amazon RDS for Oracle as the
         source. This tells the DMS instance to not access redo logs
         through any specified path prefix replacement using direct
         file access.</p>")
  @as("AccessAlternateDirectly")
  accessAlternateDirectly: option<booleanOptional>,
  @ocaml.doc("<p>Set this attribute to change the number of read-ahead blocks that DMS configures to
         perform a change data capture (CDC) load using Oracle Automatic Storage Management (ASM).
         You can specify an integer value between 1000 (the default) and 200,000 (the
         maximum).</p>")
  @as("ReadAheadBlocks")
  readAheadBlocks: option<integerOptional>,
  @ocaml.doc("<p>Set this attribute to change the number of threads that DMS configures to perform a
         change data capture (CDC) load using Oracle Automatic Storage Management (ASM). You can
         specify an integer value between 2 (the default) and 8 (the maximum). Use this attribute
         together with the <code>readAheadBlocks</code> attribute.</p>")
  @as("ParallelAsmReadThreads")
  parallelAsmReadThreads: option<integerOptional>,
  @ocaml.doc("<p>Set this attribute to <code>true</code> to enable replication of Oracle
         tables containing columns that are nested tables or defined
         types.</p>")
  @as("AllowSelectNestedTables")
  allowSelectNestedTables: option<booleanOptional>,
  @ocaml.doc("<p>Specifies the IDs of one more destinations for one or more archived redo logs. These IDs
         are the values of the <code>dest_id</code> column in the <code>v$archived_log</code> view.
         Use this setting with the <code>archivedLogDestId</code> extra connection attribute in a
         primary-to-single setup or a primary-to-multiple-standby setup. </p>
         <p>This setting is useful in a switchover when you use an Oracle Data Guard database as a
         source. In this case, DMS needs information about what destination to get archive redo
         logs from to read changes. DMS needs this because after the switchover the previous
         primary is a standby instance. For example, in a primary-to-single standby setup you might
         apply the following settings. </p>
         <p>
            <code>archivedLogDestId=1; ExtraArchivedLogDestIds=[2]</code>
         </p>
         <p>In a primary-to-multiple-standby setup, you might apply the following settings.</p>
         <p>
            <code>archivedLogDestId=1; ExtraArchivedLogDestIds=[2,3,4]</code>
         </p>
         <p>Although DMS supports the use of the Oracle <code>RESETLOGS</code> option to open the
         database, never use <code>RESETLOGS</code> unless it's necessary. For more information
         about <code>RESETLOGS</code>, see <a href=\"https://docs.oracle.com/en/database/oracle/oracle-database/19/bradv/rman-data-repair-concepts.html#GUID-1805CCF7-4AF2-482D-B65A-998192F89C2B\"> RMAN Data Repair Concepts</a> in the <i>Oracle Database Backup and Recovery
            User's Guide</i>.</p>")
  @as("ExtraArchivedLogDestIds")
  extraArchivedLogDestIds: option<integerList>,
  @ocaml.doc("<p>Set this attribute with <code>ArchivedLogDestId</code> in a primary/
         standby setup. This attribute is useful in the case of a
         switchover. In this case, DMS needs to know which
         destination to get archive redo logs from to read changes.
         This need arises because the previous primary instance is
         now a standby instance after switchover.</p>
         <p>Although DMS supports the use of the Oracle
         <code>RESETLOGS</code> option to open the database, never
         use <code>RESETLOGS</code> unless necessary. For additional
         information about <code>RESETLOGS</code>, see <a href=\"https://docs.oracle.com/en/database/oracle/oracle-database/19/bradv/rman-data-repair-concepts.html#GUID-1805CCF7-4AF2-482D-B65A-998192F89C2B\">RMAN Data Repair Concepts</a> in the
         <i>Oracle Database Backup and Recovery User's Guide</i>.</p>")
  @as("AdditionalArchivedLogDestId")
  additionalArchivedLogDestId: option<integerOptional>,
  @ocaml.doc("<p>Specifies the ID of the destination for the archived redo logs. This value
         should be the same as a number in the dest_id column of the v$archived_log
         view. If you work with an additional redo log destination, use the
         <code>AdditionalArchivedLogDestId</code> option to specify the additional
         destination ID. Doing this improves performance by ensuring that the correct
         logs are accessed from the outset.</p>")
  @as("ArchivedLogDestId")
  archivedLogDestId: option<integerOptional>,
  @ocaml.doc("<p>Set this attribute to set up table-level supplemental logging
         for the Oracle database. This attribute enables PRIMARY KEY
         supplemental logging on all tables selected for a migration
         task.</p>
         <p>If you use this option, you still need to enable
         database-level supplemental logging.</p>")
  @as("AddSupplementalLogging")
  addSupplementalLogging: option<booleanOptional>,
}
@ocaml.doc("<p>Identifies the name and value of a filter object. This filter is used to limit the
         number and type of DMS objects that are returned for a particular
            <code>Describe*</code> call or similar operation. Filters are used as an optional
         parameter for certain API operations. </p>")
type filter = {
  @ocaml.doc(
    "<p>The filter value, which can specify one or more values used to narrow the returned results.</p>"
  )
  @as("Values")
  values: filterValueList,
  @ocaml.doc("<p>The name of the filter as specified for a <code>Describe*</code> or similar
         operation.</p>")
  @as("Name")
  name: string_,
}
@ocaml.doc("<p>Describes an event notification subscription created by the <code>CreateEventSubscription</code>
         operation.</p>")
type eventSubscription = {
  @ocaml.doc("<p>Boolean value that indicates if the event subscription is enabled.</p>")
  @as("Enabled")
  enabled: option<boolean_>,
  @ocaml.doc("<p>A lists of event categories.</p>") @as("EventCategoriesList")
  eventCategoriesList: option<eventCategoriesList>,
  @ocaml.doc("<p>A list of source Ids for the event subscription.</p>") @as("SourceIdsList")
  sourceIdsList: option<sourceIdsList>,
  @ocaml.doc("<p> The type of DMS resource that generates events. </p>
         <p>Valid values: replication-instance | replication-server | security-group |
         replication-task</p>")
  @as("SourceType")
  sourceType: option<string_>,
  @ocaml.doc("<p>The time the DMS event notification subscription was created.</p>")
  @as("SubscriptionCreationTime")
  subscriptionCreationTime: option<string_>,
  @ocaml.doc("<p>The status of the DMS event notification subscription.</p>
         <p>Constraints:</p>
         <p>Can be one of the following: creating | modifying | deleting | active | no-permission |
         topic-not-exist</p>
         <p>The status \"no-permission\" indicates that DMS no longer has permission to post to
         the SNS topic. The status \"topic-not-exist\" indicates that the topic was deleted after the
         subscription was created.</p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The topic ARN of the DMS event notification subscription.</p>") @as("SnsTopicArn")
  snsTopicArn: option<string_>,
  @ocaml.doc("<p>The DMS event notification subscription Id.</p>") @as("CustSubscriptionId")
  custSubscriptionId: option<string_>,
  @ocaml.doc("<p>The Amazon Web Services customer account associated with the DMS event notification
         subscription.</p>")
  @as("CustomerAwsId")
  customerAwsId: option<string_>,
}
@ocaml.doc("<p>Lists categories of events subscribed to, and generated by, the applicable DMS
         resource type. This data type appears in response to the 
         <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_EventCategoryGroup.html\">
               <code>DescribeEventCategories</code>
            </a>
         action.</p>")
type eventCategoryGroup = {
  @ocaml.doc("<p> A list of event categories from a source type that you've chosen.</p>")
  @as("EventCategories")
  eventCategories: option<eventCategoriesList>,
  @ocaml.doc("<p> The type of DMS resource that generates events. </p>
         <p>Valid values: replication-instance | replication-server | security-group |
         replication-task</p>")
  @as("SourceType")
  sourceType: option<string_>,
}
@ocaml.doc("<p>Describes an identifiable significant activity that affects a replication instance or
         task. This object can provide the message, the available event categories, the date and
         source of the event, and the DMS resource type.</p>")
type event = {
  @ocaml.doc("<p>The date of the event.</p>") @as("Date") date: option<tstamp>,
  @ocaml.doc("<p>The event categories available for the specified source type.</p>")
  @as("EventCategories")
  eventCategories: option<eventCategoriesList>,
  @ocaml.doc("<p>The event message.</p>") @as("Message") message: option<string_>,
  @ocaml.doc("<p> The type of DMS resource that generates events. </p>
         <p>Valid values: replication-instance | endpoint | replication-task</p>")
  @as("SourceType")
  sourceType: option<sourceType>,
  @ocaml.doc("<p> The identifier of an event source.</p>") @as("SourceIdentifier")
  sourceIdentifier: option<string_>,
}
@ocaml.doc("<p>Endpoint settings.</p>")
type endpointSetting = {
  @ocaml.doc(
    "<p>The default value of the endpoint setting if no value is specified using <code>CreateEndpoint</code> or <code>ModifyEndpoint</code>.</p>"
  )
  @as("DefaultValue")
  defaultValue: option<string_>,
  @ocaml.doc("<p>The maximum value of an endpoint setting that is of type <code>int</code>.</p>")
  @as("IntValueMax")
  intValueMax: option<integerOptional>,
  @ocaml.doc("<p>The minimum value of an endpoint setting that is of type <code>int</code>.</p>")
  @as("IntValueMin")
  intValueMin: option<integerOptional>,
  @ocaml.doc(
    "<p>The relevance or validity of an endpoint setting for an engine name and its endpoint type.</p>"
  )
  @as("Applicability")
  applicability: option<string_>,
  @ocaml.doc("<p>The unit of measure for this endpoint setting.</p>") @as("Units")
  units: option<string_>,
  @ocaml.doc("<p>A value that marks this endpoint setting as sensitive.</p>") @as("Sensitive")
  sensitive: option<booleanOptional>,
  @ocaml.doc("<p>Enumerated values to use for this endpoint.</p>") @as("EnumValues")
  enumValues: option<endpointSettingEnumValues>,
  @ocaml.doc(
    "<p>The type of endpoint.  Valid values are <code>source</code> and <code>target</code>.</p>"
  )
  @as("Type")
  type_: option<endpointSettingTypeValue>,
  @ocaml.doc("<p>The name that you want to give the endpoint settings.</p>") @as("Name")
  name: option<string_>,
}
type connectionList = array<connection>
type certificateList = array<certificate>
type accountQuotaList = array<accountQuota>
type subnetList = array<subnet>
@ocaml.doc("<p>Identifies an DMS resource and any pending actions for it.</p>")
type resourcePendingMaintenanceActions = {
  @ocaml.doc("<p>Detailed information about the pending maintenance action.</p>")
  @as("PendingMaintenanceActionDetails")
  pendingMaintenanceActionDetails: option<pendingMaintenanceActionDetails>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the DMS resource that the pending maintenance action
         applies to. For information about creating an ARN, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Introduction.AWS.ARN.html\"> Constructing an Amazon
            Resource Name (ARN) for DMS</a> in the DMS documentation.</p>")
  @as("ResourceIdentifier")
  resourceIdentifier: option<string_>,
}
type replicationTaskList = array<replicationTask>
type replicationTaskAssessmentRunList = array<replicationTaskAssessmentRun>
type orderableReplicationInstanceList = array<orderableReplicationInstance>
type filterList = array<filter>
type eventSubscriptionsList = array<eventSubscription>
type eventList = array<event>
type eventCategoryGroupList = array<eventCategoryGroup>
type endpointSettingsList = array<endpointSetting>
@ocaml.doc("<p>Describes an endpoint of a database instance in response to operations such as the
         following:</p>
         <ul>
            <li>
               <p>
                  <code>CreateEndpoint</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DescribeEndpoint</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ModifyEndpoint</code>
               </p>
            </li>
         </ul>")
type endpoint = {
  @ocaml.doc("<p>Settings in JSON format for the source GCP MySQL endpoint.</p>")
  @as("GcpMySQLSettings")
  gcpMySQLSettings: option<gcpMySQLSettings>,
  @ocaml.doc("<p>The settings for the Redis target endpoint. For more information, see the 
         <code>RedisSettings</code> structure.</p>")
  @as("RedisSettings")
  redisSettings: option<redisSettings>,
  @as("DocDbSettings") docDbSettings: option<docDbSettings>,
  @ocaml.doc("<p>The settings for the IBM Db2 LUW source endpoint. For more information, see the
            <code>IBMDb2Settings</code> structure.
      </p>")
  @as("IBMDb2Settings")
  ibmdb2Settings: option<ibmdb2Settings>,
  @ocaml.doc("<p>The settings for the Microsoft SQL Server source and target endpoint. For more
         information, see the <code>MicrosoftSQLServerSettings</code> structure.</p>")
  @as("MicrosoftSQLServerSettings")
  microsoftSQLServerSettings: option<microsoftSQLServerSettings>,
  @ocaml.doc("<p>The settings for the SAP ASE source and target endpoint. For more information, see the
            <code>SybaseSettings</code> structure.</p>")
  @as("SybaseSettings")
  sybaseSettings: option<sybaseSettings>,
  @ocaml.doc("<p>The settings for the Oracle source and target endpoint. For more information, see the
            <code>OracleSettings</code> structure.</p>")
  @as("OracleSettings")
  oracleSettings: option<oracleSettings>,
  @ocaml.doc("<p>The settings for the MySQL source and target endpoint. For more information, see the
            <code>MySQLSettings</code> structure.</p>")
  @as("MySQLSettings")
  mySQLSettings: option<mySQLSettings>,
  @ocaml.doc("<p>The settings for the PostgreSQL source and target endpoint. For more information, see
         the <code>PostgreSQLSettings</code> structure.</p>")
  @as("PostgreSQLSettings")
  postgreSQLSettings: option<postgreSQLSettings>,
  @ocaml.doc("<p>Settings for the Amazon Redshift endpoint.</p>") @as("RedshiftSettings")
  redshiftSettings: option<redshiftSettings>,
  @ocaml.doc("<p>The settings for the Amazon Neptune target endpoint. For more information, see the
         <code>NeptuneSettings</code> structure.</p>")
  @as("NeptuneSettings")
  neptuneSettings: option<neptuneSettings>,
  @ocaml.doc("<p>The settings for the OpenSearch source endpoint. For more information, see the
            <code>ElasticsearchSettings</code> structure.</p>")
  @as("ElasticsearchSettings")
  elasticsearchSettings: option<elasticsearchSettings>,
  @ocaml.doc("<p>The settings for the Apache Kafka target endpoint. For more information, see the
         <code>KafkaSettings</code> structure.</p>")
  @as("KafkaSettings")
  kafkaSettings: option<kafkaSettings>,
  @ocaml.doc("<p>The settings for the Amazon Kinesis target endpoint. For more information, see the
            <code>KinesisSettings</code> structure.</p>")
  @as("KinesisSettings")
  kinesisSettings: option<kinesisSettings>,
  @ocaml.doc("<p>The settings for the MongoDB source endpoint. For more information, see the
            <code>MongoDbSettings</code> structure.</p>")
  @as("MongoDbSettings")
  mongoDbSettings: option<mongoDbSettings>,
  @ocaml.doc(
    "<p>The settings for the DMS Transfer type source. For more information, see the DmsTransferSettings structure.  </p>"
  )
  @as("DmsTransferSettings")
  dmsTransferSettings: option<dmsTransferSettings>,
  @ocaml.doc("<p>The settings for the S3 target endpoint. For more information, see the
            <code>S3Settings</code> structure.</p>")
  @as("S3Settings")
  s3Settings: option<s3Settings>,
  @ocaml.doc("<p>The settings for the DynamoDB target endpoint. For more information, see the
            <code>DynamoDBSettings</code> structure.</p>")
  @as("DynamoDbSettings")
  dynamoDbSettings: option<dynamoDbSettings>,
  @ocaml.doc("<p> Value returned by a call to CreateEndpoint that can be used for cross-account
         validation. Use it on a subsequent call to CreateEndpoint to create the endpoint with a
         cross-account. </p>")
  @as("ExternalId")
  externalId: option<string_>,
  @ocaml.doc("<p>The external table definition.</p>") @as("ExternalTableDefinition")
  externalTableDefinition: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) used by the service to access the IAM role.
         The role must allow the <code>iam:PassRole</code> action.</p>")
  @as("ServiceAccessRoleArn")
  serviceAccessRoleArn: option<string_>,
  @ocaml.doc(
    "<p>The SSL mode used to connect to the endpoint. The default value is <code>none</code>.</p>"
  )
  @as("SslMode")
  sslMode: option<dmsSslModeValue>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) used for SSL connection to the endpoint.</p>")
  @as("CertificateArn")
  certificateArn: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>")
  @as("EndpointArn")
  endpointArn: option<string_>,
  @ocaml.doc("<p>An KMS key identifier that is used to encrypt the connection parameters for the endpoint.</p>
         <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then
           DMS uses your default encryption key.</p>
         <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a
         different default encryption key for each Amazon Web Services Region.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p>The status of the endpoint.</p>") @as("Status") status: option<string_>,
  @ocaml.doc("<p>Additional connection attributes used to connect to the endpoint.</p>")
  @as("ExtraConnectionAttributes")
  extraConnectionAttributes: option<string_>,
  @ocaml.doc("<p>The name of the database at the endpoint.</p>") @as("DatabaseName")
  databaseName: option<string_>,
  @ocaml.doc("<p>The port value used to access the endpoint.</p>") @as("Port")
  port: option<integerOptional>,
  @ocaml.doc("<p>The name of the server at the endpoint.</p>") @as("ServerName")
  serverName: option<string_>,
  @ocaml.doc("<p>The user name used to connect to the endpoint.</p>") @as("Username")
  username: option<string_>,
  @ocaml.doc("<p>The expanded name for the engine name. For example, if the <code>EngineName</code>
         parameter is \"aurora,\" this value would be \"Amazon Aurora MySQL.\"</p>")
  @as("EngineDisplayName")
  engineDisplayName: option<string_>,
  @ocaml.doc("<p>The database engine name. Valid values, depending on the EndpointType, include
            <code>\"mysql\"</code>, <code>\"oracle\"</code>, <code>\"postgres\"</code>,
            <code>\"mariadb\"</code>, <code>\"aurora\"</code>, <code>\"aurora-postgresql\"</code>, <code>\"opensearch\"</code>,
            <code>\"redshift\"</code>, <code>\"s3\"</code>, <code>\"db2\"</code>, <code>\"azuredb\"</code>,
            <code>\"sybase\"</code>, <code>\"dynamodb\"</code>, <code>\"mongodb\"</code>,
            <code>\"kinesis\"</code>, <code>\"kafka\"</code>, <code>\"elasticsearch\"</code>,
            <code>\"documentdb\"</code>, <code>\"sqlserver\"</code>, and <code>\"neptune\"</code>.</p>")
  @as("EngineName")
  engineName: option<string_>,
  @ocaml.doc(
    "<p>The type of endpoint.  Valid values are <code>source</code> and <code>target</code>.</p>"
  )
  @as("EndpointType")
  endpointType: option<replicationEndpointTypeValue>,
  @ocaml.doc("<p>The database endpoint identifier. Identifiers must begin with a letter and must contain
         only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two
         consecutive hyphens.</p>")
  @as("EndpointIdentifier")
  endpointIdentifier: option<string_>,
}
@ocaml.doc("<p>Describes a subnet group in response to a request by the
            <code>DescribeReplicationSubnetGroups</code> operation.</p>")
type replicationSubnetGroup = {
  @ocaml.doc("<p>The subnets that are in the subnet group.</p>") @as("Subnets")
  subnets: option<subnetList>,
  @ocaml.doc("<p>The status of the subnet group.</p>") @as("SubnetGroupStatus")
  subnetGroupStatus: option<string_>,
  @ocaml.doc("<p>The ID of the VPC.</p>") @as("VpcId") vpcId: option<string_>,
  @ocaml.doc("<p>A description for the replication subnet group.</p>")
  @as("ReplicationSubnetGroupDescription")
  replicationSubnetGroupDescription: option<string_>,
  @ocaml.doc("<p>The identifier of the replication instance subnet group.</p>")
  @as("ReplicationSubnetGroupIdentifier")
  replicationSubnetGroupIdentifier: option<string_>,
}
type pendingMaintenanceActions = array<resourcePendingMaintenanceActions>
type endpointList = array<endpoint>
type replicationSubnetGroups = array<replicationSubnetGroup>
@ocaml.doc("<p>Provides information that defines a replication instance.</p>")
type replicationInstance = {
  @ocaml.doc(
    "<p>The DNS name servers supported for the replication instance to access your on-premise source or target database.</p>"
  )
  @as("DnsNameServers")
  dnsNameServers: option<string_>,
  @ocaml.doc("<p> The expiration date of the free replication instance that is part of the Free DMS
         program. </p>")
  @as("FreeUntil")
  freeUntil: option<tstamp>,
  @ocaml.doc("<p>The Availability Zone of the standby replication instance in a Multi-AZ
         deployment.</p>")
  @as("SecondaryAvailabilityZone")
  secondaryAvailabilityZone: option<string_>,
  @ocaml.doc("<p> Specifies the accessibility options for the replication instance. A value of
            <code>true</code> represents an instance with a public IP address. A value of
            <code>false</code> represents an instance with a private IP address. The default value
         is <code>true</code>. </p>")
  @as("PubliclyAccessible")
  publiclyAccessible: option<boolean_>,
  @ocaml.doc("<p>One or more private IP addresses for the replication instance.</p>")
  @as("ReplicationInstancePrivateIpAddresses")
  replicationInstancePrivateIpAddresses: option<replicationInstancePrivateIpAddressList>,
  @ocaml.doc("<p>One or more public IP addresses for the replication instance.</p>")
  @as("ReplicationInstancePublicIpAddresses")
  replicationInstancePublicIpAddresses: option<replicationInstancePublicIpAddressList>,
  @ocaml.doc("<p>The private IP address of the replication instance.</p>")
  @as("ReplicationInstancePrivateIpAddress")
  replicationInstancePrivateIpAddress: option<string_>,
  @ocaml.doc("<p>The public IP address of the replication instance.</p>")
  @as("ReplicationInstancePublicIpAddress")
  replicationInstancePublicIpAddress: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication instance.</p>")
  @as("ReplicationInstanceArn")
  replicationInstanceArn: option<string_>,
  @ocaml.doc("<p>An KMS key identifier that is used to encrypt the data on the replication
           instance.</p>
         <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then
           DMS uses your default encryption key.</p>
         <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a
         different default encryption key for each Amazon Web Services Region.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p>Boolean value indicating if minor version upgrades will be automatically applied to the
         instance.</p>")
  @as("AutoMinorVersionUpgrade")
  autoMinorVersionUpgrade: option<boolean_>,
  @ocaml.doc("<p>The engine version number of the replication instance.</p> 
         <p>If an engine version number is not specified when a replication 
         instance is created, the default is the latest engine version available.</p>
         <p>When modifying a major engine version of an instance, also set  
         <code>AllowMajorVersionUpgrade</code> to <code>true</code>.</p>")
  @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the
            <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to
            <code>true</code>. </p>")
  @as("MultiAZ")
  multiAZ: option<boolean_>,
  @ocaml.doc("<p>The pending modification values.</p>") @as("PendingModifiedValues")
  pendingModifiedValues: option<replicationPendingModifiedValues>,
  @ocaml.doc("<p>The maintenance window times for the replication instance. Any pending upgrades to the
         replication instance are performed during this time.</p>")
  @as("PreferredMaintenanceWindow")
  preferredMaintenanceWindow: option<string_>,
  @ocaml.doc("<p>The subnet group for the replication instance.</p>") @as("ReplicationSubnetGroup")
  replicationSubnetGroup: option<replicationSubnetGroup>,
  @ocaml.doc("<p>The Availability Zone for the instance.</p>") @as("AvailabilityZone")
  availabilityZone: option<string_>,
  @ocaml.doc("<p>The VPC security group for the instance.</p>") @as("VpcSecurityGroups")
  vpcSecurityGroups: option<vpcSecurityGroupMembershipList>,
  @ocaml.doc("<p>The time the replication instance was created.</p>") @as("InstanceCreateTime")
  instanceCreateTime: option<tstamp>,
  @ocaml.doc("<p>The amount of storage (in gigabytes) that is allocated for the replication
         instance.</p>")
  @as("AllocatedStorage")
  allocatedStorage: option<integer_>,
  @ocaml.doc("<p>The status of the replication instance. The possible return values include:</p>
      
         <ul>
            <li>
               <p>
                  <code>\"available\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"creating\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"deleted\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"deleting\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"failed\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"modifying\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"upgrading\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"rebooting\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"resetting-master-credentials\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"storage-full\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"incompatible-credentials\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"incompatible-network\"</code>
               </p>
            </li>
            <li>
               <p>
                  <code>\"maintenance\"</code>
               </p>
            </li>
         </ul>")
  @as("ReplicationInstanceStatus")
  replicationInstanceStatus: option<string_>,
  @ocaml.doc("<p>The compute and memory capacity of the replication instance as defined for the specified
         replication instance class. It is a required parameter, although a default value is
         pre-selected in the DMS console.</p>
         <p>For more information on the settings and capacities for the available replication instance classes, see 
         <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth\">
            Selecting the right DMS replication instance for your migration</a>.
      </p>")
  @as("ReplicationInstanceClass")
  replicationInstanceClass: option<string_>,
  @ocaml.doc("<p>The replication instance identifier is a required parameter. This parameter is stored as
         a lowercase string.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain 1-63 alphanumeric characters or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
         <p>Example: <code>myrepinstance</code>
         </p>")
  @as("ReplicationInstanceIdentifier")
  replicationInstanceIdentifier: option<string_>,
}
type replicationInstanceList = array<replicationInstance>
@ocaml.doc("<fullname>Database Migration Service</fullname>
         <p>Database Migration Service (DMS) can migrate your data to and from the most
         widely used commercial and open-source databases such as Oracle, PostgreSQL, Microsoft SQL
         Server, Amazon Redshift, MariaDB, Amazon Aurora, MySQL, and SAP Adaptive Server Enterprise
         (ASE). The service supports homogeneous migrations such as Oracle to Oracle, as well as
         heterogeneous migrations between different database platforms, such as Oracle to MySQL or
         SQL Server to PostgreSQL.</p>
         <p>For more information about DMS, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/Welcome.html\">What Is Database Migration Service?</a>
         in the <i>Database Migration Service User Guide.</i>
         </p>")
module DeleteReplicationSubnetGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The subnet group name of the replication instance.</p>")
    @as("ReplicationSubnetGroupIdentifier")
    replicationSubnetGroupIdentifier: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "DeleteReplicationSubnetGroupCommand"
  let make = (~replicationSubnetGroupIdentifier, ()) =>
    new({replicationSubnetGroupIdentifier: replicationSubnetGroupIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TestConnection = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
    )
    @as("EndpointArn")
    endpointArn: string_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication instance.</p>")
    @as("ReplicationInstanceArn")
    replicationInstanceArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The connection tested.</p>") @as("Connection") connection: option<connection>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "TestConnectionCommand"
  let make = (~endpointArn, ~replicationInstanceArn, ()) =>
    new({endpointArn: endpointArn, replicationInstanceArn: replicationInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveTagsFromResource = {
  type t
  @ocaml.doc("<p>Removes one or more tags from an DMS resource.</p>")
  type request = {
    @ocaml.doc("<p>The tag key (name) of the tag to be removed.</p>") @as("TagKeys")
    tagKeys: keyList,
    @ocaml.doc(
      "<p>An DMS resource from which you want to remove tag(s). The value for this parameter is an Amazon Resource Name (ARN).</p>"
    )
    @as("ResourceArn")
    resourceArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-dms") @new external new: request => t = "RemoveTagsFromResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RefreshSchemas = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication instance.</p>")
    @as("ReplicationInstanceArn")
    replicationInstanceArn: string_,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
    )
    @as("EndpointArn")
    endpointArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The status of the refreshed schema.</p>") @as("RefreshSchemasStatus")
    refreshSchemasStatus: option<refreshSchemasStatus>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "RefreshSchemasCommand"
  let make = (~replicationInstanceArn, ~endpointArn, ()) =>
    new({replicationInstanceArn: replicationInstanceArn, endpointArn: endpointArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSchemas = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token called a marker is included
         in the response so that the remaining results can be retrieved. </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
    )
    @as("EndpointArn")
    endpointArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The described schema.</p>") @as("Schemas") schemas: option<schemaList>,
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "DescribeSchemasCommand"
  let make = (~endpointArn, ~marker=?, ~maxRecords=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, endpointArn: endpointArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRefreshSchemasStatus = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
    )
    @as("EndpointArn")
    endpointArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The status of the schema.</p>") @as("RefreshSchemasStatus")
    refreshSchemasStatus: option<refreshSchemasStatus>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "DescribeRefreshSchemasStatusCommand"
  let make = (~endpointArn, ()) => new({endpointArn: endpointArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeApplicableIndividualAssessments = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>Maximum number of records to include in the response. If more records exist than the
         specified <code>MaxRecords</code> value, a pagination token called a marker is included in
         the response so that the remaining results can be retrieved.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc(
      "<p>Name of the migration type that each provided individual assessment must support.</p>"
    )
    @as("MigrationType")
    migrationType: option<migrationTypeValue>,
    @ocaml.doc(
      "<p>Name of a database engine that the specified replication instance supports as a target.</p>"
    )
    @as("TargetEngineName")
    targetEngineName: option<string_>,
    @ocaml.doc(
      "<p>Name of a database engine that the specified replication instance supports as a source.</p>"
    )
    @as("SourceEngineName")
    sourceEngineName: option<string_>,
    @ocaml.doc("<p>ARN of a replication instance on which you want to base the default list of individual
         assessments.</p>")
    @as("ReplicationInstanceArn")
    replicationInstanceArn: option<string_>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of a migration task on which you want to base 
         the default list of individual assessments.</p>")
    @as("ReplicationTaskArn")
    replicationTaskArn: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>Pagination token returned for you to pass to a subsequent request. If you pass this
         token as the <code>Marker</code> value in a subsequent request, the response includes only
         records beyond the marker, up to the value specified in the request by
            <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>List of names for the individual assessments supported by the premigration assessment
         run that you start based on the specified request parameters. For more information on the
         available individual assessments, including compatibility with different migration task
         configurations, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html\">Working with premigration assessment runs</a> in the
            <i>Database Migration Service User Guide.</i>
         </p>")
    @as("IndividualAssessmentNames")
    individualAssessmentNames: option<individualAssessmentNameList>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "DescribeApplicableIndividualAssessmentsCommand"
  let make = (
    ~marker=?,
    ~maxRecords=?,
    ~migrationType=?,
    ~targetEngineName=?,
    ~sourceEngineName=?,
    ~replicationInstanceArn=?,
    ~replicationTaskArn=?,
    (),
  ) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      migrationType: migrationType,
      targetEngineName: targetEngineName,
      sourceEngineName: sourceEngineName,
      replicationInstanceArn: replicationInstanceArn,
      replicationTaskArn: replicationTaskArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteConnection = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication instance.</p>")
    @as("ReplicationInstanceArn")
    replicationInstanceArn: string_,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
    )
    @as("EndpointArn")
    endpointArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The connection that is being deleted.</p>") @as("Connection")
    connection: option<connection>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "DeleteConnectionCommand"
  let make = (~replicationInstanceArn, ~endpointArn, ()) =>
    new({replicationInstanceArn: replicationInstanceArn, endpointArn: endpointArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the certificate.</p>") @as("CertificateArn")
    certificateArn: string_,
  }
  type response = {
    @ocaml.doc("<p>The Secure Sockets Layer (SSL) certificate.</p>") @as("Certificate")
    certificate: option<certificate>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "DeleteCertificateCommand"
  let make = (~certificateArn, ()) => new({certificateArn: certificateArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopReplicationTask = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name(ARN) of the replication task to be stopped.</p>")
    @as("ReplicationTaskArn")
    replicationTaskArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The replication task stopped.</p>") @as("ReplicationTask")
    replicationTask: option<replicationTask>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "StopReplicationTaskCommand"
  let make = (~replicationTaskArn, ()) => new({replicationTaskArn: replicationTaskArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartReplicationTaskAssessmentRun = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Space-separated list of names for specific individual assessments that you want to
         exclude. These names come from the default list of individual assessments that DMS
         supports for the associated migration task. This task is specified by
            <code>ReplicationTaskArn</code>.</p>
         <note>
            <p>You can't set a value for <code>Exclude</code> if you also set a value for
            <code>IncludeOnly</code> in the API operation.</p>
            <p>To identify the names of the default individual assessments that DMS
            supports for the associated migration task, run the
            <code>DescribeApplicableIndividualAssessments</code> operation using its own
            <code>ReplicationTaskArn</code> request parameter.</p>
         </note>")
    @as("Exclude")
    exclude: option<excludeTestList>,
    @ocaml.doc("<p>Space-separated list of names for specific individual assessments that you want to
         include. These names come from the default list of individual assessments that DMS
         supports for the associated migration task. This task is specified by
            <code>ReplicationTaskArn</code>.</p>
         <note>
            <p>You can't set a value for <code>IncludeOnly</code> if you also set a value for
            <code>Exclude</code> in the API operation. </p>
            <p>To identify the names of the default individual assessments that DMS
            supports for the associated migration task, run the
            <code>DescribeApplicableIndividualAssessments</code> operation using its own
            <code>ReplicationTaskArn</code> request parameter.</p>
         </note>")
    @as("IncludeOnly")
    includeOnly: option<includeTestList>,
    @ocaml.doc("<p>Unique name to identify the assessment run.</p>") @as("AssessmentRunName")
    assessmentRunName: string_,
    @ocaml.doc("<p>ARN of a custom KMS encryption key that you specify when you set
            <code>ResultEncryptionMode</code> to <code>\"SSE_KMS</code>\".</p>")
    @as("ResultKmsKeyArn")
    resultKmsKeyArn: option<string_>,
    @ocaml.doc("<p>Encryption mode that you can specify to encrypt the results of this assessment run. If
         you don't specify this request parameter, DMS stores the assessment run results
         without encryption. You can specify one of the options following:</p>
         <ul>
            <li>
               <p>
                  <code>\"SSE_S3\"</code> – The server-side encryption provided as a default by
               Amazon S3.</p>
            </li>
            <li>
               <p>
                  <code>\"SSE_KMS\"</code> – Key Management Service (KMS) encryption.
               This encryption can use either a custom KMS encryption key that you specify or the
               default KMS encryption key that DMS provides.</p>
            </li>
         </ul>")
    @as("ResultEncryptionMode")
    resultEncryptionMode: option<string_>,
    @ocaml.doc("<p>Folder within an Amazon S3 bucket where you want DMS to store the results of this assessment
         run.</p>")
    @as("ResultLocationFolder")
    resultLocationFolder: option<string_>,
    @ocaml.doc("<p>Amazon S3 bucket where you want DMS to store the results of this assessment
         run.</p>")
    @as("ResultLocationBucket")
    resultLocationBucket: string_,
    @ocaml.doc(
      "<p>ARN of the service role needed to start the assessment run. The role must allow the <code>iam:PassRole</code> action.</p>"
    )
    @as("ServiceAccessRoleArn")
    serviceAccessRoleArn: string_,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the migration task associated with the premigration
         assessment run that you want to start.</p>")
    @as("ReplicationTaskArn")
    replicationTaskArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The premigration assessment run that was started.</p>")
    @as("ReplicationTaskAssessmentRun")
    replicationTaskAssessmentRun: option<replicationTaskAssessmentRun>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "StartReplicationTaskAssessmentRunCommand"
  let make = (
    ~assessmentRunName,
    ~resultLocationBucket,
    ~serviceAccessRoleArn,
    ~replicationTaskArn,
    ~exclude=?,
    ~includeOnly=?,
    ~resultKmsKeyArn=?,
    ~resultEncryptionMode=?,
    ~resultLocationFolder=?,
    (),
  ) =>
    new({
      exclude: exclude,
      includeOnly: includeOnly,
      assessmentRunName: assessmentRunName,
      resultKmsKeyArn: resultKmsKeyArn,
      resultEncryptionMode: resultEncryptionMode,
      resultLocationFolder: resultLocationFolder,
      resultLocationBucket: resultLocationBucket,
      serviceAccessRoleArn: serviceAccessRoleArn,
      replicationTaskArn: replicationTaskArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartReplicationTaskAssessment = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the replication task. </p>")
    @as("ReplicationTaskArn")
    replicationTaskArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p> The assessed replication task. </p>") @as("ReplicationTask")
    replicationTask: option<replicationTask>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "StartReplicationTaskAssessmentCommand"
  let make = (~replicationTaskArn, ()) => new({replicationTaskArn: replicationTaskArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartReplicationTask = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
         either server time or commit time.</p>
         <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
         <p>Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “</p>")
    @as("CdcStopPosition")
    cdcStopPosition: option<string_>,
    @ocaml.doc("<p>Indicates when you want a change data capture (CDC) operation to start. Use either
         CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start.
         Specifying both values results in an error.</p>
         <p> The value can be in date, checkpoint, or LSN/SCN format.</p>
         <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
         <p>Checkpoint Example: --cdc-start-position
         \"checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93\"</p>
         <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
         <note>
            <p>When you use this task setting with a source PostgreSQL database, a logical
            replication slot should already be created and associated with the source endpoint. You
            can verify this by setting the <code>slotName</code> extra connection attribute to the
            name of this logical replication slot. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib\">Extra Connection Attributes When Using PostgreSQL as a Source
               for DMS</a>.</p>
         </note>")
    @as("CdcStartPosition")
    cdcStartPosition: option<string_>,
    @ocaml.doc("<p>Indicates the start time for a change data capture (CDC) operation. Use either
         CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start.
         Specifying both values results in an error.</p>
         <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>")
    @as("CdcStartTime")
    cdcStartTime: option<tstamp>,
    @ocaml.doc("<p>The type of replication task to start.</p>
         <p>When the migration type is <code>full-load</code> or <code>full-load-and-cdc</code>, the only valid value 
           for the first run of the task is <code>start-replication</code>. You use <code>reload-target</code> to restart
       the task and <code>resume-processing</code> to resume the task.</p>
         <p>When the migration type is <code>cdc</code>, you use <code>start-replication</code> to start or restart
       the task, and <code>resume-processing</code> to resume the task. <code>reload-target</code> is not a valid value for 
       a task with migration type of <code>cdc</code>.</p>")
    @as("StartReplicationTaskType")
    startReplicationTaskType: startReplicationTaskTypeValue,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication task to be started.</p>")
    @as("ReplicationTaskArn")
    replicationTaskArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The replication task started.</p>") @as("ReplicationTask")
    replicationTask: option<replicationTask>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "StartReplicationTaskCommand"
  let make = (
    ~startReplicationTaskType,
    ~replicationTaskArn,
    ~cdcStopPosition=?,
    ~cdcStartPosition=?,
    ~cdcStartTime=?,
    (),
  ) =>
    new({
      cdcStopPosition: cdcStopPosition,
      cdcStartPosition: cdcStartPosition,
      cdcStartTime: cdcStartTime,
      startReplicationTaskType: startReplicationTaskType,
      replicationTaskArn: replicationTaskArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ReloadTables = {
  type t
  type request = {
    @ocaml.doc("<p>Options for reload. Specify <code>data-reload</code> to reload the data and re-validate
         it if validation is enabled. Specify <code>validate-only</code> to re-validate the table.
         This option applies only when validation is enabled for the task. </p>
         <p>Valid values: data-reload, validate-only</p>
         <p>Default value is data-reload.</p>")
    @as("ReloadOption")
    reloadOption: option<reloadOptionValue>,
    @ocaml.doc("<p>The name and schema of the table to be reloaded. </p>") @as("TablesToReload")
    tablesToReload: tableListToReload,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication task. </p>")
    @as("ReplicationTaskArn")
    replicationTaskArn: string_,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication task. </p>")
    @as("ReplicationTaskArn")
    replicationTaskArn: option<string_>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "ReloadTablesCommand"
  let make = (~tablesToReload, ~replicationTaskArn, ~reloadOption=?, ()) =>
    new({
      reloadOption: reloadOption,
      tablesToReload: tablesToReload,
      replicationTaskArn: replicationTaskArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module MoveReplicationTask = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The ARN of the replication instance where you want to move the task to.</p>")
    @as("TargetReplicationInstanceArn")
    targetReplicationInstanceArn: string_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task that you want to move.</p>")
    @as("ReplicationTaskArn")
    replicationTaskArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The replication task that was moved.</p>") @as("ReplicationTask")
    replicationTask: option<replicationTask>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "MoveReplicationTaskCommand"
  let make = (~targetReplicationInstanceArn, ~replicationTaskArn, ()) =>
    new({
      targetReplicationInstanceArn: targetReplicationInstanceArn,
      replicationTaskArn: replicationTaskArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyReplicationTask = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Supplemental information that the task requires to migrate the data for certain source and target endpoints. 
            For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html\">Specifying Supplemental Data for Task Settings</a> in the
         <i>Database Migration Service User Guide.</i>
         </p>")
    @as("TaskData")
    taskData: option<string_>,
    @ocaml.doc("<p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
         either server time or commit time.</p>
         <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
         <p>Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “</p>")
    @as("CdcStopPosition")
    cdcStopPosition: option<string_>,
    @ocaml.doc("<p>Indicates when you want a change data capture (CDC) operation to start. Use either
         CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start.
         Specifying both values results in an error.</p>
         <p> The value can be in date, checkpoint, or LSN/SCN format.</p>
         <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
         <p>Checkpoint Example: --cdc-start-position
         \"checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93\"</p>
         <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
         <note>
            <p>When you use this task setting with a source PostgreSQL database, a logical
            replication slot should already be created and associated with the source endpoint. You
            can verify this by setting the <code>slotName</code> extra connection attribute to the
            name of this logical replication slot. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib\">Extra Connection Attributes When Using PostgreSQL as a Source
               for DMS</a>.</p>
         </note>")
    @as("CdcStartPosition")
    cdcStartPosition: option<string_>,
    @ocaml.doc("<p>Indicates the start time for a change data capture (CDC) operation. Use either
         CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start.
         Specifying both values results in an error.</p>
         <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>")
    @as("CdcStartTime")
    cdcStartTime: option<tstamp>,
    @ocaml.doc(
      "<p>JSON file that contains settings for the task, such as task metadata settings.</p>"
    )
    @as("ReplicationTaskSettings")
    replicationTaskSettings: option<string_>,
    @ocaml.doc("<p>When using the CLI or boto3, provide the path of the JSON file that contains the
         table mappings. Precede the path with <code>file://</code>.  For example, 
         <code>--table-mappings file://mappingfile.json</code>. When working with the DMS  API, 
         provide the JSON as the parameter value. 
    </p>")
    @as("TableMappings")
    tableMappings: option<string_>,
    @ocaml.doc("<p>The migration type. Valid values: <code>full-load</code> | <code>cdc</code> | <code>full-load-and-cdc</code>
         </p>")
    @as("MigrationType")
    migrationType: option<migrationTypeValue>,
    @ocaml.doc("<p>The replication task identifier.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain 1-255 alphanumeric characters or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("ReplicationTaskIdentifier")
    replicationTaskIdentifier: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication task.</p>")
    @as("ReplicationTaskArn")
    replicationTaskArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The replication task that was modified.</p>") @as("ReplicationTask")
    replicationTask: option<replicationTask>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "ModifyReplicationTaskCommand"
  let make = (
    ~replicationTaskArn,
    ~taskData=?,
    ~cdcStopPosition=?,
    ~cdcStartPosition=?,
    ~cdcStartTime=?,
    ~replicationTaskSettings=?,
    ~tableMappings=?,
    ~migrationType=?,
    ~replicationTaskIdentifier=?,
    (),
  ) =>
    new({
      taskData: taskData,
      cdcStopPosition: cdcStopPosition,
      cdcStartPosition: cdcStartPosition,
      cdcStartTime: cdcStartTime,
      replicationTaskSettings: replicationTaskSettings,
      tableMappings: tableMappings,
      migrationType: migrationType,
      replicationTaskIdentifier: replicationTaskIdentifier,
      replicationTaskArn: replicationTaskArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyEventSubscription = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p> A Boolean value; set to <b>true</b> to activate the
         subscription. </p>")
    @as("Enabled")
    enabled: option<booleanOptional>,
    @ocaml.doc("<p> A list of event categories for a source type that you want to subscribe to. Use the
            <code>DescribeEventCategories</code> action to see a list of event categories. </p>")
    @as("EventCategories")
    eventCategories: option<eventCategoriesList>,
    @ocaml.doc("<p> The type of DMS resource that generates the events you want to subscribe to. </p>
         <p>Valid values: replication-instance | replication-task</p>")
    @as("SourceType")
    sourceType: option<string_>,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification.
         The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>")
    @as("SnsTopicArn")
    snsTopicArn: option<string_>,
    @ocaml.doc("<p>The name of the DMS event notification subscription to be modified.</p>")
    @as("SubscriptionName")
    subscriptionName: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The modified event subscription.</p>") @as("EventSubscription")
    eventSubscription: option<eventSubscription>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "ModifyEventSubscriptionCommand"
  let make = (
    ~subscriptionName,
    ~enabled=?,
    ~eventCategories=?,
    ~sourceType=?,
    ~snsTopicArn=?,
    (),
  ) =>
    new({
      enabled: enabled,
      eventCategories: eventCategories,
      sourceType: sourceType,
      snsTopicArn: snsTopicArn,
      subscriptionName: subscriptionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>List of ARNs that identify multiple DMS resources that you want to list tags for. This
         returns a list of keys (tag names) and their associated tag values. It also returns each
         tag's associated <code>ResourceArn</code> value, which is the ARN of the resource for which
         each listed tag is created. </p>")
    @as("ResourceArnList")
    resourceArnList: option<arnList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) string that uniquely identifies the DMS resource to
         list tags for. This returns a list of keys (names of tags) created for the resource and
         their associated tag values.</p>")
    @as("ResourceArn")
    resourceArn: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>A list of tags for the resource.</p>") @as("TagList") tagList_: option<tagList_>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArnList=?, ~resourceArn=?, ()) =>
    new({resourceArnList: resourceArnList, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The tags associated with the certificate.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The location of an imported Oracle Wallet certificate for use with SSL. Provide the name of a <code>.sso</code> file
          using the <code>fileb://</code> prefix. You can't provide the certificate inline.</p> 
          <p>Example: <code>filebase64(\"${path.root}/rds-ca-2019-root.sso\")</code>
         </p>")
    @as("CertificateWallet")
    certificateWallet: option<certificateWallet>,
    @ocaml.doc(
      "<p>The contents of a <code>.pem</code> file, which contains an X.509 certificate.</p>"
    )
    @as("CertificatePem")
    certificatePem: option<secretString>,
    @ocaml.doc("<p>A customer-assigned name for the certificate. Identifiers must begin with a letter and
         must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or
         contain two consecutive hyphens.</p>")
    @as("CertificateIdentifier")
    certificateIdentifier: string_,
  }
  type response = {
    @ocaml.doc("<p>The certificate to be uploaded.</p>") @as("Certificate")
    certificate: option<certificate>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "ImportCertificateCommand"
  let make = (~certificateIdentifier, ~tags=?, ~certificateWallet=?, ~certificatePem=?, ()) =>
    new({
      tags: tags,
      certificateWallet: certificateWallet,
      certificatePem: certificatePem,
      certificateIdentifier: certificateIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReplicationTaskAssessmentResults = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token called a marker is included
         in the response so that the remaining results can be retrieved. </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) string that uniquely identifies the task. When this input
         parameter is specified, the API returns only one result and ignore the values of the
            <code>MaxRecords</code> and <code>Marker</code> parameters. </p>")
    @as("ReplicationTaskArn")
    replicationTaskArn: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p> The task assessment report. </p>") @as("ReplicationTaskAssessmentResults")
    replicationTaskAssessmentResults: option<replicationTaskAssessmentResultList>,
    @ocaml.doc("<p>- The Amazon S3 bucket where the task assessment report is located. </p>")
    @as("BucketName")
    bucketName: option<string_>,
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "DescribeReplicationTaskAssessmentResultsCommand"
  let make = (~marker=?, ~maxRecords=?, ~replicationTaskArn=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, replicationTaskArn: replicationTaskArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReplicationInstanceTaskLogs = {
  type t
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token called a marker is included
         in the response so that the remaining results can be retrieved. </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication instance.</p>")
    @as("ReplicationInstanceArn")
    replicationInstanceArn: string_,
  }
  type response = {
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>An array of replication task log metadata. Each member of the array contains the
         replication task name, ARN, and task log size (in bytes). </p>")
    @as("ReplicationInstanceTaskLogs")
    replicationInstanceTaskLogs: option<replicationInstanceTaskLogsList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication instance.</p>")
    @as("ReplicationInstanceArn")
    replicationInstanceArn: option<string_>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "DescribeReplicationInstanceTaskLogsCommand"
  let make = (~replicationInstanceArn, ~marker=?, ~maxRecords=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, replicationInstanceArn: replicationInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountAttributes = {
  type t
  type request = {.}
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>A unique DMS identifier for an account in a particular Amazon Web Services Region. The value of this
         identifier has the following format: <code>c99999999999</code>. DMS uses this identifier to
         name artifacts. For example, DMS uses this identifier to name the default Amazon S3 bucket
         for storing task assessment reports in a given Amazon Web Services Region. The format of this S3 bucket
         name is the following:
               <code>dms-<i>AccountNumber</i>-<i>UniqueAccountIdentifier</i>.</code>
         Here is an example name for this default S3 bucket:
            <code>dms-111122223333-c44445555666</code>.</p>
         <note>
            <p>DMS supports the <code>UniqueAccountIdentifier</code> parameter in
            versions 3.1.4 and later.</p>
         </note>")
    @as("UniqueAccountIdentifier")
    uniqueAccountIdentifier: option<string_>,
    @ocaml.doc("<p>Account quota information.</p>") @as("AccountQuotas")
    accountQuotas: option<accountQuotaList>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "DescribeAccountAttributesCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteReplicationTaskAssessmentRun = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc(
      "<p>Amazon Resource Name (ARN) of the premigration assessment run to be deleted.</p>"
    )
    @as("ReplicationTaskAssessmentRunArn")
    replicationTaskAssessmentRunArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The <code>ReplicationTaskAssessmentRun</code> object for the deleted assessment
         run.</p>")
    @as("ReplicationTaskAssessmentRun")
    replicationTaskAssessmentRun: option<replicationTaskAssessmentRun>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "DeleteReplicationTaskAssessmentRunCommand"
  let make = (~replicationTaskAssessmentRunArn, ()) =>
    new({replicationTaskAssessmentRunArn: replicationTaskAssessmentRunArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteReplicationTask = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication task to be deleted.</p>")
    @as("ReplicationTaskArn")
    replicationTaskArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The deleted replication task.</p>") @as("ReplicationTask")
    replicationTask: option<replicationTask>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "DeleteReplicationTaskCommand"
  let make = (~replicationTaskArn, ()) => new({replicationTaskArn: replicationTaskArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEventSubscription = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The name of the DMS event notification subscription to be deleted.</p>")
    @as("SubscriptionName")
    subscriptionName: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The event subscription that was deleted.</p>") @as("EventSubscription")
    eventSubscription: option<eventSubscription>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "DeleteEventSubscriptionCommand"
  let make = (~subscriptionName, ()) => new({subscriptionName: subscriptionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateReplicationTask = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A friendly name for the resource identifier at the end of the <code>EndpointArn</code>
         response parameter that is returned in the created <code>Endpoint</code> object. The value
         for this parameter can have up to 31 characters. It can contain only ASCII letters, digits,
         and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens,
         and can only begin with a letter, such as <code>Example-App-ARN1</code>. For example, this
         value might result in the <code>EndpointArn</code> value
         <code>arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1</code>. If you don't
         specify a <code>ResourceIdentifier</code> value, DMS generates a default identifier
         value for the end of <code>EndpointArn</code>.</p>")
    @as("ResourceIdentifier")
    resourceIdentifier: option<string_>,
    @ocaml.doc("<p>Supplemental information that the task requires to migrate the data for certain source and target endpoints. 
         For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html\">Specifying Supplemental Data for Task Settings</a> in the
            <i>Database Migration Service User Guide.</i>
         </p>")
    @as("TaskData")
    taskData: option<string_>,
    @ocaml.doc("<p>One or more tags to be assigned to the replication task.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
         either server time or commit time.</p>
         <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
         <p>Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “</p>")
    @as("CdcStopPosition")
    cdcStopPosition: option<string_>,
    @ocaml.doc("<p>Indicates when you want a change data capture (CDC) operation to start. Use either
         CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start.
         Specifying both values results in an error.</p>
         <p> The value can be in date, checkpoint, or LSN/SCN format.</p>
         <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
         <p>Checkpoint Example: --cdc-start-position
         \"checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93\"</p>
         <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
         <note>
            <p>When you use this task setting with a source PostgreSQL database, a logical
            replication slot should already be created and associated with the source endpoint. You
            can verify this by setting the <code>slotName</code> extra connection attribute to the
            name of this logical replication slot. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib\">Extra Connection Attributes When Using PostgreSQL as a Source
               for DMS</a>.</p>
         </note>")
    @as("CdcStartPosition")
    cdcStartPosition: option<string_>,
    @ocaml.doc("<p>Indicates the start time for a change data capture (CDC) operation. Use either
         CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start.
         Specifying both values results in an error.</p>
         <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>")
    @as("CdcStartTime")
    cdcStartTime: option<tstamp>,
    @ocaml.doc("<p>Overall settings for the task, in JSON format. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html\">Specifying Task
            Settings for Database Migration Service Tasks</a> in the <i>Database Migration Service User Guide.</i>
         </p>")
    @as("ReplicationTaskSettings")
    replicationTaskSettings: option<string_>,
    @ocaml.doc("<p>The table mappings for the task, in JSON format. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html\">Using Table
            Mapping to Specify Task Settings</a> in the <i>Database Migration Service User
            Guide.</i>
         </p>")
    @as("TableMappings")
    tableMappings: string_,
    @ocaml.doc("<p>The migration type. Valid values: <code>full-load</code> | <code>cdc</code> | <code>full-load-and-cdc</code>
         </p>")
    @as("MigrationType")
    migrationType: migrationTypeValue,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a replication instance.</p>")
    @as("ReplicationInstanceArn")
    replicationInstanceArn: string_,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies the target endpoint.</p>")
    @as("TargetEndpointArn")
    targetEndpointArn: string_,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies the source endpoint.</p>")
    @as("SourceEndpointArn")
    sourceEndpointArn: string_,
    @ocaml.doc("<p>An identifier for the replication task.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain 1-255 alphanumeric characters or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("ReplicationTaskIdentifier")
    replicationTaskIdentifier: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The replication task that was created.</p>") @as("ReplicationTask")
    replicationTask: option<replicationTask>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "CreateReplicationTaskCommand"
  let make = (
    ~tableMappings,
    ~migrationType,
    ~replicationInstanceArn,
    ~targetEndpointArn,
    ~sourceEndpointArn,
    ~replicationTaskIdentifier,
    ~resourceIdentifier=?,
    ~taskData=?,
    ~tags=?,
    ~cdcStopPosition=?,
    ~cdcStartPosition=?,
    ~cdcStartTime=?,
    ~replicationTaskSettings=?,
    (),
  ) =>
    new({
      resourceIdentifier: resourceIdentifier,
      taskData: taskData,
      tags: tags,
      cdcStopPosition: cdcStopPosition,
      cdcStartPosition: cdcStartPosition,
      cdcStartTime: cdcStartTime,
      replicationTaskSettings: replicationTaskSettings,
      tableMappings: tableMappings,
      migrationType: migrationType,
      replicationInstanceArn: replicationInstanceArn,
      targetEndpointArn: targetEndpointArn,
      sourceEndpointArn: sourceEndpointArn,
      replicationTaskIdentifier: replicationTaskIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEventSubscription = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>One or more tags to be assigned to the event subscription.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p> A Boolean value; set to <code>true</code> to activate the subscription, or set to
            <code>false</code> to create the subscription but not activate it. </p>")
    @as("Enabled")
    enabled: option<booleanOptional>,
    @ocaml.doc("<p>A list of identifiers for which DMS provides notification events.</p>
         <p>If you don't specify a value, notifications are provided for all sources.</p>
        <p>If you specify multiple values, they must be of the same type. For example, if you
            specify a database instance ID, then all of the other values must be database instance
            IDs.</p>")
    @as("SourceIds")
    sourceIds: option<sourceIdsList>,
    @ocaml.doc("<p>A list of event categories for a source type that you want to subscribe to. For more
           information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html\">Working with Events and
               Notifications</a> in the <i>Database Migration Service User
                   Guide.</i>
         </p>")
    @as("EventCategories")
    eventCategories: option<eventCategoriesList>,
    @ocaml.doc("<p> The type of DMS resource that generates the events. For example, if you want to be
         notified of events generated by a replication instance, you set this parameter to
            <code>replication-instance</code>. If this value isn't specified, all events are
         returned. </p>
         <p>Valid values: <code>replication-instance</code> | <code>replication-task</code>
         </p>")
    @as("SourceType")
    sourceType: option<string_>,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification.
         The ARN is created by Amazon SNS when you create a topic and subscribe to it. </p>")
    @as("SnsTopicArn")
    snsTopicArn: string_,
    @ocaml.doc(
      "<p>The name of the DMS event notification subscription. This name must be less than 255 characters.</p>"
    )
    @as("SubscriptionName")
    subscriptionName: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The event subscription that was created.</p>") @as("EventSubscription")
    eventSubscription: option<eventSubscription>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "CreateEventSubscriptionCommand"
  let make = (
    ~snsTopicArn,
    ~subscriptionName,
    ~tags=?,
    ~enabled=?,
    ~sourceIds=?,
    ~eventCategories=?,
    ~sourceType=?,
    (),
  ) =>
    new({
      tags: tags,
      enabled: enabled,
      sourceIds: sourceIds,
      eventCategories: eventCategories,
      sourceType: sourceType,
      snsTopicArn: snsTopicArn,
      subscriptionName: subscriptionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelReplicationTaskAssessmentRun = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc(
      "<p>Amazon Resource Name (ARN) of the premigration assessment run to be canceled.</p>"
    )
    @as("ReplicationTaskAssessmentRunArn")
    replicationTaskAssessmentRunArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The <code>ReplicationTaskAssessmentRun</code> object for the canceled assessment
         run.</p>")
    @as("ReplicationTaskAssessmentRun")
    replicationTaskAssessmentRun: option<replicationTaskAssessmentRun>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "CancelReplicationTaskAssessmentRunCommand"
  let make = (~replicationTaskAssessmentRunArn, ()) =>
    new({replicationTaskAssessmentRunArn: replicationTaskAssessmentRunArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTagsToResource = {
  type t
  @ocaml.doc("<p>Associates a set of tags with an DMS resource.</p>")
  type request = {
    @ocaml.doc("<p>One or more tags to be assigned to the resource.</p>") @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>Identifies the DMS resource to which tags should be added. The value for this parameter is an Amazon Resource Name (ARN).</p>
         <p>For DMS, you can tag a replication instance, an endpoint, or a replication task.</p>")
    @as("ResourceArn")
    resourceArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-dms") @new external new: request => t = "AddTagsToResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyEndpoint = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Settings in JSON format for the source GCP MySQL endpoint.</p>")
    @as("GcpMySQLSettings")
    gcpMySQLSettings: option<gcpMySQLSettings>,
    @ocaml.doc("<p>If this attribute is Y, the current call to <code>ModifyEndpoint</code> replaces all
         existing endpoint settings with the exact settings that you specify in this call. If this
         attribute is N, the current call to <code>ModifyEndpoint</code> does two things: </p>
         <ul>
            <li>
               <p>It replaces any endpoint settings that already exist with new values, for settings with the
               same names.</p>
            </li>
            <li>
               <p>It creates new endpoint settings that you specify in the call, for settings with different
               names. </p>
            </li>
         </ul>
         <p>For example, if you call <code>create-endpoint ... --endpoint-settings '{\"a\":1}'
            ...</code>, the endpoint has the following endpoint settings: <code>'{\"a\":1}'</code>. If
         you then call <code>modify-endpoint ... --endpoint-settings '{\"b\":2}' ...</code> for the
         same endpoint, the endpoint has the following settings: <code>'{\"a\":1,\"b\":2}'</code>. </p>
         <p>However, suppose that you follow this with a call to <code>modify-endpoint ...
            --endpoint-settings '{\"b\":2}' --exact-settings ...</code> for that same endpoint again.
         Then the endpoint has the following settings: <code>'{\"b\":2}'</code>. All existing settings
         are replaced with the exact settings that you specify. </p>")
    @as("ExactSettings")
    exactSettings: option<booleanOptional>,
    @ocaml.doc("<p>Settings in JSON format for the Redis target endpoint.</p>") @as("RedisSettings")
    redisSettings: option<redisSettings>,
    @ocaml.doc("<p>Settings in JSON format for the source DocumentDB endpoint. For more information about the
         available settings, see the configuration properties section in <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DocumentDB.html\"> Using DocumentDB as a Target for Database Migration Service
             </a> in the <i>Database Migration Service User
               Guide.</i>
         </p>")
    @as("DocDbSettings")
    docDbSettings: option<docDbSettings>,
    @ocaml.doc("<p>Settings in JSON format for the source IBM Db2 LUW endpoint. For information about other
         available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html#CHAP_Source.DB2.ConnectionAttrib\">Extra connection attributes
            when using Db2 LUW as a source for DMS</a> in the <i>Database Migration Service
                User Guide.</i>
         </p>")
    @as("IBMDb2Settings")
    ibmdb2Settings: option<ibmdb2Settings>,
    @ocaml.doc("<p>Settings in JSON format for the source and target Microsoft SQL Server endpoint. For
         information about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html#CHAP_Source.SQLServer.ConnectionAttrib\">Extra connection
            attributes when using SQL Server as a source for DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html#CHAP_Target.SQLServer.ConnectionAttrib\">
            Extra connection attributes when using SQL Server as a target for DMS</a> in the
            <i>Database Migration Service User Guide.</i>
         </p>")
    @as("MicrosoftSQLServerSettings")
    microsoftSQLServerSettings: option<microsoftSQLServerSettings>,
    @ocaml.doc("<p>Settings in JSON format for the source and target SAP ASE endpoint. For information
         about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html#CHAP_Source.SAP.ConnectionAttrib\">Extra connection attributes
            when using SAP ASE as a source for DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html#CHAP_Target.SAP.ConnectionAttrib\">Extra connection attributes
            when using SAP ASE as a target for DMS</a> in the <i>Database Migration Service
                User Guide.</i>
         </p>")
    @as("SybaseSettings")
    sybaseSettings: option<sybaseSettings>,
    @ocaml.doc("<p>Settings in JSON format for the source and target Oracle endpoint. For information about
         other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.ConnectionAttrib\">Extra connection
            attributes when using Oracle as a source for DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html#CHAP_Target.Oracle.ConnectionAttrib\">
            Extra connection attributes when using Oracle as a target for DMS</a> in the
            <i>Database Migration Service User Guide.</i>
         </p>")
    @as("OracleSettings")
    oracleSettings: option<oracleSettings>,
    @ocaml.doc("<p>Settings in JSON format for the source and target MySQL endpoint. For information about
         other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html#CHAP_Source.MySQL.ConnectionAttrib\">Extra connection
            attributes when using MySQL as a source for DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html#CHAP_Target.MySQL.ConnectionAttrib\">Extra
            connection attributes when using a MySQL-compatible database as a target for DMS</a> in the <i>Database Migration Service User
         Guide.</i>
         </p>")
    @as("MySQLSettings")
    mySQLSettings: option<mySQLSettings>,
    @ocaml.doc("<p>Settings in JSON format for the source and target PostgreSQL endpoint. For information
         about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib\">Extra connection
            attributes when using PostgreSQL as a source for DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html#CHAP_Target.PostgreSQL.ConnectionAttrib\">
            Extra connection attributes when using PostgreSQL as a target for DMS</a> in the
            <i>Database Migration Service User Guide.</i>
         </p>")
    @as("PostgreSQLSettings")
    postgreSQLSettings: option<postgreSQLSettings>,
    @as("RedshiftSettings") redshiftSettings: option<redshiftSettings>,
    @ocaml.doc("<p>Settings in JSON format for the target Amazon Neptune endpoint. For more information
         about the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings\">Specifying graph-mapping rules using Gremlin and R2RML for Amazon Neptune as a target</a> 
         in the <i>Database Migration Service User Guide.</i>
         </p>")
    @as("NeptuneSettings")
    neptuneSettings: option<neptuneSettings>,
    @ocaml.doc("<p>Settings in JSON format for the target OpenSearch endpoint. For more information
         about the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration\">Extra Connection Attributes When Using OpenSearch as a Target for DMS</a> in
         the <i>Database Migration Service User Guide.</i>
         </p>")
    @as("ElasticsearchSettings")
    elasticsearchSettings: option<elasticsearchSettings>,
    @ocaml.doc("<p>Settings in JSON format for the target Apache Kafka endpoint. For more information about
         the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html#CHAP_Target.Kafka.ObjectMapping\">Using object mapping
            to migrate data to a Kafka topic</a> in the <i>Database Migration Service User Guide.</i>
         </p>")
    @as("KafkaSettings")
    kafkaSettings: option<kafkaSettings>,
    @ocaml.doc("<p>Settings in JSON format for the target endpoint for Amazon Kinesis Data Streams. For
         more information about the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html#CHAP_Target.Kinesis.ObjectMapping\">Using object mapping to
            migrate data to a Kinesis data stream</a> in the <i>Database Migration Service User Guide.</i>
         </p>")
    @as("KinesisSettings")
    kinesisSettings: option<kinesisSettings>,
    @ocaml.doc("<p>Settings in JSON format for the source MongoDB endpoint. For more information about the
         available settings, see the configuration properties section in <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration\">Endpoint configuration settings
            when using MongoDB as a source for Database Migration Service</a> in the
         <i>Database Migration Service User Guide.</i>
         </p>")
    @as("MongoDbSettings")
    mongoDbSettings: option<mongoDbSettings>,
    @ocaml.doc("<p>The settings in JSON format for the DMS transfer type of source endpoint. </p>
         <p>Attributes include the following:</p>
         <ul>
            <li>
               <p>serviceAccessRoleArn - The Amazon Resource Name (ARN) used by the service access IAM role. The role must allow the <code>iam:PassRole</code> action.</p>
            </li>
            <li>
               <p>BucketName - The name of the S3 bucket to use.</p>
            </li>
         </ul>
         <p>Shorthand syntax for these settings is as follows: <code>ServiceAccessRoleArn=string
            ,BucketName=string</code>
         </p>
         <p>JSON syntax for these settings is as follows: <code>{ \"ServiceAccessRoleArn\": \"string\",
            \"BucketName\": \"string\"} </code>
         </p>")
    @as("DmsTransferSettings")
    dmsTransferSettings: option<dmsTransferSettings>,
    @ocaml.doc("<p>Settings in JSON format for the target Amazon S3 endpoint. For more information about
            the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring\">Extra
            Connection Attributes When Using Amazon S3 as a Target for DMS</a> in the
            <i>Database Migration Service User Guide.</i>
         </p>")
    @as("S3Settings")
    s3Settings: option<s3Settings>,
    @ocaml.doc("<p>Settings in JSON format for the target Amazon DynamoDB endpoint. For information about other 
            available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html#CHAP_Target.DynamoDB.ObjectMapping\">Using Object Mapping to Migrate
            Data to DynamoDB</a> in the <i>Database Migration Service User
            Guide.</i>
         </p>")
    @as("DynamoDbSettings")
    dynamoDbSettings: option<dynamoDbSettings>,
    @ocaml.doc("<p>The external table definition.</p>") @as("ExternalTableDefinition")
    externalTableDefinition: option<string_>,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) for the IAM role you want to use to modify
         the endpoint. The role must allow the <code>iam:PassRole</code> action.</p>")
    @as("ServiceAccessRoleArn")
    serviceAccessRoleArn: option<string_>,
    @ocaml.doc(
      "<p>The SSL mode used to connect to the endpoint.  The default value is <code>none</code>.</p>"
    )
    @as("SslMode")
    sslMode: option<dmsSslModeValue>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the certificate used for SSL connection.</p>")
    @as("CertificateArn")
    certificateArn: option<string_>,
    @ocaml.doc("<p>Additional attributes associated with the connection. To reset this parameter, pass the
         empty string (\"\") as an argument.</p>")
    @as("ExtraConnectionAttributes")
    extraConnectionAttributes: option<string_>,
    @ocaml.doc(
      "<p>The name of the endpoint database. For a MySQL source or target endpoint, do not specify DatabaseName.</p>"
    )
    @as("DatabaseName")
    databaseName: option<string_>,
    @ocaml.doc("<p>The port used by the endpoint database.</p>") @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>The name of the server where the endpoint database resides.</p>")
    @as("ServerName")
    serverName: option<string_>,
    @ocaml.doc("<p>The password to be used to login to the endpoint database.</p>") @as("Password")
    password: option<secretString>,
    @ocaml.doc("<p>The user name to be used to login to the endpoint database.</p>") @as("Username")
    username: option<string_>,
    @ocaml.doc("<p>The type of engine for the endpoint. Valid values, depending on the EndpointType,
         include
         <code>\"mysql\"</code>, <code>\"oracle\"</code>, <code>\"postgres\"</code>,
         <code>\"mariadb\"</code>, <code>\"aurora\"</code>, <code>\"aurora-postgresql\"</code>, <code>\"opensearch\"</code>,
         <code>\"redshift\"</code>, <code>\"s3\"</code>, <code>\"db2\"</code>, <code>\"azuredb\"</code>,
         <code>\"sybase\"</code>, <code>\"dynamodb\"</code>, <code>\"mongodb\"</code>,
         <code>\"kinesis\"</code>, <code>\"kafka\"</code>, <code>\"elasticsearch\"</code>,
         <code>\"documentdb\"</code>, <code>\"sqlserver\"</code>, and <code>\"neptune\"</code>.</p>")
    @as("EngineName")
    engineName: option<string_>,
    @ocaml.doc(
      "<p>The type of endpoint.  Valid values are <code>source</code> and <code>target</code>.</p>"
    )
    @as("EndpointType")
    endpointType: option<replicationEndpointTypeValue>,
    @ocaml.doc("<p>The database endpoint identifier. Identifiers must begin with a letter and must contain
         only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two
         consecutive hyphens.</p>")
    @as("EndpointIdentifier")
    endpointIdentifier: option<string_>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
    )
    @as("EndpointArn")
    endpointArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The modified endpoint.</p>") @as("Endpoint") endpoint: option<endpoint>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "ModifyEndpointCommand"
  let make = (
    ~endpointArn,
    ~gcpMySQLSettings=?,
    ~exactSettings=?,
    ~redisSettings=?,
    ~docDbSettings=?,
    ~ibmdb2Settings=?,
    ~microsoftSQLServerSettings=?,
    ~sybaseSettings=?,
    ~oracleSettings=?,
    ~mySQLSettings=?,
    ~postgreSQLSettings=?,
    ~redshiftSettings=?,
    ~neptuneSettings=?,
    ~elasticsearchSettings=?,
    ~kafkaSettings=?,
    ~kinesisSettings=?,
    ~mongoDbSettings=?,
    ~dmsTransferSettings=?,
    ~s3Settings=?,
    ~dynamoDbSettings=?,
    ~externalTableDefinition=?,
    ~serviceAccessRoleArn=?,
    ~sslMode=?,
    ~certificateArn=?,
    ~extraConnectionAttributes=?,
    ~databaseName=?,
    ~port=?,
    ~serverName=?,
    ~password=?,
    ~username=?,
    ~engineName=?,
    ~endpointType=?,
    ~endpointIdentifier=?,
    (),
  ) =>
    new({
      gcpMySQLSettings: gcpMySQLSettings,
      exactSettings: exactSettings,
      redisSettings: redisSettings,
      docDbSettings: docDbSettings,
      ibmdb2Settings: ibmdb2Settings,
      microsoftSQLServerSettings: microsoftSQLServerSettings,
      sybaseSettings: sybaseSettings,
      oracleSettings: oracleSettings,
      mySQLSettings: mySQLSettings,
      postgreSQLSettings: postgreSQLSettings,
      redshiftSettings: redshiftSettings,
      neptuneSettings: neptuneSettings,
      elasticsearchSettings: elasticsearchSettings,
      kafkaSettings: kafkaSettings,
      kinesisSettings: kinesisSettings,
      mongoDbSettings: mongoDbSettings,
      dmsTransferSettings: dmsTransferSettings,
      s3Settings: s3Settings,
      dynamoDbSettings: dynamoDbSettings,
      externalTableDefinition: externalTableDefinition,
      serviceAccessRoleArn: serviceAccessRoleArn,
      sslMode: sslMode,
      certificateArn: certificateArn,
      extraConnectionAttributes: extraConnectionAttributes,
      databaseName: databaseName,
      port: port,
      serverName: serverName,
      password: password,
      username: username,
      engineName: engineName,
      endpointType: endpointType,
      endpointIdentifier: endpointIdentifier,
      endpointArn: endpointArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTableStatistics = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Filters applied to table statistics.</p>
         <p>Valid filter names: schema-name | table-name | table-state</p>
         <p>A combination of filters creates an AND condition where each record matches all
         specified filters.</p>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token called a marker is included
         in the response so that the remaining results can be retrieved. </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 500.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication task.</p>")
    @as("ReplicationTaskArn")
    replicationTaskArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The table statistics.</p>") @as("TableStatistics")
    tableStatistics: option<tableStatisticsList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication task.</p>")
    @as("ReplicationTaskArn")
    replicationTaskArn: option<string_>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "DescribeTableStatisticsCommand"
  let make = (~replicationTaskArn, ~filters=?, ~marker=?, ~maxRecords=?, ()) =>
    new({
      filters: filters,
      marker: marker,
      maxRecords: maxRecords,
      replicationTaskArn: replicationTaskArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReplicationTasks = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An option to set to avoid returning information about settings. Use this to reduce
         overhead when setting information is too large. To use this option, choose
            <code>true</code>; otherwise, choose <code>false</code> (the default).</p>")
    @as("WithoutSettings")
    withoutSettings: option<booleanOptional>,
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token called a marker is included
         in the response so that the remaining results can be retrieved. </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>Filters applied to replication tasks.</p>
         <p>Valid filter names: replication-task-arn | replication-task-id | migration-type |
         endpoint-arn | replication-instance-arn</p>")
    @as("Filters")
    filters: option<filterList>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>A description of the replication tasks.</p>") @as("ReplicationTasks")
    replicationTasks: option<replicationTaskList>,
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "DescribeReplicationTasksCommand"
  let make = (~withoutSettings=?, ~marker=?, ~maxRecords=?, ~filters=?, ()) =>
    new({
      withoutSettings: withoutSettings,
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReplicationTaskIndividualAssessments = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
         specified <code>MaxRecords</code> value, a pagination token called a marker is included in
         the response so that the remaining results can be retrieved.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>Filters applied to the individual assessments described in the form of key-value
         pairs.</p>
         <p>Valid filter names: <code>replication-task-assessment-run-arn</code>,
            <code>replication-task-arn</code>, <code>status</code>
         </p>")
    @as("Filters")
    filters: option<filterList>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>One or more individual assessments as specified by <code>Filters</code>.</p>")
    @as("ReplicationTaskIndividualAssessments")
    replicationTaskIndividualAssessments: option<replicationTaskIndividualAssessmentList>,
    @ocaml.doc("<p>A pagination token returned for you to pass to a subsequent request. If you pass this
         token as the <code>Marker</code> value in a subsequent request, the response includes only
         records beyond the marker, up to the value specified in the request by
            <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "DescribeReplicationTaskIndividualAssessmentsCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReplicationTaskAssessmentRuns = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
         specified <code>MaxRecords</code> value, a pagination token called a marker is included in
         the response so that the remaining results can be retrieved.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>Filters applied to the premigration assessment runs described in the form of key-value pairs.</p>
         <p>Valid filter names: <code>replication-task-assessment-run-arn</code>, <code>replication-task-arn</code>,
         <code>replication-instance-arn</code>, <code>status</code>
         </p>")
    @as("Filters")
    filters: option<filterList>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc(
      "<p>One or more premigration assessment runs as specified by <code>Filters</code>.</p>"
    )
    @as("ReplicationTaskAssessmentRuns")
    replicationTaskAssessmentRuns: option<replicationTaskAssessmentRunList>,
    @ocaml.doc("<p>A pagination token returned for you to pass to a subsequent request. If you pass this
         token as the <code>Marker</code> value in a subsequent request, the response includes only
         records beyond the marker, up to the value specified in the request by
            <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "DescribeReplicationTaskAssessmentRunsCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOrderableReplicationInstances = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token called a marker is included
         in the response so that the remaining results can be retrieved. </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The order-able replication instances available.</p>")
    @as("OrderableReplicationInstances")
    orderableReplicationInstances: option<orderableReplicationInstanceList>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "DescribeOrderableReplicationInstancesCommand"
  let make = (~marker=?, ~maxRecords=?, ()) => new({marker: marker, maxRecords: maxRecords})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEvents = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token called a marker is included
         in the response so that the remaining results can be retrieved. </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc(
      "<p>Filters applied to events. The only valid filter is <code>replication-instance-id</code>.</p>"
    )
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>A list of event categories for the source type that you've chosen.</p>")
    @as("EventCategories")
    eventCategories: option<eventCategoriesList>,
    @ocaml.doc("<p>The duration of the events to be listed.</p>") @as("Duration")
    duration: option<integerOptional>,
    @ocaml.doc("<p>The end time for the events to be listed.</p>") @as("EndTime")
    endTime: option<tstamp>,
    @ocaml.doc("<p>The start time for the events to be listed.</p>") @as("StartTime")
    startTime: option<tstamp>,
    @ocaml.doc("<p>The type of DMS resource that generates events.</p>
         <p>Valid values: replication-instance | replication-task</p>")
    @as("SourceType")
    sourceType: option<sourceType>,
    @ocaml.doc("<p> The identifier of an event source.</p>") @as("SourceIdentifier")
    sourceIdentifier: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The events described.</p>") @as("Events") events: option<eventList>,
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "DescribeEventsCommand"
  let make = (
    ~marker=?,
    ~maxRecords=?,
    ~filters=?,
    ~eventCategories=?,
    ~duration=?,
    ~endTime=?,
    ~startTime=?,
    ~sourceType=?,
    ~sourceIdentifier=?,
    (),
  ) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      eventCategories: eventCategories,
      duration: duration,
      endTime: endTime,
      startTime: startTime,
      sourceType: sourceType,
      sourceIdentifier: sourceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventSubscriptions = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token called a marker is included
         in the response so that the remaining results can be retrieved. </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>Filters applied to event subscriptions.</p>
         <p>Valid filter names: event-subscription-arn |  event-subscription-id </p>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of the DMS event subscription to be described.</p>")
    @as("SubscriptionName")
    subscriptionName: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>A list of event subscriptions.</p>") @as("EventSubscriptionsList")
    eventSubscriptionsList: option<eventSubscriptionsList>,
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "DescribeEventSubscriptionsCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~subscriptionName=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      subscriptionName: subscriptionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventCategories = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Filters applied to the event categories.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p> The type of DMS resource that generates events. </p>
         <p>Valid values: replication-instance | replication-task</p>")
    @as("SourceType")
    sourceType: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>A list of event categories.</p>") @as("EventCategoryGroupList")
    eventCategoryGroupList: option<eventCategoryGroupList>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "DescribeEventCategoriesCommand"
  let make = (~filters=?, ~sourceType=?, ()) => new({filters: filters, sourceType: sourceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpointTypes = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token called a marker is included
         in the response so that the remaining results can be retrieved. </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>Filters applied to the endpoint types.</p>
         <p>Valid filter names: engine-name | endpoint-type</p>")
    @as("Filters")
    filters: option<filterList>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The types of endpoints that are supported.</p>") @as("SupportedEndpointTypes")
    supportedEndpointTypes: option<supportedEndpointTypeList>,
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "DescribeEndpointTypesCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpointSettings = {
  type t
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, 
         the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than 
         the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response 
         so that the remaining results can be retrieved.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The databse engine used for your source or target endpoint.</p>")
    @as("EngineName")
    engineName: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>Descriptions of the endpoint settings available for your source or target database engine.</p>"
    )
    @as("EndpointSettings")
    endpointSettings: option<endpointSettingsList>,
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, 
         the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "DescribeEndpointSettingsCommand"
  let make = (~engineName, ~marker=?, ~maxRecords=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, engineName: engineName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConnections = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token called a marker is included
         in the response so that the remaining results can be retrieved. </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The filters applied to the connection.</p>
         <p>Valid filter names: endpoint-arn | replication-instance-arn</p>")
    @as("Filters")
    filters: option<filterList>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>A description of the connections.</p>") @as("Connections")
    connections: option<connectionList>,
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "DescribeConnectionsCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCertificates = {
  type t
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token called a marker is included
         in the response so that the remaining results can be retrieved. </p>
         <p>Default: 10</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>Filters applied to the certificates described in the form of key-value pairs. 
          Valid values are <code>certificate-arn</code> and <code>certificate-id</code>.</p>")
    @as("Filters")
    filters: option<filterList>,
  }
  type response = {
    @ocaml.doc("<p>The Secure Sockets Layer (SSL) certificates associated with the replication
         instance.</p>")
    @as("Certificates")
    certificates: option<certificateList>,
    @ocaml.doc("<p>The pagination token.</p>") @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "DescribeCertificatesCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEndpoint = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
    )
    @as("EndpointArn")
    endpointArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The endpoint that was deleted.</p>") @as("Endpoint") endpoint: option<endpoint>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "DeleteEndpointCommand"
  let make = (~endpointArn, ()) => new({endpointArn: endpointArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEndpoint = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Settings in JSON format for the source GCP MySQL endpoint.</p>")
    @as("GcpMySQLSettings")
    gcpMySQLSettings: option<gcpMySQLSettings>,
    @ocaml.doc("<p>Settings in JSON format for the target Redis endpoint.</p>") @as("RedisSettings")
    redisSettings: option<redisSettings>,
    @as("DocDbSettings") docDbSettings: option<docDbSettings>,
    @ocaml.doc("<p>A friendly name for the resource identifier at the end of the <code>EndpointArn</code>
         response parameter that is returned in the created <code>Endpoint</code> object. The value
         for this parameter can have up to 31 characters. It can contain only ASCII letters, digits,
         and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens,
         and can only begin with a letter, such as <code>Example-App-ARN1</code>. For example, this
         value might result in the <code>EndpointArn</code> value
            <code>arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1</code>. If you don't
         specify a <code>ResourceIdentifier</code> value, DMS generates a default identifier
         value for the end of <code>EndpointArn</code>.</p>")
    @as("ResourceIdentifier")
    resourceIdentifier: option<string_>,
    @ocaml.doc("<p>Settings in JSON format for the source IBM Db2 LUW endpoint. For information about other
         available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html#CHAP_Source.DB2.ConnectionAttrib\">Extra connection attributes
            when using Db2 LUW as a source for DMS</a> in the <i>Database Migration Service
                User Guide.</i>
         </p>")
    @as("IBMDb2Settings")
    ibmdb2Settings: option<ibmdb2Settings>,
    @ocaml.doc("<p>Settings in JSON format for the source and target Microsoft SQL Server endpoint. For
         information about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html#CHAP_Source.SQLServer.ConnectionAttrib\">Extra connection
            attributes when using SQL Server as a source for DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html#CHAP_Target.SQLServer.ConnectionAttrib\">
            Extra connection attributes when using SQL Server as a target for DMS</a> in the
            <i>Database Migration Service User Guide.</i>
         </p>")
    @as("MicrosoftSQLServerSettings")
    microsoftSQLServerSettings: option<microsoftSQLServerSettings>,
    @ocaml.doc("<p>Settings in JSON format for the source and target SAP ASE endpoint. For information
         about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html#CHAP_Source.SAP.ConnectionAttrib\">Extra connection attributes
            when using SAP ASE as a source for DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html#CHAP_Target.SAP.ConnectionAttrib\">Extra connection attributes
                when using SAP ASE as a target for DMS</a> in the <i>Database Migration Service
                    User Guide.</i>
         </p>")
    @as("SybaseSettings")
    sybaseSettings: option<sybaseSettings>,
    @ocaml.doc("<p>Settings in JSON format for the source and target Oracle endpoint. For information about
         other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.ConnectionAttrib\">Extra connection attributes 
            when using Oracle as a source for DMS</a> and 
         <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html#CHAP_Target.Oracle.ConnectionAttrib\">
            Extra connection attributes when using Oracle as a target for DMS</a> 
          in the <i>Database Migration Service User Guide.</i>
         </p>")
    @as("OracleSettings")
    oracleSettings: option<oracleSettings>,
    @ocaml.doc("<p>Settings in JSON format for the source and target MySQL endpoint. For information about
         other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html#CHAP_Source.MySQL.ConnectionAttrib\">Extra connection attributes 
            when using MySQL as a source for DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html#CHAP_Target.MySQL.ConnectionAttrib\">Extra connection attributes when using a MySQL-compatible database as a target for DMS</a> in
          the <i>Database Migration Service User Guide.</i>
         </p>")
    @as("MySQLSettings")
    mySQLSettings: option<mySQLSettings>,
    @ocaml.doc("<p>Settings in JSON format for the source and target PostgreSQL endpoint. For information
         about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib\">Extra connection
            attributes when using PostgreSQL as a source for DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html#CHAP_Target.PostgreSQL.ConnectionAttrib\">
               Extra connection attributes when using PostgreSQL as a target for DMS</a> in the
          <i>Database Migration Service User Guide.</i>
         </p>")
    @as("PostgreSQLSettings")
    postgreSQLSettings: option<postgreSQLSettings>,
    @as("RedshiftSettings") redshiftSettings: option<redshiftSettings>,
    @ocaml.doc("<p>Settings in JSON format for the target Amazon Neptune endpoint.
         For more information
         about the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings\">Specifying graph-mapping rules using Gremlin and R2RML for Amazon Neptune as a target</a> 
            in the <i>Database Migration Service User Guide.</i>
         </p>")
    @as("NeptuneSettings")
    neptuneSettings: option<neptuneSettings>,
    @ocaml.doc("<p>Settings in JSON format for the target OpenSearch endpoint. For more information
         about the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration\">Extra Connection Attributes When Using OpenSearch as a Target for DMS</a> in
          the <i>Database Migration Service User Guide</i>.</p>")
    @as("ElasticsearchSettings")
    elasticsearchSettings: option<elasticsearchSettings>,
    @ocaml.doc("<p>Settings in JSON format for the target Apache Kafka endpoint. For more information about
         the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html#CHAP_Target.Kafka.ObjectMapping\">Using object mapping
            to migrate data to a Kafka topic</a> in the <i>Database Migration Service User
            Guide.</i>
         </p>")
    @as("KafkaSettings")
    kafkaSettings: option<kafkaSettings>,
    @ocaml.doc("<p>Settings in JSON format for the target endpoint for Amazon Kinesis Data Streams. For
         more information about the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html#CHAP_Target.Kinesis.ObjectMapping\">Using object mapping to
            migrate data to a Kinesis data stream</a> in the <i>Database Migration Service User Guide.</i>
         </p>")
    @as("KinesisSettings")
    kinesisSettings: option<kinesisSettings>,
    @ocaml.doc("<p>Settings in JSON format for the source MongoDB endpoint. For more information about the
         available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration\">Endpoint configuration settings
            when using MongoDB as a source for Database Migration Service</a> in the
            <i>Database Migration Service User Guide.</i>
         </p>")
    @as("MongoDbSettings")
    mongoDbSettings: option<mongoDbSettings>,
    @ocaml.doc("<p>The settings in JSON format for the DMS transfer type of source endpoint. </p>
         <p>Possible settings include the following:</p>
         <ul>
            <li>
               <p>
                  <code>ServiceAccessRoleArn</code> - The Amazon Resource Name (ARN) used by the service access IAM role.
                 The role must allow the <code>iam:PassRole</code> action.</p>
            </li>
            <li>
               <p>
                  <code>BucketName</code> - The name of the S3 bucket to use.</p>
            </li>
         </ul>
         <p>Shorthand syntax for these settings is as follows:
            <code>ServiceAccessRoleArn=string,BucketName=string</code>
         </p>
         <p>JSON syntax for these settings is as follows: <code>{ \"ServiceAccessRoleArn\":
            \"string\", \"BucketName\": \"string\", } </code>
         </p>")
    @as("DmsTransferSettings")
    dmsTransferSettings: option<dmsTransferSettings>,
    @ocaml.doc("<p>Settings in JSON format for the target Amazon S3 endpoint. For more information about
         the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring\">Extra
            Connection Attributes When Using Amazon S3 as a Target for DMS</a> in the
            <i>Database Migration Service User Guide.</i>
         </p>")
    @as("S3Settings")
    s3Settings: option<s3Settings>,
    @ocaml.doc("<p>Settings in JSON format for the target Amazon DynamoDB endpoint. For information about other 
            available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html#CHAP_Target.DynamoDB.ObjectMapping\">Using Object Mapping to Migrate
                Data to DynamoDB</a> in the <i>Database Migration Service User
            Guide.</i>
         </p>")
    @as("DynamoDbSettings")
    dynamoDbSettings: option<dynamoDbSettings>,
    @ocaml.doc("<p>The external table definition. </p>") @as("ExternalTableDefinition")
    externalTableDefinition: option<string_>,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) for the service access role that you want to use to
          create the endpoint. The role must allow the <code>iam:PassRole</code> action.</p>")
    @as("ServiceAccessRoleArn")
    serviceAccessRoleArn: option<string_>,
    @ocaml.doc("<p>The Secure Sockets Layer (SSL) mode to use for the SSL connection. The default is <code>none</code>
         </p>")
    @as("SslMode")
    sslMode: option<dmsSslModeValue>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the certificate.</p>") @as("CertificateArn")
    certificateArn: option<string_>,
    @ocaml.doc("<p>One or more tags to be assigned to the endpoint.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>An KMS key identifier that is used to encrypt the connection parameters for the endpoint.</p>
         <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then
           DMS uses your default encryption key.</p>
         <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a
         different default encryption key for each Amazon Web Services Region.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>Additional attributes associated with the connection. Each attribute is specified as a
         name-value pair associated by an equal sign (=). Multiple attributes are separated by a
         semicolon (;) with no additional white space. For information on the attributes available
         for connecting your source or target endpoint, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Endpoints.html\">Working with
            DMS Endpoints</a> in the <i>Database Migration Service User
            Guide.</i>
         </p>")
    @as("ExtraConnectionAttributes")
    extraConnectionAttributes: option<string_>,
    @ocaml.doc(
      "<p>The name of the endpoint database. For a MySQL source or target endpoint, do not specify DatabaseName.</p>"
    )
    @as("DatabaseName")
    databaseName: option<string_>,
    @ocaml.doc("<p>The port used by the endpoint database.</p>") @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>The name of the server where the endpoint database resides.</p>")
    @as("ServerName")
    serverName: option<string_>,
    @ocaml.doc("<p>The password to be used to log in to the endpoint database.</p>") @as("Password")
    password: option<secretString>,
    @ocaml.doc("<p>The user name to be used to log in to the endpoint database.</p>")
    @as("Username")
    username: option<string_>,
    @ocaml.doc("<p>The type of engine for the endpoint. Valid values, depending on the
         <code>EndpointType</code> value, include <code>\"mysql\"</code>, <code>\"oracle\"</code>,
          <code>\"postgres\"</code>, <code>\"mariadb\"</code>, <code>\"aurora\"</code>, 
          <code>\"aurora-postgresql\"</code>, <code>\"opensearch\"</code>, <code>\"redshift\"</code>, <code>\"s3\"</code>,
         <code>\"db2\"</code>, <code>\"azuredb\"</code>, <code>\"sybase\"</code>, <code>\"dynamodb\"</code>, <code>\"mongodb\"</code>,
         <code>\"kinesis\"</code>, <code>\"kafka\"</code>, <code>\"elasticsearch\"</code>, <code>\"docdb\"</code>,
         <code>\"sqlserver\"</code>, and <code>\"neptune\"</code>.</p>")
    @as("EngineName")
    engineName: string_,
    @ocaml.doc(
      "<p>The type of endpoint.  Valid values are <code>source</code> and <code>target</code>.</p>"
    )
    @as("EndpointType")
    endpointType: replicationEndpointTypeValue,
    @ocaml.doc("<p>The database endpoint identifier. Identifiers must begin with a letter and must contain
         only ASCII letters, digits, and hyphens. They can't end with a hyphen, or contain two
         consecutive hyphens.</p>")
    @as("EndpointIdentifier")
    endpointIdentifier: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The endpoint that was created.</p>") @as("Endpoint") endpoint: option<endpoint>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "CreateEndpointCommand"
  let make = (
    ~engineName,
    ~endpointType,
    ~endpointIdentifier,
    ~gcpMySQLSettings=?,
    ~redisSettings=?,
    ~docDbSettings=?,
    ~resourceIdentifier=?,
    ~ibmdb2Settings=?,
    ~microsoftSQLServerSettings=?,
    ~sybaseSettings=?,
    ~oracleSettings=?,
    ~mySQLSettings=?,
    ~postgreSQLSettings=?,
    ~redshiftSettings=?,
    ~neptuneSettings=?,
    ~elasticsearchSettings=?,
    ~kafkaSettings=?,
    ~kinesisSettings=?,
    ~mongoDbSettings=?,
    ~dmsTransferSettings=?,
    ~s3Settings=?,
    ~dynamoDbSettings=?,
    ~externalTableDefinition=?,
    ~serviceAccessRoleArn=?,
    ~sslMode=?,
    ~certificateArn=?,
    ~tags=?,
    ~kmsKeyId=?,
    ~extraConnectionAttributes=?,
    ~databaseName=?,
    ~port=?,
    ~serverName=?,
    ~password=?,
    ~username=?,
    (),
  ) =>
    new({
      gcpMySQLSettings: gcpMySQLSettings,
      redisSettings: redisSettings,
      docDbSettings: docDbSettings,
      resourceIdentifier: resourceIdentifier,
      ibmdb2Settings: ibmdb2Settings,
      microsoftSQLServerSettings: microsoftSQLServerSettings,
      sybaseSettings: sybaseSettings,
      oracleSettings: oracleSettings,
      mySQLSettings: mySQLSettings,
      postgreSQLSettings: postgreSQLSettings,
      redshiftSettings: redshiftSettings,
      neptuneSettings: neptuneSettings,
      elasticsearchSettings: elasticsearchSettings,
      kafkaSettings: kafkaSettings,
      kinesisSettings: kinesisSettings,
      mongoDbSettings: mongoDbSettings,
      dmsTransferSettings: dmsTransferSettings,
      s3Settings: s3Settings,
      dynamoDbSettings: dynamoDbSettings,
      externalTableDefinition: externalTableDefinition,
      serviceAccessRoleArn: serviceAccessRoleArn,
      sslMode: sslMode,
      certificateArn: certificateArn,
      tags: tags,
      kmsKeyId: kmsKeyId,
      extraConnectionAttributes: extraConnectionAttributes,
      databaseName: databaseName,
      port: port,
      serverName: serverName,
      password: password,
      username: username,
      engineName: engineName,
      endpointType: endpointType,
      endpointIdentifier: endpointIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ApplyPendingMaintenanceAction = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A value that specifies the type of opt-in request, or undoes an opt-in request. You can't undo an
         opt-in request of type <code>immediate</code>.</p>
         <p>Valid values:</p>
         <ul>
            <li>
               <p>
                  <code>immediate</code> - Apply the maintenance action immediately.</p>
            </li>
            <li>
               <p>
                  <code>next-maintenance</code> - Apply the maintenance action during the next
               maintenance window for the resource.</p>
            </li>
            <li>
               <p>
                  <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code> opt-in
               requests.</p>
            </li>
         </ul>")
    @as("OptInType")
    optInType: string_,
    @ocaml.doc("<p>The pending maintenance action to apply to this resource.</p>
         <p>Valid values: <code>os-upgrade</code>, <code>system-update</code>, <code>db-upgrade</code> 
         </p>")
    @as("ApplyAction")
    applyAction: string_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the DMS resource that the pending maintenance
         action applies to.</p>")
    @as("ReplicationInstanceArn")
    replicationInstanceArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The DMS resource that the pending maintenance action will be applied to.</p>")
    @as("ResourcePendingMaintenanceActions")
    resourcePendingMaintenanceActions: option<resourcePendingMaintenanceActions>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "ApplyPendingMaintenanceActionCommand"
  let make = (~optInType, ~applyAction, ~replicationInstanceArn, ()) =>
    new({
      optInType: optInType,
      applyAction: applyAction,
      replicationInstanceArn: replicationInstanceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyReplicationSubnetGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A list of subnet IDs.</p>") @as("SubnetIds") subnetIds: subnetIdentifierList,
    @ocaml.doc("<p>A description for the replication instance subnet group.</p>")
    @as("ReplicationSubnetGroupDescription")
    replicationSubnetGroupDescription: option<string_>,
    @ocaml.doc("<p>The name of the replication instance subnet group.</p>")
    @as("ReplicationSubnetGroupIdentifier")
    replicationSubnetGroupIdentifier: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The modified replication subnet group.</p>") @as("ReplicationSubnetGroup")
    replicationSubnetGroup: option<replicationSubnetGroup>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "ModifyReplicationSubnetGroupCommand"
  let make = (
    ~subnetIds,
    ~replicationSubnetGroupIdentifier,
    ~replicationSubnetGroupDescription=?,
    (),
  ) =>
    new({
      subnetIds: subnetIds,
      replicationSubnetGroupDescription: replicationSubnetGroupDescription,
      replicationSubnetGroupIdentifier: replicationSubnetGroupIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePendingMaintenanceActions = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token called a marker is included
         in the response so that the remaining results can be retrieved. </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p></p>") @as("Filters") filters: option<filterList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication instance.</p>")
    @as("ReplicationInstanceArn")
    replicationInstanceArn: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The pending maintenance action.</p>") @as("PendingMaintenanceActions")
    pendingMaintenanceActions: option<pendingMaintenanceActions>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "DescribePendingMaintenanceActionsCommand"
  let make = (~maxRecords=?, ~marker=?, ~filters=?, ~replicationInstanceArn=?, ()) =>
    new({
      maxRecords: maxRecords,
      marker: marker,
      filters: filters,
      replicationInstanceArn: replicationInstanceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpoints = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token called a marker is included
         in the response so that the remaining results can be retrieved. </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>Filters applied to the endpoints.</p>
         <p>Valid filter names: endpoint-arn | endpoint-type | endpoint-id | engine-name</p>")
    @as("Filters")
    filters: option<filterList>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>Endpoint description.</p>") @as("Endpoints") endpoints: option<endpointList>,
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-dms") @new external new: request => t = "DescribeEndpointsCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateReplicationSubnetGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>One or more tags to be assigned to the subnet group.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>One or more subnet IDs to be assigned to the subnet group.</p>") @as("SubnetIds")
    subnetIds: subnetIdentifierList,
    @ocaml.doc("<p>The description for the subnet group.</p>")
    @as("ReplicationSubnetGroupDescription")
    replicationSubnetGroupDescription: string_,
    @ocaml.doc("<p>The name for the replication subnet group. This value is stored as a lowercase
         string.</p>
         <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, spaces,
         underscores, or hyphens. Must not be \"default\".</p>
         <p>Example: <code>mySubnetgroup</code>
         </p>")
    @as("ReplicationSubnetGroupIdentifier")
    replicationSubnetGroupIdentifier: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The replication subnet group that was created.</p>")
    @as("ReplicationSubnetGroup")
    replicationSubnetGroup: option<replicationSubnetGroup>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "CreateReplicationSubnetGroupCommand"
  let make = (
    ~subnetIds,
    ~replicationSubnetGroupDescription,
    ~replicationSubnetGroupIdentifier,
    ~tags=?,
    (),
  ) =>
    new({
      tags: tags,
      subnetIds: subnetIds,
      replicationSubnetGroupDescription: replicationSubnetGroupDescription,
      replicationSubnetGroupIdentifier: replicationSubnetGroupIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RebootReplicationInstance = {
  type t
  type request = {
    @ocaml.doc("<p>If this parameter is <code>true</code>, the reboot is conducted through a planned Multi-AZ failover 
         where resources are released and cleaned up prior to conducting the failover. 
         If the instance isn''t configured for Multi-AZ, then you can't specify <code>true</code>. 
         ( <code>--force-planned-failover</code> and <code>--force-failover</code> can't both be set to <code>true</code>.)</p>")
    @as("ForcePlannedFailover")
    forcePlannedFailover: option<booleanOptional>,
    @ocaml.doc("<p>If this parameter is <code>true</code>, the reboot is conducted through a Multi-AZ
         failover. If the instance isn't configured for Multi-AZ, then you can't specify
         <code>true</code>.  ( <code>--force-planned-failover</code> and <code>--force-failover</code> can't both be set to <code>true</code>.)</p>")
    @as("ForceFailover")
    forceFailover: option<booleanOptional>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication instance.</p>")
    @as("ReplicationInstanceArn")
    replicationInstanceArn: string_,
  }
  type response = {
    @ocaml.doc("<p>The replication instance that is being rebooted. </p>")
    @as("ReplicationInstance")
    replicationInstance: option<replicationInstance>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "RebootReplicationInstanceCommand"
  let make = (~replicationInstanceArn, ~forcePlannedFailover=?, ~forceFailover=?, ()) =>
    new({
      forcePlannedFailover: forcePlannedFailover,
      forceFailover: forceFailover,
      replicationInstanceArn: replicationInstanceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyReplicationInstance = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The replication instance identifier. This parameter is stored as a lowercase
         string.</p>")
    @as("ReplicationInstanceIdentifier")
    replicationInstanceIdentifier: option<string_>,
    @ocaml.doc("<p>A value that indicates that minor version upgrades are applied automatically to the
         replication instance during the maintenance window. Changing this parameter doesn't result
         in an outage, except in the case described following. The change is asynchronously applied
         as soon as possible. </p>
         <p>An outage does result if these factors apply: </p>
         <ul>
            <li>
               <p>This parameter is set to <code>true</code> during the maintenance window.</p>
            </li>
            <li>
               <p>A newer minor version is available. </p>
            </li>
            <li>
               <p>DMS has enabled automatic patching for the given engine version. </p>
            </li>
         </ul>")
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>Indicates that major version upgrades are allowed. Changing this parameter does not
         result in an outage, and the change is asynchronously applied as soon as possible.</p>
         <p>This parameter must be set to <code>true</code> when specifying a value for the
            <code>EngineVersion</code> parameter that is a different major version than the
         replication instance's current version.</p>")
    @as("AllowMajorVersionUpgrade")
    allowMajorVersionUpgrade: option<boolean_>,
    @ocaml.doc("<p>The engine version number of the replication instance.</p>
         <p>When modifying a major engine version of an instance, also set 
         <code>AllowMajorVersionUpgrade</code> to <code>true</code>.</p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the
            <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to
            <code>true</code>. </p>")
    @as("MultiAZ")
    multiAZ: option<booleanOptional>,
    @ocaml.doc("<p>The weekly time range (in UTC) during which system maintenance can occur, which might
         result in an outage. Changing this parameter does not result in an outage, except in the
         following situation, and the change is asynchronously applied as soon as possible. If
         moving this window to the current time, there must be at least 30 minutes between the
         current time and end of the window to ensure pending changes are applied.</p>
         <p>Default: Uses existing setting</p>
         <p>Format: ddd:hh24:mi-ddd:hh24:mi</p>
         <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
         <p>Constraints: Must be at least 30 minutes</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p> Specifies the VPC security group to be used with the replication instance. The VPC
         security group must work with the VPC containing the replication instance. </p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>The compute and memory capacity of the replication instance as defined for the specified
         replication instance class. For example to specify the instance class dms.c4.large, set this parameter to <code>\"dms.c4.large\"</code>.</p>
         <p>For more information on the settings and capacities for the available replication instance classes, see 
         <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth\">
            Selecting the right DMS replication instance for your migration</a>.
      </p>")
    @as("ReplicationInstanceClass")
    replicationInstanceClass: option<string_>,
    @ocaml.doc("<p>Indicates whether the changes should be applied immediately or during the next
         maintenance window.</p>")
    @as("ApplyImmediately")
    applyImmediately: option<boolean_>,
    @ocaml.doc("<p>The amount of storage (in gigabytes) to be allocated for the replication
         instance.</p>")
    @as("AllocatedStorage")
    allocatedStorage: option<integerOptional>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication instance.</p>")
    @as("ReplicationInstanceArn")
    replicationInstanceArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The modified replication instance.</p>") @as("ReplicationInstance")
    replicationInstance: option<replicationInstance>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "ModifyReplicationInstanceCommand"
  let make = (
    ~replicationInstanceArn,
    ~replicationInstanceIdentifier=?,
    ~autoMinorVersionUpgrade=?,
    ~allowMajorVersionUpgrade=?,
    ~engineVersion=?,
    ~multiAZ=?,
    ~preferredMaintenanceWindow=?,
    ~vpcSecurityGroupIds=?,
    ~replicationInstanceClass=?,
    ~applyImmediately=?,
    ~allocatedStorage=?,
    (),
  ) =>
    new({
      replicationInstanceIdentifier: replicationInstanceIdentifier,
      autoMinorVersionUpgrade: autoMinorVersionUpgrade,
      allowMajorVersionUpgrade: allowMajorVersionUpgrade,
      engineVersion: engineVersion,
      multiAZ: multiAZ,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      replicationInstanceClass: replicationInstanceClass,
      applyImmediately: applyImmediately,
      allocatedStorage: allocatedStorage,
      replicationInstanceArn: replicationInstanceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReplicationSubnetGroups = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token called a marker is included
         in the response so that the remaining results can be retrieved. </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>Filters applied to replication subnet groups.</p>
         <p>Valid filter names: replication-subnet-group-id</p>")
    @as("Filters")
    filters: option<filterList>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>A description of the replication subnet groups.</p>")
    @as("ReplicationSubnetGroups")
    replicationSubnetGroups: option<replicationSubnetGroups>,
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "DescribeReplicationSubnetGroupsCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteReplicationInstance = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replication instance to be deleted.</p>")
    @as("ReplicationInstanceArn")
    replicationInstanceArn: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The replication instance that was deleted.</p>") @as("ReplicationInstance")
    replicationInstance: option<replicationInstance>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "DeleteReplicationInstanceCommand"
  let make = (~replicationInstanceArn, ()) => new({replicationInstanceArn: replicationInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateReplicationInstance = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A friendly name for the resource identifier at the end of the <code>EndpointArn</code>
         response parameter that is returned in the created <code>Endpoint</code> object. The value
         for this parameter can have up to 31 characters. It can contain only ASCII letters, digits,
         and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens,
         and can only begin with a letter, such as <code>Example-App-ARN1</code>. For example, this
         value might result in the <code>EndpointArn</code> value
         <code>arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1</code>. If you don't
         specify a <code>ResourceIdentifier</code> value, DMS generates a default identifier
         value for the end of <code>EndpointArn</code>.</p>")
    @as("ResourceIdentifier")
    resourceIdentifier: option<string_>,
    @ocaml.doc("<p>A list of custom DNS name servers supported for the replication instance to access your
         on-premise source or target database. This list overrides the default name servers
         supported by the replication instance. You can specify a comma-separated list of internet
         addresses for up to four on-premise DNS name servers. For example:
            <code>\"1.1.1.1,2.2.2.2,3.3.3.3,4.4.4.4\"</code>
         </p>")
    @as("DnsNameServers")
    dnsNameServers: option<string_>,
    @ocaml.doc("<p> Specifies the accessibility options for the replication instance. A value of
            <code>true</code> represents an instance with a public IP address. A value of
            <code>false</code> represents an instance with a private IP address. The default value
         is <code>true</code>. </p>")
    @as("PubliclyAccessible")
    publiclyAccessible: option<booleanOptional>,
    @ocaml.doc("<p>An KMS key identifier that is used to encrypt the data on the replication
           instance.</p>
         <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then
           DMS uses your default encryption key.</p>
         <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a
         different default encryption key for each Amazon Web Services Region.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>One or more tags to be assigned to the replication instance.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A value that indicates whether minor engine upgrades are applied automatically to the
         replication instance during the maintenance window. This parameter defaults to
            <code>true</code>.</p>
         <p>Default: <code>true</code>
         </p>")
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>The engine version number of the replication instance.</p>
         <p>If an engine version number is not specified when a replication 
         instance is created, the default is the latest engine version available.</p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the
            <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to
            <code>true</code>. </p>")
    @as("MultiAZ")
    multiAZ: option<booleanOptional>,
    @ocaml.doc("<p>The weekly time range during which system maintenance can occur, in Universal
         Coordinated Time (UTC).</p>
         <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
         </p>
         <p>Default: A 30-minute window selected at random from an 8-hour block of time per Amazon Web Services Region,
          occurring on a random day of the week.</p>
         <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
         <p>Constraints: Minimum 30-minute window.</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>A subnet group to associate with the replication instance.</p>")
    @as("ReplicationSubnetGroupIdentifier")
    replicationSubnetGroupIdentifier: option<string_>,
    @ocaml.doc("<p>The Availability Zone where the replication instance will be created. The default
         value is a random, system-chosen Availability Zone in the endpoint's Amazon Web Services Region, for
         example: <code>us-east-1d</code>
         </p>")
    @as("AvailabilityZone")
    availabilityZone: option<string_>,
    @ocaml.doc("<p> Specifies the VPC security group to be used with the replication instance. The VPC
         security group must work with the VPC containing the replication instance. </p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>The compute and memory capacity of the replication instance as defined for the specified
         replication instance class. For example to specify the instance class dms.c4.large, set this parameter to <code>\"dms.c4.large\"</code>.</p>
         <p>For more information on the settings and capacities for the available replication instance classes, see 
         <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth\">
            Selecting the right DMS replication instance for your migration</a>.
      </p>")
    @as("ReplicationInstanceClass")
    replicationInstanceClass: string_,
    @ocaml.doc("<p>The amount of storage (in gigabytes) to be initially allocated for the replication
         instance.</p>")
    @as("AllocatedStorage")
    allocatedStorage: option<integerOptional>,
    @ocaml.doc("<p>The replication instance identifier. This parameter is stored as a lowercase
         string.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain 1-63 alphanumeric characters or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
         <p>Example: <code>myrepinstance</code>
         </p>")
    @as("ReplicationInstanceIdentifier")
    replicationInstanceIdentifier: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The replication instance that was created.</p>") @as("ReplicationInstance")
    replicationInstance: option<replicationInstance>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "CreateReplicationInstanceCommand"
  let make = (
    ~replicationInstanceClass,
    ~replicationInstanceIdentifier,
    ~resourceIdentifier=?,
    ~dnsNameServers=?,
    ~publiclyAccessible=?,
    ~kmsKeyId=?,
    ~tags=?,
    ~autoMinorVersionUpgrade=?,
    ~engineVersion=?,
    ~multiAZ=?,
    ~preferredMaintenanceWindow=?,
    ~replicationSubnetGroupIdentifier=?,
    ~availabilityZone=?,
    ~vpcSecurityGroupIds=?,
    ~allocatedStorage=?,
    (),
  ) =>
    new({
      resourceIdentifier: resourceIdentifier,
      dnsNameServers: dnsNameServers,
      publiclyAccessible: publiclyAccessible,
      kmsKeyId: kmsKeyId,
      tags: tags,
      autoMinorVersionUpgrade: autoMinorVersionUpgrade,
      engineVersion: engineVersion,
      multiAZ: multiAZ,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      replicationSubnetGroupIdentifier: replicationSubnetGroupIdentifier,
      availabilityZone: availabilityZone,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      replicationInstanceClass: replicationInstanceClass,
      allocatedStorage: allocatedStorage,
      replicationInstanceIdentifier: replicationInstanceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReplicationInstances = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token called a marker is included
         in the response so that the remaining results can be retrieved. </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>Filters applied to replication instances.</p>
         <p>Valid filter names: replication-instance-arn | replication-instance-id |
         replication-instance-class | engine-version</p>")
    @as("Filters")
    filters: option<filterList>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The replication instances described.</p>") @as("ReplicationInstances")
    replicationInstances: option<replicationInstanceList>,
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
         specified, the response includes only records beyond the marker, up to the value specified
         by <code>MaxRecords</code>. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-dms") @new
  external new: request => t = "DescribeReplicationInstancesCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
