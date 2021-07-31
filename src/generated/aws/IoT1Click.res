type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type time = Js.Date.t;
type tagValue = string
type tagKey = string
type projectName = string
type projectArn = string
type placementName = string
type nextToken = string
type message = string
type maxResults = int;
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
@as("updatedDate") updatedDate: option<time>,
@as("createdDate") createdDate: option<time>,
@as("placementName") placementName: option<placementName>,
@as("projectName") projectName: option<projectName>
}
type placementAttributeMap = Js.Dict.t< attributeValue>
type deviceMap = Js.Dict.t< deviceId>
type deviceCallbackOverrideMap = Js.Dict.t< deviceCallbackValue>
type defaultPlacementAttributeMap = Js.Dict.t< attributeDefaultValue>
type projectSummary = {
@as("tags") tags: tagMap,
@as("updatedDate") updatedDate: option<time>,
@as("createdDate") createdDate: option<time>,
@as("projectName") projectName: option<projectName>,
@as("arn") arn: projectArn
}
type placementSummaryList = array<placementSummary>
type placementDescription = {
@as("updatedDate") updatedDate: option<time>,
@as("createdDate") createdDate: option<time>,
@as("attributes") attributes: option<placementAttributeMap>,
@as("placementName") placementName: option<placementName>,
@as("projectName") projectName: option<projectName>
}
type deviceTemplate = {
@as("callbackOverrides") callbackOverrides: deviceCallbackOverrideMap,
@as("deviceType") deviceType: deviceType
}
type projectSummaryList = array<projectSummary>
type deviceTemplateMap = Js.Dict.t< deviceTemplate>
type placementTemplate = {
@as("deviceTemplates") deviceTemplates: deviceTemplateMap,
@as("defaultAttributes") defaultAttributes: defaultPlacementAttributeMap
}
type projectDescription = {
@as("tags") tags: tagMap,
@as("placementTemplate") placementTemplate: placementTemplate,
@as("updatedDate") updatedDate: option<time>,
@as("createdDate") createdDate: option<time>,
@as("description") description: description,
@as("projectName") projectName: option<projectName>,
@as("arn") arn: projectArn
}
type clientType;
@module("@aws-sdk/client-iot1click") @new external createClient: unit => clientType = "IoT1ClickClient";
module DisassociateDeviceFromPlacement = {
  type t;
  type request = {
@as("deviceTemplateName") deviceTemplateName: option<deviceTemplateName>,
@as("placementName") placementName: option<placementName>,
@as("projectName") projectName: option<projectName>
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "DisassociateDeviceFromPlacementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProject = {
  type t;
  type request = {
@as("projectName") projectName: option<projectName>
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "DeleteProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePlacement = {
  type t;
  type request = {
@as("projectName") projectName: option<projectName>,
@as("placementName") placementName: option<placementName>
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "DeletePlacementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateDeviceWithPlacement = {
  type t;
  type request = {
@as("deviceTemplateName") deviceTemplateName: option<deviceTemplateName>,
@as("deviceId") deviceId: option<deviceId>,
@as("placementName") placementName: option<placementName>,
@as("projectName") projectName: option<projectName>
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "AssociateDeviceWithPlacementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePlacement = {
  type t;
  type request = {
@as("attributes") attributes: placementAttributeMap,
@as("projectName") projectName: option<projectName>,
@as("placementName") placementName: option<placementName>
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "UpdatePlacementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<projectArn>
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<projectArn>
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<projectArn>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDevicesInPlacement = {
  type t;
  type request = {
@as("placementName") placementName: option<placementName>,
@as("projectName") projectName: option<projectName>
}
  type response = {
@as("devices") devices: option<deviceMap>
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "GetDevicesInPlacementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePlacement = {
  type t;
  type request = {
@as("attributes") attributes: placementAttributeMap,
@as("projectName") projectName: option<projectName>,
@as("placementName") placementName: option<placementName>
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "CreatePlacementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPlacements = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("projectName") projectName: option<projectName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("placements") placements: option<placementSummaryList>
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "ListPlacementsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePlacement = {
  type t;
  type request = {
@as("projectName") projectName: option<projectName>,
@as("placementName") placementName: option<placementName>
}
  type response = {
@as("placement") placement: option<placementDescription>
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "DescribePlacementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProjects = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("projects") projects: option<projectSummaryList>
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "ListProjectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateProject = {
  type t;
  type request = {
@as("placementTemplate") placementTemplate: placementTemplate,
@as("description") description: description,
@as("projectName") projectName: option<projectName>
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "UpdateProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProject = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("placementTemplate") placementTemplate: placementTemplate,
@as("description") description: description,
@as("projectName") projectName: option<projectName>
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "CreateProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProject = {
  type t;
  type request = {
@as("projectName") projectName: option<projectName>
}
  type response = {
@as("project") project: option<projectDescription>
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "DescribeProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
