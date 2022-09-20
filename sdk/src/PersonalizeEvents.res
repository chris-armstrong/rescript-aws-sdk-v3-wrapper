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
@ocaml.doc("<p>Represents user metadata added to a Users dataset using the 
      <code>PutUsers</code> API. For more information see 
      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/importing-users.html\">Importing Users Incrementally</a>.</p>")
type user = {
  @ocaml.doc("<p>A string map of user-specific metadata. Each element in the map consists of a key-value pair. 
      For example, <code>{\"numberOfVideosWatched\": \"45\"}</code>.</p>
         <p>The keys use camel case names that match the fields in the schema for the Users
      dataset. In the previous example, the <code>numberOfVideosWatched</code> matches the
      'NUMBER_OF_VIDEOS_WATCHED' field defined in the Users schema. For categorical string data, 
      to include multiple categories for a single user, separate each category with a pipe separator (<code>|</code>). 
      For example, <code>\\\"Member|Frequent shopper\\\"</code>.</p>")
  properties: option<synthesizedJsonUserProperties>,
  @ocaml.doc("<p>The ID associated with the user.</p>") userId: stringType,
}
@ocaml.doc("<p>Represents item metadata added to an Items dataset using the 
      <code>PutItems</code> API. For more information see 
      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/importing-items.html\">Importing Items Incrementally</a>.
    </p>")
type item = {
  @ocaml.doc("<p>A string map of item-specific metadata. Each element in the map consists of a key-value pair. 
      For example, <code>{\"numberOfRatings\": \"12\"}</code>.</p>
         <p>The keys use camel case names that match the fields in the schema for the Items
      dataset. In the previous example, the <code>numberOfRatings</code> matches the
      'NUMBER_OF_RATINGS' field defined in the Items schema. For categorical string data, to include multiple categories for a single item, 
      separate each category with a pipe separator (<code>|</code>). For example, <code>\\\"Horror|Action\\\"</code>.</p>")
  properties: option<synthesizedJsonItemProperties>,
  @ocaml.doc("<p>The ID associated with the item.</p>") itemId: stringType,
}
type impression = array<itemId>
type userList = array<user>
type itemList = array<item>
@ocaml.doc("<p>Represents user interaction event information sent using the
      <code>PutEvents</code> API.</p>")
type event = {
  @ocaml.doc(
    "<p>A list of item IDs that represents the sequence of items you have shown the user. For example, <code>[\"itemId1\", \"itemId2\", \"itemId3\"]</code>.</p>"
  )
  impression: option<impression>,
  @ocaml.doc("<p>The ID of the recommendation.</p>") recommendationId: option<recommendationId>,
  @ocaml.doc("<p>The timestamp (in Unix time) on the client side when the event occurred.</p>")
  sentAt: date,
  @ocaml.doc("<p>A string map of event-specific data that you might choose to record. For example, if a
      user rates a movie on your site, other than movie ID (<code>itemId</code>) and rating (<code>eventValue</code>)
      , you might also send the number of movie ratings made by the user.</p>
         <p>Each item in the map consists of a key-value pair. For example,</p>
      
         <p>
            <code>{\"numberOfRatings\": \"12\"}</code>
         </p>
         <p>The keys use camel case names that match the fields in the Interactions
      schema. In the above example, the <code>numberOfRatings</code> would match the
      'NUMBER_OF_RATINGS' field defined in the Interactions schema.</p>")
  properties: option<synthesizedJsonEventPropertiesJSON>,
  @ocaml.doc(
    "<p>The item ID key that corresponds to the <code>ITEM_ID</code> field of the Interactions schema.</p>"
  )
  itemId: option<itemId>,
  @ocaml.doc(
    "<p>The event value that corresponds to the <code>EVENT_VALUE</code> field of the Interactions schema.</p>"
  )
  eventValue: option<floatType>,
  @ocaml.doc("<p>The type of event, such as click or download. This property corresponds to the <code>EVENT_TYPE</code>
      field of your Interactions schema and depends on the types of events you are tracking.</p>")
  eventType: stringType,
  @ocaml.doc("<p>An ID associated with the event. If an event ID is not provided, Amazon Personalize generates
      a unique ID for the event. An event ID is not used as an input to the model. Amazon Personalize uses
      the event ID to distinquish unique events. Any subsequent events after the first with the
      same event ID are not used in model training.</p>")
  eventId: option<stringType>,
}
type eventList = array<event>
@ocaml.doc("<p>Amazon Personalize can consume real-time user event data, such as <i>stream</i> or <i>click</i> data, and use
      it for model training either alone or combined with historical data. For more information see 
      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html\">Recording Events</a>.</p>")
module PutUsers = {
  type t
  type request = {
    @ocaml.doc("<p>A list of user data.</p>") users: userList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the Users dataset you are adding the user or users to.</p>"
    )
    datasetArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "PutUsersCommand"
  let make = (~users, ~datasetArn, ()) => new({users: users, datasetArn: datasetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutItems = {
  type t
  type request = {
    @ocaml.doc("<p>A list of item data.</p>") items: itemList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the Items dataset you are adding the item or items to.</p>"
    )
    datasetArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "PutItemsCommand"
  let make = (~items, ~datasetArn, ()) => new({items: items, datasetArn: datasetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutEvents = {
  type t
  type request = {
    @ocaml.doc("<p>A list of event data from the session.</p>") eventList: eventList,
    @ocaml.doc("<p>The session ID associated with the user's visit. Your application generates the sessionId when a user first visits your website or uses your application. 
      Amazon Personalize uses the sessionId to associate events with the user before they log in. For more information, see 
      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html\">Recording Events</a>.</p>")
    sessionId: stringType,
    @ocaml.doc("<p>The user associated with the event.</p>") userId: option<userId>,
    @ocaml.doc("<p>The tracking ID for the event.
      The ID is generated by a call to the
      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html\">CreateEventTracker</a> API.</p>")
    trackingId: stringType,
  }
  type response = {.}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "PutEventsCommand"
  let make = (~eventList, ~sessionId, ~trackingId, ~userId=?, ()) =>
    new({eventList: eventList, sessionId: sessionId, userId: userId, trackingId: trackingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
