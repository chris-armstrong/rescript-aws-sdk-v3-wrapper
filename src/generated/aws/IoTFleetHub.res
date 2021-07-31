type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-iotfleethub") @new
external createClient: unit => awsServiceClient = "IoTFleetHubClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type url = string
type timestamp_ = float
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
type applicationState = [
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("ACTIVE") #ACTIVE
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
]
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type applicationSummary = {
  applicationState: option<applicationState>,
  applicationLastUpdateDate: option<timestamp_>,
  applicationCreationDate: option<timestamp_>,
  applicationUrl: url,
  applicationDescription: option<description>,
  applicationName: name,
  applicationId: id,
}
type applicationSummaries = array<applicationSummary>

module UpdateApplication = {
  type t
  type request = {
    clientToken: option<clientRequestToken>,
    applicationDescription: option<description>,
    applicationName: option<name>,
    applicationId: id,
  }
  type response = unit
  @module("@aws-sdk/client-iotfleethub") @new
  external new_: request => t = "UpdateApplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteApplication = {
  type t
  type request = {
    clientToken: option<clientRequestToken>,
    applicationId: id,
  }
  type response = unit
  @module("@aws-sdk/client-iotfleethub") @new
  external new_: request => t = "DeleteApplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeyList,
    resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-iotfleethub") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagMap,
    resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-iotfleethub") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {resourceArn: resourceArn}
  type response = {tags: option<tagMap>}
  @module("@aws-sdk/client-iotfleethub") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeApplication = {
  type t
  type request = {applicationId: id}
  type response = {
    tags: option<tagMap>,
    errorMessage: option<errorMessage>,
    ssoClientId: option<ssoClientId>,
    roleArn: arn,
    applicationLastUpdateDate: timestamp_,
    applicationCreationDate: timestamp_,
    applicationState: applicationState,
    applicationUrl: url,
    applicationDescription: option<description>,
    applicationName: name,
    applicationArn: arn,
    applicationId: id,
  }
  @module("@aws-sdk/client-iotfleethub") @new
  external new_: request => t = "DescribeApplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApplication = {
  type t
  type request = {
    tags: option<tagMap>,
    roleArn: arn,
    clientToken: option<clientRequestToken>,
    applicationDescription: option<description>,
    applicationName: name,
  }
  type response = {
    applicationArn: arn,
    applicationId: id,
  }
  @module("@aws-sdk/client-iotfleethub") @new
  external new_: request => t = "CreateApplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplications = {
  type t
  type request = {nextToken: option<nextToken>}
  type response = {
    nextToken: option<nextToken>,
    applicationSummaries: option<applicationSummaries>,
  }
  @module("@aws-sdk/client-iotfleethub") @new
  external new_: request => t = "ListApplicationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
