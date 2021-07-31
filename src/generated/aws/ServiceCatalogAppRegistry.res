type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type boolean_ = bool
type integer_ = int
type long = float
type timestamp_ = Js.Date.t;
type tagValue = string
type tagKey = string
type syncAction = [@as("NO_ACTION") #NOACTION | @as("START_SYNC") #STARTSYNC]
type string_ = string
type stackArn = string
type resourceType = [@as("CFN_STACK") #CFNSTACK]
type resourceSpecifier = string
type nextToken = string
type name = string
type maxResults = int
type description = string
type clientToken = string
type attributes = string
type attributeGroupSpecifier = string
type attributeGroupId = string
type attributeGroupArn = string
type associationCount = int
type arn = string
type applicationSpecifier = string
type applicationId = string
type applicationArn = string
type tags = Js.Dict.t< tagValue>
type tagKeys = array<tagKey>
type resourceInfo = {
arn: option<stackArn>,
name: option<resourceSpecifier>
}
type attributeGroupSummary = {
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
description: option<description>,
name: option<name>,
arn: option<attributeGroupArn>,
id: option<attributeGroupId>
}
type attributeGroupIds = array<attributeGroupId>
type applicationSummary = {
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
description: option<description>,
name: option<name>,
arn: option<applicationArn>,
id: option<applicationId>
}
type resources = array<resourceInfo>
type attributeGroupSummaries = array<attributeGroupSummary>
type attributeGroup = {
tags: option<tags>,
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
description: option<description>,
name: option<name>,
arn: option<attributeGroupArn>,
id: option<attributeGroupId>
}
type applicationSummaries = array<applicationSummary>
type application = {
tags: option<tags>,
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
description: option<description>,
name: option<name>,
arn: option<applicationArn>,
id: option<applicationId>
}
type awsServiceClient;
@module("@aws-sdk/client-servicecatalog") @new external createClient: unit => awsServiceClient = "ServiceCatalogAppRegistryClient";
module SyncResource = {
  type t;
  type request = {
resource: resourceSpecifier,
resourceType: resourceType
}
  type response = {
actionTaken: option<syncAction>,
resourceArn: option<arn>,
applicationArn: option<applicationArn>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "SyncResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateResource = {
  type t;
  type request = {
resource: resourceSpecifier,
resourceType: resourceType,
application: applicationSpecifier
}
  type response = {
resourceArn: option<arn>,
applicationArn: option<applicationArn>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DisassociateResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateAttributeGroup = {
  type t;
  type request = {
attributeGroup: attributeGroupSpecifier,
application: applicationSpecifier
}
  type response = {
attributeGroupArn: option<attributeGroupArn>,
applicationArn: option<applicationArn>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DisassociateAttributeGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateResource = {
  type t;
  type request = {
resource: resourceSpecifier,
resourceType: resourceType,
application: applicationSpecifier
}
  type response = {
resourceArn: option<arn>,
applicationArn: option<applicationArn>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "AssociateResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateAttributeGroup = {
  type t;
  type request = {
attributeGroup: attributeGroupSpecifier,
application: applicationSpecifier
}
  type response = {
attributeGroupArn: option<attributeGroupArn>,
applicationArn: option<applicationArn>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "AssociateAttributeGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeys,
resourceArn: arn
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tags,
resourceArn: arn
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: arn
}
  type response = {
tags: option<tags>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAssociatedAttributeGroups = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
application: applicationSpecifier
}
  type response = {
nextToken: option<nextToken>,
attributeGroups: option<attributeGroupIds>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListAssociatedAttributeGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAttributeGroup = {
  type t;
  type request = {
attributeGroup: attributeGroupSpecifier
}
  type response = {
tags: option<tags>,
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
attributes: option<attributes>,
description: option<description>,
name: option<name>,
arn: option<attributeGroupArn>,
id: option<attributeGroupId>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "GetAttributeGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetApplication = {
  type t;
  type request = {
application: applicationSpecifier
}
  type response = {
tags: option<tags>,
associatedResourceCount: option<associationCount>,
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
description: option<description>,
name: option<name>,
arn: option<applicationArn>,
id: option<applicationId>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "GetApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAttributeGroup = {
  type t;
  type request = {
attributeGroup: attributeGroupSpecifier
}
  type response = {
attributeGroup: option<attributeGroupSummary>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeleteAttributeGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApplication = {
  type t;
  type request = {
application: applicationSpecifier
}
  type response = {
application: option<applicationSummary>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeleteApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAttributeGroup = {
  type t;
  type request = {
attributes: option<attributes>,
description: option<description>,
name: option<name>,
attributeGroup: attributeGroupSpecifier
}
  type response = {
attributeGroup: option<attributeGroup>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdateAttributeGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApplication = {
  type t;
  type request = {
description: option<description>,
name: option<name>,
application: applicationSpecifier
}
  type response = {
application: option<application>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdateApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAttributeGroups = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
attributeGroups: option<attributeGroupSummaries>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListAttributeGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAssociatedResources = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
application: applicationSpecifier
}
  type response = {
nextToken: option<nextToken>,
resources: option<resources>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListAssociatedResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListApplications = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
applications: option<applicationSummaries>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListApplicationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAttributeGroup = {
  type t;
  type request = {
clientToken: clientToken,
tags: option<tags>,
attributes: attributes,
description: option<description>,
name: name
}
  type response = {
attributeGroup: option<attributeGroup>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreateAttributeGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateApplication = {
  type t;
  type request = {
clientToken: clientToken,
tags: option<tags>,
description: option<description>,
name: name
}
  type response = {
application: option<application>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreateApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
