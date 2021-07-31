type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type usageText = string
type url = string
type uploadId = string
type tagValue = string
type tagKey = string
type resourceUrl = string
type repositoryPolicyText = string
type repositoryName = string
type repositoryDescription = string
type registryVerified = bool;
type registryIdOrAlias = string
type registryId = string
type registryDisplayName = string
type registryAliasStatus = [@as("REJECTED") #REJECTED | @as("PENDING") #PENDING | @as("ACTIVE") #ACTIVE]
type registryAliasName = string
type pushTimestamp = Js.Date.t;
type primaryRegistryAliasFlag = bool;
type partSize = float;
type operatingSystem = string
type nextToken = string
type mediaType = string
type maxResults = int;
type marketplaceCertified = bool;
type logoImageBlob = NodeJs.Buffer.t;
type layerSizeInBytes = float;
type layerPartBlob = NodeJs.Buffer.t;
type layerFailureReason = string
type layerFailureCode = [@as("MissingLayerDigest") #MissingLayerDigest | @as("InvalidLayerDigest") #InvalidLayerDigest]
type layerDigest = string
type layerAvailability = [@as("UNAVAILABLE") #UNAVAILABLE | @as("AVAILABLE") #AVAILABLE]
type imageTag = string
type imageSizeInBytes = float;
type imageManifest = string
type imageFailureReason = string
type imageFailureCode = [@as("KmsError") #KmsError | @as("ImageReferencedByManifestList") #ImageReferencedByManifestList | @as("MissingDigestAndTag") #MissingDigestAndTag | @as("ImageNotFound") #ImageNotFound | @as("ImageTagDoesNotMatchDigest") #ImageTagDoesNotMatchDigest | @as("InvalidImageTag") #InvalidImageTag | @as("InvalidImageDigest") #InvalidImageDigest]
type imageDigest = string
type forceFlag = bool;
type expirationTimestamp = Js.Date.t;
type exceptionMessage = string
type defaultRegistryAliasFlag = bool;
type creationTimestamp = Js.Date.t;
type batchedOperationLayerDigest = string
type base64 = string
type arn = string
type architecture = string
type aboutText = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type repositoryNameList = array<repositoryName>
type repository = {
@as("createdAt") createdAt: creationTimestamp,
@as("repositoryUri") repositoryUri: url,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId,
@as("repositoryArn") repositoryArn: arn
}
type registryCatalogData = {
@as("displayName") displayName: registryDisplayName
}
type registryAlias = {
@as("defaultRegistryAlias") defaultRegistryAlias: option<defaultRegistryAliasFlag>,
@as("primaryRegistryAlias") primaryRegistryAlias: option<primaryRegistryAliasFlag>,
@as("status") status: option<registryAliasStatus>,
@as("name") name: option<registryAliasName>
}
type referencedImageDetail = {
@as("artifactMediaType") artifactMediaType: mediaType,
@as("imageManifestMediaType") imageManifestMediaType: mediaType,
@as("imagePushedAt") imagePushedAt: pushTimestamp,
@as("imageSizeInBytes") imageSizeInBytes: imageSizeInBytes,
@as("imageDigest") imageDigest: imageDigest
}
type operatingSystemList = array<operatingSystem>
type layerFailure = {
@as("failureReason") failureReason: layerFailureReason,
@as("failureCode") failureCode: layerFailureCode,
@as("layerDigest") layerDigest: batchedOperationLayerDigest
}
type layerDigestList = array<layerDigest>
type layer = {
@as("mediaType") mediaType: mediaType,
@as("layerSize") layerSize: layerSizeInBytes,
@as("layerAvailability") layerAvailability: layerAvailability,
@as("layerDigest") layerDigest: layerDigest
}
type imageTagList = array<imageTag>
type imageIdentifier = {
@as("imageTag") imageTag: imageTag,
@as("imageDigest") imageDigest: imageDigest
}
type batchedOperationLayerDigestList = array<batchedOperationLayerDigest>
type authorizationData = {
@as("expiresAt") expiresAt: expirationTimestamp,
@as("authorizationToken") authorizationToken: base64
}
type architectureList = array<architecture>
type tagList = array<tag>
type repositoryList = array<repository>
type repositoryCatalogDataInput = {
@as("usageText") usageText: usageText,
@as("aboutText") aboutText: aboutText,
@as("logoImageBlob") logoImageBlob: logoImageBlob,
@as("operatingSystems") operatingSystems: operatingSystemList,
@as("architectures") architectures: architectureList,
@as("description") description: repositoryDescription
}
type repositoryCatalogData = {
@as("marketplaceCertified") marketplaceCertified: marketplaceCertified,
@as("usageText") usageText: usageText,
@as("aboutText") aboutText: aboutText,
@as("logoUrl") logoUrl: resourceUrl,
@as("operatingSystems") operatingSystems: operatingSystemList,
@as("architectures") architectures: architectureList,
@as("description") description: repositoryDescription
}
type registryAliasList = array<registryAlias>
type layerList = array<layer>
type layerFailureList = array<layerFailure>
type imageTagDetail = {
@as("imageDetail") imageDetail: referencedImageDetail,
@as("createdAt") createdAt: creationTimestamp,
@as("imageTag") imageTag: imageTag
}
type imageIdentifierList = array<imageIdentifier>
type imageFailure = {
@as("failureReason") failureReason: imageFailureReason,
@as("failureCode") failureCode: imageFailureCode,
@as("imageId") imageId: imageIdentifier
}
type imageDetail = {
@as("artifactMediaType") artifactMediaType: mediaType,
@as("imageManifestMediaType") imageManifestMediaType: mediaType,
@as("imagePushedAt") imagePushedAt: pushTimestamp,
@as("imageSizeInBytes") imageSizeInBytes: imageSizeInBytes,
@as("imageTags") imageTags: imageTagList,
@as("imageDigest") imageDigest: imageDigest,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
type image = {
@as("imageManifestMediaType") imageManifestMediaType: mediaType,
@as("imageManifest") imageManifest: imageManifest,
@as("imageId") imageId: imageIdentifier,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryIdOrAlias
}
type registry = {
@as("aliases") aliases: option<registryAliasList>,
@as("verified") verified: option<registryVerified>,
@as("registryUri") registryUri: option<url>,
@as("registryArn") registryArn: option<arn>,
@as("registryId") registryId: option<registryId>
}
type imageTagDetailList = array<imageTagDetail>
type imageFailureList = array<imageFailure>
type imageDetailList = array<imageDetail>
type registryList = array<registry>
type clientType;
@module("@aws-sdk/client-ecr-public") @new external createClient: unit => clientType = "ECRPUBLICClient";
module UploadLayerPart = {
  type t;
  type request = {
@as("layerPartBlob") layerPartBlob: option<layerPartBlob>,
@as("partLastByte") partLastByte: option<partSize>,
@as("partFirstByte") partFirstByte: option<partSize>,
@as("uploadId") uploadId: option<uploadId>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryIdOrAlias
}
  type response = {
@as("lastByteReceived") lastByteReceived: partSize,
@as("uploadId") uploadId: uploadId,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "UploadLayerPartCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetRepositoryPolicy = {
  type t;
  type request = {
@as("force") force: forceFlag,
@as("policyText") policyText: option<repositoryPolicyText>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("policyText") policyText: repositoryPolicyText,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "SetRepositoryPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InitiateLayerUpload = {
  type t;
  type request = {
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryIdOrAlias
}
  type response = {
@as("partSize") partSize: partSize,
@as("uploadId") uploadId: uploadId
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "InitiateLayerUploadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRepositoryPolicy = {
  type t;
  type request = {
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("policyText") policyText: repositoryPolicyText,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "GetRepositoryPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRepositoryPolicy = {
  type t;
  type request = {
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("policyText") policyText: repositoryPolicyText,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "DeleteRepositoryPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutRegistryCatalogData = {
  type t;
  type request = {
@as("displayName") displayName: registryDisplayName
}
  type response = {
@as("registryCatalogData") registryCatalogData: option<registryCatalogData>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "PutRegistryCatalogDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRegistryCatalogData = {
  type t;
  type request = unit
  type response = {
@as("registryCatalogData") registryCatalogData: option<registryCatalogData>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "GetRegistryCatalogDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAuthorizationToken = {
  type t;
  type request = unit
  type response = {
@as("authorizationData") authorizationData: authorizationData
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "GetAuthorizationTokenCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRepository = {
  type t;
  type request = {
@as("force") force: forceFlag,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("repository") repository: repository
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "DeleteRepositoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CompleteLayerUpload = {
  type t;
  type request = {
@as("layerDigests") layerDigests: option<layerDigestList>,
@as("uploadId") uploadId: option<uploadId>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryIdOrAlias
}
  type response = {
@as("layerDigest") layerDigest: layerDigest,
@as("uploadId") uploadId: uploadId,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "CompleteLayerUploadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagList>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutRepositoryCatalogData = {
  type t;
  type request = {
@as("catalogData") catalogData: option<repositoryCatalogDataInput>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("catalogData") catalogData: repositoryCatalogData
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "PutRepositoryCatalogDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutImage = {
  type t;
  type request = {
@as("imageDigest") imageDigest: imageDigest,
@as("imageTag") imageTag: imageTag,
@as("imageManifestMediaType") imageManifestMediaType: mediaType,
@as("imageManifest") imageManifest: option<imageManifest>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryIdOrAlias
}
  type response = {
@as("image") image: image
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "PutImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<arn>
}
  type response = {
@as("tags") tags: tagList
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRepositoryCatalogData = {
  type t;
  type request = {
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("catalogData") catalogData: repositoryCatalogData
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "GetRepositoryCatalogDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRepositories = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("repositoryNames") repositoryNames: repositoryNameList,
@as("registryId") registryId: registryId
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("repositories") repositories: repositoryList
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "DescribeRepositoriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRepository = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("catalogData") catalogData: repositoryCatalogDataInput,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("catalogData") catalogData: repositoryCatalogData,
@as("repository") repository: repository
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "CreateRepositoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchCheckLayerAvailability = {
  type t;
  type request = {
@as("layerDigests") layerDigests: option<batchedOperationLayerDigestList>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryIdOrAlias
}
  type response = {
@as("failures") failures: layerFailureList,
@as("layers") layers: layerList
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "BatchCheckLayerAvailabilityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeImages = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("imageIds") imageIds: imageIdentifierList,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("imageDetails") imageDetails: imageDetailList
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "DescribeImagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeImageTags = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("imageTagDetails") imageTagDetails: imageTagDetailList
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "DescribeImageTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteImage = {
  type t;
  type request = {
@as("imageIds") imageIds: option<imageIdentifierList>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("failures") failures: imageFailureList,
@as("imageIds") imageIds: imageIdentifierList
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "BatchDeleteImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRegistries = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("registries") registries: option<registryList>
}
  @module("@aws-sdk/client-ecr-public") @new external new_: (request) => t = "DescribeRegistriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
