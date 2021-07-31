type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-ecr") @new external createClient: unit => awsServiceClient = "ECRClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vulnerabilitySourceUpdateTimestamp = Js.Date.t
type url = string
type uploadId = string
type tagValue = string
type tagStatus = [@as("ANY") #ANY | @as("UNTAGGED") #UNTAGGED | @as("TAGGED") #TAGGED]
type tagKey = string
type severityCount = int
type scanTimestamp = Js.Date.t
type scanStatusDescription = string
type scanStatus = [
  | @as("FAILED") #FAILED
  | @as("COMPLETE") #COMPLETE
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type scanOnPushFlag = bool
type repositoryPolicyText = string
type repositoryName = string
type registryPolicyText = string
type registryId = string
type region = string
type pushTimestamp = Js.Date.t
type proxyEndpoint = string
type partSize = float
type nextToken = string
type mediaType = string
type maxResults = int
type lifecyclePreviewMaxResults = int
type lifecyclePolicyText = string
type lifecyclePolicyRulePriority = int
type lifecyclePolicyPreviewStatus = [
  | @as("FAILED") #FAILED
  | @as("EXPIRED") #EXPIRED
  | @as("COMPLETE") #COMPLETE
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type layerSizeInBytes = float
type layerPartBlob = NodeJs.Buffer.t
type layerFailureReason = string
type layerFailureCode = [
  | @as("MissingLayerDigest") #MissingLayerDigest
  | @as("InvalidLayerDigest") #InvalidLayerDigest
]
type layerDigest = string
type layerAvailability = [@as("UNAVAILABLE") #UNAVAILABLE | @as("AVAILABLE") #AVAILABLE]
type kmsKey = string
type kmsError = string
type imageTagMutability = [@as("IMMUTABLE") #IMMUTABLE | @as("MUTABLE") #MUTABLE]
type imageTag = string
type imageSizeInBytes = float
type imageManifest = string
type imageFailureReason = string
type imageFailureCode = [
  | @as("KmsError") #KmsError
  | @as("ImageReferencedByManifestList") #ImageReferencedByManifestList
  | @as("MissingDigestAndTag") #MissingDigestAndTag
  | @as("ImageNotFound") #ImageNotFound
  | @as("ImageTagDoesNotMatchDigest") #ImageTagDoesNotMatchDigest
  | @as("InvalidImageTag") #InvalidImageTag
  | @as("InvalidImageDigest") #InvalidImageDigest
]
type imageDigest = string
type imageCount = int
type imageActionType = [@as("EXPIRE") #EXPIRE]
type forceFlag = bool
type findingSeverity = [
  | @as("UNDEFINED") #UNDEFINED
  | @as("CRITICAL") #CRITICAL
  | @as("HIGH") #HIGH
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
  | @as("INFORMATIONAL") #INFORMATIONAL
]
type findingName = string
type findingDescription = string
type expirationTimestamp = Js.Date.t
type exceptionMessage = string
type evaluationTimestamp = Js.Date.t
type encryptionType = [@as("KMS") #KMS | @as("AES256") #AES256]
type creationTimestamp = Js.Date.t
type batchedOperationLayerDigest = string
type base64 = string
type attributeValue = string
type attributeKey = string
type arn = string
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: option<tagValue>,
  @as("Key") key: option<tagKey>,
}
type repositoryNameList = array<repositoryName>
type replicationDestination = {
  registryId: registryId,
  region: region,
}
type mediaTypeList = array<mediaType>
type listImagesFilter = {tagStatus: option<tagStatus>}
type lifecyclePolicyRuleAction = {@as("type") type_: option<imageActionType>}
type lifecyclePolicyPreviewSummary = {expiringImageTotalCount: option<imageCount>}
type lifecyclePolicyPreviewFilter = {tagStatus: option<tagStatus>}
type layerFailure = {
  failureReason: option<layerFailureReason>,
  failureCode: option<layerFailureCode>,
  layerDigest: option<batchedOperationLayerDigest>,
}
type layerDigestList = array<layerDigest>
type layer = {
  mediaType: option<mediaType>,
  layerSize: option<layerSizeInBytes>,
  layerAvailability: option<layerAvailability>,
  layerDigest: option<layerDigest>,
}
type imageTagList = array<imageTag>
type imageScanningConfiguration = {scanOnPush: option<scanOnPushFlag>}
type imageScanStatus = {
  description: option<scanStatusDescription>,
  status: option<scanStatus>,
}
type imageIdentifier = {
  imageTag: option<imageTag>,
  imageDigest: option<imageDigest>,
}
type getAuthorizationTokenRegistryIdList = array<registryId>
type findingSeverityCounts = Js.Dict.t<severityCount>
type encryptionConfiguration = {
  kmsKey: option<kmsKey>,
  encryptionType: encryptionType,
}
type describeImagesFilter = {tagStatus: option<tagStatus>}
type batchedOperationLayerDigestList = array<batchedOperationLayerDigest>
type authorizationData = {
  proxyEndpoint: option<proxyEndpoint>,
  expiresAt: option<expirationTimestamp>,
  authorizationToken: option<base64>,
}
type attribute = {
  value: option<attributeValue>,
  key: attributeKey,
}
type tagList_ = array<tag>
type repository = {
  encryptionConfiguration: option<encryptionConfiguration>,
  imageScanningConfiguration: option<imageScanningConfiguration>,
  imageTagMutability: option<imageTagMutability>,
  createdAt: option<creationTimestamp>,
  repositoryUri: option<url>,
  repositoryName: option<repositoryName>,
  registryId: option<registryId>,
  repositoryArn: option<arn>,
}
type replicationDestinationList = array<replicationDestination>
type lifecyclePolicyPreviewResult = {
  appliedRulePriority: option<lifecyclePolicyRulePriority>,
  action: option<lifecyclePolicyRuleAction>,
  imagePushedAt: option<pushTimestamp>,
  imageDigest: option<imageDigest>,
  imageTags: option<imageTagList>,
}
type layerList = array<layer>
type layerFailureList = array<layerFailure>
type imageScanFindingsSummary = {
  findingSeverityCounts: option<findingSeverityCounts>,
  vulnerabilitySourceUpdatedAt: option<vulnerabilitySourceUpdateTimestamp>,
  imageScanCompletedAt: option<scanTimestamp>,
}
type imageIdentifierList = array<imageIdentifier>
type imageFailure = {
  failureReason: option<imageFailureReason>,
  failureCode: option<imageFailureCode>,
  imageId: option<imageIdentifier>,
}
type image = {
  imageManifestMediaType: option<mediaType>,
  imageManifest: option<imageManifest>,
  imageId: option<imageIdentifier>,
  repositoryName: option<repositoryName>,
  registryId: option<registryId>,
}
type authorizationDataList = array<authorizationData>
type attributeList = array<attribute>
type repositoryList = array<repository>
type replicationRule = {destinations: replicationDestinationList}
type lifecyclePolicyPreviewResultList = array<lifecyclePolicyPreviewResult>
type imageScanFinding = {
  attributes: option<attributeList>,
  severity: option<findingSeverity>,
  uri: option<url>,
  description: option<findingDescription>,
  name: option<findingName>,
}
type imageList = array<image>
type imageFailureList = array<imageFailure>
type imageDetail = {
  artifactMediaType: option<mediaType>,
  imageManifestMediaType: option<mediaType>,
  imageScanFindingsSummary: option<imageScanFindingsSummary>,
  imageScanStatus: option<imageScanStatus>,
  imagePushedAt: option<pushTimestamp>,
  imageSizeInBytes: option<imageSizeInBytes>,
  imageTags: option<imageTagList>,
  imageDigest: option<imageDigest>,
  repositoryName: option<repositoryName>,
  registryId: option<registryId>,
}
type replicationRuleList = array<replicationRule>
type imageScanFindingList = array<imageScanFinding>
type imageDetailList = array<imageDetail>
type replicationConfiguration = {rules: replicationRuleList}
type imageScanFindings = {
  findingSeverityCounts: option<findingSeverityCounts>,
  findings: option<imageScanFindingList>,
  vulnerabilitySourceUpdatedAt: option<vulnerabilitySourceUpdateTimestamp>,
  imageScanCompletedAt: option<scanTimestamp>,
}

module UploadLayerPart = {
  type t
  type request = {
    layerPartBlob: layerPartBlob,
    partLastByte: partSize,
    partFirstByte: partSize,
    uploadId: uploadId,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    lastByteReceived: option<partSize>,
    uploadId: option<uploadId>,
    repositoryName: option<repositoryName>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "UploadLayerPartCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartLifecyclePolicyPreview = {
  type t
  type request = {
    lifecyclePolicyText: option<lifecyclePolicyText>,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    status: option<lifecyclePolicyPreviewStatus>,
    lifecyclePolicyText: option<lifecyclePolicyText>,
    repositoryName: option<repositoryName>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "StartLifecyclePolicyPreviewCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetRepositoryPolicy = {
  type t
  type request = {
    force: option<forceFlag>,
    policyText: repositoryPolicyText,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    policyText: option<repositoryPolicyText>,
    repositoryName: option<repositoryName>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "SetRepositoryPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutRegistryPolicy = {
  type t
  type request = {policyText: registryPolicyText}
  type response = {
    policyText: option<registryPolicyText>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "PutRegistryPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutLifecyclePolicy = {
  type t
  type request = {
    lifecyclePolicyText: lifecyclePolicyText,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    lifecyclePolicyText: option<lifecyclePolicyText>,
    repositoryName: option<repositoryName>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "PutLifecyclePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutImageTagMutability = {
  type t
  type request = {
    imageTagMutability: imageTagMutability,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    imageTagMutability: option<imageTagMutability>,
    repositoryName: option<repositoryName>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "PutImageTagMutabilityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InitiateLayerUpload = {
  type t
  type request = {
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    partSize: option<partSize>,
    uploadId: option<uploadId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "InitiateLayerUploadCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRepositoryPolicy = {
  type t
  type request = {
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    policyText: option<repositoryPolicyText>,
    repositoryName: option<repositoryName>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "GetRepositoryPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRegistryPolicy = {
  type t
  type request = unit
  type response = {
    policyText: option<registryPolicyText>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "GetRegistryPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLifecyclePolicy = {
  type t
  type request = {
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    lastEvaluatedAt: option<evaluationTimestamp>,
    lifecyclePolicyText: option<lifecyclePolicyText>,
    repositoryName: option<repositoryName>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "GetLifecyclePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDownloadUrlForLayer = {
  type t
  type request = {
    layerDigest: layerDigest,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    layerDigest: option<layerDigest>,
    downloadUrl: option<url>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "GetDownloadUrlForLayerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRepositoryPolicy = {
  type t
  type request = {
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    policyText: option<repositoryPolicyText>,
    repositoryName: option<repositoryName>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "DeleteRepositoryPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRegistryPolicy = {
  type t
  type request = unit
  type response = {
    policyText: option<registryPolicyText>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "DeleteRegistryPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLifecyclePolicy = {
  type t
  type request = {
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    lastEvaluatedAt: option<evaluationTimestamp>,
    lifecyclePolicyText: option<lifecyclePolicyText>,
    repositoryName: option<repositoryName>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "DeleteLifecyclePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeyList,
    resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-ecr") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartImageScan = {
  type t
  type request = {
    imageId: imageIdentifier,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    imageScanStatus: option<imageScanStatus>,
    imageId: option<imageIdentifier>,
    repositoryName: option<repositoryName>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "StartImageScanCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutImageScanningConfiguration = {
  type t
  type request = {
    imageScanningConfiguration: imageScanningConfiguration,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    imageScanningConfiguration: option<imageScanningConfiguration>,
    repositoryName: option<repositoryName>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "PutImageScanningConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CompleteLayerUpload = {
  type t
  type request = {
    layerDigests: layerDigestList,
    uploadId: uploadId,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    layerDigest: option<layerDigest>,
    uploadId: option<uploadId>,
    repositoryName: option<repositoryName>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "CompleteLayerUploadCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagList_,
    resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-ecr") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutImage = {
  type t
  type request = {
    imageDigest: option<imageDigest>,
    imageTag: option<imageTag>,
    imageManifestMediaType: option<mediaType>,
    imageManifest: imageManifest,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {image: option<image>}
  @module("@aws-sdk/client-ecr") @new external new: request => t = "PutImageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {resourceArn: arn}
  type response = {tags: option<tagList_>}
  @module("@aws-sdk/client-ecr") @new external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListImages = {
  type t
  type request = {
    filter: option<listImagesFilter>,
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    nextToken: option<nextToken>,
    imageIds: option<imageIdentifierList>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "ListImagesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAuthorizationToken = {
  type t
  type request = {registryIds: option<getAuthorizationTokenRegistryIdList>}
  type response = {authorizationData: option<authorizationDataList>}
  @module("@aws-sdk/client-ecr") @new external new: request => t = "GetAuthorizationTokenCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRepository = {
  type t
  type request = {
    force: option<forceFlag>,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {repository: option<repository>}
  @module("@aws-sdk/client-ecr") @new external new: request => t = "DeleteRepositoryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRepository = {
  type t
  type request = {
    encryptionConfiguration: option<encryptionConfiguration>,
    imageScanningConfiguration: option<imageScanningConfiguration>,
    imageTagMutability: option<imageTagMutability>,
    tags: option<tagList_>,
    repositoryName: repositoryName,
  }
  type response = {repository: option<repository>}
  @module("@aws-sdk/client-ecr") @new external new: request => t = "CreateRepositoryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchCheckLayerAvailability = {
  type t
  type request = {
    layerDigests: batchedOperationLayerDigestList,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    failures: option<layerFailureList>,
    layers: option<layerList>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "BatchCheckLayerAvailabilityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLifecyclePolicyPreview = {
  type t
  type request = {
    filter: option<lifecyclePolicyPreviewFilter>,
    maxResults: option<lifecyclePreviewMaxResults>,
    nextToken: option<nextToken>,
    imageIds: option<imageIdentifierList>,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    summary: option<lifecyclePolicyPreviewSummary>,
    previewResults: option<lifecyclePolicyPreviewResultList>,
    nextToken: option<nextToken>,
    status: option<lifecyclePolicyPreviewStatus>,
    lifecyclePolicyText: option<lifecyclePolicyText>,
    repositoryName: option<repositoryName>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "GetLifecyclePolicyPreviewCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRepositories = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    repositoryNames: option<repositoryNameList>,
    registryId: option<registryId>,
  }
  type response = {
    nextToken: option<nextToken>,
    repositories: option<repositoryList>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "DescribeRepositoriesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetImage = {
  type t
  type request = {
    acceptedMediaTypes: option<mediaTypeList>,
    imageIds: imageIdentifierList,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    failures: option<imageFailureList>,
    images: option<imageList>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "BatchGetImageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDeleteImage = {
  type t
  type request = {
    imageIds: imageIdentifierList,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    failures: option<imageFailureList>,
    imageIds: option<imageIdentifierList>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "BatchDeleteImageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeImages = {
  type t
  type request = {
    filter: option<describeImagesFilter>,
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    imageIds: option<imageIdentifierList>,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    nextToken: option<nextToken>,
    imageDetails: option<imageDetailList>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "DescribeImagesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutReplicationConfiguration = {
  type t
  type request = {replicationConfiguration: replicationConfiguration}
  type response = {replicationConfiguration: option<replicationConfiguration>}
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "PutReplicationConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRegistry = {
  type t
  type request = unit
  type response = {
    replicationConfiguration: option<replicationConfiguration>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "DescribeRegistryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeImageScanFindings = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    imageId: imageIdentifier,
    repositoryName: repositoryName,
    registryId: option<registryId>,
  }
  type response = {
    nextToken: option<nextToken>,
    imageScanFindings: option<imageScanFindings>,
    imageScanStatus: option<imageScanStatus>,
    imageId: option<imageIdentifier>,
    repositoryName: option<repositoryName>,
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "DescribeImageScanFindingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
