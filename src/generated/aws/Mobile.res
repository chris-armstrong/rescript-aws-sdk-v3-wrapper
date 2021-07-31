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
type snapshotId = string
type shareUrl = string
type resourceType = string
type resourceName = string
type resourceArn = string
type projectState = [@as("IMPORTING") #IMPORTING | @as("SYNCING") #SYNCING | @as("NORMAL") #NORMAL]
type projectRegion = string
type projectName = string
type projectId = string
type platform = [
  | @as("JAVASCRIPT") #JAVASCRIPT
  | @as("ANDROID") #ANDROID
  | @as("SWIFT") #SWIFT
  | @as("OBJC") #OBJC
  | @as("LINUX") #LINUX
  | @as("WINDOWS") #WINDOWS
  | @as("OSX") #OSX
]
type nextToken = string
type maxResults = int
type iconUrl = string
type feature = string
type errorMessage = string
type downloadUrl = string
type date = Js.Date.t
type contents = NodeJs.Buffer.t
type consoleUrl = string
type bundleVersion = string
type bundleTitle = string
type bundleId = string
type bundleDescription = string
type boolean_ = bool
type attributeValue = string
type attributeKey = string
type projectSummary = {
  projectId: option<projectId>,
  name: option<projectName>,
}
type platforms = array<platform>
type attributes = Js.Dict.t<attributeValue>
type resource = {
  attributes: option<attributes>,
  feature: option<feature>,
  arn: option<resourceArn>,
  name: option<resourceName>,
  @as("type") type_: option<resourceType>,
}
type projectSummaries = array<projectSummary>
type bundleDetails = {
  availablePlatforms: option<platforms>,
  iconUrl: option<iconUrl>,
  description: option<bundleDescription>,
  version: option<bundleVersion>,
  title: option<bundleTitle>,
  bundleId: option<bundleId>,
}
type resources = array<resource>
type bundleList = array<bundleDetails>
type projectDetails = {
  resources: option<resources>,
  consoleUrl: option<consoleUrl>,
  lastUpdatedDate: option<date>,
  createdDate: option<date>,
  state: option<projectState>,
  region: option<projectRegion>,
  projectId: option<projectId>,
  name: option<projectName>,
}

module ExportProject = {
  type t
  type request = {projectId: projectId}
  type response = {
    snapshotId: option<snapshotId>,
    shareUrl: option<shareUrl>,
    downloadUrl: option<downloadUrl>,
  }
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new_: request => t = "ExportProjectCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExportBundle = {
  type t
  type request = {
    platform: option<platform>,
    projectId: option<projectId>,
    bundleId: bundleId,
  }
  type response = {downloadUrl: option<downloadUrl>}
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new_: request => t = "ExportBundleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProjects = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
  }
  type response = {
    nextToken: option<nextToken>,
    projects: option<projectSummaries>,
  }
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new_: request => t = "ListProjectsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBundle = {
  type t
  type request = {bundleId: bundleId}
  type response = {details: option<bundleDetails>}
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new_: request => t = "DescribeBundleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBundles = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
  }
  type response = {
    nextToken: option<nextToken>,
    bundleList: option<bundleList>,
  }
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new_: request => t = "ListBundlesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProject = {
  type t
  type request = {projectId: projectId}
  type response = {
    orphanedResources: option<resources>,
    deletedResources: option<resources>,
  }
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new_: request => t = "DeleteProjectCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProject = {
  type t
  type request = {
    projectId: projectId,
    contents: option<contents>,
  }
  type response = {details: option<projectDetails>}
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new_: request => t = "UpdateProjectCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProject = {
  type t
  type request = {
    syncFromResources: option<boolean_>,
    projectId: projectId,
  }
  type response = {details: option<projectDetails>}
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new_: request => t = "DescribeProjectCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProject = {
  type t
  type request = {
    snapshotId: option<snapshotId>,
    contents: option<contents>,
    region: option<projectRegion>,
    name: option<projectName>,
  }
  type response = {details: option<projectDetails>}
  @module("@aws-sdk/client-awsmobilehubservice") @new
  external new_: request => t = "CreateProjectCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
