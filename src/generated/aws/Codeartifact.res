type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-codeartifact") @new
external createClient: unit => awsServiceClient = "CodeartifactClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type validationExceptionReason = [
  | @as("OTHER") #OTHER
  | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION
  | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED
  | @as("ENCRYPTION_KEY_ERROR") #ENCRYPTION_KEY_ERROR
  | @as("CANNOT_PARSE") #CANNOT_PARSE
]
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type string255 = string
type string_ = string
type retryAfterSeconds = int
type resourceType = [
  | @as("asset") #Asset
  | @as("package-version") #Package_Version
  | @as("package") #Package
  | @as("repository") #Repository
  | @as("domain") #Domain
]
type repositoryName = string
type policyRevision = string
type policyDocument = string
type paginationToken = string
type packageVersionStatus = [
  | @as("Deleted") #Deleted
  | @as("Disposed") #Disposed
  | @as("Archived") #Archived
  | @as("Unlisted") #Unlisted
  | @as("Unfinished") #Unfinished
  | @as("Published") #Published
]
type packageVersionSortType = [@as("PUBLISHED_TIME") #PUBLISHED_TIME]
type packageVersionRevision = string
type packageVersionErrorCode = [
  | @as("SKIPPED") #SKIPPED
  | @as("NOT_FOUND") #NOT_FOUND
  | @as("NOT_ALLOWED") #NOT_ALLOWED
  | @as("MISMATCHED_STATUS") #MISMATCHED_STATUS
  | @as("MISMATCHED_REVISION") #MISMATCHED_REVISION
  | @as("ALREADY_EXISTS") #ALREADY_EXISTS
]
type packageVersion = string
type packageNamespace = string
type packageName = string
type packageFormat = [
  | @as("nuget") #Nuget
  | @as("maven") #Maven
  | @as("pypi") #Pypi
  | @as("npm") #Npm
]
type longOptional = float
type long = float
type listRepositoriesMaxResults = int
type listRepositoriesInDomainMaxResults = int
type listPackagesMaxResults = int
type listPackageVersionsMaxResults = int
type listPackageVersionAssetsMaxResults = int
type listDomainsMaxResults = int
type integer_ = int
type hashValue = string
type hashAlgorithm = [
  | @as("SHA-512") #SHA_512
  | @as("SHA-256") #SHA_256
  | @as("SHA-1") #SHA_1
  | @as("MD5") #MD5
]
type externalConnectionStatus = [@as("Available") #Available]
type externalConnectionName = string
type errorMessage = string
type domainStatus = [@as("Deleted") #Deleted | @as("Active") #Active]
type domainName = string
type description = string
type booleanOptional = bool
type authorizationTokenDurationSeconds = float
type assetName = string
type asset = NodeJs.Buffer.t
type arn = string
type accountId = string
type upstreamRepositoryInfo = {repositoryName: option<repositoryName>}
type upstreamRepository = {repositoryName: repositoryName}
type tagKeyList = array<tagKey>
type tag = {
  value: tagValue,
  key: tagKey,
}
type successfulPackageVersionInfo = {
  status: option<packageVersionStatus>,
  revision: option<string_>,
}
type resourcePolicy = {
  document: option<policyDocument>,
  revision: option<policyRevision>,
  resourceArn: option<arn>,
}
type repositorySummary = {
  description: option<description>,
  arn: option<arn>,
  domainOwner: option<accountId>,
  domainName: option<domainName>,
  administratorAccount: option<accountId>,
  name: option<repositoryName>,
}
type repositoryExternalConnectionInfo = {
  status: option<externalConnectionStatus>,
  packageFormat: option<packageFormat>,
  externalConnectionName: option<externalConnectionName>,
}
type packageVersionSummary = {
  status: packageVersionStatus,
  revision: option<packageVersionRevision>,
  version: packageVersion,
}
type packageVersionRevisionMap = Js.Dict.t<packageVersionRevision>
type packageVersionList = array<packageVersion>
type packageVersionError = {
  errorMessage: option<errorMessage>,
  errorCode: option<packageVersionErrorCode>,
}
type packageSummary = {
  package: option<packageName>,
  namespace: option<packageNamespace>,
  format: option<packageFormat>,
}
type packageDependency = {
  versionRequirement: option<string_>,
  dependencyType: option<string_>,
  package: option<packageName>,
  namespace: option<packageNamespace>,
}
type licenseInfo = {
  url: option<string_>,
  name: option<string_>,
}
type domainSummary = {
  encryptionKey: option<arn>,
  createdTime: option<timestamp_>,
  status: option<domainStatus>,
  arn: option<arn>,
  owner: option<accountId>,
  name: option<domainName>,
}
type domainDescription = {
  s3BucketArn: option<arn>,
  assetSizeBytes: option<long>,
  repositoryCount: option<integer_>,
  encryptionKey: option<arn>,
  createdTime: option<timestamp_>,
  status: option<domainStatus>,
  arn: option<arn>,
  owner: option<accountId>,
  name: option<domainName>,
}
type assetHashes = Js.Dict.t<hashValue>
type upstreamRepositoryList = array<upstreamRepository>
type upstreamRepositoryInfoList = array<upstreamRepositoryInfo>
type tagList_ = array<tag>
type successfulPackageVersionInfoMap = Js.Dict.t<successfulPackageVersionInfo>
type repositorySummaryList = array<repositorySummary>
type repositoryExternalConnectionInfoList = array<repositoryExternalConnectionInfo>
type packageVersionSummaryList = array<packageVersionSummary>
type packageVersionErrorMap = Js.Dict.t<packageVersionError>
type packageSummaryList = array<packageSummary>
type packageDependencyList = array<packageDependency>
type licenseInfoList = array<licenseInfo>
type domainSummaryList = array<domainSummary>
type assetSummary = {
  hashes: option<assetHashes>,
  size: option<longOptional>,
  name: assetName,
}
type repositoryDescription = {
  externalConnections: option<repositoryExternalConnectionInfoList>,
  upstreams: option<upstreamRepositoryInfoList>,
  description: option<description>,
  arn: option<arn>,
  domainOwner: option<accountId>,
  domainName: option<domainName>,
  administratorAccount: option<accountId>,
  name: option<repositoryName>,
}
type packageVersionDescription = {
  status: option<packageVersionStatus>,
  revision: option<packageVersionRevision>,
  licenses: option<licenseInfoList>,
  publishedTime: option<timestamp_>,
  sourceCodeRepository: option<string_>,
  homePage: option<string_>,
  summary: option<string_>,
  version: option<packageVersion>,
  displayName: option<string255>,
  packageName: option<packageName>,
  namespace: option<packageNamespace>,
  format: option<packageFormat>,
}
type assetSummaryList = array<assetSummary>

module GetRepositoryEndpoint = {
  type t
  type request = {
    format: packageFormat,
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {repositoryEndpoint: option<string_>}
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "GetRepositoryEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPackageVersionReadme = {
  type t
  type request = {
    packageVersion: packageVersion,
    package: packageName,
    namespace: option<packageNamespace>,
    format: packageFormat,
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {
    readme: option<string_>,
    versionRevision: option<packageVersionRevision>,
    version: option<packageVersion>,
    package: option<packageName>,
    namespace: option<packageNamespace>,
    format: option<packageFormat>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "GetPackageVersionReadmeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPackageVersionAsset = {
  type t
  type request = {
    packageVersionRevision: option<packageVersionRevision>,
    asset: assetName,
    packageVersion: packageVersion,
    package: packageName,
    namespace: option<packageNamespace>,
    format: packageFormat,
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {
    packageVersionRevision: option<packageVersionRevision>,
    packageVersion: option<packageVersion>,
    assetName: option<assetName>,
    asset: option<asset>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "GetPackageVersionAssetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAuthorizationToken = {
  type t
  type request = {
    durationSeconds: option<authorizationTokenDurationSeconds>,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {
    expiration: option<timestamp_>,
    authorizationToken: option<string_>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "GetAuthorizationTokenCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeyList,
    resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-codeartifact") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutRepositoryPermissionsPolicy = {
  type t
  type request = {
    policyDocument: policyDocument,
    policyRevision: option<policyRevision>,
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {policy: option<resourcePolicy>}
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "PutRepositoryPermissionsPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutDomainPermissionsPolicy = {
  type t
  type request = {
    policyDocument: policyDocument,
    policyRevision: option<policyRevision>,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {policy: option<resourcePolicy>}
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "PutDomainPermissionsPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRepositoryPermissionsPolicy = {
  type t
  type request = {
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {policy: option<resourcePolicy>}
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "GetRepositoryPermissionsPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDomainPermissionsPolicy = {
  type t
  type request = {
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {policy: option<resourcePolicy>}
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "GetDomainPermissionsPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDomain = {
  type t
  type request = {
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {domain: option<domainDescription>}
  @module("@aws-sdk/client-codeartifact") @new external new_: request => t = "DescribeDomainCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRepositoryPermissionsPolicy = {
  type t
  type request = {
    policyRevision: option<policyRevision>,
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {policy: option<resourcePolicy>}
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "DeleteRepositoryPermissionsPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDomainPermissionsPolicy = {
  type t
  type request = {
    policyRevision: option<policyRevision>,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {policy: option<resourcePolicy>}
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "DeleteDomainPermissionsPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDomain = {
  type t
  type request = {
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {domain: option<domainDescription>}
  @module("@aws-sdk/client-codeartifact") @new external new_: request => t = "DeleteDomainCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePackageVersionsStatus = {
  type t
  type request = {
    targetStatus: packageVersionStatus,
    expectedStatus: option<packageVersionStatus>,
    versionRevisions: option<packageVersionRevisionMap>,
    versions: packageVersionList,
    package: packageName,
    namespace: option<packageNamespace>,
    format: packageFormat,
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {
    failedVersions: option<packageVersionErrorMap>,
    successfulVersions: option<successfulPackageVersionInfoMap>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "UpdatePackageVersionsStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagList_,
    resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-codeartifact") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {resourceArn: arn}
  type response = {tags: option<tagList_>}
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRepositoriesInDomain = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<listRepositoriesInDomainMaxResults>,
    repositoryPrefix: option<repositoryName>,
    administratorAccount: option<accountId>,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {
    nextToken: option<paginationToken>,
    repositories: option<repositorySummaryList>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "ListRepositoriesInDomainCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRepositories = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<listRepositoriesMaxResults>,
    repositoryPrefix: option<repositoryName>,
  }
  type response = {
    nextToken: option<paginationToken>,
    repositories: option<repositorySummaryList>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "ListRepositoriesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPackages = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<listPackagesMaxResults>,
    packagePrefix: option<packageName>,
    namespace: option<packageNamespace>,
    format: option<packageFormat>,
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {
    nextToken: option<paginationToken>,
    packages: option<packageSummaryList>,
  }
  @module("@aws-sdk/client-codeartifact") @new external new_: request => t = "ListPackagesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPackageVersions = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<listPackageVersionsMaxResults>,
    sortBy: option<packageVersionSortType>,
    status: option<packageVersionStatus>,
    package: packageName,
    namespace: option<packageNamespace>,
    format: packageFormat,
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {
    nextToken: option<paginationToken>,
    versions: option<packageVersionSummaryList>,
    package: option<packageName>,
    namespace: option<packageNamespace>,
    format: option<packageFormat>,
    defaultDisplayVersion: option<packageVersion>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "ListPackageVersionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPackageVersionDependencies = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    packageVersion: packageVersion,
    package: packageName,
    namespace: option<packageNamespace>,
    format: packageFormat,
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {
    dependencies: option<packageDependencyList>,
    nextToken: option<paginationToken>,
    versionRevision: option<packageVersionRevision>,
    version: option<packageVersion>,
    package: option<packageName>,
    namespace: option<packageNamespace>,
    format: option<packageFormat>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "ListPackageVersionDependenciesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDomains = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<listDomainsMaxResults>,
  }
  type response = {
    nextToken: option<paginationToken>,
    domains: option<domainSummaryList>,
  }
  @module("@aws-sdk/client-codeartifact") @new external new_: request => t = "ListDomainsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisposePackageVersions = {
  type t
  type request = {
    expectedStatus: option<packageVersionStatus>,
    versionRevisions: option<packageVersionRevisionMap>,
    versions: packageVersionList,
    package: packageName,
    namespace: option<packageNamespace>,
    format: packageFormat,
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {
    failedVersions: option<packageVersionErrorMap>,
    successfulVersions: option<successfulPackageVersionInfoMap>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "DisposePackageVersionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePackageVersions = {
  type t
  type request = {
    expectedStatus: option<packageVersionStatus>,
    versions: packageVersionList,
    package: packageName,
    namespace: option<packageNamespace>,
    format: packageFormat,
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {
    failedVersions: option<packageVersionErrorMap>,
    successfulVersions: option<successfulPackageVersionInfoMap>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "DeletePackageVersionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDomain = {
  type t
  type request = {
    tags: option<tagList_>,
    encryptionKey: option<arn>,
    domain: domainName,
  }
  type response = {domain: option<domainDescription>}
  @module("@aws-sdk/client-codeartifact") @new external new_: request => t = "CreateDomainCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyPackageVersions = {
  type t
  type request = {
    includeFromUpstream: option<booleanOptional>,
    allowOverwrite: option<booleanOptional>,
    versionRevisions: option<packageVersionRevisionMap>,
    versions: option<packageVersionList>,
    package: packageName,
    namespace: option<packageNamespace>,
    format: packageFormat,
    destinationRepository: repositoryName,
    sourceRepository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {
    failedVersions: option<packageVersionErrorMap>,
    successfulVersions: option<successfulPackageVersionInfoMap>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "CopyPackageVersionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRepository = {
  type t
  type request = {
    upstreams: option<upstreamRepositoryList>,
    description: option<description>,
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {repository: option<repositoryDescription>}
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "UpdateRepositoryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPackageVersionAssets = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<listPackageVersionAssetsMaxResults>,
    packageVersion: packageVersion,
    package: packageName,
    namespace: option<packageNamespace>,
    format: packageFormat,
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {
    assets: option<assetSummaryList>,
    nextToken: option<paginationToken>,
    versionRevision: option<packageVersionRevision>,
    version: option<packageVersion>,
    package: option<packageName>,
    namespace: option<packageNamespace>,
    format: option<packageFormat>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "ListPackageVersionAssetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateExternalConnection = {
  type t
  type request = {
    externalConnection: externalConnectionName,
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {repository: option<repositoryDescription>}
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "DisassociateExternalConnectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRepository = {
  type t
  type request = {
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {repository: option<repositoryDescription>}
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "DescribeRepositoryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePackageVersion = {
  type t
  type request = {
    packageVersion: packageVersion,
    package: packageName,
    namespace: option<packageNamespace>,
    format: packageFormat,
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {packageVersion: packageVersionDescription}
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "DescribePackageVersionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRepository = {
  type t
  type request = {
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {repository: option<repositoryDescription>}
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "DeleteRepositoryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRepository = {
  type t
  type request = {
    tags: option<tagList_>,
    upstreams: option<upstreamRepositoryList>,
    description: option<description>,
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {repository: option<repositoryDescription>}
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "CreateRepositoryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateExternalConnection = {
  type t
  type request = {
    externalConnection: externalConnectionName,
    repository: repositoryName,
    domainOwner: option<accountId>,
    domain: domainName,
  }
  type response = {repository: option<repositoryDescription>}
  @module("@aws-sdk/client-codeartifact") @new
  external new_: request => t = "AssociateExternalConnectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
