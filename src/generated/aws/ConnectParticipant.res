type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
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
type mostRecent = int;
type message = string
type maxResults = int;
type instant = string
type iSO8601Datetime = string
type displayName = string
type contentType = string
type contactId = string
type connectionType = [@as("CONNECTION_CREDENTIALS") #CONNECTION_CREDENTIALS | @as("WEBSOCKET") #WEBSOCKET]
type clientToken = string
type chatItemType = [@as("CONNECTION_ACK") #CONNECTION_ACK | @as("ATTACHMENT") #ATTACHMENT | @as("EVENT") #EVENT | @as("MESSAGE") #MESSAGE | @as("TRANSFER_FAILED") #TRANSFER_FAILED | @as("TRANSFER_SUCCEEDED") #TRANSFER_SUCCEEDED | @as("CHAT_ENDED") #CHAT_ENDED | @as("PARTICIPANT_LEFT") #PARTICIPANT_LEFT | @as("PARTICIPANT_JOINED") #PARTICIPANT_JOINED | @as("TYPING") #TYPING]
type chatItemId = string
type chatContentType = string
type chatContent = string
type attachmentSizeInBytes = float;
type attachmentName = string
type artifactStatus = [@as("IN_PROGRESS") #IN_PROGRESS | @as("REJECTED") #REJECTED | @as("APPROVED") #APPROVED]
type artifactId = string
type websocket = {
@as("ConnectionExpiry") connectionExpiry: iSO8601Datetime,
@as("Url") url: preSignedConnectionUrl
}
type uploadMetadataSignedHeaders = Js.Dict.t< uploadMetadataSignedHeadersValue>
type startPosition = {
@as("MostRecent") mostRecent: mostRecent,
@as("AbsoluteTime") absoluteTime: instant,
@as("Id") id: chatItemId
}
type connectionTypeList = array<connectionType>
type connectionCredentials = {
@as("Expiry") expiry: iSO8601Datetime,
@as("ConnectionToken") connectionToken: participantToken
}
type attachmentItem = {
@as("Status") status: artifactStatus,
@as("AttachmentName") attachmentName: attachmentName,
@as("AttachmentId") attachmentId: artifactId,
@as("ContentType") contentType: contentType
}
type attachmentIdList = array<artifactId>
type uploadMetadata = {
@as("HeadersToInclude") headersToInclude: uploadMetadataSignedHeaders,
@as("UrlExpiry") urlExpiry: iSO8601Datetime,
@as("Url") url: uploadMetadataUrl
}
type attachments = array<attachmentItem>
type item = {
@as("Attachments") attachments: attachments,
@as("ParticipantRole") participantRole: participantRole,
@as("DisplayName") displayName: displayName,
@as("ParticipantId") participantId: participantId,
@as("Type") type_: chatItemType,
@as("Id") id: chatItemId,
@as("ContentType") contentType: chatContentType,
@as("Content") content: chatContent,
@as("AbsoluteTime") absoluteTime: instant
}
type transcript = array<item>
type clientType;
@module("@aws-sdk/client-connect") @new external createClient: unit => clientType = "ConnectParticipantClient";
module SendMessage = {
  type t;
  type request = {
@as("ConnectionToken") connectionToken: option<participantToken>,
@as("ClientToken") clientToken: clientToken,
@as("Content") content: option<chatContent>,
@as("ContentType") contentType: option<chatContentType>
}
  type response = {
@as("AbsoluteTime") absoluteTime: instant,
@as("Id") id: chatItemId
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "SendMessageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendEvent = {
  type t;
  type request = {
@as("ConnectionToken") connectionToken: option<participantToken>,
@as("ClientToken") clientToken: clientToken,
@as("Content") content: chatContent,
@as("ContentType") contentType: option<chatContentType>
}
  type response = {
@as("AbsoluteTime") absoluteTime: instant,
@as("Id") id: chatItemId
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "SendEventCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAttachment = {
  type t;
  type request = {
@as("ConnectionToken") connectionToken: option<participantToken>,
@as("AttachmentId") attachmentId: option<artifactId>
}
  type response = {
@as("UrlExpiry") urlExpiry: iSO8601Datetime,
@as("Url") url: preSignedAttachmentUrl
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "GetAttachmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisconnectParticipant = {
  type t;
  type request = {
@as("ConnectionToken") connectionToken: option<participantToken>,
@as("ClientToken") clientToken: clientToken
}
  type response = unit
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DisconnectParticipantCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateParticipantConnection = {
  type t;
  type request = {
@as("ParticipantToken") participantToken: option<participantToken>,
@as("Type") type_: option<connectionTypeList>
}
  type response = {
@as("ConnectionCredentials") connectionCredentials: connectionCredentials,
@as("Websocket") websocket: websocket
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "CreateParticipantConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CompleteAttachmentUpload = {
  type t;
  type request = {
@as("ConnectionToken") connectionToken: option<participantToken>,
@as("ClientToken") clientToken: option<nonEmptyClientToken>,
@as("AttachmentIds") attachmentIds: option<attachmentIdList>
}
  type response = unit
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "CompleteAttachmentUploadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartAttachmentUpload = {
  type t;
  type request = {
@as("ConnectionToken") connectionToken: option<participantToken>,
@as("ClientToken") clientToken: option<nonEmptyClientToken>,
@as("AttachmentName") attachmentName: option<attachmentName>,
@as("AttachmentSizeInBytes") attachmentSizeInBytes: option<attachmentSizeInBytes>,
@as("ContentType") contentType: option<contentType>
}
  type response = {
@as("UploadMetadata") uploadMetadata: uploadMetadata,
@as("AttachmentId") attachmentId: artifactId
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "StartAttachmentUploadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTranscript = {
  type t;
  type request = {
@as("ConnectionToken") connectionToken: option<participantToken>,
@as("StartPosition") startPosition: startPosition,
@as("SortOrder") sortOrder: sortKey,
@as("ScanDirection") scanDirection: scanDirection,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("ContactId") contactId: contactId
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Transcript") transcript: transcript,
@as("InitialContactId") initialContactId: contactId
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "GetTranscriptCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
