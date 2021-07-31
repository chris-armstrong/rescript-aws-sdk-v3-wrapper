type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type integer_ = int
type timestamp_ = Js.Date.t;
type string_ = string
type long = float
type httpstatus = int
type boolean_ = bool
type type_ = [@as("Group") #Group | @as("CanonicalUser") #CanonicalUser | @as("AmazonCustomerByEmail") #AmazonCustomerByEmail]
type tagValue = string
type tagKey = string
type stream = NodeJs.Buffer.t
type storageClass = [@as("STANDARD_IA") #STANDARDIA | @as("REDUCED_REDUNDANCY") #REDUCEDREDUNDANCY | @as("STANDARD") #STANDARD]
type statusCode = [@as("Failed") #Failed | @as("Succeeded") #Succeeded | @as("InProgress") #InProgress]
type size = float
type quoteFields = [@as("ASNEEDED") #ASNEEDED | @as("ALWAYS") #ALWAYS]
type permission = [@as("READ_ACP") #READACP | @as("READ") #READ | @as("WRITE_ACP") #WRITEACP | @as("WRITE") #WRITE | @as("FULL_CONTROL") #FULLCONTROL]
type nullableLong = float
type fileHeaderInfo = [@as("NONE") #NONE | @as("IGNORE") #IGNORE | @as("USE") #USE]
type expressionType = [@as("SQL") #SQL]
type encryptionType = [@as("AES256") #AES256 | @as("aws:kms") #AwsKms]
type dateTime = string
type cannedACL = [@as("bucket-owner-full-control") #BucketOwnerFullControl | @as("bucket-owner-read") #BucketOwnerRead | @as("authenticated-read") #AuthenticatedRead | @as("aws-exec-read") #AwsExecRead | @as("public-read-write") #PublicReadWrite | @as("public-read") #PublicRead | @as("private") #Private]
type actionCode = [@as("Select") #Select | @as("InventoryRetrieval") #InventoryRetrieval | @as("ArchiveRetrieval") #ArchiveRetrieval]
type hashmap = Js.Dict.t< string_>
type vaultLockPolicy = {
@as("Policy") policy: option<string_>
}
type vaultAccessPolicy = {
@as("Policy") policy: option<string_>
}
type uploadListElement = {
@as("CreationDate") creationDate: option<string_>,
@as("PartSizeInBytes") partSizeInBytes: option<long>,
@as("ArchiveDescription") archiveDescription: option<string_>,
@as("VaultARN") vaultARN: option<string_>,
@as("MultipartUploadId") multipartUploadId: option<string_>
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<string_>
type provisionedCapacityDescription = {
@as("ExpirationDate") expirationDate: option<string_>,
@as("StartDate") startDate: option<string_>,
@as("CapacityId") capacityId: option<string_>
}
type partListElement = {
@as("SHA256TreeHash") sha256TreeHash: option<string_>,
@as("RangeInBytes") rangeInBytes: option<string_>
}
type notificationEventList = array<string_>
type inventoryRetrievalJobInput = {
@as("Marker") marker: option<string_>,
@as("Limit") limit: option<string_>,
@as("EndDate") endDate: option<string_>,
@as("StartDate") startDate: option<string_>
}
type inventoryRetrievalJobDescription = {
@as("Marker") marker: option<string_>,
@as("Limit") limit: option<string_>,
@as("EndDate") endDate: option<dateTime>,
@as("StartDate") startDate: option<dateTime>,
@as("Format") format: option<string_>
}
type grantee = {
@as("EmailAddress") emailAddress: option<string_>,
@as("ID") id: option<string_>,
@as("URI") uri: option<string_>,
@as("DisplayName") displayName: option<string_>,
@as("Type") type_: type_
}
type encryption = {
@as("KMSContext") kmscontext: option<string_>,
@as("KMSKeyId") kmskeyId: option<string_>,
@as("EncryptionType") encryptionType: option<encryptionType>
}
type describeVaultOutput = {
@as("SizeInBytes") sizeInBytes: option<long>,
@as("NumberOfArchives") numberOfArchives: option<long>,
@as("LastInventoryDate") lastInventoryDate: option<string_>,
@as("CreationDate") creationDate: option<string_>,
@as("VaultName") vaultName: option<string_>,
@as("VaultARN") vaultARN: option<string_>
}
type dataRetrievalRule = {
@as("BytesPerHour") bytesPerHour: option<nullableLong>,
@as("Strategy") strategy: option<string_>
}
type csvoutput = {
@as("QuoteCharacter") quoteCharacter: option<string_>,
@as("FieldDelimiter") fieldDelimiter: option<string_>,
@as("RecordDelimiter") recordDelimiter: option<string_>,
@as("QuoteEscapeCharacter") quoteEscapeCharacter: option<string_>,
@as("QuoteFields") quoteFields: option<quoteFields>
}
type csvinput = {
@as("QuoteCharacter") quoteCharacter: option<string_>,
@as("FieldDelimiter") fieldDelimiter: option<string_>,
@as("RecordDelimiter") recordDelimiter: option<string_>,
@as("QuoteEscapeCharacter") quoteEscapeCharacter: option<string_>,
@as("Comments") comments: option<string_>,
@as("FileHeaderInfo") fileHeaderInfo: option<fileHeaderInfo>
}
type vaultNotificationConfig = {
@as("Events") events: option<notificationEventList>,
@as("SNSTopic") snstopic: option<string_>
}
type vaultList = array<describeVaultOutput>
type uploadsList = array<uploadListElement>
type provisionedCapacityList = array<provisionedCapacityDescription>
type partList = array<partListElement>
type outputSerialization = {
csv: option<csvoutput>
}
type inputSerialization = {
csv: option<csvinput>
}
type grant = {
@as("Permission") permission: option<permission>,
@as("Grantee") grantee: option<grantee>
}
type dataRetrievalRulesList = array<dataRetrievalRule>
type selectParameters = {
@as("OutputSerialization") outputSerialization: option<outputSerialization>,
@as("Expression") expression: option<string_>,
@as("ExpressionType") expressionType: option<expressionType>,
@as("InputSerialization") inputSerialization: option<inputSerialization>
}
type dataRetrievalPolicy = {
@as("Rules") rules: option<dataRetrievalRulesList>
}
type accessControlPolicyList = array<grant>
type s3Location = {
@as("StorageClass") storageClass: option<storageClass>,
@as("UserMetadata") userMetadata: option<hashmap>,
@as("Tagging") tagging: option<hashmap>,
@as("AccessControlList") accessControlList: option<accessControlPolicyList>,
@as("CannedACL") cannedACL: option<cannedACL>,
@as("Encryption") encryption: option<encryption>,
@as("Prefix") prefix: option<string_>,
@as("BucketName") bucketName: option<string_>
}
type outputLocation = {
@as("S3") s3: option<s3Location>
}
type jobParameters = {
@as("OutputLocation") outputLocation: option<outputLocation>,
@as("SelectParameters") selectParameters: option<selectParameters>,
@as("InventoryRetrievalParameters") inventoryRetrievalParameters: option<inventoryRetrievalJobInput>,
@as("Tier") tier: option<string_>,
@as("RetrievalByteRange") retrievalByteRange: option<string_>,
@as("SNSTopic") snstopic: option<string_>,
@as("Description") description: option<string_>,
@as("ArchiveId") archiveId: option<string_>,
@as("Type") type_: option<string_>,
@as("Format") format: option<string_>
}
type glacierJobDescription = {
@as("OutputLocation") outputLocation: option<outputLocation>,
@as("SelectParameters") selectParameters: option<selectParameters>,
@as("JobOutputPath") jobOutputPath: option<string_>,
@as("InventoryRetrievalParameters") inventoryRetrievalParameters: option<inventoryRetrievalJobDescription>,
@as("Tier") tier: option<string_>,
@as("RetrievalByteRange") retrievalByteRange: option<string_>,
@as("ArchiveSHA256TreeHash") archiveSHA256TreeHash: option<string_>,
@as("SHA256TreeHash") sha256TreeHash: option<string_>,
@as("CompletionDate") completionDate: option<string_>,
@as("SNSTopic") snstopic: option<string_>,
@as("InventorySizeInBytes") inventorySizeInBytes: option<size>,
@as("ArchiveSizeInBytes") archiveSizeInBytes: option<size>,
@as("StatusMessage") statusMessage: option<string_>,
@as("StatusCode") statusCode: option<statusCode>,
@as("Completed") completed: option<boolean_>,
@as("CreationDate") creationDate: option<string_>,
@as("VaultARN") vaultARN: option<string_>,
@as("ArchiveId") archiveId: option<string_>,
@as("Action") action: option<actionCode>,
@as("JobDescription") jobDescription: option<string_>,
@as("JobId") jobId: option<string_>
}
type jobList = array<glacierJobDescription>
type awsServiceClient;
@module("@aws-sdk/client-glacier") @new external createClient: unit => awsServiceClient = "GlacierClient";
module UploadMultipartPart = {
  type t;
  type request = {
body: option<stream>,
range: option<string_>,
checksum: option<string_>,
uploadId: string_,
vaultName: string_,
accountId: string_
}
  type response = {
checksum: option<string_>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "UploadMultipartPartCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UploadArchive = {
  type t;
  type request = {
body: option<stream>,
checksum: option<string_>,
archiveDescription: option<string_>,
accountId: string_,
vaultName: string_
}
  type response = {
archiveId: option<string_>,
checksum: option<string_>,
location: option<string_>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "UploadArchiveCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PurchaseProvisionedCapacity = {
  type t;
  type request = {
accountId: string_
}
  type response = {
capacityId: option<string_>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "PurchaseProvisionedCapacityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module InitiateMultipartUpload = {
  type t;
  type request = {
partSize: option<string_>,
archiveDescription: option<string_>,
vaultName: string_,
accountId: string_
}
  type response = {
uploadId: option<string_>,
location: option<string_>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "InitiateMultipartUploadCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetVaultLock = {
  type t;
  type request = {
vaultName: string_,
accountId: string_
}
  type response = {
@as("CreationDate") creationDate: option<string_>,
@as("ExpirationDate") expirationDate: option<string_>,
@as("State") state: option<string_>,
@as("Policy") policy: option<string_>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "GetVaultLockCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetJobOutput = {
  type t;
  type request = {
range: option<string_>,
jobId: string_,
vaultName: string_,
accountId: string_
}
  type response = {
archiveDescription: option<string_>,
contentType: option<string_>,
acceptRanges: option<string_>,
contentRange: option<string_>,
status: option<httpstatus>,
checksum: option<string_>,
body: option<stream>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "GetJobOutputCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeVault = {
  type t;
  type request = {
vaultName: string_,
accountId: string_
}
  type response = describeVaultOutput;
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "DescribeVaultCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteVaultNotifications = {
  type t;
  type request = {
vaultName: string_,
accountId: string_
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "DeleteVaultNotificationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteVaultAccessPolicy = {
  type t;
  type request = {
vaultName: string_,
accountId: string_
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "DeleteVaultAccessPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteVault = {
  type t;
  type request = {
vaultName: string_,
accountId: string_
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "DeleteVaultCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteArchive = {
  type t;
  type request = {
archiveId: string_,
vaultName: string_,
accountId: string_
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "DeleteArchiveCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CreateVault = {
  type t;
  type request = {
vaultName: string_,
accountId: string_
}
  type response = {
location: option<string_>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "CreateVaultCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CompleteVaultLock = {
  type t;
  type request = {
lockId: string_,
vaultName: string_,
accountId: string_
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "CompleteVaultLockCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CompleteMultipartUpload = {
  type t;
  type request = {
checksum: option<string_>,
archiveSize: option<string_>,
uploadId: string_,
vaultName: string_,
accountId: string_
}
  type response = {
archiveId: option<string_>,
checksum: option<string_>,
location: option<string_>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "CompleteMultipartUploadCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AbortVaultLock = {
  type t;
  type request = {
vaultName: string_,
accountId: string_
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "AbortVaultLockCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module AbortMultipartUpload = {
  type t;
  type request = {
uploadId: string_,
vaultName: string_,
accountId: string_
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "AbortMultipartUploadCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module SetVaultAccessPolicy = {
  type t;
  type request = {
policy: option<vaultAccessPolicy>,
vaultName: string_,
accountId: string_
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "SetVaultAccessPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RemoveTagsFromVault = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
vaultName: string_,
accountId: string_
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "RemoveTagsFromVaultCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForVault = {
  type t;
  type request = {
vaultName: string_,
accountId: string_
}
  type response = {
@as("Tags") tags: option<tagMap>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "ListTagsForVaultCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module InitiateVaultLock = {
  type t;
  type request = {
policy: option<vaultLockPolicy>,
vaultName: string_,
accountId: string_
}
  type response = {
lockId: option<string_>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "InitiateVaultLockCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetVaultAccessPolicy = {
  type t;
  type request = {
vaultName: string_,
accountId: string_
}
  type response = {
policy: option<vaultAccessPolicy>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "GetVaultAccessPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddTagsToVault = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
vaultName: string_,
accountId: string_
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "AddTagsToVaultCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module SetVaultNotifications = {
  type t;
  type request = {
vaultNotificationConfig: option<vaultNotificationConfig>,
vaultName: string_,
accountId: string_
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "SetVaultNotificationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListVaults = {
  type t;
  type request = {
limit: option<integer_>,
marker: option<string_>,
accountId: string_
}
  type response = {
@as("Marker") marker: option<string_>,
@as("VaultList") vaultList: option<vaultList>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "ListVaultsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListProvisionedCapacity = {
  type t;
  type request = {
accountId: string_
}
  type response = {
@as("ProvisionedCapacityList") provisionedCapacityList: option<provisionedCapacityList>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "ListProvisionedCapacityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListParts = {
  type t;
  type request = {
limit: option<integer_>,
marker: option<string_>,
uploadId: string_,
vaultName: string_,
accountId: string_
}
  type response = {
@as("Marker") marker: option<string_>,
@as("Parts") parts: option<partList>,
@as("CreationDate") creationDate: option<string_>,
@as("PartSizeInBytes") partSizeInBytes: option<long>,
@as("ArchiveDescription") archiveDescription: option<string_>,
@as("VaultARN") vaultARN: option<string_>,
@as("MultipartUploadId") multipartUploadId: option<string_>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "ListPartsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListMultipartUploads = {
  type t;
  type request = {
marker: option<string_>,
limit: option<integer_>,
vaultName: string_,
accountId: string_
}
  type response = {
@as("Marker") marker: option<string_>,
@as("UploadsList") uploadsList: option<uploadsList>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "ListMultipartUploadsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetVaultNotifications = {
  type t;
  type request = {
vaultName: string_,
accountId: string_
}
  type response = {
vaultNotificationConfig: option<vaultNotificationConfig>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "GetVaultNotificationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetDataRetrievalPolicy = {
  type t;
  type request = {
@as("Policy") policy: option<dataRetrievalPolicy>,
accountId: string_
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "SetDataRetrievalPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module GetDataRetrievalPolicy = {
  type t;
  type request = {
accountId: string_
}
  type response = {
@as("Policy") policy: option<dataRetrievalPolicy>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "GetDataRetrievalPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeJob = {
  type t;
  type request = {
jobId: string_,
vaultName: string_,
accountId: string_
}
  type response = glacierJobDescription;
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "DescribeJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module InitiateJob = {
  type t;
  type request = {
jobParameters: option<jobParameters>,
vaultName: string_,
accountId: string_
}
  type response = {
jobOutputPath: option<string_>,
jobId: option<string_>,
location: option<string_>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "InitiateJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListJobs = {
  type t;
  type request = {
completed: option<string_>,
statuscode: option<string_>,
marker: option<string_>,
limit: option<integer_>,
vaultName: string_,
accountId: string_
}
  type response = {
@as("Marker") marker: option<string_>,
@as("JobList") jobList: option<jobList>
}
  @module("@aws-sdk/client-glacier") @new external new_: (request) => t = "ListJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
