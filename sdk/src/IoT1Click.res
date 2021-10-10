type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-iot1click") @new
external createClient: unit => awsServiceClient = "IoT1ClickClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type time = Js.Date.t
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
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>An object providing summary information for a particular placement.</p>")
type placementSummary = {
  @ocaml.doc("<p>The date when the placement was last updated, in UNIX epoch time format. If the placement
      was not updated, then <code>createdDate</code> and <code>updatedDate</code> are the
      same.</p>")
  updatedDate: time,
  @ocaml.doc(
    "<p>The date when the placement was originally created, in UNIX epoch time format.</p>"
  )
  createdDate: time,
  @ocaml.doc("<p>The name of the placement being summarized.</p>") placementName: placementName,
  @ocaml.doc("<p>The name of the project containing the placement.</p>") projectName: projectName,
}
type placementAttributeMap = Js.Dict.t<attributeValue>
type deviceMap = Js.Dict.t<deviceId>
type deviceCallbackOverrideMap = Js.Dict.t<deviceCallbackValue>
type defaultPlacementAttributeMap = Js.Dict.t<attributeDefaultValue>
@ocaml.doc("<p>An object providing summary information for a particular project for an associated AWS
      account and region.</p>")
type projectSummary = {
  @ocaml.doc("<p>The tags (metadata key/value pairs) associated with the project.</p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>The date when the project was last updated, in UNIX epoch time format. If the project was
      not updated, then <code>createdDate</code> and <code>updatedDate</code> are the same.</p>")
  updatedDate: time,
  @ocaml.doc("<p>The date when the project was originally created, in UNIX epoch time format.</p>")
  createdDate: time,
  @ocaml.doc("<p>The name of the project being summarized.</p>") projectName: projectName,
  @ocaml.doc("<p>The ARN of the project.</p>") arn: option<projectArn>,
}
type placementSummaryList = array<placementSummary>
@ocaml.doc("<p>An object describing a project's placement.</p>")
type placementDescription = {
  @ocaml.doc("<p>The date when the placement was last updated, in UNIX epoch time format. If the placement
      was not updated, then <code>createdDate</code> and <code>updatedDate</code> are the
      same.</p>")
  updatedDate: time,
  @ocaml.doc("<p>The date when the placement was initially created, in UNIX epoch time format.</p>")
  createdDate: time,
  @ocaml.doc("<p>The user-defined attributes associated with the placement.</p>")
  attributes: placementAttributeMap,
  @ocaml.doc("<p>The name of the placement.</p>") placementName: placementName,
  @ocaml.doc("<p>The name of the project containing the placement.</p>") projectName: projectName,
}
@ocaml.doc(
  "<p>An object representing a device for a placement template (see <a>PlacementTemplate</a>).</p>"
)
type deviceTemplate = {
  @ocaml.doc("<p>An optional Lambda function to invoke instead of the default Lambda function provided by
      the placement template.</p>")
  callbackOverrides: option<deviceCallbackOverrideMap>,
  @ocaml.doc("<p>The device type, which currently must be <code>\"button\"</code>.</p>")
  deviceType: option<deviceType>,
}
type projectSummaryList = array<projectSummary>
type deviceTemplateMap = Js.Dict.t<deviceTemplate>
@ocaml.doc("<p>An object defining the template for a placement.</p>")
type placementTemplate = {
  @ocaml.doc("<p>An object specifying the <a>DeviceTemplate</a> for all placements using this
        (<a>PlacementTemplate</a>) template.</p>")
  deviceTemplates: option<deviceTemplateMap>,
  @ocaml.doc("<p>The default attributes (key/value pairs) to be applied to all placements using this
      template.</p>")
  defaultAttributes: option<defaultPlacementAttributeMap>,
}
@ocaml.doc("<p>An object providing detailed information for a particular project associated with an AWS
      account and region.</p>")
type projectDescription = {
  @ocaml.doc("<p>The tags (metadata key/value pairs) associated with the project.</p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>An object describing the project's placement specifications.</p>")
  placementTemplate: option<placementTemplate>,
  @ocaml.doc("<p>The date when the project was last updated, in UNIX epoch time format. If the project was
      not updated, then <code>createdDate</code> and <code>updatedDate</code> are the same.</p>")
  updatedDate: time,
  @ocaml.doc("<p>The date when the project was originally created, in UNIX epoch time format.</p>")
  createdDate: time,
  @ocaml.doc("<p>The description of the project.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the project for which to obtain information from.</p>")
  projectName: projectName,
  @ocaml.doc("<p>The ARN of the project.</p>") arn: option<projectArn>,
}
@ocaml.doc("<p>The AWS IoT 1-Click Projects API Reference</p>")
module DisassociateDeviceFromPlacement = {
  type t
  type request = {
    @ocaml.doc("<p>The device ID that should be removed from the placement.</p>")
    deviceTemplateName: deviceTemplateName,
    @ocaml.doc("<p>The name of the placement that the device should be removed from.</p>")
    placementName: placementName,
    @ocaml.doc("<p>The name of the project that contains the placement.</p>")
    projectName: projectName,
  }

  @module("@aws-sdk/client-iot1click") @new
  external new: request => t = "DisassociateDeviceFromPlacementCommand"
  let make = (~deviceTemplateName, ~placementName, ~projectName, ()) =>
    new({
      deviceTemplateName: deviceTemplateName,
      placementName: placementName,
      projectName: projectName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteProject = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the empty project to delete.</p>") projectName: projectName,
  }

  @module("@aws-sdk/client-iot1click") @new external new: request => t = "DeleteProjectCommand"
  let make = (~projectName, ()) => new({projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePlacement = {
  type t
  type request = {
    @ocaml.doc("<p>The project containing the empty placement to delete.</p>")
    projectName: projectName,
    @ocaml.doc("<p>The name of the empty placement to delete.</p>") placementName: placementName,
  }

  @module("@aws-sdk/client-iot1click") @new external new: request => t = "DeletePlacementCommand"
  let make = (~projectName, ~placementName, ()) =>
    new({projectName: projectName, placementName: placementName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateDeviceWithPlacement = {
  type t
  type request = {
    @ocaml.doc("<p>The device template name to associate with the device ID.</p>")
    deviceTemplateName: deviceTemplateName,
    @ocaml.doc("<p>The ID of the physical device to be associated with the given placement in the project.
      Note that a mandatory 4 character prefix is required for all <code>deviceId</code>
      values.</p>")
    deviceId: deviceId,
    @ocaml.doc("<p>The name of the placement in which to associate the device.</p>")
    placementName: placementName,
    @ocaml.doc(
      "<p>The name of the project containing the placement in which to associate the device.</p>"
    )
    projectName: projectName,
  }

  @module("@aws-sdk/client-iot1click") @new
  external new: request => t = "AssociateDeviceWithPlacementCommand"
  let make = (~deviceTemplateName, ~deviceId, ~placementName, ~projectName, ()) =>
    new({
      deviceTemplateName: deviceTemplateName,
      deviceId: deviceId,
      placementName: placementName,
      projectName: projectName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdatePlacement = {
  type t
  type request = {
    @ocaml.doc("<p>The user-defined object of attributes used to update the placement. The maximum number of
      key/value pairs is 50.</p>")
    attributes: option<placementAttributeMap>,
    @ocaml.doc("<p>The name of the project containing the placement to be updated.</p>")
    projectName: projectName,
    @ocaml.doc("<p>The name of the placement to update.</p>") placementName: placementName,
  }

  @module("@aws-sdk/client-iot1click") @new external new: request => t = "UpdatePlacementCommand"
  let make = (~projectName, ~placementName, ~attributes=?, ()) =>
    new({attributes: attributes, projectName: projectName, placementName: placementName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The keys of those tags which you want to remove.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the resource whose tag you want to remove.</p>")
    resourceArn: projectArn,
  }

  @module("@aws-sdk/client-iot1click") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The new or modifying tag(s) for the resource. See <a href=\"https://docs.aws.amazon.com/iot-1-click/latest/developerguide/1click-appendix.html#1click-limits\">AWS IoT 1-Click Service Limits</a> for the maximum number of tags allowed per
      resource.</p>")
    tags: tagMap,
    @ocaml.doc("<p>The ARN of the resouce for which tag(s) should be added or modified.</p>")
    resourceArn: projectArn,
  }

  @module("@aws-sdk/client-iot1click") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource whose tags you want to list.</p>")
    resourceArn: projectArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The tags (metadata key/value pairs) which you have assigned to the resource.</p>"
    )
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-iot1click") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDevicesInPlacement = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the placement to get the devices from.</p>")
    placementName: placementName,
    @ocaml.doc("<p>The name of the project containing the placement.</p>") projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>An object containing the devices (zero or more) within the placement.</p>")
    devices: deviceMap,
  }
  @module("@aws-sdk/client-iot1click") @new
  external new: request => t = "GetDevicesInPlacementCommand"
  let make = (~placementName, ~projectName, ()) =>
    new({placementName: placementName, projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePlacement = {
  type t
  type request = {
    @ocaml.doc("<p>Optional user-defined key/value pairs providing contextual data (such as location or
      function) for the placement.</p>")
    attributes: option<placementAttributeMap>,
    @ocaml.doc("<p>The name of the project in which to create the placement.</p>")
    projectName: projectName,
    @ocaml.doc("<p>The name of the placement to be created.</p>") placementName: placementName,
  }

  @module("@aws-sdk/client-iot1click") @new external new: request => t = "CreatePlacementCommand"
  let make = (~projectName, ~placementName, ~attributes=?, ()) =>
    new({attributes: attributes, projectName: projectName, placementName: placementName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListPlacements = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per request. If not set, a default value of 100 is
      used.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to retrieve the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The project containing the placements to be listed.</p>")
    projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>The token used to retrieve the next set of results - will be effectively empty if there
      are no further results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An object listing the requested placements.</p>")
    placements: placementSummaryList,
  }
  @module("@aws-sdk/client-iot1click") @new external new: request => t = "ListPlacementsCommand"
  let make = (~projectName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePlacement = {
  type t
  type request = {
    @ocaml.doc("<p>The project containing the placement to be described.</p>")
    projectName: projectName,
    @ocaml.doc("<p>The name of the placement within a project.</p>") placementName: placementName,
  }
  type response = {
    @ocaml.doc("<p>An object describing the placement.</p>") placement: placementDescription,
  }
  @module("@aws-sdk/client-iot1click") @new external new: request => t = "DescribePlacementCommand"
  let make = (~projectName, ~placementName, ()) =>
    new({projectName: projectName, placementName: placementName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProjects = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per request. If not set, a default value of 100 is
      used.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to retrieve the next set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The token used to retrieve the next set of results - will be effectively empty if there
      are no further results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An object containing the list of projects.</p>") projects: projectSummaryList,
  }
  @module("@aws-sdk/client-iot1click") @new external new: request => t = "ListProjectsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProject = {
  type t
  type request = {
    @ocaml.doc("<p>An object defining the project update. Once a project has been created, you cannot add
      device template names to the project. However, for a given <code>placementTemplate</code>, you
      can update the associated <code>callbackOverrides</code> for the device definition using this
      API.</p>")
    placementTemplate: option<placementTemplate>,
    @ocaml.doc("<p>An optional user-defined description for the project.</p>")
    description: option<description>,
    @ocaml.doc("<p>The name of the project to be updated.</p>") projectName: projectName,
  }

  @module("@aws-sdk/client-iot1click") @new external new: request => t = "UpdateProjectCommand"
  let make = (~projectName, ~placementTemplate=?, ~description=?, ()) =>
    new({placementTemplate: placementTemplate, description: description, projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateProject = {
  type t
  type request = {
    @ocaml.doc("<p>Optional tags (metadata key/value pairs) to be associated with the project. For example,
        <code>{ {\"key1\": \"value1\", \"key2\": \"value2\"} }</code>. For more information, see <a href=\"https://aws.amazon.com/answers/account-management/aws-tagging-strategies/\">AWS Tagging
        Strategies</a>.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The schema defining the placement to be created. A placement template defines placement
      default attributes and device templates. You cannot add or remove device templates after the
      project has been created. However, you can update <code>callbackOverrides</code> for the
      device templates using the <code>UpdateProject</code> API.</p>")
    placementTemplate: option<placementTemplate>,
    @ocaml.doc("<p>An optional description for the project.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the project to create.</p>") projectName: projectName,
  }

  @module("@aws-sdk/client-iot1click") @new external new: request => t = "CreateProjectCommand"
  let make = (~projectName, ~tags=?, ~placementTemplate=?, ~description=?, ()) =>
    new({
      tags: tags,
      placementTemplate: placementTemplate,
      description: description,
      projectName: projectName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeProject = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the project to be described.</p>") projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>An object describing the project.</p>") project: projectDescription,
  }
  @module("@aws-sdk/client-iot1click") @new external new: request => t = "DescribeProjectCommand"
  let make = (~projectName, ()) => new({projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
