type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-ecr-public") @new
external createClient: unit => awsServiceClient = "ECRPUBLICClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
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
type registryAliasStatus = [
  | @as("REJECTED") #REJECTED
  | @as("PENDING") #PENDING
  | @as("ACTIVE") #ACTIVE
]
type registryAliasName = string
type pushTimestamp = Js.Date.t
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
type layerFailureCode = [
  | @as("MissingLayerDigest") #MissingLayerDigest
  | @as("InvalidLayerDigest") #InvalidLayerDigest
]
type layerDigest = string
type layerAvailability = [@as("UNAVAILABLE") #UNAVAILABLE | @as("AVAILABLE") #AVAILABLE]
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
type forceFlag = bool
type expirationTimestamp = Js.Date.t
type exceptionMessage = string
type defaultRegistryAliasFlag = bool
type creationTimestamp = Js.Date.t
type batchedOperationLayerDigest = string
type base64 = string
type arn = string
type architecture = string
type aboutText = string
type tagKeyList = array<tagKey>
@ocaml.doc("<p>The metadata that you apply to a resource to help you categorize and organize them. Each
         tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>")
type tag = {
  @ocaml.doc("<p>The optional part of a key-value pair that make up a tag. A <code>value</code> acts as a
         descriptor within a tag category (key).</p>")
  @as("Value")
  value: option<tagValue>,
  @ocaml.doc("<p>One part of a key-value pair that make up a tag. A <code>key</code> is a general label
         that acts like a category for more specific tag values.</p>")
  @as("Key")
  key: option<tagKey>,
}
type repositoryNameList = array<repositoryName>
@ocaml.doc("<p>An object representing a repository.</p>")
type repository = {
  @ocaml.doc(
    "<p>The date and time, in JavaScript date format, when the repository was created.</p>"
  )
  createdAt: option<creationTimestamp>,
  @ocaml.doc("<p>The URI for the repository. You can use this URI for container image <code>push</code>
         and <code>pull</code> operations.</p>")
  repositoryUri: option<url>,
  @ocaml.doc("<p>The name of the repository.</p>") repositoryName: option<repositoryName>,
  @ocaml.doc("<p>The AWS account ID associated with the public registry that contains the
         repository.</p>")
  registryId: option<registryId>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) that identifies the repository. The ARN contains the <code>arn:aws:ecr</code> namespace, followed by the region of the repository, AWS account ID of the repository owner, repository namespace, and repository name. For example, <code>arn:aws:ecr:region:012345678910:repository/test</code>.</p>"
  )
  repositoryArn: option<arn>,
}
@ocaml.doc("<p>The metadata for a public registry.</p>")
type registryCatalogData = {
  @ocaml.doc("<p>The display name for a public registry. This appears on the Amazon ECR Public Gallery.</p>
         <important>
            <p>Only accounts that have the verified account badge can have a registry display
            name.</p>
         </important>")
  displayName: option<registryDisplayName>,
}
@ocaml.doc("<p>An object representing the aliases for a public registry. A public registry is given an
         alias upon creation but a custom alias can be set using the Amazon ECR console. For more
         information, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/Registries.html\">Registries</a> in the
            <i>Amazon Elastic Container Registry User Guide</i>.</p>")
type registryAlias = {
  @ocaml.doc("<p>Whether or not the registry alias is the default alias for the registry. When the first
         public repository is created, your public registry is assigned a default registry
         alias.</p>")
  defaultRegistryAlias: defaultRegistryAliasFlag,
  @ocaml.doc("<p>Whether or not the registry alias is the primary alias for the registry. If true, the
         alias is the primary registry alias and is displayed in both the repository URL and the
         image URI used in the <code>docker pull</code> commands on the Amazon ECR Public Gallery.</p>
         <note>
            <p>A registry alias that is not the primary registry alias can be used in the repository
            URI in a <code>docker pull</code> command.</p>
         </note>")
  primaryRegistryAlias: primaryRegistryAliasFlag,
  @ocaml.doc("<p>The status of the registry alias.</p>") status: registryAliasStatus,
  @ocaml.doc("<p>The name of the registry alias.</p>") name: registryAliasName,
}
@ocaml.doc(
  "<p>An object that describes the image tag details returned by a <a>DescribeImageTags</a> action.</p>"
)
type referencedImageDetail = {
  @ocaml.doc("<p>The artifact media type of the image.</p>") artifactMediaType: option<mediaType>,
  @ocaml.doc("<p>The media type of the image manifest.</p>")
  imageManifestMediaType: option<mediaType>,
  @ocaml.doc("<p>The date and time, expressed in standard JavaScript date format, at which the current
         image tag was pushed to the repository.</p>")
  imagePushedAt: option<pushTimestamp>,
  @ocaml.doc("<p>The size, in bytes, of the image in the repository.</p>
         <p>If the image is a manifest list, this will be the max size of all manifests in the
         list.</p>
         <note>
            <p>Beginning with Docker version 1.9, the Docker client compresses image layers before
            pushing them to a V2 Docker registry. The output of the <code>docker images</code>
            command shows the uncompressed image size, so it may return a larger image size than the
            image sizes returned by <a>DescribeImages</a>.</p>
         </note>")
  imageSizeInBytes: option<imageSizeInBytes>,
  @ocaml.doc("<p>The <code>sha256</code> digest of the image manifest.</p>")
  imageDigest: option<imageDigest>,
}
type operatingSystemList = array<operatingSystem>
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
type imageTagList = array<imageTag>
@ocaml.doc("<p>An object with identifying information for an Amazon ECR image.</p>")
type imageIdentifier = {
  @ocaml.doc("<p>The tag used for the image.</p>") imageTag: option<imageTag>,
  @ocaml.doc("<p>The <code>sha256</code> digest of the image manifest.</p>")
  imageDigest: option<imageDigest>,
}
type batchedOperationLayerDigestList = array<batchedOperationLayerDigest>
@ocaml.doc("<p>An authorization token data object that corresponds to a public registry.</p>")
type authorizationData = {
  @ocaml.doc("<p>The Unix time in seconds and milliseconds when the authorization token expires.
         Authorization tokens are valid for 12 hours.</p>")
  expiresAt: option<expirationTimestamp>,
  @ocaml.doc("<p>A base64-encoded string that contains authorization data for a public Amazon ECR registry.
         When the string is decoded, it is presented in the format <code>user:password</code> for
         public registry authentication using <code>docker login</code>.</p>")
  authorizationToken: option<base64>,
}
type architectureList = array<architecture>
type tagList_ = array<tag>
type repositoryList = array<repository>
@ocaml.doc("<p>An object containing the catalog data for a repository. This data is publicly visible in
         the Amazon ECR Public Gallery.</p>")
type repositoryCatalogDataInput = {
  @ocaml.doc("<p>Detailed information on how to use the contents of the repository. It is publicly
         visible in the Amazon ECR Public Gallery. The usage text provides context, support information,
         and additional usage details for users of the repository. The text must be in markdown
         format.</p>")
  usageText: option<usageText>,
  @ocaml.doc("<p>A detailed description of the contents of the repository. It is publicly visible in the
         Amazon ECR Public Gallery. The text must be in markdown format.</p>")
  aboutText: option<aboutText>,
  @ocaml.doc("<p>The base64-encoded repository logo payload.</p>
         <note>
            <p>The repository logo is only publicly visible in the Amazon ECR Public Gallery for verified
            accounts.</p>
         </note>")
  logoImageBlob: option<logoImageBlob>,
  @ocaml.doc("<p>The operating systems that the images in the repository are compatible with. On the
         Amazon ECR Public Gallery, the following supported operating systems will appear as badges on
         the repository and are used as search filters.</p>
         <ul>
            <li>
               <p>
                  <code>ARM</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ARM 64</code>
               </p>
            </li>
            <li>
               <p>
                  <code>x86</code>
               </p>
            </li>
            <li>
               <p>
                  <code>x86-64</code>
               </p>
            </li>
         </ul>
         <note>
            <p>If an unsupported tag is added to your repository catalog data, it will be associated
            with the repository and can be retrieved using the API but will not be discoverable in
            the Amazon ECR Public Gallery.</p>
         </note>")
  operatingSystems: option<operatingSystemList>,
  @ocaml.doc("<p>The system architecture that the images in the repository are compatible with. On the
         Amazon ECR Public Gallery, the following supported architectures will appear as badges on the
         repository and are used as search filters.</p>
         <ul>
            <li>
               <p>
                  <code>Linux</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Windows</code>
               </p>
            </li>
         </ul>
         <note>
            <p>If an unsupported tag is added to your repository catalog data, it will be associated
            with the repository and can be retrieved using the API but will not be discoverable in
            the Amazon ECR Public Gallery.</p>
         </note>")
  architectures: option<architectureList>,
  @ocaml.doc("<p>A short description of the contents of the repository. This text appears in both the
         image details and also when searching for repositories on the Amazon ECR Public Gallery.</p>")
  description: option<repositoryDescription>,
}
@ocaml.doc("<p>The catalog data for a repository. This data is publicly visible in the
         Amazon ECR Public Gallery.</p>")
type repositoryCatalogData = {
  @ocaml.doc("<p>Whether or not the repository is certified by AWS Marketplace.</p>")
  marketplaceCertified: option<marketplaceCertified>,
  @ocaml.doc("<p>The longform usage details of the contents of the repository. The usage text provides
         context for users of the repository.</p>")
  usageText: option<usageText>,
  @ocaml.doc("<p>The longform description of the contents of the repository. This text appears in the
         repository details on the Amazon ECR Public Gallery.</p>")
  aboutText: option<aboutText>,
  @ocaml.doc("<p>The URL containing the logo associated with the repository.</p>")
  logoUrl: option<resourceUrl>,
  @ocaml.doc("<p>The operating system tags that are associated with the repository.</p>
         <note>
            <p>Only supported operating system tags appear publicly in the Amazon ECR Public Gallery. For
            more information, see <a>RepositoryCatalogDataInput</a>.</p>
         </note>")
  operatingSystems: option<operatingSystemList>,
  @ocaml.doc("<p>The architecture tags that are associated with the repository.</p>
         <note>
            <p>Only supported operating system tags appear publicly in the Amazon ECR Public Gallery. For
            more information, see <a>RepositoryCatalogDataInput</a>.</p>
         </note>")
  architectures: option<architectureList>,
  @ocaml.doc("<p>The short description of the repository.</p>")
  description: option<repositoryDescription>,
}
type registryAliasList = array<registryAlias>
type layerList = array<layer>
type layerFailureList = array<layerFailure>
@ocaml.doc("<p>An object representing the image tag details for an image.</p>")
type imageTagDetail = {
  @ocaml.doc("<p>An object that describes the details of an image.</p>")
  imageDetail: option<referencedImageDetail>,
  @ocaml.doc("<p>The time stamp indicating when the image tag was created.</p>")
  createdAt: option<creationTimestamp>,
  @ocaml.doc("<p>The tag associated with the image.</p>") imageTag: option<imageTag>,
}
type imageIdentifierList = array<imageIdentifier>
@ocaml.doc("<p>An object representing an Amazon ECR image failure.</p>")
type imageFailure = {
  @ocaml.doc("<p>The reason for the failure.</p>") failureReason: option<imageFailureReason>,
  @ocaml.doc("<p>The code associated with the failure.</p>") failureCode: option<imageFailureCode>,
  @ocaml.doc("<p>The image ID associated with the failure.</p>") imageId: option<imageIdentifier>,
}
@ocaml.doc("<p>An object that describes an image returned by a <a>DescribeImages</a>
         operation.</p>")
type imageDetail = {
  @ocaml.doc("<p>The artifact media type of the image.</p>") artifactMediaType: option<mediaType>,
  @ocaml.doc("<p>The media type of the image manifest.</p>")
  imageManifestMediaType: option<mediaType>,
  @ocaml.doc("<p>The date and time, expressed in standard JavaScript date format, at which the current
         image was pushed to the repository. </p>")
  imagePushedAt: option<pushTimestamp>,
  @ocaml.doc("<p>The size, in bytes, of the image in the repository.</p>
         <p>If the image is a manifest list, this will be the max size of all manifests in the
         list.</p>
         <note>
            <p>Beginning with Docker version 1.9, the Docker client compresses image layers before
            pushing them to a V2 Docker registry. The output of the <code>docker images</code>
            command shows the uncompressed image size, so it may return a larger image size than the
            image sizes returned by <a>DescribeImages</a>.</p>
         </note>")
  imageSizeInBytes: option<imageSizeInBytes>,
  @ocaml.doc("<p>The list of tags associated with this image.</p>") imageTags: option<imageTagList>,
  @ocaml.doc("<p>The <code>sha256</code> digest of the image manifest.</p>")
  imageDigest: option<imageDigest>,
  @ocaml.doc("<p>The name of the repository to which this image belongs.</p>")
  repositoryName: option<repositoryName>,
  @ocaml.doc("<p>The AWS account ID associated with the public registry to which this image
         belongs.</p>")
  registryId: option<registryId>,
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
  @ocaml.doc("<p>The AWS account ID associated with the registry containing the image.</p>")
  registryId: option<registryIdOrAlias>,
}
@ocaml.doc("<p>The details of a public registry.</p>")
type registry = {
  @ocaml.doc("<p>An array of objects representing the aliases for a public registry.</p>")
  aliases: registryAliasList,
  @ocaml.doc("<p>Whether the account is verified. This indicates whether the account is an AWS
         Marketplace vendor. If an account is verified, each public repository will received a
         verified account badge on the Amazon ECR Public Gallery.</p>")
  verified: registryVerified,
  @ocaml.doc("<p>The URI of a public registry. The URI contains a universal prefix and the registry
         alias.</p>")
  registryUri: url,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the public registry.</p>") registryArn: arn,
  @ocaml.doc(
    "<p>The AWS account ID associated with the registry. If you do not specify a registry, the default public registry is assumed.</p>"
  )
  registryId: registryId,
}
type imageTagDetailList = array<imageTagDetail>
type imageFailureList = array<imageFailure>
type imageDetailList = array<imageDetail>
type registryList = array<registry>
@ocaml.doc("<fullname>Amazon Elastic Container Registry Public</fullname>
         <p>Amazon Elastic Container Registry (Amazon ECR) is a managed container image registry service. Amazon ECR provides both
         public and private registries to host your container images. You can use the familiar
         Docker CLI, or their preferred client, to push, pull, and manage images. Amazon ECR provides a
         secure, scalable, and reliable registry for your Docker or Open Container Initiative (OCI)
         images. Amazon ECR supports public repositories with this API. For information about the Amazon ECR
         API for private repositories, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/APIReference/Welcome.html\">Amazon Elastic Container Registry API Reference</a>.</p>")
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
    @ocaml.doc("<p>The AWS account ID associated with the registry to which you are uploading layer parts.
         If you do not specify a registry, the default public registry is assumed.</p>")
    registryId: option<registryIdOrAlias>,
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
  @module("@aws-sdk/client-ecr-public") @new external new: request => t = "UploadLayerPartCommand"
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
module SetRepositoryPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>If the policy you are attempting to set on a repository policy would prevent you from
         setting another policy in the future, you must force the <a>SetRepositoryPolicy</a> operation. This is intended to prevent accidental
         repository lock outs.</p>")
    force: option<forceFlag>,
    @ocaml.doc("<p>The JSON repository policy text to apply to the repository. For more information, see
            <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html\">Amazon ECR Repository
            Policies</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>")
    policyText: repositoryPolicyText,
    @ocaml.doc("<p>The name of the repository to receive the policy.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The AWS account ID associated with the registry that contains the repository.
         If you do not specify a registry, the default public registry is assumed.</p>")
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
  @module("@aws-sdk/client-ecr-public") @new
  external new: request => t = "SetRepositoryPolicyCommand"
  let make = (~policyText, ~repositoryName, ~force=?, ~registryId=?, ()) =>
    new({force, policyText, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module InitiateLayerUpload = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the repository to which you intend to upload layers.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The AWS account ID associated with the registry to which you intend to upload layers.
         If you do not specify a registry, the default public registry is assumed.</p>")
    registryId: option<registryIdOrAlias>,
  }
  type response = {
    @ocaml.doc(
      "<p>The size, in bytes, that Amazon ECR expects future layer part uploads to be.</p>"
    )
    partSize: option<partSize>,
    @ocaml.doc(
      "<p>The upload ID for the layer upload. This parameter is passed to further <a>UploadLayerPart</a> and <a>CompleteLayerUpload</a> operations.</p>"
    )
    uploadId: option<uploadId>,
  }
  @module("@aws-sdk/client-ecr-public") @new
  external new: request => t = "InitiateLayerUploadCommand"
  let make = (~repositoryName, ~registryId=?, ()) => new({repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRepositoryPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the repository with the policy to retrieve.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The AWS account ID associated with the public registry that contains the repository.
         If you do not specify a registry, the default public registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The repository policy text associated with the repository. The policy text will be in
         JSON format.</p>")
    policyText: option<repositoryPolicyText>,
    @ocaml.doc("<p>The repository name associated with the request.</p>")
    repositoryName: option<repositoryName>,
    @ocaml.doc("<p>The registry ID associated with the request.</p>")
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr-public") @new
  external new: request => t = "GetRepositoryPolicyCommand"
  let make = (~repositoryName, ~registryId=?, ()) => new({repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteRepositoryPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the repository that is associated with the repository policy to
         delete.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The AWS account ID associated with the public registry that contains the repository
         policy to delete. If you do not specify a registry, the default public registry is assumed.</p>")
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
  @module("@aws-sdk/client-ecr-public") @new
  external new: request => t = "DeleteRepositoryPolicyCommand"
  let make = (~repositoryName, ~registryId=?, ()) => new({repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The keys of the tags to be removed.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource from which to delete tags. Currently, the supported
         resource is an Amazon ECR Public repository.</p>")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-ecr-public") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutRegistryCatalogData = {
  type t
  type request = {
    @ocaml.doc("<p>The display name for a public registry. The display name is shown as the repository
         author in the Amazon ECR Public Gallery.</p>
         <note>
            <p>The registry display name is only publicly visible in the Amazon ECR Public Gallery for
            verified accounts.</p>
         </note>")
    displayName: option<registryDisplayName>,
  }
  type response = {
    @ocaml.doc("<p>The catalog data for the public registry.</p>")
    registryCatalogData: registryCatalogData,
  }
  @module("@aws-sdk/client-ecr-public") @new
  external new: request => t = "PutRegistryCatalogDataCommand"
  let make = (~displayName=?, ()) => new({displayName: displayName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRegistryCatalogData = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The catalog metadata for the public registry.</p>")
    registryCatalogData: registryCatalogData,
  }
  @module("@aws-sdk/client-ecr-public") @new
  external new: request => t = "GetRegistryCatalogDataCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAuthorizationToken = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>An authorization token data object that corresponds to a public registry.</p>")
    authorizationData: option<authorizationData>,
  }
  @module("@aws-sdk/client-ecr-public") @new
  external new: request => t = "GetAuthorizationTokenCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteRepository = {
  type t
  type request = {
    @ocaml.doc("<p> If a repository contains images, forces the deletion.</p>")
    force: option<forceFlag>,
    @ocaml.doc("<p>The name of the repository to delete.</p>") repositoryName: repositoryName,
    @ocaml.doc("<p>The AWS account ID associated with the public registry that contains the repository to
         delete. If you do not specify a registry, the default public registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The repository that was deleted.</p>") repository: option<repository>,
  }
  @module("@aws-sdk/client-ecr-public") @new external new: request => t = "DeleteRepositoryCommand"
  let make = (~repositoryName, ~force=?, ~registryId=?, ()) =>
    new({force, repositoryName, registryId})
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
    @ocaml.doc("<p>The name of the repository in a public registry to associate with the image
         layer.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The AWS account ID associated with the registry to which to upload layers.
         If you do not specify a registry, the default public registry is assumed.</p>")
    registryId: option<registryIdOrAlias>,
  }
  type response = {
    @ocaml.doc("<p>The <code>sha256</code> digest of the image layer.</p>")
    layerDigest: option<layerDigest>,
    @ocaml.doc("<p>The upload ID associated with the layer.</p>") uploadId: option<uploadId>,
    @ocaml.doc("<p>The repository name associated with the request.</p>")
    repositoryName: option<repositoryName>,
    @ocaml.doc("<p>The public registry ID associated with the request.</p>")
    registryId: option<registryId>,
  }
  @module("@aws-sdk/client-ecr-public") @new
  external new: request => t = "CompleteLayerUploadCommand"
  let make = (~layerDigests, ~uploadId, ~repositoryName, ~registryId=?, ()) =>
    new({layerDigests, uploadId, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to add to the resource. A tag is an array of key-value pairs.
         Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to which to add tags. Currently, the
         supported resource is an Amazon ECR Public repository.</p>")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-ecr-public") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutRepositoryCatalogData = {
  type t
  type request = {
    @ocaml.doc("<p>An object containing the catalog data for a repository. This data is publicly visible in
         the Amazon ECR Public Gallery.</p>")
    catalogData: repositoryCatalogDataInput,
    @ocaml.doc("<p>The name of the repository to create or update the catalog data for.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The AWS account ID associated with the public registry the repository is in.
         If you do not specify a registry, the default public registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The catalog data for the repository.</p>")
    catalogData: option<repositoryCatalogData>,
  }
  @module("@aws-sdk/client-ecr-public") @new
  external new: request => t = "PutRepositoryCatalogDataCommand"
  let make = (~catalogData, ~repositoryName, ~registryId=?, ()) =>
    new({catalogData, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutImage = {
  type t
  type request = {
    @ocaml.doc("<p>The image digest of the image manifest corresponding to the image.</p>")
    imageDigest: option<imageDigest>,
    @ocaml.doc("<p>The tag to associate with the image. This parameter is required for images that use the
         Docker Image Manifest V2 Schema 2 or Open Container Initiative (OCI) formats.</p>")
    imageTag: option<imageTag>,
    @ocaml.doc("<p>The media type of the image manifest. If you push an image manifest that does not
         contain the <code>mediaType</code> field, you must specify the
            <code>imageManifestMediaType</code> in the request.</p>")
    imageManifestMediaType: option<mediaType>,
    @ocaml.doc("<p>The image manifest corresponding to the image to be uploaded.</p>")
    imageManifest: imageManifest,
    @ocaml.doc("<p>The name of the repository in which to put the image.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The AWS account ID associated with the public registry that contains the repository in
         which to put the image. If you do not specify a registry, the default public registry is assumed.</p>")
    registryId: option<registryIdOrAlias>,
  }
  type response = {@ocaml.doc("<p>Details of the image uploaded.</p>") image: option<image>}
  @module("@aws-sdk/client-ecr-public") @new external new: request => t = "PutImageCommand"
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
         supported resource is an Amazon ECR Public repository.</p>")
    resourceArn: arn,
  }
  type response = {@ocaml.doc("<p>The tags for the resource.</p>") tags: option<tagList_>}
  @module("@aws-sdk/client-ecr-public") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRepositoryCatalogData = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the repository to retrieve the catalog metadata for.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The AWS account ID associated with the registry that contains the repositories to be
         described. If you do not specify a registry, the default public registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The catalog metadata for the repository.</p>")
    catalogData: option<repositoryCatalogData>,
  }
  @module("@aws-sdk/client-ecr-public") @new
  external new: request => t = "GetRepositoryCatalogDataCommand"
  let make = (~repositoryName, ~registryId=?, ()) => new({repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeRepositories = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of repository results returned by <code>DescribeRepositories</code>
         in paginated output. When this parameter is used, <code>DescribeRepositories</code> only
         returns <code>maxResults</code> results in a single page along with a
            <code>nextToken</code> response element. The remaining results of the initial request
         can be seen by sending another <code>DescribeRepositories</code> request with the returned
            <code>nextToken</code> value. This value can be between 1 and
         1000. If this parameter is not used, then <code>DescribeRepositories</code>
         returns up to 100 results and a <code>nextToken</code> value, if
         applicable. This option cannot be used when you specify repositories with
            <code>repositoryNames</code>.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
            <code>DescribeRepositories</code> request where <code>maxResults</code> was used and the
         results exceeded the value of that parameter. Pagination continues from the end of the
         previous results that returned the <code>nextToken</code> value. This value is
            <code>null</code> when there are no more results to return. This option cannot be used
         when you specify repositories with <code>repositoryNames</code>.</p> 
         <note>
            <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p>
         </note>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of repositories to describe. If this parameter is omitted, then all repositories
         in a registry are described.</p>")
    repositoryNames: option<repositoryNameList>,
    @ocaml.doc("<p>The AWS account ID associated with the registry that contains the repositories to be
         described. If you do not specify a registry, the default public registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future
            <code>DescribeRepositories</code> request. When the results of a
            <code>DescribeRepositories</code> request exceed <code>maxResults</code>, this value can
         be used to retrieve the next page of results. This value is <code>null</code> when there
         are no more results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of repository objects corresponding to valid repositories.</p>")
    repositories: option<repositoryList>,
  }
  @module("@aws-sdk/client-ecr-public") @new
  external new: request => t = "DescribeRepositoriesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~repositoryNames=?, ~registryId=?, ()) =>
    new({maxResults, nextToken, repositoryNames, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRepository = {
  type t
  type request = {
    @ocaml.doc("<p>The metadata that you apply to the repository to help you categorize and organize them.
         Each tag consists of a key and an optional value, both of which you define.
         Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The details about the repository that are publicly visible in the
         Amazon ECR Public Gallery.</p>")
    catalogData: option<repositoryCatalogDataInput>,
    @ocaml.doc("<p>The name to use for the repository. This appears publicly in the Amazon ECR Public Gallery.
         The repository name may be specified on its own (such as <code>nginx-web-app</code>) or it
         can be prepended with a namespace to group the repository into a category (such as
            <code>project-a/nginx-web-app</code>).</p>")
    repositoryName: repositoryName,
  }
  type response = {
    catalogData: option<repositoryCatalogData>,
    @ocaml.doc("<p>The repository that was created.</p>") repository: option<repository>,
  }
  @module("@aws-sdk/client-ecr-public") @new external new: request => t = "CreateRepositoryCommand"
  let make = (~repositoryName, ~tags=?, ~catalogData=?, ()) =>
    new({tags, catalogData, repositoryName})
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
    @ocaml.doc("<p>The AWS account ID associated with the public registry that contains the image layers to
         check. If you do not specify a registry, the default public registry is assumed.</p>")
    registryId: option<registryIdOrAlias>,
  }
  type response = {
    @ocaml.doc("<p>Any failures associated with the call.</p>") failures: option<layerFailureList>,
    @ocaml.doc("<p>A list of image layer objects corresponding to the image layer references in the
         request.</p>")
    layers: option<layerList>,
  }
  @module("@aws-sdk/client-ecr-public") @new
  external new: request => t = "BatchCheckLayerAvailabilityCommand"
  let make = (~layerDigests, ~repositoryName, ~registryId=?, ()) =>
    new({layerDigests, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeImages = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of repository results returned by <code>DescribeImages</code> in
         paginated output. When this parameter is used, <code>DescribeImages</code> only returns
            <code>maxResults</code> results in a single page along with a <code>nextToken</code>
         response element. The remaining results of the initial request can be seen by sending
         another <code>DescribeImages</code> request with the returned <code>nextToken</code> value.
         This value can be between 1 and 1000. If this parameter is not
         used, then <code>DescribeImages</code> returns up to 100 results and a
            <code>nextToken</code> value, if applicable. This option cannot be used when you specify
         images with <code>imageIds</code>.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
            <code>DescribeImages</code> request where <code>maxResults</code> was used and the
         results exceeded the value of that parameter. Pagination continues from the end of the
         previous results that returned the <code>nextToken</code> value. This value is
            <code>null</code> when there are no more results to return. This option cannot be used
         when you specify images with <code>imageIds</code>.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of image IDs for the requested repository.</p>")
    imageIds: option<imageIdentifierList>,
    @ocaml.doc("<p>The repository that contains the images to describe.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The AWS account ID associated with the public registry that contains the repository in
         which to describe images. If you do not specify a registry, the default public registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future <code>DescribeImages</code>
         request. When the results of a <code>DescribeImages</code> request exceed
            <code>maxResults</code>, this value can be used to retrieve the next page of results.
         This value is <code>null</code> when there are no more results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <a>ImageDetail</a> objects that contain data about the
         image.</p>")
    imageDetails: option<imageDetailList>,
  }
  @module("@aws-sdk/client-ecr-public") @new external new: request => t = "DescribeImagesCommand"
  let make = (~repositoryName, ~maxResults=?, ~nextToken=?, ~imageIds=?, ~registryId=?, ()) =>
    new({maxResults, nextToken, imageIds, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeImageTags = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of repository results returned by <code>DescribeImageTags</code> in
         paginated output. When this parameter is used, <code>DescribeImageTags</code> only returns
            <code>maxResults</code> results in a single page along with a <code>nextToken</code>
         response element. The remaining results of the initial request can be seen by sending
         another <code>DescribeImageTags</code> request with the returned <code>nextToken</code>
         value. This value can be between 1 and 1000. If this parameter
         is not used, then <code>DescribeImageTags</code> returns up to 100
         results and a <code>nextToken</code> value, if applicable. This option cannot be used when
         you specify images with <code>imageIds</code>.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
            <code>DescribeImageTags</code> request where <code>maxResults</code> was used and the
         results exceeded the value of that parameter. Pagination continues from the end of the
         previous results that returned the <code>nextToken</code> value. This value is
            <code>null</code> when there are no more results to return. This option cannot be used
         when you specify images with <code>imageIds</code>.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the repository that contains the image tag details to describe.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The AWS account ID associated with the public registry that contains the repository in
         which to describe images. If you do not specify a registry, the default public registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future <code>DescribeImageTags</code>
         request. When the results of a <code>DescribeImageTags</code> request exceed
            <code>maxResults</code>, this value can be used to retrieve the next page of results.
         This value is <code>null</code> when there are no more results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The image tag details for the images in the requested repository.</p>")
    imageTagDetails: option<imageTagDetailList>,
  }
  @module("@aws-sdk/client-ecr-public") @new external new: request => t = "DescribeImageTagsCommand"
  let make = (~repositoryName, ~maxResults=?, ~nextToken=?, ~registryId=?, ()) =>
    new({maxResults, nextToken, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchDeleteImage = {
  type t
  type request = {
    @ocaml.doc("<p>A list of image ID references that correspond to images to delete. The format of the
            <code>imageIds</code> reference is <code>imageTag=tag</code> or
            <code>imageDigest=digest</code>.</p>")
    imageIds: imageIdentifierList,
    @ocaml.doc("<p>The repository in a public registry that contains the image to delete.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The AWS account ID associated with the registry that contains the image to delete.
         If you do not specify a registry, the default public registry is assumed.</p>")
    registryId: option<registryId>,
  }
  type response = {
    @ocaml.doc("<p>Any failures associated with the call.</p>") failures: option<imageFailureList>,
    @ocaml.doc("<p>The image IDs of the deleted images.</p>") imageIds: option<imageIdentifierList>,
  }
  @module("@aws-sdk/client-ecr-public") @new external new: request => t = "BatchDeleteImageCommand"
  let make = (~imageIds, ~repositoryName, ~registryId=?, ()) =>
    new({imageIds, repositoryName, registryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeRegistries = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of repository results returned by <code>DescribeRegistries</code> in
         paginated output. When this parameter is used, <code>DescribeRegistries</code> only returns
            <code>maxResults</code> results in a single page along with a <code>nextToken</code>
         response element. The remaining results of the initial request can be seen by sending
         another <code>DescribeRegistries</code> request with the returned <code>nextToken</code>
         value. This value can be between 1 and 1000. If this parameter
         is not used, then <code>DescribeRegistries</code> returns up to 100
         results and a <code>nextToken</code> value, if applicable.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
            <code>DescribeRegistries</code> request where <code>maxResults</code> was used and the
         results exceeded the value of that parameter. Pagination continues from the end of the
         previous results that returned the <code>nextToken</code> value. This value is
            <code>null</code> when there are no more results to return.</p> 
         <note>
            <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p>
         </note>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future
            <code>DescribeRepositories</code> request. When the results of a
            <code>DescribeRepositories</code> request exceed <code>maxResults</code>, this value can
         be used to retrieve the next page of results. This value is <code>null</code> when there
         are no more results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An object containing the details for a public registry.</p>")
    registries: registryList,
  }
  @module("@aws-sdk/client-ecr-public") @new
  external new: request => t = "DescribeRegistriesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
