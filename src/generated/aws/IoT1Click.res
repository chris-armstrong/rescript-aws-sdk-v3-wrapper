type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type time = Js.Date.t;
type tagValue = string
type tagKey = string
type projectName = string
type projectArn = string
type placementName = string
type nextToken = string
type message = string
type maxResults = int
type deviceType = string
type deviceTemplateName = string
type deviceId = string
type deviceCallbackValue = string
type deviceCallbackKey = string
type description = string
type code = string
type attributeValue = string
type attributeName = string
type attributeDefaultValue = string
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type placementSummary = {
updatedDate: time,
createdDate: time,
placementName: placementName,
projectName: projectName
}
type placementAttributeMap = Js.Dict.t< attributeValue>
type deviceMap = Js.Dict.t< deviceId>
type deviceCallbackOverrideMap = Js.Dict.t< deviceCallbackValue>
type defaultPlacementAttributeMap = Js.Dict.t< attributeDefaultValue>
type projectSummary = {
tags: option<tagMap>,
updatedDate: time,
createdDate: time,
projectName: projectName,
arn: option<projectArn>
}
type placementSummaryList = array<placementSummary>
type placementDescription = {
updatedDate: time,
createdDate: time,
attributes: placementAttributeMap,
placementName: placementName,
projectName: projectName
}
type deviceTemplate = {
callbackOverrides: option<deviceCallbackOverrideMap>,
deviceType: option<deviceType>
}
type projectSummaryList = array<projectSummary>
type deviceTemplateMap = Js.Dict.t< deviceTemplate>
type placementTemplate = {
deviceTemplates: option<deviceTemplateMap>,
defaultAttributes: option<defaultPlacementAttributeMap>
}
type projectDescription = {
tags: option<tagMap>,
placementTemplate: option<placementTemplate>,
updatedDate: time,
createdDate: time,
description: option<description>,
projectName: projectName,
arn: option<projectArn>
}
type awsServiceClient;
@module("@aws-sdk/client-iot1click") @new external createClient: unit => awsServiceClient = "IoT1ClickClient";
module DisassociateDeviceFromPlacement = {
  type t;
  type request = {
deviceTemplateName: deviceTemplateName,
placementName: placementName,
projectName: projectName
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "DisassociateDeviceFromPlacementCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteProject = {
  type t;
  type request = {
projectName: projectName
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "DeleteProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeletePlacement = {
  type t;
  type request = {
projectName: projectName,
placementName: placementName
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "DeletePlacementCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateDeviceWithPlacement = {
  type t;
  type request = {
deviceTemplateName: deviceTemplateName,
deviceId: deviceId,
placementName: placementName,
projectName: projectName
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "AssociateDeviceWithPlacementCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdatePlacement = {
  type t;
  type request = {
attributes: option<placementAttributeMap>,
projectName: projectName,
placementName: placementName
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "UpdatePlacementCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
resourceArn: projectArn
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagMap,
resourceArn: projectArn
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: projectArn
}
  type response = {
tags: option<tagMap>
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDevicesInPlacement = {
  type t;
  type request = {
placementName: placementName,
projectName: projectName
}
  type response = {
devices: deviceMap
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "GetDevicesInPlacementCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePlacement = {
  type t;
  type request = {
attributes: option<placementAttributeMap>,
projectName: projectName,
placementName: placementName
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "CreatePlacementCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPlacements = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
projectName: projectName
}
  type response = {
nextToken: option<nextToken>,
placements: placementSummaryList
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "ListPlacementsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePlacement = {
  type t;
  type request = {
projectName: projectName,
placementName: placementName
}
  type response = {
placement: placementDescription
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "DescribePlacementCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListProjects = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
projects: projectSummaryList
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "ListProjectsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateProject = {
  type t;
  type request = {
placementTemplate: option<placementTemplate>,
description: option<description>,
projectName: projectName
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "UpdateProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateProject = {
  type t;
  type request = {
tags: option<tagMap>,
placementTemplate: option<placementTemplate>,
description: option<description>,
projectName: projectName
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "CreateProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeProject = {
  type t;
  type request = {
projectName: projectName
}
  type response = {
project: projectDescription
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "DescribeProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
