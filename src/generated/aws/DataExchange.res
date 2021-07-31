type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __stringMin24Max24PatternAZaZ094AZaZ092AZaZ093 = string
type __stringMin0Max16384 = string
type __string = string
type __doubleMin0 = float;
type __double = float;
type __boolean = bool;
type type_ = [@as("EXPORT_REVISIONS_TO_S3") #EXPORT_REVISIONS_TO_S3 | @as("EXPORT_ASSET_TO_SIGNED_URL") #EXPORT_ASSET_TO_SIGNED_URL | @as("EXPORT_ASSETS_TO_S3") #EXPORT_ASSETS_TO_S3 | @as("IMPORT_ASSET_FROM_SIGNED_URL") #IMPORT_ASSET_FROM_SIGNED_URL | @as("IMPORT_ASSETS_FROM_S3") #IMPORT_ASSETS_FROM_S3]
type amazonawsTimestamp = Js.Date.t;
type state = [@as("TIMED_OUT") #TIMED_OUT | @as("CANCELLED") #CANCELLED | @as("COMPLETED") #COMPLETED | @as("ERROR") #ERROR | @as("IN_PROGRESS") #IN_PROGRESS | @as("WAITING") #WAITING]
type serverSideEncryptionTypes = [@as("AES256") #AES256 | @as("aws:kms") #aws_kms]
type resourceType = [@as("JOB") #JOB | @as("ASSET") #ASSET | @as("REVISION") #REVISION | @as("DATA_SET") #DATA_SET]
type origin = [@as("ENTITLED") #ENTITLED | @as("OWNED") #OWNED]
type nextToken = string
type name = string
type maxResults = int;
type limitName = [@as("Concurrent in progress jobs to export assets to a signed URL") #Concurrent in progress jobs to export assets to a signed URL | @as("Concurrent in progress jobs to export assets to Amazon S3") #Concurrent in progress jobs to export assets to Amazon S3 | @as("Concurrent in progress jobs to import assets from a signed URL") #Concurrent in progress jobs to import assets from a signed URL | @as("Concurrent in progress jobs to import assets from Amazon S3") #Concurrent in progress jobs to import assets from Amazon S3 | @as("Asset size in GB") #Asset size in GB | @as("Asset per export job from Amazon S3") #Asset per export job from Amazon S3 | @as("Assets per import job from Amazon S3") #Assets per import job from Amazon S3 | @as("Assets per revision") #Assets per revision | @as("Revisions per data set") #Revisions per data set | @as("Data sets per product") #Data sets per product | @as("Data sets per account") #Data sets per account | @as("Products per account") #Products per account]
type jobErrorResourceTypes = [@as("ASSET") #ASSET | @as("REVISION") #REVISION]
type jobErrorLimitName = [@as("Asset size in GB") #Asset size in GB | @as("Assets per revision") #Assets per revision]
type id = string
type description = string
type code = [@as("MALWARE_SCAN_ENCRYPTED_FILE") #MALWARE_SCAN_ENCRYPTED_FILE | @as("VALIDATION_EXCEPTION") #VALIDATION_EXCEPTION | @as("SERVICE_QUOTA_EXCEEDED_EXCEPTION") #SERVICE_QUOTA_EXCEEDED_EXCEPTION | @as("RESOURCE_NOT_FOUND_EXCEPTION") #RESOURCE_NOT_FOUND_EXCEPTION | @as("MALWARE_DETECTED") #MALWARE_DETECTED | @as("INTERNAL_SERVER_EXCEPTION") #INTERNAL_SERVER_EXCEPTION | @as("ACCESS_DENIED_EXCEPTION") #ACCESS_DENIED_EXCEPTION]
type assetType = [@as("S3_SNAPSHOT") #S3_SNAPSHOT]
type assetName = string
type arn = string
type s3SnapshotAsset = {
@as("Size") size: option<__doubleMin0>
}
type revisionEntry = {
@as("UpdatedAt") updatedAt: option<amazonawsTimestamp>,
@as("SourceId") sourceId: id,
@as("Id") id: option<id>,
@as("Finalized") finalized: __boolean,
@as("DataSetId") dataSetId: option<id>,
@as("CreatedAt") createdAt: option<amazonawsTimestamp>,
@as("Comment") comment: __stringMin0Max16384,
@as("Arn") arn: option<arn>
}
type revisionDestinationEntry = {
@as("RevisionId") revisionId: option<id>,
@as("KeyPattern") keyPattern: __string,
@as("Bucket") bucket: option<__string>
}
type originDetails = {
@as("ProductId") productId: option<__string>
}
type mapOf__string = Js.Dict.t< __string>
type listOf__string = array<__string>
type importAssetFromSignedUrlResponseDetails = {
@as("SignedUrlExpiresAt") signedUrlExpiresAt: amazonawsTimestamp,
@as("SignedUrl") signedUrl: __string,
@as("RevisionId") revisionId: option<id>,
@as("Md5Hash") md5Hash: __stringMin24Max24PatternAZaZ094AZaZ092AZaZ093,
@as("DataSetId") dataSetId: option<id>,
@as("AssetName") assetName: option<assetName>
}
type importAssetFromSignedUrlRequestDetails = {
@as("RevisionId") revisionId: option<id>,
@as("Md5Hash") md5Hash: option<__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093>,
@as("DataSetId") dataSetId: option<id>,
@as("AssetName") assetName: option<assetName>
}
type importAssetFromSignedUrlJobErrorDetails = {
@as("AssetName") assetName: option<assetName>
}
type exportServerSideEncryption = {
@as("Type") type_: option<serverSideEncryptionTypes>,
@as("KmsKeyArn") kmsKeyArn: __string
}
type exportAssetToSignedUrlResponseDetails = {
@as("SignedUrlExpiresAt") signedUrlExpiresAt: amazonawsTimestamp,
@as("SignedUrl") signedUrl: __string,
@as("RevisionId") revisionId: option<id>,
@as("DataSetId") dataSetId: option<id>,
@as("AssetId") assetId: option<id>
}
type exportAssetToSignedUrlRequestDetails = {
@as("RevisionId") revisionId: option<id>,
@as("DataSetId") dataSetId: option<id>,
@as("AssetId") assetId: option<id>
}
type assetSourceEntry = {
@as("Key") key: option<__string>,
@as("Bucket") bucket: option<__string>
}
type assetDestinationEntry = {
@as("Key") key: __string,
@as("Bucket") bucket: option<__string>,
@as("AssetId") assetId: option<id>
}
type listOfRevisionEntry = array<revisionEntry>
type listOfRevisionDestinationEntry = array<revisionDestinationEntry>
type listOfAssetSourceEntry = array<assetSourceEntry>
type listOfAssetDestinationEntry = array<assetDestinationEntry>
type dataSetEntry = {
@as("UpdatedAt") updatedAt: option<amazonawsTimestamp>,
@as("SourceId") sourceId: id,
@as("OriginDetails") originDetails: originDetails,
@as("Origin") origin: option<origin>,
@as("Name") name: option<name>,
@as("Id") id: option<id>,
@as("Description") description: option<description>,
@as("CreatedAt") createdAt: option<amazonawsTimestamp>,
@as("AssetType") assetType: option<assetType>,
@as("Arn") arn: option<arn>
}
type assetDetails = {
@as("S3SnapshotAsset") s3SnapshotAsset: s3SnapshotAsset
}
type listOfDataSetEntry = array<dataSetEntry>
type importAssetsFromS3ResponseDetails = {
@as("RevisionId") revisionId: option<id>,
@as("DataSetId") dataSetId: option<id>,
@as("AssetSources") assetSources: option<listOfAssetSourceEntry>
}
type importAssetsFromS3RequestDetails = {
@as("RevisionId") revisionId: option<id>,
@as("DataSetId") dataSetId: option<id>,
@as("AssetSources") assetSources: option<listOfAssetSourceEntry>
}
type exportRevisionsToS3ResponseDetails = {
@as("RevisionDestinations") revisionDestinations: option<listOfRevisionDestinationEntry>,
@as("Encryption") encryption: exportServerSideEncryption,
@as("DataSetId") dataSetId: option<id>
}
type exportRevisionsToS3RequestDetails = {
@as("RevisionDestinations") revisionDestinations: option<listOfRevisionDestinationEntry>,
@as("Encryption") encryption: exportServerSideEncryption,
@as("DataSetId") dataSetId: option<id>
}
type exportAssetsToS3ResponseDetails = {
@as("RevisionId") revisionId: option<id>,
@as("Encryption") encryption: exportServerSideEncryption,
@as("DataSetId") dataSetId: option<id>,
@as("AssetDestinations") assetDestinations: option<listOfAssetDestinationEntry>
}
type exportAssetsToS3RequestDetails = {
@as("RevisionId") revisionId: option<id>,
@as("Encryption") encryption: exportServerSideEncryption,
@as("DataSetId") dataSetId: option<id>,
@as("AssetDestinations") assetDestinations: option<listOfAssetDestinationEntry>
}
type details = {
@as("ImportAssetsFromS3JobErrorDetails") importAssetsFromS3JobErrorDetails: listOfAssetSourceEntry,
@as("ImportAssetFromSignedUrlJobErrorDetails") importAssetFromSignedUrlJobErrorDetails: importAssetFromSignedUrlJobErrorDetails
}
type assetEntry = {
@as("UpdatedAt") updatedAt: option<amazonawsTimestamp>,
@as("SourceId") sourceId: id,
@as("RevisionId") revisionId: option<id>,
@as("Name") name: option<assetName>,
@as("Id") id: option<id>,
@as("DataSetId") dataSetId: option<id>,
@as("CreatedAt") createdAt: option<amazonawsTimestamp>,
@as("AssetType") assetType: option<assetType>,
@as("AssetDetails") assetDetails: option<assetDetails>,
@as("Arn") arn: option<arn>
}
type responseDetails = {
@as("ImportAssetsFromS3") importAssetsFromS3: importAssetsFromS3ResponseDetails,
@as("ImportAssetFromSignedUrl") importAssetFromSignedUrl: importAssetFromSignedUrlResponseDetails,
@as("ExportRevisionsToS3") exportRevisionsToS3: exportRevisionsToS3ResponseDetails,
@as("ExportAssetsToS3") exportAssetsToS3: exportAssetsToS3ResponseDetails,
@as("ExportAssetToSignedUrl") exportAssetToSignedUrl: exportAssetToSignedUrlResponseDetails
}
type requestDetails = {
@as("ImportAssetsFromS3") importAssetsFromS3: importAssetsFromS3RequestDetails,
@as("ImportAssetFromSignedUrl") importAssetFromSignedUrl: importAssetFromSignedUrlRequestDetails,
@as("ExportRevisionsToS3") exportRevisionsToS3: exportRevisionsToS3RequestDetails,
@as("ExportAssetsToS3") exportAssetsToS3: exportAssetsToS3RequestDetails,
@as("ExportAssetToSignedUrl") exportAssetToSignedUrl: exportAssetToSignedUrlRequestDetails
}
type listOfAssetEntry = array<assetEntry>
type jobError = {
@as("ResourceType") resourceType: jobErrorResourceTypes,
@as("ResourceId") resourceId: __string,
@as("Message") message: option<__string>,
@as("LimitValue") limitValue: __double,
@as("LimitName") limitName: jobErrorLimitName,
@as("Details") details: details,
@as("Code") code: option<code>
}
type listOfJobError = array<jobError>
type jobEntry = {
@as("UpdatedAt") updatedAt: option<amazonawsTimestamp>,
@as("Type") type_: option<type_>,
@as("State") state: option<state>,
@as("Id") id: option<id>,
@as("Errors") errors: listOfJobError,
@as("Details") details: option<responseDetails>,
@as("CreatedAt") createdAt: option<amazonawsTimestamp>,
@as("Arn") arn: option<arn>
}
type listOfJobEntry = array<jobEntry>
type clientType;
@module("@aws-sdk/client-dataexchange") @new external createClient: unit => clientType = "DataExchangeClient";
module UpdateRevision = {
  type t;
  type request = {
@as("RevisionId") revisionId: option<__string>,
@as("Finalized") finalized: __boolean,
@as("DataSetId") dataSetId: option<__string>,
@as("Comment") comment: __stringMin0Max16384
}
  type response = {
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("SourceId") sourceId: id,
@as("Id") id: id,
@as("Finalized") finalized: __boolean,
@as("DataSetId") dataSetId: id,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("Comment") comment: __stringMin0Max16384,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "UpdateRevisionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartJob = {
  type t;
  type request = {
@as("JobId") jobId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "StartJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRevision = {
  type t;
  type request = {
@as("RevisionId") revisionId: option<__string>,
@as("DataSetId") dataSetId: option<__string>
}
  
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "DeleteRevisionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDataSet = {
  type t;
  type request = {
@as("DataSetId") dataSetId: option<__string>
}
  
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "DeleteDataSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAsset = {
  type t;
  type request = {
@as("RevisionId") revisionId: option<__string>,
@as("DataSetId") dataSetId: option<__string>,
@as("AssetId") assetId: option<__string>
}
  
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "DeleteAssetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CancelJob = {
  type t;
  type request = {
@as("JobId") jobId: option<__string>
}
  
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "CancelJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateDataSet = {
  type t;
  type request = {
@as("Name") name: name,
@as("Description") description: description,
@as("DataSetId") dataSetId: option<__string>
}
  type response = {
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("SourceId") sourceId: id,
@as("OriginDetails") originDetails: originDetails,
@as("Origin") origin: origin,
@as("Name") name: name,
@as("Id") id: id,
@as("Description") description: description,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("AssetType") assetType: assetType,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "UpdateDataSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<listOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<mapOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<__string>
}
  type response = {
@as("Tags") tags: mapOf__string
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRevision = {
  type t;
  type request = {
@as("RevisionId") revisionId: option<__string>,
@as("DataSetId") dataSetId: option<__string>
}
  type response = {
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("Tags") tags: mapOf__string,
@as("SourceId") sourceId: id,
@as("Id") id: id,
@as("Finalized") finalized: __boolean,
@as("DataSetId") dataSetId: id,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("Comment") comment: __stringMin0Max16384,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "GetRevisionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDataSet = {
  type t;
  type request = {
@as("DataSetId") dataSetId: option<__string>
}
  type response = {
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("Tags") tags: mapOf__string,
@as("SourceId") sourceId: id,
@as("OriginDetails") originDetails: originDetails,
@as("Origin") origin: origin,
@as("Name") name: name,
@as("Id") id: id,
@as("Description") description: description,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("AssetType") assetType: assetType,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "GetDataSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRevision = {
  type t;
  type request = {
@as("Tags") tags: mapOf__string,
@as("DataSetId") dataSetId: option<__string>,
@as("Comment") comment: __stringMin0Max16384
}
  type response = {
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("Tags") tags: mapOf__string,
@as("SourceId") sourceId: id,
@as("Id") id: id,
@as("Finalized") finalized: __boolean,
@as("DataSetId") dataSetId: id,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("Comment") comment: __stringMin0Max16384,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "CreateRevisionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDataSet = {
  type t;
  type request = {
@as("Tags") tags: mapOf__string,
@as("Name") name: option<name>,
@as("Description") description: option<description>,
@as("AssetType") assetType: option<assetType>
}
  type response = {
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("Tags") tags: mapOf__string,
@as("SourceId") sourceId: id,
@as("OriginDetails") originDetails: originDetails,
@as("Origin") origin: origin,
@as("Name") name: name,
@as("Id") id: id,
@as("Description") description: description,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("AssetType") assetType: assetType,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "CreateDataSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAsset = {
  type t;
  type request = {
@as("RevisionId") revisionId: option<__string>,
@as("Name") name: option<assetName>,
@as("DataSetId") dataSetId: option<__string>,
@as("AssetId") assetId: option<__string>
}
  type response = {
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("SourceId") sourceId: id,
@as("RevisionId") revisionId: id,
@as("Name") name: assetName,
@as("Id") id: id,
@as("DataSetId") dataSetId: id,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("AssetType") assetType: assetType,
@as("AssetDetails") assetDetails: assetDetails,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "UpdateAssetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDataSetRevisions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("DataSetId") dataSetId: option<__string>
}
  type response = {
@as("Revisions") revisions: listOfRevisionEntry,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "ListDataSetRevisionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAsset = {
  type t;
  type request = {
@as("RevisionId") revisionId: option<__string>,
@as("DataSetId") dataSetId: option<__string>,
@as("AssetId") assetId: option<__string>
}
  type response = {
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("SourceId") sourceId: id,
@as("RevisionId") revisionId: id,
@as("Name") name: assetName,
@as("Id") id: id,
@as("DataSetId") dataSetId: id,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("AssetType") assetType: assetType,
@as("AssetDetails") assetDetails: assetDetails,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "GetAssetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDataSets = {
  type t;
  type request = {
@as("Origin") origin: __string,
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("DataSets") dataSets: listOfDataSetEntry
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "ListDataSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRevisionAssets = {
  type t;
  type request = {
@as("RevisionId") revisionId: option<__string>,
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("DataSetId") dataSetId: option<__string>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Assets") assets: listOfAssetEntry
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "ListRevisionAssetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJob = {
  type t;
  type request = {
@as("JobId") jobId: option<__string>
}
  type response = {
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("Type") type_: type_,
@as("State") state: state,
@as("Id") id: id,
@as("Errors") errors: listOfJobError,
@as("Details") details: responseDetails,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "GetJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateJob = {
  type t;
  type request = {
@as("Type") type_: option<type_>,
@as("Details") details: option<requestDetails>
}
  type response = {
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("Type") type_: type_,
@as("State") state: state,
@as("Id") id: id,
@as("Errors") errors: listOfJobError,
@as("Details") details: responseDetails,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "CreateJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJobs = {
  type t;
  type request = {
@as("RevisionId") revisionId: __string,
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("DataSetId") dataSetId: __string
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Jobs") jobs: listOfJobEntry
}
  @module("@aws-sdk/client-dataexchange") @new external new_: (Js.Promise.t<request>) => t = "ListJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
