type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type snapshotId = string
type shareUrl = string
type resourceType = string
type resourceName = string
type resourceArn = string
type projectState = [@as("IMPORTING") #IMPORTING | @as("SYNCING") #SYNCING | @as("NORMAL") #NORMAL]
type projectRegion = string
type projectName = string
type projectId = string
type platform = [@as("JAVASCRIPT") #JAVASCRIPT | @as("ANDROID") #ANDROID | @as("SWIFT") #SWIFT | @as("OBJC") #OBJC | @as("LINUX") #LINUX | @as("WINDOWS") #WINDOWS | @as("OSX") #OSX]
type nextToken = string
type maxResults = int;
type iconUrl = string
type feature = string
type errorMessage = string
type downloadUrl = string
type date = Js.Date.t;
type contents = NodeJs.Buffer.t;
type consoleUrl = string
type bundleVersion = string
type bundleTitle = string
type bundleId = string
type bundleDescription = string
type amazonawsBoolean = bool;
type attributeValue = string
type attributeKey = string
type projectSummary = {
@as("projectId") projectId: projectId,
@as("name") name: projectName
}
type platforms = array<platform>
type attributes = Js.Dict.t< attributeValue>
type resource = {
@as("attributes") attributes: attributes,
@as("feature") feature: feature,
@as("arn") arn: resourceArn,
@as("name") name: resourceName,
@as("type") type_: resourceType
}
type projectSummaries = array<projectSummary>
type bundleDetails = {
@as("availablePlatforms") availablePlatforms: platforms,
@as("iconUrl") iconUrl: iconUrl,
@as("description") description: bundleDescription,
@as("version") version: bundleVersion,
@as("title") title: bundleTitle,
@as("bundleId") bundleId: bundleId
}
type resources = array<resource>
type bundleList = array<bundleDetails>
type projectDetails = {
@as("resources") resources: resources,
@as("consoleUrl") consoleUrl: consoleUrl,
@as("lastUpdatedDate") lastUpdatedDate: date,
@as("createdDate") createdDate: date,
@as("state") state: projectState,
@as("region") region: projectRegion,
@as("projectId") projectId: projectId,
@as("name") name: projectName
}
type clientType;
@module("@aws-sdk/client-awsmobilehubservice") @new external createClient: unit => clientType = "MobileClient";
module ExportProject = {
  type t;
  type request = {
@as("projectId") projectId: option<projectId>
}
  type response = {
@as("snapshotId") snapshotId: snapshotId,
@as("shareUrl") shareUrl: shareUrl,
@as("downloadUrl") downloadUrl: downloadUrl
}
  @module("@aws-sdk/client-awsmobilehubservice") @new external new_: (Js.Promise.t<request>) => t = "ExportProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExportBundle = {
  type t;
  type request = {
@as("platform") platform: platform,
@as("projectId") projectId: projectId,
@as("bundleId") bundleId: option<bundleId>
}
  type response = {
@as("downloadUrl") downloadUrl: downloadUrl
}
  @module("@aws-sdk/client-awsmobilehubservice") @new external new_: (Js.Promise.t<request>) => t = "ExportBundleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProjects = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("projects") projects: projectSummaries
}
  @module("@aws-sdk/client-awsmobilehubservice") @new external new_: (Js.Promise.t<request>) => t = "ListProjectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBundle = {
  type t;
  type request = {
@as("bundleId") bundleId: option<bundleId>
}
  type response = {
@as("details") details: bundleDetails
}
  @module("@aws-sdk/client-awsmobilehubservice") @new external new_: (Js.Promise.t<request>) => t = "DescribeBundleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBundles = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("bundleList") bundleList: bundleList
}
  @module("@aws-sdk/client-awsmobilehubservice") @new external new_: (Js.Promise.t<request>) => t = "ListBundlesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProject = {
  type t;
  type request = {
@as("projectId") projectId: option<projectId>
}
  type response = {
@as("orphanedResources") orphanedResources: resources,
@as("deletedResources") deletedResources: resources
}
  @module("@aws-sdk/client-awsmobilehubservice") @new external new_: (Js.Promise.t<request>) => t = "DeleteProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateProject = {
  type t;
  type request = {
@as("projectId") projectId: option<projectId>,
@as("contents") contents: contents
}
  type response = {
@as("details") details: projectDetails
}
  @module("@aws-sdk/client-awsmobilehubservice") @new external new_: (Js.Promise.t<request>) => t = "UpdateProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProject = {
  type t;
  type request = {
@as("syncFromResources") syncFromResources: amazonawsBoolean,
@as("projectId") projectId: option<projectId>
}
  type response = {
@as("details") details: projectDetails
}
  @module("@aws-sdk/client-awsmobilehubservice") @new external new_: (Js.Promise.t<request>) => t = "DescribeProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProject = {
  type t;
  type request = {
@as("snapshotId") snapshotId: snapshotId,
@as("contents") contents: contents,
@as("region") region: projectRegion,
@as("name") name: projectName
}
  type response = {
@as("details") details: projectDetails
}
  @module("@aws-sdk/client-awsmobilehubservice") @new external new_: (Js.Promise.t<request>) => t = "CreateProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
