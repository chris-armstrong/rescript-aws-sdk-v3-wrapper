type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type uUID = string
type tagValue = string
type tagKey = string
type source = string
type nonBlankString = string
type nextToken = string
type name = string
type message = string
type maxResults = int;
type idempotencyToken = string
type eventBridgeRuleName = string
type eventBridgeBus = string
type description = string
type clientId = string
type arn = string
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type eventFilter = {
@as("Source") source: option<source>
}
type clientAssociationMetadata = Js.Dict.t< nonBlankString>
type eventIntegrationAssociation = {
@as("ClientAssociationMetadata") clientAssociationMetadata: clientAssociationMetadata,
@as("EventBridgeRuleName") eventBridgeRuleName: eventBridgeRuleName,
@as("ClientId") clientId: clientId,
@as("EventIntegrationName") eventIntegrationName: name,
@as("EventIntegrationAssociationId") eventIntegrationAssociationId: uUID,
@as("EventIntegrationAssociationArn") eventIntegrationAssociationArn: arn
}
type eventIntegration = {
@as("Tags") tags: tagMap,
@as("EventBridgeBus") eventBridgeBus: eventBridgeBus,
@as("EventFilter") eventFilter: eventFilter,
@as("Description") description: description,
@as("Name") name: name,
@as("EventIntegrationArn") eventIntegrationArn: arn
}
type eventIntegrationsList = array<eventIntegration>
type eventIntegrationAssociationsList = array<eventIntegrationAssociation>
type clientType;
@module("@aws-sdk/client-app-integrations") @new external createClient: unit => clientType = "AppIntegrationsClient";
module UpdateEventIntegration = {
  type t;
  type request = {
@as("Description") description: description,
@as("Name") name: option<name>
}
  type response = unit
  @module("@aws-sdk/client-app-integrations") @new external new_: (Js.Promise.t<request>) => t = "UpdateEventIntegrationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEventIntegration = {
  type t;
  type request = {
@as("Name") name: option<name>
}
  type response = unit
  @module("@aws-sdk/client-app-integrations") @new external new_: (Js.Promise.t<request>) => t = "DeleteEventIntegrationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-app-integrations") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-app-integrations") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<arn>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-app-integrations") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEventIntegration = {
  type t;
  type request = {
@as("Name") name: option<name>
}
  type response = {
@as("Tags") tags: tagMap,
@as("EventFilter") eventFilter: eventFilter,
@as("EventBridgeBus") eventBridgeBus: eventBridgeBus,
@as("EventIntegrationArn") eventIntegrationArn: arn,
@as("Description") description: description,
@as("Name") name: name
}
  @module("@aws-sdk/client-app-integrations") @new external new_: (Js.Promise.t<request>) => t = "GetEventIntegrationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEventIntegration = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("ClientToken") clientToken: idempotencyToken,
@as("EventBridgeBus") eventBridgeBus: option<eventBridgeBus>,
@as("EventFilter") eventFilter: option<eventFilter>,
@as("Description") description: description,
@as("Name") name: option<name>
}
  type response = {
@as("EventIntegrationArn") eventIntegrationArn: arn
}
  @module("@aws-sdk/client-app-integrations") @new external new_: (Js.Promise.t<request>) => t = "CreateEventIntegrationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEventIntegrations = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("EventIntegrations") eventIntegrations: eventIntegrationsList
}
  @module("@aws-sdk/client-app-integrations") @new external new_: (Js.Promise.t<request>) => t = "ListEventIntegrationsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEventIntegrationAssociations = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("EventIntegrationName") eventIntegrationName: option<name>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("EventIntegrationAssociations") eventIntegrationAssociations: eventIntegrationAssociationsList
}
  @module("@aws-sdk/client-app-integrations") @new external new_: (Js.Promise.t<request>) => t = "ListEventIntegrationAssociationsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}
