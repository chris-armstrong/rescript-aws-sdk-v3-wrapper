type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-glacier") @new
external createClient: unit => awsServiceClient = "GlacierClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type string_ = string
type long = float
type httpstatus = int
type boolean_ = bool
type type_ = [
  | @as("Group") #Group
  | @as("CanonicalUser") #CanonicalUser
  | @as("AmazonCustomerByEmail") #AmazonCustomerByEmail
]
type tagValue = string
type tagKey = string
type stream = NodeJs.Buffer.t
type storageClass = [
  | @as("STANDARD_IA") #STANDARD_IA
  | @as("REDUCED_REDUNDANCY") #REDUCED_REDUNDANCY
  | @as("STANDARD") #STANDARD
]
type statusCode = [
  | @as("Failed") #Failed
  | @as("Succeeded") #Succeeded
  | @as("InProgress") #InProgress
]
type size = float
type quoteFields = [@as("ASNEEDED") #ASNEEDED | @as("ALWAYS") #ALWAYS]
type permission = [
  | @as("READ_ACP") #READ_ACP
  | @as("READ") #READ
  | @as("WRITE_ACP") #WRITE_ACP
  | @as("WRITE") #WRITE
  | @as("FULL_CONTROL") #FULL_CONTROL
]
type nullableLong = float
type fileHeaderInfo = [@as("NONE") #NONE | @as("IGNORE") #IGNORE | @as("USE") #USE]
type expressionType = [@as("SQL") #SQL]
type encryptionType = [@as("AES256") #AES256 | @as("aws:kms") #Aws_Kms]
type dateTime = string
type cannedACL = [
  | @as("bucket-owner-full-control") #Bucket_Owner_Full_Control
  | @as("bucket-owner-read") #Bucket_Owner_Read
  | @as("authenticated-read") #Authenticated_Read
  | @as("aws-exec-read") #Aws_Exec_Read
  | @as("public-read-write") #Public_Read_Write
  | @as("public-read") #Public_Read
  | @as("private") #Private
]
type actionCode = [
  | @as("Select") #Select
  | @as("InventoryRetrieval") #InventoryRetrieval
  | @as("ArchiveRetrieval") #ArchiveRetrieval
]
type hashmap = Js.Dict.t<string_>
@ocaml.doc("<p>Contains the vault lock policy.</p>")
type vaultLockPolicy = {
  @ocaml.doc("<p>The vault lock policy.</p>") @as("Policy") policy: option<string_>,
}
@ocaml.doc("<p>Contains the vault access policy.</p>")
type vaultAccessPolicy = {
  @ocaml.doc("<p>The vault access policy.</p>") @as("Policy") policy: option<string_>,
}
@ocaml.doc("<p>A list of in-progress multipart uploads for a vault.</p>")
type uploadListElement = {
  @ocaml.doc("<p>The UTC time at which the multipart upload was initiated.</p>") @as("CreationDate")
  creationDate: option<string_>,
  @ocaml.doc("<p>The part size, in bytes, specified in the Initiate Multipart Upload request. This is
         the size of all the parts in the upload except the last part, which may be smaller than
         this size.</p>")
  @as("PartSizeInBytes")
  partSizeInBytes: option<long>,
  @ocaml.doc("<p>The description of the archive that was specified in the Initiate Multipart Upload
         request.</p>")
  @as("ArchiveDescription")
  archiveDescription: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the vault that contains the archive.</p>")
  @as("VaultARN")
  vaultARN: option<string_>,
  @ocaml.doc("<p>The ID of a multipart upload.</p>") @as("MultipartUploadId")
  multipartUploadId: option<string_>,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<string_>
@ocaml.doc("<p>The definition for a provisioned capacity unit.</p>")
type provisionedCapacityDescription = {
  @ocaml.doc(
    "<p>The date that the provisioned capacity unit expires, in Universal Coordinated Time (UTC).</p>"
  )
  @as("ExpirationDate")
  expirationDate: option<string_>,
  @ocaml.doc(
    "<p>The date that the provisioned capacity unit was purchased, in Universal Coordinated Time (UTC).</p>"
  )
  @as("StartDate")
  startDate: option<string_>,
  @ocaml.doc("<p>The ID that identifies the provisioned capacity unit.</p>") @as("CapacityId")
  capacityId: option<string_>,
}
@ocaml.doc("<p>A list of the part sizes of the multipart upload.</p>")
type partListElement = {
  @ocaml.doc("<p>The SHA256 tree hash value that Amazon S3 Glacier calculated for the part. This field is
         never <code>null</code>.</p>")
  @as("SHA256TreeHash")
  sha256TreeHash: option<string_>,
  @ocaml.doc("<p>The byte range of a part, inclusive of the upper value of the range.</p>")
  @as("RangeInBytes")
  rangeInBytes: option<string_>,
}
type notificationEventList = array<string_>
@ocaml.doc("<p>Provides options for specifying a range inventory retrieval job.</p>")
type inventoryRetrievalJobInput = {
  @ocaml.doc("<p>An opaque string that represents where to continue pagination of the vault inventory
         retrieval results. You use the marker in a new <b>InitiateJob</b>
         request to obtain additional inventory items. If there are no more inventory items, this
         value is <code>null</code>.</p>")
  @as("Marker")
  marker: option<string_>,
  @ocaml.doc("<p>Specifies the maximum number of inventory items returned per vault inventory
         retrieval request. Valid values are greater than or equal to 1.</p>")
  @as("Limit")
  limit: option<string_>,
  @ocaml.doc("<p>The end of the date range in UTC for vault inventory retrieval that includes archives
         created before this date. This value should be a string in the ISO 8601 date format, for
         example <code>2013-03-20T17:03:43Z</code>.</p>")
  @as("EndDate")
  endDate: option<string_>,
  @ocaml.doc("<p>The start of the date range in UTC for vault inventory retrieval that includes
         archives created on or after this date. This value should be a string in the ISO 8601 date
         format, for example <code>2013-03-20T17:03:43Z</code>.</p>")
  @as("StartDate")
  startDate: option<string_>,
}
@ocaml.doc("<p>Describes the options for a range inventory retrieval job.</p>")
type inventoryRetrievalJobDescription = {
  @ocaml.doc("<p>An opaque string that represents where to continue pagination of the vault
            inventory retrieval results. You use the marker in a new <b>InitiateJob</b> request to obtain additional inventory items. If there are
            no more inventory items, this value is <code>null</code>. For more information, see
                <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html#api-initiate-job-post-vault-inventory-list-filtering\"> Range Inventory Retrieval</a>.</p>")
  @as("Marker")
  marker: option<string_>,
  @ocaml.doc("<p>The maximum number of inventory items returned per vault inventory retrieval
            request. This limit is set when initiating the job with the a <b>InitiateJob</b> request. </p>")
  @as("Limit")
  limit: option<string_>,
  @ocaml.doc("<p>The end of the date range in UTC for vault inventory retrieval that includes
            archives created before this date. This value should be a string in the ISO 8601 date
            format, for example <code>2013-03-20T17:03:43Z</code>.</p>")
  @as("EndDate")
  endDate: option<dateTime>,
  @ocaml.doc("<p>The start of the date range in Universal Coordinated Time (UTC) for vault inventory
            retrieval that includes archives created on or after this date. This value should be a
            string in the ISO 8601 date format, for example
            <code>2013-03-20T17:03:43Z</code>.</p>")
  @as("StartDate")
  startDate: option<dateTime>,
  @ocaml.doc("<p>The output format for the vault inventory list, which is set by the <b>InitiateJob</b> request when initiating a job to retrieve a vault
            inventory. Valid values are <code>CSV</code> and <code>JSON</code>.</p>")
  @as("Format")
  format: option<string_>,
}
@ocaml.doc("<p>Contains information about the grantee.</p>")
type grantee = {
  @ocaml.doc("<p>Email address of the grantee.</p>") @as("EmailAddress")
  emailAddress: option<string_>,
  @ocaml.doc("<p>The canonical user ID of the grantee.</p>") @as("ID") id: option<string_>,
  @ocaml.doc("<p>URI of the grantee group.</p>") @as("URI") uri: option<string_>,
  @ocaml.doc("<p>Screen name of the grantee.</p>") @as("DisplayName") displayName: option<string_>,
  @ocaml.doc("<p>Type of grantee</p>") @as("Type") type_: type_,
}
@ocaml.doc(
  "<p>Contains information about the encryption used to store the job results in Amazon S3. </p>"
)
type encryption = {
  @ocaml.doc("<p>Optional. If the encryption type is <code>aws:kms</code>, you can use this value to
            specify the encryption context for the job results.</p>")
  @as("KMSContext")
  kmscontext: option<string_>,
  @ocaml.doc("<p>The AWS KMS key ID to use for object encryption. All GET and PUT requests for an
            object protected by AWS KMS fail if not made by using Secure Sockets Layer (SSL) or
            Signature Version 4. </p>")
  @as("KMSKeyId")
  kmskeyId: option<string_>,
  @ocaml.doc("<p>The server-side encryption algorithm used when storing job results in Amazon S3, for
            example <code>AES256</code> or <code>aws:kms</code>.</p>")
  @as("EncryptionType")
  encryptionType: option<encryptionType>,
}
@ocaml.doc("<p>Contains the Amazon S3 Glacier response to your request.</p>")
type describeVaultOutput = {
  @ocaml.doc("<p>Total size, in bytes, of the archives in the vault as of the last inventory date.
         This field will return null if an inventory has not yet run on the vault, for example if
         you just created the vault.</p>")
  @as("SizeInBytes")
  sizeInBytes: option<long>,
  @ocaml.doc("<p>The number of archives in the vault as of the last inventory date. This field will
         return <code>null</code> if an inventory has not yet run on the vault, for example if you
         just created the vault.</p>")
  @as("NumberOfArchives")
  numberOfArchives: option<long>,
  @ocaml.doc("<p>The Universal Coordinated Time (UTC) date when Amazon S3 Glacier completed the last
         vault inventory.  This value should be a string in the ISO 8601 date format, for example
            <code>2012-03-20T17:03:43.221Z</code>.</p>")
  @as("LastInventoryDate")
  lastInventoryDate: option<string_>,
  @ocaml.doc("<p>The Universal Coordinated Time (UTC) date when the vault was created. This value
         should be a string in the ISO 8601 date format, for example
            <code>2012-03-20T17:03:43.221Z</code>.</p>")
  @as("CreationDate")
  creationDate: option<string_>,
  @ocaml.doc("<p>The name of the vault.</p>") @as("VaultName") vaultName: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the vault.</p>") @as("VaultARN")
  vaultARN: option<string_>,
}
@ocaml.doc("<p>Data retrieval policy rule.</p>")
type dataRetrievalRule = {
  @ocaml.doc("<p>The maximum number of bytes that can be retrieved in an hour.</p>
         <p>This field is required only if the value of the Strategy field is
            <code>BytesPerHour</code>. Your PUT operation will be rejected if the Strategy field is
         not set to <code>BytesPerHour</code> and you set this field.</p>")
  @as("BytesPerHour")
  bytesPerHour: option<nullableLong>,
  @ocaml.doc("<p>The type of data retrieval policy to set.</p>
         <p>Valid values: BytesPerHour|FreeTier|None</p>")
  @as("Strategy")
  strategy: option<string_>,
}
@ocaml.doc("<p>Contains information about the comma-separated value (CSV) file that the job results
            are stored in.</p>")
type csvoutput = {
  @ocaml.doc("<p>A value used as an escape character where the field delimiter is part of the
            value.</p>")
  @as("QuoteCharacter")
  quoteCharacter: option<string_>,
  @ocaml.doc("<p>A value used to separate individual fields from each other within a record.</p>")
  @as("FieldDelimiter")
  fieldDelimiter: option<string_>,
  @ocaml.doc("<p>A value used to separate individual records from each other.</p>")
  @as("RecordDelimiter")
  recordDelimiter: option<string_>,
  @ocaml.doc("<p>A single character used for escaping the quotation-mark character inside an already
            escaped value.</p>")
  @as("QuoteEscapeCharacter")
  quoteEscapeCharacter: option<string_>,
  @ocaml.doc("<p>A value that indicates whether all output fields should be contained within quotation
            marks.</p>")
  @as("QuoteFields")
  quoteFields: option<quoteFields>,
}
@ocaml.doc("<p>Contains information about the comma-separated value (CSV) file to select from.</p>")
type csvinput = {
  @ocaml.doc("<p>A value used as an escape character where the field delimiter is part of the
            value.</p>")
  @as("QuoteCharacter")
  quoteCharacter: option<string_>,
  @ocaml.doc("<p>A value used to separate individual fields from each other within a record.</p>")
  @as("FieldDelimiter")
  fieldDelimiter: option<string_>,
  @ocaml.doc("<p>A value used to separate individual records from each other.</p>")
  @as("RecordDelimiter")
  recordDelimiter: option<string_>,
  @ocaml.doc("<p>A single character used for escaping the quotation-mark character inside an already
            escaped value.</p>")
  @as("QuoteEscapeCharacter")
  quoteEscapeCharacter: option<string_>,
  @ocaml.doc("<p>A single character used to indicate that a row should be ignored when the character is
            present at the start of that row.</p>")
  @as("Comments")
  comments: option<string_>,
  @ocaml.doc("<p>Describes the first line of input. Valid values are <code>None</code>,
                <code>Ignore</code>, and <code>Use</code>.</p>")
  @as("FileHeaderInfo")
  fileHeaderInfo: option<fileHeaderInfo>,
}
@ocaml.doc("<p>Represents a vault's notification configuration.</p>")
type vaultNotificationConfig = {
  @ocaml.doc("<p>A list of one or more events for which Amazon S3 Glacier will send a notification to the
         specified Amazon SNS topic.</p>")
  @as("Events")
  events: option<notificationEventList>,
  @ocaml.doc("<p>The Amazon Simple Notification Service (Amazon SNS) topic Amazon Resource Name
         (ARN).</p>")
  @as("SNSTopic")
  snstopic: option<string_>,
}
type vaultList = array<describeVaultOutput>
type uploadsList = array<uploadListElement>
type provisionedCapacityList = array<provisionedCapacityDescription>
type partList = array<partListElement>
@ocaml.doc("<p>Describes how the select output is serialized.</p>")
type outputSerialization = {
  @ocaml.doc("<p>Describes the serialization of CSV-encoded query results.</p>")
  csv: option<csvoutput>,
}
@ocaml.doc("<p>Describes how the archive is serialized.</p>")
type inputSerialization = {
  @ocaml.doc("<p>Describes the serialization of a CSV-encoded object.</p>") csv: option<csvinput>,
}
@ocaml.doc("<p>Contains information about a grant.</p>")
type grant = {
  @ocaml.doc("<p>Specifies the permission given to the grantee. </p>") @as("Permission")
  permission: option<permission>,
  @ocaml.doc("<p>The grantee.</p>") @as("Grantee") grantee: option<grantee>,
}
type dataRetrievalRulesList = array<dataRetrievalRule>
@ocaml.doc("<p>Contains information about the parameters used for a select.</p>")
type selectParameters = {
  @ocaml.doc("<p>Describes how the results of the select job are serialized.</p>")
  @as("OutputSerialization")
  outputSerialization: option<outputSerialization>,
  @ocaml.doc("<p>The expression that is used to select the object.</p>") @as("Expression")
  expression: option<string_>,
  @ocaml.doc("<p>The type of the provided expression, for example <code>SQL</code>.</p>")
  @as("ExpressionType")
  expressionType: option<expressionType>,
  @ocaml.doc("<p>Describes the serialization format of the object.</p>") @as("InputSerialization")
  inputSerialization: option<inputSerialization>,
}
@ocaml.doc("<p>Data retrieval policy.</p>")
type dataRetrievalPolicy = {
  @ocaml.doc("<p>The policy rule. Although this is a list type, currently there must be only one rule,
         which contains a Strategy field and optionally a BytesPerHour field.</p>")
  @as("Rules")
  rules: option<dataRetrievalRulesList>,
}
type accessControlPolicyList = array<grant>
@ocaml.doc(
  "<p>Contains information about the location in Amazon S3 where the select job results are stored.</p>"
)
type s3Location = {
  @ocaml.doc("<p>The storage class used to store the job results.</p>") @as("StorageClass")
  storageClass: option<storageClass>,
  @ocaml.doc("<p>A map of metadata to store with the job results in Amazon S3.</p>")
  @as("UserMetadata")
  userMetadata: option<hashmap>,
  @ocaml.doc("<p>The tag-set that is applied to the job results.</p>") @as("Tagging")
  tagging: option<hashmap>,
  @ocaml.doc("<p>A list of grants that control access to the staged results.</p>")
  @as("AccessControlList")
  accessControlList: option<accessControlPolicyList>,
  @ocaml.doc("<p>The canned access control list (ACL) to apply to the job results.</p>")
  @as("CannedACL")
  cannedACL: option<cannedACL>,
  @ocaml.doc(
    "<p>Contains information about the encryption used to store the job results in Amazon S3.</p>"
  )
  @as("Encryption")
  encryption: option<encryption>,
  @ocaml.doc("<p>The prefix that is prepended to the results for this request.</p>") @as("Prefix")
  prefix: option<string_>,
  @ocaml.doc("<p>The name of the Amazon S3 bucket where the job results are stored.</p>")
  @as("BucketName")
  bucketName: option<string_>,
}
@ocaml.doc(
  "<p>Contains information about the location where the select job results are stored.</p>"
)
type outputLocation = {
  @ocaml.doc("<p>Describes an S3 location that will receive the results of the job request.</p>")
  @as("S3")
  s3: option<s3Location>,
}
@ocaml.doc("<p>Provides options for defining a job.</p>")
type jobParameters = {
  @ocaml.doc(
    "<p>Contains information about the location where the select job results are stored.</p>"
  )
  @as("OutputLocation")
  outputLocation: option<outputLocation>,
  @ocaml.doc("<p>Contains the parameters that define a job.</p>") @as("SelectParameters")
  selectParameters: option<selectParameters>,
  @ocaml.doc("<p>Input parameters used for range inventory retrieval.</p>")
  @as("InventoryRetrievalParameters")
  inventoryRetrievalParameters: option<inventoryRetrievalJobInput>,
  @ocaml.doc("<p>The tier to use for a select or an archive retrieval job. Valid values are
            <code>Expedited</code>, <code>Standard</code>, or <code>Bulk</code>.
            <code>Standard</code> is the default.</p>")
  @as("Tier")
  tier: option<string_>,
  @ocaml.doc("<p>The byte range to retrieve for an archive retrieval. in the form
            \"<i>StartByteValue</i>-<i>EndByteValue</i>\" If not
         specified, the whole archive is retrieved. If specified, the byte range must be megabyte
         (1024*1024) aligned which means that <i>StartByteValue</i> must be divisible
         by 1 MB and <i>EndByteValue</i> plus 1 must be divisible by 1 MB or be the
         end of the archive specified as the archive byte size value minus 1. If RetrievalByteRange
         is not megabyte aligned, this operation returns a 400 response. </p>
         <p>An error occurs if you specify this field for an inventory retrieval job
         request.</p>")
  @as("RetrievalByteRange")
  retrievalByteRange: option<string_>,
  @ocaml.doc("<p>The Amazon SNS topic ARN to which Amazon S3 Glacier sends a notification when the job is
         completed and the output is ready for you to download. The specified topic publishes the
         notification to its subscribers. The SNS topic must exist.</p>")
  @as("SNSTopic")
  snstopic: option<string_>,
  @ocaml.doc("<p>The optional description for the job. The description must be less than or equal to
         1,024 bytes. The allowable characters are 7-bit ASCII without control codes-specifically,
         ASCII values 32-126 decimal or 0x20-0x7E hexadecimal.</p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The ID of the archive that you want to retrieve. This field is required only if
            <code>Type</code> is set to <code>select</code> or <code>archive-retrieval</code>code>. 
         An error occurs if you specify this
         request parameter for an inventory retrieval job request. </p>")
  @as("ArchiveId")
  archiveId: option<string_>,
  @ocaml.doc("<p>The job type. You can initiate a job to perform a select query on an archive, 
         retrieve an archive, or get an inventory of a vault. 
         Valid values are \"select\", \"archive-retrieval\" and \"inventory-retrieval\".</p>")
  @as("Type")
  type_: option<string_>,
  @ocaml.doc("<p>When initiating a job to retrieve a vault inventory, you can optionally add this
         parameter to your request to specify the output format. If you are initiating an inventory
         job and do not specify a Format field, JSON is the default format. Valid values are \"CSV\"
         and \"JSON\".</p>")
  @as("Format")
  format: option<string_>,
}
@ocaml.doc("<p>Contains the description of an Amazon S3 Glacier job.</p>")
type glacierJobDescription = {
  @ocaml.doc("<p>Contains the location where the data from the select job is stored.</p>")
  @as("OutputLocation")
  outputLocation: option<outputLocation>,
  @ocaml.doc("<p>Contains the parameters used for a select.</p>") @as("SelectParameters")
  selectParameters: option<selectParameters>,
  @ocaml.doc("<p>Contains the job output location.</p>") @as("JobOutputPath")
  jobOutputPath: option<string_>,
  @ocaml.doc("<p>Parameters used for range inventory retrieval.</p>")
  @as("InventoryRetrievalParameters")
  inventoryRetrievalParameters: option<inventoryRetrievalJobDescription>,
  @ocaml.doc("<p>The tier to use for a select or an archive retrieval. Valid values are
                <code>Expedited</code>, <code>Standard</code>, or <code>Bulk</code>.
                <code>Standard</code> is the default.</p>")
  @as("Tier")
  tier: option<string_>,
  @ocaml.doc("<p>The retrieved byte range for archive retrieval jobs in the form
                <i>StartByteValue</i>-<i>EndByteValue</i>. If no range
            was specified in the archive retrieval, then the whole archive is retrieved. In this
            case, <i>StartByteValue</i> equals 0 and <i>EndByteValue</i>
            equals the size of the archive minus 1. For inventory retrieval or select jobs, this
            field is null. </p>")
  @as("RetrievalByteRange")
  retrievalByteRange: option<string_>,
  @ocaml.doc("<p>The SHA256 tree hash of the entire archive for an archive retrieval. For inventory
            retrieval or select jobs, this field is null.</p>")
  @as("ArchiveSHA256TreeHash")
  archiveSHA256TreeHash: option<string_>,
  @ocaml.doc("<p>For an archive retrieval job, this value is the checksum of the archive. Otherwise,
            this value is null.</p>
        <p>The SHA256 tree hash value for the requested range of an archive. If the <b>InitiateJob</b> request for an archive specified a tree-hash
            aligned range, then this field returns a value.</p>
        <p>If the whole archive is retrieved, this value is the same as the
            ArchiveSHA256TreeHash value.</p>
        <p>This field is null for the following:</p>
        <ul>
            <li>
                <p>Archive retrieval jobs that specify a range that is not tree-hash
                    aligned</p>
            </li>
         </ul>
        <ul>
            <li>
                <p>Archival jobs that specify a range that is equal to the whole archive, when
                    the job status is <code>InProgress</code>
               </p>
            </li>
         </ul>
        <ul>
            <li>
                <p>Inventory jobs</p>
            </li>
            <li>
                <p>Select jobs</p>
            </li>
         </ul>")
  @as("SHA256TreeHash")
  sha256TreeHash: option<string_>,
  @ocaml.doc("<p>The UTC time that the job request completed. While the job is in progress, the
            value is null.</p>")
  @as("CompletionDate")
  completionDate: option<string_>,
  @ocaml.doc("<p>An Amazon SNS topic that receives notification.</p>") @as("SNSTopic")
  snstopic: option<string_>,
  @ocaml.doc("<p>For an inventory retrieval job, this value is the size in bytes of the inventory
            requested for download. For an archive retrieval or select job, this value is
            null.</p>")
  @as("InventorySizeInBytes")
  inventorySizeInBytes: option<size>,
  @ocaml.doc("<p>For an archive retrieval job, this value is the size in bytes of the archive being
            requested for download. For an inventory retrieval or select job, this value is
            null.</p>")
  @as("ArchiveSizeInBytes")
  archiveSizeInBytes: option<size>,
  @ocaml.doc("<p>A friendly message that describes the job status.</p>") @as("StatusMessage")
  statusMessage: option<string_>,
  @ocaml.doc("<p>The status code can be <code>InProgress</code>, <code>Succeeded</code>, or
                <code>Failed</code>, and indicates the status of the job.</p>")
  @as("StatusCode")
  statusCode: option<statusCode>,
  @ocaml.doc("<p>The job status. When a job is completed, you get the job's output using Get Job
            Output (GET output).</p>")
  @as("Completed")
  completed: option<boolean_>,
  @ocaml.doc("<p>The UTC date when the job was created. This value is a string representation of ISO
            8601 date format, for example <code>\"2012-03-20T17:03:43.221Z\"</code>.</p>")
  @as("CreationDate")
  creationDate: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the vault from which an archive retrieval was
            requested.</p>")
  @as("VaultARN")
  vaultARN: option<string_>,
  @ocaml.doc("<p>The archive ID requested for a select job or archive retrieval. Otherwise, this
            field is null.</p>")
  @as("ArchiveId")
  archiveId: option<string_>,
  @ocaml.doc("<p>The job type. This value is either <code>ArchiveRetrieval</code>,
                <code>InventoryRetrieval</code>, or
            <code>Select</code>. </p>")
  @as("Action")
  action: option<actionCode>,
  @ocaml.doc("<p>The job description provided when initiating the job.</p>") @as("JobDescription")
  jobDescription: option<string_>,
  @ocaml.doc("<p>An opaque string that identifies an Amazon S3 Glacier job.</p>") @as("JobId")
  jobId: option<string_>,
}
type jobList = array<glacierJobDescription>
@ocaml.doc("<p> Amazon S3 Glacier (Glacier) is a storage solution for \"cold data.\"</p>

         <p>Glacier is an extremely low-cost storage service that provides secure,
         durable, and easy-to-use storage for data backup and archival. With Glacier,
         customers can store their data cost effectively for months, years, or decades. 
         Glacier also enables customers to offload the administrative burdens of operating and
         scaling storage to AWS, so they don't have to worry about capacity planning, hardware
         provisioning, data replication, hardware failure and recovery, or time-consuming hardware
         migrations.</p>

         <p>Glacier is a great storage choice when low storage cost is paramount and your
         data is rarely retrieved. If your
         application requires fast or frequent access to your data, consider using Amazon S3. For
         more information, see <a href=\"http://aws.amazon.com/s3/\">Amazon Simple Storage Service
            (Amazon S3)</a>.</p>

         <p>You can store any kind of data in any format. There is no maximum limit on the total
         amount of data you can store in Glacier.</p>

         <p>If you are a first-time user of Glacier, we recommend that you begin by
         reading the following sections in the <i>Amazon S3 Glacier Developer
         Guide</i>:</p>
         <ul>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/introduction.html\">What is
                  Amazon S3 Glacier</a> - This section of the Developer Guide describes the
               underlying data model, the operations it supports, and the AWS SDKs that you can use
               to interact with the service.</p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/amazon-glacier-getting-started.html\">Getting Started
                  with Amazon S3 Glacier</a> - The Getting Started section walks you through the
               process of creating a vault, uploading archives, creating jobs to download archives,
               retrieving the job output, and deleting archives.</p>
            </li>
         </ul>")
module UploadMultipartPart = {
  type t
  @ocaml.doc("<p>Provides options to upload a part of an archive in a multipart upload
         operation.</p>")
  type request = {
    @ocaml.doc("<p>The data to upload.</p>") body: option<stream>,
    @ocaml.doc("<p>Identifies the range of bytes in the assembled archive that will be uploaded in this
         part. Amazon S3 Glacier uses this information to assemble the archive in the proper sequence.
         The format of this header follows RFC 2616. An example header is Content-Range:bytes
         0-4194303/*.</p>")
    range: option<string_>,
    @ocaml.doc("<p>The SHA256 tree hash of the data being uploaded.</p>") checksum: option<string_>,
    @ocaml.doc("<p>The upload ID of the multipart upload.</p>") uploadId: string_,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID. </p>")
    accountId: string_,
  }
  @ocaml.doc("<p>Contains the Amazon S3 Glacier response to your request.</p>")
  type response = {
    @ocaml.doc("<p>The SHA256 tree hash that Amazon S3 Glacier computed for the uploaded part.</p>")
    checksum: option<string_>,
  }
  @module("@aws-sdk/client-glacier") @new external new: request => t = "UploadMultipartPartCommand"
  let make = (~uploadId, ~vaultName, ~accountId, ~body=?, ~range=?, ~checksum=?, ()) =>
    new({body, range, checksum, uploadId, vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UploadArchive = {
  type t
  @ocaml.doc("<p>Provides options to add an archive to a vault.</p>")
  type request = {
    @ocaml.doc("<p>The data to upload.</p>") body: option<stream>,
    @ocaml.doc("<p>The SHA256 tree hash of the data being uploaded.</p>") checksum: option<string_>,
    @ocaml.doc("<p>The optional description of the archive you are uploading.</p>")
    archiveDescription: option<string_>,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID. </p>")
    accountId: string_,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
  }
  @ocaml.doc("<p>Contains the Amazon S3 Glacier response to your request.</p>
         <p>For information about the underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html\">Upload Archive</a>. For
         conceptual information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html\">Working with Archives in
            Amazon S3 Glacier</a>.</p>")
  type response = {
    @ocaml.doc("<p>The ID of the archive. This value is also included as part of the location.</p>")
    archiveId: option<string_>,
    @ocaml.doc("<p>The checksum of the archive computed by Amazon S3 Glacier.</p>")
    checksum: option<string_>,
    @ocaml.doc("<p>The relative URI path of the newly added archive resource.</p>")
    location: option<string_>,
  }
  @module("@aws-sdk/client-glacier") @new external new: request => t = "UploadArchiveCommand"
  let make = (~accountId, ~vaultName, ~body=?, ~checksum=?, ~archiveDescription=?, ()) =>
    new({body, checksum, archiveDescription, accountId, vaultName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PurchaseProvisionedCapacity = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS account ID of the account that owns the vault. You can either specify an AWS
         account ID or optionally a single '-' (hyphen), in which case Amazon S3 Glacier uses the AWS
         account ID associated with the credentials used to sign the request. If you use an account
         ID, don't include any hyphens ('-') in the ID. </p>")
    accountId: string_,
  }
  type response = {
    @ocaml.doc("<p>The ID that identifies the provisioned capacity unit.</p>")
    capacityId: option<string_>,
  }
  @module("@aws-sdk/client-glacier") @new
  external new: request => t = "PurchaseProvisionedCapacityCommand"
  let make = (~accountId, ()) => new({accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module InitiateMultipartUpload = {
  type t
  @ocaml.doc("<p>Provides options for initiating a multipart upload to an Amazon S3 Glacier
         vault.</p>")
  type request = {
    @ocaml.doc("<p>The size of each part except the last, in bytes. The last part can be smaller than
         this part size.</p>")
    partSize: option<string_>,
    @ocaml.doc("<p>The archive description that you are uploading in parts.</p>
         <p>The part size must be a megabyte (1024 KB) multiplied by a power of 2, for example
         1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The minimum
         allowable part size is 1 MB, and the maximum is 4 GB (4096 MB).</p>")
    archiveDescription: option<string_>,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID. </p>")
    accountId: string_,
  }
  @ocaml.doc("<p>The Amazon S3 Glacier response to your request.</p>")
  type response = {
    @ocaml.doc("<p>The ID of the multipart upload. This value is also included as part of the
         location.</p>")
    uploadId: option<string_>,
    @ocaml.doc("<p>The relative URI path of the multipart upload ID Amazon S3 Glacier created.</p>")
    location: option<string_>,
  }
  @module("@aws-sdk/client-glacier") @new
  external new: request => t = "InitiateMultipartUploadCommand"
  let make = (~vaultName, ~accountId, ~partSize=?, ~archiveDescription=?, ()) =>
    new({partSize, archiveDescription, vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetVaultLock = {
  type t
  @ocaml.doc("<p>The input values for <code>GetVaultLock</code>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID.</p>")
    accountId: string_,
  }
  @ocaml.doc("<p>Contains the Amazon S3 Glacier response to your request.</p>")
  type response = {
    @ocaml.doc("<p>The UTC date and time at which the vault lock was put into the
            <code>InProgress</code> state.</p>")
    @as("CreationDate")
    creationDate: option<string_>,
    @ocaml.doc("<p>The UTC date and time at which the lock ID expires. This value can be
            <code>null</code> if the vault lock is in a <code>Locked</code> state.</p>")
    @as("ExpirationDate")
    expirationDate: option<string_>,
    @ocaml.doc("<p>The state of the vault lock. <code>InProgress</code> or
         <code>Locked</code>.</p>")
    @as("State")
    state: option<string_>,
    @ocaml.doc("<p>The vault lock policy as a JSON string, which uses \"\\\" as an escape
         character.</p>")
    @as("Policy")
    policy: option<string_>,
  }
  @module("@aws-sdk/client-glacier") @new external new: request => t = "GetVaultLockCommand"
  let make = (~vaultName, ~accountId, ()) => new({vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetJobOutput = {
  type t
  @ocaml.doc("<p>Provides options for downloading output of an Amazon S3 Glacier job.</p>")
  type request = {
    @ocaml.doc("<p>The range of bytes to retrieve from the output. For example, if you want to download
         the first 1,048,576 bytes, specify the range as <code>bytes=0-1048575</code>. By default, this operation
         downloads the entire output.</p>
      
         <p>If the job output is large, then you can use a range to
         retrieve a portion of the output. This allows you to download the entire output in smaller
         chunks of bytes. For example, suppose you have 1 GB of job output you want to download and
         you decide to download 128 MB chunks of data at a time, which is a total of eight Get Job
         Output requests. You use the following process to download the job output:</p>
     
         <ol>
            <li>
               <p>Download a 128 MB chunk of output by specifying the appropriate byte range.
                  Verify that all 128 MB of data was received.</p>
            </li>
            <li>
               <p>Along with the data, the response includes a SHA256 tree hash of the payload.
                  You compute the checksum of the payload on the client and compare it with the
                  checksum you received in the response to ensure you received all the expected
                  data.</p>
            </li>
            <li>
               <p>Repeat steps 1 and 2 for all the eight 128 MB chunks of output data, each time
                  specifying the appropriate byte range.</p>
            </li>
            <li>
               <p>After downloading all the parts of the job output, you have a list of eight
                  checksum values. Compute the tree hash of these values to find the checksum of the
                  entire output. Using the <a>DescribeJob</a> API, obtain job information of
                  the job that provided you the output. The response includes the checksum of the
                  entire archive stored in Amazon S3 Glacier. You compare this value with the checksum you
                  computed to ensure you have downloaded the entire archive content with no
                  errors.</p>
               <p></p>
            </li>
         </ol>")
    range: option<string_>,
    @ocaml.doc("<p>The job ID whose data is downloaded.</p>") jobId: string_,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID.</p>")
    accountId: string_,
  }
  @ocaml.doc("<p>Contains the Amazon S3 Glacier response to your request.</p>")
  type response = {
    @ocaml.doc("<p>The description of an archive.</p>") archiveDescription: option<string_>,
    @ocaml.doc("<p>The Content-Type depends on whether the job output is an archive or a vault
         inventory. For archive data, the Content-Type is application/octet-stream. For vault
         inventory, if you requested CSV format when you initiated the job, the Content-Type is
         text/csv. Otherwise, by default, vault inventory is returned as JSON, and the Content-Type
         is application/json.</p>")
    contentType: option<string_>,
    @ocaml.doc(
      "<p>Indicates the range units accepted. For more information, see <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html\">RFC2616</a>. </p>"
    )
    acceptRanges: option<string_>,
    @ocaml.doc("<p>The range of bytes returned by Amazon S3 Glacier. If only partial output is downloaded,
         the response provides the range of bytes Amazon S3 Glacier returned. For example, bytes
         0-1048575/8388608 returns the first 1 MB from 8 MB.</p>")
    contentRange: option<string_>,
    @ocaml.doc("<p>The HTTP response code for a job output request. The value depends on whether a range
         was specified in the request.</p>")
    status: option<httpstatus>,
    @ocaml.doc("<p>The checksum of the data in the response. This header is returned only when
         retrieving the output for an archive retrieval job. Furthermore, this header appears only
         under the following conditions:</p>
         <ul>
            <li>
                <p>You get the entire range of the archive.</p>
            </li>
            <li>
               <p>You request a range to return of the archive that starts and ends on a multiple
               of 1 MB. For example, if you have an 3.1 MB archive and you specify a range to return
               that starts at 1 MB and ends at 2 MB, then the x-amz-sha256-tree-hash is returned as
               a response header.</p>
            </li>
            <li>
               <p>You request a range of the archive to return that starts on a multiple of 1 MB
               and goes to the end of the archive. For example, if you have a 3.1 MB archive and you
               specify a range that starts at 2 MB and ends at 3.1 MB (the end of the archive), then
               the x-amz-sha256-tree-hash is returned as a response header.</p>
            </li>
         </ul>")
    checksum: option<string_>,
    @ocaml.doc("<p>The job data, either archive data or inventory data.</p>") body: option<stream>,
  }
  @module("@aws-sdk/client-glacier") @new external new: request => t = "GetJobOutputCommand"
  let make = (~jobId, ~vaultName, ~accountId, ~range=?, ()) =>
    new({range, jobId, vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeVault = {
  type t
  @ocaml.doc("<p>Provides options for retrieving metadata for a specific vault in Amazon
         Glacier.</p>")
  type request = {
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID. </p>")
    accountId: string_,
  }
  type response = describeVaultOutput
  @module("@aws-sdk/client-glacier") @new external new: request => t = "DescribeVaultCommand"
  let make = (~vaultName, ~accountId, ()) => new({vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteVaultNotifications = {
  type t
  @ocaml.doc("<p>Provides options for deleting a vault notification configuration from an Amazon
         Glacier vault.</p>")
  type request = {
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID. </p>")
    accountId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-glacier") @new
  external new: request => t = "DeleteVaultNotificationsCommand"
  let make = (~vaultName, ~accountId, ()) => new({vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteVaultAccessPolicy = {
  type t
  @ocaml.doc("<p>DeleteVaultAccessPolicy input.</p>")
  type request = {
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID. </p>")
    accountId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-glacier") @new
  external new: request => t = "DeleteVaultAccessPolicyCommand"
  let make = (~vaultName, ~accountId, ()) => new({vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteVault = {
  type t
  @ocaml.doc("<p>Provides options for deleting a vault from Amazon S3 Glacier.</p>")
  type request = {
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID.</p>")
    accountId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-glacier") @new external new: request => t = "DeleteVaultCommand"
  let make = (~vaultName, ~accountId, ()) => new({vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteArchive = {
  type t
  @ocaml.doc("<p>Provides options for deleting an archive from an Amazon S3 Glacier vault.</p>")
  type request = {
    @ocaml.doc("<p>The ID of the archive to delete.</p>") archiveId: string_,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID.</p>")
    accountId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-glacier") @new external new: request => t = "DeleteArchiveCommand"
  let make = (~archiveId, ~vaultName, ~accountId, ()) => new({archiveId, vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateVault = {
  type t
  @ocaml.doc("<p>Provides options to create a vault.</p>")
  type request = {
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
         account ID associated with the credentials used to sign the request. You can either specify
         an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3
         Glacier uses the AWS account ID associated with the credentials used to sign the request.
         If you specify your account ID, do not include any hyphens ('-') in the ID.</p>")
    accountId: string_,
  }
  @ocaml.doc("<p>Contains the Amazon S3 Glacier response to your request.</p>")
  type response = {
    @ocaml.doc("<p>The URI of the vault that was created.</p>") location: option<string_>,
  }
  @module("@aws-sdk/client-glacier") @new external new: request => t = "CreateVaultCommand"
  let make = (~vaultName, ~accountId, ()) => new({vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CompleteVaultLock = {
  type t
  @ocaml.doc("<p>The input values for <code>CompleteVaultLock</code>.</p>")
  type request = {
    @ocaml.doc(
      "<p>The <code>lockId</code> value is the lock ID obtained from a <a>InitiateVaultLock</a> request.</p>"
    )
    lockId: string_,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
         account ID associated with the credentials used to sign the request. You can either specify
         an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
         Glacier uses the AWS account ID associated with the credentials used to sign the request.
         If you specify your account ID, do not include any hyphens ('-') in the ID.</p>")
    accountId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-glacier") @new external new: request => t = "CompleteVaultLockCommand"
  let make = (~lockId, ~vaultName, ~accountId, ()) => new({lockId, vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CompleteMultipartUpload = {
  type t
  @ocaml.doc("<p>Provides options to complete a multipart upload operation. This informs Amazon
         Glacier that all the archive parts have been uploaded and Amazon S3 Glacier (Glacier) can now assemble
         the archive from the uploaded parts. After assembling and saving the archive to the vault,
         Glacier returns the URI path of the newly created archive resource.</p>")
  type request = {
    @ocaml.doc("<p>The SHA256 tree hash of the entire archive. It is the tree hash of SHA256 tree hash
         of the individual parts. If the value you specify in the request does not match the SHA256
         tree hash of the final assembled archive as computed by Amazon S3 Glacier (Glacier), 
         Glacier returns an error and the request fails.</p>")
    checksum: option<string_>,
    @ocaml.doc("<p>The total size, in bytes, of the entire archive. This value should be the sum of all
         the sizes of the individual parts that you uploaded.</p>")
    archiveSize: option<string_>,
    @ocaml.doc("<p>The upload ID of the multipart upload.</p>") uploadId: string_,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID.</p>")
    accountId: string_,
  }
  @ocaml.doc("<p>Contains the Amazon S3 Glacier response to your request.</p>
         <p>For information about the underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html\">Upload Archive</a>. For
         conceptual information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html\">Working with Archives in
            Amazon S3 Glacier</a>.</p>")
  type response = {
    @ocaml.doc("<p>The ID of the archive. This value is also included as part of the location.</p>")
    archiveId: option<string_>,
    @ocaml.doc("<p>The checksum of the archive computed by Amazon S3 Glacier.</p>")
    checksum: option<string_>,
    @ocaml.doc("<p>The relative URI path of the newly added archive resource.</p>")
    location: option<string_>,
  }
  @module("@aws-sdk/client-glacier") @new
  external new: request => t = "CompleteMultipartUploadCommand"
  let make = (~uploadId, ~vaultName, ~accountId, ~checksum=?, ~archiveSize=?, ()) =>
    new({checksum, archiveSize, uploadId, vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AbortVaultLock = {
  type t
  @ocaml.doc("<p>The input values for <code>AbortVaultLock</code>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
         account ID associated with the credentials used to sign the request. You can either specify
         an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
         Glacier uses the AWS account ID associated with the credentials used to sign the request.
         If you specify your account ID, do not include any hyphens ('-') in the ID.</p>")
    accountId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-glacier") @new external new: request => t = "AbortVaultLockCommand"
  let make = (~vaultName, ~accountId, ()) => new({vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AbortMultipartUpload = {
  type t
  @ocaml.doc("<p>Provides options to abort a multipart upload identified by the upload ID.</p>

         <p>For information about the underlying REST API, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html\">Abort Multipart
            Upload</a>. For conceptual information, see <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html\">Working with Archives in
            Amazon S3 Glacier</a>.</p>")
  type request = {
    @ocaml.doc("<p>The upload ID of the multipart upload to delete.</p>") uploadId: string_,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID.</p>")
    accountId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-glacier") @new external new: request => t = "AbortMultipartUploadCommand"
  let make = (~uploadId, ~vaultName, ~accountId, ()) => new({uploadId, vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SetVaultAccessPolicy = {
  type t
  @ocaml.doc("<p>SetVaultAccessPolicy input.</p>")
  type request = {
    @ocaml.doc("<p>The vault access policy as a JSON string.</p>")
    policy: option<vaultAccessPolicy>,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID.</p>")
    accountId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-glacier") @new external new: request => t = "SetVaultAccessPolicyCommand"
  let make = (~vaultName, ~accountId, ~policy=?, ()) => new({policy, vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RemoveTagsFromVault = {
  type t
  @ocaml.doc("<p>The input value for <code>RemoveTagsFromVaultInput</code>.</p>")
  type request = {
    @ocaml.doc("<p>A list of tag keys. Each corresponding tag is removed from the vault.</p>")
    @as("TagKeys")
    tagKeys: option<tagKeyList>,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID.</p>")
    accountId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-glacier") @new external new: request => t = "RemoveTagsFromVaultCommand"
  let make = (~vaultName, ~accountId, ~tagKeys=?, ()) => new({tagKeys, vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForVault = {
  type t
  @ocaml.doc("<p>The input value for <code>ListTagsForVaultInput</code>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID.</p>")
    accountId: string_,
  }
  @ocaml.doc("<p>Contains the Amazon S3 Glacier response to your request.</p>")
  type response = {
    @ocaml.doc("<p>The tags attached to the vault. Each tag is composed of a key and a value.</p>")
    @as("Tags")
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-glacier") @new external new: request => t = "ListTagsForVaultCommand"
  let make = (~vaultName, ~accountId, ()) => new({vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module InitiateVaultLock = {
  type t
  @ocaml.doc("<p>The input values for <code>InitiateVaultLock</code>.</p>")
  type request = {
    @ocaml.doc("<p>The vault lock policy as a JSON string, which uses \"\\\" as an escape
         character.</p>")
    policy: option<vaultLockPolicy>,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
         account ID associated with the credentials used to sign the request. You can either specify
         an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
         Glacier uses the AWS account ID associated with the credentials used to sign the request.
         If you specify your account ID, do not include any hyphens ('-') in the ID.</p>")
    accountId: string_,
  }
  @ocaml.doc("<p>Contains the Amazon S3 Glacier response to your request.</p>")
  type response = {
    @ocaml.doc("<p>The lock ID, which is used to complete the vault locking process.</p>")
    lockId: option<string_>,
  }
  @module("@aws-sdk/client-glacier") @new external new: request => t = "InitiateVaultLockCommand"
  let make = (~vaultName, ~accountId, ~policy=?, ()) => new({policy, vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetVaultAccessPolicy = {
  type t
  @ocaml.doc("<p>Input for GetVaultAccessPolicy.</p>")
  type request = {
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID.</p>")
    accountId: string_,
  }
  @ocaml.doc("<p>Output for GetVaultAccessPolicy.</p>")
  type response = {
    @ocaml.doc("<p>Contains the returned vault access policy as a JSON string.</p>")
    policy: option<vaultAccessPolicy>,
  }
  @module("@aws-sdk/client-glacier") @new external new: request => t = "GetVaultAccessPolicyCommand"
  let make = (~vaultName, ~accountId, ()) => new({vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddTagsToVault = {
  type t
  @ocaml.doc("<p>The input values for <code>AddTagsToVault</code>.</p>")
  type request = {
    @ocaml.doc("<p>The tags to add to the vault. Each tag is composed of a key and a value. The value
         can be an empty string.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID.</p>")
    accountId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-glacier") @new external new: request => t = "AddTagsToVaultCommand"
  let make = (~vaultName, ~accountId, ~tags=?, ()) => new({tags, vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SetVaultNotifications = {
  type t
  @ocaml.doc("<p>Provides options to configure notifications that will be sent when specific events
         happen to a vault.</p>")
  type request = {
    @ocaml.doc("<p>Provides options for specifying notification configuration.</p>")
    vaultNotificationConfig: option<vaultNotificationConfig>,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID.</p>")
    accountId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-glacier") @new
  external new: request => t = "SetVaultNotificationsCommand"
  let make = (~vaultName, ~accountId, ~vaultNotificationConfig=?, ()) =>
    new({vaultNotificationConfig, vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListVaults = {
  type t
  @ocaml.doc("<p>Provides options to retrieve the vault list owned by the calling user's account. The
         list provides metadata information for each vault.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of vaults to be returned. The default limit is 10. The number of
         vaults returned might be fewer than the specified limit, but the number of returned vaults
         never exceeds the limit.</p>")
    limit: option<baseInteger>,
    @ocaml.doc("<p>A string used for pagination. The marker specifies the vault ARN after which the
         listing of vaults should begin.</p>")
    marker: option<string_>,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
         account ID associated with the credentials used to sign the request. You can either specify
         an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
         Glacier uses the AWS account ID associated with the credentials used to sign the request.
         If you specify your account ID, do not include any hyphens ('-') in the ID.</p>")
    accountId: string_,
  }
  @ocaml.doc("<p>Contains the Amazon S3 Glacier response to your request.</p>")
  type response = {
    @ocaml.doc("<p>The vault ARN at which to continue pagination of the results. You use the marker in
         another List Vaults request to obtain more vaults in the list.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>List of vaults.</p>") @as("VaultList") vaultList: option<vaultList>,
  }
  @module("@aws-sdk/client-glacier") @new external new: request => t = "ListVaultsCommand"
  let make = (~accountId, ~limit=?, ~marker=?, ()) => new({limit, marker, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListProvisionedCapacity = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS account ID of the account that owns the vault. You can either specify an AWS
         account ID or optionally a single '-' (hyphen), in which case Amazon S3 Glacier uses the AWS
         account ID associated with the credentials used to sign the request. If you use an account
         ID, don't include any hyphens ('-') in the ID. </p>")
    accountId: string_,
  }
  type response = {
    @ocaml.doc("<p>The response body contains the following JSON fields.</p>")
    @as("ProvisionedCapacityList")
    provisionedCapacityList: option<provisionedCapacityList>,
  }
  @module("@aws-sdk/client-glacier") @new
  external new: request => t = "ListProvisionedCapacityCommand"
  let make = (~accountId, ()) => new({accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListParts = {
  type t
  @ocaml.doc("<p>Provides options for retrieving a list of parts of an archive that have been uploaded
         in a specific multipart upload.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of parts to be returned. The default limit is 50. The number of
         parts returned might be fewer than the specified limit, but the number of returned parts
         never exceeds the limit.</p>")
    limit: option<baseInteger>,
    @ocaml.doc("<p>An opaque string used for pagination. This value specifies the part at which the
         listing of parts should begin. Get the marker value from the response of a previous List
         Parts response. You need only include the marker if you are continuing the pagination of
         results started in a previous List Parts request.</p>")
    marker: option<string_>,
    @ocaml.doc("<p>The upload ID of the multipart upload.</p>") uploadId: string_,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID. </p>")
    accountId: string_,
  }
  @ocaml.doc("<p>Contains the Amazon S3 Glacier response to your request.</p>")
  type response = {
    @ocaml.doc("<p>An opaque string that represents where to continue pagination of the results. You use
         the marker in a new List Parts request to obtain more jobs in the list. If there are no
         more parts, this value is <code>null</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A list of the part sizes of the multipart upload. Each object in the array contains a
         <code>RangeBytes</code> and <code>sha256-tree-hash</code> name/value
         pair.</p>")
    @as("Parts")
    parts: option<partList>,
    @ocaml.doc("<p>The UTC time at which the multipart upload was initiated.</p>")
    @as("CreationDate")
    creationDate: option<string_>,
    @ocaml.doc("<p>The part size in bytes. This is the same value that you specified in the Initiate
         Multipart Upload request.</p>")
    @as("PartSizeInBytes")
    partSizeInBytes: option<long>,
    @ocaml.doc("<p>The description of the archive that was specified in the Initiate Multipart Upload
         request.</p>")
    @as("ArchiveDescription")
    archiveDescription: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the vault to which the multipart upload was
         initiated.</p>")
    @as("VaultARN")
    vaultARN: option<string_>,
    @ocaml.doc("<p>The ID of the upload to which the parts are associated.</p>")
    @as("MultipartUploadId")
    multipartUploadId: option<string_>,
  }
  @module("@aws-sdk/client-glacier") @new external new: request => t = "ListPartsCommand"
  let make = (~uploadId, ~vaultName, ~accountId, ~limit=?, ~marker=?, ()) =>
    new({limit, marker, uploadId, vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListMultipartUploads = {
  type t
  @ocaml.doc("<p>Provides options for retrieving list of in-progress multipart uploads for an Amazon
         Glacier vault.</p>")
  type request = {
    @ocaml.doc("<p>An opaque string used for pagination. This value specifies the upload at which the
         listing of uploads should begin. Get the marker value from a previous List Uploads
         response. You need only include the marker if you are continuing the pagination of results
         started in a previous List Uploads request.</p>")
    marker: option<string_>,
    @ocaml.doc("<p>Specifies the maximum number of uploads returned in the response body. If this value
         is not specified, the List Uploads operation returns up to 50 uploads.</p>")
    limit: option<baseInteger>,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID. </p>")
    accountId: string_,
  }
  @ocaml.doc("<p>Contains the Amazon S3 Glacier response to your request.</p>")
  type response = {
    @ocaml.doc("<p>An opaque string that represents where to continue pagination of the results. You use
         the marker in a new List Multipart Uploads request to obtain more uploads in the list. If
         there are no more uploads, this value is <code>null</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A list of in-progress multipart uploads.</p>") @as("UploadsList")
    uploadsList: option<uploadsList>,
  }
  @module("@aws-sdk/client-glacier") @new external new: request => t = "ListMultipartUploadsCommand"
  let make = (~vaultName, ~accountId, ~marker=?, ~limit=?, ()) =>
    new({marker, limit, vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetVaultNotifications = {
  type t
  @ocaml.doc("<p>Provides options for retrieving the notification configuration set on an Amazon
         Glacier vault.</p>")
  type request = {
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID.</p>")
    accountId: string_,
  }
  @ocaml.doc("<p>Contains the Amazon S3 Glacier response to your request.</p>")
  type response = {
    @ocaml.doc("<p>Returns the notification configuration set on the vault.</p>")
    vaultNotificationConfig: option<vaultNotificationConfig>,
  }
  @module("@aws-sdk/client-glacier") @new
  external new: request => t = "GetVaultNotificationsCommand"
  let make = (~vaultName, ~accountId, ()) => new({vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SetDataRetrievalPolicy = {
  type t
  @ocaml.doc("<p>SetDataRetrievalPolicy input.</p>")
  type request = {
    @ocaml.doc("<p>The data retrieval policy in JSON format.</p>") @as("Policy")
    policy: option<dataRetrievalPolicy>,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
         account ID associated with the credentials used to sign the request. You can either specify
         an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
         Glacier uses the AWS account ID associated with the credentials used to sign the request.
         If you specify your account ID, do not include any hyphens ('-') in the ID.</p>")
    accountId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-glacier") @new
  external new: request => t = "SetDataRetrievalPolicyCommand"
  let make = (~accountId, ~policy=?, ()) => new({policy, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetDataRetrievalPolicy = {
  type t
  @ocaml.doc("<p>Input for GetDataRetrievalPolicy.</p>")
  type request = {
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
         account ID associated with the credentials used to sign the request. You can either specify
         an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
         Glacier uses the AWS account ID associated with the credentials used to sign the request.
         If you specify your account ID, do not include any hyphens ('-') in the ID. </p>")
    accountId: string_,
  }
  @ocaml.doc("<p>Contains the Amazon S3 Glacier response to the <code>GetDataRetrievalPolicy</code>
         request.</p>")
  type response = {
    @ocaml.doc("<p>Contains the returned data retrieval policy in JSON format.</p>") @as("Policy")
    policy: option<dataRetrievalPolicy>,
  }
  @module("@aws-sdk/client-glacier") @new
  external new: request => t = "GetDataRetrievalPolicyCommand"
  let make = (~accountId, ()) => new({accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeJob = {
  type t
  @ocaml.doc("<p>Provides options for retrieving a job description.</p>")
  type request = {
    @ocaml.doc("<p>The ID of the job to describe.</p>") jobId: string_,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID. </p>")
    accountId: string_,
  }
  type response = glacierJobDescription
  @module("@aws-sdk/client-glacier") @new external new: request => t = "DescribeJobCommand"
  let make = (~jobId, ~vaultName, ~accountId, ()) => new({jobId, vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module InitiateJob = {
  type t
  @ocaml.doc("<p>Provides options for initiating an Amazon S3 Glacier job.</p>")
  type request = {
    @ocaml.doc("<p>Provides options for specifying job information.</p>")
    jobParameters: option<jobParameters>,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID.</p>")
    accountId: string_,
  }
  @ocaml.doc("<p>Contains the Amazon S3 Glacier response to your request.</p>")
  type response = {
    @ocaml.doc("<p>The path to the location of where the select results are stored.</p>")
    jobOutputPath: option<string_>,
    @ocaml.doc("<p>The ID of the job.</p>") jobId: option<string_>,
    @ocaml.doc("<p>The relative URI path of the job.</p>") location: option<string_>,
  }
  @module("@aws-sdk/client-glacier") @new external new: request => t = "InitiateJobCommand"
  let make = (~vaultName, ~accountId, ~jobParameters=?, ()) =>
    new({jobParameters, vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListJobs = {
  type t
  @ocaml.doc("<p>Provides options for retrieving a job list for an Amazon S3 Glacier vault.</p>")
  type request = {
    @ocaml.doc("<p>The state of the jobs to return. You can specify <code>true</code> or
            <code>false</code>.</p>")
    completed: option<string_>,
    @ocaml.doc("<p>The type of job status to return. You can specify the following values:
            <code>InProgress</code>, <code>Succeeded</code>, or <code>Failed</code>.</p>")
    statuscode: option<string_>,
    @ocaml.doc("<p>An opaque string used for pagination. This value specifies the job at which the
         listing of jobs should begin. Get the marker value from a previous List Jobs response. You
         only need to include the marker if you are continuing the pagination of results started in
         a previous List Jobs request.</p>")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of jobs to be returned. The default limit is 50. The number of
         jobs returned might be fewer than the specified limit, but the number of returned jobs
         never exceeds the limit.</p>")
    limit: option<baseInteger>,
    @ocaml.doc("<p>The name of the vault.</p>") vaultName: string_,
    @ocaml.doc("<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
         credentials used to sign the request. If you use an account ID, do not include any hyphens
         ('-') in the ID. </p>")
    accountId: string_,
  }
  @ocaml.doc("<p>Contains the Amazon S3 Glacier response to your request.</p>")
  type response = {
    @ocaml.doc("<p>	
         An opaque string used for pagination that specifies the job at which the listing of jobs should begin. 
         You get the <code>marker</code> value from a previous List Jobs response.
         You only need to include the marker if you are continuing the pagination of the results started in a 
         previous List Jobs request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A list of job objects. Each job object contains metadata describing the
         job.</p>")
    @as("JobList")
    jobList: option<jobList>,
  }
  @module("@aws-sdk/client-glacier") @new external new: request => t = "ListJobsCommand"
  let make = (~vaultName, ~accountId, ~completed=?, ~statuscode=?, ~marker=?, ~limit=?, ()) =>
    new({completed, statuscode, marker, limit, vaultName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
