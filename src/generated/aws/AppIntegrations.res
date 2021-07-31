type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-app-integrations") @new external createClient: unit => awsServiceClient = "AppIntegrationsClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
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
type eventFilter = {
@as("Source") source: source
}
type clientAssociationMetadata = Js.Dict.t<nonBlankString>
type eventIntegrationAssociation = {
@as("ClientAssociationMetadata") clientAssociationMetadata: option<clientAssociationMetadata>,
  @as("EventBridgeRuleName") eventBridgeRuleName: option<eventBridgeRuleName>,
  @as("ClientId") clientId: option<clientId>,
  @as("EventIntegrationName") eventIntegrationName: option<name>,
  @as("EventIntegrationAssociationId") eventIntegrationAssociationId: option<uuid>,
  @as("EventIntegrationAssociationArn") eventIntegrationAssociationArn: option<arn>
}
type eventIntegration = {
@as("Tags") tags: option<tagMap>,
  @as("EventBridgeBus") eventBridgeBus: option<eventBridgeBus>,
  @as("EventFilter") eventFilter: option<eventFilter>,
  @as("Description") description: option<description>,
  @as("Name") name: option<name>,
  @as("EventIntegrationArn") eventIntegrationArn: option<arn>
}
type eventIntegrationsList = array<eventIntegration>
type eventIntegrationAssociationsList = array<eventIntegrationAssociation>

module UpdateEventIntegration = {
  type t;
  type request = {
@as("Description") description: option<description>,
  @as("Name") name: name
}
  type response = unit
  @module("@aws-sdk/client-app-integrations") @new external new_: (request) => t = "UpdateEventIntegrationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteEventIntegration = {
  type t;
  type request = {
@as("Name") name: name
}
  type response = unit
  @module("@aws-sdk/client-app-integrations") @new external new_: (request) => t = "DeleteEventIntegrationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
  resourceArn: arn
}
  type response = unit
  @module("@aws-sdk/client-app-integrations") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagMap,
  resourceArn: arn
}
  type response = unit
  @module("@aws-sdk/client-app-integrations") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: arn
}
  type response = {
tags: option<tagMap>
}
  @module("@aws-sdk/client-app-integrations") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEventIntegration = {
  type t;
  type request = {
@as("Name") name: name
}
  type response = {
@as("Tags") tags: option<tagMap>,
  @as("EventFilter") eventFilter: option<eventFilter>,
  @as("EventBridgeBus") eventBridgeBus: option<eventBridgeBus>,
  @as("EventIntegrationArn") eventIntegrationArn: option<arn>,
  @as("Description") description: option<description>,
  @as("Name") name: option<name>
}
  @module("@aws-sdk/client-app-integrations") @new external new_: (request) => t = "GetEventIntegrationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateEventIntegration = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
  @as("ClientToken") clientToken: option<idempotencyToken>,
  @as("EventBridgeBus") eventBridgeBus: eventBridgeBus,
  @as("EventFilter") eventFilter: eventFilter,
  @as("Description") description: option<description>,
  @as("Name") name: name
}
  type response = {
@as("EventIntegrationArn") eventIntegrationArn: option<arn>
}
  @module("@aws-sdk/client-app-integrations") @new external new_: (request) => t = "CreateEventIntegrationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEventIntegrations = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("EventIntegrations") eventIntegrations: option<eventIntegrationsList>
}
  @module("@aws-sdk/client-app-integrations") @new external new_: (request) => t = "ListEventIntegrationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEventIntegrationAssociations = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("EventIntegrationName") eventIntegrationName: name
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("EventIntegrationAssociations") eventIntegrationAssociations: option<eventIntegrationAssociationsList>
}
  @module("@aws-sdk/client-app-integrations") @new external new_: (request) => t = "ListEventIntegrationAssociationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
