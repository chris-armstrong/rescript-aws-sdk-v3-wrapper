type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsString = string
type long = float;
type httpstatus = int;
type boolean = bool;
type type_ = [@as("Group") #Group | @as("CanonicalUser") #CanonicalUser | @as("AmazonCustomerByEmail") #AmazonCustomerByEmail]
type tagValue = string
type tagKey = string
type stream = NodeJs.Buffer.t;
type storageClass = [@as("STANDARD_IA") #STANDARD_IA | @as("REDUCED_REDUNDANCY") #REDUCED_REDUNDANCY | @as("STANDARD") #STANDARD]
type statusCode = [@as("Failed") #Failed | @as("Succeeded") #Succeeded | @as("InProgress") #InProgress]
type size = float;
type quoteFields = [@as("ASNEEDED") #ASNEEDED | @as("ALWAYS") #ALWAYS]
type permission = [@as("READ_ACP") #READ_ACP | @as("READ") #READ | @as("WRITE_ACP") #WRITE_ACP | @as("WRITE") #WRITE | @as("FULL_CONTROL") #FULL_CONTROL]
type nullableLong = float;
type fileHeaderInfo = [@as("NONE") #NONE | @as("IGNORE") #IGNORE | @as("USE") #USE]
type expressionType = [@as("SQL") #SQL]
type encryptionType = [@as("AES256") #AES256 | @as("aws:kms") #aws_kms]
type dateTime = string
type cannedACL = [@as("bucket-owner-full-control") #bucket_owner_full_control | @as("bucket-owner-read") #bucket_owner_read | @as("authenticated-read") #authenticated_read | @as("aws-exec-read") #aws_exec_read | @as("public-read-write") #public_read_write | @as("public-read") #public_read | @as("private") #private]
type actionCode = [@as("Select") #Select | @as("InventoryRetrieval") #InventoryRetrieval | @as("ArchiveRetrieval") #ArchiveRetrieval]
type hashmap = Js.Dict.t< amazonawsString>
type vaultLockPolicy = {
@as("Policy") policy: amazonawsString
}
type vaultAccessPolicy = {
@as("Policy") policy: amazonawsString
}
type uploadListElement = {
@as("CreationDate") creationDate: amazonawsString,
@as("PartSizeInBytes") partSizeInBytes: long,
@as("ArchiveDescription") archiveDescription: amazonawsString,
@as("VaultARN") vaultARN: amazonawsString,
@as("MultipartUploadId") multipartUploadId: amazonawsString
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<amazonawsString>
type provisionedCapacityDescription = {
@as("ExpirationDate") expirationDate: amazonawsString,
@as("StartDate") startDate: amazonawsString,
@as("CapacityId") capacityId: amazonawsString
}
type partListElement = {
@as("SHA256TreeHash") sHA256TreeHash: amazonawsString,
@as("RangeInBytes") rangeInBytes: amazonawsString
}
type notificationEventList = array<amazonawsString>
type inventoryRetrievalJobInput = {
@as("Marker") marker: amazonawsString,
@as("Limit") limit: amazonawsString,
@as("EndDate") endDate: amazonawsString,
@as("StartDate") startDate: amazonawsString
}
type inventoryRetrievalJobDescription = {
@as("Marker") marker: amazonawsString,
@as("Limit") limit: amazonawsString,
@as("EndDate") endDate: dateTime,
@as("StartDate") startDate: dateTime,
@as("Format") format: amazonawsString
}
type grantee = {
@as("EmailAddress") emailAddress: amazonawsString,
@as("ID") iD: amazonawsString,
@as("URI") uRI: amazonawsString,
@as("DisplayName") displayName: amazonawsString,
@as("Type") type_: option<type_>
}
type encryption = {
@as("KMSContext") kMSContext: amazonawsString,
@as("KMSKeyId") kMSKeyId: amazonawsString,
@as("EncryptionType") encryptionType: encryptionType
}
type describeVaultOutput = {
@as("SizeInBytes") sizeInBytes: long,
@as("NumberOfArchives") numberOfArchives: long,
@as("LastInventoryDate") lastInventoryDate: amazonawsString,
@as("CreationDate") creationDate: amazonawsString,
@as("VaultName") vaultName: amazonawsString,
@as("VaultARN") vaultARN: amazonawsString
}
type dataRetrievalRule = {
@as("BytesPerHour") bytesPerHour: nullableLong,
@as("Strategy") strategy: amazonawsString
}
type cSVOutput = {
@as("QuoteCharacter") quoteCharacter: amazonawsString,
@as("FieldDelimiter") fieldDelimiter: amazonawsString,
@as("RecordDelimiter") recordDelimiter: amazonawsString,
@as("QuoteEscapeCharacter") quoteEscapeCharacter: amazonawsString,
@as("QuoteFields") quoteFields: quoteFields
}
type cSVInput = {
@as("QuoteCharacter") quoteCharacter: amazonawsString,
@as("FieldDelimiter") fieldDelimiter: amazonawsString,
@as("RecordDelimiter") recordDelimiter: amazonawsString,
@as("QuoteEscapeCharacter") quoteEscapeCharacter: amazonawsString,
@as("Comments") comments: amazonawsString,
@as("FileHeaderInfo") fileHeaderInfo: fileHeaderInfo
}
type vaultNotificationConfig = {
@as("Events") events: notificationEventList,
@as("SNSTopic") sNSTopic: amazonawsString
}
type vaultList = array<describeVaultOutput>
type uploadsList = array<uploadListElement>
type provisionedCapacityList = array<provisionedCapacityDescription>
type partList = array<partListElement>
type outputSerialization = {
@as("csv") csv: cSVOutput
}
type inputSerialization = {
@as("csv") csv: cSVInput
}
type grant = {
@as("Permission") permission: permission,
@as("Grantee") grantee: grantee
}
type dataRetrievalRulesList = array<dataRetrievalRule>
type selectParameters = {
@as("OutputSerialization") outputSerialization: outputSerialization,
@as("Expression") expression: amazonawsString,
@as("ExpressionType") expressionType: expressionType,
@as("InputSerialization") inputSerialization: inputSerialization
}
type dataRetrievalPolicy = {
@as("Rules") rules: dataRetrievalRulesList
}
type accessControlPolicyList = array<grant>
type s3Location = {
@as("StorageClass") storageClass: storageClass,
@as("UserMetadata") userMetadata: hashmap,
@as("Tagging") tagging: hashmap,
@as("AccessControlList") accessControlList: accessControlPolicyList,
@as("CannedACL") cannedACL: cannedACL,
@as("Encryption") encryption: encryption,
@as("Prefix") prefix: amazonawsString,
@as("BucketName") bucketName: amazonawsString
}
type outputLocation = {
@as("S3") s3: s3Location
}
type jobParameters = {
@as("OutputLocation") outputLocation: outputLocation,
@as("SelectParameters") selectParameters: selectParameters,
@as("InventoryRetrievalParameters") inventoryRetrievalParameters: inventoryRetrievalJobInput,
@as("Tier") tier: amazonawsString,
@as("RetrievalByteRange") retrievalByteRange: amazonawsString,
@as("SNSTopic") sNSTopic: amazonawsString,
@as("Description") description: amazonawsString,
@as("ArchiveId") archiveId: amazonawsString,
@as("Type") type_: amazonawsString,
@as("Format") format: amazonawsString
}
type glacierJobDescription = {
@as("OutputLocation") outputLocation: outputLocation,
@as("SelectParameters") selectParameters: selectParameters,
@as("JobOutputPath") jobOutputPath: amazonawsString,
@as("InventoryRetrievalParameters") inventoryRetrievalParameters: inventoryRetrievalJobDescription,
@as("Tier") tier: amazonawsString,
@as("RetrievalByteRange") retrievalByteRange: amazonawsString,
@as("ArchiveSHA256TreeHash") archiveSHA256TreeHash: amazonawsString,
@as("SHA256TreeHash") sHA256TreeHash: amazonawsString,
@as("CompletionDate") completionDate: amazonawsString,
@as("SNSTopic") sNSTopic: amazonawsString,
@as("InventorySizeInBytes") inventorySizeInBytes: size,
@as("ArchiveSizeInBytes") archiveSizeInBytes: size,
@as("StatusMessage") statusMessage: amazonawsString,
@as("StatusCode") statusCode: statusCode,
@as("Completed") completed: boolean,
@as("CreationDate") creationDate: amazonawsString,
@as("VaultARN") vaultARN: amazonawsString,
@as("ArchiveId") archiveId: amazonawsString,
@as("Action") action: actionCode,
@as("JobDescription") jobDescription: amazonawsString,
@as("JobId") jobId: amazonawsString
}
type jobList = array<glacierJobDescription>
type clientType;
@module("@aws-sdk/client-glacier") @new external createClient: unit => clientType = "GlacierClient";
module UploadMultipartPart = {
  type t;
  type request = {
@as("body") body: stream,
@as("range") range: amazonawsString,
@as("checksum") checksum: amazonawsString,
@as("uploadId") uploadId: option<amazonawsString>,
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("checksum") checksum: amazonawsString
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "UploadMultipartPartCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UploadArchive = {
  type t;
  type request = {
@as("body") body: stream,
@as("checksum") checksum: amazonawsString,
@as("archiveDescription") archiveDescription: amazonawsString,
@as("accountId") accountId: option<amazonawsString>,
@as("vaultName") vaultName: option<amazonawsString>
}
  type response = {
@as("archiveId") archiveId: amazonawsString,
@as("checksum") checksum: amazonawsString,
@as("location") location: amazonawsString
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "UploadArchiveCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PurchaseProvisionedCapacity = {
  type t;
  type request = {
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("capacityId") capacityId: amazonawsString
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "PurchaseProvisionedCapacityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InitiateMultipartUpload = {
  type t;
  type request = {
@as("partSize") partSize: amazonawsString,
@as("archiveDescription") archiveDescription: amazonawsString,
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("uploadId") uploadId: amazonawsString,
@as("location") location: amazonawsString
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "InitiateMultipartUploadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVaultLock = {
  type t;
  type request = {
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("CreationDate") creationDate: amazonawsString,
@as("ExpirationDate") expirationDate: amazonawsString,
@as("State") state: amazonawsString,
@as("Policy") policy: amazonawsString
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "GetVaultLockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJobOutput = {
  type t;
  type request = {
@as("range") range: amazonawsString,
@as("jobId") jobId: option<amazonawsString>,
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("archiveDescription") archiveDescription: amazonawsString,
@as("contentType") contentType: amazonawsString,
@as("acceptRanges") acceptRanges: amazonawsString,
@as("contentRange") contentRange: amazonawsString,
@as("status") status: httpstatus,
@as("checksum") checksum: amazonawsString,
@as("body") body: stream
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "GetJobOutputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVault = {
  type t;
  type request = {
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  type response = describeVaultOutput;
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "DescribeVaultCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVaultNotifications = {
  type t;
  type request = {
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "DeleteVaultNotificationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteVaultAccessPolicy = {
  type t;
  type request = {
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "DeleteVaultAccessPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteVault = {
  type t;
  type request = {
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "DeleteVaultCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteArchive = {
  type t;
  type request = {
@as("archiveId") archiveId: option<amazonawsString>,
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "DeleteArchiveCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateVault = {
  type t;
  type request = {
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("location") location: amazonawsString
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "CreateVaultCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CompleteVaultLock = {
  type t;
  type request = {
@as("lockId") lockId: option<amazonawsString>,
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "CompleteVaultLockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CompleteMultipartUpload = {
  type t;
  type request = {
@as("checksum") checksum: amazonawsString,
@as("archiveSize") archiveSize: amazonawsString,
@as("uploadId") uploadId: option<amazonawsString>,
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("archiveId") archiveId: amazonawsString,
@as("checksum") checksum: amazonawsString,
@as("location") location: amazonawsString
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "CompleteMultipartUploadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AbortVaultLock = {
  type t;
  type request = {
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "AbortVaultLockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AbortMultipartUpload = {
  type t;
  type request = {
@as("uploadId") uploadId: option<amazonawsString>,
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "AbortMultipartUploadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SetVaultAccessPolicy = {
  type t;
  type request = {
@as("policy") policy: vaultAccessPolicy,
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "SetVaultAccessPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RemoveTagsFromVault = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "RemoveTagsFromVaultCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForVault = {
  type t;
  type request = {
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("Tags") tags: tagMap
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForVaultCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InitiateVaultLock = {
  type t;
  type request = {
@as("policy") policy: vaultLockPolicy,
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("lockId") lockId: amazonawsString
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "InitiateVaultLockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVaultAccessPolicy = {
  type t;
  type request = {
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("policy") policy: vaultAccessPolicy
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "GetVaultAccessPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddTagsToVault = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "AddTagsToVaultCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SetVaultNotifications = {
  type t;
  type request = {
@as("vaultNotificationConfig") vaultNotificationConfig: vaultNotificationConfig,
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "SetVaultNotificationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListVaults = {
  type t;
  type request = {
@as("limit") limit: apiInteger,
@as("marker") marker: amazonawsString,
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("VaultList") vaultList: vaultList
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "ListVaultsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProvisionedCapacity = {
  type t;
  type request = {
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("ProvisionedCapacityList") provisionedCapacityList: provisionedCapacityList
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "ListProvisionedCapacityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListParts = {
  type t;
  type request = {
@as("limit") limit: apiInteger,
@as("marker") marker: amazonawsString,
@as("uploadId") uploadId: option<amazonawsString>,
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("Parts") parts: partList,
@as("CreationDate") creationDate: amazonawsString,
@as("PartSizeInBytes") partSizeInBytes: long,
@as("ArchiveDescription") archiveDescription: amazonawsString,
@as("VaultARN") vaultARN: amazonawsString,
@as("MultipartUploadId") multipartUploadId: amazonawsString
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "ListPartsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMultipartUploads = {
  type t;
  type request = {
@as("marker") marker: amazonawsString,
@as("limit") limit: apiInteger,
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("UploadsList") uploadsList: uploadsList
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "ListMultipartUploadsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVaultNotifications = {
  type t;
  type request = {
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("vaultNotificationConfig") vaultNotificationConfig: vaultNotificationConfig
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "GetVaultNotificationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetDataRetrievalPolicy = {
  type t;
  type request = {
@as("Policy") policy: dataRetrievalPolicy,
@as("accountId") accountId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "SetDataRetrievalPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetDataRetrievalPolicy = {
  type t;
  type request = {
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("Policy") policy: dataRetrievalPolicy
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "GetDataRetrievalPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeJob = {
  type t;
  type request = {
@as("jobId") jobId: option<amazonawsString>,
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  type response = glacierJobDescription;
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "DescribeJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InitiateJob = {
  type t;
  type request = {
@as("jobParameters") jobParameters: jobParameters,
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("jobOutputPath") jobOutputPath: amazonawsString,
@as("jobId") jobId: amazonawsString,
@as("location") location: amazonawsString
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "InitiateJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJobs = {
  type t;
  type request = {
@as("completed") completed: amazonawsString,
@as("statuscode") statuscode: amazonawsString,
@as("marker") marker: amazonawsString,
@as("limit") limit: apiInteger,
@as("vaultName") vaultName: option<amazonawsString>,
@as("accountId") accountId: option<amazonawsString>
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("JobList") jobList: jobList
}
  @module("@aws-sdk/client-glacier") @new external new_: (Js.Promise.t<request>) => t = "ListJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
