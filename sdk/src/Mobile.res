type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-awsmobilehubservice") @new
external createClient: unit => awsServiceClient = "MobileClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
@ocaml.doc("<p>
            Unique identifier for the exported snapshot of the project configuration. This
            snapshot identifier is included in the share URL.
        </p>")
type snapshotId = string
@ocaml.doc("<p>
            URL which can be shared to allow other AWS users to create their own project
            in AWS Mobile Hub with the same configuration as the specified project. This
            URL pertains to a snapshot in time of the project configuration that is created
            when this API is called. If you want to share additional changes to your project
            configuration, then you will need to create and share a new snapshot by calling
            this method again.
        </p>")
type shareUrl = string
@ocaml.doc("<p>
            Simplified name for type of AWS resource (e.g., bucket is an Amazon S3 bucket).
        </p>")
type resourceType = string
@ocaml.doc("<p>
            Name of the AWS resource (e.g., for an Amazon S3 bucket this is the name of the bucket).
        </p>")
type resourceName = string
@ocaml.doc("<p>
            AWS resource name which uniquely identifies the resource in AWS systems.
        </p>")
type resourceArn = string
@ocaml.doc("<p>
            Synchronization state for a project.
        </p>")
type projectState = [@as("IMPORTING") #IMPORTING | @as("SYNCING") #SYNCING | @as("NORMAL") #NORMAL]
@ocaml.doc("<p>
            Default region to use for AWS resource creation in the AWS Mobile Hub project.
        </p>")
type projectRegion = string
@ocaml.doc("<p>
            Name of the project.
        </p>")
type projectName = string
@ocaml.doc("<p>
            Unique project identifier.
        </p>")
type projectId = string
@ocaml.doc("<p>
            Developer desktop or target mobile app or website platform.
        </p>")
type platform = [
  | @as("JAVASCRIPT") #JAVASCRIPT
  | @as("ANDROID") #ANDROID
  | @as("SWIFT") #SWIFT
  | @as("OBJC") #OBJC
  | @as("LINUX") #LINUX
  | @as("WINDOWS") #WINDOWS
  | @as("OSX") #OSX
]
@ocaml.doc("<p>
            Pagination token. Set to null to start listing records from start.
            If non-null pagination token is returned in a result, then pass its
            value in here in another request to list more entries.
        </p>")
type nextToken = string
@ocaml.doc("<p>
            Maximum number of records to list in a single response.
        </p>")
type maxResults = int
@ocaml.doc("<p>
            Icon for the download bundle.
        </p>")
type iconUrl = string
@ocaml.doc("<p>
            Identifies which feature in AWS Mobile Hub is associated with this AWS resource.
        </p>")
type feature = string
@ocaml.doc("<p>
            The Exception Error Message.
        </p>")
type errorMessage = string
@ocaml.doc("<p>
           The download Url.
        </p>")
type downloadUrl = string
type date = Js.Date.t
@ocaml.doc("<p>
            Binary file data.
        </p>")
type contents = NodeJs.Buffer.t
type consoleUrl = string
@ocaml.doc("<p>
            Version of the download bundle.
        </p>")
type bundleVersion = string
@ocaml.doc("<p>
            Title of the download bundle.
        </p>")
type bundleTitle = string
@ocaml.doc("<p>
            Unique bundle identifier.
        </p>")
type bundleId = string
@ocaml.doc("<p>
            Description of the download bundle.
        </p>")
type bundleDescription = string
type boolean_ = bool
@ocaml.doc("<p>
            Value part of key-value attribute pairs.
        </p>")
type attributeValue = string
@ocaml.doc("<p>
            Key part of key-value attribute pairs.
        </p>")
type attributeKey = string
@ocaml.doc("<p>
            Summary information about an AWS Mobile Hub project.
        </p>")
type projectSummary = {
  @ocaml.doc("<p>
            Unique project identifier.
        </p>")
  projectId: option<projectId>,
  @ocaml.doc("<p>
            Name of the project.
        </p>")
  name: option<projectName>,
}
@ocaml.doc("<p>
            Developer desktop or mobile app or website platforms.
        </p>")
type platforms = array<platform>
@ocaml.doc("<p>
            Key-value attribute pairs.
        </p>")
type attributes = Js.Dict.t<attributeValue>
@ocaml.doc("<p>
            Information about an instance of an AWS resource associated with a project.
        </p>")
type resource = {
  attributes: option<attributes>,
  feature: option<feature>,
  arn: option<resourceArn>,
  name: option<resourceName>,
  @as("type") type_: option<resourceType>,
}
@ocaml.doc("<p>
            List of projects.
        </p>")
type projectSummaries = array<projectSummary>
@ocaml.doc("<p>
            The details of the bundle.
        </p>")
type bundleDetails = {
  availablePlatforms: option<platforms>,
  iconUrl: option<iconUrl>,
  description: option<bundleDescription>,
  version: option<bundleVersion>,
  title: option<bundleTitle>,
  bundleId: option<bundleId>,
}
@ocaml.doc("<p>
            List of AWS resources associated with a project.
        </p>")
type resources = array<resource>
@ocaml.doc("<p>
            A list of bundles.
        </p>")
type bundleList = array<bundleDetails>
@ocaml.doc("<p>
            Detailed information about an AWS Mobile Hub project.
        </p>")
type projectDetails = {
  resources: option<resources>,
  @ocaml.doc("<p>
            Website URL for this project in the AWS Mobile Hub console.
        </p>")
  consoleUrl: option<consoleUrl>,
  @ocaml.doc("<p>
            Date of the last modification of the project.
        </p>")
  lastUpdatedDate: option<date>,
  @ocaml.doc("<p>
            Date the project was created.
        </p>")
  createdDate: option<date>,
  state: option<projectState>,
  region: option<projectRegion>,
  projectId: option<projectId>,
  name: option<projectName>,
}
@ocaml.doc("<p>
            AWS Mobile Service provides mobile app and website developers with capabilities
            required to configure AWS resources and bootstrap their developer desktop projects
            with the necessary SDKs, constants, tools and samples to make use of those resources.
        </p>")
module ExportProject = {
  type t
  @ocaml.doc("<p>
            Request structure used in requests to export project configuration details.
        </p>")
  type request = {
    @ocaml.doc("<p>
            Unique project identifier.
        </p>")
    projectId: projectId,
  }
  @ocaml.doc("<p>
            Result structure used for requests to export project configuration details.
        </p>")
  type response = {
    @ocaml.doc("<p>
            Unique identifier for the exported snapshot of the project configuration. This
            snapshot identifier is included in the share URL.
        </p>")
    snapshotId: option<snapshotId>,
    @ocaml.doc("<p>
            URL which can be shared to allow other AWS users to create their own project
            in AWS Mobile Hub with the same configuration as the specified project. This
            URL pertains to a snapshot in time of the project configuration that is created
            when this API is called. If you want to share additional changes to your project
            configuration, then you will need to create and share a new snapshot by calling
            this method again.
        </p>")
    shareUrl: option<shareUrl>,
    @ocaml.doc("<p>
            URL which can be used to download the exported project configuation file(s).
        </p>")
    downloadUrl: option<downloadUrl>,
  }
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new: request => t = "ExportProjectCommand"
  let make = (~projectId, ()) => new({projectId: projectId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ExportBundle = {
  type t
  @ocaml.doc("<p>
            Request structure used to request generation of custom SDK and tool packages
            required to integrate mobile web or app clients with backed AWS resources.
        </p>")
  type request = {
    @ocaml.doc("<p>
            Developer desktop or target application platform.
        </p>")
    platform: option<platform>,
    @ocaml.doc("<p>
            Unique project identifier.
        </p>")
    projectId: option<projectId>,
    @ocaml.doc("<p>
            Unique bundle identifier.
        </p>")
    bundleId: bundleId,
  }
  @ocaml.doc("<p>
            Result structure which contains link to download custom-generated SDK and
            tool packages used to integrate mobile web or app clients with backed
            AWS resources.
        </p>")
  type response = {
    @ocaml.doc("<p>
            URL which contains the custom-generated SDK and tool packages used
            to integrate the client mobile app or web app with the AWS resources
            created by the AWS Mobile Hub project.
        </p>")
    downloadUrl: option<downloadUrl>,
  }
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new: request => t = "ExportBundleCommand"
  let make = (~bundleId, ~platform=?, ~projectId=?, ()) => new({platform, projectId, bundleId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListProjects = {
  type t
  @ocaml.doc("<p>
            Request structure used to request projects list in AWS Mobile Hub.
        </p>")
  type request = {
    @ocaml.doc("<p>
            Pagination token. Set to null to start listing projects from start.
            If non-null pagination token is returned in a result, then pass its
            value in here in another request to list more projects.
        </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
            Maximum number of records to list in a single response.
        </p>")
    maxResults: option<maxResults>,
  }
  @ocaml.doc("<p>
            Result structure used for requests to list projects in AWS Mobile Hub.
        </p>")
  type response = {
    nextToken: option<nextToken>,
    projects: option<projectSummaries>,
  }
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new: request => t = "ListProjectsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeBundle = {
  type t
  @ocaml.doc("<p>
            Request structure to request the details of a specific bundle.
        </p>")
  type request = {
    @ocaml.doc("<p>
            Unique bundle identifier.
        </p>")
    bundleId: bundleId,
  }
  @ocaml.doc("<p>
            Result structure contains the details of the bundle.
        </p>")
  type response = {
    @ocaml.doc("<p>
            The details of the bundle.
        </p>")
    details: option<bundleDetails>,
  }
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new: request => t = "DescribeBundleCommand"
  let make = (~bundleId, ()) => new({bundleId: bundleId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListBundles = {
  type t
  @ocaml.doc("<p>
            Request structure to request all available bundles.
        </p>")
  type request = {
    @ocaml.doc("<p>
            Pagination token. Set to null to start listing bundles from start.
            If non-null pagination token is returned in a result, then pass its
            value in here in another request to list more bundles.
        </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
            Maximum number of records to list in a single response.
        </p>")
    maxResults: option<maxResults>,
  }
  @ocaml.doc("<p>
            Result structure contains a list of all available bundles with details.
        </p>")
  type response = {
    @ocaml.doc("<p>
            Pagination token. If non-null pagination token is returned in a result,
            then pass its value in another request to fetch more entries.
        </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
            A list of bundles.
        </p>")
    bundleList: option<bundleList>,
  }
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new: request => t = "ListBundlesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteProject = {
  type t
  @ocaml.doc("<p>
            Request structure used to request a project be deleted.
        </p>")
  type request = {
    @ocaml.doc("<p>
            Unique project identifier.
        </p>")
    projectId: projectId,
  }
  @ocaml.doc("<p>
            Result structure used in response to request to delete a project.
        </p>")
  type response = {
    @ocaml.doc("<p>
            Resources which were not deleted, due to a risk of losing potentially
            important data or files.
        </p>")
    orphanedResources: option<resources>,
    @ocaml.doc("<p>
            Resources which were deleted.
        </p>")
    deletedResources: option<resources>,
  }
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new: request => t = "DeleteProjectCommand"
  let make = (~projectId, ()) => new({projectId: projectId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateProject = {
  type t
  @ocaml.doc("<p>
            Request structure used for requests to update project configuration.
        </p>")
  type request = {
    @ocaml.doc("<p>
            Unique project identifier.
        </p>")
    projectId: projectId,
    @ocaml.doc("<p>
            ZIP or YAML file which contains project configuration to be updated. This should
            be the contents of the file downloaded from the URL provided in an export project
            operation.
        </p>")
    contents: option<contents>,
  }
  @ocaml.doc("<p>
            Result structure used for requests to updated project configuration.
        </p>")
  type response = {
    @ocaml.doc("<p>
            Detailed information about the updated AWS Mobile Hub project.
        </p>")
    details: option<projectDetails>,
  }
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new: request => t = "UpdateProjectCommand"
  let make = (~projectId, ~contents=?, ()) => new({projectId, contents})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeProject = {
  type t
  @ocaml.doc("<p>
            Request structure used to request details about a project.
        </p>")
  type request = {
    @ocaml.doc("<p>
            If set to true, causes AWS Mobile Hub to synchronize information from other services, e.g., update state of AWS CloudFormation stacks in the AWS Mobile Hub project.
        </p>")
    syncFromResources: option<boolean_>,
    @ocaml.doc("<p>
            Unique project identifier.
        </p>")
    projectId: projectId,
  }
  @ocaml.doc("<p>
            Result structure used for requests of project details.
        </p>")
  type response = {details: option<projectDetails>}
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new: request => t = "DescribeProjectCommand"
  let make = (~projectId, ~syncFromResources=?, ()) => new({syncFromResources, projectId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateProject = {
  type t
  @ocaml.doc("<p>
            Request structure used to request a project be created.
        </p>")
  type request = {
    @ocaml.doc("<p>
            Unique identifier for an exported snapshot of project configuration. This
            snapshot identifier is included in the share URL when a project is exported.
        </p>")
    snapshotId: option<snapshotId>,
    @ocaml.doc("<p>
            ZIP or YAML file which contains configuration settings to be used when creating
            the project. This may be the contents of the file downloaded from the URL provided
            in an export project operation.
        </p>")
    contents: option<contents>,
    @ocaml.doc("<p>
            Default region where project resources should be created.
        </p>")
    region: option<projectRegion>,
    @ocaml.doc("<p>
            Name of the project.
        </p>")
    name: option<projectName>,
  }
  @ocaml.doc("<p>
            Result structure used in response to a request to create a project.
        </p>")
  type response = {
    @ocaml.doc("<p>
            Detailed information about the created AWS Mobile Hub project.
        </p>")
    details: option<projectDetails>,
  }
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new: request => t = "CreateProjectCommand"
  let make = (~snapshotId=?, ~contents=?, ~region=?, ~name=?, ()) =>
    new({snapshotId, contents, region, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
