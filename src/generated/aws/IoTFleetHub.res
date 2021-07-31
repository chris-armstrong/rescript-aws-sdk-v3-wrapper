type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type url = string
type amazonawsTimestamp = float;
type tagValue = string
type tagKey = string
type ssoClientId = string
type resourceArn = string
type nextToken = string
type name = string
type id = string
type errorMessage = string
type description = string
type clientRequestToken = string
type arn = string
type applicationState = [@as("DELETE_FAILED") #DELETE_FAILED | @as("CREATE_FAILED") #CREATE_FAILED | @as("ACTIVE") #ACTIVE | @as("DELETING") #DELETING | @as("CREATING") #CREATING]
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type applicationSummary = {
@as("applicationState") applicationState: applicationState,
@as("applicationLastUpdateDate") applicationLastUpdateDate: amazonawsTimestamp,
@as("applicationCreationDate") applicationCreationDate: amazonawsTimestamp,
@as("applicationUrl") applicationUrl: option<url>,
@as("applicationDescription") applicationDescription: description,
@as("applicationName") applicationName: option<name>,
@as("applicationId") applicationId: option<id>
}
type applicationSummaries = array<applicationSummary>
type clientType;
@module("@aws-sdk/client-iotfleethub") @new external createClient: unit => clientType = "IoTFleetHubClient";
module UpdateApplication = {
  type t;
  type request = {
@as("clientToken") clientToken: clientRequestToken,
@as("applicationDescription") applicationDescription: description,
@as("applicationName") applicationName: name,
@as("applicationId") applicationId: option<id>
}
  type response = unit
  @module("@aws-sdk/client-iotfleethub") @new external new_: (Js.Promise.t<request>) => t = "UpdateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApplication = {
  type t;
  type request = {
@as("clientToken") clientToken: clientRequestToken,
@as("applicationId") applicationId: option<id>
}
  type response = unit
  @module("@aws-sdk/client-iotfleethub") @new external new_: (Js.Promise.t<request>) => t = "DeleteApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-iotfleethub") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-iotfleethub") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-iotfleethub") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeApplication = {
  type t;
  type request = {
@as("applicationId") applicationId: option<id>
}
  type response = {
@as("tags") tags: tagMap,
@as("errorMessage") errorMessage: errorMessage,
@as("ssoClientId") ssoClientId: ssoClientId,
@as("roleArn") roleArn: option<arn>,
@as("applicationLastUpdateDate") applicationLastUpdateDate: option<amazonawsTimestamp>,
@as("applicationCreationDate") applicationCreationDate: option<amazonawsTimestamp>,
@as("applicationState") applicationState: option<applicationState>,
@as("applicationUrl") applicationUrl: option<url>,
@as("applicationDescription") applicationDescription: description,
@as("applicationName") applicationName: option<name>,
@as("applicationArn") applicationArn: option<arn>,
@as("applicationId") applicationId: option<id>
}
  @module("@aws-sdk/client-iotfleethub") @new external new_: (Js.Promise.t<request>) => t = "DescribeApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApplication = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("roleArn") roleArn: option<arn>,
@as("clientToken") clientToken: clientRequestToken,
@as("applicationDescription") applicationDescription: description,
@as("applicationName") applicationName: option<name>
}
  type response = {
@as("applicationArn") applicationArn: option<arn>,
@as("applicationId") applicationId: option<id>
}
  @module("@aws-sdk/client-iotfleethub") @new external new_: (Js.Promise.t<request>) => t = "CreateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApplications = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("applicationSummaries") applicationSummaries: applicationSummaries
}
  @module("@aws-sdk/client-iotfleethub") @new external new_: (Js.Promise.t<request>) => t = "ListApplicationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
