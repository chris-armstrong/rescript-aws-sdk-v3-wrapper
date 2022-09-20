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
external createClient: unit => awsServiceClient = "ConnectParticipantClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
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
type connectionType = [
  | @as("CONNECTION_CREDENTIALS") #CONNECTION_CREDENTIALS
  | @as("WEBSOCKET") #WEBSOCKET
]
type clientToken = string
type chatItemType = [
  | @as("CONNECTION_ACK") #CONNECTION_ACK
  | @as("ATTACHMENT") #ATTACHMENT
  | @as("EVENT") #EVENT
  | @as("MESSAGE") #MESSAGE
  | @as("TRANSFER_FAILED") #TRANSFER_FAILED
  | @as("TRANSFER_SUCCEEDED") #TRANSFER_SUCCEEDED
  | @as("CHAT_ENDED") #CHAT_ENDED
  | @as("PARTICIPANT_LEFT") #PARTICIPANT_LEFT
  | @as("PARTICIPANT_JOINED") #PARTICIPANT_JOINED
  | @as("TYPING") #TYPING
]
type chatItemId = string
type chatContentType = string
type chatContent = string
type bool_ = bool
type attachmentSizeInBytes = float
type attachmentName = string
type artifactStatus = [
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("REJECTED") #REJECTED
  | @as("APPROVED") #APPROVED
]
type artifactId = string
@ocaml.doc("<p>The websocket for the participant's connection.</p>")
type websocket = {
  @ocaml.doc("<p>The URL expiration timestamp in ISO date format.</p>
        <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
            2019-11-08T02:41:28.172Z.</p>")
  @as("ConnectionExpiry")
  connectionExpiry: option<iso8601Datetime>,
  @ocaml.doc("<p>The URL of the websocket.</p>") @as("Url") url: option<preSignedConnectionUrl>,
}
type uploadMetadataSignedHeaders = Js.Dict.t<uploadMetadataSignedHeadersValue>
@ocaml.doc("<p>A filtering option for where to start. For example, if you sent 100 messages, start
            with message 50. </p>")
type startPosition = {
  @ocaml.doc("<p>The start position of the most recent message where you want to start. </p>")
  @as("MostRecent")
  mostRecent: option<mostRecent>,
  @ocaml.doc("<p>The time in ISO format where to start.</p>
        <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
            2019-11-08T02:41:28.172Z.</p>")
  @as("AbsoluteTime")
  absoluteTime: option<instant>,
  @ocaml.doc("<p>The ID of the message or event where to start. </p>") @as("Id")
  id: option<chatItemId>,
}
type connectionTypeList = array<connectionType>
@ocaml.doc("<p>Connection credentials. </p>")
type connectionCredentials = {
  @ocaml.doc("<p>The expiration of the token.</p>
        <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
            2019-11-08T02:41:28.172Z.</p>")
  @as("Expiry")
  expiry: option<iso8601Datetime>,
  @ocaml.doc("<p>The connection token.</p>") @as("ConnectionToken")
  connectionToken: option<participantToken>,
}
@ocaml.doc("<p>The case-insensitive input to indicate standard MIME type that describes the format of the file
            that will be uploaded.</p>")
type attachmentItem = {
  @ocaml.doc("<p>Status of the attachment.</p>") @as("Status") status: option<artifactStatus>,
  @ocaml.doc("<p>A case-sensitive name of the attachment being uploaded.</p>") @as("AttachmentName")
  attachmentName: option<attachmentName>,
  @ocaml.doc("<p>A unique identifier for the attachment.</p>") @as("AttachmentId")
  attachmentId: option<artifactId>,
  @ocaml.doc(
    "<p>Describes the MIME file type of the attachment. For a list of supported file types, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits\">Feature specifications</a> in the <i>Amazon Connect Administrator Guide</i>.</p>"
  )
  @as("ContentType")
  contentType: option<contentType>,
}
type attachmentIdList = array<artifactId>
@ocaml.doc("<p>Fields to be used while uploading the attachment.</p>")
type uploadMetadata = {
  @ocaml.doc("<p>The headers to be provided while uploading the file to the URL.</p>")
  @as("HeadersToInclude")
  headersToInclude: option<uploadMetadataSignedHeaders>,
  @ocaml.doc(
    "<p>The expiration time of the URL in ISO timestamp. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>"
  )
  @as("UrlExpiry")
  urlExpiry: option<iso8601Datetime>,
  @ocaml.doc("<p>This is the pre-signed URL that can be used for uploading the file to Amazon S3 when used in response 
to <a href=\"https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_StartAttachmentUpload.html\">StartAttachmentUpload</a>.</p>")
  @as("Url")
  url: option<uploadMetadataUrl>,
}
type attachments = array<attachmentItem>
@ocaml.doc("<p>An item - message or event - that has been sent. </p>")
type item = {
  @ocaml.doc("<p>Provides information about the attachments.</p>") @as("Attachments")
  attachments: option<attachments>,
  @ocaml.doc("<p>The role of the sender. For example, is it a customer, agent, or system.</p>")
  @as("ParticipantRole")
  participantRole: option<participantRole>,
  @ocaml.doc("<p>The chat display name of the sender.</p>") @as("DisplayName")
  displayName: option<displayName>,
  @ocaml.doc("<p>The ID of the sender in the session.</p>") @as("ParticipantId")
  participantId: option<participantId>,
  @ocaml.doc("<p>Type of the item: message or event. </p>") @as("Type") type_: option<chatItemType>,
  @ocaml.doc("<p>The ID of the item.</p>") @as("Id") id: option<chatItemId>,
  @ocaml.doc("<p>The type of content of the item.</p>") @as("ContentType")
  contentType: option<chatContentType>,
  @ocaml.doc("<p>The content of the message or event.</p>") @as("Content")
  content: option<chatContent>,
  @ocaml.doc("<p>The time when the message or event was sent.</p>
        <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
            2019-11-08T02:41:28.172Z.</p>")
  @as("AbsoluteTime")
  absoluteTime: option<instant>,
}
type transcript = array<item>
@ocaml.doc("<p>Amazon Connect is a cloud-based contact center solution that makes it easy to set up and manage
            a customer contact center and provide reliable customer engagement at any scale.</p>
        <p>Amazon Connect enables customer contacts through voice or chat.</p>

        <p>The APIs described here are used by chat participants, such as agents and
            customers.</p>")
module SendMessage = {
  type t
  type request = {
    @ocaml.doc("<p>The authentication token associated with the connection.</p>")
    @as("ConnectionToken")
    connectionToken: participantToken,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The content of the message.</p>") @as("Content") content: chatContent,
    @ocaml.doc("<p>The type of the content. Supported types are text/plain.</p>") @as("ContentType")
    contentType: chatContentType,
  }
  type response = {
    @ocaml.doc("<p>The time when the message was sent.</p>
        <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
            2019-11-08T02:41:28.172Z.</p>")
    @as("AbsoluteTime")
    absoluteTime: option<instant>,
    @ocaml.doc("<p>The ID of the message.</p>") @as("Id") id: option<chatItemId>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "SendMessageCommand"
  let make = (~connectionToken, ~content, ~contentType, ~clientToken=?, ()) =>
    new({
      connectionToken: connectionToken,
      clientToken: clientToken,
      content: content,
      contentType: contentType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendEvent = {
  type t
  type request = {
    @ocaml.doc("<p>The authentication token associated with the participant's connection.</p>")
    @as("ConnectionToken")
    connectionToken: participantToken,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The content of the event to be sent (for example, message text). This is not yet
            supported.</p>")
    @as("Content")
    content: option<chatContent>,
    @ocaml.doc("<p>The content type of the request. Supported types are:</p>

        <ul>
            <li>
                <p>application/vnd.amazonaws.connect.event.typing</p>
            </li>
            <li>
                <p>application/vnd.amazonaws.connect.event.connection.acknowledged</p>
            </li>
         </ul>")
    @as("ContentType")
    contentType: chatContentType,
  }
  type response = {
    @ocaml.doc("<p>The time when the event was sent.</p>
        <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
            2019-11-08T02:41:28.172Z.</p>")
    @as("AbsoluteTime")
    absoluteTime: option<instant>,
    @ocaml.doc("<p>The ID of the response.</p>") @as("Id") id: option<chatItemId>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "SendEventCommand"
  let make = (~connectionToken, ~contentType, ~clientToken=?, ~content=?, ()) =>
    new({
      connectionToken: connectionToken,
      clientToken: clientToken,
      content: content,
      contentType: contentType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAttachment = {
  type t
  type request = {
    @ocaml.doc("<p>The authentication token associated with the participant's connection.</p>")
    @as("ConnectionToken")
    connectionToken: participantToken,
    @ocaml.doc("<p>A unique identifier for the attachment.</p>") @as("AttachmentId")
    attachmentId: artifactId,
  }
  type response = {
    @ocaml.doc(
      "<p>The expiration time of the URL in ISO timestamp. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>"
    )
    @as("UrlExpiry")
    urlExpiry: option<iso8601Datetime>,
    @ocaml.doc("<p>This is the pre-signed URL that can be used for uploading the file to Amazon S3 when used in response 
to <a href=\"https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_StartAttachmentUpload.html\">StartAttachmentUpload</a>.</p>")
    @as("Url")
    url: option<preSignedAttachmentUrl>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "GetAttachmentCommand"
  let make = (~connectionToken, ~attachmentId, ()) =>
    new({connectionToken: connectionToken, attachmentId: attachmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisconnectParticipant = {
  type t
  type request = {
    @ocaml.doc("<p>The authentication token associated with the participant's connection.</p>")
    @as("ConnectionToken")
    connectionToken: participantToken,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
  }
  type response = {.}
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "DisconnectParticipantCommand"
  let make = (~connectionToken, ~clientToken=?, ()) =>
    new({connectionToken: connectionToken, clientToken: clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateParticipantConnection = {
  type t
  type request = {
    @ocaml.doc("<p>Amazon Connect Participant is used to mark the participant as connected for message
            streaming.</p>")
    @as("ConnectParticipant")
    connectParticipant: option<bool_>,
    @ocaml.doc("<p>This is a header parameter.</p>
        <p>The ParticipantToken as obtained from <a href=\"https://docs.aws.amazon.com/connect/latest/APIReference/API_StartChatContact.html\">StartChatContact</a>
            API response.</p>")
    @as("ParticipantToken")
    participantToken: participantToken,
    @ocaml.doc("<p>Type of connection information required.</p>") @as("Type")
    type_: connectionTypeList,
  }
  type response = {
    @ocaml.doc("<p>Creates the participant's connection credentials. The authentication token associated
            with the participant's connection.</p>")
    @as("ConnectionCredentials")
    connectionCredentials: option<connectionCredentials>,
    @ocaml.doc("<p>Creates the participant's websocket connection.</p>") @as("Websocket")
    websocket: option<websocket>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "CreateParticipantConnectionCommand"
  let make = (~participantToken, ~type_, ~connectParticipant=?, ()) =>
    new({connectParticipant: connectParticipant, participantToken: participantToken, type_: type_})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CompleteAttachmentUpload = {
  type t
  type request = {
    @ocaml.doc("<p>The authentication token associated with the participant's connection.</p>")
    @as("ConnectionToken")
    connectionToken: participantToken,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    @as("ClientToken")
    clientToken: nonEmptyClientToken,
    @ocaml.doc("<p>A list of unique identifiers for the attachments.</p>") @as("AttachmentIds")
    attachmentIds: attachmentIdList,
  }
  type response = {.}
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "CompleteAttachmentUploadCommand"
  let make = (~connectionToken, ~clientToken, ~attachmentIds, ()) =>
    new({connectionToken: connectionToken, clientToken: clientToken, attachmentIds: attachmentIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartAttachmentUpload = {
  type t
  type request = {
    @ocaml.doc("<p>The authentication token associated with the participant's connection.</p>")
    @as("ConnectionToken")
    connectionToken: participantToken,
    @ocaml.doc("<p>A unique case sensitive identifier to support idempotency of request.</p>")
    @as("ClientToken")
    clientToken: nonEmptyClientToken,
    @ocaml.doc("<p>A case-sensitive name of the attachment being uploaded.</p>")
    @as("AttachmentName")
    attachmentName: attachmentName,
    @ocaml.doc("<p>The size of the attachment in bytes.</p>") @as("AttachmentSizeInBytes")
    attachmentSizeInBytes: attachmentSizeInBytes,
    @ocaml.doc(
      "<p>Describes the MIME file type of the attachment. For a list of supported file types, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits\">Feature specifications</a> in the <i>Amazon Connect Administrator Guide</i>.</p>"
    )
    @as("ContentType")
    contentType: contentType,
  }
  type response = {
    @ocaml.doc("<p>Fields to be used while uploading the attachment.</p>") @as("UploadMetadata")
    uploadMetadata: option<uploadMetadata>,
    @ocaml.doc("<p>A unique identifier for the attachment.</p>") @as("AttachmentId")
    attachmentId: option<artifactId>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "StartAttachmentUploadCommand"
  let make = (
    ~connectionToken,
    ~clientToken,
    ~attachmentName,
    ~attachmentSizeInBytes,
    ~contentType,
    (),
  ) =>
    new({
      connectionToken: connectionToken,
      clientToken: clientToken,
      attachmentName: attachmentName,
      attachmentSizeInBytes: attachmentSizeInBytes,
      contentType: contentType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTranscript = {
  type t
  type request = {
    @ocaml.doc("<p>The authentication token associated with the participant's connection.</p>")
    @as("ConnectionToken")
    connectionToken: participantToken,
    @ocaml.doc("<p>A filtering option for where to start.</p>") @as("StartPosition")
    startPosition: option<startPosition>,
    @ocaml.doc("<p>The sort order for the records. Default: DESCENDING.</p>") @as("SortOrder")
    sortOrder: option<sortKey>,
    @ocaml.doc("<p>The direction from StartPosition from which to retrieve message. Default: BACKWARD
            when no StartPosition is provided, FORWARD with StartPosition. </p>")
    @as("ScanDirection")
    scanDirection: option<scanDirection>,
    @ocaml.doc("<p>The pagination token. Use the value returned previously in the next subsequent request
            to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in the page. Default: 10. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The contactId from the current contact chain for which transcript is needed.</p>"
    )
    @as("ContactId")
    contactId: option<contactId>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token. Use the value returned previously in the next subsequent request
            to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of messages in the session.</p>") @as("Transcript")
    transcript: option<transcript>,
    @ocaml.doc("<p>The initial contact ID for the contact. </p>") @as("InitialContactId")
    initialContactId: option<contactId>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "GetTranscriptCommand"
  let make = (
    ~connectionToken,
    ~startPosition=?,
    ~sortOrder=?,
    ~scanDirection=?,
    ~nextToken=?,
    ~maxResults=?,
    ~contactId=?,
    (),
  ) =>
    new({
      connectionToken: connectionToken,
      startPosition: startPosition,
      sortOrder: sortOrder,
      scanDirection: scanDirection,
      nextToken: nextToken,
      maxResults: maxResults,
      contactId: contactId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
