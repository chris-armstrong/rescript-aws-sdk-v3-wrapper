type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type userId = string
type synthesizedJsonUserProperties = string
type synthesizedJsonItemProperties = string
type synthesizedJsonEventPropertiesJSON = string
type stringType = string
type recommendationId = string
type itemId = string
type floatType = float;
type errorMessage = string
type date = Js.Date.t;
type arn = string
type user = {
@as("properties") properties: synthesizedJsonUserProperties,
@as("userId") userId: option<stringType>
}
type item = {
@as("properties") properties: synthesizedJsonItemProperties,
@as("itemId") itemId: option<stringType>
}
type impression = array<itemId>
type userList = array<user>
type itemList = array<item>
type event = {
@as("impression") impression: impression,
@as("recommendationId") recommendationId: recommendationId,
@as("sentAt") sentAt: option<date>,
@as("properties") properties: synthesizedJsonEventPropertiesJSON,
@as("itemId") itemId: itemId,
@as("eventValue") eventValue: floatType,
@as("eventType") eventType: option<stringType>,
@as("eventId") eventId: stringType
}
type eventList = array<event>
type clientType;
@module("@aws-sdk/client-personalize") @new external createClient: unit => clientType = "PersonalizeEventsClient";
module PutUsers = {
  type t;
  type request = {
@as("users") users: option<userList>,
@as("datasetArn") datasetArn: option<arn>
}
  
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "PutUsersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutItems = {
  type t;
  type request = {
@as("items") items: option<itemList>,
@as("datasetArn") datasetArn: option<arn>
}
  
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "PutItemsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutEvents = {
  type t;
  type request = {
@as("eventList") eventList: option<eventList>,
@as("sessionId") sessionId: option<stringType>,
@as("userId") userId: userId,
@as("trackingId") trackingId: option<stringType>
}
  
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "PutEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}
