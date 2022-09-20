type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-chime") @new
external createClient: unit => awsServiceClient = "ChimeSDKMessagingClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type urlType = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type string_ = string
type statusDetail = string
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type resourceName = string
type pushNotificationType = [@as("VOIP") #VOIP | @as("DEFAULT") #DEFAULT]
type pushNotificationTitle = string
type pushNotificationBody = string
type nonNullableBoolean = bool
type nonEmptyResourceName = string
type nonEmptyContent = string
type nextToken = string
type metadata = string
type messageId = string
type messageAttributeStringValue = string
type messageAttributeName = string
type maxResults = int
type lambdaFunctionArn = string
type invocationType = [@as("ASYNC") #ASYNC]
type filterRule = string
type fallbackAction = [@as("ABORT") #ABORT | @as("CONTINUE") #CONTINUE]
type errorCode = [
  | @as("PhoneNumberAssociationsExist") #PhoneNumberAssociationsExist
  | @as("VoiceConnectorGroupAssociationsExist") #VoiceConnectorGroupAssociationsExist
  | @as("Unprocessable") #Unprocessable
  | @as("Unauthorized") #Unauthorized
  | @as("Throttling") #Throttling
  | @as("Throttled") #Throttled
  | @as("ServiceUnavailable") #ServiceUnavailable
  | @as("AccessDenied") #AccessDenied
  | @as("ServiceFailure") #ServiceFailure
  | @as("ResourceLimitExceeded") #ResourceLimitExceeded
  | @as("PreconditionFailed") #PreconditionFailed
  | @as("NotFound") #NotFound
  | @as("Forbidden") #Forbidden
  | @as("Conflict") #Conflict
  | @as("BadRequest") #BadRequest
]
type content = string
type clientRequestToken = string
type chimeArn = string
type channelPrivacy = [@as("PRIVATE") #PRIVATE | @as("PUBLIC") #PUBLIC]
type channelMode = [@as("RESTRICTED") #RESTRICTED | @as("UNRESTRICTED") #UNRESTRICTED]
type channelMessageType = [@as("CONTROL") #CONTROL | @as("STANDARD") #STANDARD]
type channelMessageStatus = [
  | @as("DENIED") #DENIED
  | @as("FAILED") #FAILED
  | @as("PENDING") #PENDING
  | @as("SENT") #SENT
]
type channelMessagePersistenceType = [
  | @as("NON_PERSISTENT") #NON_PERSISTENT
  | @as("PERSISTENT") #PERSISTENT
]
type channelMembershipType = [@as("HIDDEN") #HIDDEN | @as("DEFAULT") #DEFAULT]
type channelFlowExecutionOrder = int
type callbackIdType = string
type allowNotifications = [@as("FILTERED") #FILTERED | @as("NONE") #NONE | @as("ALL") #ALL]
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A tag object containing a key-value pair.</p>")
type tag = {
  @ocaml.doc("<p>The value in a tag.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>The key in a tag.</p>") @as("Key") key: tagKey,
}
@ocaml.doc("<p>The channel membership preferences for push notification.</p>")
type pushNotificationPreferences = {
  @ocaml.doc(
    "<p>The simple JSON object used to send a subset of a push notification to the requsted member.</p>"
  )
  @as("FilterRule")
  filterRule: option<filterRule>,
  @ocaml.doc("<p>Enum value that indicates which push notifications to send to the requested member of a channel.
         <code>ALL</code> sends all push notifications, <code>NONE</code> sends no push notifications, <code>FILTERED</code> sends only filtered push notifications. 
      </p>")
  @as("AllowNotifications")
  allowNotifications: allowNotifications,
}
@ocaml.doc("<p>The push notification configuration of the message.</p>")
type pushNotificationConfiguration = {
  @ocaml.doc("<p>Enum value that indicates the type of the push notification for a message.
         <code>DEFAULT</code>: Normal mobile push notification.
         <code>VOIP</code>: VOIP mobile push notification.</p>")
  @as("Type")
  type_: option<pushNotificationType>,
  @ocaml.doc("<p>The body of the push notification.</p>") @as("Body")
  body: option<pushNotificationBody>,
  @ocaml.doc("<p>The title of the push notification.</p>") @as("Title")
  title: option<pushNotificationTitle>,
}
@ocaml.doc("<p>The websocket endpoint used to connect to Amazon Chime SDK messaging.</p>")
type messagingSessionEndpoint = {
  @ocaml.doc("<p>The endpoint to which you establish a websocket connection.</p>") @as("Url")
  url: option<urlType>,
}
type messageAttributeStringValues = array<messageAttributeStringValue>
type memberArns = array<chimeArn>
@ocaml.doc("<p>Stores metadata about a Lambda processor.</p>")
type lambdaConfiguration = {
  @ocaml.doc("<p>Controls how the Lambda function is invoked.</p>") @as("InvocationType")
  invocationType: invocationType,
  @ocaml.doc("<p>The ARN of the Lambda message processing function.</p>") @as("ResourceArn")
  resourceArn: lambdaFunctionArn,
}
@ocaml.doc("<p>The details of a user.</p>")
type identity = {
  @ocaml.doc("<p>The name in an Identity.</p>") @as("Name") name: option<resourceName>,
  @ocaml.doc("<p>The ARN in an Identity.</p>") @as("Arn") arn: option<chimeArn>,
}
@ocaml.doc("<p>Summary of the details of a <code>Channel</code>.</p>")
type channelSummary = {
  @ocaml.doc("<p>The time at which the last message in a channel was sent.</p>")
  @as("LastMessageTimestamp")
  lastMessageTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The metadata of the channel.</p>") @as("Metadata") metadata: option<metadata>,
  @ocaml.doc("<p>The privacy setting of the channel.</p>") @as("Privacy")
  privacy: option<channelPrivacy>,
  @ocaml.doc("<p>The mode of the channel.</p>") @as("Mode") mode: option<channelMode>,
  @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  @ocaml.doc("<p>The name of the channel.</p>") @as("Name") name: option<nonEmptyResourceName>,
}
@ocaml.doc("<p>Stores information about a message status.</p>")
type channelMessageStatusStructure = {
  @ocaml.doc("<p>Contains more details about the messasge status.</p>") @as("Detail")
  detail: option<statusDetail>,
  @ocaml.doc("<p>The message status value.</p>") @as("Value") value: option<channelMessageStatus>,
}
@ocaml.doc("<p>Summary of details of a channel associated with channel flow.</p>")
type channelAssociatedWithFlowSummary = {
  @ocaml.doc("<p>The channel's metadata.</p>") @as("Metadata") metadata: option<metadata>,
  @ocaml.doc("<p>The channel's privacy setting.</p>") @as("Privacy")
  privacy: option<channelPrivacy>,
  @ocaml.doc("<p>The mode of the channel.</p>") @as("Mode") mode: option<channelMode>,
  @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  @ocaml.doc("<p>The name of the channel flow.</p>") @as("Name") name: option<nonEmptyResourceName>,
}
@ocaml.doc("<p>A list of failed member ARNs, error codes, and error messages.</p>")
type batchCreateChannelMembershipError = {
  @ocaml.doc("<p>The error message.</p>") @as("ErrorMessage") errorMessage: option<string_>,
  @ocaml.doc("<p>The error code.</p>") @as("ErrorCode") errorCode: option<errorCode>,
  @ocaml.doc(
    "<p>The <code>AppInstanceUserArn</code> of the member that the service couldn't add.</p>"
  )
  @as("MemberArn")
  memberArn: option<chimeArn>,
}
@ocaml.doc("<p>Summary of the membership details of an <code>AppInstanceUser</code>.</p>")
type appInstanceUserMembershipSummary = {
  @ocaml.doc("<p>The time at which a message was last read.</p>") @as("ReadMarkerTimestamp")
  readMarkerTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The type of <code>ChannelMembership</code>.</p>") @as("Type")
  type_: option<channelMembershipType>,
}
type tagList_ = array<tag>
@ocaml.doc("<p>A processor's metadata.</p>")
type processorConfiguration = {
  @ocaml.doc("<p>Indicates that the processor is of type Lambda.</p>") @as("Lambda")
  lambda: lambdaConfiguration,
}
@ocaml.doc("<p>A list of message attribute values.</p>")
type messageAttributeValue = {
  @ocaml.doc("<p>The strings in a message attribute value.</p>") @as("StringValues")
  stringValues: option<messageAttributeStringValues>,
}
type members = array<identity>
type channelSummaryList = array<channelSummary>
@ocaml.doc("<p>Summary of the details of a <code>ChannelModerator</code>.</p>")
type channelModeratorSummary = {
  @ocaml.doc("<p>The data for a moderator.</p>") @as("Moderator") moderator: option<identity>,
}
@ocaml.doc("<p>The details of a channel moderator.</p>")
type channelModerator = {
  @ocaml.doc("<p>The <code>AppInstanceUser</code> who created the moderator.</p>") @as("CreatedBy")
  createdBy: option<identity>,
  @ocaml.doc("<p>The time at which the moderator was created.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The ARN of the moderator's channel.</p>") @as("ChannelArn")
  channelArn: option<chimeArn>,
  @ocaml.doc("<p>The moderator's data.</p>") @as("Moderator") moderator: option<identity>,
}
@ocaml.doc("<p>Summary of the details of a moderated channel.</p>")
type channelModeratedByAppInstanceUserSummary = {
  @ocaml.doc("<p>Summary of the details of a <code>Channel</code>.</p>") @as("ChannelSummary")
  channelSummary: option<channelSummary>,
}
@ocaml.doc("<p>Summary of the details of a <code>ChannelMembership</code>.</p>")
type channelMembershipSummary = {
  @ocaml.doc("<p>A member's summary data.</p>") @as("Member") member: option<identity>,
}
@ocaml.doc("<p>The channel membership preferences for an <code>AppInstanceUser</code>.</p>")
type channelMembershipPreferences = {
  @ocaml.doc("<p>The push notification configuration of a message.</p>") @as("PushNotifications")
  pushNotifications: option<pushNotificationPreferences>,
}
@ocaml.doc("<p>Summary of the channel membership details of an <code>AppInstanceUser</code>.</p>")
type channelMembershipForAppInstanceUserSummary = {
  @ocaml.doc("<p>Returns the channel membership data for an <code>AppInstance</code>.</p>")
  @as("AppInstanceUserMembershipSummary")
  appInstanceUserMembershipSummary: option<appInstanceUserMembershipSummary>,
  @ocaml.doc("<p>Returns the channel data for an <code>AppInstance</code>.</p>")
  @as("ChannelSummary")
  channelSummary: option<channelSummary>,
}
@ocaml.doc("<p>The details of a channel member.</p>")
type channelMembership = {
  @ocaml.doc("<p>The time at which a channel membership was last updated.</p>")
  @as("LastUpdatedTimestamp")
  lastUpdatedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The time at which the channel membership was created.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The ARN of the member's channel.</p>") @as("ChannelArn")
  channelArn: option<chimeArn>,
  @ocaml.doc("<p>The data of the channel member.</p>") @as("Member") member: option<identity>,
  @ocaml.doc("<p>The membership type set for the channel member.</p>") @as("Type")
  type_: option<channelMembershipType>,
  @ocaml.doc("<p>The identifier of the member who invited another member.</p>") @as("InvitedBy")
  invitedBy: option<identity>,
}
@ocaml.doc("<p>Summary of the details of a <code>ChannelBan</code>.</p>")
type channelBanSummary = {
  @ocaml.doc("<p>The member being banned from a channel.</p>") @as("Member")
  member: option<identity>,
}
@ocaml.doc("<p>The details of a channel ban.</p>")
type channelBan = {
  @ocaml.doc("<p>The <code>AppInstanceUser</code> who created the ban.</p>") @as("CreatedBy")
  createdBy: option<identity>,
  @ocaml.doc("<p>The time at which the ban was created.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The ARN of the channel from which a member is being banned.</p>") @as("ChannelArn")
  channelArn: option<chimeArn>,
  @ocaml.doc("<p>The member being banned from the channel.</p>") @as("Member")
  member: option<identity>,
}
type channelAssociatedWithFlowSummaryList = array<channelAssociatedWithFlowSummary>
@ocaml.doc("<p>The details of a channel.</p>")
type channel = {
  @ocaml.doc("<p>The ARN of the channel flow.</p>") @as("ChannelFlowArn")
  channelFlowArn: option<chimeArn>,
  @ocaml.doc("<p>The time at which a channel was last updated.</p>") @as("LastUpdatedTimestamp")
  lastUpdatedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The time at which a member sent the last message in the channel.</p>")
  @as("LastMessageTimestamp")
  lastMessageTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The time at which the <code>AppInstanceUser</code> created the channel.</p>")
  @as("CreatedTimestamp")
  createdTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The <code>AppInstanceUser</code> who created the channel.</p>") @as("CreatedBy")
  createdBy: option<identity>,
  @ocaml.doc("<p>The channel's metadata.</p>") @as("Metadata") metadata: option<metadata>,
  @ocaml.doc("<p>The channel's privacy setting.</p>") @as("Privacy")
  privacy: option<channelPrivacy>,
  @ocaml.doc("<p>The mode of the channel.</p>") @as("Mode") mode: option<channelMode>,
  @ocaml.doc("<p>The ARN of a channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  @ocaml.doc("<p>The name of a channel.</p>") @as("Name") name: option<nonEmptyResourceName>,
}
type batchCreateChannelMembershipErrors = array<batchCreateChannelMembershipError>
@ocaml.doc("<p>The information about a processor in a channel flow.</p>")
type processor = {
  @ocaml.doc("<p>Determines whether to continue with message processing or stop it in cases where communication with a processor fails. If a processor has a fallback action of <code>ABORT</code> and 
         communication with it fails, the processor sets the message status to <code>FAILED</code> and does not send the message to any recipients. Note that if the last processor in the channel flow sequence 
         has a fallback action of <code>CONTINUE</code> and communication with the processor fails, then the message is considered processed and sent to recipients of the channel.</p>")
  @as("FallbackAction")
  fallbackAction: fallbackAction,
  @ocaml.doc("<p>The sequence in which processors run. If you have multiple processors in a channel flow, message processing goes through each processor in the sequence. The value determines the sequence. 
         At this point, we support only 1 processor within a flow.</p>")
  @as("ExecutionOrder")
  executionOrder: channelFlowExecutionOrder,
  @ocaml.doc("<p>The information about the type of processor and its identifier.</p>")
  @as("Configuration")
  configuration: processorConfiguration,
  @ocaml.doc("<p>The name of the channel flow.</p>") @as("Name") name: nonEmptyResourceName,
}
type messageAttributeMap = Js.Dict.t<messageAttributeValue>
type channelModeratorSummaryList = array<channelModeratorSummary>
type channelModeratedByAppInstanceUserSummaryList = array<channelModeratedByAppInstanceUserSummary>
type channelMembershipSummaryList = array<channelMembershipSummary>
type channelMembershipForAppInstanceUserSummaryList = array<
  channelMembershipForAppInstanceUserSummary,
>
type channelBanSummaryList = array<channelBanSummary>
@ocaml.doc("<p>The membership information, including member ARNs, the channel ARN, and membership
         types.</p>")
type batchChannelMemberships = {
  @ocaml.doc("<p>The ARN of the channel to which you're adding users.</p>") @as("ChannelArn")
  channelArn: option<chimeArn>,
  @ocaml.doc("<p>The users successfully added to the request.</p>") @as("Members")
  members: option<members>,
  @ocaml.doc("<p>The membership types set for the channel users.</p>") @as("Type")
  type_: option<channelMembershipType>,
  @ocaml.doc("<p>The identifier of the member who invited another member.</p>") @as("InvitedBy")
  invitedBy: option<identity>,
}
type processorList = array<processor>
@ocaml.doc("<p>Summary of the messages in a <code>Channel</code>.</p>")
type channelMessageSummary = {
  @ocaml.doc("<p>The message attribues listed in a the summary of a channel message.</p>")
  @as("MessageAttributes")
  messageAttributes: option<messageAttributeMap>,
  @ocaml.doc("<p>The message status. The status value is <code>SENT</code> for messages sent to a channel without a channel flow. For channels associated with channel flow, the value determines the 
         processing stage.</p>")
  @as("Status")
  status: option<channelMessageStatusStructure>,
  @ocaml.doc("<p>Indicates whether a message was redacted.</p>") @as("Redacted")
  redacted: option<nonNullableBoolean>,
  @ocaml.doc("<p>The message sender.</p>") @as("Sender") sender: option<identity>,
  @ocaml.doc("<p>The time at which a message was last edited.</p>") @as("LastEditedTimestamp")
  lastEditedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The time at which a message was last updated.</p>") @as("LastUpdatedTimestamp")
  lastUpdatedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The time at which the message summary was created.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The type of message.</p>") @as("Type") type_: option<channelMessageType>,
  @ocaml.doc("<p>The metadata of the message.</p>") @as("Metadata") metadata: option<metadata>,
  @ocaml.doc("<p>The content of the message.</p>") @as("Content") content: option<content>,
  @ocaml.doc("<p>The ID of the message.</p>") @as("MessageId") messageId: option<messageId>,
}
@ocaml.doc("<p>Stores information about a callback.</p>")
type channelMessageCallback = {
  @ocaml.doc(
    "<p>The attributes for the message, used for message filtering along with a <code>FilterRule</code> defined in the <code>PushNotificationPreferences</code>. </p>"
  )
  @as("MessageAttributes")
  messageAttributes: option<messageAttributeMap>,
  @ocaml.doc("<p>The push notification configuration of the message.</p>") @as("PushNotification")
  pushNotification: option<pushNotificationConfiguration>,
  @ocaml.doc("<p>The message metadata.</p>") @as("Metadata") metadata: option<metadata>,
  @ocaml.doc("<p>The message content.</p>") @as("Content") content: option<nonEmptyContent>,
  @ocaml.doc("<p>The message ID.</p>") @as("MessageId") messageId: messageId,
}
@ocaml.doc("<p>The details of a message in a channel.</p>")
type channelMessage = {
  @ocaml.doc(
    "<p>The attributes for the message, used for message filtering along with a <code>FilterRule</code> defined in the <code>PushNotificationPreferences</code>.</p>"
  )
  @as("MessageAttributes")
  messageAttributes: option<messageAttributeMap>,
  @ocaml.doc("<p>The status of the channel message.</p>") @as("Status")
  status: option<channelMessageStatusStructure>,
  @ocaml.doc("<p>The persistence setting for a channel message.</p>") @as("Persistence")
  persistence: option<channelMessagePersistenceType>,
  @ocaml.doc("<p>Hides the content of a message.</p>") @as("Redacted")
  redacted: option<nonNullableBoolean>,
  @ocaml.doc("<p>The message sender.</p>") @as("Sender") sender: option<identity>,
  @ocaml.doc("<p>The time at which a message was updated.</p>") @as("LastUpdatedTimestamp")
  lastUpdatedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The time at which a message was edited.</p>") @as("LastEditedTimestamp")
  lastEditedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The time at which the message was created.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The message type.</p>") @as("Type") type_: option<channelMessageType>,
  @ocaml.doc("<p>The message metadata.</p>") @as("Metadata") metadata: option<metadata>,
  @ocaml.doc("<p>The message content.</p>") @as("Content") content: option<content>,
  @ocaml.doc("<p>The ID of a message.</p>") @as("MessageId") messageId: option<messageId>,
  @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
}
type channelMessageSummaryList = array<channelMessageSummary>
@ocaml.doc("<p>Summary of details of a channel flow.</p>")
type channelFlowSummary = {
  @ocaml.doc("<p>Information about the processor Lambda functions.</p>") @as("Processors")
  processors: option<processorList>,
  @ocaml.doc("<p>The name of the channel flow.</p>") @as("Name") name: option<nonEmptyResourceName>,
  @ocaml.doc("<p>The ARN of the channel flow.</p>") @as("ChannelFlowArn")
  channelFlowArn: option<chimeArn>,
}
@ocaml.doc("<p>The details of a channel flow.</p>")
type channelFlow = {
  @ocaml.doc("<p>The time at which a channel flow was updated.</p>") @as("LastUpdatedTimestamp")
  lastUpdatedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The time at which the channel flow was created.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The name of the channel flow.</p>") @as("Name") name: option<nonEmptyResourceName>,
  @ocaml.doc("<p>Information about the processor Lambda functions.</p>") @as("Processors")
  processors: option<processorList>,
  @ocaml.doc("<p>The ARN of the channel flow.</p>") @as("ChannelFlowArn")
  channelFlowArn: option<chimeArn>,
}
type channelFlowSummaryList = array<channelFlowSummary>
@ocaml.doc("<p>The Amazon Chime SDK Messaging APIs in this section allow software developers to send
         and receive messages in custom messaging applications. These APIs depend on the frameworks
         provided by the Amazon Chime SDK Identity APIs. For more information about the messaging
         APIs, see <a href=\"https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Messaging\">Amazon Chime SDK messaging</a>
         </p>")
module UpdateChannelReadMarker = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "UpdateChannelReadMarkerCommand"
  let make = (~chimeBearer, ~channelArn, ()) => new({chimeBearer, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The metadata for the update request.</p>") @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc("<p>The mode of the update request.</p>") @as("Mode") mode: channelMode,
    @ocaml.doc("<p>The name of the channel.</p>") @as("Name") name: nonEmptyResourceName,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateChannelCommand"
  let make = (~chimeBearer, ~mode, ~name, ~channelArn, ~metadata=?, ()) =>
    new({chimeBearer, metadata, mode, name, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RedactChannelMessage = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The ID of the message being redacted.</p>") @as("MessageId")
    messageId: messageId,
    @ocaml.doc("<p>The ARN of the channel containing the messages that you want to redact.</p>")
    @as("ChannelArn")
    channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ID of the message being redacted.</p>") @as("MessageId")
    messageId: option<messageId>,
    @ocaml.doc("<p>The ARN of the channel containing the messages that you want to redact.</p>")
    @as("ChannelArn")
    channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "RedactChannelMessageCommand"
  let make = (~chimeBearer, ~messageId, ~channelArn, ()) =>
    new({chimeBearer, messageId, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateChannelFlow = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The ARN of the channel flow.</p>") @as("ChannelFlowArn")
    channelFlowArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DisassociateChannelFlowCommand"
  let make = (~chimeBearer, ~channelFlowArn, ~channelArn, ()) =>
    new({chimeBearer, channelFlowArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteChannelModerator = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the moderator being deleted.</p>")
    @as("ChannelModeratorArn")
    channelModeratorArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteChannelModeratorCommand"
  let make = (~chimeBearer, ~channelModeratorArn, ~channelArn, ()) =>
    new({chimeBearer, channelModeratorArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteChannelMessage = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The ID of the message being deleted.</p>") @as("MessageId") messageId: messageId,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteChannelMessageCommand"
  let make = (~chimeBearer, ~messageId, ~channelArn, ()) =>
    new({chimeBearer, messageId, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteChannelMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc(
      "<p>The <code>AppInstanceUserArn</code> of the member that you're removing from the channel.</p>"
    )
    @as("MemberArn")
    memberArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel from which you want to remove the user.</p>")
    @as("ChannelArn")
    channelArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DeleteChannelMembershipCommand"
  let make = (~chimeBearer, ~memberArn, ~channelArn, ()) =>
    new({chimeBearer, memberArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteChannelFlow = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the channel flow.</p>") @as("ChannelFlowArn")
    channelFlowArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteChannelFlowCommand"
  let make = (~channelFlowArn, ()) => new({channelFlowArn: channelFlowArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteChannelBan = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code> that you want to reinstate.</p>")
    @as("MemberArn")
    memberArn: chimeArn,
    @ocaml.doc(
      "<p>The ARN of the channel from which the <code>AppInstanceUser</code> was banned.</p>"
    )
    @as("ChannelArn")
    channelArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteChannelBanCommand"
  let make = (~chimeBearer, ~memberArn, ~channelArn, ()) =>
    new({chimeBearer, memberArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The ARN of the channel being deleted.</p>") @as("ChannelArn")
    channelArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteChannelCommand"
  let make = (~chimeBearer, ~channelArn, ()) => new({chimeBearer, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AssociateChannelFlow = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The ARN of the channel flow.</p>") @as("ChannelFlowArn")
    channelFlowArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "AssociateChannelFlowCommand"
  let make = (~chimeBearer, ~channelFlowArn, ~channelArn, ()) =>
    new({chimeBearer, channelFlowArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateChannelMessage = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The metadata of the message being updated.</p>") @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc("<p>The content of the message being updated.</p>") @as("Content")
    content: option<content>,
    @ocaml.doc("<p>The ID string of the message being updated.</p>") @as("MessageId")
    messageId: messageId,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The status of the message update.</p>") @as("Status")
    status: option<channelMessageStatusStructure>,
    @ocaml.doc("<p>The ID string of the message being updated.</p>") @as("MessageId")
    messageId: option<messageId>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateChannelMessageCommand"
  let make = (~chimeBearer, ~messageId, ~channelArn, ~metadata=?, ~content=?, ()) =>
    new({chimeBearer, metadata, content, messageId, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys.</p>") @as("TagKeys") tagKeys: tagKeyList,
    @ocaml.doc("<p>The resource ARN.</p>") @as("ResourceARN") resourceARN: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys, resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetMessagingSessionEndpoint = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The endpoint returned in the response.</p>") @as("Endpoint")
    endpoint: option<messagingSessionEndpoint>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "GetMessagingSessionEndpointCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetChannelMessageStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The ID of the message.</p>") @as("MessageId") messageId: messageId,
    @ocaml.doc("<p>The ARN of the channel</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The message status and details.</p>") @as("Status")
    status: option<channelMessageStatusStructure>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "GetChannelMessageStatusCommand"
  let make = (~chimeBearer, ~messageId, ~channelArn, ()) =>
    new({chimeBearer, messageId, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateChannelModerator = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the moderator.</p>")
    @as("ChannelModeratorArn")
    channelModeratorArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARNs of the channel and the moderator.</p>") @as("ChannelModerator")
    channelModerator: option<identity>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateChannelModeratorCommand"
  let make = (~chimeBearer, ~channelModeratorArn, ~channelArn, ()) =>
    new({chimeBearer, channelModeratorArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateChannelMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
         members are always returned as part of <code>ListChannelMemberships</code>. Hidden members
         are only returned if the type filter in <code>ListChannelMemberships</code> equals
            <code>HIDDEN</code>. Otherwise hidden members are not returned. This is only supported
         by moderators.</p>")
    @as("Type")
    type_: channelMembershipType,
    @ocaml.doc(
      "<p>The <code>AppInstanceUserArn</code> of the member you want to add to the channel.</p>"
    )
    @as("MemberArn")
    memberArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel to which you're adding users.</p>") @as("ChannelArn")
    channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN and metadata of the member being added.</p>") @as("Member")
    member: option<identity>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "CreateChannelMembershipCommand"
  let make = (~chimeBearer, ~type_, ~memberArn, ~channelArn, ()) =>
    new({chimeBearer, type_, memberArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateChannelBan = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the member being banned.</p>")
    @as("MemberArn")
    memberArn: chimeArn,
    @ocaml.doc("<p>The ARN of the ban request.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChannelArn</code> and <code>BannedIdentity</code> of the member in the ban
         response.</p>")
    @as("Member")
    member: option<identity>,
    @ocaml.doc("<p>The ARN of the response to the ban request.</p>") @as("ChannelArn")
    channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateChannelBanCommand"
  let make = (~chimeBearer, ~memberArn, ~channelArn, ()) =>
    new({chimeBearer, memberArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag key-value pairs.</p>") @as("Tags") tags: tagList_,
    @ocaml.doc("<p>The resource ARN.</p>") @as("ResourceARN") resourceARN: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags, resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutChannelMembershipPreferences = {
  type t
  type request = {
    @ocaml.doc("<p>The channel membership preferences of an <code>AppInstanceUser</code> .</p>")
    @as("Preferences")
    preferences: channelMembershipPreferences,
    @ocaml.doc("<p>The <code>AppInstanceUserARN</code>  of the user making the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the member setting the preferences.</p>")
    @as("MemberArn")
    memberArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN and metadata of the member being added.</p>") @as("Preferences")
    preferences: option<channelMembershipPreferences>,
    @as("Member") member: option<identity>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "PutChannelMembershipPreferencesCommand"
  let make = (~preferences, ~chimeBearer, ~memberArn, ~channelArn, ()) =>
    new({preferences, chimeBearer, memberArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource.</p>") @as("ResourceARN") resourceARN: chimeArn,
  }
  type response = {@ocaml.doc("<p>The tag key-value pairs.</p>") @as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChannelsAssociatedWithChannelFlow = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token passed by previous API calls until all requested channels are returned.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of channels that you want to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the channel flow.</p>") @as("ChannelFlowArn")
    channelFlowArn: chimeArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The token passed by previous API calls until all requested channels are returned.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The information about each channel.</p>") @as("Channels")
    channels: option<channelAssociatedWithFlowSummaryList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "ListChannelsAssociatedWithChannelFlowCommand"
  let make = (~channelFlowArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, channelFlowArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChannels = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc(
      "<p>The token passed by previous API calls until all requested channels are returned.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of channels that you want to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The privacy setting. <code>PUBLIC</code> retrieves all the public channels.
            <code>PRIVATE</code> retrieves private channels. Only an <code>AppInstanceAdmin</code>
         can retrieve private channels. </p>")
    @as("Privacy")
    privacy: option<channelPrivacy>,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The token returned from previous API requests until the number of channels is
         reached.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The information about each channel.</p>") @as("Channels")
    channels: option<channelSummaryList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListChannelsCommand"
  let make = (~chimeBearer, ~appInstanceArn, ~nextToken=?, ~maxResults=?, ~privacy=?, ()) =>
    new({chimeBearer, nextToken, maxResults, privacy, appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetChannelMembershipPreferences = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserARN</code> of the user making the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc(
      "<p>The <code>AppInstanceUserArn</code> of the member retrieving the preferences.</p>"
    )
    @as("MemberArn")
    memberArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The channel membership preferences for an <code>AppInstanceUser</code> .</p>")
    @as("Preferences")
    preferences: option<channelMembershipPreferences>,
    @as("Member") member: option<identity>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "GetChannelMembershipPreferencesCommand"
  let make = (~chimeBearer, ~memberArn, ~channelArn, ()) =>
    new({chimeBearer, memberArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeChannelModerator = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the channel moderator.</p>")
    @as("ChannelModeratorArn")
    channelModeratorArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The details of the channel moderator.</p>") @as("ChannelModerator")
    channelModerator: option<channelModerator>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DescribeChannelModeratorCommand"
  let make = (~chimeBearer, ~channelModeratorArn, ~channelArn, ()) =>
    new({chimeBearer, channelModeratorArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeChannelModeratedByAppInstanceUser = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code> in the moderated channel.</p>")
    @as("AppInstanceUserArn")
    appInstanceUserArn: chimeArn,
    @ocaml.doc("<p>The ARN of the moderated channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The moderated channel.</p>") @as("Channel")
    channel: option<channelModeratedByAppInstanceUserSummary>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DescribeChannelModeratedByAppInstanceUserCommand"
  let make = (~chimeBearer, ~appInstanceUserArn, ~channelArn, ()) =>
    new({chimeBearer, appInstanceUserArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeChannelMembershipForAppInstanceUser = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The ARN of the user in a channel.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel to which the user belongs.</p>") @as("ChannelArn")
    channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The channel to which a user belongs.</p>") @as("ChannelMembership")
    channelMembership: option<channelMembershipForAppInstanceUserSummary>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DescribeChannelMembershipForAppInstanceUserCommand"
  let make = (~chimeBearer, ~appInstanceUserArn, ~channelArn, ()) =>
    new({chimeBearer, appInstanceUserArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeChannelMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the member.</p>") @as("MemberArn")
    memberArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The details of the membership.</p>") @as("ChannelMembership")
    channelMembership: option<channelMembership>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DescribeChannelMembershipCommand"
  let make = (~chimeBearer, ~memberArn, ~channelArn, ()) =>
    new({chimeBearer, memberArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeChannelBan = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the member being banned.</p>")
    @as("MemberArn")
    memberArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel from which the user is banned.</p>") @as("ChannelArn")
    channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The details of the ban.</p>") @as("ChannelBan") channelBan: option<channelBan>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "DescribeChannelBanCommand"
  let make = (~chimeBearer, ~memberArn, ~channelArn, ()) =>
    new({chimeBearer, memberArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The channel details.</p>") @as("Channel") channel: option<channel>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "DescribeChannelCommand"
  let make = (~chimeBearer, ~channelArn, ()) => new({chimeBearer, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The tags for the creation request.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The client token for the request. An <code>Idempotency</code> token.</p>")
    @as("ClientRequestToken")
    clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>The metadata of the creation request. Limited to 1KB and UTF-8.</p>")
    @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc("<p>The channel's privacy level: <code>PUBLIC</code> or <code>PRIVATE</code>. Private
         channels aren't discoverable by users outside the channel. Public channels are discoverable
         by anyone in the <code>AppInstance</code>.</p>")
    @as("Privacy")
    privacy: option<channelPrivacy>,
    @ocaml.doc("<p>The channel mode: <code>UNRESTRICTED</code> or <code>RESTRICTED</code>. Administrators,
         moderators, and channel members can add themselves and other members to unrestricted
         channels. Only administrators and moderators can add members to restricted channels.</p>")
    @as("Mode")
    mode: option<channelMode>,
    @ocaml.doc("<p>The name of the channel.</p>") @as("Name") name: nonEmptyResourceName,
    @ocaml.doc("<p>The ARN of the channel request.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateChannelCommand"
  let make = (
    ~chimeBearer,
    ~clientRequestToken,
    ~name,
    ~appInstanceArn,
    ~tags=?,
    ~metadata=?,
    ~privacy=?,
    ~mode=?,
    (),
  ) => new({chimeBearer, tags, clientRequestToken, metadata, privacy, mode, name, appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SendChannelMessage = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The attributes for the message, used for message filtering along with a <code>FilterRule</code> defined in the <code>PushNotificationPreferences</code>.</p>"
    )
    @as("MessageAttributes")
    messageAttributes: option<messageAttributeMap>,
    @ocaml.doc("<p>The push notification configuration of the message.</p>") @as("PushNotification")
    pushNotification: option<pushNotificationConfiguration>,
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The <code>Idempotency</code> token for each client request.</p>")
    @as("ClientRequestToken")
    clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>The optional metadata for each message.</p>") @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc(
      "<p>Boolean that controls whether the message is persisted on the back end. Required.</p>"
    )
    @as("Persistence")
    persistence: channelMessagePersistenceType,
    @ocaml.doc("<p>The type of message, <code>STANDARD</code> or <code>CONTROL</code>.</p>")
    @as("Type")
    type_: channelMessageType,
    @ocaml.doc("<p>The content of the message.</p>") @as("Content") content: nonEmptyContent,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The status of the channel message.</p>") @as("Status")
    status: option<channelMessageStatusStructure>,
    @ocaml.doc("<p>The ID string assigned to each message.</p>") @as("MessageId")
    messageId: option<messageId>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "SendChannelMessageCommand"
  let make = (
    ~chimeBearer,
    ~clientRequestToken,
    ~persistence,
    ~type_,
    ~content,
    ~channelArn,
    ~messageAttributes=?,
    ~pushNotification=?,
    ~metadata=?,
    (),
  ) =>
    new({
      messageAttributes,
      pushNotification,
      chimeBearer,
      clientRequestToken,
      metadata,
      persistence,
      type_,
      content,
      channelArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChannelsModeratedByAppInstanceUser = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The token returned from previous API requests until the number of channels moderated by
         the user is reached.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of channels in the request.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the user in the moderated channel.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: option<chimeArn>,
  }
  type response = {
    @ocaml.doc("<p>The token returned from previous API requests until the number of channels moderated by
         the user is reached.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The moderated channels in the request.</p>") @as("Channels")
    channels: option<channelModeratedByAppInstanceUserSummaryList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "ListChannelsModeratedByAppInstanceUserCommand"
  let make = (~chimeBearer, ~nextToken=?, ~maxResults=?, ~appInstanceUserArn=?, ()) =>
    new({chimeBearer, nextToken, maxResults, appInstanceUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChannelModerators = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The token passed by previous API calls until all requested moderators are
         returned.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of moderators that you want returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The information about and names of each moderator.</p>") @as("ChannelModerators")
    channelModerators: option<channelModeratorSummaryList>,
    @ocaml.doc("<p>The token passed by previous API calls until all requested moderators are
         returned.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListChannelModeratorsCommand"
  let make = (~chimeBearer, ~channelArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({chimeBearer, nextToken, maxResults, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChannelMembershipsForAppInstanceUser = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The token returned from previous API requests until the number of channel memberships is
         reached.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of users that you want returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>s</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: option<chimeArn>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token passed by previous API calls until all requested users are returned.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The token passed by previous API calls until all requested users are returned.</p>"
    )
    @as("ChannelMemberships")
    channelMemberships: option<channelMembershipForAppInstanceUserSummaryList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "ListChannelMembershipsForAppInstanceUserCommand"
  let make = (~chimeBearer, ~nextToken=?, ~maxResults=?, ~appInstanceUserArn=?, ()) =>
    new({chimeBearer, nextToken, maxResults, appInstanceUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChannelMemberships = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The token passed by previous API calls until all requested channel memberships are
         returned.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of channel memberships that you want returned.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
         members are returned as part of <code>ListChannelMemberships</code> if no type is specified. Hidden members
         are only returned if the type filter in <code>ListChannelMemberships</code> equals
            <code>HIDDEN</code>.</p>")
    @as("Type")
    type_: option<channelMembershipType>,
    @ocaml.doc("<p>The maximum number of channel memberships that you want returned.</p>")
    @as("ChannelArn")
    channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The token passed by previous API calls until all requested channel memberships are
         returned.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The information for the requested channel memberships.</p>")
    @as("ChannelMemberships")
    channelMemberships: option<channelMembershipSummaryList>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListChannelMembershipsCommand"
  let make = (~chimeBearer, ~channelArn, ~nextToken=?, ~maxResults=?, ~type_=?, ()) =>
    new({chimeBearer, nextToken, maxResults, type_, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChannelBans = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc(
      "<p>The token passed by previous API calls until all requested bans are returned.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of bans that you want returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The information for each requested ban.</p>") @as("ChannelBans")
    channelBans: option<channelBanSummaryList>,
    @ocaml.doc(
      "<p>The token passed by previous API calls until all requested bans are returned.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListChannelBansCommand"
  let make = (~chimeBearer, ~channelArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({chimeBearer, nextToken, maxResults, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchCreateChannelMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc(
      "<p>The <code>AppInstanceUserArn</code>s of the members you want to add to the channel.</p>"
    )
    @as("MemberArns")
    memberArns: memberArns,
    @ocaml.doc("<p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
         members are always returned as part of <code>ListChannelMemberships</code>. Hidden members
         are only returned if the type filter in <code>ListChannelMemberships</code> equals
            <code>HIDDEN</code>. Otherwise hidden members are not returned. This is only supported
         by moderators.</p>")
    @as("Type")
    type_: option<channelMembershipType>,
    @ocaml.doc("<p>The ARN of the channel to which you're adding users.</p>") @as("ChannelArn")
    channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>If the action fails for one or more of the memberships in the request, a list of the
         memberships is returned, along with error codes and error messages.</p>")
    @as("Errors")
    errors: option<batchCreateChannelMembershipErrors>,
    @ocaml.doc("<p>The list of channel memberships in the response.</p>")
    @as("BatchChannelMemberships")
    batchChannelMemberships: option<batchChannelMemberships>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "BatchCreateChannelMembershipCommand"
  let make = (~chimeBearer, ~memberArns, ~channelArn, ~type_=?, ()) =>
    new({chimeBearer, memberArns, type_, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateChannelFlow = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the channel flow.</p>") @as("Name") name: nonEmptyResourceName,
    @ocaml.doc("<p>Information about the processor Lambda functions </p>") @as("Processors")
    processors: processorList,
    @ocaml.doc("<p>The ARN of the channel flow.</p>") @as("ChannelFlowArn")
    channelFlowArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the channel flow.</p>") @as("ChannelFlowArn")
    channelFlowArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateChannelFlowCommand"
  let make = (~name, ~processors, ~channelFlowArn, ()) => new({name, processors, channelFlowArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetChannelMessage = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc("<p>The ID of the message.</p>") @as("MessageId") messageId: messageId,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The details of and content in the message.</p>") @as("ChannelMessage")
    channelMessage: option<channelMessage>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetChannelMessageCommand"
  let make = (~chimeBearer, ~messageId, ~channelArn, ()) =>
    new({chimeBearer, messageId, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateChannelFlow = {
  type t
  type request = {
    @ocaml.doc("<p>The client token for the request. An Idempotency token.</p>")
    @as("ClientRequestToken")
    clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>The tags for the creation request.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The name of the channel flow.</p>") @as("Name") name: nonEmptyResourceName,
    @ocaml.doc("<p>Information about the processor Lambda functions.</p>") @as("Processors")
    processors: processorList,
    @ocaml.doc("<p>The ARN of the channel flow request.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the channel flow.</p>") @as("ChannelFlowArn")
    channelFlowArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateChannelFlowCommand"
  let make = (~clientRequestToken, ~name, ~processors, ~appInstanceArn, ~tags=?, ()) =>
    new({clientRequestToken, tags, name, processors, appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ChannelFlowCallback = {
  type t
  type request = {
    @ocaml.doc("<p>Stores information about the processed message.</p>") @as("ChannelMessage")
    channelMessage: channelMessageCallback,
    @ocaml.doc(
      "<p>When a processor determines that a message needs to be <code>DENIED</code>, pass this parameter with a value of true.</p>"
    )
    @as("DeleteResource")
    deleteResource: option<nonNullableBoolean>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
    @ocaml.doc(
      "<p>The identifier passed to the processor by the service when invoked. Use the identifier to call back the service.</p>"
    )
    @as("CallbackId")
    callbackId: callbackIdType,
  }
  type response = {
    @ocaml.doc("<p>The call back ID passed in the request.</p>") @as("CallbackId")
    callbackId: option<callbackIdType>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ChannelFlowCallbackCommand"
  let make = (~channelMessage, ~channelArn, ~callbackId, ~deleteResource=?, ()) =>
    new({channelMessage, deleteResource, channelArn, callbackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChannelMessages = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: chimeArn,
    @ocaml.doc(
      "<p>The token passed by previous API calls until all requested messages are returned.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of messages that you want returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The final or ending time stamp for your requested messages.</p>") @as("NotAfter")
    notAfter: option<timestamp_>,
    @ocaml.doc("<p>The initial or starting time stamp for your requested messages.</p>")
    @as("NotBefore")
    notBefore: option<timestamp_>,
    @ocaml.doc("<p>The order in which you want messages sorted. Default is Descending, based on time
         created.</p>")
    @as("SortOrder")
    sortOrder: option<sortOrder>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The information about, and content of, each requested message.</p>")
    @as("ChannelMessages")
    channelMessages: option<channelMessageSummaryList>,
    @ocaml.doc(
      "<p>The token passed by previous API calls until all requested messages are returned.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN of the channel containing the requested messages.</p>") @as("ChannelArn")
    channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListChannelMessagesCommand"
  let make = (
    ~chimeBearer,
    ~channelArn,
    ~nextToken=?,
    ~maxResults=?,
    ~notAfter=?,
    ~notBefore=?,
    ~sortOrder=?,
    (),
  ) => new({chimeBearer, nextToken, maxResults, notAfter, notBefore, sortOrder, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeChannelFlow = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the channel flow.</p>") @as("ChannelFlowArn")
    channelFlowArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The channel flow details.</p>") @as("ChannelFlow")
    channelFlow: option<channelFlow>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "DescribeChannelFlowCommand"
  let make = (~channelFlowArn, ()) => new({channelFlowArn: channelFlowArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChannelFlows = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token passed by previous API calls until all requested channel flows are returned.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of channel flows that you want to return.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the app instance.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The token passed by previous API calls until all requested channels are returned.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The information about each channel flow.</p>") @as("ChannelFlows")
    channelFlows: option<channelFlowSummaryList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListChannelFlowsCommand"
  let make = (~appInstanceArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
