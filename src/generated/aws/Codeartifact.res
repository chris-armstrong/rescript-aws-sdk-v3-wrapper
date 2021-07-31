type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type validationExceptionReason = [@as("OTHER") #OTHER | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED | @as("ENCRYPTION_KEY_ERROR") #ENCRYPTION_KEY_ERROR | @as("CANNOT_PARSE") #CANNOT_PARSE]
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type string255 = string
type amazonawsString = string
type retryAfterSeconds = int;
type resourceType = [@as("asset") #asset | @as("package-version") #package_version | @as("package") #package | @as("repository") #repository | @as("domain") #domain]
type repositoryName = string
type policyRevision = string
type policyDocument = string
type paginationToken = string
type packageVersionStatus = [@as("Deleted") #Deleted | @as("Disposed") #Disposed | @as("Archived") #Archived | @as("Unlisted") #Unlisted | @as("Unfinished") #Unfinished | @as("Published") #Published]
type packageVersionSortType = [@as("PUBLISHED_TIME") #PUBLISHED_TIME]
type packageVersionRevision = string
type packageVersionErrorCode = [@as("SKIPPED") #SKIPPED | @as("NOT_FOUND") #NOT_FOUND | @as("NOT_ALLOWED") #NOT_ALLOWED | @as("MISMATCHED_STATUS") #MISMATCHED_STATUS | @as("MISMATCHED_REVISION") #MISMATCHED_REVISION | @as("ALREADY_EXISTS") #ALREADY_EXISTS]
type packageVersion = string
type packageNamespace = string
type packageName = string
type packageFormat = [@as("nuget") #nuget | @as("maven") #maven | @as("pypi") #pypi | @as("npm") #npm]
type longOptional = float;
type amazonawsLong = float;
type listRepositoriesMaxResults = int;
type listRepositoriesInDomainMaxResults = int;
type listPackagesMaxResults = int;
type listPackageVersionsMaxResults = int;
type listPackageVersionAssetsMaxResults = int;
type listDomainsMaxResults = int;
type amazonawsInteger = int;
type hashValue = string
type hashAlgorithm = [@as("SHA-512") #SHA_512 | @as("SHA-256") #SHA_256 | @as("SHA-1") #SHA_1 | @as("MD5") #MD5]
type externalConnectionStatus = [@as("Available") #Available]
type externalConnectionName = string
type errorMessage = string
type domainStatus = [@as("Deleted") #Deleted | @as("Active") #Active]
type domainName = string
type description = string
type booleanOptional = bool;
type authorizationTokenDurationSeconds = float;
type assetName = string
type asset = NodeJs.Buffer.t;
type arn = string
type accountId = string
type upstreamRepositoryInfo = {
@as("repositoryName") repositoryName: repositoryName
}
type upstreamRepository = {
@as("repositoryName") repositoryName: option<repositoryName>
}
type tagKeyList = array<tagKey>
type tag = {
@as("value") value: option<tagValue>,
@as("key") key: option<tagKey>
}
type successfulPackageVersionInfo = {
@as("status") status: packageVersionStatus,
@as("revision") revision: amazonawsString
}
type resourcePolicy = {
@as("document") document: policyDocument,
@as("revision") revision: policyRevision,
@as("resourceArn") resourceArn: arn
}
type repositorySummary = {
@as("description") description: description,
@as("arn") arn: arn,
@as("domainOwner") domainOwner: accountId,
@as("domainName") domainName: domainName,
@as("administratorAccount") administratorAccount: accountId,
@as("name") name: repositoryName
}
type repositoryExternalConnectionInfo = {
@as("status") status: externalConnectionStatus,
@as("packageFormat") packageFormat: packageFormat,
@as("externalConnectionName") externalConnectionName: externalConnectionName
}
type packageVersionSummary = {
@as("status") status: option<packageVersionStatus>,
@as("revision") revision: packageVersionRevision,
@as("version") version: option<packageVersion>
}
type packageVersionRevisionMap = Js.Dict.t< packageVersionRevision>
type packageVersionList = array<packageVersion>
type packageVersionError = {
@as("errorMessage") errorMessage: errorMessage,
@as("errorCode") errorCode: packageVersionErrorCode
}
type packageSummary = {
@as("package") package: packageName,
@as("namespace") namespace: packageNamespace,
@as("format") format: packageFormat
}
type packageDependency = {
@as("versionRequirement") versionRequirement: amazonawsString,
@as("dependencyType") dependencyType: amazonawsString,
@as("package") package: packageName,
@as("namespace") namespace: packageNamespace
}
type licenseInfo = {
@as("url") url: amazonawsString,
@as("name") name: amazonawsString
}
type domainSummary = {
@as("encryptionKey") encryptionKey: arn,
@as("createdTime") createdTime: amazonawsTimestamp,
@as("status") status: domainStatus,
@as("arn") arn: arn,
@as("owner") owner: accountId,
@as("name") name: domainName
}
type domainDescription = {
@as("s3BucketArn") s3BucketArn: arn,
@as("assetSizeBytes") assetSizeBytes: amazonawsLong,
@as("repositoryCount") repositoryCount: amazonawsInteger,
@as("encryptionKey") encryptionKey: arn,
@as("createdTime") createdTime: amazonawsTimestamp,
@as("status") status: domainStatus,
@as("arn") arn: arn,
@as("owner") owner: accountId,
@as("name") name: domainName
}
type assetHashes = Js.Dict.t< hashValue>
type upstreamRepositoryList = array<upstreamRepository>
type upstreamRepositoryInfoList = array<upstreamRepositoryInfo>
type tagList = array<tag>
type successfulPackageVersionInfoMap = Js.Dict.t< successfulPackageVersionInfo>
type repositorySummaryList = array<repositorySummary>
type repositoryExternalConnectionInfoList = array<repositoryExternalConnectionInfo>
type packageVersionSummaryList = array<packageVersionSummary>
type packageVersionErrorMap = Js.Dict.t< packageVersionError>
type packageSummaryList = array<packageSummary>
type packageDependencyList = array<packageDependency>
type licenseInfoList = array<licenseInfo>
type domainSummaryList = array<domainSummary>
type assetSummary = {
@as("hashes") hashes: assetHashes,
@as("size") size: longOptional,
@as("name") name: option<assetName>
}
type repositoryDescription = {
@as("externalConnections") externalConnections: repositoryExternalConnectionInfoList,
@as("upstreams") upstreams: upstreamRepositoryInfoList,
@as("description") description: description,
@as("arn") arn: arn,
@as("domainOwner") domainOwner: accountId,
@as("domainName") domainName: domainName,
@as("administratorAccount") administratorAccount: accountId,
@as("name") name: repositoryName
}
type packageVersionDescription = {
@as("status") status: packageVersionStatus,
@as("revision") revision: packageVersionRevision,
@as("licenses") licenses: licenseInfoList,
@as("publishedTime") publishedTime: amazonawsTimestamp,
@as("sourceCodeRepository") sourceCodeRepository: amazonawsString,
@as("homePage") homePage: amazonawsString,
@as("summary") summary: amazonawsString,
@as("version") version: packageVersion,
@as("displayName") displayName: string255,
@as("packageName") packageName: packageName,
@as("namespace") namespace: packageNamespace,
@as("format") format: packageFormat
}
type assetSummaryList = array<assetSummary>
type clientType;
@module("@aws-sdk/client-codeartifact") @new external createClient: unit => clientType = "CodeartifactClient";
module GetRepositoryEndpoint = {
  type t;
  type request = {
@as("format") format: option<packageFormat>,
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("repositoryEndpoint") repositoryEndpoint: amazonawsString
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "GetRepositoryEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPackageVersionReadme = {
  type t;
  type request = {
@as("packageVersion") packageVersion: option<packageVersion>,
@as("package") package: option<packageName>,
@as("namespace") namespace: packageNamespace,
@as("format") format: option<packageFormat>,
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("readme") readme: amazonawsString,
@as("versionRevision") versionRevision: packageVersionRevision,
@as("version") version: packageVersion,
@as("package") package: packageName,
@as("namespace") namespace: packageNamespace,
@as("format") format: packageFormat
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "GetPackageVersionReadmeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPackageVersionAsset = {
  type t;
  type request = {
@as("packageVersionRevision") packageVersionRevision: packageVersionRevision,
@as("asset") asset: option<assetName>,
@as("packageVersion") packageVersion: option<packageVersion>,
@as("package") package: option<packageName>,
@as("namespace") namespace: packageNamespace,
@as("format") format: option<packageFormat>,
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("packageVersionRevision") packageVersionRevision: packageVersionRevision,
@as("packageVersion") packageVersion: packageVersion,
@as("assetName") assetName: assetName,
@as("asset") asset: asset
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "GetPackageVersionAssetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAuthorizationToken = {
  type t;
  type request = {
@as("durationSeconds") durationSeconds: authorizationTokenDurationSeconds,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("expiration") expiration: amazonawsTimestamp,
@as("authorizationToken") authorizationToken: amazonawsString
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "GetAuthorizationTokenCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutRepositoryPermissionsPolicy = {
  type t;
  type request = {
@as("policyDocument") policyDocument: option<policyDocument>,
@as("policyRevision") policyRevision: policyRevision,
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("policy") policy: resourcePolicy
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "PutRepositoryPermissionsPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutDomainPermissionsPolicy = {
  type t;
  type request = {
@as("policyDocument") policyDocument: option<policyDocument>,
@as("policyRevision") policyRevision: policyRevision,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("policy") policy: resourcePolicy
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "PutDomainPermissionsPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRepositoryPermissionsPolicy = {
  type t;
  type request = {
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("policy") policy: resourcePolicy
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "GetRepositoryPermissionsPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDomainPermissionsPolicy = {
  type t;
  type request = {
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("policy") policy: resourcePolicy
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "GetDomainPermissionsPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDomain = {
  type t;
  type request = {
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("domain") domain: domainDescription
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "DescribeDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRepositoryPermissionsPolicy = {
  type t;
  type request = {
@as("policyRevision") policyRevision: policyRevision,
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("policy") policy: resourcePolicy
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "DeleteRepositoryPermissionsPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDomainPermissionsPolicy = {
  type t;
  type request = {
@as("policyRevision") policyRevision: policyRevision,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("policy") policy: resourcePolicy
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "DeleteDomainPermissionsPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDomain = {
  type t;
  type request = {
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("domain") domain: domainDescription
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "DeleteDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePackageVersionsStatus = {
  type t;
  type request = {
@as("targetStatus") targetStatus: option<packageVersionStatus>,
@as("expectedStatus") expectedStatus: packageVersionStatus,
@as("versionRevisions") versionRevisions: packageVersionRevisionMap,
@as("versions") versions: option<packageVersionList>,
@as("package") package: option<packageName>,
@as("namespace") namespace: packageNamespace,
@as("format") format: option<packageFormat>,
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("failedVersions") failedVersions: packageVersionErrorMap,
@as("successfulVersions") successfulVersions: successfulPackageVersionInfoMap
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "UpdatePackageVersionsStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagList>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "TagResourceCommand";
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
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRepositoriesInDomain = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: listRepositoriesInDomainMaxResults,
@as("repositoryPrefix") repositoryPrefix: repositoryName,
@as("administratorAccount") administratorAccount: accountId,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("repositories") repositories: repositorySummaryList
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "ListRepositoriesInDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRepositories = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: listRepositoriesMaxResults,
@as("repositoryPrefix") repositoryPrefix: repositoryName
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("repositories") repositories: repositorySummaryList
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "ListRepositoriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPackages = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: listPackagesMaxResults,
@as("packagePrefix") packagePrefix: packageName,
@as("namespace") namespace: packageNamespace,
@as("format") format: packageFormat,
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("packages") packages: packageSummaryList
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "ListPackagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPackageVersions = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: listPackageVersionsMaxResults,
@as("sortBy") sortBy: packageVersionSortType,
@as("status") status: packageVersionStatus,
@as("package") package: option<packageName>,
@as("namespace") namespace: packageNamespace,
@as("format") format: option<packageFormat>,
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("versions") versions: packageVersionSummaryList,
@as("package") package: packageName,
@as("namespace") namespace: packageNamespace,
@as("format") format: packageFormat,
@as("defaultDisplayVersion") defaultDisplayVersion: packageVersion
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "ListPackageVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPackageVersionDependencies = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("packageVersion") packageVersion: option<packageVersion>,
@as("package") package: option<packageName>,
@as("namespace") namespace: packageNamespace,
@as("format") format: option<packageFormat>,
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("dependencies") dependencies: packageDependencyList,
@as("nextToken") nextToken: paginationToken,
@as("versionRevision") versionRevision: packageVersionRevision,
@as("version") version: packageVersion,
@as("package") package: packageName,
@as("namespace") namespace: packageNamespace,
@as("format") format: packageFormat
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "ListPackageVersionDependenciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDomains = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: listDomainsMaxResults
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("domains") domains: domainSummaryList
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "ListDomainsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisposePackageVersions = {
  type t;
  type request = {
@as("expectedStatus") expectedStatus: packageVersionStatus,
@as("versionRevisions") versionRevisions: packageVersionRevisionMap,
@as("versions") versions: option<packageVersionList>,
@as("package") package: option<packageName>,
@as("namespace") namespace: packageNamespace,
@as("format") format: option<packageFormat>,
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("failedVersions") failedVersions: packageVersionErrorMap,
@as("successfulVersions") successfulVersions: successfulPackageVersionInfoMap
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "DisposePackageVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePackageVersions = {
  type t;
  type request = {
@as("expectedStatus") expectedStatus: packageVersionStatus,
@as("versions") versions: option<packageVersionList>,
@as("package") package: option<packageName>,
@as("namespace") namespace: packageNamespace,
@as("format") format: option<packageFormat>,
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("failedVersions") failedVersions: packageVersionErrorMap,
@as("successfulVersions") successfulVersions: successfulPackageVersionInfoMap
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "DeletePackageVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDomain = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("encryptionKey") encryptionKey: arn,
@as("domain") domain: option<domainName>
}
  type response = {
@as("domain") domain: domainDescription
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "CreateDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CopyPackageVersions = {
  type t;
  type request = {
@as("includeFromUpstream") includeFromUpstream: booleanOptional,
@as("allowOverwrite") allowOverwrite: booleanOptional,
@as("versionRevisions") versionRevisions: packageVersionRevisionMap,
@as("versions") versions: packageVersionList,
@as("package") package: option<packageName>,
@as("namespace") namespace: packageNamespace,
@as("format") format: option<packageFormat>,
@as("destinationRepository") destinationRepository: option<repositoryName>,
@as("sourceRepository") sourceRepository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("failedVersions") failedVersions: packageVersionErrorMap,
@as("successfulVersions") successfulVersions: successfulPackageVersionInfoMap
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "CopyPackageVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRepository = {
  type t;
  type request = {
@as("upstreams") upstreams: upstreamRepositoryList,
@as("description") description: description,
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("repository") repository: repositoryDescription
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "UpdateRepositoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPackageVersionAssets = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: listPackageVersionAssetsMaxResults,
@as("packageVersion") packageVersion: option<packageVersion>,
@as("package") package: option<packageName>,
@as("namespace") namespace: packageNamespace,
@as("format") format: option<packageFormat>,
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("assets") assets: assetSummaryList,
@as("nextToken") nextToken: paginationToken,
@as("versionRevision") versionRevision: packageVersionRevision,
@as("version") version: packageVersion,
@as("package") package: packageName,
@as("namespace") namespace: packageNamespace,
@as("format") format: packageFormat
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "ListPackageVersionAssetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateExternalConnection = {
  type t;
  type request = {
@as("externalConnection") externalConnection: option<externalConnectionName>,
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("repository") repository: repositoryDescription
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "DisassociateExternalConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRepository = {
  type t;
  type request = {
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("repository") repository: repositoryDescription
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "DescribeRepositoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePackageVersion = {
  type t;
  type request = {
@as("packageVersion") packageVersion: option<packageVersion>,
@as("package") package: option<packageName>,
@as("namespace") namespace: packageNamespace,
@as("format") format: option<packageFormat>,
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("packageVersion") packageVersion: option<packageVersionDescription>
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "DescribePackageVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRepository = {
  type t;
  type request = {
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("repository") repository: repositoryDescription
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "DeleteRepositoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRepository = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("upstreams") upstreams: upstreamRepositoryList,
@as("description") description: description,
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("repository") repository: repositoryDescription
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "CreateRepositoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateExternalConnection = {
  type t;
  type request = {
@as("externalConnection") externalConnection: option<externalConnectionName>,
@as("repository") repository: option<repositoryName>,
@as("domainOwner") domainOwner: accountId,
@as("domain") domain: option<domainName>
}
  type response = {
@as("repository") repository: repositoryDescription
}
  @module("@aws-sdk/client-codeartifact") @new external new_: (request) => t = "AssociateExternalConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
