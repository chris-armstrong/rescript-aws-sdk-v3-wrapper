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
type __stringMin10Max512 = string
type __stringMin0Max16384 = string
type __string = string
type __doubleMin0 = float
type __double = float
type __boolean = bool
type type_ = [
  | @as("IMPORT_ASSET_FROM_API_GATEWAY_API") #IMPORT_ASSET_FROM_API_GATEWAY_API
  | @as("IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES") #IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES
  | @as("EXPORT_REVISIONS_TO_S3") #EXPORT_REVISIONS_TO_S3
  | @as("EXPORT_ASSET_TO_SIGNED_URL") #EXPORT_ASSET_TO_SIGNED_URL
  | @as("EXPORT_ASSETS_TO_S3") #EXPORT_ASSETS_TO_S3
  | @as("IMPORT_ASSET_FROM_SIGNED_URL") #IMPORT_ASSET_FROM_SIGNED_URL
  | @as("IMPORT_ASSETS_FROM_S3") #IMPORT_ASSETS_FROM_S3
]
@ocaml.doc("<p>Dates and times in AWS Data Exchange are recorded in ISO 8601 format.</p>")
type timestamp_ = Js.Date.t
type state = [
  | @as("TIMED_OUT") #TIMED_OUT
  | @as("CANCELLED") #CANCELLED
  | @as("COMPLETED") #COMPLETED
  | @as("ERROR") #ERROR
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("WAITING") #WAITING
]
@ocaml.doc("<p>The types of encryption supported in export jobs to Amazon S3.</p>")
type serverSideEncryptionTypes = [@as("AES256") #AES256 | @as("aws:kms") #Aws_Kms]
type resourceType = [
  | @as("EVENT_ACTION") #EVENT_ACTION
  | @as("JOB") #JOB
  | @as("ASSET") #ASSET
  | @as("REVISION") #REVISION
  | @as("DATA_SET") #DATA_SET
]
type protocolType = [@as("REST") #REST]
@ocaml.doc(
  "<p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers). When an owned data set is published in a product, AWS Data Exchange creates a copy of the data set. Subscribers can access that copy of the data set as an entitled data set.</p>"
)
type origin = [@as("ENTITLED") #ENTITLED | @as("OWNED") #OWNED]
@ocaml.doc(
  "<p>The token value retrieved from a previous call to access the next page of results.</p>"
)
type nextToken = string
@ocaml.doc("The name of the model.") type name = string
type maxResults = int
type limitName = [
  | @as("Revisions per Amazon API Gateway API data set")
  #Revisions_Per_Amazon_API_Gateway_API_Data_Set
  | @as("Amazon API Gateway API assets per revision") #Amazon_API_Gateway_API_Assets_Per_Revision
  | @as("Concurrent in progress jobs to import assets from an API Gateway API")
  #Concurrent_In_Progress_Jobs_To_Import_Assets_From_An_API_Gateway_API
  | @as("Amazon Redshift datashare assets per revision")
  #Amazon_Redshift_Datashare_Assets_Per_Revision
  | @as("Revisions per Amazon Redshift datashare data set")
  #Revisions_Per_Amazon_Redshift_Datashare_Data_Set
  | @as("Concurrent in progress jobs to import assets from Amazon Redshift datashares")
  #Concurrent_In_Progress_Jobs_To_Import_Assets_From_Amazon_Redshift_Datashares
  | @as("Amazon Redshift datashare assets per import job from Redshift")
  #Amazon_Redshift_Datashare_Assets_Per_Import_Job_From_Redshift
  | @as("Auto export event actions per data set") #Auto_Export_Event_Actions_Per_Data_Set
  | @as("Event actions per account") #Event_Actions_Per_Account
  | @as("Concurrent in progress jobs to export revisions to Amazon S3")
  #Concurrent_In_Progress_Jobs_To_Export_Revisions_To_Amazon_S3
  | @as("Concurrent in progress jobs to import assets from a signed URL")
  #Concurrent_In_Progress_Jobs_To_Import_Assets_From_A_Signed_URL
  | @as("Concurrent in progress jobs to import assets from Amazon S3")
  #Concurrent_In_Progress_Jobs_To_Import_Assets_From_Amazon_S3
  | @as("Concurrent in progress jobs to export assets to a signed URL")
  #Concurrent_In_Progress_Jobs_To_Export_Assets_To_A_Signed_URL
  | @as("Concurrent in progress jobs to export assets to Amazon S3")
  #Concurrent_In_Progress_Jobs_To_Export_Assets_To_Amazon_S3
  | @as("Asset size in GB") #Asset_Size_In_GB
  | @as("Asset per export job from Amazon S3") #Asset_Per_Export_Job_From_Amazon_S3
  | @as("Assets per import job from Amazon S3") #Assets_Per_Import_Job_From_Amazon_S3
  | @as("Assets per revision") #Assets_Per_Revision
  | @as("Revisions per data set") #Revisions_Per_Data_Set
  | @as("Data sets per product") #Data_Sets_Per_Product
  | @as("Data sets per account") #Data_Sets_Per_Account
  | @as("Products per account") #Products_Per_Account
]
@ocaml.doc("The types of resource which the job error can apply to.")
type jobErrorResourceTypes = [
  | @as("DATA_SET") #DATA_SET
  | @as("ASSET") #ASSET
  | @as("REVISION") #REVISION
]
@ocaml.doc("The name of the limit that was reached.")
type jobErrorLimitName = [
  | @as("Amazon Redshift datashare assets per revision")
  #Amazon_Redshift_Datashare_Assets_Per_Revision
  | @as("Asset size in GB") #Asset_Size_In_GB
  | @as("Assets per revision") #Assets_Per_Revision
]
@ocaml.doc("<p>A unique identifier.</p>") type id = string
type exceptionCause = [
  | @as("S3AccessDenied") #S3AccessDenied
  | @as("InsufficientS3BucketPolicy") #InsufficientS3BucketPolicy
]
@ocaml.doc("<p>A description of a resource.</p>") type description = string
type code = [
  | @as("MALWARE_SCAN_ENCRYPTED_FILE") #MALWARE_SCAN_ENCRYPTED_FILE
  | @as("VALIDATION_EXCEPTION") #VALIDATION_EXCEPTION
  | @as("SERVICE_QUOTA_EXCEEDED_EXCEPTION") #SERVICE_QUOTA_EXCEEDED_EXCEPTION
  | @as("RESOURCE_NOT_FOUND_EXCEPTION") #RESOURCE_NOT_FOUND_EXCEPTION
  | @as("MALWARE_DETECTED") #MALWARE_DETECTED
  | @as("INTERNAL_SERVER_EXCEPTION") #INTERNAL_SERVER_EXCEPTION
  | @as("ACCESS_DENIED_EXCEPTION") #ACCESS_DENIED_EXCEPTION
]
@ocaml.doc("<p>The type of asset that is added to a data set.</p>")
type assetType = [
  | @as("API_GATEWAY_API") #API_GATEWAY_API
  | @as("REDSHIFT_DATA_SHARE") #REDSHIFT_DATA_SHARE
  | @as("S3_SNAPSHOT") #S3_SNAPSHOT
]
@ocaml.doc(
  "<p>The name of the asset. When importing from Amazon S3, the S3 object key is used as the asset name. When exporting to Amazon S3, the asset name is used as default target S3 object key. When importing from Amazon API Gateway API, the API name is used as the asset name. When importing from Amazon Redshift, the datashare name is used as the asset name.</p>"
)
type assetName = string
@ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>")
type arn = string
@ocaml.doc("<p>The description of the API.</p>") type apiDescription = string
@ocaml.doc("<p>The S3 object that is the asset.</p>")
type s3SnapshotAsset = {
  @ocaml.doc("<p>The size of the S3 object that is the object.</p>") @as("Size") size: __doubleMin0,
}
@ocaml.doc("<p>Information about the published revision.</p>")
type revisionPublished = {
  @ocaml.doc("<p>The data set ID of the published revision.</p>") @as("DataSetId") dataSetId: id,
}
@ocaml.doc("<p>A revision is a container for one or more assets.</p>")
type revisionEntry = {
  @ocaml.doc("<p>The date and time that the revision was revoked, in ISO 8601 format.</p>")
  @as("RevokedAt")
  revokedAt: option<timestamp_>,
  @ocaml.doc("<p>A status indicating that subscribers' access to the revision was revoked.</p>")
  @as("Revoked")
  revoked: option<__boolean>,
  @ocaml.doc(
    "<p>A required comment to inform subscribers of the reason their access to the revision was revoked.</p>"
  )
  @as("RevocationComment")
  revocationComment: option<__stringMin10Max512>,
  @ocaml.doc("<p>The date and time that the revision was last updated, in ISO 8601 format.</p>")
  @as("UpdatedAt")
  updatedAt: timestamp_,
  @ocaml.doc(
    "<p>The revision ID of the owned revision corresponding to the entitled revision being viewed. This parameter is returned when a revision owner is viewing the entitled copy of its owned revision.</p>"
  )
  @as("SourceId")
  sourceId: option<id>,
  @ocaml.doc("<p>The unique identifier for the revision.</p>") @as("Id") id: id,
  @ocaml.doc(
    "<p>To publish a revision to a data set in a product, the revision must first be finalized. Finalizing a revision tells AWS Data Exchange that your changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p> <p>Finalized revisions can be published through the AWS Data Exchange console or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action. When using the API, revisions are uniquely identified by their ARN.</p>"
  )
  @as("Finalized")
  finalized: option<__boolean>,
  @ocaml.doc("<p>The unique identifier for the data set associated with this revision.</p>")
  @as("DataSetId")
  dataSetId: id,
  @ocaml.doc("<p>The date and time that the revision was created, in ISO 8601 format.</p>")
  @as("CreatedAt")
  createdAt: timestamp_,
  @ocaml.doc("<p>An optional comment about the revision.</p>") @as("Comment")
  comment: option<__stringMin0Max16384>,
  @ocaml.doc("<p>The ARN for the revision.</p>") @as("Arn") arn: arn,
}
@ocaml.doc("<p>The destination where the assets in the revision will be exported.</p>")
type revisionDestinationEntry = {
  @ocaml.doc("<p>The unique identifier for the revision.</p>") @as("RevisionId") revisionId: id,
  @ocaml.doc(
    "<p>A string representing the pattern for generated names of the individual assets in the revision. For more information about key patterns, see <a href=\"https://docs.aws.amazon.com/data-exchange/latest/userguide/jobs.html#revision-export-keypatterns\">Key patterns when exporting revisions</a>.</p>"
  )
  @as("KeyPattern")
  keyPattern: option<__string>,
  @ocaml.doc("<p>The S3 bucket that is the destination for the assets in the revision.</p>")
  @as("Bucket")
  bucket: __string,
}
@ocaml.doc("<p>The source of the Amazon Redshift datashare asset.</p>")
type redshiftDataShareAssetSourceEntry = {
  @ocaml.doc("The Amazon Resource Name (ARN) of the datashare asset.") @as("DataShareArn")
  dataShareArn: __string,
}
@ocaml.doc("The Amazon Redshift datashare asset.")
type redshiftDataShareAsset = {
  @ocaml.doc("The Amazon Resource Name (ARN) of the datashare asset.") @as("Arn") arn: __string,
}
@ocaml.doc("<p>Information about the origin of the data set.</p>")
type originDetails = {
  @ocaml.doc("<p>The product ID of the origin of the data set.</p>") @as("ProductId")
  productId: __string,
}
type mapOf__string = Js.Dict.t<__string>
type listOf__string = array<__string>
@ocaml.doc(
  "<p>The details in the response for an import request, including the signed URL and other information.</p>"
)
type importAssetFromSignedUrlResponseDetails = {
  @ocaml.doc("<p>The time and date at which the signed URL expires, in ISO 8601 format.</p>")
  @as("SignedUrlExpiresAt")
  signedUrlExpiresAt: option<timestamp_>,
  @ocaml.doc("<p>The signed URL.</p>") @as("SignedUrl") signedUrl: option<__string>,
  @ocaml.doc("<p>The unique identifier for the revision associated with this import response.</p>")
  @as("RevisionId")
  revisionId: id,
  @ocaml.doc(
    "<p>The Base64-encoded Md5 hash for the asset, used to ensure the integrity of the file at that location.</p>"
  )
  @as("Md5Hash")
  md5Hash: option<__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093>,
  @ocaml.doc("<p>The unique identifier for the data set associated with this import job.</p>")
  @as("DataSetId")
  dataSetId: id,
  @ocaml.doc("<p>The name for the asset associated with this import job.</p>") @as("AssetName")
  assetName: assetName,
}
@ocaml.doc("<p>Details of the operation to be performed by the job.</p>")
type importAssetFromSignedUrlRequestDetails = {
  @ocaml.doc("<p>The unique identifier for the revision associated with this import request.</p>")
  @as("RevisionId")
  revisionId: id,
  @ocaml.doc(
    "<p>The Base64-encoded Md5 hash for the asset, used to ensure the integrity of the file at that location.</p>"
  )
  @as("Md5Hash")
  md5Hash: __stringMin24Max24PatternAZaZ094AZaZ092AZaZ093,
  @ocaml.doc("<p>The unique identifier for the data set associated with this import job.</p>")
  @as("DataSetId")
  dataSetId: id,
  @ocaml.doc(
    "<p>The name of the asset. When importing from Amazon S3, the S3 object key is used as the asset name.</p>"
  )
  @as("AssetName")
  assetName: assetName,
}
@ocaml.doc("<p>Information about the job error.</p>")
type importAssetFromSignedUrlJobErrorDetails = {
  @ocaml.doc("<p>Information about the job error.</p>") @as("AssetName") assetName: assetName,
}
@ocaml.doc("<p>The response details.</p>")
type importAssetFromApiGatewayApiResponseDetails = {
  @ocaml.doc("<p>The API stage.</p>") @as("Stage") stage: __string,
  @ocaml.doc("<p>The revision ID.</p>") @as("RevisionId") revisionId: id,
  @ocaml.doc("<p>The protocol type.</p>") @as("ProtocolType") protocolType: protocolType,
  @ocaml.doc("<p>The data set ID.</p>") @as("DataSetId") dataSetId: id,
  @ocaml.doc("<p>The date and time that the upload URL expires, in ISO 8601 format.</p>")
  @as("ApiSpecificationUploadUrlExpiresAt")
  apiSpecificationUploadUrlExpiresAt: timestamp_,
  @ocaml.doc("<p>The upload URL of the API specification.</p>") @as("ApiSpecificationUploadUrl")
  apiSpecificationUploadUrl: __string,
  @ocaml.doc(
    "<p>The Base64-encoded Md5 hash for the API asset, used to ensure the integrity of the API at that location.</p>"
  )
  @as("ApiSpecificationMd5Hash")
  apiSpecificationMd5Hash: __stringMin24Max24PatternAZaZ094AZaZ092AZaZ093,
  @ocaml.doc("<p>The API name.</p>") @as("ApiName") apiName: __string,
  @ocaml.doc("<p>The API key.</p>") @as("ApiKey") apiKey: option<__string>,
  @ocaml.doc("<p>The API ID.</p>") @as("ApiId") apiId: __string,
  @ocaml.doc("<p>The API description.</p>") @as("ApiDescription")
  apiDescription: option<apiDescription>,
}
@ocaml.doc("<p>The request details.</p>")
type importAssetFromApiGatewayApiRequestDetails = {
  @ocaml.doc("<p>The API stage.</p>") @as("Stage") stage: __string,
  @ocaml.doc("<p>The revision ID.</p>") @as("RevisionId") revisionId: id,
  @ocaml.doc("<p>The protocol type.</p>") @as("ProtocolType") protocolType: protocolType,
  @ocaml.doc("<p>The data set ID.</p>") @as("DataSetId") dataSetId: id,
  @ocaml.doc(
    "<p>The Base64-encoded MD5 hash of the OpenAPI 3.0 JSON API specification file. It is used to ensure the integrity of the file.</p>"
  )
  @as("ApiSpecificationMd5Hash")
  apiSpecificationMd5Hash: __stringMin24Max24PatternAZaZ094AZaZ092AZaZ093,
  @ocaml.doc("<p>The API name.</p>") @as("ApiName") apiName: __string,
  @ocaml.doc("<p>The API Gateway API key.</p>") @as("ApiKey") apiKey: option<__string>,
  @ocaml.doc("<p>The API Gateway API ID.</p>") @as("ApiId") apiId: __string,
  @ocaml.doc("<p>The API description. Markdown supported.</p>") @as("ApiDescription")
  apiDescription: option<apiDescription>,
}
@ocaml.doc(
  "<p>Encryption configuration of the export job. Includes the encryption type in addition to the AWS KMS key. The KMS key is only necessary if you chose the KMS encryption. type.</p>"
)
type exportServerSideEncryption = {
  @ocaml.doc(
    "<p>The type of server side encryption used for encrypting the objects in Amazon S3.</p>"
  )
  @as("Type")
  type_: serverSideEncryptionTypes,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the AWS KMS key you want to use to encrypt the Amazon S3 objects. This parameter is required if you choose aws:kms as an encryption type.</p>"
  )
  @as("KmsKeyArn")
  kmsKeyArn: option<__string>,
}
@ocaml.doc("<p>The details of the export to signed URL response.</p>")
type exportAssetToSignedUrlResponseDetails = {
  @ocaml.doc("<p>The date and time that the signed URL expires, in ISO 8601 format.</p>")
  @as("SignedUrlExpiresAt")
  signedUrlExpiresAt: option<timestamp_>,
  @ocaml.doc("<p>The signed URL for the export request.</p>") @as("SignedUrl")
  signedUrl: option<__string>,
  @ocaml.doc("<p>The unique identifier for the revision associated with this export response.</p>")
  @as("RevisionId")
  revisionId: id,
  @ocaml.doc("<p>The unique identifier for the data set associated with this export job.</p>")
  @as("DataSetId")
  dataSetId: id,
  @ocaml.doc("<p>The unique identifier for the asset associated with this export job.</p>")
  @as("AssetId")
  assetId: id,
}
@ocaml.doc("<p>Details of the operation to be performed by the job.</p>")
type exportAssetToSignedUrlRequestDetails = {
  @ocaml.doc("<p>The unique identifier for the revision associated with this export request.</p>")
  @as("RevisionId")
  revisionId: id,
  @ocaml.doc("<p>The unique identifier for the data set associated with this export job.</p>")
  @as("DataSetId")
  dataSetId: id,
  @ocaml.doc("<p>The unique identifier for the asset that is exported to a signed URL.</p>")
  @as("AssetId")
  assetId: id,
}
@ocaml.doc(
  "<p>A revision destination is the Amazon S3 bucket folder destination to where the export will be sent.</p>"
)
type autoExportRevisionDestinationEntry = {
  @ocaml.doc(
    "<p>A string representing the pattern for generated names of the individual assets in the revision. For more information about key patterns, see <a href=\"https://docs.aws.amazon.com/data-exchange/latest/userguide/jobs.html#revision-export-keypatterns\">Key patterns when exporting revisions</a>.</p>"
  )
  @as("KeyPattern")
  keyPattern: option<__string>,
  @ocaml.doc("<p>The S3 bucket that is the destination for the event action.</p>") @as("Bucket")
  bucket: __string,
}
@ocaml.doc("<p>The source of the assets.</p>")
type assetSourceEntry = {
  @ocaml.doc("<p>The name of the object in Amazon S3 for the asset.</p>") @as("Key") key: __string,
  @ocaml.doc("<p>The S3 bucket that's part of the source of the asset.</p>") @as("Bucket")
  bucket: __string,
}
@ocaml.doc("<p>The destination for the asset.</p>")
type assetDestinationEntry = {
  @ocaml.doc("<p>The name of the object in Amazon S3 for the asset.</p>") @as("Key")
  key: option<__string>,
  @ocaml.doc("<p>The S3 bucket that is the destination for the asset.</p>") @as("Bucket")
  bucket: __string,
  @ocaml.doc("<p>The unique identifier for the asset.</p>") @as("AssetId") assetId: id,
}
@ocaml.doc("<p>The API Gateway API that is the asset.</p>")
type apiGatewayApiAsset = {
  @ocaml.doc("<p>The stage of the API asset.</p>") @as("Stage") stage: option<__string>,
  @ocaml.doc("<p>The protocol type of the API asset.</p>") @as("ProtocolType")
  protocolType: option<protocolType>,
  @ocaml.doc("<p>The date and time that the upload URL expires, in ISO 8601 format.</p>")
  @as("ApiSpecificationDownloadUrlExpiresAt")
  apiSpecificationDownloadUrlExpiresAt: option<timestamp_>,
  @ocaml.doc("<p>The download URL of the API specification of the API asset.</p>")
  @as("ApiSpecificationDownloadUrl")
  apiSpecificationDownloadUrl: option<__string>,
  @ocaml.doc("<p>The API name of the API asset.</p>") @as("ApiName") apiName: option<__string>,
  @ocaml.doc("<p>The API key of the API asset.</p>") @as("ApiKey") apiKey: option<__string>,
  @ocaml.doc("<p>The unique identifier of the API asset.</p>") @as("ApiId") apiId: option<__string>,
  @ocaml.doc("<p>The API endpoint of the API asset.</p>") @as("ApiEndpoint")
  apiEndpoint: option<__string>,
  @ocaml.doc("<p>The API description of the API asset.</p>") @as("ApiDescription")
  apiDescription: option<apiDescription>,
}
type listOfRevisionEntry = array<revisionEntry>
@ocaml.doc("<p>The destination where the assets in the revision will be exported.</p>")
type listOfRevisionDestinationEntry = array<revisionDestinationEntry>
@ocaml.doc("A list of Amazon Redshift datashare asset sources.")
type listOfRedshiftDataShareAssetSourceEntry = array<redshiftDataShareAssetSourceEntry>
@ocaml.doc("<p>The list of sources for the assets.</p>")
type listOfAssetSourceEntry = array<assetSourceEntry>
@ocaml.doc("<p>The destination where the assets will be exported.</p>")
type listOfAssetDestinationEntry = array<assetDestinationEntry>
@ocaml.doc("<p>What occurs to start an action.</p>")
type event = {
  @ocaml.doc("<p>What occurs to start the revision publish action.</p>") @as("RevisionPublished")
  revisionPublished: option<revisionPublished>,
}
@ocaml.doc("<p>A data set is an AWS resource with one or more revisions.</p>")
type dataSetEntry = {
  @ocaml.doc("<p>The date and time that the data set was last updated, in ISO 8601 format.</p>")
  @as("UpdatedAt")
  updatedAt: timestamp_,
  @ocaml.doc(
    "<p>The data set ID of the owned data set corresponding to the entitled data set being viewed. This parameter is returned when a data set owner is viewing the entitled copy of its owned data set.</p>"
  )
  @as("SourceId")
  sourceId: option<id>,
  @ocaml.doc(
    "<p>If the origin of this data set is ENTITLED, includes the details for the product on AWS Marketplace.</p>"
  )
  @as("OriginDetails")
  originDetails: option<originDetails>,
  @ocaml.doc(
    "<p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers).</p>"
  )
  @as("Origin")
  origin: origin,
  @ocaml.doc("<p>The name of the data set.</p>") @as("Name") name: name,
  @ocaml.doc("<p>The unique identifier for the data set.</p>") @as("Id") id: id,
  @ocaml.doc("<p>The description for the data set.</p>") @as("Description")
  description: description,
  @ocaml.doc("<p>The date and time that the data set was created, in ISO 8601 format.</p>")
  @as("CreatedAt")
  createdAt: timestamp_,
  @ocaml.doc("<p>The type of asset that is added to a data set.</p>") @as("AssetType")
  assetType: assetType,
  @ocaml.doc("<p>The ARN for the data set.</p>") @as("Arn") arn: arn,
}
@ocaml.doc("<p>Details of the operation to be performed by the job.</p>")
type autoExportRevisionToS3RequestDetails = {
  @ocaml.doc(
    "<p>A revision destination is the Amazon S3 bucket folder destination to where the export will be sent.</p>"
  )
  @as("RevisionDestination")
  revisionDestination: autoExportRevisionDestinationEntry,
  @ocaml.doc("<p>Encryption configuration for the auto export job.</p>") @as("Encryption")
  encryption: option<exportServerSideEncryption>,
}
@ocaml.doc("<p>Information about the asset.</p>")
type assetDetails = {
  @ocaml.doc("<p>Information about the API Gateway API asset.</p>") @as("ApiGatewayApiAsset")
  apiGatewayApiAsset: option<apiGatewayApiAsset>,
  @ocaml.doc("<p>The Amazon Redshift datashare that is the asset.</p>")
  @as("RedshiftDataShareAsset")
  redshiftDataShareAsset: option<redshiftDataShareAsset>,
  @ocaml.doc("<p>The S3 object that is the asset.</p>") @as("S3SnapshotAsset")
  s3SnapshotAsset: option<s3SnapshotAsset>,
}
type listOfDataSetEntry = array<dataSetEntry>
@ocaml.doc("<p>Details from an import from Amazon S3 response.</p>")
type importAssetsFromS3ResponseDetails = {
  @ocaml.doc("<p>The unique identifier for the revision associated with this import response.</p>")
  @as("RevisionId")
  revisionId: id,
  @ocaml.doc("<p>The unique identifier for the data set associated with this import job.</p>")
  @as("DataSetId")
  dataSetId: id,
  @ocaml.doc("<p>Is a list of Amazon S3 bucket and object key pairs.</p>") @as("AssetSources")
  assetSources: listOfAssetSourceEntry,
}
@ocaml.doc("<p>Details of the operation to be performed by the job.</p>")
type importAssetsFromS3RequestDetails = {
  @ocaml.doc("<p>The unique identifier for the revision associated with this import request.</p>")
  @as("RevisionId")
  revisionId: id,
  @ocaml.doc("<p>The unique identifier for the data set associated with this import job.</p>")
  @as("DataSetId")
  dataSetId: id,
  @ocaml.doc("<p>Is a list of S3 bucket and object key pairs.</p>") @as("AssetSources")
  assetSources: listOfAssetSourceEntry,
}
@ocaml.doc("Details from an import from Amazon Redshift datashare response.")
type importAssetsFromRedshiftDataSharesResponseDetails = {
  @ocaml.doc("The unique identifier for the revision associated with this import job.")
  @as("RevisionId")
  revisionId: id,
  @ocaml.doc("The unique identifier for the data set associated with this import job.")
  @as("DataSetId")
  dataSetId: id,
  @ocaml.doc("A list of Amazon Redshift datashare asset sources.") @as("AssetSources")
  assetSources: listOfRedshiftDataShareAssetSourceEntry,
}
@ocaml.doc("Details from an import from Amazon Redshift datashare request.")
type importAssetsFromRedshiftDataSharesRequestDetails = {
  @ocaml.doc("The unique identifier for the revision associated with this import job.")
  @as("RevisionId")
  revisionId: id,
  @ocaml.doc("The unique identifier for the data set associated with this import job.")
  @as("DataSetId")
  dataSetId: id,
  @ocaml.doc("A list of Amazon Redshift datashare assets.") @as("AssetSources")
  assetSources: listOfRedshiftDataShareAssetSourceEntry,
}
@ocaml.doc("<p>Details about the export revisions to Amazon S3 response.</p>")
type exportRevisionsToS3ResponseDetails = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the event action.</p>") @as("EventActionArn")
  eventActionArn: option<__string>,
  @ocaml.doc("<p>The destination in Amazon S3 where the revision is exported.</p>")
  @as("RevisionDestinations")
  revisionDestinations: listOfRevisionDestinationEntry,
  @ocaml.doc("<p>Encryption configuration of the export job.</p>") @as("Encryption")
  encryption: option<exportServerSideEncryption>,
  @ocaml.doc("<p>The unique identifier for the data set associated with this export job.</p>")
  @as("DataSetId")
  dataSetId: id,
}
@ocaml.doc("<p>Details of the operation to be performed by the job.</p>")
type exportRevisionsToS3RequestDetails = {
  @ocaml.doc("<p>The destination for the revision.</p>") @as("RevisionDestinations")
  revisionDestinations: listOfRevisionDestinationEntry,
  @ocaml.doc("<p>Encryption configuration for the export job.</p>") @as("Encryption")
  encryption: option<exportServerSideEncryption>,
  @ocaml.doc("<p>The unique identifier for the data set associated with this export job.</p>")
  @as("DataSetId")
  dataSetId: id,
}
@ocaml.doc("<p>Details about the export to Amazon S3 response.</p>")
type exportAssetsToS3ResponseDetails = {
  @ocaml.doc("<p>The unique identifier for the revision associated with this export response.</p>")
  @as("RevisionId")
  revisionId: id,
  @ocaml.doc("<p>Encryption configuration of the export job.</p>") @as("Encryption")
  encryption: option<exportServerSideEncryption>,
  @ocaml.doc("<p>The unique identifier for the data set associated with this export job.</p>")
  @as("DataSetId")
  dataSetId: id,
  @ocaml.doc("<p>The destination in Amazon S3 where the asset is exported.</p>")
  @as("AssetDestinations")
  assetDestinations: listOfAssetDestinationEntry,
}
@ocaml.doc("<p>Details of the operation to be performed by the job.</p>")
type exportAssetsToS3RequestDetails = {
  @ocaml.doc("<p>The unique identifier for the revision associated with this export request.</p>")
  @as("RevisionId")
  revisionId: id,
  @ocaml.doc("<p>Encryption configuration for the export job.</p>") @as("Encryption")
  encryption: option<exportServerSideEncryption>,
  @ocaml.doc("<p>The unique identifier for the data set associated with this export job.</p>")
  @as("DataSetId")
  dataSetId: id,
  @ocaml.doc("<p>The destination for the asset.</p>") @as("AssetDestinations")
  assetDestinations: listOfAssetDestinationEntry,
}
@ocaml.doc("<p>Information about the job error.</p>")
type details = {
  @ocaml.doc("<p>Information about the job error.</p>") @as("ImportAssetsFromS3JobErrorDetails")
  importAssetsFromS3JobErrorDetails: option<listOfAssetSourceEntry>,
  @ocaml.doc("<p>Information about the job error.</p>")
  @as("ImportAssetFromSignedUrlJobErrorDetails")
  importAssetFromSignedUrlJobErrorDetails: option<importAssetFromSignedUrlJobErrorDetails>,
}
@ocaml.doc(
  "<p>An asset in AWS Data Exchange is a piece of data (S3 object) or a means of fulfilling data (Amazon Redshift datashare or Amazon API Gateway API). The asset can be a structured data file, an image file, or some other data file that can be stored as an S3 object, an Amazon API Gateway API, or an Amazon Redshift datashare. When you create an import job for your files, API Gateway APIs, or Amazon Redshift datashares, you create an asset in AWS Data Exchange.</p>"
)
type assetEntry = {
  @ocaml.doc("<p>The date and time that the asset was last updated, in ISO 8601 format.</p>")
  @as("UpdatedAt")
  updatedAt: timestamp_,
  @ocaml.doc(
    "<p>The asset ID of the owned asset corresponding to the entitled asset being viewed. This parameter is returned when an asset owner is viewing the entitled copy of its owned asset.</p>"
  )
  @as("SourceId")
  sourceId: option<id>,
  @ocaml.doc("<p>The unique identifier for the revision associated with this asset.</p>")
  @as("RevisionId")
  revisionId: id,
  @ocaml.doc(
    "<p>The name of the asset. When importing from Amazon S3, the S3 object key is used as the asset name. When exporting to Amazon S3, the asset name is used as default target S3 object key. When importing from Amazon API Gateway API, the API name is used as the asset name. When importing from Amazon Redshift, the datashare name is used as the asset name.</p>"
  )
  @as("Name")
  name: assetName,
  @ocaml.doc("<p>The unique identifier for the asset.</p>") @as("Id") id: id,
  @ocaml.doc("<p>The unique identifier for the data set associated with this asset.</p>")
  @as("DataSetId")
  dataSetId: id,
  @ocaml.doc("<p>The date and time that the asset was created, in ISO 8601 format.</p>")
  @as("CreatedAt")
  createdAt: timestamp_,
  @ocaml.doc("<p>The type of asset that is added to a data set.</p>") @as("AssetType")
  assetType: assetType,
  @ocaml.doc("<p>Information about the asset.</p>") @as("AssetDetails") assetDetails: assetDetails,
  @ocaml.doc("<p>The ARN for the asset.</p>") @as("Arn") arn: arn,
}
@ocaml.doc("<p>What occurs after a certain event.</p>")
type action = {
  @ocaml.doc("<p>Details for the export revision to Amazon S3 action.</p>")
  @as("ExportRevisionToS3")
  exportRevisionToS3: option<autoExportRevisionToS3RequestDetails>,
}
@ocaml.doc("<p>Details for the response.</p>")
type responseDetails = {
  @ocaml.doc("<p>The response details.</p>") @as("ImportAssetFromApiGatewayApi")
  importAssetFromApiGatewayApi: option<importAssetFromApiGatewayApiResponseDetails>,
  @ocaml.doc("<p>Details from an import from Amazon Redshift datashare response.</p>")
  @as("ImportAssetsFromRedshiftDataShares")
  importAssetsFromRedshiftDataShares: option<importAssetsFromRedshiftDataSharesResponseDetails>,
  @ocaml.doc("<p>Details for the import from Amazon S3 response.</p>") @as("ImportAssetsFromS3")
  importAssetsFromS3: option<importAssetsFromS3ResponseDetails>,
  @ocaml.doc("<p>Details for the import from signed URL response.</p>")
  @as("ImportAssetFromSignedUrl")
  importAssetFromSignedUrl: option<importAssetFromSignedUrlResponseDetails>,
  @ocaml.doc("<p>Details for the export revisions to Amazon S3 response.</p>")
  @as("ExportRevisionsToS3")
  exportRevisionsToS3: option<exportRevisionsToS3ResponseDetails>,
  @ocaml.doc("<p>Details for the export to Amazon S3 response.</p>") @as("ExportAssetsToS3")
  exportAssetsToS3: option<exportAssetsToS3ResponseDetails>,
  @ocaml.doc("<p>Details for the export to signed URL response.</p>") @as("ExportAssetToSignedUrl")
  exportAssetToSignedUrl: option<exportAssetToSignedUrlResponseDetails>,
}
@ocaml.doc("<p>The details for the request.</p>")
type requestDetails = {
  @ocaml.doc("<p>Information about the import asset from API Gateway API request.</p>")
  @as("ImportAssetFromApiGatewayApi")
  importAssetFromApiGatewayApi: option<importAssetFromApiGatewayApiRequestDetails>,
  @ocaml.doc("<p>Details from an import from Amazon Redshift datashare request.</p>")
  @as("ImportAssetsFromRedshiftDataShares")
  importAssetsFromRedshiftDataShares: option<importAssetsFromRedshiftDataSharesRequestDetails>,
  @ocaml.doc("<p>Details about the import from Amazon S3 request.</p>") @as("ImportAssetsFromS3")
  importAssetsFromS3: option<importAssetsFromS3RequestDetails>,
  @ocaml.doc("<p>Details about the import from signed URL request.</p>")
  @as("ImportAssetFromSignedUrl")
  importAssetFromSignedUrl: option<importAssetFromSignedUrlRequestDetails>,
  @ocaml.doc("<p>Details about the export to Amazon S3 request.</p>") @as("ExportRevisionsToS3")
  exportRevisionsToS3: option<exportRevisionsToS3RequestDetails>,
  @ocaml.doc("<p>Details about the export to Amazon S3 request.</p>") @as("ExportAssetsToS3")
  exportAssetsToS3: option<exportAssetsToS3RequestDetails>,
  @ocaml.doc("<p>Details about the export to signed URL request.</p>") @as("ExportAssetToSignedUrl")
  exportAssetToSignedUrl: option<exportAssetToSignedUrlRequestDetails>,
}
type listOfAssetEntry = array<assetEntry>
@ocaml.doc("An error that occurred with the job request.")
type jobError = {
  @ocaml.doc("The type of resource related to the error.") @as("ResourceType")
  resourceType: option<jobErrorResourceTypes>,
  @ocaml.doc("The unique identifier for the resource related to the error.") @as("ResourceId")
  resourceId: option<__string>,
  @ocaml.doc("The message related to the job error.") @as("Message") message: __string,
  @ocaml.doc("The value of the exceeded limit.") @as("LimitValue") limitValue: option<__double>,
  @ocaml.doc("<p>The name of the limit that was reached.</p>") @as("LimitName")
  limitName: option<jobErrorLimitName>,
  @ocaml.doc("<p>The details about the job error.</p>") @as("Details") details: option<details>,
  @ocaml.doc("The code for the job error.") @as("Code") code: code,
}
@ocaml.doc(
  "<p>An event action is an object that defines the relationship between a specific event and an automated action that will be taken on behalf of the customer.</p>"
)
type eventActionEntry = {
  @ocaml.doc("<p>The date and time that the event action was last updated, in ISO 8601 format.</p>")
  @as("UpdatedAt")
  updatedAt: timestamp_,
  @ocaml.doc("<p>The unique identifier for the event action.</p>") @as("Id") id: id,
  @ocaml.doc("<p>What occurs to start an action.</p>") @as("Event") event: event,
  @ocaml.doc("<p>The date and time that the event action was created, in ISO 8601 format.</p>")
  @as("CreatedAt")
  createdAt: timestamp_,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the event action.</p>") @as("Arn") arn: arn,
  @ocaml.doc("<p>What occurs after a certain event.</p>") @as("Action") action: action,
}
type listOfJobError = array<jobError>
type listOfEventActionEntry = array<eventActionEntry>
@ocaml.doc(
  "AWS Data Exchange Jobs are asynchronous import or export operations used to create or copy assets. A data set owner can both import and export as they see fit. Someone with an entitlement to a data set can only export. Jobs are deleted 90 days after they are created."
)
type jobEntry = {
  @ocaml.doc("<p>The date and time that the job was last updated, in ISO 8601 format.</p>")
  @as("UpdatedAt")
  updatedAt: timestamp_,
  @ocaml.doc("<p>The job type.</p>") @as("Type") type_: type_,
  @ocaml.doc("<p>The state of the job.</p>") @as("State") state: state,
  @ocaml.doc("<p>The unique identifier for the job.</p>") @as("Id") id: id,
  @ocaml.doc("<p>Errors for jobs.</p>") @as("Errors") errors: option<listOfJobError>,
  @ocaml.doc(
    "<p>Details of the operation to be performed by the job, such as export destination details or import source details.</p>"
  )
  @as("Details")
  details: responseDetails,
  @ocaml.doc("<p>The date and time that the job was created, in ISO 8601 format.</p>")
  @as("CreatedAt")
  createdAt: timestamp_,
  @ocaml.doc("<p>The ARN for the job.</p>") @as("Arn") arn: arn,
}
type listOfJobEntry = array<jobEntry>
@ocaml.doc(
  "<p>AWS Data Exchange is a service that makes it easy for AWS customers to exchange data in the cloud. You can use the AWS Data Exchange APIs to create, update, manage, and access file-based data set in the AWS Cloud.</p><p>As a subscriber, you can view and access the data sets that you have an entitlement to through a subscription. You can use the APIS to download or copy your entitled data sets to Amazon S3 for use across a variety of AWS analytics and machine learning services.</p><p>As a provider, you can create and manage your data sets that you would like to publish to a product. Being able to package and provide your data sets into products requires a few steps to determine eligibility. For more information, visit the AWS Data Exchange User Guide.</p><p>A data set is a collection of data that can be changed or updated over time. Data sets can be updated using revisions, which represent a new version or incremental change to a data set.  A revision contains one or more assets. An asset in AWS Data Exchange is a piece of data that can be stored as an Amazon S3 object. The asset can be a structured data file, an image file, or some other data file. Jobs are asynchronous import or export operations used to create or copy assets.</p>"
)
module UpdateRevision = {
  type t
  @ocaml.doc("<p>The request body for UpdateRevision.</p>")
  type request = {
    @ocaml.doc("<p>The unique identifier for a revision.</p>") @as("RevisionId")
    revisionId: __string,
    @ocaml.doc(
      "<p>Finalizing a revision tells AWS Data Exchange that your changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p>"
    )
    @as("Finalized")
    finalized: option<__boolean>,
    @ocaml.doc("<p>The unique identifier for a data set.</p>") @as("DataSetId") dataSetId: __string,
    @ocaml.doc("<p>An optional comment about the revision.</p>") @as("Comment")
    comment: option<__stringMin0Max16384>,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the revision was revoked, in ISO 8601 format.</p>")
    @as("RevokedAt")
    revokedAt: option<timestamp_>,
    @ocaml.doc("<p>A status indicating that subscribers' access to the revision was revoked.</p>")
    @as("Revoked")
    revoked: option<__boolean>,
    @ocaml.doc(
      "<p>A required comment to inform subscribers of the reason their access to the revision was revoked.</p>"
    )
    @as("RevocationComment")
    revocationComment: option<__stringMin10Max512>,
    @ocaml.doc("<p>The date and time that the revision was last updated, in ISO 8601 format.</p>")
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc(
      "<p>The revision ID of the owned revision corresponding to the entitled revision being viewed. This parameter is returned when a revision owner is viewing the entitled copy of its owned revision.</p>"
    )
    @as("SourceId")
    sourceId: option<id>,
    @ocaml.doc("<p>The unique identifier for the revision.</p>") @as("Id") id: option<id>,
    @ocaml.doc(
      "<p>To publish a revision to a data set in a product, the revision must first be finalized. Finalizing a revision tells AWS Data Exchange that changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p> <p>Finalized revisions can be published through the AWS Data Exchange console or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action. When using the API, revisions are uniquely identified by their ARN.</p>"
    )
    @as("Finalized")
    finalized: option<__boolean>,
    @ocaml.doc("<p>The unique identifier for the data set associated with this revision.</p>")
    @as("DataSetId")
    dataSetId: option<id>,
    @ocaml.doc("<p>The date and time that the revision was created, in ISO 8601 format.</p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>An optional comment about the revision.</p>") @as("Comment")
    comment: option<__stringMin0Max16384>,
    @ocaml.doc("<p>The ARN for the revision.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "UpdateRevisionCommand"
  let make = (~revisionId, ~dataSetId, ~finalized=?, ~comment=?, ()) =>
    new({revisionId: revisionId, finalized: finalized, dataSetId: dataSetId, comment: comment})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartJob = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for a job.</p>") @as("JobId") jobId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "StartJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RevokeRevision = {
  type t
  @ocaml.doc("<p>The request body for RevokeRevision.</p>")
  type request = {
    @ocaml.doc(
      "<p>A required comment to inform subscribers of the reason their access to the revision was revoked.</p>"
    )
    @as("RevocationComment")
    revocationComment: __stringMin10Max512,
    @ocaml.doc("<p>The unique identifier for a revision.</p>") @as("RevisionId")
    revisionId: __string,
    @ocaml.doc("<p>The unique identifier for a data set.</p>") @as("DataSetId") dataSetId: __string,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the revision was revoked, in ISO 8601 format.</p>")
    @as("RevokedAt")
    revokedAt: option<timestamp_>,
    @ocaml.doc("<p>A status indicating that subscribers' access to the revision was revoked.</p>")
    @as("Revoked")
    revoked: option<__boolean>,
    @ocaml.doc(
      "<p>A required comment to inform subscribers of the reason their access to the revision was revoked.</p>"
    )
    @as("RevocationComment")
    revocationComment: option<__stringMin10Max512>,
    @ocaml.doc("<p>The date and time that the revision was last updated, in ISO 8601 format.</p>")
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc(
      "<p>The revision ID of the owned revision corresponding to the entitled revision being viewed. This parameter is returned when a revision owner is viewing the entitled copy of its owned revision.</p>"
    )
    @as("SourceId")
    sourceId: option<id>,
    @ocaml.doc("<p>The unique identifier for the revision.</p>") @as("Id") id: option<id>,
    @ocaml.doc(
      "<p>To publish a revision to a data set in a product, the revision must first be finalized. Finalizing a revision tells AWS Data Exchange that changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p> <p>Finalized revisions can be published through the AWS Data Exchange console or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action. When using the API, revisions are uniquely identified by their ARN.</p>"
    )
    @as("Finalized")
    finalized: option<__boolean>,
    @ocaml.doc("<p>The unique identifier for the data set associated with this revision.</p>")
    @as("DataSetId")
    dataSetId: option<id>,
    @ocaml.doc("<p>The date and time that the revision was created, in ISO 8601 format.</p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>An optional comment about the revision.</p>") @as("Comment")
    comment: option<__stringMin0Max16384>,
    @ocaml.doc("<p>The ARN for the revision.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "RevokeRevisionCommand"
  let make = (~revocationComment, ~revisionId, ~dataSetId, ()) =>
    new({revocationComment: revocationComment, revisionId: revisionId, dataSetId: dataSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRevision = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for a revision.</p>") @as("RevisionId")
    revisionId: __string,
    @ocaml.doc("<p>The unique identifier for a data set.</p>") @as("DataSetId") dataSetId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "DeleteRevisionCommand"
  let make = (~revisionId, ~dataSetId, ()) => new({revisionId: revisionId, dataSetId: dataSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEventAction = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the event action.</p>") @as("EventActionId")
    eventActionId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-dataexchange") @new
  external new: request => t = "DeleteEventActionCommand"
  let make = (~eventActionId, ()) => new({eventActionId: eventActionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDataSet = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for a data set.</p>") @as("DataSetId") dataSetId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "DeleteDataSetCommand"
  let make = (~dataSetId, ()) => new({dataSetId: dataSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAsset = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for a revision.</p>") @as("RevisionId")
    revisionId: __string,
    @ocaml.doc("<p>The unique identifier for a data set.</p>") @as("DataSetId") dataSetId: __string,
    @ocaml.doc("<p>The unique identifier for an asset.</p>") @as("AssetId") assetId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "DeleteAssetCommand"
  let make = (~revisionId, ~dataSetId, ~assetId, ()) =>
    new({revisionId: revisionId, dataSetId: dataSetId, assetId: assetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelJob = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for a job.</p>") @as("JobId") jobId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "CancelJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateDataSet = {
  type t
  @ocaml.doc("<p>The request body for UpdateDataSet.</p>")
  type request = {
    @ocaml.doc("<p>The name of the data set.</p>") @as("Name") name: option<name>,
    @ocaml.doc("<p>The description for the data set.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The unique identifier for a data set.</p>") @as("DataSetId") dataSetId: __string,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the data set was last updated, in ISO 8601 format.</p>")
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc(
      "<p>The data set ID of the owned data set corresponding to the entitled data set being viewed. This parameter is returned when a data set owner is viewing the entitled copy of its owned data set.</p>"
    )
    @as("SourceId")
    sourceId: option<id>,
    @ocaml.doc(
      "<p>If the origin of this data set is ENTITLED, includes the details for the product on AWS Marketplace.</p>"
    )
    @as("OriginDetails")
    originDetails: option<originDetails>,
    @ocaml.doc(
      "<p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers).</p>"
    )
    @as("Origin")
    origin: option<origin>,
    @ocaml.doc("<p>The name of the data set.</p>") @as("Name") name: option<name>,
    @ocaml.doc("<p>The unique identifier for the data set.</p>") @as("Id") id: option<id>,
    @ocaml.doc("<p>The description for the data set.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The date and time that the data set was created, in ISO 8601 format.</p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>The type of asset that is added to a data set.</p>") @as("AssetType")
    assetType: option<assetType>,
    @ocaml.doc("<p>The ARN for the data set.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "UpdateDataSetCommand"
  let make = (~dataSetId, ~name=?, ~description=?, ()) =>
    new({name: name, description: description, dataSetId: dataSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("The key tags.") @as("TagKeys") tagKeys: listOf__string,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>")
    @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  @ocaml.doc("<p>The request body for TagResource.</p>")
  type request = {
    @ocaml.doc("A label that consists of a customer-defined key and an optional value.") @as("Tags")
    tags: mapOf__string,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>")
    @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SendApiAsset = {
  type t
  @ocaml.doc("<p>The request body for SendApiAsset.</p>")
  type request = {
    @ocaml.doc("<p>Revision ID value for the API request.</p>") @as("RevisionId")
    revisionId: __string,
    @ocaml.doc(
      "<p>URI path value for the API request. Alternatively, you can set the URI path directly by invoking /v1/{pathValue}</p>"
    )
    @as("Path")
    path: option<__string>,
    @ocaml.doc(
      "<p>HTTP method value for the API request. Alternatively, you can use the appropriate verb in your request.</p>"
    )
    @as("Method")
    method: option<__string>,
    @ocaml.doc(
      "<p>Any header value prefixed with x-amzn-dataexchange-header- will have that stripped before sending the Asset API request. Use this when you want to override a header that AWS Data Exchange uses. Alternatively, you can use the header without a prefix to the HTTP request.</p>"
    )
    @as("RequestHeaders")
    requestHeaders: option<mapOf__string>,
    @ocaml.doc("<p>Data set ID value for the API request.</p>") @as("DataSetId")
    dataSetId: __string,
    @ocaml.doc("<p>Asset ID value for the API request.</p>") @as("AssetId") assetId: __string,
    @ocaml.doc(
      "<p>Attach query string parameters to the end of the URI (for example, /v1/examplePath?exampleParam=exampleValue).</p>"
    )
    @as("QueryStringParameters")
    queryStringParameters: option<mapOf__string>,
    @ocaml.doc("<p>The request body.</p>") @as("Body") body: option<__string>,
  }
  type response = {
    @ocaml.doc("<p>The response headers from the underlying API tracked by the API asset.</p>")
    @as("ResponseHeaders")
    responseHeaders: option<mapOf__string>,
    @ocaml.doc("<p>The response body from the underlying API tracked by the API asset.</p>")
    @as("Body")
    body: option<__string>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "SendApiAssetCommand"
  let make = (
    ~revisionId,
    ~dataSetId,
    ~assetId,
    ~path=?,
    ~method=?,
    ~requestHeaders=?,
    ~queryStringParameters=?,
    ~body=?,
    (),
  ) =>
    new({
      revisionId: revisionId,
      path: path,
      method: method,
      requestHeaders: requestHeaders,
      dataSetId: dataSetId,
      assetId: assetId,
      queryStringParameters: queryStringParameters,
      body: body,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>")
    @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {
    @ocaml.doc("A label that consists of a customer-defined key and an optional value.") @as("Tags")
    tags: option<mapOf__string>,
  }
  @module("@aws-sdk/client-dataexchange") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRevision = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for a revision.</p>") @as("RevisionId")
    revisionId: __string,
    @ocaml.doc("<p>The unique identifier for a data set.</p>") @as("DataSetId") dataSetId: __string,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the revision was revoked, in ISO 8601 format.</p>")
    @as("RevokedAt")
    revokedAt: option<timestamp_>,
    @ocaml.doc("<p>A status indicating that subscribers' access to the revision was revoked.</p>")
    @as("Revoked")
    revoked: option<__boolean>,
    @ocaml.doc(
      "<p>A required comment to inform subscribers of the reason their access to the revision was revoked.</p>"
    )
    @as("RevocationComment")
    revocationComment: option<__stringMin10Max512>,
    @ocaml.doc("<p>The date and time that the revision was last updated, in ISO 8601 format.</p>")
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc("<p>The tags for the revision.</p>") @as("Tags") tags: option<mapOf__string>,
    @ocaml.doc(
      "<p>The revision ID of the owned revision corresponding to the entitled revision being viewed. This parameter is returned when a revision owner is viewing the entitled copy of its owned revision.</p>"
    )
    @as("SourceId")
    sourceId: option<id>,
    @ocaml.doc("<p>The unique identifier for the revision.</p>") @as("Id") id: option<id>,
    @ocaml.doc(
      "<p>To publish a revision to a data set in a product, the revision must first be finalized. Finalizing a revision tells AWS Data Exchange that your changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p> <p>Finalized revisions can be published through the AWS Data Exchange console or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action. When using the API, revisions are uniquely identified by their ARN.</p>"
    )
    @as("Finalized")
    finalized: option<__boolean>,
    @ocaml.doc("<p>The unique identifier for the data set associated with this revision.</p>")
    @as("DataSetId")
    dataSetId: option<id>,
    @ocaml.doc("<p>The date and time that the revision was created, in ISO 8601 format.</p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>An optional comment about the revision.</p>") @as("Comment")
    comment: option<__stringMin0Max16384>,
    @ocaml.doc("<p>The ARN for the revision.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "GetRevisionCommand"
  let make = (~revisionId, ~dataSetId, ()) => new({revisionId: revisionId, dataSetId: dataSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDataSet = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for a data set.</p>") @as("DataSetId") dataSetId: __string,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the data set was last updated, in ISO 8601 format.</p>")
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc("<p>The tags for the data set.</p>") @as("Tags") tags: option<mapOf__string>,
    @ocaml.doc(
      "<p>The data set ID of the owned data set corresponding to the entitled data set being viewed. This parameter is returned when a data set owner is viewing the entitled copy of its owned data set.</p>"
    )
    @as("SourceId")
    sourceId: option<id>,
    @ocaml.doc(
      "<p>If the origin of this data set is ENTITLED, includes the details for the product on AWS Marketplace.</p>"
    )
    @as("OriginDetails")
    originDetails: option<originDetails>,
    @ocaml.doc(
      "<p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers).</p>"
    )
    @as("Origin")
    origin: option<origin>,
    @ocaml.doc("<p>The name of the data set.</p>") @as("Name") name: option<name>,
    @ocaml.doc("<p>The unique identifier for the data set.</p>") @as("Id") id: option<id>,
    @ocaml.doc("<p>The description for the data set.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The date and time that the data set was created, in ISO 8601 format.</p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>The type of asset that is added to a data set.</p>") @as("AssetType")
    assetType: option<assetType>,
    @ocaml.doc("<p>The ARN for the data set.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "GetDataSetCommand"
  let make = (~dataSetId, ()) => new({dataSetId: dataSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRevision = {
  type t
  @ocaml.doc("<p>The request body for CreateRevision.</p>")
  type request = {
    @ocaml.doc(
      "<p>A revision tag is an optional label that you can assign to a revision when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to these data sets and revisions.</p>"
    )
    @as("Tags")
    tags: option<mapOf__string>,
    @ocaml.doc("<p>The unique identifier for a data set.</p>") @as("DataSetId") dataSetId: __string,
    @ocaml.doc("<p>An optional comment about the revision.</p>") @as("Comment")
    comment: option<__stringMin0Max16384>,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the revision was revoked, in ISO 8601 format.</p>")
    @as("RevokedAt")
    revokedAt: option<timestamp_>,
    @ocaml.doc("<p>A status indicating that subscribers' access to the revision was revoked.</p>")
    @as("Revoked")
    revoked: option<__boolean>,
    @ocaml.doc(
      "<p>A required comment to inform subscribers of the reason their access to the revision was revoked.</p>"
    )
    @as("RevocationComment")
    revocationComment: option<__stringMin10Max512>,
    @ocaml.doc("<p>The date and time that the revision was last updated, in ISO 8601 format.</p>")
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc("<p>The tags for the revision.</p>") @as("Tags") tags: option<mapOf__string>,
    @ocaml.doc(
      "<p>The revision ID of the owned revision corresponding to the entitled revision being viewed. This parameter is returned when a revision owner is viewing the entitled copy of its owned revision.</p>"
    )
    @as("SourceId")
    sourceId: option<id>,
    @ocaml.doc("<p>The unique identifier for the revision.</p>") @as("Id") id: option<id>,
    @ocaml.doc(
      "<p>To publish a revision to a data set in a product, the revision must first be finalized. Finalizing a revision tells AWS Data Exchange that your changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p> <p>Finalized revisions can be published through the AWS Data Exchange console or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action. When using the API, revisions are uniquely identified by their ARN.</p>"
    )
    @as("Finalized")
    finalized: option<__boolean>,
    @ocaml.doc("<p>The unique identifier for the data set associated with this revision.</p>")
    @as("DataSetId")
    dataSetId: option<id>,
    @ocaml.doc("<p>The date and time that the revision was created, in ISO 8601 format.</p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>An optional comment about the revision.</p>") @as("Comment")
    comment: option<__stringMin0Max16384>,
    @ocaml.doc("<p>The ARN for the revision.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "CreateRevisionCommand"
  let make = (~dataSetId, ~tags=?, ~comment=?, ()) =>
    new({tags: tags, dataSetId: dataSetId, comment: comment})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataSet = {
  type t
  @ocaml.doc("<p>The request body for CreateDataSet.</p>")
  type request = {
    @ocaml.doc(
      "<p>A data set tag is an optional label that you can assign to a data set when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to these data sets and revisions.</p>"
    )
    @as("Tags")
    tags: option<mapOf__string>,
    @ocaml.doc("<p>The name of the data set.</p>") @as("Name") name: name,
    @ocaml.doc(
      "<p>A description for the data set. This value can be up to 16,348 characters long.</p>"
    )
    @as("Description")
    description: description,
    @ocaml.doc("<p>The type of asset that is added to a data set.</p>") @as("AssetType")
    assetType: assetType,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the data set was last updated, in ISO 8601 format.</p>")
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc("<p>The tags for the data set.</p>") @as("Tags") tags: option<mapOf__string>,
    @ocaml.doc(
      "<p>The data set ID of the owned data set corresponding to the entitled data set being viewed. This parameter is returned when a data set owner is viewing the entitled copy of its owned data set.</p>"
    )
    @as("SourceId")
    sourceId: option<id>,
    @ocaml.doc(
      "<p>If the origin of this data set is ENTITLED, includes the details for the product on AWS Marketplace.</p>"
    )
    @as("OriginDetails")
    originDetails: option<originDetails>,
    @ocaml.doc(
      "<p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers).</p>"
    )
    @as("Origin")
    origin: option<origin>,
    @ocaml.doc("<p>The name of the data set.</p>") @as("Name") name: option<name>,
    @ocaml.doc("<p>The unique identifier for the data set.</p>") @as("Id") id: option<id>,
    @ocaml.doc("<p>The description for the data set.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The date and time that the data set was created, in ISO 8601 format.</p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>The type of asset that is added to a data set.</p>") @as("AssetType")
    assetType: option<assetType>,
    @ocaml.doc("<p>The ARN for the data set.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "CreateDataSetCommand"
  let make = (~name, ~description, ~assetType, ~tags=?, ()) =>
    new({tags: tags, name: name, description: description, assetType: assetType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAsset = {
  type t
  @ocaml.doc("<p>The request body for UpdateAsset.</p>")
  type request = {
    @ocaml.doc("<p>The unique identifier for a revision.</p>") @as("RevisionId")
    revisionId: __string,
    @ocaml.doc(
      "<p>The name of the asset. When importing from Amazon S3, the S3 object key is used as the asset name. When exporting to Amazon S3, the asset name is used as default target S3 object key. When importing from Amazon API Gateway API, the API name is used as the asset name. When importing from Amazon Redshift, the datashare name is used as the asset name.</p>"
    )
    @as("Name")
    name: assetName,
    @ocaml.doc("<p>The unique identifier for a data set.</p>") @as("DataSetId") dataSetId: __string,
    @ocaml.doc("<p>The unique identifier for an asset.</p>") @as("AssetId") assetId: __string,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the asset was last updated, in ISO 8601 format.</p>")
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc(
      "<p>The asset ID of the owned asset corresponding to the entitled asset being viewed. This parameter is returned when an asset owner is viewing the entitled copy of its owned asset.</p>"
    )
    @as("SourceId")
    sourceId: option<id>,
    @ocaml.doc("<p>The unique identifier for the revision associated with this asset.</p>")
    @as("RevisionId")
    revisionId: option<id>,
    @ocaml.doc(
      "<p>The name of the asset. When importing from Amazon S3, the S3 object key is used as the asset name. When exporting to Amazon S3, the asset name is used as default target S3 object key. When importing from Amazon API Gateway API, the API name is used as the asset name. When importing from Amazon Redshift, the datashare name is used as the asset name.</p>"
    )
    @as("Name")
    name: option<assetName>,
    @ocaml.doc("<p>The unique identifier for the asset.</p>") @as("Id") id: option<id>,
    @ocaml.doc("<p>The unique identifier for the data set associated with this asset.</p>")
    @as("DataSetId")
    dataSetId: option<id>,
    @ocaml.doc("<p>The date and time that the asset was created, in ISO 8601 format.</p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>The type of asset that is added to a data set.</p>") @as("AssetType")
    assetType: option<assetType>,
    @ocaml.doc("<p>Information about the asset.</p>") @as("AssetDetails")
    assetDetails: option<assetDetails>,
    @ocaml.doc("<p>The ARN for the asset.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "UpdateAssetCommand"
  let make = (~revisionId, ~name, ~dataSetId, ~assetId, ()) =>
    new({revisionId: revisionId, name: name, dataSetId: dataSetId, assetId: assetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDataSetRevisions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token value retrieved from a previous call to access the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of results returned by a single call.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The unique identifier for a data set.</p>") @as("DataSetId") dataSetId: __string,
  }
  type response = {
    @ocaml.doc("<p>The asset objects listed by the request.</p>") @as("Revisions")
    revisions: option<listOfRevisionEntry>,
    @ocaml.doc(
      "<p>The token value retrieved from a previous call to access the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-dataexchange") @new
  external new: request => t = "ListDataSetRevisionsCommand"
  let make = (~dataSetId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, dataSetId: dataSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAsset = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for a revision.</p>") @as("RevisionId")
    revisionId: __string,
    @ocaml.doc("<p>The unique identifier for a data set.</p>") @as("DataSetId") dataSetId: __string,
    @ocaml.doc("<p>The unique identifier for an asset.</p>") @as("AssetId") assetId: __string,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the asset was last updated, in ISO 8601 format.</p>")
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc(
      "<p>The asset ID of the owned asset corresponding to the entitled asset being viewed. This parameter is returned when an asset owner is viewing the entitled copy of its owned asset.</p>"
    )
    @as("SourceId")
    sourceId: option<id>,
    @ocaml.doc("<p>The unique identifier for the revision associated with this asset.</p>")
    @as("RevisionId")
    revisionId: option<id>,
    @ocaml.doc(
      "<p>The name of the asset. When importing from Amazon S3, the S3 object key is used as the asset name. When exporting to Amazon S3, the asset name is used as default target S3 object key. When importing from Amazon API Gateway API, the API name is used as the asset name. When importing from Amazon Redshift, the datashare name is used as the asset name.</p>"
    )
    @as("Name")
    name: option<assetName>,
    @ocaml.doc("<p>The unique identifier for the asset.</p>") @as("Id") id: option<id>,
    @ocaml.doc("<p>The unique identifier for the data set associated with this asset.</p>")
    @as("DataSetId")
    dataSetId: option<id>,
    @ocaml.doc("<p>The date and time that the asset was created, in ISO 8601 format.</p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>The type of asset that is added to a data set.</p>") @as("AssetType")
    assetType: option<assetType>,
    @ocaml.doc("<p>Information about the asset.</p>") @as("AssetDetails")
    assetDetails: option<assetDetails>,
    @ocaml.doc("<p>The ARN for the asset.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "GetAssetCommand"
  let make = (~revisionId, ~dataSetId, ~assetId, ()) =>
    new({revisionId: revisionId, dataSetId: dataSetId, assetId: assetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEventAction = {
  type t
  @ocaml.doc("<p>The request body for UpdateEventAction.</p>")
  type request = {
    @ocaml.doc("<p>The unique identifier for the event action.</p>") @as("EventActionId")
    eventActionId: __string,
    @ocaml.doc("<p>What occurs after a certain event.</p>") @as("Action") action: option<action>,
  }
  type response = {
    @ocaml.doc(
      "<p>The date and time that the event action was last updated, in ISO 8601 format.</p>"
    )
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc("<p>The unique identifier for the event action.</p>") @as("Id") id: option<id>,
    @ocaml.doc("<p>What occurs to start an action.</p>") @as("Event") event: option<event>,
    @ocaml.doc("<p>The date and time that the event action was created, in ISO 8601 format.</p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>The ARN for the event action.</p>") @as("Arn") arn: option<arn>,
    @ocaml.doc("<p>What occurs after a certain event.</p>") @as("Action") action: option<action>,
  }
  @module("@aws-sdk/client-dataexchange") @new
  external new: request => t = "UpdateEventActionCommand"
  let make = (~eventActionId, ~action=?, ()) => new({eventActionId: eventActionId, action: action})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDataSets = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers).</p>"
    )
    @as("Origin")
    origin: option<__string>,
    @ocaml.doc(
      "<p>The token value retrieved from a previous call to access the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of results returned by a single call.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token value retrieved from a previous call to access the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The data set objects listed by the request.</p>") @as("DataSets")
    dataSets: option<listOfDataSetEntry>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "ListDataSetsCommand"
  let make = (~origin=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({origin: origin, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEventAction = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the event action.</p>") @as("EventActionId")
    eventActionId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The date and time that the event action was last updated, in ISO 8601 format.</p>"
    )
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc("<p>The unique identifier for the event action.</p>") @as("Id") id: option<id>,
    @ocaml.doc("<p>What occurs to start an action.</p>") @as("Event") event: option<event>,
    @ocaml.doc("<p>The date and time that the event action was created, in ISO 8601 format.</p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>The ARN for the event action.</p>") @as("Arn") arn: option<arn>,
    @ocaml.doc("<p>What occurs after a certain event.</p>") @as("Action") action: option<action>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "GetEventActionCommand"
  let make = (~eventActionId, ()) => new({eventActionId: eventActionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEventAction = {
  type t
  @ocaml.doc("<p>The request body for CreateEventAction.</p>")
  type request = {
    @ocaml.doc("<p>What occurs to start an action.</p>") @as("Event") event: event,
    @ocaml.doc("<p>What occurs after a certain event.</p>") @as("Action") action: action,
  }
  type response = {
    @ocaml.doc(
      "<p>The date and time that the event action was last updated, in ISO 8601 format.</p>"
    )
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc("<p>The unique identifier for the event action.</p>") @as("Id") id: option<id>,
    @ocaml.doc("<p>What occurs to start an action.</p>") @as("Event") event: option<event>,
    @ocaml.doc("<p>The date and time that the event action was created, in ISO 8601 format.</p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>The ARN for the event action.</p>") @as("Arn") arn: option<arn>,
    @ocaml.doc("<p>What occurs after a certain event.</p>") @as("Action") action: option<action>,
  }
  @module("@aws-sdk/client-dataexchange") @new
  external new: request => t = "CreateEventActionCommand"
  let make = (~event, ~action, ()) => new({event: event, action: action})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRevisionAssets = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for a revision.</p>") @as("RevisionId")
    revisionId: __string,
    @ocaml.doc(
      "<p>The token value retrieved from a previous call to access the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of results returned by a single call.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The unique identifier for a data set.</p>") @as("DataSetId") dataSetId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The token value retrieved from a previous call to access the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The asset objects listed by the request.</p>") @as("Assets")
    assets: option<listOfAssetEntry>,
  }
  @module("@aws-sdk/client-dataexchange") @new
  external new: request => t = "ListRevisionAssetsCommand"
  let make = (~revisionId, ~dataSetId, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      revisionId: revisionId,
      nextToken: nextToken,
      maxResults: maxResults,
      dataSetId: dataSetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEventActions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token value retrieved from a previous call to access the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of results returned by a single call.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The unique identifier for the event source.</p>") @as("EventSourceId")
    eventSourceId: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token value retrieved from a previous call to access the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The event action objects listed by the request.</p>") @as("EventActions")
    eventActions: option<listOfEventActionEntry>,
  }
  @module("@aws-sdk/client-dataexchange") @new
  external new: request => t = "ListEventActionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~eventSourceId=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, eventSourceId: eventSourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJob = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for a job.</p>") @as("JobId") jobId: __string,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the job was last updated, in ISO 8601 format.</p>")
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc("<p>The job type.</p>") @as("Type") type_: option<type_>,
    @ocaml.doc("<p>The state of the job.</p>") @as("State") state: option<state>,
    @ocaml.doc("<p>The unique identifier for the job.</p>") @as("Id") id: option<id>,
    @ocaml.doc("<p>The errors associated with jobs.</p>") @as("Errors")
    errors: option<listOfJobError>,
    @ocaml.doc("<p>Details about the job.</p>") @as("Details") details: option<responseDetails>,
    @ocaml.doc("<p>The date and time that the job was created, in ISO 8601 format.</p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>The ARN for the job.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "GetJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateJob = {
  type t
  @ocaml.doc("<p>The request body for CreateJob.</p>")
  type request = {
    @ocaml.doc("<p>The type of job to be created.</p>") @as("Type") type_: type_,
    @ocaml.doc("<p>The details for the CreateJob request.</p>") @as("Details")
    details: requestDetails,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the job was last updated, in ISO 8601 format.</p>")
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc("<p>The job type.</p>") @as("Type") type_: option<type_>,
    @ocaml.doc("<p>The state of the job.</p>") @as("State") state: option<state>,
    @ocaml.doc("<p>The unique identifier for the job.</p>") @as("Id") id: option<id>,
    @ocaml.doc("<p>The errors associated with jobs.</p>") @as("Errors")
    errors: option<listOfJobError>,
    @ocaml.doc("<p>Details about the job.</p>") @as("Details") details: option<responseDetails>,
    @ocaml.doc("<p>The date and time that the job was created, in ISO 8601 format.</p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>The ARN for the job.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "CreateJobCommand"
  let make = (~type_, ~details, ()) => new({type_: type_, details: details})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for a revision.</p>") @as("RevisionId")
    revisionId: option<__string>,
    @ocaml.doc(
      "<p>The token value retrieved from a previous call to access the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of results returned by a single call.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The unique identifier for a data set.</p>") @as("DataSetId")
    dataSetId: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token value retrieved from a previous call to access the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The jobs listed by the request.</p>") @as("Jobs") jobs: option<listOfJobEntry>,
  }
  @module("@aws-sdk/client-dataexchange") @new external new: request => t = "ListJobsCommand"
  let make = (~revisionId=?, ~nextToken=?, ~maxResults=?, ~dataSetId=?, ()) =>
    new({
      revisionId: revisionId,
      nextToken: nextToken,
      maxResults: maxResults,
      dataSetId: dataSetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
