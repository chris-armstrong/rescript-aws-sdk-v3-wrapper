type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type userID = string
type score = float;
type recommendationID = string
type numResults = int;
type itemID = string
type filterAttributeValue = string
type filterAttributeName = string
type errorMessage = string
type attributeValue = string
type attributeName = string
type arn = string
type predictedItem = {
@as("score") score: score,
@as("itemId") itemId: itemID
}
type inputList = array<itemID>
type filterValues = Js.Dict.t< filterAttributeValue>
type context = Js.Dict.t< attributeValue>
type itemList = array<predictedItem>
type clientType;
@module("@aws-sdk/client-personalize") @new external createClient: unit => clientType = "PersonalizeRuntimeClient";
module GetRecommendations = {
  type t;
  type request = {
@as("filterValues") filterValues: filterValues,
@as("filterArn") filterArn: arn,
@as("context") context: context,
@as("numResults") numResults: numResults,
@as("userId") userId: userID,
@as("itemId") itemId: itemID,
@as("campaignArn") campaignArn: option<arn>
}
  type response = {
@as("recommendationId") recommendationId: recommendationID,
@as("itemList") itemList: itemList
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "GetRecommendationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPersonalizedRanking = {
  type t;
  type request = {
@as("filterValues") filterValues: filterValues,
@as("filterArn") filterArn: arn,
@as("context") context: context,
@as("userId") userId: option<userID>,
@as("inputList") inputList: option<inputList>,
@as("campaignArn") campaignArn: option<arn>
}
  type response = {
@as("recommendationId") recommendationId: recommendationID,
@as("personalizedRanking") personalizedRanking: itemList
}
  @module("@aws-sdk/client-personalize") @new external new_: (Js.Promise.t<request>) => t = "GetPersonalizedRankingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
