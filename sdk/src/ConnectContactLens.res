type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-connect") @new
external createClient: unit => awsServiceClient = "ConnectContactLensClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type transcriptId = string
type transcriptContent = string
type sentimentValue = [
  | @as("NEGATIVE") #NEGATIVE
  | @as("NEUTRAL") #NEUTRAL
  | @as("POSITIVE") #POSITIVE
]
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
@ocaml.doc("<p>The section of the contact audio where that category rule was detected.</p>")
type pointOfInterest = {
  @ocaml.doc("<p>The ending offset in milliseconds where the category rule was detected.</p>")
  @as("EndOffsetMillis")
  endOffsetMillis: offsetMillis,
  @ocaml.doc("<p>The beginning offset in milliseconds where the category rule was detected.</p>")
  @as("BeginOffsetMillis")
  beginOffsetMillis: offsetMillis,
}
type matchedCategories = array<categoryName>
@ocaml.doc(
  "<p>For characters that were detected as issues, where they occur in the transcript.</p>"
)
type characterOffsets = {
  @ocaml.doc("<p>The end of the issue.</p>") @as("EndOffsetChar") endOffsetChar: characterOffset,
  @ocaml.doc("<p>The beginning of the issue.</p>") @as("BeginOffsetChar")
  beginOffsetChar: characterOffset,
}
type pointsOfInterest = array<pointOfInterest>
@ocaml.doc("<p>Potential issues that are detected based on an artificial intelligence analysis of each
      turn in the conversation.</p>")
type issueDetected = {
  @ocaml.doc("<p>The offset for when the issue was detected in the segment.</p>")
  @as("CharacterOffsets")
  characterOffsets: characterOffsets,
}
type issuesDetected = array<issueDetected>
@ocaml.doc("<p>Provides information about the category rule that was matched.</p>")
type categoryDetails = {
  @ocaml.doc("<p>The section of audio where the category rule was detected.</p>")
  @as("PointsOfInterest")
  pointsOfInterest: pointsOfInterest,
}
@ocaml.doc("<p>A list of messages in the session.</p>")
type transcript = {
  @ocaml.doc("<p>List of positions where issues were detected on the transcript.</p>")
  @as("IssuesDetected")
  issuesDetected: option<issuesDetected>,
  @ocaml.doc("<p>The sentiment of the detected for this piece of transcript.</p>") @as("Sentiment")
  sentiment: sentimentValue,
  @ocaml.doc("<p>The end offset in the contact for this transcript.</p>") @as("EndOffsetMillis")
  endOffsetMillis: offsetMillis,
  @ocaml.doc("<p>The beginning offset in the contact for this transcript.</p>")
  @as("BeginOffsetMillis")
  beginOffsetMillis: offsetMillis,
  @ocaml.doc("<p>The content of the transcript.</p>") @as("Content") content: transcriptContent,
  @ocaml.doc("<p>The role of participant. For example, is it a customer, agent, or system.</p>")
  @as("ParticipantRole")
  participantRole: participantRole,
  @ocaml.doc("<p>The identifier of the participant.</p>") @as("ParticipantId")
  participantId: participantId,
  @ocaml.doc("<p>The identifier of the transcript.</p>") @as("Id") id: transcriptId,
}
type matchedDetails = Js.Dict.t<categoryDetails>
@ocaml.doc("<p>Provides the category rules that are used to automatically categorize contacts based on
      uttered keywords and phrases.</p>")
type categories = {
  @ocaml.doc("<p>The category rule that was matched and when it occurred in the transcript.</p>")
  @as("MatchedDetails")
  matchedDetails: matchedDetails,
  @ocaml.doc("<p>The category rules that have been matched in the analyzed segment.</p>")
  @as("MatchedCategories")
  matchedCategories: matchedCategories,
}
@ocaml.doc("<p>An analyzed segment for a real-time analysis session.</p>")
type realtimeContactAnalysisSegment = {
  @ocaml.doc("<p>The matched category rules.</p>") @as("Categories") categories: option<categories>,
  @ocaml.doc("<p>The analyzed transcript.</p>") @as("Transcript") transcript: option<transcript>,
}
type realtimeContactAnalysisSegments = array<realtimeContactAnalysisSegment>
@ocaml.doc("<p>Contact Lens for Amazon Connect enables you to analyze conversations between customer and agents,
      by using speech transcription, natural language processing, and intelligent search
      capabilities. It performs sentiment analysis, detects issues, and enables you to automatically
      categorize contacts.</p>
         <p>Contact Lens for Amazon Connect provides both real-time and post-call analytics of customer-agent
      conversations. For more information, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/analyze-conversations.html\">Analyze conversations using
        Contact Lens</a> in the <i>Amazon Connect Administrator Guide</i>. </p>")
module ListRealtimeContactAnalysisSegments = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximimum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The identifier of the contact.</p>") @as("ContactId") contactId: contactId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>If there are additional results, this is the token for the next set of results. If response includes <code>nextToken</code> there are two possible scenarios:</p>
         <ul>
            <li>
               <p>There are more segments so another call is required to get them.</p>
            </li>
            <li>
               <p>There are no more segments at this time, but more may be available later (real-time
          analysis is in progress) so the client should call the operation again to get new
          segments.</p>
            </li>
         </ul>
         <p>If response does not include <code>nextToken</code>, the analysis is completed (successfully or failed) and there are no more segments to retrieve.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An analyzed transcript or category.</p>") @as("Segments")
    segments: realtimeContactAnalysisSegments,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "ListRealtimeContactAnalysisSegmentsCommand"
  let make = (~contactId, ~instanceId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, contactId, instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
