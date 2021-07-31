type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type vulnerabilitySourceUpdateTimestamp = Js.Date.t;
type url = string
type uploadId = string
type tagValue = string
type tagStatus = [@as("ANY") #ANY | @as("UNTAGGED") #UNTAGGED | @as("TAGGED") #TAGGED]
type tagKey = string
type severityCount = int;
type scanTimestamp = Js.Date.t;
type scanStatusDescription = string
type scanStatus = [@as("FAILED") #FAILED | @as("COMPLETE") #COMPLETE | @as("IN_PROGRESS") #IN_PROGRESS]
type scanOnPushFlag = bool;
type repositoryPolicyText = string
type repositoryName = string
type registryPolicyText = string
type registryId = string
type region = string
type pushTimestamp = Js.Date.t;
type proxyEndpoint = string
type partSize = float;
type nextToken = string
type mediaType = string
type maxResults = int;
type lifecyclePreviewMaxResults = int;
type lifecyclePolicyText = string
type lifecyclePolicyRulePriority = int;
type lifecyclePolicyPreviewStatus = [@as("FAILED") #FAILED | @as("EXPIRED") #EXPIRED | @as("COMPLETE") #COMPLETE | @as("IN_PROGRESS") #IN_PROGRESS]
type layerSizeInBytes = float;
type layerPartBlob = NodeJs.Buffer.t;
type layerFailureReason = string
type layerFailureCode = [@as("MissingLayerDigest") #MissingLayerDigest | @as("InvalidLayerDigest") #InvalidLayerDigest]
type layerDigest = string
type layerAvailability = [@as("UNAVAILABLE") #UNAVAILABLE | @as("AVAILABLE") #AVAILABLE]
type kmsKey = string
type kmsError = string
type imageTagMutability = [@as("IMMUTABLE") #IMMUTABLE | @as("MUTABLE") #MUTABLE]
type imageTag = string
type imageSizeInBytes = float;
type imageManifest = string
type imageFailureReason = string
type imageFailureCode = [@as("KmsError") #KmsError | @as("ImageReferencedByManifestList") #ImageReferencedByManifestList | @as("MissingDigestAndTag") #MissingDigestAndTag | @as("ImageNotFound") #ImageNotFound | @as("ImageTagDoesNotMatchDigest") #ImageTagDoesNotMatchDigest | @as("InvalidImageTag") #InvalidImageTag | @as("InvalidImageDigest") #InvalidImageDigest]
type imageDigest = string
type imageCount = int;
type imageActionType = [@as("EXPIRE") #EXPIRE]
type forceFlag = bool;
type findingSeverity = [@as("UNDEFINED") #UNDEFINED | @as("CRITICAL") #CRITICAL | @as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW | @as("INFORMATIONAL") #INFORMATIONAL]
type findingName = string
type findingDescription = string
type expirationTimestamp = Js.Date.t;
type exceptionMessage = string
type evaluationTimestamp = Js.Date.t;
type encryptionType = [@as("KMS") #KMS | @as("AES256") #AES256]
type creationTimestamp = Js.Date.t;
type batchedOperationLayerDigest = string
type base64 = string
type attributeValue = string
type attributeKey = string
type arn = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type repositoryNameList = array<repositoryName>
type replicationDestination = {
@as("registryId") registryId: option<registryId>,
@as("region") region: option<region>
}
type mediaTypeList = array<mediaType>
type listImagesFilter = {
@as("tagStatus") tagStatus: tagStatus
}
type lifecyclePolicyRuleAction = {
@as("type") type_: imageActionType
}
type lifecyclePolicyPreviewSummary = {
@as("expiringImageTotalCount") expiringImageTotalCount: imageCount
}
type lifecyclePolicyPreviewFilter = {
@as("tagStatus") tagStatus: tagStatus
}
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
type imageScanningConfiguration = {
@as("scanOnPush") scanOnPush: scanOnPushFlag
}
type imageScanStatus = {
@as("description") description: scanStatusDescription,
@as("status") status: scanStatus
}
type imageIdentifier = {
@as("imageTag") imageTag: imageTag,
@as("imageDigest") imageDigest: imageDigest
}
type getAuthorizationTokenRegistryIdList = array<registryId>
type findingSeverityCounts = Js.Dict.t< severityCount>
type encryptionConfiguration = {
@as("kmsKey") kmsKey: kmsKey,
@as("encryptionType") encryptionType: option<encryptionType>
}
type describeImagesFilter = {
@as("tagStatus") tagStatus: tagStatus
}
type batchedOperationLayerDigestList = array<batchedOperationLayerDigest>
type authorizationData = {
@as("proxyEndpoint") proxyEndpoint: proxyEndpoint,
@as("expiresAt") expiresAt: expirationTimestamp,
@as("authorizationToken") authorizationToken: base64
}
type attribute = {
@as("value") value: attributeValue,
@as("key") key: option<attributeKey>
}
type tagList = array<tag>
type repository = {
@as("encryptionConfiguration") encryptionConfiguration: encryptionConfiguration,
@as("imageScanningConfiguration") imageScanningConfiguration: imageScanningConfiguration,
@as("imageTagMutability") imageTagMutability: imageTagMutability,
@as("createdAt") createdAt: creationTimestamp,
@as("repositoryUri") repositoryUri: url,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId,
@as("repositoryArn") repositoryArn: arn
}
type replicationDestinationList = array<replicationDestination>
type lifecyclePolicyPreviewResult = {
@as("appliedRulePriority") appliedRulePriority: lifecyclePolicyRulePriority,
@as("action") action: lifecyclePolicyRuleAction,
@as("imagePushedAt") imagePushedAt: pushTimestamp,
@as("imageDigest") imageDigest: imageDigest,
@as("imageTags") imageTags: imageTagList
}
type layerList = array<layer>
type layerFailureList = array<layerFailure>
type imageScanFindingsSummary = {
@as("findingSeverityCounts") findingSeverityCounts: findingSeverityCounts,
@as("vulnerabilitySourceUpdatedAt") vulnerabilitySourceUpdatedAt: vulnerabilitySourceUpdateTimestamp,
@as("imageScanCompletedAt") imageScanCompletedAt: scanTimestamp
}
type imageIdentifierList = array<imageIdentifier>
type imageFailure = {
@as("failureReason") failureReason: imageFailureReason,
@as("failureCode") failureCode: imageFailureCode,
@as("imageId") imageId: imageIdentifier
}
type image = {
@as("imageManifestMediaType") imageManifestMediaType: mediaType,
@as("imageManifest") imageManifest: imageManifest,
@as("imageId") imageId: imageIdentifier,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
type authorizationDataList = array<authorizationData>
type attributeList = array<attribute>
type repositoryList = array<repository>
type replicationRule = {
@as("destinations") destinations: option<replicationDestinationList>
}
type lifecyclePolicyPreviewResultList = array<lifecyclePolicyPreviewResult>
type imageScanFinding = {
@as("attributes") attributes: attributeList,
@as("severity") severity: findingSeverity,
@as("uri") uri: url,
@as("description") description: findingDescription,
@as("name") name: findingName
}
type imageList = array<image>
type imageFailureList = array<imageFailure>
type imageDetail = {
@as("artifactMediaType") artifactMediaType: mediaType,
@as("imageManifestMediaType") imageManifestMediaType: mediaType,
@as("imageScanFindingsSummary") imageScanFindingsSummary: imageScanFindingsSummary,
@as("imageScanStatus") imageScanStatus: imageScanStatus,
@as("imagePushedAt") imagePushedAt: pushTimestamp,
@as("imageSizeInBytes") imageSizeInBytes: imageSizeInBytes,
@as("imageTags") imageTags: imageTagList,
@as("imageDigest") imageDigest: imageDigest,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
type replicationRuleList = array<replicationRule>
type imageScanFindingList = array<imageScanFinding>
type imageDetailList = array<imageDetail>
type replicationConfiguration = {
@as("rules") rules: option<replicationRuleList>
}
type imageScanFindings = {
@as("findingSeverityCounts") findingSeverityCounts: findingSeverityCounts,
@as("findings") findings: imageScanFindingList,
@as("vulnerabilitySourceUpdatedAt") vulnerabilitySourceUpdatedAt: vulnerabilitySourceUpdateTimestamp,
@as("imageScanCompletedAt") imageScanCompletedAt: scanTimestamp
}
type clientType;
@module("@aws-sdk/client-ecr") @new external createClient: unit => clientType = "ECRClient";
module UploadLayerPart = {
  type t;
  type request = {
@as("layerPartBlob") layerPartBlob: option<layerPartBlob>,
@as("partLastByte") partLastByte: option<partSize>,
@as("partFirstByte") partFirstByte: option<partSize>,
@as("uploadId") uploadId: option<uploadId>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("lastByteReceived") lastByteReceived: partSize,
@as("uploadId") uploadId: uploadId,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "UploadLayerPartCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartLifecyclePolicyPreview = {
  type t;
  type request = {
@as("lifecyclePolicyText") lifecyclePolicyText: lifecyclePolicyText,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("status") status: lifecyclePolicyPreviewStatus,
@as("lifecyclePolicyText") lifecyclePolicyText: lifecyclePolicyText,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "StartLifecyclePolicyPreviewCommand";
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
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "SetRepositoryPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutRegistryPolicy = {
  type t;
  type request = {
@as("policyText") policyText: option<registryPolicyText>
}
  type response = {
@as("policyText") policyText: registryPolicyText,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "PutRegistryPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutLifecyclePolicy = {
  type t;
  type request = {
@as("lifecyclePolicyText") lifecyclePolicyText: option<lifecyclePolicyText>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("lifecyclePolicyText") lifecyclePolicyText: lifecyclePolicyText,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "PutLifecyclePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutImageTagMutability = {
  type t;
  type request = {
@as("imageTagMutability") imageTagMutability: option<imageTagMutability>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("imageTagMutability") imageTagMutability: imageTagMutability,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "PutImageTagMutabilityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InitiateLayerUpload = {
  type t;
  type request = {
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("partSize") partSize: partSize,
@as("uploadId") uploadId: uploadId
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "InitiateLayerUploadCommand";
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
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "GetRepositoryPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRegistryPolicy = {
  type t;
  type request = unit
  type response = {
@as("policyText") policyText: registryPolicyText,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "GetRegistryPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLifecyclePolicy = {
  type t;
  type request = {
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("lastEvaluatedAt") lastEvaluatedAt: evaluationTimestamp,
@as("lifecyclePolicyText") lifecyclePolicyText: lifecyclePolicyText,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "GetLifecyclePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDownloadUrlForLayer = {
  type t;
  type request = {
@as("layerDigest") layerDigest: option<layerDigest>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("layerDigest") layerDigest: layerDigest,
@as("downloadUrl") downloadUrl: url
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "GetDownloadUrlForLayerCommand";
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
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "DeleteRepositoryPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRegistryPolicy = {
  type t;
  type request = unit
  type response = {
@as("policyText") policyText: registryPolicyText,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "DeleteRegistryPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLifecyclePolicy = {
  type t;
  type request = {
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("lastEvaluatedAt") lastEvaluatedAt: evaluationTimestamp,
@as("lifecyclePolicyText") lifecyclePolicyText: lifecyclePolicyText,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "DeleteLifecyclePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartImageScan = {
  type t;
  type request = {
@as("imageId") imageId: option<imageIdentifier>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("imageScanStatus") imageScanStatus: imageScanStatus,
@as("imageId") imageId: imageIdentifier,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "StartImageScanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutImageScanningConfiguration = {
  type t;
  type request = {
@as("imageScanningConfiguration") imageScanningConfiguration: option<imageScanningConfiguration>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("imageScanningConfiguration") imageScanningConfiguration: imageScanningConfiguration,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "PutImageScanningConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CompleteLayerUpload = {
  type t;
  type request = {
@as("layerDigests") layerDigests: option<layerDigestList>,
@as("uploadId") uploadId: option<uploadId>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("layerDigest") layerDigest: layerDigest,
@as("uploadId") uploadId: uploadId,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "CompleteLayerUploadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagList>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
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
@as("registryId") registryId: registryId
}
  type response = {
@as("image") image: image
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "PutImageCommand";
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
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListImages = {
  type t;
  type request = {
@as("filter") filter: listImagesFilter,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("imageIds") imageIds: imageIdentifierList
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "ListImagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAuthorizationToken = {
  type t;
  type request = {
@as("registryIds") registryIds: getAuthorizationTokenRegistryIdList
}
  type response = {
@as("authorizationData") authorizationData: authorizationDataList
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "GetAuthorizationTokenCommand";
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
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "DeleteRepositoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRepository = {
  type t;
  type request = {
@as("encryptionConfiguration") encryptionConfiguration: encryptionConfiguration,
@as("imageScanningConfiguration") imageScanningConfiguration: imageScanningConfiguration,
@as("imageTagMutability") imageTagMutability: imageTagMutability,
@as("tags") tags: tagList,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("repository") repository: repository
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "CreateRepositoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchCheckLayerAvailability = {
  type t;
  type request = {
@as("layerDigests") layerDigests: option<batchedOperationLayerDigestList>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("failures") failures: layerFailureList,
@as("layers") layers: layerList
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "BatchCheckLayerAvailabilityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLifecyclePolicyPreview = {
  type t;
  type request = {
@as("filter") filter: lifecyclePolicyPreviewFilter,
@as("maxResults") maxResults: lifecyclePreviewMaxResults,
@as("nextToken") nextToken: nextToken,
@as("imageIds") imageIds: imageIdentifierList,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("summary") summary: lifecyclePolicyPreviewSummary,
@as("previewResults") previewResults: lifecyclePolicyPreviewResultList,
@as("nextToken") nextToken: nextToken,
@as("status") status: lifecyclePolicyPreviewStatus,
@as("lifecyclePolicyText") lifecyclePolicyText: lifecyclePolicyText,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "GetLifecyclePolicyPreviewCommand";
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
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "DescribeRepositoriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetImage = {
  type t;
  type request = {
@as("acceptedMediaTypes") acceptedMediaTypes: mediaTypeList,
@as("imageIds") imageIds: option<imageIdentifierList>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("failures") failures: imageFailureList,
@as("images") images: imageList
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "BatchGetImageCommand";
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
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "BatchDeleteImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeImages = {
  type t;
  type request = {
@as("filter") filter: describeImagesFilter,
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
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "DescribeImagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutReplicationConfiguration = {
  type t;
  type request = {
@as("replicationConfiguration") replicationConfiguration: option<replicationConfiguration>
}
  type response = {
@as("replicationConfiguration") replicationConfiguration: replicationConfiguration
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "PutReplicationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRegistry = {
  type t;
  type request = unit
  type response = {
@as("replicationConfiguration") replicationConfiguration: replicationConfiguration,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "DescribeRegistryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeImageScanFindings = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("imageId") imageId: option<imageIdentifier>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("registryId") registryId: registryId
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("imageScanFindings") imageScanFindings: imageScanFindings,
@as("imageScanStatus") imageScanStatus: imageScanStatus,
@as("imageId") imageId: imageIdentifier,
@as("repositoryName") repositoryName: repositoryName,
@as("registryId") registryId: registryId
}
  @module("@aws-sdk/client-ecr") @new external new_: (Js.Promise.t<request>) => t = "DescribeImageScanFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
