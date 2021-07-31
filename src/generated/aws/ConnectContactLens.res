type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type transcriptId = string
type transcriptContent = string
type sentimentValue = [@as("NEGATIVE") #NEGATIVE | @as("NEUTRAL") #NEUTRAL | @as("POSITIVE") #POSITIVE]
type participantRole = string
type participantId = string
type offsetMillis = int;
type nextToken = string
type message = string
type maxResults = int;
type instanceId = string
type contactId = string
type characterOffset = int;
type categoryName = string
type pointOfInterest = {
@as("EndOffsetMillis") endOffsetMillis: option<offsetMillis>,
@as("BeginOffsetMillis") beginOffsetMillis: option<offsetMillis>
}
type matchedCategories = array<categoryName>
type characterOffsets = {
@as("EndOffsetChar") endOffsetChar: option<characterOffset>,
@as("BeginOffsetChar") beginOffsetChar: option<characterOffset>
}
type pointsOfInterest = array<pointOfInterest>
type issueDetected = {
@as("CharacterOffsets") characterOffsets: option<characterOffsets>
}
type issuesDetected = array<issueDetected>
type categoryDetails = {
@as("PointsOfInterest") pointsOfInterest: option<pointsOfInterest>
}
type transcript = {
@as("IssuesDetected") issuesDetected: issuesDetected,
@as("Sentiment") sentiment: option<sentimentValue>,
@as("EndOffsetMillis") endOffsetMillis: option<offsetMillis>,
@as("BeginOffsetMillis") beginOffsetMillis: option<offsetMillis>,
@as("Content") content: option<transcriptContent>,
@as("ParticipantRole") participantRole: option<participantRole>,
@as("ParticipantId") participantId: option<participantId>,
@as("Id") id: option<transcriptId>
}
type matchedDetails = Js.Dict.t< categoryDetails>
type categories = {
@as("MatchedDetails") matchedDetails: option<matchedDetails>,
@as("MatchedCategories") matchedCategories: option<matchedCategories>
}
type realtimeContactAnalysisSegment = {
@as("Categories") categories: categories,
@as("Transcript") transcript: transcript
}
type realtimeContactAnalysisSegments = array<realtimeContactAnalysisSegment>
type clientType;
@module("@aws-sdk/client-connect") @new external createClient: unit => clientType = "ConnectContactLensClient";
module ListRealtimeContactAnalysisSegments = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("ContactId") contactId: option<contactId>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Segments") segments: option<realtimeContactAnalysisSegments>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListRealtimeContactAnalysisSegmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
