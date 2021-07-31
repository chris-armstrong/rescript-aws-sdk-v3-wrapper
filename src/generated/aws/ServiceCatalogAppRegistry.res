type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type syncAction = [@as("NO_ACTION") #NO_ACTION | @as("START_SYNC") #START_SYNC]
type amazonawsString = string
type stackArn = string
type resourceType = [@as("CFN_STACK") #CFN_STACK]
type resourceSpecifier = string
type nextToken = string
type name = string
type maxResults = int;
type description = string
type clientToken = string
type attributes = string
type attributeGroupSpecifier = string
type attributeGroupId = string
type attributeGroupArn = string
type associationCount = int;
type arn = string
type applicationSpecifier = string
type applicationId = string
type applicationArn = string
type tags = Js.Dict.t< tagValue>
type tagKeys = array<tagKey>
type resourceInfo = {
@as("arn") arn: stackArn,
@as("name") name: resourceSpecifier
}
type attributeGroupSummary = {
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("description") description: description,
@as("name") name: name,
@as("arn") arn: attributeGroupArn,
@as("id") id: attributeGroupId
}
type attributeGroupIds = array<attributeGroupId>
type applicationSummary = {
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("description") description: description,
@as("name") name: name,
@as("arn") arn: applicationArn,
@as("id") id: applicationId
}
type resources = array<resourceInfo>
type attributeGroupSummaries = array<attributeGroupSummary>
type attributeGroup = {
@as("tags") tags: tags,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("description") description: description,
@as("name") name: name,
@as("arn") arn: attributeGroupArn,
@as("id") id: attributeGroupId
}
type applicationSummaries = array<applicationSummary>
type application = {
@as("tags") tags: tags,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("description") description: description,
@as("name") name: name,
@as("arn") arn: applicationArn,
@as("id") id: applicationId
}
type clientType;
@module("@aws-sdk/client-servicecatalog") @new external createClient: unit => clientType = "ServiceCatalogAppRegistryClient";
module SyncResource = {
  type t;
  type request = {
@as("resource") resource: option<resourceSpecifier>,
@as("resourceType") resourceType: option<resourceType>
}
  type response = {
@as("actionTaken") actionTaken: syncAction,
@as("resourceArn") resourceArn: arn,
@as("applicationArn") applicationArn: applicationArn
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "SyncResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateResource = {
  type t;
  type request = {
@as("resource") resource: option<resourceSpecifier>,
@as("resourceType") resourceType: option<resourceType>,
@as("application") application: option<applicationSpecifier>
}
  type response = {
@as("resourceArn") resourceArn: arn,
@as("applicationArn") applicationArn: applicationArn
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "DisassociateResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateAttributeGroup = {
  type t;
  type request = {
@as("attributeGroup") attributeGroup: option<attributeGroupSpecifier>,
@as("application") application: option<applicationSpecifier>
}
  type response = {
@as("attributeGroupArn") attributeGroupArn: attributeGroupArn,
@as("applicationArn") applicationArn: applicationArn
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "DisassociateAttributeGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateResource = {
  type t;
  type request = {
@as("resource") resource: option<resourceSpecifier>,
@as("resourceType") resourceType: option<resourceType>,
@as("application") application: option<applicationSpecifier>
}
  type response = {
@as("resourceArn") resourceArn: arn,
@as("applicationArn") applicationArn: applicationArn
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "AssociateResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateAttributeGroup = {
  type t;
  type request = {
@as("attributeGroup") attributeGroup: option<attributeGroupSpecifier>,
@as("application") application: option<applicationSpecifier>
}
  type response = {
@as("attributeGroupArn") attributeGroupArn: attributeGroupArn,
@as("applicationArn") applicationArn: applicationArn
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "AssociateAttributeGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeys>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tags>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<arn>
}
  type response = {
@as("tags") tags: tags
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssociatedAttributeGroups = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("application") application: option<applicationSpecifier>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("attributeGroups") attributeGroups: attributeGroupIds
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "ListAssociatedAttributeGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAttributeGroup = {
  type t;
  type request = {
@as("attributeGroup") attributeGroup: option<attributeGroupSpecifier>
}
  type response = {
@as("tags") tags: tags,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("attributes") attributes: attributes,
@as("description") description: description,
@as("name") name: name,
@as("arn") arn: attributeGroupArn,
@as("id") id: attributeGroupId
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "GetAttributeGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApplication = {
  type t;
  type request = {
@as("application") application: option<applicationSpecifier>
}
  type response = {
@as("tags") tags: tags,
@as("associatedResourceCount") associatedResourceCount: associationCount,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("description") description: description,
@as("name") name: name,
@as("arn") arn: applicationArn,
@as("id") id: applicationId
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "GetApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAttributeGroup = {
  type t;
  type request = {
@as("attributeGroup") attributeGroup: option<attributeGroupSpecifier>
}
  type response = {
@as("attributeGroup") attributeGroup: attributeGroupSummary
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "DeleteAttributeGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApplication = {
  type t;
  type request = {
@as("application") application: option<applicationSpecifier>
}
  type response = {
@as("application") application: applicationSummary
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "DeleteApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAttributeGroup = {
  type t;
  type request = {
@as("attributes") attributes: attributes,
@as("description") description: description,
@as("name") name: name,
@as("attributeGroup") attributeGroup: option<attributeGroupSpecifier>
}
  type response = {
@as("attributeGroup") attributeGroup: attributeGroup
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "UpdateAttributeGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApplication = {
  type t;
  type request = {
@as("description") description: description,
@as("name") name: name,
@as("application") application: option<applicationSpecifier>
}
  type response = {
@as("application") application: application
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "UpdateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAttributeGroups = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("attributeGroups") attributeGroups: attributeGroupSummaries
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "ListAttributeGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssociatedResources = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("application") application: option<applicationSpecifier>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("resources") resources: resources
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "ListAssociatedResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApplications = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("applications") applications: applicationSummaries
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "ListApplicationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAttributeGroup = {
  type t;
  type request = {
@as("clientToken") clientToken: option<clientToken>,
@as("tags") tags: tags,
@as("attributes") attributes: option<attributes>,
@as("description") description: description,
@as("name") name: option<name>
}
  type response = {
@as("attributeGroup") attributeGroup: attributeGroup
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "CreateAttributeGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApplication = {
  type t;
  type request = {
@as("clientToken") clientToken: option<clientToken>,
@as("tags") tags: tags,
@as("description") description: description,
@as("name") name: option<name>
}
  type response = {
@as("application") application: application
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (Js.Promise.t<request>) => t = "CreateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
