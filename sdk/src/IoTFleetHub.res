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
@ocaml.doc("<p>A summary of information about a AWS IoT Device Management web application.</p>
         <note>
            <p>Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.</p>
         </note>")
type applicationSummary = {
  @ocaml.doc("<p>The current state of the web application.</p>")
  applicationState: option<applicationState>,
  @ocaml.doc("<p>The date (in Unix epoch time) when the web application was last updated.</p>")
  applicationLastUpdateDate: option<timestamp_>,
  @ocaml.doc("<p>The date (in Unix epoch time) when the web application was created.</p>")
  applicationCreationDate: option<timestamp_>,
  @ocaml.doc("<p>The URL of the web application.</p>") applicationUrl: url,
  @ocaml.doc("<p>An optional description of the web application.</p>")
  applicationDescription: option<description>,
  @ocaml.doc("<p>The name of the web application.</p>") applicationName: name,
  @ocaml.doc("<p>The unique Id of the web application.</p>") applicationId: id,
}
type applicationSummaries = array<applicationSummary>
@ocaml.doc("<p>With Fleet Hub for AWS IoT Device Management you can build stand-alone web applications for monitoring the health of your device fleets.</p>
         <note>
            <p>Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.</p>
         </note>")
module UpdateApplication = {
  type t
  type request = {
    @ocaml.doc("<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
      Don't reuse this client token if a new idempotent request is required.</p>")
    clientToken: option<clientRequestToken>,
    @ocaml.doc("<p>An optional description of the web application.</p>")
    applicationDescription: option<description>,
    @ocaml.doc("<p>The name of the web application.</p>") applicationName: option<name>,
    @ocaml.doc("<p>The unique Id of the web application.</p>") applicationId: id,
  }

  @module("@aws-sdk/client-iotfleethub") @new
  external new: request => t = "UpdateApplicationCommand"
  let make = (~applicationId, ~clientToken=?, ~applicationDescription=?, ~applicationName=?, ()) =>
    new({
      clientToken: clientToken,
      applicationDescription: applicationDescription,
      applicationName: applicationName,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApplication = {
  type t
  type request = {
    @ocaml.doc("<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
      Don't reuse this client token if a new idempotent request is required.</p>")
    clientToken: option<clientRequestToken>,
    @ocaml.doc("<p>The unique Id of the web application.</p>") applicationId: id,
  }

  @module("@aws-sdk/client-iotfleethub") @new
  external new: request => t = "DeleteApplicationCommand"
  let make = (~applicationId, ~clientToken=?, ()) =>
    new({clientToken: clientToken, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of the keys of the tags to be removed from the resource.</p>")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the resource.</p>") resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-iotfleethub") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The new or modified tags for the resource.</p>") tags: tagMap,
    @ocaml.doc("<p>The ARN of the resource.</p>") resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-iotfleethub") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the resource.</p>") resourceArn: resourceArn}
  type response = {
    @ocaml.doc("<p>The list of tags assigned to the resource.</p>") tags: option<tagMap>,
  }
  @module("@aws-sdk/client-iotfleethub") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeApplication = {
  type t
  type request = {@ocaml.doc("<p>The unique Id of the web application.</p>") applicationId: id}
  type response = {
    @ocaml.doc(
      "<p>A set of key/value pairs that you can use to manage the web application resource.</p>"
    )
    tags: option<tagMap>,
    @ocaml.doc("<p>A message indicating why the <code>DescribeApplication</code> API failed.</p>")
    errorMessage: option<errorMessage>,
    @ocaml.doc(
      "<p>The Id of the single sign-on client that you use to authenticate and authorize users on the web application.</p>"
    )
    ssoClientId: option<ssoClientId>,
    @ocaml.doc(
      "<p>The ARN of the role that the web application assumes when it interacts with AWS IoT Core.</p>"
    )
    roleArn: arn,
    @ocaml.doc("<p>The date (in Unix epoch time) when the application was last updated.</p>")
    applicationLastUpdateDate: timestamp_,
    @ocaml.doc("<p>The date (in Unix epoch time) when the application was created.</p>")
    applicationCreationDate: timestamp_,
    @ocaml.doc("<p>The current state of the web application.</p>")
    applicationState: applicationState,
    @ocaml.doc("<p>The URL of the web application.</p>") applicationUrl: url,
    @ocaml.doc("<p>An optional description of the web application.</p>")
    applicationDescription: option<description>,
    @ocaml.doc("<p>The name of the web application.</p>") applicationName: name,
    @ocaml.doc("<p>The ARN of the web application.</p>") applicationArn: arn,
    @ocaml.doc("<p>The unique Id of the web application.</p>") applicationId: id,
  }
  @module("@aws-sdk/client-iotfleethub") @new
  external new: request => t = "DescribeApplicationCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApplication = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A set of key/value pairs that you can use to manage the web application resource.</p>"
    )
    tags: option<tagMap>,
    @ocaml.doc("<p>The ARN of the role that the web application assumes when it interacts with AWS IoT Core.</p>
         <note>
            <p>The name of the role must be in the form <code>AWSIotFleetHub_<i>random_string</i>
               </code>.</p>
         </note>")
    roleArn: arn,
    @ocaml.doc("<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
      Don't reuse this client token if a new idempotent request is required.</p>")
    clientToken: option<clientRequestToken>,
    @ocaml.doc("<p>An optional description of the web application.</p>")
    applicationDescription: option<description>,
    @ocaml.doc("<p>The name of the web application.</p>") applicationName: name,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the web application.</p>") applicationArn: arn,
    @ocaml.doc("<p>The unique Id of the web application.</p>") applicationId: id,
  }
  @module("@aws-sdk/client-iotfleethub") @new
  external new: request => t = "CreateApplicationCommand"
  let make = (~roleArn, ~applicationName, ~tags=?, ~clientToken=?, ~applicationDescription=?, ()) =>
    new({
      tags: tags,
      roleArn: roleArn,
      clientToken: clientToken,
      applicationDescription: applicationDescription,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplications = {
  type t
  type request = {
    @ocaml.doc("<p>A token used to get the next set of results.</p>") nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A token used to get the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>An array of objects that provide summaries of information about the web applications in the list.</p>"
    )
    applicationSummaries: option<applicationSummaries>,
  }
  @module("@aws-sdk/client-iotfleethub") @new external new: request => t = "ListApplicationsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
