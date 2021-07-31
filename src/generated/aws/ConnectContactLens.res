type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type transcriptId = string
type transcriptContent = string
type sentimentValue = [@as("NEGATIVE") #NEGATIVE | @as("NEUTRAL") #NEUTRAL | @as("POSITIVE") #POSITIVE]
type participantRole = string
type participantId = string
type offsetMillis = int
type nextToken = string
type message = string
type maxResults = int
type instanceId = string
type contactId = string
type characterOffset = int
type categoryName = string
type pointOfInterest = {
@as("EndOffsetMillis") endOffsetMillis: offsetMillis,
@as("BeginOffsetMillis") beginOffsetMillis: offsetMillis
}
type matchedCategories = array<categoryName>
type characterOffsets = {
@as("EndOffsetChar") endOffsetChar: characterOffset,
@as("BeginOffsetChar") beginOffsetChar: characterOffset
}
type pointsOfInterest = array<pointOfInterest>
type issueDetected = {
@as("CharacterOffsets") characterOffsets: characterOffsets
}
type issuesDetected = array<issueDetected>
type categoryDetails = {
@as("PointsOfInterest") pointsOfInterest: pointsOfInterest
}
type transcript = {
@as("IssuesDetected") issuesDetected: option<issuesDetected>,
@as("Sentiment") sentiment: sentimentValue,
@as("EndOffsetMillis") endOffsetMillis: offsetMillis,
@as("BeginOffsetMillis") beginOffsetMillis: offsetMillis,
@as("Content") content: transcriptContent,
@as("ParticipantRole") participantRole: participantRole,
@as("ParticipantId") participantId: participantId,
@as("Id") id: transcriptId
}
type matchedDetails = Js.Dict.t< categoryDetails>
type categories = {
@as("MatchedDetails") matchedDetails: matchedDetails,
@as("MatchedCategories") matchedCategories: matchedCategories
}
type realtimeContactAnalysisSegment = {
@as("Categories") categories: option<categories>,
@as("Transcript") transcript: option<transcript>
}
type realtimeContactAnalysisSegments = array<realtimeContactAnalysisSegment>
type awsServiceClient;
@module("@aws-sdk/client-connect") @new external createClient: unit => awsServiceClient = "ConnectContactLensClient";
module ListRealtimeContactAnalysisSegments = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("ContactId") contactId: contactId,
@as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Segments") segments: realtimeContactAnalysisSegments
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListRealtimeContactAnalysisSegmentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
