type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-app-integrations") @new
external createClient: unit => awsServiceClient = "AppIntegrationsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type uuid = string
type tagValue = string
type tagKey = string
type source = string
type nonBlankString = string
type nextToken = string
type name = string
type message = string
type maxResults = int
type idempotencyToken = string
type eventBridgeRuleName = string
type eventBridgeBus = string
type description = string
type clientId = string
type arn = string
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>The Amazon AppIntegrations APIs are in preview release and are subject to change.</p> 
         <p>The event filter.</p>")
type eventFilter = {@ocaml.doc("<p>The source of the events.</p>") @as("Source") source: source}
type clientAssociationMetadata = Js.Dict.t<nonBlankString>
@ocaml.doc("<p>The Amazon AppIntegrations APIs are in preview release and are subject to change.</p> 
         <p>The event integration association.</p>")
type eventIntegrationAssociation = {
  @ocaml.doc("<p>The metadata associated with the client.</p>") @as("ClientAssociationMetadata")
  clientAssociationMetadata: option<clientAssociationMetadata>,
  @ocaml.doc("<p>The name of the Eventbridge rule.</p>") @as("EventBridgeRuleName")
  eventBridgeRuleName: option<eventBridgeRuleName>,
  @ocaml.doc("<p>The identifier for the client that is associated with the event integration.</p>")
  @as("ClientId")
  clientId: option<clientId>,
  @ocaml.doc("<p>The name of the event integration.</p>") @as("EventIntegrationName")
  eventIntegrationName: option<name>,
  @ocaml.doc("<p>The identifier for the event integration association.</p>")
  @as("EventIntegrationAssociationId")
  eventIntegrationAssociationId: option<uuid>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the event integration association.</p>")
  @as("EventIntegrationAssociationArn")
  eventIntegrationAssociationArn: option<arn>,
}
@ocaml.doc("<p>The Amazon AppIntegrations APIs are in preview release and are subject to change.</p> 
         <p>The event integration.</p>")
type eventIntegration = {
  @ocaml.doc("<p>The tags.</p>") @as("Tags") tags: option<tagMap>,
  @ocaml.doc("<p>The Amazon Eventbridge bus for the event integration.</p>") @as("EventBridgeBus")
  eventBridgeBus: option<eventBridgeBus>,
  @ocaml.doc("<p>The event integration filter.</p>") @as("EventFilter")
  eventFilter: option<eventFilter>,
  @ocaml.doc("<p>The event integration description.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The name of the event integration.</p>") @as("Name") name: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the event integration.</p>")
  @as("EventIntegrationArn")
  eventIntegrationArn: option<arn>,
}
type eventIntegrationsList = array<eventIntegration>
type eventIntegrationAssociationsList = array<eventIntegrationAssociation>
@ocaml.doc("<p>The Amazon AppIntegrations APIs are in preview release and are subject to change.</p> 
  
         <p>The Amazon AppIntegrations service enables you to configure and reuse connections to external applications.</p>
         <p>For information about how you can use external applications with Amazon Connect, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/crm.html\">Set up pre-built integrations</a> in the <i>Amazon Connect Administrator Guide</i>.</p>")
module UpdateEventIntegration = {
  type t
  type request = {
    @ocaml.doc("<p>The description of the event inegration.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the event integration.</p>") @as("Name") name: name,
  }

  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "UpdateEventIntegrationCommand"
  let make = (~name, ~description=?, ()) => new({description: description, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEventIntegration = {
  type t
  type request = {@ocaml.doc("<p>The name of the event integration.</p>") @as("Name") name: name}

  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "DeleteEventIntegrationCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") resourceArn: arn,
  }

  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags. </p>") tags: tagMap,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") resourceArn: arn,
  }

  @module("@aws-sdk/client-app-integrations") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource. </p>") resourceArn: arn,
  }
  type response = {@ocaml.doc("<p>Information about the tags.</p>") tags: option<tagMap>}
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEventIntegration = {
  type t
  type request = {@ocaml.doc("<p>The name of the event integration. </p>") @as("Name") name: name}
  type response = {
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The event filter.</p>") @as("EventFilter") eventFilter: option<eventFilter>,
    @ocaml.doc("<p>The Eventbridge bus.</p>") @as("EventBridgeBus")
    eventBridgeBus: option<eventBridgeBus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the event integration.</p>")
    @as("EventIntegrationArn")
    eventIntegrationArn: option<arn>,
    @ocaml.doc("<p>The description of the event integration.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the event integration. </p>") @as("Name") name: option<name>,
  }
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "GetEventIntegrationCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEventIntegration = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
      request.</p>")
    @as("ClientToken")
    clientToken: option<idempotencyToken>,
    @ocaml.doc("<p>The Eventbridge bus.</p>") @as("EventBridgeBus") eventBridgeBus: eventBridgeBus,
    @ocaml.doc("<p>The event filter.</p>") @as("EventFilter") eventFilter: eventFilter,
    @ocaml.doc("<p>The description of the event integration.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the event integration.</p>") @as("Name") name: name,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the event integration. </p>")
    @as("EventIntegrationArn")
    eventIntegrationArn: option<arn>,
  }
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "CreateEventIntegrationCommand"
  let make = (~eventBridgeBus, ~eventFilter, ~name, ~tags=?, ~clientToken=?, ~description=?, ()) =>
    new({
      tags: tags,
      clientToken: clientToken,
      eventBridgeBus: eventBridgeBus,
      eventFilter: eventFilter,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEventIntegrations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The event integrations.</p>") @as("EventIntegrations")
    eventIntegrations: option<eventIntegrationsList>,
  }
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "ListEventIntegrationsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEventIntegrationAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the event integration. </p>") @as("EventIntegrationName")
    eventIntegrationName: name,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The event integration associations.</p>") @as("EventIntegrationAssociations")
    eventIntegrationAssociations: option<eventIntegrationAssociationsList>,
  }
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "ListEventIntegrationAssociationsCommand"
  let make = (~eventIntegrationName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, eventIntegrationName: eventIntegrationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
