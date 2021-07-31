type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-personalize") @new
external createClient: unit => awsServiceClient = "PersonalizeEventsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type userId = string
type synthesizedJsonUserProperties = string
type synthesizedJsonItemProperties = string
type synthesizedJsonEventPropertiesJSON = string
type stringType = string
type recommendationId = string
type itemId = string
type floatType = float
type errorMessage = string
type date = Js.Date.t
type arn = string
type user = {
  properties: option<synthesizedJsonUserProperties>,
  userId: stringType,
}
type item = {
  properties: option<synthesizedJsonItemProperties>,
  itemId: stringType,
}
type impression = array<itemId>
type userList = array<user>
type itemList = array<item>
type event = {
  impression: option<impression>,
  recommendationId: option<recommendationId>,
  sentAt: date,
  properties: option<synthesizedJsonEventPropertiesJSON>,
  itemId: option<itemId>,
  eventValue: option<floatType>,
  eventType: stringType,
  eventId: option<stringType>,
}
type eventList = array<event>

module PutUsers = {
  type t
  type request = {
    users: userList,
    datasetArn: arn,
  }

  @module("@aws-sdk/client-personalize") @new external new_: request => t = "PutUsersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutItems = {
  type t
  type request = {
    items: itemList,
    datasetArn: arn,
  }

  @module("@aws-sdk/client-personalize") @new external new_: request => t = "PutItemsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutEvents = {
  type t
  type request = {
    eventList: eventList,
    sessionId: stringType,
    userId: option<userId>,
    trackingId: stringType,
  }

  @module("@aws-sdk/client-personalize") @new external new_: request => t = "PutEventsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
