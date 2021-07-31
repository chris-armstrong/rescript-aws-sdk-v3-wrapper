type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type long = float
type __stringMin24Max24PatternAZaZ094AZaZ092AZaZ093 = string
type __stringMin0Max16384 = string
type __string = string
type __doubleMin0 = float
type __double = float
type __boolean = bool
type type_ = [@as("EXPORT_REVISIONS_TO_S3") #EXPORTREVISIONSTOS3 | @as("EXPORT_ASSET_TO_SIGNED_URL") #EXPORTASSETTOSIGNEDURL | @as("EXPORT_ASSETS_TO_S3") #EXPORTASSETSTOS3 | @as("IMPORT_ASSET_FROM_SIGNED_URL") #IMPORTASSETFROMSIGNEDURL | @as("IMPORT_ASSETS_FROM_S3") #IMPORTASSETSFROMS3]
type timestamp_ = Js.Date.t;
type state = [@as("TIMED_OUT") #TIMEDOUT | @as("CANCELLED") #CANCELLED | @as("COMPLETED") #COMPLETED | @as("ERROR") #ERROR | @as("IN_PROGRESS") #INPROGRESS | @as("WAITING") #WAITING]
type serverSideEncryptionTypes = [@as("AES256") #AES256 | @as("aws:kms") #AwsKms]
type resourceType = [@as("JOB") #JOB | @as("ASSET") #ASSET | @as("REVISION") #REVISION | @as("DATA_SET") #DATASET]
type origin = [@as("ENTITLED") #ENTITLED | @as("OWNED") #OWNED]
type nextToken = string
type name = string
type maxResults = int
type limitName = [@as("Concurrent in progress jobs to export assets to a signed URL") #ConcurrentInProgressJobsToExportAssetsToASignedURL | @as("Concurrent in progress jobs to export assets to Amazon S3") #ConcurrentInProgressJobsToExportAssetsToAmazonS3 | @as("Concurrent in progress jobs to import assets from a signed URL") #ConcurrentInProgressJobsToImportAssetsFromASignedURL | @as("Concurrent in progress jobs to import assets from Amazon S3") #ConcurrentInProgressJobsToImportAssetsFromAmazonS3 | @as("Asset size in GB") #AssetSizeInGB | @as("Asset per export job from Amazon S3") #AssetPerExportJobFromAmazonS3 | @as("Assets per import job from Amazon S3") #AssetsPerImportJobFromAmazonS3 | @as("Assets per revision") #AssetsPerRevision | @as("Revisions per data set") #RevisionsPerDataSet | @as("Data sets per product") #DataSetsPerProduct | @as("Data sets per account") #DataSetsPerAccount | @as("Products per account") #ProductsPerAccount]
type jobErrorResourceTypes = [@as("ASSET") #ASSET | @as("REVISION") #REVISION]
type jobErrorLimitName = [@as("Asset size in GB") #AssetSizeInGB | @as("Assets per revision") #AssetsPerRevision]
type id = string
type description = string
type code = [@as("MALWARE_SCAN_ENCRYPTED_FILE") #MALWARESCANENCRYPTEDFILE | @as("VALIDATION_EXCEPTION") #VALIDATIONEXCEPTION | @as("SERVICE_QUOTA_EXCEEDED_EXCEPTION") #SERVICEQUOTAEXCEEDEDEXCEPTION | @as("RESOURCE_NOT_FOUND_EXCEPTION") #RESOURCENOTFOUNDEXCEPTION | @as("MALWARE_DETECTED") #MALWAREDETECTED | @as("INTERNAL_SERVER_EXCEPTION") #INTERNALSERVEREXCEPTION | @as("ACCESS_DENIED_EXCEPTION") #ACCESSDENIEDEXCEPTION]
type assetType = [@as("S3_SNAPSHOT") #S3SNAPSHOT]
type assetName = string
type arn = string
type s3SnapshotAsset = {
@as("Size") size: __doubleMin0
}
type revisionEntry = {
@as("UpdatedAt") updatedAt: timestamp_,
@as("SourceId") sourceId: option<id>,
@as("Id") id: id,
@as("Finalized") finalized: option<__boolean>,
@as("DataSetId") dataSetId: id,
@as("CreatedAt") createdAt: timestamp_,
@as("Comment") comment: option<__stringMin0Max16384>,
@as("Arn") arn: arn
}
type revisionDestinationEntry = {
@as("RevisionId") revisionId: id,
@as("KeyPattern") keyPattern: option<__string>,
@as("Bucket") bucket: __string
}
type originDetails = {
@as("ProductId") productId: __string
}
type mapOf__string = Js.Dict.t< __string>
type listOf__string = array<__string>
type importAssetFromSignedUrlResponseDetails = {
@as("SignedUrlExpiresAt") signedUrlExpiresAt: option<timestamp_>,
@as("SignedUrl") signedUrl: option<__string>,
@as("RevisionId") revisionId: id,
@as("Md5Hash") md5Hash: option<__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093>,
@as("DataSetId") dataSetId: id,
@as("AssetName") assetName: assetName
}
type importAssetFromSignedUrlRequestDetails = {
@as("RevisionId") revisionId: id,
@as("Md5Hash") md5Hash: __stringMin24Max24PatternAZaZ094AZaZ092AZaZ093,
@as("DataSetId") dataSetId: id,
@as("AssetName") assetName: assetName
}
type importAssetFromSignedUrlJobErrorDetails = {
@as("AssetName") assetName: assetName
}
type exportServerSideEncryption = {
@as("Type") type_: serverSideEncryptionTypes,
@as("KmsKeyArn") kmsKeyArn: option<__string>
}
type exportAssetToSignedUrlResponseDetails = {
@as("SignedUrlExpiresAt") signedUrlExpiresAt: option<timestamp_>,
@as("SignedUrl") signedUrl: option<__string>,
@as("RevisionId") revisionId: id,
@as("DataSetId") dataSetId: id,
@as("AssetId") assetId: id
}
type exportAssetToSignedUrlRequestDetails = {
@as("RevisionId") revisionId: id,
@as("DataSetId") dataSetId: id,
@as("AssetId") assetId: id
}
type assetSourceEntry = {
@as("Key") key: __string,
@as("Bucket") bucket: __string
}
type assetDestinationEntry = {
@as("Key") key: option<__string>,
@as("Bucket") bucket: __string,
@as("AssetId") assetId: id
}
type listOfRevisionEntry = array<revisionEntry>
type listOfRevisionDestinationEntry = array<revisionDestinationEntry>
type listOfAssetSourceEntry = array<assetSourceEntry>
type listOfAssetDestinationEntry = array<assetDestinationEntry>
type dataSetEntry = {
@as("UpdatedAt") updatedAt: timestamp_,
@as("SourceId") sourceId: option<id>,
@as("OriginDetails") originDetails: option<originDetails>,
@as("Origin") origin: origin,
@as("Name") name: name,
@as("Id") id: id,
@as("Description") description: description,
@as("CreatedAt") createdAt: timestamp_,
@as("AssetType") assetType: assetType,
@as("Arn") arn: arn
}
type assetDetails = {
@as("S3SnapshotAsset") s3SnapshotAsset: option<s3SnapshotAsset>
}
type listOfDataSetEntry = array<dataSetEntry>
type importAssetsFromS3ResponseDetails = {
@as("RevisionId") revisionId: id,
@as("DataSetId") dataSetId: id,
@as("AssetSources") assetSources: listOfAssetSourceEntry
}
type importAssetsFromS3RequestDetails = {
@as("RevisionId") revisionId: id,
@as("DataSetId") dataSetId: id,
@as("AssetSources") assetSources: listOfAssetSourceEntry
}
type exportRevisionsToS3ResponseDetails = {
@as("RevisionDestinations") revisionDestinations: listOfRevisionDestinationEntry,
@as("Encryption") encryption: option<exportServerSideEncryption>,
@as("DataSetId") dataSetId: id
}
type exportRevisionsToS3RequestDetails = {
@as("RevisionDestinations") revisionDestinations: listOfRevisionDestinationEntry,
@as("Encryption") encryption: option<exportServerSideEncryption>,
@as("DataSetId") dataSetId: id
}
type exportAssetsToS3ResponseDetails = {
@as("RevisionId") revisionId: id,
@as("Encryption") encryption: option<exportServerSideEncryption>,
@as("DataSetId") dataSetId: id,
@as("AssetDestinations") assetDestinations: listOfAssetDestinationEntry
}
type exportAssetsToS3RequestDetails = {
@as("RevisionId") revisionId: id,
@as("Encryption") encryption: option<exportServerSideEncryption>,
@as("DataSetId") dataSetId: id,
@as("AssetDestinations") assetDestinations: listOfAssetDestinationEntry
}
type details = {
@as("ImportAssetsFromS3JobErrorDetails") importAssetsFromS3JobErrorDetails: option<listOfAssetSourceEntry>,
@as("ImportAssetFromSignedUrlJobErrorDetails") importAssetFromSignedUrlJobErrorDetails: option<importAssetFromSignedUrlJobErrorDetails>
}
type assetEntry = {
@as("UpdatedAt") updatedAt: timestamp_,
@as("SourceId") sourceId: option<id>,
@as("RevisionId") revisionId: id,
@as("Name") name: assetName,
@as("Id") id: id,
@as("DataSetId") dataSetId: id,
@as("CreatedAt") createdAt: timestamp_,
@as("AssetType") assetType: assetType,
@as("AssetDetails") assetDetails: assetDetails,
@as("Arn") arn: arn
}
type responseDetails = {
@as("ImportAssetsFromS3") importAssetsFromS3: option<importAssetsFromS3ResponseDetails>,
@as("ImportAssetFromSignedUrl") importAssetFromSignedUrl: option<importAssetFromSignedUrlResponseDetails>,
@as("ExportRevisionsToS3") exportRevisionsToS3: option<exportRevisionsToS3ResponseDetails>,
@as("ExportAssetsToS3") exportAssetsToS3: option<exportAssetsToS3ResponseDetails>,
@as("ExportAssetToSignedUrl") exportAssetToSignedUrl: option<exportAssetToSignedUrlResponseDetails>
}
type requestDetails = {
@as("ImportAssetsFromS3") importAssetsFromS3: option<importAssetsFromS3RequestDetails>,
@as("ImportAssetFromSignedUrl") importAssetFromSignedUrl: option<importAssetFromSignedUrlRequestDetails>,
@as("ExportRevisionsToS3") exportRevisionsToS3: option<exportRevisionsToS3RequestDetails>,
@as("ExportAssetsToS3") exportAssetsToS3: option<exportAssetsToS3RequestDetails>,
@as("ExportAssetToSignedUrl") exportAssetToSignedUrl: option<exportAssetToSignedUrlRequestDetails>
}
type listOfAssetEntry = array<assetEntry>
type jobError = {
@as("ResourceType") resourceType: option<jobErrorResourceTypes>,
@as("ResourceId") resourceId: option<__string>,
@as("Message") message: __string,
@as("LimitValue") limitValue: option<__double>,
@as("LimitName") limitName: option<jobErrorLimitName>,
@as("Details") details: option<details>,
@as("Code") code: code
}
type listOfJobError = array<jobError>
type jobEntry = {
@as("UpdatedAt") updatedAt: timestamp_,
@as("Type") type_: type_,
@as("State") state: state,
@as("Id") id: id,
@as("Errors") errors: option<listOfJobError>,
@as("Details") details: responseDetails,
@as("CreatedAt") createdAt: timestamp_,
@as("Arn") arn: arn
}
type listOfJobEntry = array<jobEntry>
type awsServiceClient;
@module("@aws-sdk/client-dataexchange") @new external createClient: unit => awsServiceClient = "DataExchangeClient";
module UpdateRevision = {
  type t;
  type request = {
@as("RevisionId") revisionId: __string,
@as("Finalized") finalized: option<__boolean>,
@as("DataSetId") dataSetId: __string,
@as("Comment") comment: option<__stringMin0Max16384>
}
  type response = {
@as("UpdatedAt") updatedAt: option<timestamp_>,
@as("SourceId") sourceId: option<id>,
@as("Id") id: option<id>,
@as("Finalized") finalized: option<__boolean>,
@as("DataSetId") dataSetId: option<id>,
@as("CreatedAt") createdAt: option<timestamp_>,
@as("Comment") comment: option<__stringMin0Max16384>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "UpdateRevisionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartJob = {
  type t;
  type request = {
@as("JobId") jobId: __string
}
  type response = unit
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "StartJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRevision = {
  type t;
  type request = {
@as("RevisionId") revisionId: __string,
@as("DataSetId") dataSetId: __string
}
  
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "DeleteRevisionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteDataSet = {
  type t;
  type request = {
@as("DataSetId") dataSetId: __string
}
  
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "DeleteDataSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteAsset = {
  type t;
  type request = {
@as("RevisionId") revisionId: __string,
@as("DataSetId") dataSetId: __string,
@as("AssetId") assetId: __string
}
  
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "DeleteAssetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CancelJob = {
  type t;
  type request = {
@as("JobId") jobId: __string
}
  
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "CancelJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateDataSet = {
  type t;
  type request = {
@as("Name") name: option<name>,
@as("Description") description: option<description>,
@as("DataSetId") dataSetId: __string
}
  type response = {
@as("UpdatedAt") updatedAt: option<timestamp_>,
@as("SourceId") sourceId: option<id>,
@as("OriginDetails") originDetails: option<originDetails>,
@as("Origin") origin: option<origin>,
@as("Name") name: option<name>,
@as("Id") id: option<id>,
@as("Description") description: option<description>,
@as("CreatedAt") createdAt: option<timestamp_>,
@as("AssetType") assetType: option<assetType>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "UpdateDataSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: listOf__string,
@as("ResourceArn") resourceArn: __string
}
  
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: mapOf__string,
@as("ResourceArn") resourceArn: __string
}
  
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: __string
}
  type response = {
@as("Tags") tags: option<mapOf__string>
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRevision = {
  type t;
  type request = {
@as("RevisionId") revisionId: __string,
@as("DataSetId") dataSetId: __string
}
  type response = {
@as("UpdatedAt") updatedAt: option<timestamp_>,
@as("Tags") tags: option<mapOf__string>,
@as("SourceId") sourceId: option<id>,
@as("Id") id: option<id>,
@as("Finalized") finalized: option<__boolean>,
@as("DataSetId") dataSetId: option<id>,
@as("CreatedAt") createdAt: option<timestamp_>,
@as("Comment") comment: option<__stringMin0Max16384>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "GetRevisionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDataSet = {
  type t;
  type request = {
@as("DataSetId") dataSetId: __string
}
  type response = {
@as("UpdatedAt") updatedAt: option<timestamp_>,
@as("Tags") tags: option<mapOf__string>,
@as("SourceId") sourceId: option<id>,
@as("OriginDetails") originDetails: option<originDetails>,
@as("Origin") origin: option<origin>,
@as("Name") name: option<name>,
@as("Id") id: option<id>,
@as("Description") description: option<description>,
@as("CreatedAt") createdAt: option<timestamp_>,
@as("AssetType") assetType: option<assetType>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "GetDataSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRevision = {
  type t;
  type request = {
@as("Tags") tags: option<mapOf__string>,
@as("DataSetId") dataSetId: __string,
@as("Comment") comment: option<__stringMin0Max16384>
}
  type response = {
@as("UpdatedAt") updatedAt: option<timestamp_>,
@as("Tags") tags: option<mapOf__string>,
@as("SourceId") sourceId: option<id>,
@as("Id") id: option<id>,
@as("Finalized") finalized: option<__boolean>,
@as("DataSetId") dataSetId: option<id>,
@as("CreatedAt") createdAt: option<timestamp_>,
@as("Comment") comment: option<__stringMin0Max16384>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "CreateRevisionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDataSet = {
  type t;
  type request = {
@as("Tags") tags: option<mapOf__string>,
@as("Name") name: name,
@as("Description") description: description,
@as("AssetType") assetType: assetType
}
  type response = {
@as("UpdatedAt") updatedAt: option<timestamp_>,
@as("Tags") tags: option<mapOf__string>,
@as("SourceId") sourceId: option<id>,
@as("OriginDetails") originDetails: option<originDetails>,
@as("Origin") origin: option<origin>,
@as("Name") name: option<name>,
@as("Id") id: option<id>,
@as("Description") description: option<description>,
@as("CreatedAt") createdAt: option<timestamp_>,
@as("AssetType") assetType: option<assetType>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "CreateDataSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAsset = {
  type t;
  type request = {
@as("RevisionId") revisionId: __string,
@as("Name") name: assetName,
@as("DataSetId") dataSetId: __string,
@as("AssetId") assetId: __string
}
  type response = {
@as("UpdatedAt") updatedAt: option<timestamp_>,
@as("SourceId") sourceId: option<id>,
@as("RevisionId") revisionId: option<id>,
@as("Name") name: option<assetName>,
@as("Id") id: option<id>,
@as("DataSetId") dataSetId: option<id>,
@as("CreatedAt") createdAt: option<timestamp_>,
@as("AssetType") assetType: option<assetType>,
@as("AssetDetails") assetDetails: option<assetDetails>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "UpdateAssetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDataSetRevisions = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>,
@as("DataSetId") dataSetId: __string
}
  type response = {
@as("Revisions") revisions: option<listOfRevisionEntry>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "ListDataSetRevisionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAsset = {
  type t;
  type request = {
@as("RevisionId") revisionId: __string,
@as("DataSetId") dataSetId: __string,
@as("AssetId") assetId: __string
}
  type response = {
@as("UpdatedAt") updatedAt: option<timestamp_>,
@as("SourceId") sourceId: option<id>,
@as("RevisionId") revisionId: option<id>,
@as("Name") name: option<assetName>,
@as("Id") id: option<id>,
@as("DataSetId") dataSetId: option<id>,
@as("CreatedAt") createdAt: option<timestamp_>,
@as("AssetType") assetType: option<assetType>,
@as("AssetDetails") assetDetails: option<assetDetails>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "GetAssetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDataSets = {
  type t;
  type request = {
@as("Origin") origin: option<__string>,
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("DataSets") dataSets: option<listOfDataSetEntry>
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "ListDataSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRevisionAssets = {
  type t;
  type request = {
@as("RevisionId") revisionId: __string,
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>,
@as("DataSetId") dataSetId: __string
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Assets") assets: option<listOfAssetEntry>
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "ListRevisionAssetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetJob = {
  type t;
  type request = {
@as("JobId") jobId: __string
}
  type response = {
@as("UpdatedAt") updatedAt: option<timestamp_>,
@as("Type") type_: option<type_>,
@as("State") state: option<state>,
@as("Id") id: option<id>,
@as("Errors") errors: option<listOfJobError>,
@as("Details") details: option<responseDetails>,
@as("CreatedAt") createdAt: option<timestamp_>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "GetJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateJob = {
  type t;
  type request = {
@as("Type") type_: type_,
@as("Details") details: requestDetails
}
  type response = {
@as("UpdatedAt") updatedAt: option<timestamp_>,
@as("Type") type_: option<type_>,
@as("State") state: option<state>,
@as("Id") id: option<id>,
@as("Errors") errors: option<listOfJobError>,
@as("Details") details: option<responseDetails>,
@as("CreatedAt") createdAt: option<timestamp_>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "CreateJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListJobs = {
  type t;
  type request = {
@as("RevisionId") revisionId: option<__string>,
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>,
@as("DataSetId") dataSetId: option<__string>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Jobs") jobs: option<listOfJobEntry>
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (request) => t = "ListJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
