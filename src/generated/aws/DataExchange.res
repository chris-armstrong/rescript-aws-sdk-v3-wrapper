type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-dataexchange") @new
external createClient: unit => awsServiceClient = "DataExchangeClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __stringMin24Max24PatternAZaZ094AZaZ092AZaZ093 = string
type __stringMin0Max16384 = string
type __string = string
type __doubleMin0 = float
type __double = float
type __boolean = bool
type type_ = [
  | @as("EXPORT_REVISIONS_TO_S3") #EXPORT_REVISIONS_TO_S3
  | @as("EXPORT_ASSET_TO_SIGNED_URL") #EXPORT_ASSET_TO_SIGNED_URL
  | @as("EXPORT_ASSETS_TO_S3") #EXPORT_ASSETS_TO_S3
  | @as("IMPORT_ASSET_FROM_SIGNED_URL") #IMPORT_ASSET_FROM_SIGNED_URL
  | @as("IMPORT_ASSETS_FROM_S3") #IMPORT_ASSETS_FROM_S3
]
type timestamp_ = Js.Date.t
type state = [
  | @as("TIMED_OUT") #TIMED_OUT
  | @as("CANCELLED") #CANCELLED
  | @as("COMPLETED") #COMPLETED
  | @as("ERROR") #ERROR
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("WAITING") #WAITING
]
type serverSideEncryptionTypes = [@as("AES256") #AES256 | @as("aws:kms") #Aws_Kms]
type resourceType = [
  | @as("JOB") #JOB
  | @as("ASSET") #ASSET
  | @as("REVISION") #REVISION
  | @as("DATA_SET") #DATA_SET
]
type origin = [@as("ENTITLED") #ENTITLED | @as("OWNED") #OWNED]
type nextToken = string
type name = string
type maxResults = int
type limitName = [
  | @as("Concurrent in progress jobs to export assets to a signed URL")
  #Concurrent_In_Progress_Jobs_To_Export_Assets_To_A_Signed_URL
  | @as("Concurrent in progress jobs to export assets to Amazon S3")
  #Concurrent_In_Progress_Jobs_To_Export_Assets_To_Amazon_S3
  | @as("Concurrent in progress jobs to import assets from a signed URL")
  #Concurrent_In_Progress_Jobs_To_Import_Assets_From_A_Signed_URL
  | @as("Concurrent in progress jobs to import assets from Amazon S3")
  #Concurrent_In_Progress_Jobs_To_Import_Assets_From_Amazon_S3
  | @as("Asset size in GB") #Asset_Size_In_GB
  | @as("Asset per export job from Amazon S3") #Asset_Per_Export_Job_From_Amazon_S3
  | @as("Assets per import job from Amazon S3") #Assets_Per_Import_Job_From_Amazon_S3
  | @as("Assets per revision") #Assets_Per_Revision
  | @as("Revisions per data set") #Revisions_Per_Data_Set
  | @as("Data sets per product") #Data_Sets_Per_Product
  | @as("Data sets per account") #Data_Sets_Per_Account
  | @as("Products per account") #Products_Per_Account
]
type jobErrorResourceTypes = [@as("ASSET") #ASSET | @as("REVISION") #REVISION]
type jobErrorLimitName = [
  | @as("Asset size in GB") #Asset_Size_In_GB
  | @as("Assets per revision") #Assets_Per_Revision
]
type id = string
type description = string
type code = [
  | @as("MALWARE_SCAN_ENCRYPTED_FILE") #MALWARE_SCAN_ENCRYPTED_FILE
  | @as("VALIDATION_EXCEPTION") #VALIDATION_EXCEPTION
  | @as("SERVICE_QUOTA_EXCEEDED_EXCEPTION") #SERVICE_QUOTA_EXCEEDED_EXCEPTION
  | @as("RESOURCE_NOT_FOUND_EXCEPTION") #RESOURCE_NOT_FOUND_EXCEPTION
  | @as("MALWARE_DETECTED") #MALWARE_DETECTED
  | @as("INTERNAL_SERVER_EXCEPTION") #INTERNAL_SERVER_EXCEPTION
  | @as("ACCESS_DENIED_EXCEPTION") #ACCESS_DENIED_EXCEPTION
]
type assetType = [@as("S3_SNAPSHOT") #S3_SNAPSHOT]
type assetName = string
type arn = string
type s3SnapshotAsset = {@as("Size") size: __doubleMin0}
type revisionEntry = {
  @as("UpdatedAt") updatedAt: timestamp_,
  @as("SourceId") sourceId: option<id>,
  @as("Id") id: id,
  @as("Finalized") finalized: option<__boolean>,
  @as("DataSetId") dataSetId: id,
  @as("CreatedAt") createdAt: timestamp_,
  @as("Comment") comment: option<__stringMin0Max16384>,
  @as("Arn") arn: arn,
}
type revisionDestinationEntry = {
  @as("RevisionId") revisionId: id,
  @as("KeyPattern") keyPattern: option<__string>,
  @as("Bucket") bucket: __string,
}
type originDetails = {@as("ProductId") productId: __string}
type mapOf__string = Js.Dict.t<__string>
type listOf__string = array<__string>
type importAssetFromSignedUrlResponseDetails = {
  @as("SignedUrlExpiresAt") signedUrlExpiresAt: option<timestamp_>,
  @as("SignedUrl") signedUrl: option<__string>,
  @as("RevisionId") revisionId: id,
  @as("Md5Hash") md5Hash: option<__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093>,
  @as("DataSetId") dataSetId: id,
  @as("AssetName") assetName: assetName,
}
type importAssetFromSignedUrlRequestDetails = {
  @as("RevisionId") revisionId: id,
  @as("Md5Hash") md5Hash: __stringMin24Max24PatternAZaZ094AZaZ092AZaZ093,
  @as("DataSetId") dataSetId: id,
  @as("AssetName") assetName: assetName,
}
type importAssetFromSignedUrlJobErrorDetails = {@as("AssetName") assetName: assetName}
type exportServerSideEncryption = {
  @as("Type") type_: serverSideEncryptionTypes,
  @as("KmsKeyArn") kmsKeyArn: option<__string>,
}
type exportAssetToSignedUrlResponseDetails = {
  @as("SignedUrlExpiresAt") signedUrlExpiresAt: option<timestamp_>,
  @as("SignedUrl") signedUrl: option<__string>,
  @as("RevisionId") revisionId: id,
  @as("DataSetId") dataSetId: id,
  @as("AssetId") assetId: id,
}
type exportAssetToSignedUrlRequestDetails = {
  @as("RevisionId") revisionId: id,
  @as("DataSetId") dataSetId: id,
  @as("AssetId") assetId: id,
}
type assetSourceEntry = {
  @as("Key") key: __string,
  @as("Bucket") bucket: __string,
}
type assetDestinationEntry = {
  @as("Key") key: option<__string>,
  @as("Bucket") bucket: __string,
  @as("AssetId") assetId: id,
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
  @as("Arn") arn: arn,
}
type assetDetails = {@as("S3SnapshotAsset") s3SnapshotAsset: option<s3SnapshotAsset>}
type listOfDataSetEntry = array<dataSetEntry>
type importAssetsFromS3ResponseDetails = {
  @as("RevisionId") revisionId: id,
  @as("DataSetId") dataSetId: id,
  @as("AssetSources") assetSources: listOfAssetSourceEntry,
}
type importAssetsFromS3RequestDetails = {
  @as("RevisionId") revisionId: id,
  @as("DataSetId") dataSetId: id,
  @as("AssetSources") assetSources: listOfAssetSourceEntry,
}
type exportRevisionsToS3ResponseDetails = {
  @as("RevisionDestinations") revisionDestinations: listOfRevisionDestinationEntry,
  @as("Encryption") encryption: option<exportServerSideEncryption>,
  @as("DataSetId") dataSetId: id,
}
type exportRevisionsToS3RequestDetails = {
  @as("RevisionDestinations") revisionDestinations: listOfRevisionDestinationEntry,
  @as("Encryption") encryption: option<exportServerSideEncryption>,
  @as("DataSetId") dataSetId: id,
}
type exportAssetsToS3ResponseDetails = {
  @as("RevisionId") revisionId: id,
  @as("Encryption") encryption: option<exportServerSideEncryption>,
  @as("DataSetId") dataSetId: id,
  @as("AssetDestinations") assetDestinations: listOfAssetDestinationEntry,
}
type exportAssetsToS3RequestDetails = {
  @as("RevisionId") revisionId: id,
  @as("Encryption") encryption: option<exportServerSideEncryption>,
  @as("DataSetId") dataSetId: id,
  @as("AssetDestinations") assetDestinations: listOfAssetDestinationEntry,
}
type details = {
  @as("ImportAssetsFromS3JobErrorDetails")
  importAssetsFromS3JobErrorDetails: option<listOfAssetSourceEntry>,
  @as("ImportAssetFromSignedUrlJobErrorDetails")
  importAssetFromSignedUrlJobErrorDetails: option<importAssetFromSignedUrlJobErrorDetails>,
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
  @as("Arn") arn: arn,
}
type responseDetails = {
  @as("ImportAssetsFromS3") importAssetsFromS3: option<importAssetsFromS3ResponseDetails>,
  @as("ImportAssetFromSignedUrl")
  importAssetFromSignedUrl: option<importAssetFromSignedUrlResponseDetails>,
  @as("ExportRevisionsToS3") exportRevisionsToS3: option<exportRevisionsToS3ResponseDetails>,
  @as("ExportAssetsToS3") exportAssetsToS3: option<exportAssetsToS3ResponseDetails>,
  @as("ExportAssetToSignedUrl")
  exportAssetToSignedUrl: option<exportAssetToSignedUrlResponseDetails>,
}
type requestDetails = {
  @as("ImportAssetsFromS3") importAssetsFromS3: option<importAssetsFromS3RequestDetails>,
  @as("ImportAssetFromSignedUrl")
  importAssetFromSignedUrl: option<importAssetFromSignedUrlRequestDetails>,
  @as("ExportRevisionsToS3") exportRevisionsToS3: option<exportRevisionsToS3RequestDetails>,
  @as("ExportAssetsToS3") exportAssetsToS3: option<exportAssetsToS3RequestDetails>,
  @as("ExportAssetToSignedUrl")
  exportAssetToSignedUrl: option<exportAssetToSignedUrlRequestDetails>,
}
type listOfAssetEntry = array<assetEntry>
type jobError = {
  @as("ResourceType") resourceType: option<jobErrorResourceTypes>,
  @as("ResourceId") resourceId: option<__string>,
  @as("Message") message: __string,
  @as("LimitValue") limitValue: option<__double>,
  @as("LimitName") limitName: option<jobErrorLimitName>,
  @as("Details") details: option<details>,
  @as("Code") code: code,
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
  @as("Arn") arn: arn,
}
type listOfJobEntry = array<jobEntry>

module UpdateRevision = {
  type t
  type request = {
    @as("RevisionId") revisionId: __string,
    @as("Finalized") finalized: option<__boolean>,
    @as("DataSetId") dataSetId: __string,
    @as("Comment") comment: option<__stringMin0Max16384>,
  }
  type response = {
    @as("UpdatedAt") updatedAt: option<timestamp_>,
    @as("SourceId") sourceId: option<id>,
    @as("Id") id: option<id>,
    @as("Finalized") finalized: option<__boolean>,
    @as("DataSetId") dataSetId: option<id>,
    @as("CreatedAt") createdAt: option<timestamp_>,
    @as("Comment") comment: option<__stringMin0Max16384>,
    @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "UpdateRevisionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartJob = {
  type t
  type request = {@as("JobId") jobId: __string}
  type response = unit
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "StartJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRevision = {
  type t
  type request = {
    @as("RevisionId") revisionId: __string,
    @as("DataSetId") dataSetId: __string,
  }

  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "DeleteRevisionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDataSet = {
  type t
  type request = {@as("DataSetId") dataSetId: __string}

  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "DeleteDataSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAsset = {
  type t
  type request = {
    @as("RevisionId") revisionId: __string,
    @as("DataSetId") dataSetId: __string,
    @as("AssetId") assetId: __string,
  }

  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "DeleteAssetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelJob = {
  type t
  type request = {@as("JobId") jobId: __string}

  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "CancelJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateDataSet = {
  type t
  type request = {
    @as("Name") name: option<name>,
    @as("Description") description: option<description>,
    @as("DataSetId") dataSetId: __string,
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
    @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "UpdateDataSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: listOf__string,
    @as("ResourceArn") resourceArn: __string,
  }

  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: mapOf__string,
    @as("ResourceArn") resourceArn: __string,
  }

  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: __string}
  type response = {@as("Tags") tags: option<mapOf__string>}
  @module("@aws-sdk/client-dataexchange") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRevision = {
  type t
  type request = {
    @as("RevisionId") revisionId: __string,
    @as("DataSetId") dataSetId: __string,
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
    @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "GetRevisionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDataSet = {
  type t
  type request = {@as("DataSetId") dataSetId: __string}
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
    @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "GetDataSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRevision = {
  type t
  type request = {
    @as("Tags") tags: option<mapOf__string>,
    @as("DataSetId") dataSetId: __string,
    @as("Comment") comment: option<__stringMin0Max16384>,
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
    @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "CreateRevisionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataSet = {
  type t
  type request = {
    @as("Tags") tags: option<mapOf__string>,
    @as("Name") name: name,
    @as("Description") description: description,
    @as("AssetType") assetType: assetType,
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
    @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "CreateDataSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAsset = {
  type t
  type request = {
    @as("RevisionId") revisionId: __string,
    @as("Name") name: assetName,
    @as("DataSetId") dataSetId: __string,
    @as("AssetId") assetId: __string,
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
    @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "UpdateAssetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDataSetRevisions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("DataSetId") dataSetId: __string,
  }
  type response = {
    @as("Revisions") revisions: option<listOfRevisionEntry>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-dataexchange") @new
  external new: request => t = "ListDataSetRevisionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAsset = {
  type t
  type request = {
    @as("RevisionId") revisionId: __string,
    @as("DataSetId") dataSetId: __string,
    @as("AssetId") assetId: __string,
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
    @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "GetAssetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDataSets = {
  type t
  type request = {
    @as("Origin") origin: option<__string>,
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("DataSets") dataSets: option<listOfDataSetEntry>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "ListDataSetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRevisionAssets = {
  type t
  type request = {
    @as("RevisionId") revisionId: __string,
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("DataSetId") dataSetId: __string,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Assets") assets: option<listOfAssetEntry>,
  }
  @module("@aws-sdk/client-dataexchange") @new
  external new: request => t = "ListRevisionAssetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJob = {
  type t
  type request = {@as("JobId") jobId: __string}
  type response = {
    @as("UpdatedAt") updatedAt: option<timestamp_>,
    @as("Type") type_: option<type_>,
    @as("State") state: option<state>,
    @as("Id") id: option<id>,
    @as("Errors") errors: option<listOfJobError>,
    @as("Details") details: option<responseDetails>,
    @as("CreatedAt") createdAt: option<timestamp_>,
    @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "GetJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateJob = {
  type t
  type request = {
    @as("Type") type_: type_,
    @as("Details") details: requestDetails,
  }
  type response = {
    @as("UpdatedAt") updatedAt: option<timestamp_>,
    @as("Type") type_: option<type_>,
    @as("State") state: option<state>,
    @as("Id") id: option<id>,
    @as("Errors") errors: option<listOfJobError>,
    @as("Details") details: option<responseDetails>,
    @as("CreatedAt") createdAt: option<timestamp_>,
    @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "CreateJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobs = {
  type t
  type request = {
    @as("RevisionId") revisionId: option<__string>,
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("DataSetId") dataSetId: option<__string>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Jobs") jobs: option<listOfJobEntry>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "ListJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
