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
type vulnerablePackageName = string
type vulnerabilitySourceUpdateTimestamp = Js.Date.t
type vulnerabilityId = string
type version = string
type url = string
type uploadId = string
type type_ = string
type title = string
type tagValue = string
type tagStatus = [@as("ANY") #ANY | @as("UNTAGGED") #UNTAGGED | @as("TAGGED") #TAGGED]
type tagKey = string
type status = string
type sourceLayerHash = string
type source = string
type severityCount = int
type severity = string
type scoringVector = string
type score = float
type scanningRepositoryFilterValue = string
type scanningRepositoryFilterType = [@as("WILDCARD") #WILDCARD]
type scanningConfigurationFailureReason = string
type scanningConfigurationFailureCode = [@as("REPOSITORY_NOT_FOUND") #REPOSITORY_NOT_FOUND]
type scanType = [@as("ENHANCED") #ENHANCED | @as("BASIC") #BASIC]
type scanTimestamp = Js.Date.t
type scanStatusDescription = string
type scanStatus = [
  | @as("FINDINGS_UNAVAILABLE") #FINDINGS_UNAVAILABLE
  | @as("SCAN_ELIGIBILITY_EXPIRED") #SCAN_ELIGIBILITY_EXPIRED
  | @as("PENDING") #PENDING
  | @as("ACTIVE") #ACTIVE
  | @as("UNSUPPORTED_IMAGE") #UNSUPPORTED_IMAGE
  | @as("FAILED") #FAILED
  | @as("COMPLETE") #COMPLETE
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type scanOnPushFlag = bool
type scanFrequency = [
  | @as("MANUAL") #MANUAL
  | @as("CONTINUOUS_SCAN") #CONTINUOUS_SCAN
  | @as("SCAN_ON_PUSH") #SCAN_ON_PUSH
]
type resourceId = string
type repositoryPolicyText = string
type repositoryName = string
type repositoryFilterValue = string
type repositoryFilterType = [@as("PREFIX_MATCH") #PREFIX_MATCH]
type replicationStatus = [
  | @as("FAILED") #FAILED
  | @as("COMPLETE") #COMPLETE
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type replicationError = string
type release = string
type relatedVulnerability = string
type registryPolicyText = string
type registryId = string
type region = string
type recordedPullTimestamp = Js.Date.t
type recommendationText = string
type reason = string
type pushTimestamp = Js.Date.t
type pullThroughCacheRuleRepositoryPrefix = string
type proxyEndpoint = string
type platform = string
type partSize = float
type packageManager = string
type nextToken = string
type metric = string
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
type findingArn = string
type filePath = string
type expirationTimestamp = Js.Date.t
type exceptionMessage = string
type evaluationTimestamp = Js.Date.t
type epoch = int
type encryptionType = [@as("KMS") #KMS | @as("AES256") #AES256]
type date = Js.Date.t
type creationTimestamp = Js.Date.t
type batchedOperationLayerDigest = string
type baseScore = float
type base64 = string
type author = string
type attributeValue = string
type attributeKey = string
type arn = string
type arch = string
@ocaml.doc("<p>Information on the vulnerable package identified by a finding.</p>")
type vulnerablePackage = {
  @ocaml.doc("<p>The version of the vulnerable package.</p>") version: option<version>,
  @ocaml.doc("<p>The source layer hash of the vulnerable package.</p>")
  sourceLayerHash: option<sourceLayerHash>,
  @ocaml.doc("<p>The release of the vulnerable package.</p>") release: option<release>,
  @ocaml.doc("<p>The package manager of the vulnerable package.</p>")
  packageManager: option<packageManager>,
  @ocaml.doc("<p>The name of the vulnerable package.</p>") name: option<vulnerablePackageName>,
  @ocaml.doc("<p>The file path of the vulnerable package.</p>") filePath: option<filePath>,
  @ocaml.doc("<p>The epoch of the vulnerable package.</p>") epoch: option<epoch>,
  @ocaml.doc("<p>The architecture of the vulnerable package.</p>") arch: option<arch>,
}
type tags = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>The metadata to apply to a resource to help you categorize and organize them. Each tag
            consists of a key and a value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have
            a maximum length of 256 characters.</p>")
type tag = {
  @ocaml.doc("<p>A <code>value</code> acts as a descriptor within a tag category (key).</p>")
  @as("Value")
  value: option<tagValue>,
  @ocaml.doc("<p>One part of a key-value pair that make up a tag. A <code>key</code> is a general label
            that acts like a category for more specific tag values.</p>")
  @as("Key")
  key: option<tagKey>,
}
@ocaml.doc("<p>The details of a scanning repository filter. For more information on how to use
            filters, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html#image-scanning-filters\">Using
                filters</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>")
type scanningRepositoryFilter = {
  @ocaml.doc("<p>The type associated with the filter.</p>")
  filterType: scanningRepositoryFilterType,
  @ocaml.doc("<p>The filter to use when scanning.</p>") filter: scanningRepositoryFilterValue,
}
type scanningConfigurationRepositoryNameList = array<repositoryName>
@ocaml.doc("<p>The details about any failures associated with the scanning configuration of a
            repository.</p>")
type repositoryScanningConfigurationFailure = {
  @ocaml.doc("<p>The reason for the failure.</p>")
  failureReason: option<scanningConfigurationFailureReason>,
  @ocaml.doc("<p>The failure code.</p>") failureCode: option<scanningConfigurationFailureCode>,
  @ocaml.doc("<p>The name of the repository.</p>") repositoryName: option<repositoryName>,
}
type repositoryNameList = array<repositoryName>
@ocaml.doc("<p>The filter settings used with image replication. Specifying a repository filter to a
            replication rule provides a method for controlling which repositories in a private
            registry are replicated. If no repository filter is specified, all images in the
            repository are replicated.</p>")
type repositoryFilter = {
  @ocaml.doc("<p>The repository filter type. The only supported value is <code>PREFIX_MATCH</code>,
            which is a repository name prefix specified with the <code>filter</code>
            parameter.</p>")
  filterType: repositoryFilterType,
  @ocaml.doc("<p>The repository filter details. When the <code>PREFIX_MATCH</code> filter type is
            specified, this value is required and should be the repository name prefix to configure
            replication for.</p>")
  filter: repositoryFilterValue,
}
@ocaml.doc("<p>An array of objects representing the destination for a replication rule.</p>")
type replicationDestination = {
  @ocaml.doc("<p>The Amazon Web Services account ID of the Amazon ECR private registry to replicate to. When configuring
            cross-Region replication within your own registry, specify your own account ID.</p>")
  registryId: registryId,
  @ocaml.doc("<p>The Region to replicate to.</p>") region: region,
}
type relatedVulnerabilitiesList = array<relatedVulnerability>
type referenceUrlsList = array<url>
@ocaml.doc("<p>Details about the recommended course of action to remediate the finding.</p>")
type recommendation = {
  @ocaml.doc("<p>The recommended course of action to remediate the finding.</p>")
  text: option<recommendationText>,
  @ocaml.doc("<p>The URL address to the CVE remediation recommendations.</p>") url: option<url>,
}
type pullThroughCacheRuleRepositoryPrefixList = array<pullThroughCacheRuleRepositoryPrefix>
@ocaml.doc("<p>The details of a pull through cache rule.</p>")
type pullThroughCacheRule = {
  @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry the pull through cache rule is
            associated with.</p>")
  registryId: option<registryId>,
  @ocaml.doc("<p>The date and time the pull through cache was created.</p>")
  createdAt: option<creationTimestamp>,
  @ocaml.doc("<p>The upstream registry URL associated with the pull through cache rule.</p>")
  upstreamRegistryUrl: option<url>,
  @ocaml.doc("<p>The Amazon ECR repository prefix associated with the pull through cache rule.</p>")
  ecrRepositoryPrefix: option<pullThroughCacheRuleRepositoryPrefix>,
}
type mediaTypeList = array<mediaType>
@ocaml.doc("<p>An object representing a filter on a <a>ListImages</a> operation.</p>")
type listImagesFilter = {
  @ocaml.doc("<p>The tag status with which to filter your <a>ListImages</a> results. You can
            filter results based on whether they are <code>TAGGED</code> or
            <code>UNTAGGED</code>.</p>")
  tagStatus: option<tagStatus>,
}
@ocaml.doc("<p>The type of action to be taken.</p>")
type lifecyclePolicyRuleAction = {
  @ocaml.doc("<p>The type of action to be taken.</p>") @as("type") type_: option<imageActionType>,
}
@ocaml.doc("<p>The summary of the lifecycle policy preview request.</p>")
type lifecyclePolicyPreviewSummary = {
  @ocaml.doc("<p>The number of expiring images.</p>") expiringImageTotalCount: option<imageCount>,
}
@ocaml.doc("<p>The filter for the lifecycle policy preview.</p>")
type lifecyclePolicyPreviewFilter = {
  @ocaml.doc("<p>The tag status of the image.</p>") tagStatus: option<tagStatus>,
}
@ocaml.doc("<p>An object representing an Amazon ECR image layer failure.</p>")
type layerFailure = {
  @ocaml.doc("<p>The reason for the failure.</p>") failureReason: option<layerFailureReason>,
  @ocaml.doc("<p>The failure code associated with the failure.</p>")
  failureCode: option<layerFailureCode>,
  @ocaml.doc("<p>The layer digest associated with the failure.</p>")
  layerDigest: option<batchedOperationLayerDigest>,
}
type layerDigestList = array<layerDigest>
@ocaml.doc("<p>An object representing an Amazon ECR image layer.</p>")
type layer = {
  @ocaml.doc("<p>The media type of the layer, such as
                <code>application/vnd.docker.image.rootfs.diff.tar.gzip</code> or
                <code>application/vnd.oci.image.layer.v1.tar+gzip</code>.</p>")
  mediaType: option<mediaType>,
  @ocaml.doc("<p>The size, in bytes, of the image layer.</p>") layerSize: option<layerSizeInBytes>,
  @ocaml.doc("<p>The availability status of the image layer.</p>")
  layerAvailability: option<layerAvailability>,
  @ocaml.doc("<p>The <code>sha256</code> digest of the image layer.</p>")
  layerDigest: option<layerDigest>,
}
type imageTagsList = array<imageTag>
type imageTagList = array<imageTag>
@ocaml.doc("<p>The image scanning configuration for a repository.</p>")
type imageScanningConfiguration = {
  @ocaml.doc("<p>The setting that determines whether images are scanned after being pushed to a
            repository. If set to <code>true</code>, images will be scanned after being pushed. If
            this parameter is not specified, it will default to <code>false</code> and images will
            not be scanned unless a scan is manually started with the <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/APIReference/API_StartImageScan.html\">API_StartImageScan</a> API.</p>")
  scanOnPush: option<scanOnPushFlag>,
}
@ocaml.doc("<p>The current status of an image scan.</p>")
type imageScanStatus = {
  @ocaml.doc("<p>The description of the image scan status.</p>")
  description: option<scanStatusDescription>,
  @ocaml.doc("<p>The current state of an image scan.</p>") status: option<scanStatus>,
}
@ocaml.doc("<p>The status of the replication process for an image.</p>")
type imageReplicationStatus = {
  @ocaml.doc("<p>The failure code for a replication that has failed.</p>")
  failureCode: option<replicationError>,
  @ocaml.doc("<p>The image replication status.</p>") status: option<replicationStatus>,
  @ocaml.doc(
    "<p>The Amazon Web Services account ID associated with the registry to which the image belongs.</p>"
  )
  registryId: option<registryId>,
  @ocaml.doc("<p>The destination Region for the image replication.</p>") region: option<region>,
}
@ocaml.doc(
  "<p>An object with identifying information for an image in an Amazon ECR repository.</p>"
)
type imageIdentifier = {
  @ocaml.doc("<p>The tag used for the image.</p>") imageTag: option<imageTag>,
  @ocaml.doc("<p>The <code>sha256</code> digest of the image manifest.</p>")
  imageDigest: option<imageDigest>,
}
type getAuthorizationTokenRegistryIdList = array<registryId>
type findingSeverityCounts = Js.Dict.t<severityCount>
@ocaml.doc("<p>The encryption configuration for the repository. This determines how the contents of
            your repository are encrypted at rest.</p>
        <p>By default, when no encryption configuration is set or the <code>AES256</code>
            encryption type is used, Amazon ECR uses server-side encryption with Amazon S3-managed encryption
            keys which encrypts your data at rest using an AES-256 encryption algorithm. This does
            not require any action on your part.</p>
        <p>For more control over the encryption of the contents of your repository, you can use
            server-side encryption with Key Management Service key stored in Key Management Service (KMS) to encrypt your
            images. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/encryption-at-rest.html\">Amazon ECR encryption at
                rest</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>")
type encryptionConfiguration = {
  @ocaml.doc("<p>If you use the <code>KMS</code> encryption type, specify the KMS key to use for
            encryption. The alias, key ID, or full ARN of the KMS key can be specified. The key
            must exist in the same Region as the repository. If no key is specified, the default
            Amazon Web Services managed KMS key for Amazon ECR will be used.</p>")
  kmsKey: option<kmsKey>,
  @ocaml.doc("<p>The encryption type to use.</p>
        <p>If you use the <code>KMS</code> encryption type, the contents of the repository will
            be encrypted using server-side encryption with Key Management Service key stored in KMS. When you
            use KMS to encrypt your data, you can either use the default Amazon Web Services managed KMS key
            for Amazon ECR, or specify your own KMS key, which you already created. For more
            information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html\">Protecting data using server-side
                encryption with an KMS key stored in Key Management Service (SSE-KMS)</a> in the
                <i>Amazon Simple Storage Service Console Developer Guide</i>.</p>
        <p>If you use the <code>AES256</code> encryption type, Amazon ECR uses server-side encryption
            with Amazon S3-managed encryption keys which encrypts the images in the repository using an
            AES-256 encryption algorithm. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html\">Protecting data using
                server-side encryption with Amazon S3-managed encryption keys (SSE-S3)</a> in the
                <i>Amazon Simple Storage Service Console Developer Guide</i>.</p>")
  encryptionType: encryptionType,
}
@ocaml.doc("<p>An object representing a filter on a <a>DescribeImages</a>
            operation.</p>")
type describeImagesFilter = {
  @ocaml.doc("<p>The tag status with which to filter your <a>DescribeImages</a> results. You
            can filter results based on whether they are <code>TAGGED</code> or
                <code>UNTAGGED</code>.</p>")
  tagStatus: option<tagStatus>,
}
@ocaml.doc("<p>Details on adjustments Amazon Inspector made to the CVSS score for a finding.</p>")
type cvssScoreAdjustment = {
  @ocaml.doc("<p>The reason the CVSS score has been adjustment.</p>") reason: option<reason>,
  @ocaml.doc("<p>The metric used to adjust the CVSS score.</p>") metric: option<metric>,
}
@ocaml.doc("<p>The CVSS score for a finding.</p>")
type cvssScore = {
  @ocaml.doc("<p>The version of CVSS used for the score.</p>") version: option<version>,
  @ocaml.doc("<p>The source of the CVSS score.</p>") source: option<source>,
  @ocaml.doc("<p>The vector string of the CVSS score.</p>") scoringVector: option<scoringVector>,
  @ocaml.doc("<p>The base CVSS score used for the finding.</p>") baseScore: option<baseScore>,
}
type batchedOperationLayerDigestList = array<batchedOperationLayerDigest>
@ocaml.doc("<p>An object representing authorization data for an Amazon ECR registry.</p>")
type authorizationData = {
  @ocaml.doc("<p>The registry URL to use for this authorization token in a <code>docker login</code>
            command. The Amazon ECR registry URL format is
        <code>https://aws_account_id.dkr.ecr.region.amazonaws.com</code>. For example,
        <code>https://012345678910.dkr.ecr.us-east-1.amazonaws.com</code>.. </p>")
  proxyEndpoint: option<proxyEndpoint>,
  @ocaml.doc("<p>The Unix time in seconds and milliseconds when the authorization token expires.
            Authorization tokens are valid for 12 hours.</p>")
  expiresAt: option<expirationTimestamp>,
  @ocaml.doc("<p>A base64-encoded string that contains authorization data for the specified Amazon ECR
            registry. When the string is decoded, it is presented in the format
                <code>user:password</code> for private registry authentication using <code>docker
                login</code>.</p>")
  authorizationToken: option<base64>,
}
@ocaml.doc("<p>This data type is used in the <a>ImageScanFinding</a> data type.</p>")
type attribute = {
  @ocaml.doc("<p>The value assigned to the attribute key.</p>") value: option<attributeValue>,
  @ocaml.doc("<p>The attribute key.</p>") key: attributeKey,
}
type vulnerablePackagesList = array<vulnerablePackage>
type tagList_ = array<tag>
type scanningRepositoryFilterList = array<scanningRepositoryFilter>
type repositoryScanningConfigurationFailureList = array<repositoryScanningConfigurationFailure>
type repositoryFilterList = array<repositoryFilter>
@ocaml.doc("<p>An object representing a repository.</p>")
type repository = {
  @ocaml.doc("<p>The encryption configuration for the repository. This determines how the contents of
            your repository are encrypted at rest.</p>")
  encryptionConfiguration: option<encryptionConfiguration>,
  imageScanningConfiguration: option<imageScanningConfiguration>,
  @ocaml.doc("<p>The tag mutability setting for the repository.</p>")
  imageTagMutability: option<imageTagMutability>,
  @ocaml.doc(
    "<p>The date and time, in JavaScript date format, when the repository was created.</p>"
  )
  createdAt: option<creationTimestamp>,
  @ocaml.doc("<p>The URI for the repository. You can use this URI for container image <code>push</code>
            and <code>pull</code> operations.</p>")
  repositoryUri: option<url>,
  @ocaml.doc("<p>The name of the repository.</p>") repositoryName: option<repositoryName>,
  @ocaml.doc(
    "<p>The Amazon Web Services account ID associated with the registry that contains the repository.</p>"
  )
  registryId: option<registryId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the repository. The ARN contains the <code>arn:aws:ecr</code> namespace, followed by the region of the
    repository, Amazon Web Services account ID of the repository owner, repository namespace, and repository name.
    For example, <code>arn:aws:ecr:region:012345678910:repository/test</code>.</p>")
  repositoryArn: option<arn>,
}
type replicationDestinationList = array<replicationDestination>
@ocaml.doc("<p>Information on how to remediate a finding.</p>")
type remediation = {
  @ocaml.doc("<p>An object that contains information about the recommended course of action to
            remediate the finding.</p>")
  recommendation: option<recommendation>,
}
type pullThroughCacheRuleList = array<pullThroughCacheRule>
@ocaml.doc("<p>The result of the lifecycle policy preview.</p>")
type lifecyclePolicyPreviewResult = {
  @ocaml.doc("<p>The priority of the applied rule.</p>")
  appliedRulePriority: option<lifecyclePolicyRulePriority>,
  @ocaml.doc("<p>The type of action to be taken.</p>") action: option<lifecyclePolicyRuleAction>,
  @ocaml.doc("<p>The date and time, expressed in standard JavaScript date format, at which the current
            image was pushed to the repository.</p>")
  imagePushedAt: option<pushTimestamp>,
  @ocaml.doc("<p>The <code>sha256</code> digest of the image manifest.</p>")
  imageDigest: option<imageDigest>,
  @ocaml.doc("<p>The list of tags associated with this image.</p>") imageTags: option<imageTagList>,
}
type layerList = array<layer>
type layerFailureList = array<layerFailure>
@ocaml.doc("<p>A summary of the last completed image scan.</p>")
type imageScanFindingsSummary = {
  @ocaml.doc("<p>The image vulnerability counts, sorted by severity.</p>")
  findingSeverityCounts: option<findingSeverityCounts>,
  @ocaml.doc("<p>The time when the vulnerability data was last scanned.</p>")
  vulnerabilitySourceUpdatedAt: option<vulnerabilitySourceUpdateTimestamp>,
  @ocaml.doc("<p>The time of the last completed image scan.</p>")
  imageScanCompletedAt: option<scanTimestamp>,
}
type imageReplicationStatusList = array<imageReplicationStatus>
type imageIdentifierList = array<imageIdentifier>
@ocaml.doc("<p>An object representing an Amazon ECR image failure.</p>")
type imageFailure = {
  @ocaml.doc("<p>The reason for the failure.</p>") failureReason: option<imageFailureReason>,
  @ocaml.doc("<p>The code associated with the failure.</p>") failureCode: option<imageFailureCode>,
  @ocaml.doc("<p>The image ID associated with the failure.</p>") imageId: option<imageIdentifier>,
}
@ocaml.doc("<p>An object representing an Amazon ECR image.</p>")
type image = {
  @ocaml.doc("<p>The manifest media type of the image.</p>")
  imageManifestMediaType: option<mediaType>,
  @ocaml.doc("<p>The image manifest associated with the image.</p>")
  imageManifest: option<imageManifest>,
  @ocaml.doc("<p>An object containing the image tag and image digest associated with an image.</p>")
  imageId: option<imageIdentifier>,
  @ocaml.doc("<p>The name of the repository associated with the image.</p>")
  repositoryName: option<repositoryName>,
  @ocaml.doc(
    "<p>The Amazon Web Services account ID associated with the registry containing the image.</p>"
  )
  registryId: option<registryId>,
}
type cvssScoreList = array<cvssScore>
type cvssScoreAdjustmentList = array<cvssScoreAdjustment>
@ocaml.doc("<p>The image details of the Amazon ECR container image.</p>")
type awsEcrContainerImageDetails = {
  @ocaml.doc("<p>The name of the repository the Amazon ECR container image resides in.</p>")
  repositoryName: option<repositoryName>,
  @ocaml.doc("<p>The registry the Amazon ECR container image belongs to.</p>")
  registry: option<registryId>,
  @ocaml.doc("<p>The date and time the Amazon ECR container image was pushed.</p>")
  pushedAt: option<date>,
  @ocaml.doc("<p>The platform of the Amazon ECR container image.</p>") platform: option<platform>,
  @ocaml.doc("<p>The image tags attached to the Amazon ECR container image.</p>")
  imageTags: option<imageTagsList>,
  @ocaml.doc("<p>The image hash of the Amazon ECR container image.</p>")
  imageHash: option<imageDigest>,
  @ocaml.doc("<p>The image author of the Amazon ECR container image.</p>") author: option<author>,
  @ocaml.doc("<p>The architecture of the Amazon ECR container image.</p>")
  architecture: option<arch>,
}
type authorizationDataList = array<authorizationData>
type attributeList = array<attribute>
@ocaml.doc("<p>Contains details about the resource involved in the finding.</p>")
type resourceDetails = {
  @ocaml.doc("<p>An object that contains details about the Amazon ECR container image involved in the
            finding.</p>")
  awsEcrContainerImage: option<awsEcrContainerImageDetails>,
}
@ocaml.doc("<p>The details of the scanning configuration for a repository.</p>")
type repositoryScanningConfiguration = {
  @ocaml.doc("<p>The scan filters applied to the repository.</p>")
  appliedScanFilters: option<scanningRepositoryFilterList>,
  @ocaml.doc("<p>The scan frequency for the repository.</p>") scanFrequency: option<scanFrequency>,
  @ocaml.doc("<p>Whether or not scan on push is configured for the repository.</p>")
  scanOnPush: option<scanOnPushFlag>,
  @ocaml.doc("<p>The name of the repository.</p>") repositoryName: option<repositoryName>,
  @ocaml.doc("<p>The ARN of the repository.</p>") repositoryArn: option<arn>,
}
type repositoryList = array<repository>
@ocaml.doc("<p>An array of objects representing the replication destinations and repository filters
            for a replication configuration.</p>")
type replicationRule = {
  @ocaml.doc("<p>An array of objects representing the filters for a replication rule. Specifying a
            repository filter for a replication rule provides a method for controlling which
            repositories in a private registry are replicated.</p>")
  repositoryFilters: option<repositoryFilterList>,
  @ocaml.doc("<p>An array of objects representing the destination for a replication rule.</p>")
  destinations: replicationDestinationList,
}
@ocaml.doc("<p>The details of a scanning rule for a private registry.</p>")
type registryScanningRule = {
  @ocaml.doc("<p>The repository filters associated with the scanning configuration for a private
            registry.</p>")
  repositoryFilters: scanningRepositoryFilterList,
  @ocaml.doc("<p>The frequency that scans are performed at for a private registry. When the
                <code>ENHANCED</code> scan type is specified, the supported scan frequencies are
                <code>CONTINUOUS_SCAN</code> and <code>SCAN_ON_PUSH</code>. When the
                <code>BASIC</code> scan type is specified, the <code>SCAN_ON_PUSH</code> and
                <code>MANUAL</code> scan frequencies are supported.</p>")
  scanFrequency: scanFrequency,
}
@ocaml.doc("<p>Information about a package vulnerability finding.</p>")
type packageVulnerabilityDetails = {
  @ocaml.doc("<p>The packages impacted by this vulnerability.</p>")
  vulnerablePackages: option<vulnerablePackagesList>,
  @ocaml.doc("<p>The ID given to this vulnerability.</p>") vulnerabilityId: option<vulnerabilityId>,
  @ocaml.doc(
    "<p>The date and time the vendor last updated this vulnerability in their database.</p>"
  )
  vendorUpdatedAt: option<date>,
  @ocaml.doc("<p>The severity the vendor has given to this vulnerability type.</p>")
  vendorSeverity: option<severity>,
  @ocaml.doc("<p>The date and time that this vulnerability was first added to the vendor's
            database.</p>")
  vendorCreatedAt: option<date>,
  @ocaml.doc("<p>A URL to the source of the vulnerability information.</p>") sourceUrl: option<url>,
  @ocaml.doc("<p>The source of the vulnerability information.</p>") source: option<source>,
  @ocaml.doc("<p>One or more vulnerabilities related to the one identified in this finding.</p>")
  relatedVulnerabilities: option<relatedVulnerabilitiesList>,
  @ocaml.doc("<p>One or more URLs that contain details about this vulnerability type.</p>")
  referenceUrls: option<referenceUrlsList>,
  @ocaml.doc("<p>An object that contains details about the CVSS score of a finding.</p>")
  cvss: option<cvssScoreList>,
}
type lifecyclePolicyPreviewResultList = array<lifecyclePolicyPreviewResult>
@ocaml.doc("<p>Contains information about an image scan finding.</p>")
type imageScanFinding = {
  @ocaml.doc("<p>A collection of attributes of the host from which the finding is generated.</p>")
  attributes: option<attributeList>,
  @ocaml.doc("<p>The finding severity.</p>") severity: option<findingSeverity>,
  @ocaml.doc("<p>A link containing additional details about the security vulnerability.</p>")
  uri: option<url>,
  @ocaml.doc("<p>The description of the finding.</p>") description: option<findingDescription>,
  @ocaml.doc("<p>The name associated with the finding, usually a CVE number.</p>")
  name: option<findingName>,
}
type imageList = array<image>
type imageFailureList = array<imageFailure>
@ocaml.doc("<p>An object that describes an image returned by a <a>DescribeImages</a>
            operation.</p>")
type imageDetail = {
  @ocaml.doc("<p>The date and time, expressed in standard JavaScript date format, when Amazon ECR recorded
            the last image pull.</p>
        <note>
            <p>Amazon ECR refreshes the last image pull timestamp at least once every 24 hours. For
                example, if you pull an image once a day then the <code>lastRecordedPullTime</code>
                timestamp will indicate the exact time that the image was last pulled. However, if
                you pull an image once an hour, because Amazon ECR refreshes the
                    <code>lastRecordedPullTime</code> timestamp at least once every 24 hours, the
                result may not be the exact time that the image was last pulled.</p>
        </note>")
  lastRecordedPullTime: option<recordedPullTimestamp>,
  @ocaml.doc("<p>The artifact media type of the image.</p>") artifactMediaType: option<mediaType>,
  @ocaml.doc("<p>The media type of the image manifest.</p>")
  imageManifestMediaType: option<mediaType>,
  @ocaml.doc("<p>A summary of the last completed image scan.</p>")
  imageScanFindingsSummary: option<imageScanFindingsSummary>,
  @ocaml.doc("<p>The current state of the scan.</p>") imageScanStatus: option<imageScanStatus>,
  @ocaml.doc("<p>The date and time, expressed in standard JavaScript date format, at which the current
            image was pushed to the repository. </p>")
  imagePushedAt: option<pushTimestamp>,
  @ocaml.doc("<p>The size, in bytes, of the image in the repository.</p>
        <p>If the image is a manifest list, this will be the max size of all manifests in the
            list.</p>
        <note>
            <p>Beginning with Docker version 1.9, the Docker client compresses image layers
                before pushing them to a V2 Docker registry. The output of the <code>docker
                    images</code> command shows the uncompressed image size, so it may return a
                larger image size than the image sizes returned by <a>DescribeImages</a>.</p>
        </note>")
  imageSizeInBytes: option<imageSizeInBytes>,
  @ocaml.doc("<p>The list of tags associated with this image.</p>") imageTags: option<imageTagList>,
  @ocaml.doc("<p>The <code>sha256</code> digest of the image manifest.</p>")
  imageDigest: option<imageDigest>,
  @ocaml.doc("<p>The name of the repository to which this image belongs.</p>")
  repositoryName: option<repositoryName>,
  @ocaml.doc(
    "<p>The Amazon Web Services account ID associated with the registry to which this image belongs.</p>"
  )
  registryId: option<registryId>,
}
@ocaml.doc("<p>Information about the CVSS score.</p>")
type cvssScoreDetails = {
  @ocaml.doc("<p>The CVSS version used in scoring.</p>") version: option<version>,
  @ocaml.doc("<p>The vector for the CVSS score.</p>") scoringVector: option<scoringVector>,
  @ocaml.doc("<p>The source for the CVSS score.</p>") scoreSource: option<source>,
  @ocaml.doc("<p>The CVSS score.</p>") score: option<score>,
  @ocaml.doc(
    "<p>An object that contains details about adjustment Amazon Inspector made to the CVSS score.</p>"
  )
  adjustments: option<cvssScoreAdjustmentList>,
}
@ocaml.doc("<p>Information about the Amazon Inspector score given to a finding.</p>")
type scoreDetails = {
  @ocaml.doc("<p>An object that contains details about the CVSS score given to a finding.</p>")
  cvss: option<cvssScoreDetails>,
}
@ocaml.doc("<p>Details about the resource involved in a finding.</p>")
type resource = {
  @ocaml.doc("<p>The type of resource.</p>") @as("type") type_: option<type_>,
  @ocaml.doc("<p>The tags attached to the resource.</p>") tags: option<tags>,
  @ocaml.doc("<p>The ID of the resource.</p>") id: option<resourceId>,
  @ocaml.doc("<p>An object that contains details about the resource involved in a finding.</p>")
  details: option<resourceDetails>,
}
type repositoryScanningConfigurationList = array<repositoryScanningConfiguration>
type replicationRuleList = array<replicationRule>
type registryScanningRuleList = array<registryScanningRule>
type imageScanFindingList = array<imageScanFinding>
type imageDetailList = array<imageDetail>
type resourceList = array<resource>
@ocaml.doc("<p>The replication configuration for a registry.</p>")
type replicationConfiguration = {
  @ocaml.doc("<p>An array of objects representing the replication destinations and repository filters
            for a replication configuration.</p>")
  rules: replicationRuleList,
}
@ocaml.doc("<p>The scanning configuration for a private registry.</p>")
type registryScanningConfiguration = {
  @ocaml.doc("<p>The scanning rules associated with the registry.</p>")
  rules: option<registryScanningRuleList>,
  @ocaml.doc("<p>The type of scanning configured for the registry.</p>") scanType: option<scanType>,
}
@ocaml.doc("<p>The details of an enhanced image scan. This is returned when enhanced scanning is
            enabled for your private registry.</p>")
type enhancedImageScanFinding = {
  @ocaml.doc("<p>The date and time the finding was last updated at.</p>") updatedAt: option<date>,
  @ocaml.doc("<p>The type of the finding.</p>") @as("type") type_: option<type_>,
  @ocaml.doc("<p>The title of the finding.</p>") title: option<title>,
  @ocaml.doc("<p>The status of the finding.</p>") status: option<status>,
  @ocaml.doc("<p>The severity of the finding.</p>") severity: option<severity>,
  @ocaml.doc("<p>An object that contains details of the Amazon Inspector score.</p>")
  scoreDetails: option<scoreDetails>,
  @ocaml.doc("<p>The Amazon Inspector score given to the finding.</p>") score: option<score>,
  @ocaml.doc("<p>Contains information on the resources involved in a finding.</p>")
  resources: option<resourceList>,
  @ocaml.doc("<p>An object that contains the details about how to remediate a finding.</p>")
  remediation: option<remediation>,
  @ocaml.doc("<p>An object that contains the details of a package vulnerability finding.</p>")
  packageVulnerabilityDetails: option<packageVulnerabilityDetails>,
  @ocaml.doc("<p>The date and time that the finding was last observed.</p>")
  lastObservedAt: option<date>,
  @ocaml.doc("<p>The date and time that the finding was first observed.</p>")
  firstObservedAt: option<date>,
  @ocaml.doc("<p>The Amazon Resource Number (ARN) of the finding.</p>")
  findingArn: option<findingArn>,
  @ocaml.doc("<p>The description of the finding.</p>") description: option<findingDescription>,
  @ocaml.doc("<p>The Amazon Web Services account ID associated with the image.</p>")
  awsAccountId: option<registryId>,
}
type enhancedImageScanFindingList = array<enhancedImageScanFinding>
@ocaml.doc("<p>The details of an image scan.</p>")
type imageScanFindings = {
  @ocaml.doc("<p>Details about the enhanced scan findings from Amazon Inspector.</p>")
  enhancedFindings: option<enhancedImageScanFindingList>,
  @ocaml.doc("<p>The findings from the image scan.</p>") findings: option<imageScanFindingList>,
  @ocaml.doc("<p>The image vulnerability counts, sorted by severity.</p>")
  findingSeverityCounts: option<findingSeverityCounts>,
  @ocaml.doc("<p>The time when the vulnerability data was last scanned.</p>")
  vulnerabilitySourceUpdatedAt: option<vulnerabilitySourceUpdateTimestamp>,
  @ocaml.doc("<p>The time of the last completed image scan.</p>")
  imageScanCompletedAt: option<scanTimestamp>,
}
@ocaml.doc("<fullname>Amazon Elastic Container Registry</fullname>
        <p>Amazon Elastic Container Registry (Amazon ECR) is a managed container image registry service. Customers can use the
            familiar Docker CLI, or their preferred client, to push, pull, and manage images. Amazon ECR
            provides a secure, scalable, and reliable registry for your Docker or Open Container
            Initiative (OCI) images. Amazon ECR supports private repositories with resource-based
            permissions using IAM so that specific users or Amazon EC2 instances can access
            repositories and images.</p>
        <p>Amazon ECR has service endpoints in each supported Region. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/ecr.html\">Amazon ECR endpoints</a> in the
                <i>Amazon Web Services General Reference</i>.</p>")
module UploadLayerPart = {
  type t
  type request = {
    @ocaml.doc("<p>The base64-encoded layer part payload.</p>") layerPartBlob: layerPartBlob,
    @ocaml.doc(
      "<p>The position of the last byte of the layer part within the overall image layer.</p>"
    )
    partLastByte: partSize,
    @ocaml.doc(
      "<p>The position of the first byte of the layer part witin the overall image layer.</p>"
    )
    partFirstByte: partSize,
    @ocaml.doc("<p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to
            associate with the layer part upload.</p>")
    uploadId: uploadId,
    @ocaml.doc("<p>The name of the repository to which you are uploading layer parts.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry to which you are uploading layer
            parts. If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The integer value of the last byte received in the request.</p>")
    lastByteReceived: option<partSize>,
    @ocaml.doc("<p>The upload ID associated with the request.</p>") uploadId: option<uploadId>,
    @ocaml.doc("<p>The repository name associated with the request.</p>")
    repositoryName: option<repositoryName>,
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "UploadLayerPartCommand"
  let make = (
    ~layerPartBlob,
    ~partLastByte,
    ~partFirstByte,
    ~uploadId,
    ~repositoryName,
    ~registryId=?,
    (),
  ) => new({layerPartBlob, partLastByte, partFirstByte, uploadId, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartLifecyclePolicyPreview = {
  type t
  type request = {
    @ocaml.doc("<p>The policy to be evaluated against. If you do not specify a policy, the current policy
            for the repository is used.</p>")
    lifecyclePolicyText: option<lifecyclePolicyText>,
    @ocaml.doc("<p>The name of the repository to be evaluated.</p>") repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the repository.
            If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The status of the lifecycle policy preview request.</p>")
    status: option<lifecyclePolicyPreviewStatus>,
    @ocaml.doc("<p>The JSON repository policy text.</p>")
    lifecyclePolicyText: option<lifecyclePolicyText>,
    @ocaml.doc("<p>The repository name associated with the request.</p>")
    repositoryName: option<repositoryName>,
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "StartLifecyclePolicyPreviewCommand"
  let make = (~repositoryName, ~lifecyclePolicyText=?, ~registryId=?, ()) =>
    new({lifecyclePolicyText, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SetRepositoryPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>If the policy you are attempting to set on a repository policy would prevent you from
            setting another policy in the future, you must force the <a>SetRepositoryPolicy</a> operation. This is intended to prevent accidental
            repository lock outs.</p>")
    force: option<forceFlag>,
    @ocaml.doc("<p>The JSON repository policy text to apply to the repository. For more information, see
                <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html\">Amazon ECR repository
                policies</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>")
    policyText: repositoryPolicyText,
    @ocaml.doc("<p>The name of the repository to receive the policy.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the repository.
            If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The JSON repository policy text applied to the repository.</p>")
    policyText: option<repositoryPolicyText>,
    @ocaml.doc("<p>The repository name associated with the request.</p>")
    repositoryName: option<repositoryName>,
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "SetRepositoryPolicyCommand"
  let make = (~policyText, ~repositoryName, ~force=?, ~registryId=?, ()) =>
    new({force, policyText, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutRegistryPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The JSON policy text to apply to your registry. The policy text follows the same
            format as IAM policy text. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html\">Registry
                permissions</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>")
    policyText: registryPolicyText,
  }
  type response = {
    @ocaml.doc("<p>The JSON policy text for your registry.</p>")
    policyText: option<registryPolicyText>,
    @ocaml.doc("<p>The registry ID.</p>") registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "PutRegistryPolicyCommand"
  let make = (~policyText, ()) => new({policyText: policyText})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutLifecyclePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The JSON repository policy text to apply to the repository.</p>")
    lifecyclePolicyText: lifecyclePolicyText,
    @ocaml.doc("<p>The name of the repository to receive the policy.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the repository. If you
            do  not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The JSON repository policy text.</p>")
    lifecyclePolicyText: option<lifecyclePolicyText>,
    @ocaml.doc("<p>The repository name associated with the request.</p>")
    repositoryName: option<repositoryName>,
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "PutLifecyclePolicyCommand"
  let make = (~lifecyclePolicyText, ~repositoryName, ~registryId=?, ()) =>
    new({lifecyclePolicyText, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutImageTagMutability = {
  type t
  type request = {
    @ocaml.doc("<p>The tag mutability setting for the repository. If <code>MUTABLE</code> is specified,
            image tags can be overwritten. If <code>IMMUTABLE</code> is specified, all image tags
            within the repository will be immutable which will prevent them from being
            overwritten.</p>")
    imageTagMutability: imageTagMutability,
    @ocaml.doc("<p>The name of the repository in which to update the image tag mutability
            settings.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the repository in
            which to update the image tag mutability settings. If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The image tag mutability setting for the repository.</p>")
    imageTagMutability: option<imageTagMutability>,
    @ocaml.doc("<p>The repository name associated with the request.</p>")
    repositoryName: option<repositoryName>,
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "PutImageTagMutabilityCommand"
  let make = (~imageTagMutability, ~repositoryName, ~registryId=?, ()) =>
    new({imageTagMutability, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module InitiateLayerUpload = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the repository to which you intend to upload layers.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry to which you intend to upload
            layers. If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc(
      "<p>The size, in bytes, that Amazon ECR expects future layer part uploads to be.</p>"
    )
    partSize: option<partSize>,
    @ocaml.doc("<p>The upload ID for the layer upload. This parameter is passed to further <a>UploadLayerPart</a> and <a>CompleteLayerUpload</a>
            operations.</p>")
    uploadId: option<uploadId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "InitiateLayerUploadCommand"
  let make = (~repositoryName, ~registryId=?, ()) => new({repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRepositoryPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the repository with the policy to retrieve.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the repository.
            If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The JSON repository policy text associated with the repository.</p>")
    policyText: option<repositoryPolicyText>,
    @ocaml.doc("<p>The repository name associated with the request.</p>")
    repositoryName: option<repositoryName>,
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "GetRepositoryPolicyCommand"
  let make = (~repositoryName, ~registryId=?, ()) => new({repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRegistryPolicy = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The JSON text of the permissions policy for a registry.</p>")
    policyText: option<registryPolicyText>,
    @ocaml.doc("<p>The ID of the registry.</p>") registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "GetRegistryPolicyCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetLifecyclePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the repository.</p>") repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the repository.
            If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The time stamp of the last time that the lifecycle policy was run.</p>")
    lastEvaluatedAt: option<evaluationTimestamp>,
    @ocaml.doc("<p>The JSON lifecycle policy text.</p>")
    lifecyclePolicyText: option<lifecyclePolicyText>,
    @ocaml.doc("<p>The repository name associated with the request.</p>")
    repositoryName: option<repositoryName>,
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "GetLifecyclePolicyCommand"
  let make = (~repositoryName, ~registryId=?, ()) => new({repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDownloadUrlForLayer = {
  type t
  type request = {
    @ocaml.doc("<p>The digest of the image layer to download.</p>") layerDigest: layerDigest,
    @ocaml.doc(
      "<p>The name of the repository that is associated with the image layer to download.</p>"
    )
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the image layer to
            download. If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The digest of the image layer to download.</p>")
    layerDigest: option<layerDigest>,
    @ocaml.doc("<p>The pre-signed Amazon S3 download URL for the requested layer.</p>")
    downloadUrl: option<url>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "GetDownloadUrlForLayerCommand"
  let make = (~layerDigest, ~repositoryName, ~registryId=?, ()) =>
    new({layerDigest, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteRepositoryPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the repository that is associated with the repository policy to
            delete.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the repository policy
            to delete. If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The JSON repository policy that was deleted from the repository.</p>")
    policyText: option<repositoryPolicyText>,
    @ocaml.doc("<p>The repository name associated with the request.</p>")
    repositoryName: option<repositoryName>,
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "DeleteRepositoryPolicyCommand"
  let make = (~repositoryName, ~registryId=?, ()) => new({repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteRegistryPolicy = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The contents of the registry permissions policy that was deleted.</p>")
    policyText: option<registryPolicyText>,
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "DeleteRegistryPolicyCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeletePullThroughCacheRule = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the pull through cache
            rule. If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
    @ocaml.doc("<p>The Amazon ECR repository prefix associated with the pull through cache rule to
            delete.</p>")
    ecrRepositoryPrefix: pullThroughCacheRuleRepositoryPrefix,
  }
  type response = {
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
    @ocaml.doc("<p>The timestamp associated with the pull through cache rule.</p>")
    createdAt: option<creationTimestamp>,
    @ocaml.doc("<p>The upstream registry URL associated with the pull through cache rule.</p>")
    upstreamRegistryUrl: option<url>,
    @ocaml.doc("<p>The Amazon ECR repository prefix associated with the request.</p>")
    ecrRepositoryPrefix: option<pullThroughCacheRuleRepositoryPrefix>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "DeletePullThroughCacheRuleCommand"
  let make = (~ecrRepositoryPrefix, ~registryId=?, ()) => new({registryId, ecrRepositoryPrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteLifecyclePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the repository.</p>") repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the repository.
            If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The time stamp of the last time that the lifecycle policy was run.</p>")
    lastEvaluatedAt: option<evaluationTimestamp>,
    @ocaml.doc("<p>The JSON lifecycle policy text.</p>")
    lifecyclePolicyText: option<lifecyclePolicyText>,
    @ocaml.doc("<p>The repository name associated with the request.</p>")
    repositoryName: option<repositoryName>,
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "DeleteLifecyclePolicyCommand"
  let make = (~repositoryName, ~registryId=?, ()) => new({repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreatePullThroughCacheRule = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry to create the pull through cache
            rule for. If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
    @ocaml.doc("<p>The registry URL of the upstream public registry to use as the source for the pull
            through cache rule.</p>")
    upstreamRegistryUrl: url,
    @ocaml.doc(
      "<p>The repository name prefix to use when caching images from the source registry.</p>"
    )
    ecrRepositoryPrefix: pullThroughCacheRuleRepositoryPrefix,
  }
  type response = {
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
    @ocaml.doc("<p>The date and time, in JavaScript date format, when the pull through cache rule was
            created.</p>")
    createdAt: option<creationTimestamp>,
    @ocaml.doc("<p>The upstream registry URL associated with the pull through cache rule.</p>")
    upstreamRegistryUrl: option<url>,
    @ocaml.doc(
      "<p>The Amazon ECR repository prefix associated with the pull through cache rule.</p>"
    )
    ecrRepositoryPrefix: option<pullThroughCacheRuleRepositoryPrefix>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "CreatePullThroughCacheRuleCommand"
  let make = (~upstreamRegistryUrl, ~ecrRepositoryPrefix, ~registryId=?, ()) =>
    new({registryId, upstreamRegistryUrl, ecrRepositoryPrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The keys of the tags to be removed.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource from which to remove tags. Currently, the only supported
            resource is an Amazon ECR repository.</p>")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-ecr") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StartImageScan = {
  type t
  type request = {
    imageId: imageIdentifier,
    @ocaml.doc("<p>The name of the repository that contains the images to scan.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the repository in
            which to start an image scan request. If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The current state of the scan.</p>") imageScanStatus: option<imageScanStatus>,
    imageId: option<imageIdentifier>,
    @ocaml.doc("<p>The repository name associated with the request.</p>")
    repositoryName: option<repositoryName>,
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "StartImageScanCommand"
  let make = (~imageId, ~repositoryName, ~registryId=?, ()) =>
    new({imageId, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutImageScanningConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The image scanning configuration for the repository. This setting determines whether
            images are scanned for known vulnerabilities after being pushed to the
            repository.</p>")
    imageScanningConfiguration: imageScanningConfiguration,
    @ocaml.doc("<p>The name of the repository in which to update the image scanning configuration
            setting.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the repository in
            which to update the image scanning configuration setting.
            If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The image scanning configuration setting for the repository.</p>")
    imageScanningConfiguration: option<imageScanningConfiguration>,
    @ocaml.doc("<p>The repository name associated with the request.</p>")
    repositoryName: option<repositoryName>,
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "PutImageScanningConfigurationCommand"
  let make = (~imageScanningConfiguration, ~repositoryName, ~registryId=?, ()) =>
    new({imageScanningConfiguration, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CompleteLayerUpload = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>sha256</code> digest of the image layer.</p>")
    layerDigests: layerDigestList,
    @ocaml.doc("<p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to
            associate with the image layer.</p>")
    uploadId: uploadId,
    @ocaml.doc("<p>The name of the repository to associate with the image layer.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry to which to upload layers.
            If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The <code>sha256</code> digest of the image layer.</p>")
    layerDigest: option<layerDigest>,
    @ocaml.doc("<p>The upload ID associated with the layer.</p>") uploadId: option<uploadId>,
    @ocaml.doc("<p>The repository name associated with the request.</p>")
    repositoryName: option<repositoryName>,
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "CompleteLayerUploadCommand"
  let make = (~layerDigests, ~uploadId, ~repositoryName, ~registryId=?, ()) =>
    new({layerDigests, uploadId, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to add to the resource. A tag is an array of key-value pairs.
            Tag keys can have a maximum character length of 128 characters, and tag values can have
            a maximum length of 256 characters.</p>")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the the resource to which to add tags. Currently, the only supported
            resource is an Amazon ECR repository.</p>")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-ecr") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutImage = {
  type t
  type request = {
    @ocaml.doc("<p>The image digest of the image manifest corresponding to the image.</p>")
    imageDigest: option<imageDigest>,
    @ocaml.doc("<p>The tag to associate with the image. This parameter is required for images that use
            the Docker Image Manifest V2 Schema 2 or Open Container Initiative (OCI) formats.</p>")
    imageTag: option<imageTag>,
    @ocaml.doc("<p>The media type of the image manifest. If you push an image manifest that does not
            contain the <code>mediaType</code> field, you must specify the
                <code>imageManifestMediaType</code> in the request.</p>")
    imageManifestMediaType: option<mediaType>,
    @ocaml.doc("<p>The image manifest corresponding to the image to be uploaded.</p>")
    imageManifest: imageManifest,
    @ocaml.doc("<p>The name of the repository in which to put the image.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the repository in
            which to put the image. If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {@ocaml.doc("<p>Details of the image uploaded.</p>") image: option<image>}
  @module("@aws-sdk/client-ecr") @new external new: request => t = "PutImageCommand"
  let make = (
    ~imageManifest,
    ~repositoryName,
    ~imageDigest=?,
    ~imageTag=?,
    ~imageManifestMediaType=?,
    ~registryId=?,
    (),
  ) =>
    new({imageDigest, imageTag, imageManifestMediaType, imageManifest, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the
            only supported resource is an Amazon ECR repository.</p>")
    resourceArn: arn,
  }
  type response = {@ocaml.doc("<p>The tags for the resource.</p>") tags: option<tagList_>}
  @module("@aws-sdk/client-ecr") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListImages = {
  type t
  type request = {
    @ocaml.doc("<p>The filter key and value with which to filter your <code>ListImages</code>
            results.</p>")
    filter: option<listImagesFilter>,
    @ocaml.doc("<p>The maximum number of image results returned by <code>ListImages</code> in paginated
            output. When this parameter is used, <code>ListImages</code> only returns
                <code>maxResults</code> results in a single page along with a <code>nextToken</code>
            response element. The remaining results of the initial request can be seen by sending
            another <code>ListImages</code> request with the returned <code>nextToken</code> value.
            This value can be between 1 and 1000. If this parameter is
            not used, then <code>ListImages</code> returns up to 100 results and a
                <code>nextToken</code> value, if applicable.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
                <code>ListImages</code> request where <code>maxResults</code> was used and the
            results exceeded the value of that parameter. Pagination continues from the end of the
            previous results that returned the <code>nextToken</code> value. This value is
                <code>null</code> when there are no more results to return.</p>
        <note>
            <p>This token should be treated as an opaque identifier that is only used to
                retrieve the next items in a list and not for other programmatic purposes.</p>
        </note>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The repository with image IDs to be listed.</p>") repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the repository in
            which to list images. If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future <code>ListImages</code>
            request. When the results of a <code>ListImages</code> request exceed
                <code>maxResults</code>, this value can be used to retrieve the next page of
            results. This value is <code>null</code> when there are no more results to
            return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of image IDs for the requested repository.</p>")
    imageIds: option<imageIdentifierList>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "ListImagesCommand"
  let make = (~repositoryName, ~filter=?, ~maxResults=?, ~nextToken=?, ~registryId=?, ()) =>
    new({filter, maxResults, nextToken, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAuthorizationToken = {
  type t
  type request = {
    @ocaml.doc("<p>A list of Amazon Web Services account IDs that are associated with the registries for which to get
            AuthorizationData objects. If you do not specify a registry, the default registry is assumed.</p>")
    registryIds: option<getAuthorizationTokenRegistryIdList>,
  }
  type response = {
    @ocaml.doc("<p>A list of authorization token data objects that correspond to the
                <code>registryIds</code> values in the request.</p>")
    authorizationData: option<authorizationDataList>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "GetAuthorizationTokenCommand"
  let make = (~registryIds=?, ()) => new({registryIds: registryIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribePullThroughCacheRules = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of pull through cache rules returned by
                <code>DescribePullThroughCacheRulesRequest</code> in paginated output. When this
            parameter is used, <code>DescribePullThroughCacheRulesRequest</code> only returns
                <code>maxResults</code> results in a single page along with a <code>nextToken</code>
            response element. The remaining results of the initial request can be seen by sending
            another <code>DescribePullThroughCacheRulesRequest</code> request with the returned
                <code>nextToken</code> value. This value can be between 1 and 1000. If this
            parameter is not used, then <code>DescribePullThroughCacheRulesRequest</code> returns up
            to 100 results and a <code>nextToken</code> value, if applicable.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
                <code>DescribePullThroughCacheRulesRequest</code> request where
                <code>maxResults</code> was used and the results exceeded the value of that
            parameter. Pagination continues from the end of the previous results that returned the
                <code>nextToken</code> value. This value is null when there are no more results to
            return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon ECR repository prefixes associated with the pull through cache rules to return.
            If no repository prefix value is specified, all pull through cache rules are
            returned.</p>")
    ecrRepositoryPrefixes: option<pullThroughCacheRuleRepositoryPrefixList>,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry to return the pull through cache
            rules for. If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future
                <code>DescribePullThroughCacheRulesRequest</code> request. When the results of a
                <code>DescribePullThroughCacheRulesRequest</code> request exceed
                <code>maxResults</code>, this value can be used to retrieve the next page of
            results. This value is null when there are no more results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The details of the pull through cache rules.</p>")
    pullThroughCacheRules: option<pullThroughCacheRuleList>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "DescribePullThroughCacheRulesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~ecrRepositoryPrefixes=?, ~registryId=?, ()) =>
    new({maxResults, nextToken, ecrRepositoryPrefixes, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeImageReplicationStatus = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Web Services account ID associated with the registry. If you do not specify a registry, the default registry is assumed.</p>"
    )
    registryId: option<registryId>,
    imageId: imageIdentifier,
    @ocaml.doc("<p>The name of the repository that the image is in.</p>")
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc("<p>The replication status details for the images in the specified repository.</p>")
    replicationStatuses: option<imageReplicationStatusList>,
    imageId: option<imageIdentifier>,
    @ocaml.doc("<p>The repository name associated with the request.</p>")
    repositoryName: option<repositoryName>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "DescribeImageReplicationStatusCommand"
  let make = (~imageId, ~repositoryName, ~registryId=?, ()) =>
    new({registryId, imageId, repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteRepository = {
  type t
  type request = {
    @ocaml.doc("<p> If a repository contains images, forces the deletion.</p>")
    force: option<forceFlag>,
    @ocaml.doc("<p>The name of the repository to delete.</p>") repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the repository to
            delete. If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The repository that was deleted.</p>") repository: option<repository>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "DeleteRepositoryCommand"
  let make = (~repositoryName, ~force=?, ~registryId=?, ()) =>
    new({force, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRepository = {
  type t
  type request = {
    @ocaml.doc("<p>The encryption configuration for the repository. This determines how the contents of
            your repository are encrypted at rest.</p>")
    encryptionConfiguration: option<encryptionConfiguration>,
    @ocaml.doc("<p>The image scanning configuration for the repository. This determines whether images
            are scanned for known vulnerabilities after being pushed to the repository.</p>")
    imageScanningConfiguration: option<imageScanningConfiguration>,
    @ocaml.doc("<p>The tag mutability setting for the repository. If this parameter is omitted, the
            default setting of <code>MUTABLE</code> will be used which will allow image tags to be
            overwritten. If <code>IMMUTABLE</code> is specified, all image tags within the
            repository will be immutable which will prevent them from being overwritten.</p>")
    imageTagMutability: option<imageTagMutability>,
    @ocaml.doc("<p>The metadata that you apply to the repository to help you categorize and organize
            them. Each tag consists of a key and an optional value, both of which you define.
            Tag keys can have a maximum character length of 128 characters, and tag values can have
            a maximum length of 256 characters.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The name to use for the repository. The repository name may be specified on its own
            (such as <code>nginx-web-app</code>) or it can be prepended with a namespace to group
            the repository into a category (such as <code>project-a/nginx-web-app</code>).</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry to create the repository.
            If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The repository that was created.</p>") repository: option<repository>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "CreateRepositoryCommand"
  let make = (
    ~repositoryName,
    ~encryptionConfiguration=?,
    ~imageScanningConfiguration=?,
    ~imageTagMutability=?,
    ~tags=?,
    ~registryId=?,
    (),
  ) =>
    new({
      encryptionConfiguration,
      imageScanningConfiguration,
      imageTagMutability,
      tags,
      repositoryName,
      registryId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchCheckLayerAvailability = {
  type t
  type request = {
    @ocaml.doc("<p>The digests of the image layers to check.</p>")
    layerDigests: batchedOperationLayerDigestList,
    @ocaml.doc(
      "<p>The name of the repository that is associated with the image layers to check.</p>"
    )
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the image layers to
            check. If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>Any failures associated with the call.</p>") failures: option<layerFailureList>,
    @ocaml.doc("<p>A list of image layer objects corresponding to the image layer references in the
            request.</p>")
    layers: option<layerList>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "BatchCheckLayerAvailabilityCommand"
  let make = (~layerDigests, ~repositoryName, ~registryId=?, ()) =>
    new({layerDigests, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetLifecyclePolicyPreview = {
  type t
  type request = {
    @ocaml.doc("<p>An optional parameter that filters results based on image tag status and all tags, if
            tagged.</p>")
    filter: option<lifecyclePolicyPreviewFilter>,
    @ocaml.doc("<p>The maximum number of repository results returned by
                <code>GetLifecyclePolicyPreviewRequest</code> in  paginated output. When this
            parameter is used, <code>GetLifecyclePolicyPreviewRequest</code> only returns 
                <code>maxResults</code> results in a single page along with a
            <code>nextToken</code>  response element. The remaining results of the initial request
            can be seen by sending  another <code>GetLifecyclePolicyPreviewRequest</code> request
            with the returned <code>nextToken</code>  value. This value can be between
            1 and 1000. If this  parameter is not used, then
                <code>GetLifecyclePolicyPreviewRequest</code> returns up to  100
            results and a <code>nextToken</code> value, if  applicable. This option cannot be used
            when you specify images with <code>imageIds</code>.</p>")
    maxResults: option<lifecyclePreviewMaxResults>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated 
                <code>GetLifecyclePolicyPreviewRequest</code> request where <code>maxResults</code>
            was used and the  results exceeded the value of that parameter. Pagination continues
            from the end of the  previous results that returned the <code>nextToken</code> value.
            This value is  <code>null</code> when there are no more results to return. This option
            cannot be used when you specify images with <code>imageIds</code>.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of imageIDs to be included.</p>") imageIds: option<imageIdentifierList>,
    @ocaml.doc("<p>The name of the repository.</p>") repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the repository.
            If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The list of images that is returned as a result of the action.</p>")
    summary: option<lifecyclePolicyPreviewSummary>,
    @ocaml.doc("<p>The results of the lifecycle policy preview request.</p>")
    previewResults: option<lifecyclePolicyPreviewResultList>,
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future
                <code>GetLifecyclePolicyPreview</code> request. When the results of a
                <code>GetLifecyclePolicyPreview</code> request exceed <code>maxResults</code>, this
            value can be used to retrieve the next page of results. This value is <code>null</code>
            when there are no more results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The status of the lifecycle policy preview request.</p>")
    status: option<lifecyclePolicyPreviewStatus>,
    @ocaml.doc("<p>The JSON lifecycle policy text.</p>")
    lifecyclePolicyText: option<lifecyclePolicyText>,
    @ocaml.doc("<p>The repository name associated with the request.</p>")
    repositoryName: option<repositoryName>,
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "GetLifecyclePolicyPreviewCommand"
  let make = (
    ~repositoryName,
    ~filter=?,
    ~maxResults=?,
    ~nextToken=?,
    ~imageIds=?,
    ~registryId=?,
    (),
  ) => new({filter, maxResults, nextToken, imageIds, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeRepositories = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of repository results returned by <code>DescribeRepositories</code>
            in paginated output. When this parameter is used, <code>DescribeRepositories</code> only
            returns <code>maxResults</code> results in a single page along with a
                <code>nextToken</code> response element. The remaining results of the initial
            request can be seen by sending another <code>DescribeRepositories</code> request with
            the returned <code>nextToken</code> value. This value can be between 1
            and 1000. If this parameter is not used, then
                <code>DescribeRepositories</code> returns up to 100 results and a
                <code>nextToken</code> value, if applicable. This option cannot be used when you
            specify repositories with <code>repositoryNames</code>.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
                <code>DescribeRepositories</code> request where <code>maxResults</code> was used and
            the results exceeded the value of that parameter. Pagination continues from the end of
            the previous results that returned the <code>nextToken</code> value. This value is
                <code>null</code> when there are no more results to return. This option cannot be
            used when you specify repositories with <code>repositoryNames</code>.</p>
        <note>
            <p>This token should be treated as an opaque identifier that is only used to
                retrieve the next items in a list and not for other programmatic purposes.</p>
        </note>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of repositories to describe. If this parameter is omitted, then all
            repositories in a registry are described.</p>")
    repositoryNames: option<repositoryNameList>,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the repositories to be
            described. If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future
                <code>DescribeRepositories</code> request. When the results of a
                <code>DescribeRepositories</code> request exceed <code>maxResults</code>, this value
            can be used to retrieve the next page of results. This value is <code>null</code> when
            there are no more results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of repository objects corresponding to valid repositories.</p>")
    repositories: option<repositoryList>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "DescribeRepositoriesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~repositoryNames=?, ~registryId=?, ()) =>
    new({maxResults, nextToken, repositoryNames, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchGetImage = {
  type t
  type request = {
    @ocaml.doc("<p>The accepted media types for the request.</p>
        <p>Valid values: <code>application/vnd.docker.distribution.manifest.v1+json</code> |
                <code>application/vnd.docker.distribution.manifest.v2+json</code> |
                <code>application/vnd.oci.image.manifest.v1+json</code>
         </p>")
    acceptedMediaTypes: option<mediaTypeList>,
    @ocaml.doc("<p>A list of image ID references that correspond to images to describe. The format of the
                <code>imageIds</code> reference is <code>imageTag=tag</code> or
                <code>imageDigest=digest</code>.</p>")
    imageIds: imageIdentifierList,
    @ocaml.doc("<p>The repository that contains the images to describe.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the images to
            describe. If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>Any failures associated with the call.</p>") failures: option<imageFailureList>,
    @ocaml.doc(
      "<p>A list of image objects corresponding to the image references in the request.</p>"
    )
    images: option<imageList>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "BatchGetImageCommand"
  let make = (~imageIds, ~repositoryName, ~acceptedMediaTypes=?, ~registryId=?, ()) =>
    new({acceptedMediaTypes, imageIds, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchDeleteImage = {
  type t
  @ocaml.doc("<p>Deletes specified images within a specified repository. Images are specified with
            either the <code>imageTag</code> or <code>imageDigest</code>.</p>")
  type request = {
    @ocaml.doc("<p>A list of image ID references that correspond to images to delete. The format of the
                <code>imageIds</code> reference is <code>imageTag=tag</code> or
                <code>imageDigest=digest</code>.</p>")
    imageIds: imageIdentifierList,
    @ocaml.doc("<p>The repository that contains the image to delete.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the image to delete.
            If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>Any failures associated with the call.</p>") failures: option<imageFailureList>,
    @ocaml.doc("<p>The image IDs of the deleted images.</p>") imageIds: option<imageIdentifierList>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "BatchDeleteImageCommand"
  let make = (~imageIds, ~repositoryName, ~registryId=?, ()) =>
    new({imageIds, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeImages = {
  type t
  type request = {
    @ocaml.doc("<p>The filter key and value with which to filter your <code>DescribeImages</code>
            results.</p>")
    filter: option<describeImagesFilter>,
    @ocaml.doc("<p>The maximum number of repository results returned by <code>DescribeImages</code> in
            paginated output. When this parameter is used, <code>DescribeImages</code> only returns
                <code>maxResults</code> results in a single page along with a <code>nextToken</code>
            response element. The remaining results of the initial request can be seen by sending
            another <code>DescribeImages</code> request with the returned <code>nextToken</code>
            value. This value can be between 1 and 1000. If this
            parameter is not used, then <code>DescribeImages</code> returns up to
            100 results and a <code>nextToken</code> value, if applicable. This
            option cannot be used when you specify images with <code>imageIds</code>.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
                <code>DescribeImages</code> request where <code>maxResults</code> was used and the
            results exceeded the value of that parameter. Pagination continues from the end of the
            previous results that returned the <code>nextToken</code> value. This value is
                <code>null</code> when there are no more results to return. This option cannot be
            used when you specify images with <code>imageIds</code>.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of image IDs for the requested repository.</p>")
    imageIds: option<imageIdentifierList>,
    @ocaml.doc("<p>The repository that contains the images to describe.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the repository in
            which to describe images. If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future <code>DescribeImages</code>
            request. When the results of a <code>DescribeImages</code> request exceed
                <code>maxResults</code>, this value can be used to retrieve the next page of
            results. This value is <code>null</code> when there are no more results to
            return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <a>ImageDetail</a> objects that contain data about the
            image.</p>")
    imageDetails: option<imageDetailList>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "DescribeImagesCommand"
  let make = (
    ~repositoryName,
    ~filter=?,
    ~maxResults=?,
    ~nextToken=?,
    ~imageIds=?,
    ~registryId=?,
    (),
  ) => new({filter, maxResults, nextToken, imageIds, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchGetRepositoryScanningConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>One or more repository names to get the scanning configuration for.</p>")
    repositoryNames: scanningConfigurationRepositoryNameList,
  }
  type response = {
    @ocaml.doc("<p>Any failures associated with the call.</p>")
    failures: option<repositoryScanningConfigurationFailureList>,
    @ocaml.doc("<p>The scanning configuration for the requested repositories.</p>")
    scanningConfigurations: option<repositoryScanningConfigurationList>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "BatchGetRepositoryScanningConfigurationCommand"
  let make = (~repositoryNames, ()) => new({repositoryNames: repositoryNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutReplicationConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>An object representing the replication configuration for a registry.</p>")
    replicationConfiguration: replicationConfiguration,
  }
  type response = {
    @ocaml.doc("<p>The contents of the replication configuration for the registry.</p>")
    replicationConfiguration: option<replicationConfiguration>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "PutReplicationConfigurationCommand"
  let make = (~replicationConfiguration, ()) =>
    new({replicationConfiguration: replicationConfiguration})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutRegistryScanningConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The scanning rules to use for the registry. A scanning rule is used to determine which
            repository filters are used and at what frequency scanning will occur.</p>")
    rules: option<registryScanningRuleList>,
    @ocaml.doc("<p>The scanning type to set for the registry.</p>
        <p>When a registry scanning configuration is not defined, by default the
                <code>BASIC</code> scan type is used. When basic scanning is used, you may specify
            filters to determine which individual repositories, or all repositories, are scanned
            when new images are pushed to those repositories. Alternatively, you can do manual scans
            of images with basic scanning.</p>
        <p>When the <code>ENHANCED</code> scan type is set, Amazon Inspector provides automated
            vulnerability scanning. You may choose between continuous scanning or scan on push and
            you may specify filters to determine which individual repositories, or all repositories,
            are scanned.</p>")
    scanType: option<scanType>,
  }
  type response = {
    @ocaml.doc("<p>The scanning configuration for your registry.</p>")
    registryScanningConfiguration: option<registryScanningConfiguration>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "PutRegistryScanningConfigurationCommand"
  let make = (~rules=?, ~scanType=?, ()) => new({rules, scanType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRegistryScanningConfiguration = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The scanning configuration for the registry.</p>")
    scanningConfiguration: option<registryScanningConfiguration>,
    @ocaml.doc("<p>The ID of the registry.</p>") registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "GetRegistryScanningConfigurationCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeRegistry = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The replication configuration for the registry.</p>")
    replicationConfiguration: option<replicationConfiguration>,
    @ocaml.doc("<p>The ID of the registry.</p>") registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new external new: request => t = "DescribeRegistryCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeImageScanFindings = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of image scan results returned by
                <code>DescribeImageScanFindings</code> in paginated output. When this parameter is
            used, <code>DescribeImageScanFindings</code> only returns <code>maxResults</code>
            results in a single page along with a <code>nextToken</code> response element. The
            remaining results of the initial request can be seen by sending another
                <code>DescribeImageScanFindings</code> request with the returned
                <code>nextToken</code> value. This value can be between 1 and 1000. If this
            parameter is not used, then <code>DescribeImageScanFindings</code> returns up to 100
            results and a <code>nextToken</code> value, if applicable.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
                <code>DescribeImageScanFindings</code> request where <code>maxResults</code> was
            used and the results exceeded the value of that parameter. Pagination continues from the
            end of the previous results that returned the <code>nextToken</code> value. This value
            is null when there are no more results to return.</p>")
    nextToken: option<nextToken>,
    imageId: imageIdentifier,
    @ocaml.doc("<p>The repository for the image for which to describe the scan findings.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The Amazon Web Services account ID associated with the registry that contains the repository in
            which to describe the image scan findings for. If you do not specify a registry, the default registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future
                <code>DescribeImageScanFindings</code> request. When the results of a
                <code>DescribeImageScanFindings</code> request exceed <code>maxResults</code>, this
            value can be used to retrieve the next page of results. This value is null when there
            are no more results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The information contained in the image scan findings.</p>")
    imageScanFindings: option<imageScanFindings>,
    @ocaml.doc("<p>The current state of the scan.</p>") imageScanStatus: option<imageScanStatus>,
    imageId: option<imageIdentifier>,
    @ocaml.doc("<p>The repository name associated with the request.</p>")
    repositoryName: option<repositoryName>,
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr") @new
  external new: request => t = "DescribeImageScanFindingsCommand"
  let make = (~imageId, ~repositoryName, ~maxResults=?, ~nextToken=?, ~registryId=?, ()) =>
    new({maxResults, nextToken, imageId, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
