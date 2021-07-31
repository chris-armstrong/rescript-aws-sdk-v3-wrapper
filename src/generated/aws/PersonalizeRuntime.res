type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-personalize") @new external createClient: unit => awsServiceClient = "PersonalizeRuntimeClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type userID = string
type score = float
type recommendationID = string
type numResults = int
type itemID = string
type filterAttributeValue = string
type filterAttributeName = string
type errorMessage = string
type attributeValue = string
type attributeName = string
type arn = string
type predictedItem = {
score: option<score>,
  itemId: option<itemID>
}
type inputList = array<itemID>
type filterValues = Js.Dict.t<filterAttributeValue>
type context = Js.Dict.t<attributeValue>
type itemList = array<predictedItem>

module GetRecommendations = {
  type t;
  type request = {
filterValues: option<filterValues>,
  filterArn: option<arn>,
  context: option<context>,
  numResults: option<numResults>,
  userId: option<userID>,
  itemId: option<itemID>,
  campaignArn: arn
}
  type response = {
recommendationId: option<recommendationID>,
  itemList: option<itemList>
}
  @module("@aws-sdk/client-personalize") @new external new_: (request) => t = "GetRecommendationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetPersonalizedRanking = {
  type t;
  type request = {
filterValues: option<filterValues>,
  filterArn: option<arn>,
  context: option<context>,
  userId: userID,
  inputList: inputList,
  campaignArn: arn
}
  type response = {
recommendationId: option<recommendationID>,
  personalizedRanking: option<itemList>
}
  @module("@aws-sdk/client-personalize") @new external new_: (request) => t = "GetPersonalizedRankingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
