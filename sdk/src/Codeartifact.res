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
@ocaml.doc("<p>
        Information about an upstream repository.
      </p>")
type upstreamRepositoryInfo = {
  @ocaml.doc("<p> The name of an upstream repository. </p>") repositoryName: option<repositoryName>,
}
@ocaml.doc("<p>
       Information about an upstream repository. A list of <code>UpstreamRepository</code> objects is an input parameter to
       <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_CreateRepository.html\">CreateRepository</a>
       and <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdateRepository.html\">UpdateRepository</a>.
     </p>")
type upstreamRepository = {
  @ocaml.doc("<p> The name of an upstream repository. </p>") repositoryName: repositoryName,
}
type tagKeyList = array<tagKey>
@ocaml.doc(
  "<p>A tag is a key-value pair that can be used to manage, search for, or filter resources in AWS CodeArtifact.</p>"
)
type tag = {
  @ocaml.doc("<p>The tag value.</p>") value: tagValue,
  @ocaml.doc("<p>The tag key.</p>") key: tagKey,
}
@ocaml.doc("<p>
      Contains the revision and status of a package version.
    </p>")
type successfulPackageVersionInfo = {
  @ocaml.doc("<p>
      The status of a package version. Valid statuses are:
    </p>
         <ul>
            <li>
               <p>
                  <code>Published</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Unfinished</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Unlisted</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Archived</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Disposed</code>
               </p>
            </li>
         </ul>")
  status: option<packageVersionStatus>,
  @ocaml.doc("<p>
      The revision of a package version.
    </p>")
  revision: option<string_>,
}
@ocaml.doc("<p>
        An AWS CodeArtifact resource policy that contains a resource ARN, document details, and a revision.
      </p>")
type resourcePolicy = {
  @ocaml.doc("<p>
      The resource policy formatted in JSON.
    </p>")
  document: option<policyDocument>,
  @ocaml.doc("<p>
        The current revision of the resource policy.
      </p>")
  revision: option<policyRevision>,
  @ocaml.doc("<p>
        The ARN of the resource associated with the resource policy
      </p>")
  resourceArn: option<arn>,
}
@ocaml.doc("<p> Details about a repository, including its Amazon Resource Name (ARN), description, and
      domain information. The <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListRepositories.html\">ListRepositories</a> operation returns a list of
        <code>RepositorySummary</code> objects. </p>")
type repositorySummary = {
  @ocaml.doc("<p>
      The description of the repository.
    </p>")
  description: option<description>,
  @ocaml.doc("<p> The ARN of the repository. </p>") arn: option<arn>,
  @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
  domainOwner: option<accountId>,
  @ocaml.doc("<p>
         The name of the domain that contains the repository.
      </p>")
  domainName: option<domainName>,
  @ocaml.doc("<p>
         The AWS account ID that manages the repository.
      </p>")
  administratorAccount: option<accountId>,
  @ocaml.doc("<p>
         The name of the repository.
      </p>")
  name: option<repositoryName>,
}
@ocaml.doc("<p>
        Contains information about the external connection of a repository.
      </p>")
type repositoryExternalConnectionInfo = {
  @ocaml.doc("<p>
        The status of the external connection of a repository. There is one valid value, <code>Available</code>.
      </p>")
  status: option<externalConnectionStatus>,
  @ocaml.doc("<p>
        The package format associated with a repository's external connection. The valid package formats are:
      </p>
         <ul>
            <li>
               <p>
                  <code>npm</code>: A Node Package Manager (npm) package.
        </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>: A Python Package Index (PyPI) package.
        </p>
            </li>
            <li>
               <p>
                  <code>maven</code>: A Maven package that contains compiled code in a distributable format, such as a JAR file.
        </p>
            </li>
         </ul>")
  packageFormat: option<packageFormat>,
  @ocaml.doc("<p> The name of the external connection associated with a repository. </p>")
  externalConnectionName: option<externalConnectionName>,
}
@ocaml.doc("<p>
       Details about a package version, including its status, version, and revision. The 
       <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html\">ListPackageVersions</a> 
       operation returns a list of <code>PackageVersionSummary</code> objects.
     </p>")
type packageVersionSummary = {
  @ocaml.doc("<p>
      A string that contains the status of the package version. It can be one of the following:
    </p>
         <ul>
            <li>
               <p>
                  <code>Published</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Unfinished</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Unlisted</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Archived</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Disposed</code>
               </p>
            </li>
         </ul>")
  status: packageVersionStatus,
  @ocaml.doc("<p>
      The revision associated with a package version.
    </p>")
  revision: option<packageVersionRevision>,
  @ocaml.doc("<p>
        Information about a package version.
       </p>")
  version: packageVersion,
}
type packageVersionRevisionMap = Js.Dict.t<packageVersionRevision>
type packageVersionList = array<packageVersion>
@ocaml.doc("<p>
       An error associated with package.
   </p>")
type packageVersionError = {
  @ocaml.doc("<p>
         The error message associated with the error.
     </p>")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p> The error code associated with the error. Valid error codes are: </p>
         <ul>
            <li>
               <p>
                  <code>ALREADY_EXISTS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>MISMATCHED_REVISION</code>
               </p>
            </li>
            <li>
               <p>
                  <code>MISMATCHED_STATUS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NOT_ALLOWED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NOT_FOUND</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SKIPPED</code>
               </p>
            </li>
         </ul>")
  errorCode: option<packageVersionErrorCode>,
}
@ocaml.doc("<p>
      Details about a package, including its format, namespace, and name. The 
      <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackages.html\">ListPackages</a> 
      operation returns a list of <code>PackageSummary</code> objects.
    </p>")
type packageSummary = {
  @ocaml.doc("<p>
      The name of the package.
    </p>")
  package: option<packageName>,
  @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
  namespace: option<packageNamespace>,
  @ocaml.doc("<p>
      The format of the package. Valid values are:
    </p>
         <ul>
            <li>
               <p>
                  <code>npm</code>
               </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>
               </p>
            </li>
            <li>
               <p>
                  <code>maven</code>
               </p>
            </li>
         </ul>")
  format: option<packageFormat>,
}
@ocaml.doc("<p>
        Details about a package dependency.
      </p>")
type packageDependency = {
  @ocaml.doc("<p>
        The required version, or version range, of the package that this package depends on. The version format
        is specific to the package type. For example, the following are possible valid required versions: <code>1.2.3</code>,
        <code>^2.3.4</code>, or <code>4.x</code>.
      </p>")
  versionRequirement: option<string_>,
  @ocaml.doc("<p> The type of a package dependency. The possible values depend on the package type.
      Example types are <code>compile</code>, <code>runtime</code>, and <code>test</code> for Maven
      packages, and <code>dev</code>, <code>prod</code>, and <code>optional</code> for npm packages. </p>")
  dependencyType: option<string_>,
  @ocaml.doc("<p>
        The name of the package that this package depends on.
       </p>")
  package: option<packageName>,
  @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
  namespace: option<packageNamespace>,
}
@ocaml.doc("<p>
        Details of the license data.
      </p>")
type licenseInfo = {
  @ocaml.doc("<p>
        The URL for license data.
      </p>")
  url: option<string_>,
  @ocaml.doc("<p>
        Name of the license.
      </p>")
  name: option<string_>,
}
@ocaml.doc("<p> Information about a domain, including its name, Amazon Resource Name (ARN), and status.
      The <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListDomains.html\">ListDomains</a> operation returns a list of <code>DomainSummary</code>
      objects. </p>")
type domainSummary = {
  @ocaml.doc("<p>
      The key used to encrypt the domain.
    </p>")
  encryptionKey: option<arn>,
  @ocaml.doc("<p>
      A timestamp that contains the date and time the domain was created.
    </p>")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>
      A string that contains the status of the domain. The valid values are:      
    </p>
         <ul>
            <li>
               <p>
                  <code>Active</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Deleted</code>
               </p>
            </li>
         </ul>")
  status: option<domainStatus>,
  @ocaml.doc("<p>
      The ARN of the domain.
    </p>")
  arn: option<arn>,
  @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
  owner: option<accountId>,
  @ocaml.doc("<p>
      The name of the domain.
    </p>")
  name: option<domainName>,
}
@ocaml.doc("<p>
       Information about a domain. A domain is a container for repositories. When you create a domain, it is empty until you 
       add one or more repositories.
      </p>")
type domainDescription = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the Amazon S3 bucket that is used to store package assets in the domain.</p>"
  )
  s3BucketArn: option<arn>,
  @ocaml.doc("<p>
      The total size of all assets in the domain.
    </p>")
  assetSizeBytes: option<long>,
  @ocaml.doc("<p>
      The number of repositories in the domain.
    </p>")
  repositoryCount: option<integer_>,
  @ocaml.doc(
    "<p> The ARN of an AWS Key Management Service (AWS KMS) key associated with a domain. </p>"
  )
  encryptionKey: option<arn>,
  @ocaml.doc("<p>
      A timestamp that represents the date and time the domain was created.
    </p>")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p> The current status of a domain. The valid values are </p>
         <ul>
            <li>
               <p>
                  <code>Active</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Deleted</code>
               </p>
            </li>
         </ul>")
  status: option<domainStatus>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the domain. </p>") arn: option<arn>,
  @ocaml.doc("<p> The AWS account ID that owns the domain. </p>") owner: option<accountId>,
  @ocaml.doc("<p>
         The name of the domain.
       </p>")
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
@ocaml.doc("<p>
        Contains details about a package version asset.
       </p>")
type assetSummary = {
  @ocaml.doc("<p>
      The hashes of the asset.
    </p>")
  hashes: option<assetHashes>,
  @ocaml.doc("<p>
      The size of the asset.
    </p>")
  size: option<longOptional>,
  @ocaml.doc("<p>
         The name of the asset.
       </p>")
  name: assetName,
}
@ocaml.doc("<p> The details of a repository stored in AWS CodeArtifact. A CodeArtifact repository contains a set of
      package versions, each of which maps to a set of assets. Repositories are polyglot—a single
      repository can contain packages of any supported type. Each repository exposes endpoints for
      fetching and publishing packages using tools like the <code>npm</code> CLI, the Maven CLI
        (<code>mvn</code>), and <code>pip</code>. You can create up to 100 repositories per AWS
      account. </p>")
type repositoryDescription = {
  @ocaml.doc("<p>
      An array of external connections associated with the repository.
    </p>")
  externalConnections: option<repositoryExternalConnectionInfoList>,
  @ocaml.doc("<p> A list of upstream repositories to associate with the repository. The order of the upstream repositories 
        in the list determines their priority order when AWS CodeArtifact looks for a requested package version. For more 
        information, see <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html\">Working with upstream repositories</a>. </p>")
  upstreams: option<upstreamRepositoryInfoList>,
  @ocaml.doc("<p>
      A text description of the repository.
    </p>")
  description: option<description>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the repository. </p>") arn: option<arn>,
  @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain that contains the repository. It does not include 
        dashes or spaces.
      </p>")
  domainOwner: option<accountId>,
  @ocaml.doc("<p>
        The name of the domain that contains the repository.
       </p>")
  domainName: option<domainName>,
  @ocaml.doc("<p> The 12-digit account number of the AWS account that manages the repository. </p>")
  administratorAccount: option<accountId>,
  @ocaml.doc("<p>
        The name of the repository.
       </p>")
  name: option<repositoryName>,
}
@ocaml.doc("<p>
      Details about a package version.
    </p>")
type packageVersionDescription = {
  @ocaml.doc("<p>
      A string that contains the status of the package version. It can be one of the following:
    </p>
         <ul>
            <li>
               <p>
                  <code>Published</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Unfinished</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Unlisted</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Archived</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Disposed</code>
               </p>
            </li>
         </ul>")
  status: option<packageVersionStatus>,
  @ocaml.doc("<p>
      The revision of the package version.
    </p>")
  revision: option<packageVersionRevision>,
  @ocaml.doc("<p>
      Information about licenses associated with the package version.
    </p>")
  licenses: option<licenseInfoList>,
  @ocaml.doc("<p>
      A timestamp that contains the date and time the package version was published.
    </p>")
  publishedTime: option<timestamp_>,
  @ocaml.doc("<p>
      The repository for the source code in the package version, or the source code used to build it.
    </p>")
  sourceCodeRepository: option<string_>,
  @ocaml.doc("<p>
      The homepage associated with the package. 
    </p>")
  homePage: option<string_>,
  @ocaml.doc("<p>
      A summary of the package version. The summary is extracted from the package. The information in and 
      detail level of the summary depends on the package version's format.
    </p>")
  summary: option<string_>,
  @ocaml.doc("<p>
      The version of the package.
    </p>")
  version: option<packageVersion>,
  @ocaml.doc("<p>
      The name of the package that is displayed. The <code>displayName</code> varies depending 
      on the package version's format. For example, if an npm package is named <code>ui</code>, 
      is in the namespace <code>vue</code>, and has the format <code>npm</code>, then 
      the <code>displayName</code> is <code>@vue/ui</code>.
    </p>")
  displayName: option<string255>,
  @ocaml.doc("<p>
      The name of the requested package.
    </p>")
  packageName: option<packageName>,
  @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
  namespace: option<packageNamespace>,
  @ocaml.doc("<p>
      The format of the package version. The valid package formats are:
    </p>
         <ul>
            <li>
               <p>
                  <code>npm</code>: A Node Package Manager (npm) package.
        </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>: A Python Package Index (PyPI) package.
        </p>
            </li>
            <li>
               <p>
                  <code>maven</code>: A Maven package that contains compiled code in a distributable format, such as a JAR file.
        </p>
            </li>
         </ul>")
  format: option<packageFormat>,
}
type assetSummaryList = array<assetSummary>
@ocaml.doc("<p> AWS CodeArtifact is a fully managed artifact repository compatible with language-native
      package managers and build tools such as npm, Apache Maven, and pip. You can use CodeArtifact to
      share packages with development teams and pull packages. Packages can be pulled from both
      public and CodeArtifact repositories. You can also create an upstream relationship between a CodeArtifact
      repository and another repository, which effectively merges their contents from the point of
      view of a package manager client. </p>
    
         <p>
            <b>AWS CodeArtifact Components</b>
         </p>
         <p>Use the information in this guide to help you work with the following CodeArtifact components:</p>
    
         <ul>
            <li>
               <p>
                  <b>Repository</b>: A CodeArtifact repository contains a set of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html#welcome-concepts-package-version\">package
            versions</a>, each of which maps to a set of assets, or files. Repositories are
          polyglot, so a single repository can contain packages of any supported type. Each
          repository exposes endpoints for fetching and publishing packages using tools like the
            <b>
                     <code>npm</code>
                  </b> CLI, the Maven CLI (<b>
                     <code>mvn</code>
                  </b>), and <b>
                     <code>pip</code>
                  </b>.</p>
            </li>
            <li>
               <p>
                  <b>Domain</b>: Repositories are aggregated into a higher-level entity known as a
            <i>domain</i>. All package assets and metadata are stored in the domain,
            but are consumed through repositories. A given package asset, such as a Maven JAR file, is
            stored once per domain, no matter how many repositories it's present in. All of the assets
            and metadata in a domain are encrypted with the same customer master key (CMK) stored in
            AWS Key Management Service (AWS KMS).</p>
               <p>Each repository is a member of a single domain and can't be moved to a
            different domain.</p>
               <p>The domain allows organizational policy to be applied across multiple
            repositories, such as which accounts can access repositories in the domain, and
            which public repositories can be used as sources of packages.</p>
               <p>Although an organization can have multiple domains, we recommend a single production
            domain that contains all published artifacts so that teams can find and share packages
            across their organization.</p>
            </li>
            <li>
               <p>
                  <b>Package</b>: A <i>package</i> is a bundle of software and the metadata required to
          resolve dependencies and install the software. CodeArtifact supports <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/using-npm.html\">npm</a>, <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/using-python.html\">PyPI</a>, and <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/using-maven\">Maven</a> package formats.</p>        
               <p>In CodeArtifact, a package consists of:</p>
               <ul>
                  <li>
                     <p>A <i>name</i> (for example, <code>webpack</code> is the name of a
              popular npm package)</p>
                  </li>
                  <li>
                     <p>An optional namespace (for example, <code>@types</code> in <code>@types/node</code>)</p>
                  </li>
                  <li>
                     <p>A set of versions (for example, <code>1.0.0</code>, <code>1.0.1</code>,
                <code>1.0.2</code>, etc.)</p>
                  </li>
                  <li>
                     <p> Package-level metadata (for example, npm tags)</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>
                  <b>Package version</b>: A version of a package, such as <code>@types/node 12.6.9</code>. The version number
          format and semantics vary for different package formats. For example, npm package versions
          must conform to the <a href=\"https://semver.org/\">Semantic Versioning
            specification</a>. In CodeArtifact, a package version consists of the version identifier,
          metadata at the package version level, and a set of assets.</p>
            </li>
            <li>
               <p>
                  <b>Upstream repository</b>: One repository is <i>upstream</i> of another when the package versions in
          it can be accessed from the repository endpoint of the downstream repository, effectively
          merging the contents of the two repositories from the point of view of a client. CodeArtifact
          allows creating an upstream relationship between two repositories.</p>
            </li>
            <li>
               <p>
                  <b>Asset</b>: An individual file stored in CodeArtifact associated with a package version, such as an npm
            <code>.tgz</code> file or Maven POM and JAR files.</p>
            </li>
         </ul>
    
         <p>CodeArtifact supports these operations:</p>
         <ul>
            <li>
               <p>
                  <code>AssociateExternalConnection</code>: Adds an existing external 
          connection to a repository.
        </p>
            </li>
            <li>
               <p>
                  <code>CopyPackageVersions</code>: Copies package versions from one 
          repository to another repository in the same domain.</p>
            </li>
            <li>
               <p>
                  <code>CreateDomain</code>: Creates a domain</p>
            </li>
            <li>
               <p>
                  <code>CreateRepository</code>: Creates a CodeArtifact repository in a domain. </p>
            </li>
            <li>
               <p>
                  <code>DeleteDomain</code>: Deletes a domain. You cannot delete a domain that contains
          repositories. </p>
            </li>
            <li>
               <p>
                  <code>DeleteDomainPermissionsPolicy</code>: Deletes the resource policy that is set on a domain.</p>
            </li>
            <li>
               <p>
                  <code>DeletePackageVersions</code>: Deletes versions of a package. After a package has
          been deleted, it can be republished, but its assets and metadata cannot be restored
          because they have been permanently removed from storage.</p>
            </li>
            <li>
               <p>
                  <code>DeleteRepository</code>: Deletes a repository.          
        </p>
            </li>
            <li>
               <p>
                  <code>DeleteRepositoryPermissionsPolicy</code>: Deletes the resource policy that is set on a repository.</p>
            </li>
            <li>
               <p>
                  <code>DescribeDomain</code>: Returns a <code>DomainDescription</code> object that
          contains information about the requested domain.</p>
            </li>
            <li>
               <p>
                  <code>DescribePackageVersion</code>: Returns a <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html\">PackageVersionDescription</a>
          object that contains details about a package version. </p>
            </li>
            <li>
               <p>
                  <code>DescribeRepository</code>: Returns a <code>RepositoryDescription</code> object
          that contains detailed information about the requested repository. </p>
            </li>
            <li>
               <p>
                  <code>DisposePackageVersions</code>: Disposes versions of a package. A package version
          with the status <code>Disposed</code> cannot be restored because they have been
          permanently removed from storage.</p>
            </li>
            <li>
               <p>
                  <code>DisassociateExternalConnection</code>: Removes an existing external connection from a repository.          
        </p>
            </li>
            <li>
               <p>
                  <code>GetAuthorizationToken</code>: Generates a temporary authorization token for accessing repositories in the domain. The token expires the authorization period has passed. 
          The default authorization period is 12 hours and can be customized to any length with a maximum of 12 hours.</p>
            </li>
            <li>
               <p>
                  <code>GetDomainPermissionsPolicy</code>: Returns the policy of a resource
          that is attached to the specified domain. </p>
            </li>
            <li>
               <p>
                  <code>GetPackageVersionAsset</code>: Returns the contents of an asset that is in a package version. </p>
            </li>
            <li>
               <p>
                  <code>GetPackageVersionReadme</code>: Gets the readme file or descriptive text for a package version.</p>
            </li>
            <li>
               <p>
                  <code>GetRepositoryEndpoint</code>: Returns the endpoint of a repository for a specific package format. A repository has one endpoint for each 
          package format:
        </p>
               <ul>
                  <li>
                     <p>
                        <code>npm</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>pypi</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>maven</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>
                  <code>GetRepositoryPermissionsPolicy</code>: Returns the resource policy that is set on a repository.          
        </p>
            </li>
            <li>
               <p>
                  <code>ListDomains</code>: Returns a list of <code>DomainSummary</code> objects. Each
          returned <code>DomainSummary</code> object contains information about a domain.</p>
            </li>
            <li>
               <p>
                  <code>ListPackages</code>: Lists the packages in a repository.</p>
            </li>
            <li>
               <p>
                  <code>ListPackageVersionAssets</code>: Lists the assets for a given package version.</p>
            </li>
            <li>
               <p>
                  <code>ListPackageVersionDependencies</code>: Returns a list of the direct dependencies for a
          package version. </p>
            </li>
            <li>
               <p>
                  <code>ListPackageVersions</code>: Returns a list of package versions for a specified
          package in a repository.</p>
            </li>
            <li>
               <p>
                  <code>ListRepositories</code>: Returns a list of repositories owned by the AWS account that called this method.</p>
            </li>
            <li>
               <p>
                  <code>ListRepositoriesInDomain</code>: Returns a list of the repositories in a domain.</p>
            </li>
            <li>
               <p>
                  <code>PutDomainPermissionsPolicy</code>: Attaches a resource policy to a domain.</p>
            </li>
            <li>
               <p>
                  <code>PutRepositoryPermissionsPolicy</code>: Sets the resource policy on a repository
          that specifies permissions to access it. </p>
            </li>
            <li>
               <p>
                  <code>UpdatePackageVersionsStatus</code>: Updates the status of one or more versions of a package.</p>
            </li>
            <li>
               <p>
                  <code>UpdateRepository</code>: Updates the properties of a repository.</p>
            </li>
         </ul>")
module GetRepositoryEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>
      Returns which endpoint of a repository to return. A repository has one endpoint for each 
      package format:
    </p>
         <ul>
            <li>
               <p>
                  <code>npm</code>
               </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>
               </p>
            </li>
            <li>
               <p>
                  <code>maven</code>
               </p>
            </li>
         </ul>")
    format: packageFormat,
    @ocaml.doc("<p>
         The name of the repository.
     </p>")
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain that contains the repository. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
         The name of the domain that contains the repository.
     </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
         A string that specifies the URL of the returned endpoint.
     </p>")
    repositoryEndpoint: option<string_>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "GetRepositoryEndpointCommand"
  let make = (~format, ~repository, ~domain, ~domainOwner=?, ()) =>
    new({format: format, repository: repository, domainOwner: domainOwner, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPackageVersionReadme = {
  type t
  type request = {
    @ocaml.doc("<p>
      A string that contains the package version (for example, <code>3.5.2</code>).
    </p>")
    packageVersion: packageVersion,
    @ocaml.doc("<p>
      The name of the package version that contains the requested readme file.
    </p>")
    package: packageName,
    @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
    namespace: option<packageNamespace>,
    @ocaml.doc("<p>
      A format that specifies the type of the package version with the requested readme file. The valid values are:
    </p>
         <ul>
            <li>
               <p>
                  <code>npm</code>
               </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>
               </p>
            </li>
            <li>
               <p>
                  <code>maven</code>
               </p>
            </li>
         </ul>")
    format: packageFormat,
    @ocaml.doc("<p>
      The repository that contains the package with the requested readme file.
    </p>")
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
      The name of the domain that contains the repository that contains the package version with the requested readme file.
    </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
      The text of the returned readme file.
    </p>")
    readme: option<string_>,
    @ocaml.doc("<p>
      The current revision associated with the package version.
    </p>")
    versionRevision: option<packageVersionRevision>,
    @ocaml.doc("<p>
      The version of the package with the requested readme file.
    </p>")
    version: option<packageVersion>,
    @ocaml.doc("<p>
      The name of the package that contains the returned readme file.
    </p>")
    package: option<packageName>,
    @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
    namespace: option<packageNamespace>,
    @ocaml.doc("<p>
      The format of the package with the requested readme file. Valid format types are:
    </p>
         <ul>
            <li>
               <p>
                  <code>npm</code>
               </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>
               </p>
            </li>
            <li>
               <p>
                  <code>maven</code>
               </p>
            </li>
         </ul>")
    format: option<packageFormat>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "GetPackageVersionReadmeCommand"
  let make = (
    ~packageVersion,
    ~package,
    ~format,
    ~repository,
    ~domain,
    ~namespace=?,
    ~domainOwner=?,
    (),
  ) =>
    new({
      packageVersion: packageVersion,
      package: package,
      namespace: namespace,
      format: format,
      repository: repository,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPackageVersionAsset = {
  type t
  type request = {
    @ocaml.doc("<p>
        The name of the package version revision that contains the requested asset.
    </p>")
    packageVersionRevision: option<packageVersionRevision>,
    @ocaml.doc("<p>
      The name of the requested asset.
    </p>")
    asset: assetName,
    @ocaml.doc("<p>
      A string that contains the package version (for example, <code>3.5.2</code>).
    </p>")
    packageVersion: packageVersion,
    @ocaml.doc("<p>
      The name of the package that contains the requested asset.
    </p>")
    package: packageName,
    @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
    namespace: option<packageNamespace>,
    @ocaml.doc("<p>
      A format that specifies the type of the package version with the requested asset file. The valid values are:
    </p>    
         <ul>
            <li>
               <p>
                  <code>npm</code>
               </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>
               </p>
            </li>
            <li>
               <p>
                  <code>maven</code>
               </p>
            </li>
         </ul>")
    format: packageFormat,
    @ocaml.doc("<p>
      The repository that contains the package version with the requested asset.
    </p>")
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
      The name of the domain that contains the repository that contains the package version with the requested asset.
    </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
      The name of the package version revision that contains the downloaded asset.
    </p>")
    packageVersionRevision: option<packageVersionRevision>,
    @ocaml.doc("<p>
      A string that contains the package version (for example, <code>3.5.2</code>).
    </p>")
    packageVersion: option<packageVersion>,
    @ocaml.doc("<p>
      The name of the asset that is downloaded.
    </p>")
    assetName: option<assetName>,
    @ocaml.doc("<p> The binary file, or asset, that is downloaded.</p>") asset: option<asset>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "GetPackageVersionAssetCommand"
  let make = (
    ~asset,
    ~packageVersion,
    ~package,
    ~format,
    ~repository,
    ~domain,
    ~packageVersionRevision=?,
    ~namespace=?,
    ~domainOwner=?,
    (),
  ) =>
    new({
      packageVersionRevision: packageVersionRevision,
      asset: asset,
      packageVersion: packageVersion,
      package: package,
      namespace: namespace,
      format: format,
      repository: repository,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAuthorizationToken = {
  type t
  type request = {
    @ocaml.doc("<p>The time, in seconds, that the generated authorization token is valid. Valid values are 
    <code>0</code> and any number between <code>900</code> (15 minutes) and <code>43200</code> (12 hours). 
    A value of <code>0</code> will set the expiration of the authorization token to the same expiration of 
    the user's role's temporary credentials.</p>")
    durationSeconds: option<authorizationTokenDurationSeconds>,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
        The name of the domain that is in scope for the generated authorization token.
       </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
      A timestamp that specifies the date and time the authorization token expires.
    </p>")
    expiration: option<timestamp_>,
    @ocaml.doc("<p>
        The returned authentication token.
       </p>")
    authorizationToken: option<string_>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "GetAuthorizationTokenCommand"
  let make = (~domain, ~durationSeconds=?, ~domainOwner=?, ()) =>
    new({durationSeconds: durationSeconds, domainOwner: domainOwner, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag key for each tag that you want to remove from the resource.</p>")
    tagKeys: tagKeyList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>"
    )
    resourceArn: arn,
  }

  @module("@aws-sdk/client-codeartifact") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutRepositoryPermissionsPolicy = {
  type t
  type request = {
    @ocaml.doc("<p> A valid displayable JSON Aspen policy string to be set as the access control resource
      policy on the provided repository. </p>")
    policyDocument: policyDocument,
    @ocaml.doc("<p>
        Sets the revision of the resource policy that specifies permissions to access the repository. 
        This revision is used for optimistic locking, which prevents others from overwriting your 
        changes to the repository's resource policy.
      </p>")
    policyRevision: option<policyRevision>,
    @ocaml.doc("<p> The name of the repository to set the resource policy on. </p>")
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
        The name of the domain containing the repository to set the resource policy on.
      </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p> The resource policy that was set after processing the request. </p>")
    policy: option<resourcePolicy>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "PutRepositoryPermissionsPolicyCommand"
  let make = (~policyDocument, ~repository, ~domain, ~policyRevision=?, ~domainOwner=?, ()) =>
    new({
      policyDocument: policyDocument,
      policyRevision: policyRevision,
      repository: repository,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutDomainPermissionsPolicy = {
  type t
  type request = {
    @ocaml.doc("<p> A valid displayable JSON Aspen policy string to be set as the access control resource
      policy on the provided domain. </p>")
    policyDocument: policyDocument,
    @ocaml.doc("<p>
        The current revision of the resource policy to be set. This revision is used for optimistic locking, which
        prevents others from overwriting your changes to the domain's resource policy.
      </p>")
    policyRevision: option<policyRevision>,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
        The name of the domain on which to set the resource policy.
      </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p> The resource policy that was set after processing the request. </p>")
    policy: option<resourcePolicy>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "PutDomainPermissionsPolicyCommand"
  let make = (~policyDocument, ~domain, ~policyRevision=?, ~domainOwner=?, ()) =>
    new({
      policyDocument: policyDocument,
      policyRevision: policyRevision,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRepositoryPermissionsPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>
        The name of the repository whose associated resource policy is to be retrieved.
      </p>")
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
        The name of the domain containing the repository whose associated resource policy is to be retrieved.
      </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
        The returned resource policy.
      </p>")
    policy: option<resourcePolicy>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "GetRepositoryPermissionsPolicyCommand"
  let make = (~repository, ~domain, ~domainOwner=?, ()) =>
    new({repository: repository, domainOwner: domainOwner, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDomainPermissionsPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
        The name of the domain to which the resource policy is attached.
      </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
        The returned resource policy.
      </p>")
    policy: option<resourcePolicy>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "GetDomainPermissionsPolicyCommand"
  let make = (~domain, ~domainOwner=?, ()) => new({domainOwner: domainOwner, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDomain = {
  type t
  type request = {
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
         A string that specifies the name of the requested domain.
     </p>")
    domain: domainName,
  }
  type response = {domain: option<domainDescription>}
  @module("@aws-sdk/client-codeartifact") @new external new: request => t = "DescribeDomainCommand"
  let make = (~domain, ~domainOwner=?, ()) => new({domainOwner: domainOwner, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRepositoryPermissionsPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>
      The revision of the repository's resource policy to be deleted. This revision is used for optimistic locking, which
      prevents others from accidentally overwriting your changes to the repository's resource policy.
    </p>")
    policyRevision: option<policyRevision>,
    @ocaml.doc("<p>
      The name of the repository that is associated with the resource policy to be deleted
    </p>")
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
        The name of the domain that contains the repository associated with the resource policy to be deleted.
      </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
      Information about the deleted policy after processing the request.
    </p>")
    policy: option<resourcePolicy>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "DeleteRepositoryPermissionsPolicyCommand"
  let make = (~repository, ~domain, ~policyRevision=?, ~domainOwner=?, ()) =>
    new({
      policyRevision: policyRevision,
      repository: repository,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDomainPermissionsPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>
        The current revision of the resource policy to be deleted. This revision is used for optimistic locking, which
        prevents others from overwriting your changes to the domain's resource policy.
      </p>")
    policyRevision: option<policyRevision>,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
        The name of the domain associated with the resource policy to be deleted.
      </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
        Information about the deleted resource policy after processing the request.
      </p>")
    policy: option<resourcePolicy>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "DeleteDomainPermissionsPolicyCommand"
  let make = (~domain, ~policyRevision=?, ~domainOwner=?, ()) =>
    new({policyRevision: policyRevision, domainOwner: domainOwner, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDomain = {
  type t
  type request = {
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
         The name of the domain to delete.
       </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
        Contains information about the deleted domain after processing the request.
       </p>")
    domain: option<domainDescription>,
  }
  @module("@aws-sdk/client-codeartifact") @new external new: request => t = "DeleteDomainCommand"
  let make = (~domain, ~domainOwner=?, ()) => new({domainOwner: domainOwner, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePackageVersionsStatus = {
  type t
  type request = {
    @ocaml.doc("<p>
      The status you want to change the package version status to.
    </p>")
    targetStatus: packageVersionStatus,
    @ocaml.doc("<p> The package version’s expected status before it is updated. If
        <code>expectedStatus</code> is provided, the package version's status is updated only if its
      status at the time <code>UpdatePackageVersionsStatus</code> is called matches
        <code>expectedStatus</code>. </p>")
    expectedStatus: option<packageVersionStatus>,
    @ocaml.doc("<p> A map of package versions and package version revisions. The map <code>key</code> is the
      package version (for example, <code>3.5.2</code>), and the map <code>value</code> is the
      package version revision. </p>")
    versionRevisions: option<packageVersionRevisionMap>,
    @ocaml.doc("<p>
      An array of strings that specify the versions of the package with the statuses to update.
    </p>")
    versions: packageVersionList,
    @ocaml.doc("<p>
      The name of the package with the version statuses to update.
    </p>")
    package: packageName,
    @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
    namespace: option<packageNamespace>,
    @ocaml.doc("<p>
      A format that specifies the type of the package with the statuses to update. The valid values are:
    </p>
         <ul>
            <li>
               <p>
                  <code>npm</code>
               </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>
               </p>
            </li>
            <li>
               <p>
                  <code>maven</code>
               </p>
            </li>
         </ul>")
    format: packageFormat,
    @ocaml.doc("<p>
      The repository that contains the package versions with the status you want to update. 
    </p>")
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
      The name of the domain that contains the repository that contains the package versions with a status to be updated.
    </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p> A list of <code>SuccessfulPackageVersionInfo</code> objects, one for each package version
      with a status that successfully updated. </p>")
    failedVersions: option<packageVersionErrorMap>,
    @ocaml.doc("<p>
      A list of <code>PackageVersionError</code> objects, one for each package version with 
      a status that failed to update.
    </p>")
    successfulVersions: option<successfulPackageVersionInfoMap>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "UpdatePackageVersionsStatusCommand"
  let make = (
    ~targetStatus,
    ~versions,
    ~package,
    ~format,
    ~repository,
    ~domain,
    ~expectedStatus=?,
    ~versionRevisions=?,
    ~namespace=?,
    ~domainOwner=?,
    (),
  ) =>
    new({
      targetStatus: targetStatus,
      expectedStatus: expectedStatus,
      versionRevisions: versionRevisions,
      versions: versions,
      package: package,
      namespace: namespace,
      format: format,
      repository: repository,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags you want to modify or add to the resource.</p>") tags: tagList_,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource that you want to add or update tags for.</p>"
    )
    resourceArn: arn,
  }

  @module("@aws-sdk/client-codeartifact") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to get tags for.</p>")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>A list of tag key and value pairs associated with the specified resource.</p>")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRepositoriesInDomain = {
  type t
  type request = {
    @ocaml.doc("<p>
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
        The maximum number of results to return per page.
       </p>")
    maxResults: option<listRepositoriesInDomainMaxResults>,
    @ocaml.doc("<p>
      A prefix used to filter returned repositories. Only repositories with names that start with 
      <code>repositoryPrefix</code> are returned.
    </p>")
    repositoryPrefix: option<repositoryName>,
    @ocaml.doc("<p>
         Filter the list of repositories to only include those that are managed by the AWS account ID.
       </p>")
    administratorAccount: option<accountId>,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
         The name of the domain that contains the returned list of repositories.
       </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
        If there are additional results, this is the token for the next set of results.
       </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
       The returned list of repositories.
     </p>")
    repositories: option<repositorySummaryList>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "ListRepositoriesInDomainCommand"
  let make = (
    ~domain,
    ~nextToken=?,
    ~maxResults=?,
    ~repositoryPrefix=?,
    ~administratorAccount=?,
    ~domainOwner=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      repositoryPrefix: repositoryPrefix,
      administratorAccount: administratorAccount,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRepositories = {
  type t
  type request = {
    @ocaml.doc("<p>
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
        The maximum number of results to return per page.
       </p>")
    maxResults: option<listRepositoriesMaxResults>,
    @ocaml.doc("<p> A prefix used to filter returned repositories. Only repositories with names that start
      with <code>repositoryPrefix</code> are returned.</p>")
    repositoryPrefix: option<repositoryName>,
  }
  type response = {
    @ocaml.doc("<p>
        If there are additional results, this is the token for the next set of results.
       </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
        The returned list of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html\">RepositorySummary</a> 
        objects.
       </p>")
    repositories: option<repositorySummaryList>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "ListRepositoriesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~repositoryPrefix=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, repositoryPrefix: repositoryPrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPackages = {
  type t
  type request = {
    @ocaml.doc("<p>
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
        The maximum number of results to return per page.
       </p>")
    maxResults: option<listPackagesMaxResults>,
    @ocaml.doc("<p>
      A prefix used to filter returned packages. Only packages with names that start with 
      <code>packagePrefix</code> are returned.
    </p>")
    packagePrefix: option<packageName>,
    @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
    namespace: option<packageNamespace>,
    @ocaml.doc("<p>
      The format of the packages. The valid package types are:
    </p>
         <ul>
            <li>
               <p>
                  <code>npm</code>: A Node Package Manager (npm) package.
        </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>: A Python Package Index (PyPI) package.
        </p>
            </li>
            <li>
               <p>
                  <code>maven</code>: A Maven package that contains compiled code in a distributable format, such as a JAR file.
        </p>
            </li>
         </ul>")
    format: option<packageFormat>,
    @ocaml.doc("<p>
         The name of the repository from which packages are to be listed.
       </p>")
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
        The name of the domain that contains the repository that contains the requested list of packages.
      </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
        If there are additional results, this is the token for the next set of results.
       </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
        The list of returned <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html\">PackageSummary</a> 
        objects.
       </p>")
    packages: option<packageSummaryList>,
  }
  @module("@aws-sdk/client-codeartifact") @new external new: request => t = "ListPackagesCommand"
  let make = (
    ~repository,
    ~domain,
    ~nextToken=?,
    ~maxResults=?,
    ~packagePrefix=?,
    ~namespace=?,
    ~format=?,
    ~domainOwner=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      packagePrefix: packagePrefix,
      namespace: namespace,
      format: format,
      repository: repository,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPackageVersions = {
  type t
  type request = {
    @ocaml.doc("<p>
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
        The maximum number of results to return per page.
       </p>")
    maxResults: option<listPackageVersionsMaxResults>,
    @ocaml.doc("<p>
      How to sort the returned list of package versions.
    </p>")
    sortBy: option<packageVersionSortType>,
    @ocaml.doc("<p>
      A string that specifies the status of the package versions to include in the returned list. It can be one of the following:
    </p>
         <ul>
            <li>
               <p>
                  <code>Published</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Unfinished</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Unlisted</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Archived</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Disposed</code>
               </p>
            </li>
         </ul>")
    status: option<packageVersionStatus>,
    @ocaml.doc("<p>
      The name of the package for which you want to return a list of package versions.
    </p>")
    package: packageName,
    @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
    namespace: option<packageNamespace>,
    @ocaml.doc("<p>
      The format of the returned packages. The valid package types are:
    </p>
         <ul>
            <li>
               <p>
                  <code>npm</code>: A Node Package Manager (npm) package.
        </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>: A Python Package Index (PyPI) package.
        </p>
            </li>
            <li>
               <p>
                  <code>maven</code>: A Maven package that contains compiled code in a distributable format, such as a JAR file.
        </p>
            </li>
         </ul>")
    format: packageFormat,
    @ocaml.doc("<p>
         The name of the repository that contains the package.
       </p>")
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
         The name of the domain that contains the repository that contains the returned package versions.
       </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
        If there are additional results, this is the token for the next set of results.
       </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
        The returned list of 
        <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html\">PackageVersionSummary</a> 
        objects.
       </p>")
    versions: option<packageVersionSummaryList>,
    @ocaml.doc("<p>
         The name of the package.
       </p>")
    package: option<packageName>,
    @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
    namespace: option<packageNamespace>,
    @ocaml.doc("<p>
      A format of the package. Valid package format values are:
    </p>
         <ul>
            <li>
               <p>
                  <code>npm</code>
               </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>
               </p>
            </li>
            <li>
               <p>
                  <code>maven</code>
               </p>
            </li>
         </ul>")
    format: option<packageFormat>,
    @ocaml.doc("<p>
      The default package version to display. This depends on the package format:
    </p>
         <ul>
            <li>
               <p>
          For Maven and PyPI packages, it's the most recently published package version.
        </p>
            </li>
            <li>
               <p>
          For npm packages, it's the version referenced by the
          <code>latest</code> tag. If the  <code>latest</code> tag is not set, it's the most recently published package version.
        </p>
            </li>
         </ul>")
    defaultDisplayVersion: option<packageVersion>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "ListPackageVersionsCommand"
  let make = (
    ~package,
    ~format,
    ~repository,
    ~domain,
    ~nextToken=?,
    ~maxResults=?,
    ~sortBy=?,
    ~status=?,
    ~namespace=?,
    ~domainOwner=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      sortBy: sortBy,
      status: status,
      package: package,
      namespace: namespace,
      format: format,
      repository: repository,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPackageVersionDependencies = {
  type t
  type request = {
    @ocaml.doc("<p>
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
      A string that contains the package version (for example, <code>3.5.2</code>).
    </p>")
    packageVersion: packageVersion,
    @ocaml.doc("<p>
      The name of the package versions' package.
    </p>")
    package: packageName,
    @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
    namespace: option<packageNamespace>,
    @ocaml.doc("<p>
      The format of the package with the requested dependencies. The valid package types are:
    </p>
         <ul>
            <li>
               <p>
                  <code>npm</code>: A Node Package Manager (npm) package.
        </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>: A Python Package Index (PyPI) package.
        </p>
            </li>
            <li>
               <p>
                  <code>maven</code>: A Maven package that contains compiled code in a distributable format, such as a JAR file.
        </p>
            </li>
         </ul>")
    format: packageFormat,
    @ocaml.doc("<p>
      The name of the repository that contains the requested package version.
    </p>")
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
      The name of the domain that contains the repository that contains the requested package version dependencies.
    </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
      The returned list of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html\">PackageDependency</a> objects.
    </p>")
    dependencies: option<packageDependencyList>,
    @ocaml.doc("<p>
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
      The current revision associated with the package version.
    </p>")
    versionRevision: option<packageVersionRevision>,
    @ocaml.doc("<p>
      The version of the package that is specified in the request.
    </p>")
    version: option<packageVersion>,
    @ocaml.doc("<p>
      The name of the package that contains the returned package versions dependencies.
    </p>")
    package: option<packageName>,
    @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
    namespace: option<packageNamespace>,
    @ocaml.doc("<p>
      A format that specifies the type of the package that contains the returned dependencies. The valid values are:
    </p>
         <ul>
            <li>
               <p>
                  <code>npm</code>
               </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>
               </p>
            </li>
            <li>
               <p>
                  <code>maven</code>
               </p>
            </li>
         </ul>")
    format: option<packageFormat>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "ListPackageVersionDependenciesCommand"
  let make = (
    ~packageVersion,
    ~package,
    ~format,
    ~repository,
    ~domain,
    ~nextToken=?,
    ~namespace=?,
    ~domainOwner=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      packageVersion: packageVersion,
      package: package,
      namespace: namespace,
      format: format,
      repository: repository,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDomains = {
  type t
  type request = {
    @ocaml.doc("<p>
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
        The maximum number of results to return per page.
       </p>")
    maxResults: option<listDomainsMaxResults>,
  }
  type response = {
    @ocaml.doc("<p>
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
      The returned list of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainSummary.html\">DomainSummary</a> objects.
     </p>")
    domains: option<domainSummaryList>,
  }
  @module("@aws-sdk/client-codeartifact") @new external new: request => t = "ListDomainsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisposePackageVersions = {
  type t
  type request = {
    @ocaml.doc("<p>
      The expected status of the package version to dispose. Valid values are:
    </p>
         <ul>
            <li>
               <p>
                  <code>Published</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Unfinished</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Unlisted</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Archived</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Disposed</code>
               </p>
            </li>
         </ul>")
    expectedStatus: option<packageVersionStatus>,
    @ocaml.doc("<p>
      The revisions of the package versions you want to dispose.
    </p>")
    versionRevisions: option<packageVersionRevisionMap>,
    @ocaml.doc("<p>
      The versions of the package you want to dispose.
    </p>")
    versions: packageVersionList,
    @ocaml.doc("<p>
      The name of the package with the versions you want to dispose.
    </p>")
    package: packageName,
    @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
    namespace: option<packageNamespace>,
    @ocaml.doc("<p>
      A format that specifies the type of package versions you want to dispose. The valid values are:
    </p>
         <ul>
            <li>
               <p>
                  <code>npm</code>
               </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>
               </p>
            </li>
            <li>
               <p>
                  <code>maven</code>
               </p>
            </li>
         </ul>")
    format: packageFormat,
    @ocaml.doc("<p>
      The name of the repository that contains the package versions you want to dispose.
    </p>")
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
      The name of the domain that contains the repository you want to dispose.
    </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
      A <code>PackageVersionError</code> object that contains a map of errors codes for the 
      disposed package versions that failed. The possible error codes are:
    </p>
         <ul>
            <li>
               <p>
                  <code>ALREADY_EXISTS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>MISMATCHED_REVISION</code>
               </p>
            </li>
            <li>
               <p>
                  <code>MISMATCHED_STATUS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NOT_ALLOWED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NOT_FOUND</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SKIPPED</code>
               </p>
            </li>
         </ul>")
    failedVersions: option<packageVersionErrorMap>,
    @ocaml.doc("<p>
      A list of the package versions that were successfully disposed.
    </p>")
    successfulVersions: option<successfulPackageVersionInfoMap>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "DisposePackageVersionsCommand"
  let make = (
    ~versions,
    ~package,
    ~format,
    ~repository,
    ~domain,
    ~expectedStatus=?,
    ~versionRevisions=?,
    ~namespace=?,
    ~domainOwner=?,
    (),
  ) =>
    new({
      expectedStatus: expectedStatus,
      versionRevisions: versionRevisions,
      versions: versions,
      package: package,
      namespace: namespace,
      format: format,
      repository: repository,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePackageVersions = {
  type t
  type request = {
    @ocaml.doc("<p>
        The expected status of the package version to delete. Valid values are:
      </p>
         <ul>
            <li>
               <p>
                  <code>Published</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Unfinished</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Unlisted</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Archived</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Disposed</code>
               </p>
            </li>
         </ul>")
    expectedStatus: option<packageVersionStatus>,
    @ocaml.doc("<p>
        An array of strings that specify the versions of the package to delete.
      </p>")
    versions: packageVersionList,
    @ocaml.doc("<p>
        The name of the package with the versions to delete.
      </p>")
    package: packageName,
    @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
    namespace: option<packageNamespace>,
    @ocaml.doc("<p>
        The format of the package versions to delete. The valid values are:
      </p>
         <ul>
            <li>
               <p>
                  <code>npm</code>
               </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>
               </p>
            </li>
            <li>
               <p>
                  <code>maven</code>
               </p>
            </li>
         </ul>")
    format: packageFormat,
    @ocaml.doc("<p>
        The name of the repository that contains the package versions to delete.
      </p>")
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
        The name of the domain that contains the package to delete.
      </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
       A <code>PackageVersionError</code> object that contains a map of errors codes for the 
       deleted package that failed. The possible error codes are:
     </p>
         <ul>
            <li>
               <p>
                  <code>ALREADY_EXISTS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>MISMATCHED_REVISION</code>
               </p>
            </li>
            <li>
               <p>
                  <code>MISMATCHED_STATUS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NOT_ALLOWED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NOT_FOUND</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SKIPPED</code>
               </p>
            </li>
         </ul>")
    failedVersions: option<packageVersionErrorMap>,
    @ocaml.doc("<p>
       A list of the package versions that were successfully deleted.
     </p>")
    successfulVersions: option<successfulPackageVersionInfoMap>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "DeletePackageVersionsCommand"
  let make = (
    ~versions,
    ~package,
    ~format,
    ~repository,
    ~domain,
    ~expectedStatus=?,
    ~namespace=?,
    ~domainOwner=?,
    (),
  ) =>
    new({
      expectedStatus: expectedStatus,
      versions: versions,
      package: package,
      namespace: namespace,
      format: format,
      repository: repository,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDomain = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tag key-value pairs for the domain.</p>") tags: option<tagList_>,
    @ocaml.doc("<p> The encryption key for the domain. This is used to encrypt content stored in a domain.
      An encryption key can be a key ID, a key Amazon Resource Name (ARN), a key alias, or a key
      alias ARN. To specify an <code>encryptionKey</code>, your IAM role must have
        <code>kms:DescribeKey</code> and <code>kms:CreateGrant</code> permissions on the encryption
      key that is used. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestSyntax\">DescribeKey</a> in the <i>AWS Key Management Service API Reference</i>
      and <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html\">AWS KMS API Permissions
        Reference</a> in the <i>AWS Key Management Service Developer Guide</i>. </p>
         <important>
            <p> CodeArtifact supports only symmetric CMKs. Do not associate an asymmetric CMK with your
        domain. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html\">Using symmetric and asymmetric
          keys</a> in the <i>AWS Key Management Service Developer Guide</i>. </p>
         </important>")
    encryptionKey: option<arn>,
    @ocaml.doc("<p> The name of the domain to create. All domain names in an AWS Region that are in the
      same AWS account must be unique. The domain name is used as the prefix in DNS hostnames. Do
      not use sensitive information in a domain name because it is publicly discoverable. </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
        Contains information about the created domain after processing the request.
      </p>")
    domain: option<domainDescription>,
  }
  @module("@aws-sdk/client-codeartifact") @new external new: request => t = "CreateDomainCommand"
  let make = (~domain, ~tags=?, ~encryptionKey=?, ()) =>
    new({tags: tags, encryptionKey: encryptionKey, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyPackageVersions = {
  type t
  type request = {
    @ocaml.doc("<p> Set to true to copy packages from repositories that are upstream from the source
      repository to the destination repository. The default setting is false. For more information,
      see <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html\">Working with
        upstream repositories</a>. </p>")
    includeFromUpstream: option<booleanOptional>,
    @ocaml.doc("<p>
       Set to true to overwrite a package version that already exists in the destination repository.
       If set to false and the package version already exists in the destination repository,
       the package version is returned in the <code>failedVersions</code> field of the response with 
       an <code>ALREADY_EXISTS</code> error code.
     </p>")
    allowOverwrite: option<booleanOptional>,
    @ocaml.doc("<p>
       A list of key-value pairs. The keys are package versions and the values are package version revisions. A <code>CopyPackageVersion</code> operation
      succeeds if the specified versions in the source repository match the specified package version revision.
    </p>
         <note>
            <p>
        You must specify <code>versions</code> or <code>versionRevisions</code>. You cannot specify both.
      </p>
         </note>")
    versionRevisions: option<packageVersionRevisionMap>,
    @ocaml.doc("<p>
        The versions of the package to copy.
      </p>
         <note>
            <p>
        You must specify <code>versions</code> or <code>versionRevisions</code>. You cannot specify both.
      </p>
         </note>")
    versions: option<packageVersionList>,
    @ocaml.doc("<p>
      The name of the package that is copied.
    </p>")
    package: packageName,
    @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
    namespace: option<packageNamespace>,
    @ocaml.doc("<p>
      The format of the package that is copied. The valid package types are:
    </p>
         <ul>
            <li>
               <p>
                  <code>npm</code>: A Node Package Manager (npm) package.
        </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>: A Python Package Index (PyPI) package.
        </p>
            </li>
            <li>
               <p>
                  <code>maven</code>: A Maven package that contains compiled code in a distributable format, such as a JAR file.
        </p>
            </li>
         </ul>")
    format: packageFormat,
    @ocaml.doc("<p>
      The name of the repository into which package versions are copied.
    </p>")
    destinationRepository: repositoryName,
    @ocaml.doc("<p>
         The name of the repository that contains the package versions to copy.
       </p>")
    sourceRepository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
        The name of the domain that contains the source and destination repositories.
      </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
      A map of package versions that failed to copy and their error codes. The possible error codes are in 
      the <code>PackageVersionError</code> data type. They are:
    </p>
         <ul>
            <li>
               <p>
                  <code>ALREADY_EXISTS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>MISMATCHED_REVISION</code>
               </p>
            </li>
            <li>
               <p>
                  <code>MISMATCHED_STATUS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NOT_ALLOWED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NOT_FOUND</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SKIPPED</code>
               </p>
            </li>
         </ul>")
    failedVersions: option<packageVersionErrorMap>,
    @ocaml.doc("<p>
      A list of the package versions that were successfully copied to your repository.
    </p>")
    successfulVersions: option<successfulPackageVersionInfoMap>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "CopyPackageVersionsCommand"
  let make = (
    ~package,
    ~format,
    ~destinationRepository,
    ~sourceRepository,
    ~domain,
    ~includeFromUpstream=?,
    ~allowOverwrite=?,
    ~versionRevisions=?,
    ~versions=?,
    ~namespace=?,
    ~domainOwner=?,
    (),
  ) =>
    new({
      includeFromUpstream: includeFromUpstream,
      allowOverwrite: allowOverwrite,
      versionRevisions: versionRevisions,
      versions: versions,
      package: package,
      namespace: namespace,
      format: format,
      destinationRepository: destinationRepository,
      sourceRepository: sourceRepository,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRepository = {
  type t
  type request = {
    @ocaml.doc("<p> A list of upstream repositories to associate with the repository. The order of the upstream repositories 
        in the list determines their priority order when AWS CodeArtifact looks for a requested package version. For more 
        information, see <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html\">Working with upstream repositories</a>. </p>")
    upstreams: option<upstreamRepositoryList>,
    @ocaml.doc("<p>
         An updated repository description.
       </p>")
    description: option<description>,
    @ocaml.doc("<p>
         The name of the repository to update.
       </p>")
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
         The name of the domain associated with the repository to update.
       </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
         The updated repository.
       </p>")
    repository: option<repositoryDescription>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "UpdateRepositoryCommand"
  let make = (~repository, ~domain, ~upstreams=?, ~description=?, ~domainOwner=?, ()) =>
    new({
      upstreams: upstreams,
      description: description,
      repository: repository,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPackageVersionAssets = {
  type t
  type request = {
    @ocaml.doc("<p>
        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
       </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
        The maximum number of results to return per page.
       </p>")
    maxResults: option<listPackageVersionAssetsMaxResults>,
    @ocaml.doc("<p>
      A string that contains the package version (for example, <code>3.5.2</code>).
    </p>")
    packageVersion: packageVersion,
    @ocaml.doc("<p>
         The name of the package that contains the returned package version assets.
       </p>")
    package: packageName,
    @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
    namespace: option<packageNamespace>,
    @ocaml.doc("<p>
      The format of the package that contains the returned package version assets. The valid package types are:
    </p>
         <ul>
            <li>
               <p>
                  <code>npm</code>: A Node Package Manager (npm) package.
        </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>: A Python Package Index (PyPI) package.
        </p>
            </li>
            <li>
               <p>
                  <code>maven</code>: A Maven package that contains compiled code in a distributable format, such as a JAR file.
        </p>
            </li>
         </ul>")
    format: packageFormat,
    @ocaml.doc("<p>
      The name of the repository that contains the package that contains the returned package version assets.
    </p>")
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
         The name of the domain that contains the repository associated with the package version assets.
       </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
      The returned list of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html\">AssetSummary</a> objects.
    </p>")
    assets: option<assetSummaryList>,
    @ocaml.doc("<p>
        If there are additional results, this is the token for the next set of results.
       </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
      The current revision associated with the package version.
    </p>")
    versionRevision: option<packageVersionRevision>,
    @ocaml.doc("<p>
      The version of the package associated with the returned assets.
    </p>")
    version: option<packageVersion>,
    @ocaml.doc("<p>
      The name of the package that contains the returned package version assets.
    </p>")
    package: option<packageName>,
    @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
    namespace: option<packageNamespace>,
    @ocaml.doc("<p>
      The format of the package that contains the returned package version assets.
    </p>")
    format: option<packageFormat>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "ListPackageVersionAssetsCommand"
  let make = (
    ~packageVersion,
    ~package,
    ~format,
    ~repository,
    ~domain,
    ~nextToken=?,
    ~maxResults=?,
    ~namespace=?,
    ~domainOwner=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      packageVersion: packageVersion,
      package: package,
      namespace: namespace,
      format: format,
      repository: repository,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateExternalConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the external connection to be removed from the repository. </p>")
    externalConnection: externalConnectionName,
    @ocaml.doc(
      "<p>The name of the repository from which the external connection will be removed. </p>"
    )
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>The name of the domain that contains the repository from which to remove the external
      repository. </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
      The repository associated with the removed external connection.
    </p>")
    repository: option<repositoryDescription>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "DisassociateExternalConnectionCommand"
  let make = (~externalConnection, ~repository, ~domain, ~domainOwner=?, ()) =>
    new({
      externalConnection: externalConnection,
      repository: repository,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRepository = {
  type t
  type request = {
    @ocaml.doc("<p>
        A string that specifies the name of the requested repository.
       </p>")
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
         The name of the domain that contains the repository to describe.
       </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
         A <code>RepositoryDescription</code> object that contains the requested repository information.
       </p>")
    repository: option<repositoryDescription>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "DescribeRepositoryCommand"
  let make = (~repository, ~domain, ~domainOwner=?, ()) =>
    new({repository: repository, domainOwner: domainOwner, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePackageVersion = {
  type t
  type request = {
    @ocaml.doc("<p>
      A string that contains the package version (for example, <code>3.5.2</code>).
    </p>")
    packageVersion: packageVersion,
    @ocaml.doc("<p> The name of the requested package version. </p>") package: packageName,
    @ocaml.doc("<p>
      The namespace of the package. The package component that specifies its 
      namespace depends on its type. For example:
    </p>
         <ul>
            <li>
               <p>
          The namespace of a Maven package is its <code>groupId</code>.
        </p>
            </li>
            <li>
               <p>
          The namespace of an npm package is its <code>scope</code>.
        </p>
            </li>
            <li>
               <p>
          A Python package does not contain a corresponding component, so 
          Python packages do not have a namespace.
        </p>
            </li>
         </ul>")
    namespace: option<packageNamespace>,
    @ocaml.doc("<p>
      A format that specifies the type of the requested package version. The valid values are:
    </p>
         <ul>
            <li>
               <p>
                  <code>npm</code>
               </p>
            </li>
            <li>
               <p>
                  <code>pypi</code>
               </p>
            </li>
            <li>
               <p>
                  <code>maven</code>
               </p>
            </li>
         </ul>")
    format: packageFormat,
    @ocaml.doc("<p> The name of the repository that contains the package version. </p>")
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
      The name of the domain that contains the repository that contains the package version.
    </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
      A <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html\">PackageVersionDescription</a> 
      object that contains information about the requested package version.
    </p>")
    packageVersion: packageVersionDescription,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "DescribePackageVersionCommand"
  let make = (
    ~packageVersion,
    ~package,
    ~format,
    ~repository,
    ~domain,
    ~namespace=?,
    ~domainOwner=?,
    (),
  ) =>
    new({
      packageVersion: packageVersion,
      package: package,
      namespace: namespace,
      format: format,
      repository: repository,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRepository = {
  type t
  type request = {
    @ocaml.doc("<p> The name of the repository to delete. </p>") repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
         The name of the domain that contains the repository to delete.
       </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
        Information about the deleted repository after processing the request.
       </p>")
    repository: option<repositoryDescription>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "DeleteRepositoryCommand"
  let make = (~repository, ~domain, ~domainOwner=?, ()) =>
    new({repository: repository, domainOwner: domainOwner, domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRepository = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tag key-value pairs for the repository.</p>") tags: option<tagList_>,
    @ocaml.doc("<p> A list of upstream repositories to associate with the repository. The order of the upstream repositories 
        in the list determines their priority order when AWS CodeArtifact looks for a requested package version. For more 
        information, see <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html\">Working with upstream repositories</a>. </p>")
    upstreams: option<upstreamRepositoryList>,
    @ocaml.doc("<p>
      A description of the created repository.
    </p>")
    description: option<description>,
    @ocaml.doc("<p> The name of the repository to create. </p>") repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>
        The name of the domain that contains the created repository.
      </p>")
    domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
        Information about the created repository after processing the request.
      </p>")
    repository: option<repositoryDescription>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "CreateRepositoryCommand"
  let make = (~repository, ~domain, ~tags=?, ~upstreams=?, ~description=?, ~domainOwner=?, ()) =>
    new({
      tags: tags,
      upstreams: upstreams,
      description: description,
      repository: repository,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateExternalConnection = {
  type t
  type request = {
    @ocaml.doc("<p>
      The name of the external connection to add to the repository. The following values are supported:
    </p>
         <ul>
            <li>
               <p>
                  <code>public:npmjs</code> - for the npm public repository.
        </p>
            </li>
            <li>
               <p>
                  <code>public:pypi</code> - for the Python Package Index.
        </p>
            </li>
            <li>
               <p>
                  <code>public:maven-central</code> - for Maven Central.
        </p>
            </li>
            <li>
               <p>
                  <code>public:maven-googleandroid</code> - for the Google Android repository.
        </p>
            </li>
            <li>
               <p>
                  <code>public:maven-gradleplugins</code> - for the Gradle plugins repository.
        </p>
            </li>
            <li>
               <p>
                  <code>public:maven-commonsware</code> - for the CommonsWare Android repository.
        </p>
            </li>
         </ul>")
    externalConnection: externalConnectionName,
    @ocaml.doc("<p>
      The name of the repository to which the external connection is added.
    </p>")
    repository: repositoryName,
    @ocaml.doc("<p>
        The 12-digit account number of the AWS account that owns the domain. It does not include 
        dashes or spaces.
      </p>")
    domainOwner: option<accountId>,
    @ocaml.doc("<p>The name of the domain that contains the repository.</p>") domain: domainName,
  }
  type response = {
    @ocaml.doc("<p>
        Information about the connected repository after processing the request.
       </p>")
    repository: option<repositoryDescription>,
  }
  @module("@aws-sdk/client-codeartifact") @new
  external new: request => t = "AssociateExternalConnectionCommand"
  let make = (~externalConnection, ~repository, ~domain, ~domainOwner=?, ()) =>
    new({
      externalConnection: externalConnection,
      repository: repository,
      domainOwner: domainOwner,
      domain: domain,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
