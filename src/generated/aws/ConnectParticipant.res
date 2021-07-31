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
type uploadMetadataUrl = string
type uploadMetadataSignedHeadersValue = string
type uploadMetadataSignedHeadersKey = string
type sortKey = [@as("ASCENDING") #ASCENDING | @as("DESCENDING") #DESCENDING]
type scanDirection = [@as("BACKWARD") #BACKWARD | @as("FORWARD") #FORWARD]
type reason = string
type preSignedConnectionUrl = string
type preSignedAttachmentUrl = string
type participantToken = string
type participantRole = [@as("SYSTEM") #SYSTEM | @as("CUSTOMER") #CUSTOMER | @as("AGENT") #AGENT]
type participantId = string
type nonEmptyClientToken = string
type nextToken = string
type mostRecent = int
type message = string
type maxResults = int
type instant = string
type iso8601Datetime = string
type displayName = string
type contentType = string
type contactId = string
type connectionType = [@as("CONNECTION_CREDENTIALS") #CONNECTIONCREDENTIALS | @as("WEBSOCKET") #WEBSOCKET]
type clientToken = string
type chatItemType = [@as("CONNECTION_ACK") #CONNECTIONACK | @as("ATTACHMENT") #ATTACHMENT | @as("EVENT") #EVENT | @as("MESSAGE") #MESSAGE | @as("TRANSFER_FAILED") #TRANSFERFAILED | @as("TRANSFER_SUCCEEDED") #TRANSFERSUCCEEDED | @as("CHAT_ENDED") #CHATENDED | @as("PARTICIPANT_LEFT") #PARTICIPANTLEFT | @as("PARTICIPANT_JOINED") #PARTICIPANTJOINED | @as("TYPING") #TYPING]
type chatItemId = string
type chatContentType = string
type chatContent = string
type attachmentSizeInBytes = float
type attachmentName = string
type artifactStatus = [@as("IN_PROGRESS") #INPROGRESS | @as("REJECTED") #REJECTED | @as("APPROVED") #APPROVED]
type artifactId = string
type websocket = {
@as("ConnectionExpiry") connectionExpiry: option<iso8601Datetime>,
@as("Url") url: option<preSignedConnectionUrl>
}
type uploadMetadataSignedHeaders = Js.Dict.t< uploadMetadataSignedHeadersValue>
type startPosition = {
@as("MostRecent") mostRecent: option<mostRecent>,
@as("AbsoluteTime") absoluteTime: option<instant>,
@as("Id") id: option<chatItemId>
}
type connectionTypeList = array<connectionType>
type connectionCredentials = {
@as("Expiry") expiry: option<iso8601Datetime>,
@as("ConnectionToken") connectionToken: option<participantToken>
}
type attachmentItem = {
@as("Status") status: option<artifactStatus>,
@as("AttachmentName") attachmentName: option<attachmentName>,
@as("AttachmentId") attachmentId: option<artifactId>,
@as("ContentType") contentType: option<contentType>
}
type attachmentIdList = array<artifactId>
type uploadMetadata = {
@as("HeadersToInclude") headersToInclude: option<uploadMetadataSignedHeaders>,
@as("UrlExpiry") urlExpiry: option<iso8601Datetime>,
@as("Url") url: option<uploadMetadataUrl>
}
type attachments = array<attachmentItem>
type item = {
@as("Attachments") attachments: option<attachments>,
@as("ParticipantRole") participantRole: option<participantRole>,
@as("DisplayName") displayName: option<displayName>,
@as("ParticipantId") participantId: option<participantId>,
@as("Type") type_: option<chatItemType>,
@as("Id") id: option<chatItemId>,
@as("ContentType") contentType: option<chatContentType>,
@as("Content") content: option<chatContent>,
@as("AbsoluteTime") absoluteTime: option<instant>
}
type transcript = array<item>
type awsServiceClient;
@module("@aws-sdk/client-connect") @new external createClient: unit => awsServiceClient = "ConnectParticipantClient";
module SendMessage = {
  type t;
  type request = {
@as("ConnectionToken") connectionToken: participantToken,
@as("ClientToken") clientToken: option<clientToken>,
@as("Content") content: chatContent,
@as("ContentType") contentType: chatContentType
}
  type response = {
@as("AbsoluteTime") absoluteTime: option<instant>,
@as("Id") id: option<chatItemId>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "SendMessageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendEvent = {
  type t;
  type request = {
@as("ConnectionToken") connectionToken: participantToken,
@as("ClientToken") clientToken: option<clientToken>,
@as("Content") content: option<chatContent>,
@as("ContentType") contentType: chatContentType
}
  type response = {
@as("AbsoluteTime") absoluteTime: option<instant>,
@as("Id") id: option<chatItemId>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "SendEventCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAttachment = {
  type t;
  type request = {
@as("ConnectionToken") connectionToken: participantToken,
@as("AttachmentId") attachmentId: artifactId
}
  type response = {
@as("UrlExpiry") urlExpiry: option<iso8601Datetime>,
@as("Url") url: option<preSignedAttachmentUrl>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "GetAttachmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisconnectParticipant = {
  type t;
  type request = {
@as("ConnectionToken") connectionToken: participantToken,
@as("ClientToken") clientToken: option<clientToken>
}
  type response = unit
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DisconnectParticipantCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateParticipantConnection = {
  type t;
  type request = {
@as("ParticipantToken") participantToken: participantToken,
@as("Type") type_: connectionTypeList
}
  type response = {
@as("ConnectionCredentials") connectionCredentials: option<connectionCredentials>,
@as("Websocket") websocket: option<websocket>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "CreateParticipantConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CompleteAttachmentUpload = {
  type t;
  type request = {
@as("ConnectionToken") connectionToken: participantToken,
@as("ClientToken") clientToken: nonEmptyClientToken,
@as("AttachmentIds") attachmentIds: attachmentIdList
}
  type response = unit
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "CompleteAttachmentUploadCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartAttachmentUpload = {
  type t;
  type request = {
@as("ConnectionToken") connectionToken: participantToken,
@as("ClientToken") clientToken: nonEmptyClientToken,
@as("AttachmentName") attachmentName: attachmentName,
@as("AttachmentSizeInBytes") attachmentSizeInBytes: attachmentSizeInBytes,
@as("ContentType") contentType: contentType
}
  type response = {
@as("UploadMetadata") uploadMetadata: option<uploadMetadata>,
@as("AttachmentId") attachmentId: option<artifactId>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "StartAttachmentUploadCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTranscript = {
  type t;
  type request = {
@as("ConnectionToken") connectionToken: participantToken,
@as("StartPosition") startPosition: option<startPosition>,
@as("SortOrder") sortOrder: option<sortKey>,
@as("ScanDirection") scanDirection: option<scanDirection>,
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("ContactId") contactId: option<contactId>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Transcript") transcript: option<transcript>,
@as("InitialContactId") initialContactId: option<contactId>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "GetTranscriptCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
