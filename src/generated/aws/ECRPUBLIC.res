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
type timestamp_ = Js.Date.t;
type long = float
type usageText = string
type url = string
type uploadId = string
type tagValue = string
type tagKey = string
type resourceUrl = string
type repositoryPolicyText = string
type repositoryName = string
type repositoryDescription = string
type registryVerified = bool
type registryIdOrAlias = string
type registryId = string
type registryDisplayName = string
type registryAliasStatus = [@as("REJECTED") #REJECTED | @as("PENDING") #PENDING | @as("ACTIVE") #ACTIVE]
type registryAliasName = string
type pushTimestamp = Js.Date.t;
type primaryRegistryAliasFlag = bool
type partSize = float
type operatingSystem = string
type nextToken = string
type mediaType = string
type maxResults = int
type marketplaceCertified = bool
type logoImageBlob = NodeJs.Buffer.t
type layerSizeInBytes = float
type layerPartBlob = NodeJs.Buffer.t
type layerFailureReason = string
type layerFailureCode = [@as("MissingLayerDigest") #MissingLayerDigest | @as("InvalidLayerDigest") #InvalidLayerDigest]
type layerDigest = string
type layerAvailability = [@as("UNAVAILABLE") #UNAVAILABLE | @as("AVAILABLE") #AVAILABLE]
type imageTag = string
type imageSizeInBytes = float
type imageManifest = string
type imageFailureReason = string
type imageFailureCode = [@as("KmsError") #KmsError | @as("ImageReferencedByManifestList") #ImageReferencedByManifestList | @as("MissingDigestAndTag") #MissingDigestAndTag | @as("ImageNotFound") #ImageNotFound | @as("ImageTagDoesNotMatchDigest") #ImageTagDoesNotMatchDigest | @as("InvalidImageTag") #InvalidImageTag | @as("InvalidImageDigest") #InvalidImageDigest]
type imageDigest = string
type forceFlag = bool
type expirationTimestamp = Js.Date.t;
type exceptionMessage = string
type defaultRegistryAliasFlag = bool
type creationTimestamp = Js.Date.t;
type batchedOperationLayerDigest = string
type base64 = string
type arn = string
type architecture = string
type aboutText = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type repositoryNameList = array<repositoryName>
type repository = {
createdAt: option<creationTimestamp>,
repositoryUri: option<url>,
repositoryName: option<repositoryName>,
registryId: option<registryId>,
repositoryArn: option<arn>
}
type registryCatalogData = {
displayName: option<registryDisplayName>
}
type registryAlias = {
defaultRegistryAlias: defaultRegistryAliasFlag,
primaryRegistryAlias: primaryRegistryAliasFlag,
status: registryAliasStatus,
name: registryAliasName
}
type referencedImageDetail = {
artifactMediaType: option<mediaType>,
imageManifestMediaType: option<mediaType>,
imagePushedAt: option<pushTimestamp>,
imageSizeInBytes: option<imageSizeInBytes>,
imageDigest: option<imageDigest>
}
type operatingSystemList = array<operatingSystem>
type layerFailure = {
failureReason: option<layerFailureReason>,
failureCode: option<layerFailureCode>,
layerDigest: option<batchedOperationLayerDigest>
}
type layerDigestList = array<layerDigest>
type layer = {
mediaType: option<mediaType>,
layerSize: option<layerSizeInBytes>,
layerAvailability: option<layerAvailability>,
layerDigest: option<layerDigest>
}
type imageTagList = array<imageTag>
type imageIdentifier = {
imageTag: option<imageTag>,
imageDigest: option<imageDigest>
}
type batchedOperationLayerDigestList = array<batchedOperationLayerDigest>
type authorizationData = {
expiresAt: option<expirationTimestamp>,
authorizationToken: option<base64>
}
type architectureList = array<architecture>
type tagList_ = array<tag>
type repositoryList = array<repository>
type repositoryCatalogDataInput = {
usageText: option<usageText>,
aboutText: option<aboutText>,
logoImageBlob: option<logoImageBlob>,
operatingSystems: option<operatingSystemList>,
architectures: option<architectureList>,
description: option<repositoryDescription>
}
type repositoryCatalogData = {
marketplaceCertified: option<marketplaceCertified>,
usageText: option<usageText>,
aboutText: option<aboutText>,
logoUrl: option<resourceUrl>,
operatingSystems: option<operatingSystemList>,
architectures: option<architectureList>,
description: option<repositoryDescription>
}
type registryAliasList = array<registryAlias>
type layerList = array<layer>
type layerFailureList = array<layerFailure>
type imageTagDetail = {
imageDetail: option<referencedImageDetail>,
createdAt: option<creationTimestamp>,
imageTag: option<imageTag>
}
type imageIdentifierList = array<imageIdentifier>
type imageFailure = {
failureReason: option<imageFailureReason>,
failureCode: option<imageFailureCode>,
imageId: option<imageIdentifier>
}
type imageDetail = {
artifactMediaType: option<mediaType>,
imageManifestMediaType: option<mediaType>,
imagePushedAt: option<pushTimestamp>,
imageSizeInBytes: option<imageSizeInBytes>,
imageTags: option<imageTagList>,
imageDigest: option<imageDigest>,
repositoryName: option<repositoryName>,
registryId: option<registryId>
}
type image = {
imageManifestMediaType: option<mediaType>,
imageManifest: option<imageManifest>,
imageId: option<imageIdentifier>,
repositoryName: option<repositoryName>,
registryId: option<registryIdOrAlias>
}
type registry = {
aliases: registryAliasList,
verified: registryVerified,
registryUri: url,
registryArn: arn,
registryId: registryId
}
type imageTagDetailList = array<imageTagDetail>
type imageFailureList = array<imageFailure>
type imageDetailList = array<imageDetail>
type registryList = array<registry>
type awsServiceClient;
@module("@aws-sdk/client-ecr-public") @new external createClient: unit => awsServiceClient = "ECRPUBLICClient";
module UploadLayerPart = {
  type t;
  type request = {
layerPartBlob: layerPartBlob,
partLastByte: partSize,
partFirstByte: partSize,
uploadId: uploadId,
repositoryName: repositoryName,
registryId: option<registryIdOrAlias>
}
  type response = {
lastByteReceived: option<partSize>,
uploadId: option<uploadId>,
repositoryName: option<repositoryName>,
registryId: option<registryId>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "UploadLayerPartCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetRepositoryPolicy = {
  type t;
  type request = {
force: option<forceFlag>,
policyText: repositoryPolicyText,
repositoryName: repositoryName,
registryId: option<registryId>
}
  type response = {
policyText: option<repositoryPolicyText>,
repositoryName: option<repositoryName>,
registryId: option<registryId>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "SetRepositoryPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module InitiateLayerUpload = {
  type t;
  type request = {
repositoryName: repositoryName,
registryId: option<registryIdOrAlias>
}
  type response = {
partSize: option<partSize>,
uploadId: option<uploadId>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "InitiateLayerUploadCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRepositoryPolicy = {
  type t;
  type request = {
repositoryName: repositoryName,
registryId: option<registryId>
}
  type response = {
policyText: option<repositoryPolicyText>,
repositoryName: option<repositoryName>,
registryId: option<registryId>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "GetRepositoryPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRepositoryPolicy = {
  type t;
  type request = {
repositoryName: repositoryName,
registryId: option<registryId>
}
  type response = {
policyText: option<repositoryPolicyText>,
repositoryName: option<repositoryName>,
registryId: option<registryId>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "DeleteRepositoryPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
resourceArn: arn
}
  type response = unit
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutRegistryCatalogData = {
  type t;
  type request = {
displayName: option<registryDisplayName>
}
  type response = {
registryCatalogData: registryCatalogData
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "PutRegistryCatalogDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRegistryCatalogData = {
  type t;
  type request = unit
  type response = {
registryCatalogData: registryCatalogData
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "GetRegistryCatalogDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAuthorizationToken = {
  type t;
  type request = unit
  type response = {
authorizationData: option<authorizationData>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "GetAuthorizationTokenCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRepository = {
  type t;
  type request = {
force: option<forceFlag>,
repositoryName: repositoryName,
registryId: option<registryId>
}
  type response = {
repository: option<repository>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "DeleteRepositoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CompleteLayerUpload = {
  type t;
  type request = {
layerDigests: layerDigestList,
uploadId: uploadId,
repositoryName: repositoryName,
registryId: option<registryIdOrAlias>
}
  type response = {
layerDigest: option<layerDigest>,
uploadId: option<uploadId>,
repositoryName: option<repositoryName>,
registryId: option<registryId>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "CompleteLayerUploadCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagList_,
resourceArn: arn
}
  type response = unit
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutRepositoryCatalogData = {
  type t;
  type request = {
catalogData: repositoryCatalogDataInput,
repositoryName: repositoryName,
registryId: option<registryId>
}
  type response = {
catalogData: option<repositoryCatalogData>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "PutRepositoryCatalogDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutImage = {
  type t;
  type request = {
imageDigest: option<imageDigest>,
imageTag: option<imageTag>,
imageManifestMediaType: option<mediaType>,
imageManifest: imageManifest,
repositoryName: repositoryName,
registryId: option<registryIdOrAlias>
}
  type response = {
image: option<image>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "PutImageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: arn
}
  type response = {
tags: option<tagList_>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRepositoryCatalogData = {
  type t;
  type request = {
repositoryName: repositoryName,
registryId: option<registryId>
}
  type response = {
catalogData: option<repositoryCatalogData>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "GetRepositoryCatalogDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRepositories = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
repositoryNames: option<repositoryNameList>,
registryId: option<registryId>
}
  type response = {
nextToken: option<nextToken>,
repositories: option<repositoryList>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "DescribeRepositoriesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRepository = {
  type t;
  type request = {
tags: option<tagList_>,
catalogData: option<repositoryCatalogDataInput>,
repositoryName: repositoryName
}
  type response = {
catalogData: option<repositoryCatalogData>,
repository: option<repository>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "CreateRepositoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchCheckLayerAvailability = {
  type t;
  type request = {
layerDigests: batchedOperationLayerDigestList,
repositoryName: repositoryName,
registryId: option<registryIdOrAlias>
}
  type response = {
failures: option<layerFailureList>,
layers: option<layerList>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "BatchCheckLayerAvailabilityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeImages = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
imageIds: option<imageIdentifierList>,
repositoryName: repositoryName,
registryId: option<registryId>
}
  type response = {
nextToken: option<nextToken>,
imageDetails: option<imageDetailList>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "DescribeImagesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeImageTags = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
repositoryName: repositoryName,
registryId: option<registryId>
}
  type response = {
nextToken: option<nextToken>,
imageTagDetails: option<imageTagDetailList>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "DescribeImageTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteImage = {
  type t;
  type request = {
imageIds: imageIdentifierList,
repositoryName: repositoryName,
registryId: option<registryId>
}
  type response = {
failures: option<imageFailureList>,
imageIds: option<imageIdentifierList>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "BatchDeleteImageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRegistries = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
registries: registryList
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "DescribeRegistriesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
