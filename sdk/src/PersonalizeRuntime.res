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
external createClient: unit => awsServiceClient = "PersonalizeRuntimeClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
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
@ocaml.doc("<p>An object that identifies an item.</p>
         <p>The  and  APIs return a list of
      <code>PredictedItem</code>s.</p>")
type predictedItem = {
  @ocaml.doc("<p>A numeric representation of the model's certainty that the item will be the next user
      selection. For more information on scoring logic, see <a>how-scores-work</a>.</p>")
  score: option<score>,
  @ocaml.doc("<p>The recommended item ID.</p>") itemId: option<itemID>,
}
type inputList = array<itemID>
type filterValues = Js.Dict.t<filterAttributeValue>
type context = Js.Dict.t<attributeValue>
type itemList = array<predictedItem>
@ocaml.doc("<p></p>")
module GetRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>The values to use when filtering recommendations. For each placeholder parameter in your filter expression, provide the parameter name (in matching case)
      as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma.
    </p> 
         <p>For filter expressions that use an <code>INCLUDE</code> element to include items,
    you must provide values for all parameters that are defined in the expression. For
    filters with expressions that use an <code>EXCLUDE</code> element to exclude items, you
      can omit the <code>filter-values</code>.In this case, Amazon Personalize doesn't use that portion of
    the expression to filter recommendations.</p>
         <p>For more information, see
      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filter.html\">Filtering Recommendations</a>.</p>")
    filterValues: option<filterValues>,
    @ocaml.doc("<p>The ARN of the filter to apply to the returned recommendations. For more information, see
      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filter.html\">Filtering Recommendations</a>.</p>
         <p>When using this parameter, be sure the filter resource is <code>ACTIVE</code>.</p>")
    filterArn: option<arn>,
    @ocaml.doc("<p>The contextual metadata to use when getting recommendations. Contextual metadata includes
      any interaction information that might be relevant when getting a user's recommendations, such
      as the user's current location or device type.</p>")
    context: option<context>,
    @ocaml.doc("<p>The number of results to return. The default is 25. The maximum is 500.</p>")
    numResults: option<numResults>,
    @ocaml.doc("<p>The user ID to provide recommendations for.</p>
         <p>Required for <code>USER_PERSONALIZATION</code> recipe type.</p>")
    userId: option<userID>,
    @ocaml.doc("<p>The item ID to provide recommendations for.</p>
         <p>Required for <code>RELATED_ITEMS</code> recipe type.</p>")
    itemId: option<itemID>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the campaign to use for getting recommendations.</p>"
    )
    campaignArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ID of the recommendation.</p>") recommendationId: option<recommendationID>,
    @ocaml.doc("<p>A list of recommendations sorted in ascending order by prediction score. There can be a
      maximum of 500 items in the list.</p>")
    itemList: option<itemList>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "GetRecommendationsCommand"
  let make = (
    ~campaignArn,
    ~filterValues=?,
    ~filterArn=?,
    ~context=?,
    ~numResults=?,
    ~userId=?,
    ~itemId=?,
    (),
  ) =>
    new({
      filterValues: filterValues,
      filterArn: filterArn,
      context: context,
      numResults: numResults,
      userId: userId,
      itemId: itemId,
      campaignArn: campaignArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPersonalizedRanking = {
  type t
  type request = {
    @ocaml.doc("<p>The values to use when filtering recommendations. For each placeholder parameter in your filter expression, provide the parameter name (in matching case)
      as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma.
    </p> 
         <p>For filter expressions that use an <code>INCLUDE</code> element to include items,
      you must provide values for all parameters that are defined in the expression. For
      filters with expressions that use an <code>EXCLUDE</code> element to exclude items, you
      can omit the <code>filter-values</code>.In this case, Amazon Personalize doesn't use that portion of
      the expression to filter recommendations.</p>
         <p>For more information, see
      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filter.html\">Filtering Recommendations</a>.</p>")
    filterValues: option<filterValues>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a filter you created to include items or exclude items from recommendations for a given user. 
      For more information, see
      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filter.html\">Filtering Recommendations</a>.</p>")
    filterArn: option<arn>,
    @ocaml.doc("<p>The contextual metadata to use when getting recommendations. Contextual metadata includes
      any interaction information that might be relevant when getting a user's recommendations, such
      as the user's current location or device type.</p>")
    context: option<context>,
    @ocaml.doc("<p>The user for which you want the campaign to provide a personalized ranking.</p>")
    userId: userID,
    @ocaml.doc("<p>A list of items (by <code>itemId</code>) to rank. If an item was not included in the training dataset,
      the item is appended to the end of the reranked list. The maximum is 500.</p>")
    inputList: inputList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the campaign to use for generating the personalized
      ranking.</p>")
    campaignArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ID of the recommendation.</p>") recommendationId: option<recommendationID>,
    @ocaml.doc(
      "<p>A list of items in order of most likely interest to the user. The maximum is 500.</p>"
    )
    personalizedRanking: option<itemList>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "GetPersonalizedRankingCommand"
  let make = (~userId, ~inputList, ~campaignArn, ~filterValues=?, ~filterArn=?, ~context=?, ()) =>
    new({
      filterValues: filterValues,
      filterArn: filterArn,
      context: context,
      userId: userId,
      inputList: inputList,
      campaignArn: campaignArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
