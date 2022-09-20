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
external createClient: unit => awsServiceClient = "ChimeClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type voiceConnectorName = string
type voiceConnectorItemPriority = int
type voiceConnectorGroupName = string
type voiceConnectorAwsRegion = [@as("us-west-2") #Us_West_2 | @as("us-east-1") #Us_East_1]
type videoMuxType = [@as("VideoOnly") #VideoOnly]
type userType = [@as("SharedDevice") #SharedDevice | @as("PrivateUser") #PrivateUser]
type userName = string
type userId = string
type urlType = string
type uriType = string
type transcribeVocabularyFilterMethod = [
  | @as("tag") #Tag
  | @as("mask") #Mask
  | @as("remove") #Remove
]
type transcribeRegion = [
  | @as("auto") #Auto
  | @as("sa-east-1") #Sa_East_1
  | @as("eu-west-2") #Eu_West_2
  | @as("eu-west-1") #Eu_West_1
  | @as("eu-central-1") #Eu_Central_1
  | @as("ca-central-1") #Ca_Central_1
  | @as("ap-northeast-1") #Ap_Northeast_1
  | @as("ap-southeast-2") #Ap_Southeast_2
  | @as("ap-northeast-2") #Ap_Northeast_2
  | @as("us-west-2") #Us_West_2
  | @as("us-east-1") #Us_East_1
  | @as("us-east-2") #Us_East_2
]
type transcribePiiEntityTypes = string
type transcribePartialResultsStability = [
  | @as("high") #High
  | @as("medium") #Medium
  | @as("low") #Low
]
type transcribeMedicalType = [@as("DICTATION") #DICTATION | @as("CONVERSATION") #CONVERSATION]
type transcribeMedicalSpecialty = [
  | @as("UROLOGY") #UROLOGY
  | @as("RADIOLOGY") #RADIOLOGY
  | @as("ONCOLOGY") #ONCOLOGY
  | @as("NEUROLOGY") #NEUROLOGY
  | @as("CARDIOLOGY") #CARDIOLOGY
  | @as("PRIMARYCARE") #PRIMARYCARE
]
type transcribeMedicalRegion = [
  | @as("auto") #Auto
  | @as("eu-west-1") #Eu_West_1
  | @as("ca-central-1") #Ca_Central_1
  | @as("ap-southeast-2") #Ap_Southeast_2
  | @as("us-west-2") #Us_West_2
  | @as("us-east-2") #Us_East_2
  | @as("us-east-1") #Us_East_1
]
type transcribeMedicalLanguageCode = [@as("en-US") #En_US]
type transcribeMedicalContentIdentificationType = [@as("PHI") #PHI]
type transcribeLanguageModelName = string
type transcribeLanguageCode = [
  | @as("zh-CN") #Zh_CN
  | @as("ko-KR") #Ko_KR
  | @as("ja-JP") #Ja_JP
  | @as("pt-BR") #Pt_BR
  | @as("de-DE") #De_DE
  | @as("it-IT") #It_IT
  | @as("en-AU") #En_AU
  | @as("fr-FR") #Fr_FR
  | @as("fr-CA") #Fr_CA
  | @as("es-US") #Es_US
  | @as("en-GB") #En_GB
  | @as("en-US") #En_US
]
type transcribeContentRedactionType = [@as("PII") #PII]
type transcribeContentIdentificationType = [@as("PII") #PII]
type tollFreePrefix = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type string128 = string
type string_ = string
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type sipRuleTriggerType = [
  | @as("RequestUriHostname") #RequestUriHostname
  | @as("ToPhoneNumber") #ToPhoneNumber
]
type sipRuleName = string
type sipMediaApplicationName = string
type sipApplicationPriority = int
type sensitiveString = string
type roomMembershipRole = [@as("Member") #Member | @as("Administrator") #Administrator]
type retentionDays = int
type resultMax = int
type resourceName = string
type registrationStatus = [
  | @as("Suspended") #Suspended
  | @as("Registered") #Registered
  | @as("Unregistered") #Unregistered
]
type proxySessionStatus = [
  | @as("Closed") #Closed
  | @as("InProgress") #InProgress
  | @as("Open") #Open
]
type proxySessionNameString = string
type profileServiceMaxResults = int
type positiveInteger = int
type port = int
type phoneNumberType = [@as("TollFree") #TollFree | @as("Local") #Local]
type phoneNumberStatus = [
  | @as("DeleteFailed") #DeleteFailed
  | @as("ReleaseFailed") #ReleaseFailed
  | @as("DeleteInProgress") #DeleteInProgress
  | @as("ReleaseInProgress") #ReleaseInProgress
  | @as("Assigned") #Assigned
  | @as("Unassigned") #Unassigned
  | @as("AcquireFailed") #AcquireFailed
  | @as("AcquireInProgress") #AcquireInProgress
]
type phoneNumberProductType = [
  | @as("SipMediaApplicationDialIn") #SipMediaApplicationDialIn
  | @as("VoiceConnector") #VoiceConnector
  | @as("BusinessCalling") #BusinessCalling
]
type phoneNumberOrderStatus = [
  | @as("Partial") #Partial
  | @as("Failed") #Failed
  | @as("Successful") #Successful
  | @as("Processing") #Processing
]
type phoneNumberMaxResults = int
type phoneNumberAssociationName = [
  | @as("SipRuleId") #SipRuleId
  | @as("VoiceConnectorGroupId") #VoiceConnectorGroupId
  | @as("VoiceConnectorId") #VoiceConnectorId
  | @as("UserId") #UserId
  | @as("AccountId") #AccountId
]
type originationRouteWeight = int
type originationRouteProtocol = [@as("UDP") #UDP | @as("TCP") #TCP]
type originationRoutePriority = int
type orderedPhoneNumberStatus = [
  | @as("Failed") #Failed
  | @as("Acquired") #Acquired
  | @as("Processing") #Processing
]
type numberSelectionBehavior = [@as("AvoidSticky") #AvoidSticky | @as("PreferSticky") #PreferSticky]
type nullableBoolean = bool
type notificationTarget = [@as("SQS") #SQS | @as("SNS") #SNS | @as("EventBridge") #EventBridge]
type nonNullableBoolean = bool
type nonEmptyString128 = string
type nonEmptyString = string
type nonEmptyResourceName = string
type nonEmptyContent = string
type nextTokenString = string
type nextToken = string
type metadata = string
type messageId = string
type memberType = [@as("Webhook") #Webhook | @as("Bot") #Bot | @as("User") #User]
type mediaPipelineStatus = [
  | @as("Stopped") #Stopped
  | @as("Stopping") #Stopping
  | @as("Failed") #Failed
  | @as("InProgress") #InProgress
  | @as("Initializing") #Initializing
]
type mediaPipelineSourceType = [@as("ChimeSdkMeeting") #ChimeSdkMeeting]
type mediaPipelineSinkType = [@as("S3Bucket") #S3Bucket]
type maxResults = int
type license = [
  | @as("ProTrial") #ProTrial
  | @as("Pro") #Pro
  | @as("Plus") #Plus
  | @as("Basic") #Basic
]
type joinTokenString = string
type iso8601Timestamp = Js.Date.t
type inviteStatus = [@as("Failed") #Failed | @as("Accepted") #Accepted | @as("Pending") #Pending]
type integer_ = int
type guidString = string
type geoMatchLevel = [@as("AreaCode") #AreaCode | @as("Country") #Country]
type functionArn = string
type externalUserIdType = string
type externalMeetingIdType = string
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
type emailStatus = [@as("Failed") #Failed | @as("Sent") #Sent | @as("NotSent") #NotSent]
type emailAddress = string
type e164PhoneNumber = string
type dataRetentionInHours = int
type cpsLimit = int
type country = string
type contentMuxType = [@as("ContentOnly") #ContentOnly]
type content = string
type clientRequestToken = string
type chimeArn = string
type channelPrivacy = [@as("PRIVATE") #PRIVATE | @as("PUBLIC") #PUBLIC]
type channelMode = [@as("RESTRICTED") #RESTRICTED | @as("UNRESTRICTED") #UNRESTRICTED]
type channelMessageType = [@as("CONTROL") #CONTROL | @as("STANDARD") #STANDARD]
type channelMessagePersistenceType = [
  | @as("NON_PERSISTENT") #NON_PERSISTENT
  | @as("PERSISTENT") #PERSISTENT
]
type channelMembershipType = [@as("HIDDEN") #HIDDEN | @as("DEFAULT") #DEFAULT]
type capability = [@as("SMS") #SMS | @as("Voice") #Voice]
type callingRegion = string
type callingNameStatus = [
  | @as("UpdateFailed") #UpdateFailed
  | @as("UpdateSucceeded") #UpdateSucceeded
  | @as("UpdateInProgress") #UpdateInProgress
  | @as("Unassigned") #Unassigned
]
type callingName = string
type botType = [@as("ChatBot") #ChatBot]
type boolean_ = bool
type audioMuxType = [
  | @as("AudioWithActiveSpeakerVideo") #AudioWithActiveSpeakerVideo
  | @as("AudioOnly") #AudioOnly
]
type artifactsState = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type arn = string
type areaCode = string
type appInstanceDataType = [@as("ChannelMessage") #ChannelMessage | @as("Channel") #Channel]
type alpha2CountryCode = string
type accountType = [
  | @as("EnterpriseOIDC") #EnterpriseOIDC
  | @as("EnterpriseLWA") #EnterpriseLWA
  | @as("EnterpriseDirectory") #EnterpriseDirectory
  | @as("Team") #Team
]
type accountStatus = [@as("Active") #Active | @as("Suspended") #Suspended]
type accountName = string
@ocaml.doc("<p>The Amazon Chime Voice Connector settings. Includes any Amazon S3 buckets designated for
            storing call detail records.</p>")
type voiceConnectorSettings = {
  @ocaml.doc("<p>The Amazon S3 bucket designated for call detail record storage.</p>")
  @as("CdrBucket")
  cdrBucket: option<string_>,
}
@ocaml.doc("<p>For Amazon Chime Voice Connector groups, the Amazon Chime Voice Connectors to which to route inbound calls. Includes priority configuration settings. Limit: 3 
<code>VoiceConnectorItems</code>
per Amazon Chime Voice Connector group.</p>")
type voiceConnectorItem = {
  @ocaml.doc(
    "<p>The priority associated with the Amazon Chime Voice Connector, with 1 being the highest priority. Higher priority Amazon Chime Voice Connectors are attempted first.</p>"
  )
  @as("Priority")
  priority: voiceConnectorItemPriority,
  @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
  voiceConnectorId: nonEmptyString,
}
@ocaml.doc("<p>The Amazon Chime Voice Connector configuration, including outbound host name and encryption
            settings.</p>")
type voiceConnector = {
  @ocaml.doc("<p>The ARN of the specified Amazon Chime Voice Connector.</p>")
  @as("VoiceConnectorArn")
  voiceConnectorArn: option<nonEmptyString>,
  @ocaml.doc("<p>The updated Amazon Chime Voice Connector timestamp, in ISO 8601 format.</p>")
  @as("UpdatedTimestamp")
  updatedTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The Amazon Chime Voice Connector creation timestamp, in ISO 8601 format.</p>")
  @as("CreatedTimestamp")
  createdTimestamp: option<iso8601Timestamp>,
  @ocaml.doc(
    "<p>Designates whether encryption is required for the Amazon Chime Voice Connector.</p>"
  )
  @as("RequireEncryption")
  requireEncryption: option<boolean_>,
  @ocaml.doc("<p>The outbound host name for the Amazon Chime Voice Connector.</p>")
  @as("OutboundHostName")
  outboundHostName: option<string_>,
  @ocaml.doc("<p>The name of the Amazon Chime Voice Connector.</p>") @as("Name")
  name: option<voiceConnectorName>,
  @ocaml.doc("<p>
The AWS Region in which the Amazon Chime Voice Connector is created. Default: 
<code>us-east-1</code>.
</p>")
  @as("AwsRegion")
  awsRegion: option<voiceConnectorAwsRegion>,
  @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
  voiceConnectorId: option<nonEmptyString>,
}
@ocaml.doc("<p>The video artifact configuration object.</p>")
type videoArtifactsConfiguration = {
  @ocaml.doc("<p>The MUX type of the video artifact configuration object.</p>") @as("MuxType")
  muxType: option<videoMuxType>,
  @ocaml.doc("<p>Indicates whether the video artifact is enabled or disabled.</p>") @as("State")
  state: artifactsState,
}
type userIdList = array<nonEmptyString>
@ocaml.doc("<p>The list of errors returned when errors are encountered during the <a>BatchSuspendUser</a>, <a>BatchUnsuspendUser</a>, or 
    <a>BatchUpdateUser</a> actions. This includes user IDs, error codes, and error messages.</p>")
type userError = {
  @ocaml.doc("<p>The error message.</p>") @as("ErrorMessage") errorMessage: option<string_>,
  @ocaml.doc("<p>The error code.</p>") @as("ErrorCode") errorCode: option<errorCode>,
  @ocaml.doc("<p>The user ID for which the action failed.</p>") @as("UserId")
  userId: option<nonEmptyString>,
}
type userEmailList = array<emailAddress>
@ocaml.doc("<p>The phone number ID, product type, or calling name fields to update, used with the 
<a>BatchUpdatePhoneNumber</a> and <a>UpdatePhoneNumber</a> actions.</p>")
type updatePhoneNumberRequestItem = {
  @ocaml.doc("<p>The outbound calling name to update.</p>") @as("CallingName")
  callingName: option<callingName>,
  @ocaml.doc("<p>The product type to update.</p>") @as("ProductType")
  productType: option<phoneNumberProductType>,
  @ocaml.doc("<p>The phone number ID to update.</p>") @as("PhoneNumberId")
  phoneNumberId: nonEmptyString,
}
@ocaml.doc("<p>The termination health details, including the source IP address and timestamp of the last
            successful SIP <code>OPTIONS</code> message from your SIP infrastructure.</p>")
type terminationHealth = {
  @ocaml.doc("<p>The source IP address.</p>") @as("Source") source: option<string_>,
  @ocaml.doc("<p>The timestamp, in ISO 8601 format.</p>") @as("Timestamp")
  timestamp_: option<iso8601Timestamp>,
}
@ocaml.doc("<p>Settings that allow management of telephony permissions for an Amazon Chime user, such as
            inbound and outbound calling and text messaging.</p>")
type telephonySettings = {
  @ocaml.doc("<p>Allows or denies SMS messaging.</p>") @as("SMS") sms: boolean_,
  @ocaml.doc("<p>Allows or denies outbound calling.</p>") @as("OutboundCalling")
  outboundCalling: boolean_,
  @ocaml.doc("<p>Allows or denies inbound calling.</p>") @as("InboundCalling")
  inboundCalling: boolean_,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Describes a tag applied to a resource.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>The key of the tag.</p>") @as("Key") key: tagKey,
}
type stringList = array<string_>
@ocaml.doc("<p>The targeted recipient for a streaming configuration notification.</p>")
type streamingNotificationTarget = {
  @ocaml.doc("<p>The streaming notification target.</p>") @as("NotificationTarget")
  notificationTarget: notificationTarget,
}
@ocaml.doc("<p>Target SIP media application and other details, such as priority and AWS Region, to be
            specified in the SIP rule. Only one SIP rule per AWS Region can be provided.</p>")
type sipRuleTargetApplication = {
  @ocaml.doc("<p>The AWS Region of the target application.</p>") @as("AwsRegion")
  awsRegion: option<string_>,
  @ocaml.doc("<p>Priority of the SIP media application in the target list.</p>") @as("Priority")
  priority: option<sipApplicationPriority>,
  @ocaml.doc("<p>The SIP media application ID.</p>") @as("SipMediaApplicationId")
  sipMediaApplicationId: option<nonEmptyString>,
}
@ocaml.doc("<p>Logging configuration of the SIP media application.</p>")
type sipMediaApplicationLoggingConfiguration = {
  @ocaml.doc("<p>Enables application message logs for the SIP media application.</p>")
  @as("EnableSipMediaApplicationMessageLogs")
  enableSipMediaApplicationMessageLogs: option<boolean_>,
}
@ocaml.doc("<p>The endpoint assigned to the SIP media application.</p>")
type sipMediaApplicationEndpoint = {
  @ocaml.doc(
    "<p>Valid Amazon Resource Name (ARN) of the Lambda function. The function must be created in the same AWS Region as the SIP media application.</p>"
  )
  @as("LambdaArn")
  lambdaArn: option<functionArn>,
}
@ocaml.doc("<p>A <code>Call</code> instance for a SIP media application.</p>")
type sipMediaApplicationCall = {
  @ocaml.doc("<p>The transaction ID of a call.</p>") @as("TransactionId")
  transactionId: option<guidString>,
}
type sipHeadersMap = Js.Dict.t<sensitiveString>
@ocaml.doc(
  "<p>An Active Directory (AD) group whose members are granted permission to act as delegates.</p>"
)
type signinDelegateGroup = {
  @ocaml.doc("<p>The group name.</p>") @as("GroupName") groupName: option<nonEmptyString>,
}
type sensitiveStringList = array<sensitiveString>
type smaupdateCallArgumentsMap = Js.Dict.t<sensitiveString>
@ocaml.doc(
  "<p>The retention settings that determine how long to retain chat-room messages for an Amazon Chime Enterprise account.</p>"
)
type roomRetentionSettings = {
  @ocaml.doc("<p>The number of days for which to retain chat-room messages.</p>")
  @as("RetentionDays")
  retentionDays: option<retentionDays>,
}
@ocaml.doc("<p>The Amazon Chime chat room details.</p>")
type room = {
  @ocaml.doc("<p>The room update timestamp, in ISO 8601 format.</p>") @as("UpdatedTimestamp")
  updatedTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The room creation timestamp, in ISO 8601 format.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The identifier of the room creator.</p>") @as("CreatedBy")
  createdBy: option<nonEmptyString>,
  @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId")
  accountId: option<nonEmptyString>,
  @ocaml.doc("<p>The room name.</p>") @as("Name") name: option<sensitiveString>,
  @ocaml.doc("<p>The room ID.</p>") @as("RoomId") roomId: option<nonEmptyString>,
}
type phoneNumberTypeList = array<phoneNumberType>
@ocaml.doc("<p>If the phone number action fails for one or more of the phone numbers in the request, a list of
            the phone numbers is returned, along with error codes and error messages.</p>")
type phoneNumberError = {
  @ocaml.doc("<p>The error message.</p>") @as("ErrorMessage") errorMessage: option<string_>,
  @ocaml.doc("<p>The error code.</p>") @as("ErrorCode") errorCode: option<errorCode>,
  @ocaml.doc("<p>The phone number ID for which the action failed.</p>") @as("PhoneNumberId")
  phoneNumberId: option<nonEmptyString>,
}
@ocaml.doc("<p>The phone number capabilities for Amazon Chime Business Calling phone numbers, such as enabled
            inbound and outbound calling and text messaging.</p>")
type phoneNumberCapabilities = {
  @ocaml.doc("<p>Allows or denies outbound MMS messaging for the specified phone number.</p>")
  @as("OutboundMMS")
  outboundMMS: option<nullableBoolean>,
  @ocaml.doc("<p>Allows or denies inbound MMS messaging for the specified phone number.</p>")
  @as("InboundMMS")
  inboundMMS: option<nullableBoolean>,
  @ocaml.doc("<p>Allows or denies outbound SMS messaging for the specified phone number.</p>")
  @as("OutboundSMS")
  outboundSMS: option<nullableBoolean>,
  @ocaml.doc("<p>Allows or denies inbound SMS messaging for the specified phone number.</p>")
  @as("InboundSMS")
  inboundSMS: option<nullableBoolean>,
  @ocaml.doc("<p>Allows or denies outbound calling for the specified phone number.</p>")
  @as("OutboundCall")
  outboundCall: option<nullableBoolean>,
  @ocaml.doc("<p>Allows or denies inbound calling for the specified phone number.</p>")
  @as("InboundCall")
  inboundCall: option<nullableBoolean>,
}
@ocaml.doc("<p>The phone number associations, such as Amazon Chime account ID, Amazon Chime user ID, Amazon
            Chime Voice Connector ID, or Amazon Chime Voice Connector group ID.</p>")
type phoneNumberAssociation = {
  @ocaml.doc("<p>The timestamp of the phone number association, in ISO 8601 format.</p>")
  @as("AssociatedTimestamp")
  associatedTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>Defines the association with an Amazon Chime account ID, user ID, Amazon Chime Voice Connector
            ID, or Amazon Chime Voice Connector group ID.</p>")
  @as("Name")
  name: option<phoneNumberAssociationName>,
  @ocaml.doc("<p>Contains the ID for the entity specified in Name.</p>") @as("Value")
  value: option<string_>,
}
type participantPhoneNumberList = array<e164PhoneNumber>
@ocaml.doc(
  "<p>The phone number and proxy phone number for a participant in an Amazon Chime Voice Connector proxy session.</p>"
)
type participant = {
  @ocaml.doc("<p>The participant's proxy phone number.</p>") @as("ProxyPhoneNumber")
  proxyPhoneNumber: option<e164PhoneNumber>,
  @ocaml.doc("<p>The participant's phone number.</p>") @as("PhoneNumber")
  phoneNumber: option<e164PhoneNumber>,
}
@ocaml.doc("<p>Origination routes define call distribution properties for your SIP hosts to receive inbound
            calls using your Amazon Chime Voice Connector. Limit: Ten origination routes for each
            Amazon Chime Voice Connector.</p>
         <note>
            <p>The parameters listed below are not required, but you must use at least one. </p>
         </note>")
type originationRoute = {
  @ocaml.doc("<p>The weight associated with the host. If hosts are equal in priority, calls are redistributed among
            them based on their relative weight.</p>")
  @as("Weight")
  weight: option<originationRouteWeight>,
  @ocaml.doc("<p>The priority associated with the host, with 1 being the highest priority. Higher priority
            hosts are attempted first.</p>")
  @as("Priority")
  priority: option<originationRoutePriority>,
  @ocaml.doc(
    "<p>The protocol to use for the origination route. Encryption-enabled Amazon Chime Voice Connectors use TCP protocol by default.</p>"
  )
  @as("Protocol")
  protocol: option<originationRouteProtocol>,
  @ocaml.doc("<p>The designated origination route port. Defaults to 5060.</p>") @as("Port")
  port: option<port>,
  @ocaml.doc("<p>The FQDN or IP address to contact for origination traffic.</p>") @as("Host")
  host: option<string_>,
}
@ocaml.doc("<p>A phone number for which an order has been placed.</p>")
type orderedPhoneNumber = {
  @ocaml.doc("<p>The phone number status.</p>") @as("Status")
  status: option<orderedPhoneNumberStatus>,
  @ocaml.doc("<p>The phone number, in E.164 format.</p>") @as("E164PhoneNumber")
  e164PhoneNumber: option<e164PhoneNumber>,
}
type nonEmptyStringList = array<string_>
@ocaml.doc("<p>The websocket endpoint used to connect to Amazon Chime SDK messaging.</p>")
type messagingSessionEndpoint = {
  @ocaml.doc("<p>The endpoint to which you establish a websocket connection.</p>") @as("Url")
  url: option<urlType>,
}
@ocaml.doc("<p>Membership details, such as member ID and member role.</p>")
type membershipItem = {
  @ocaml.doc("<p>The member role.</p>") @as("Role") role: option<roomMembershipRole>,
  @ocaml.doc("<p>The member ID.</p>") @as("MemberId") memberId: option<nonEmptyString>,
}
@ocaml.doc("<p>The list of errors returned when a member action results in an error.</p>")
type memberError = {
  @ocaml.doc("<p>The error message.</p>") @as("ErrorMessage") errorMessage: option<string_>,
  @ocaml.doc("<p>The error code.</p>") @as("ErrorCode") errorCode: option<errorCode>,
  @ocaml.doc("<p>The member ID.</p>") @as("MemberId") memberId: option<nonEmptyString>,
}
type memberArns = array<chimeArn>
@ocaml.doc("<p>The member details, such as email address, name, member ID, and member type.</p>")
type member = {
  @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId")
  accountId: option<nonEmptyString>,
  @ocaml.doc("<p>The member name.</p>") @as("FullName") fullName: option<sensitiveString>,
  @ocaml.doc("<p>The member email address.</p>") @as("Email") email: option<sensitiveString>,
  @ocaml.doc("<p>The member type.</p>") @as("MemberType") memberType: option<memberType>,
  @ocaml.doc("<p>The member ID (user ID or bot ID).</p>") @as("MemberId")
  memberId: option<nonEmptyString>,
}
type meetingTagKeyList = array<tagKey>
@ocaml.doc("<p> The resource target configurations for receiving Amazon Chime SDK meeting and attendee event
            notifications. The Amazon Chime SDK supports resource targets located in the US East (N.
            Virginia) AWS Region (<code>us-east-1</code>). </p>")
type meetingNotificationConfiguration = {
  @ocaml.doc("<p>The SQS queue ARN.</p>") @as("SqsQueueArn") sqsQueueArn: option<arn>,
  @ocaml.doc("<p>The SNS topic ARN.</p>") @as("SnsTopicArn") snsTopicArn: option<arn>,
}
@ocaml.doc(
  "<p>A set of endpoints used by clients to connect to the media service group for an Amazon Chime SDK meeting.</p>"
)
type mediaPlacement = {
  @ocaml.doc("<p>The event ingestion URL to which you send client meeting events.</p>")
  @as("EventIngestionUrl")
  eventIngestionUrl: option<uriType>,
  @ocaml.doc("<p>The turn control URL.</p>") @as("TurnControlUrl") turnControlUrl: option<uriType>,
  @ocaml.doc("<p>The signaling URL.</p>") @as("SignalingUrl") signalingUrl: option<uriType>,
  @ocaml.doc("<p>The screen viewing URL.</p>") @as("ScreenViewingUrl")
  screenViewingUrl: option<uriType>,
  @ocaml.doc("<p>The screen sharing URL.</p>") @as("ScreenSharingUrl")
  screenSharingUrl: option<uriType>,
  @ocaml.doc("<p>The screen data URL.</p>") @as("ScreenDataUrl") screenDataUrl: option<uriType>,
  @ocaml.doc("<p>The audio fallback URL.</p>") @as("AudioFallbackUrl")
  audioFallbackUrl: option<uriType>,
  @ocaml.doc("<p>The audio host URL.</p>") @as("AudioHostUrl") audioHostUrl: option<uriType>,
}
@ocaml.doc(
  "<p>The logging configuration associated with an Amazon Chime Voice Connector. Specifies whether SIP message logs are enabled for sending to Amazon CloudWatch Logs.</p>"
)
type loggingConfiguration = {
  @ocaml.doc(
    "<p>Boolean that enables logging of detailed media metrics for Voice Connectors to CloudWatch logs.</p>"
  )
  @as("EnableMediaMetricLogs")
  enableMediaMetricLogs: option<boolean_>,
  @ocaml.doc("<p>Boolean that enables SIP message logs to CloudWatch logs.</p>")
  @as("EnableSIPLogs")
  enableSIPLogs: option<boolean_>,
}
type licenseList = array<license>
@ocaml.doc("<p>Invitation object returned after emailing users to invite them to join the Amazon Chime
                <code>Team</code> account.</p>")
type invite = {
  @ocaml.doc("<p>The status of the invite email.</p>") @as("EmailStatus")
  emailStatus: option<emailStatus>,
  @ocaml.doc("<p>The email address to which the invite is sent.</p>") @as("EmailAddress")
  emailAddress: option<emailAddress>,
  @ocaml.doc("<p>The status of the invite.</p>") @as("Status") status: option<inviteStatus>,
  @ocaml.doc("<p>The invite ID.</p>") @as("InviteId") inviteId: option<string_>,
}
@ocaml.doc("<p>The details of a user.</p>")
type identity = {
  @ocaml.doc("<p>The name in an Identity.</p>") @as("Name") name: option<resourceName>,
  @ocaml.doc("<p>The ARN in an Identity.</p>") @as("Arn") arn: option<chimeArn>,
}
@ocaml.doc("<p>The country and area code for a proxy phone number in a proxy phone session.</p>")
type geoMatchParams = {
  @ocaml.doc("<p>The area code.</p>") @as("AreaCode") areaCode: areaCode,
  @ocaml.doc("<p>The country.</p>") @as("Country") country: country,
}
type externalUserIdList = array<externalUserIdType>
@ocaml.doc(
  "<p>The configuration that allows a bot to receive outgoing events. Can be either an HTTPS endpoint or a Lambda function ARN.</p>"
)
type eventsConfiguration = {
  @ocaml.doc("<p>Lambda function ARN that allows a bot to receive outgoing events.</p>")
  @as("LambdaFunctionArn")
  lambdaFunctionArn: option<sensitiveString>,
  @ocaml.doc("<p>HTTPS endpoint that allows a bot to receive outgoing events.</p>")
  @as("OutboundEventsHTTPSEndpoint")
  outboundEventsHTTPSEndpoint: option<sensitiveString>,
  @ocaml.doc("<p>The bot ID.</p>") @as("BotId") botId: option<string_>,
}
@ocaml.doc("<p>Settings specific to the Amazon Transcribe engine.</p>")
type engineTranscribeSettings = {
  @ocaml.doc("<p>The name of the language model used during transcription.</p>")
  @as("LanguageModelName")
  languageModelName: option<transcribeLanguageModelName>,
  @ocaml.doc("<p>Lists the PII entity types you want to identify or redact. To specify entity types, you must enable <code>ContentIdentificationType</code> or <code>ContentRedactionType</code>.</p>
        <p>
            <code>PIIEntityTypes</code> must be comma-separated. The available values are: 
            <code>BANK_ACCOUNT_NUMBER</code>, <code>BANK_ROUTING, CREDIT_DEBIT_NUMBER</code>, <code>CREDIT_DEBIT_CVV</code>, <code>CREDIT_DEBIT_EXPIRY</code>, <code>PIN</code>, <code>EMAIL</code>, 
            <code>ADDRESS</code>, <code>NAME</code>, <code>PHONE</code>, <code>SSN</code>, and <code>ALL</code>.</p>
        
        <p>
            <code>PiiEntityTypes</code> is an optional parameter with a default value of <code>ALL</code>.</p>")
  @as("PiiEntityTypes")
  piiEntityTypes: option<transcribePiiEntityTypes>,
  @ocaml.doc(
    "<p>Set this field to <code>PII</code> to redact personally identifiable information in the transcription output. Content redaction is performed only upon complete transcription of the audio segments.</p>"
  )
  @as("ContentRedactionType")
  contentRedactionType: option<transcribeContentRedactionType>,
  @ocaml.doc(
    "<p>Set this field to <code>PII</code> to identify personally identifiable information in the transcription output.</p>"
  )
  @as("ContentIdentificationType")
  contentIdentificationType: option<transcribeContentIdentificationType>,
  @ocaml.doc(
    "<p>The stabity level of a partial results transcription. Determines how stable you want the transcription results to be. A higher level means the transcription results are less likely to change.</p>"
  )
  @as("PartialResultsStability")
  partialResultsStability: option<transcribePartialResultsStability>,
  @ocaml.doc(
    "<p>Generates partial transcription results that are less likely to change as meeting attendees speak. It does so by only allowing the last few words from the partial results to change.</p>"
  )
  @as("EnablePartialResultsStabilization")
  enablePartialResultsStabilization: option<boolean_>,
  @ocaml.doc(
    "<p>The AWS Region passed to Amazon Transcribe. If you don't specify a Region, Amazon Chime uses the meeting's Region.</p>"
  )
  @as("Region")
  region: option<transcribeRegion>,
  @ocaml.doc("<p>The name of the vocabulary passed to Amazon Transcribe.</p>") @as("VocabularyName")
  vocabularyName: option<string_>,
  @ocaml.doc("<p>The name of the vocabulary filter passed to Amazon Transcribe.</p>")
  @as("VocabularyFilterName")
  vocabularyFilterName: option<string_>,
  @ocaml.doc("<p>The filtering method passed to Amazon Transcribe.</p>")
  @as("VocabularyFilterMethod")
  vocabularyFilterMethod: option<transcribeVocabularyFilterMethod>,
  @ocaml.doc("<p>The language code specified for the Amazon Transcribe engine.</p>")
  @as("LanguageCode")
  languageCode: transcribeLanguageCode,
}
@ocaml.doc("<p>Settings specific to the Amazon Transcribe Medical engine.</p>")
type engineTranscribeMedicalSettings = {
  @ocaml.doc(
    "<p>Set this field to <code>PHI</code> to identify personal health information in the transcription output.</p>"
  )
  @as("ContentIdentificationType")
  contentIdentificationType: option<transcribeMedicalContentIdentificationType>,
  @ocaml.doc(
    "<p>The AWS Region passed to Amazon Transcribe Medical. If you don't specify a Region, Amazon Chime uses the meeting's Region.</p>"
  )
  @as("Region")
  region: option<transcribeMedicalRegion>,
  @ocaml.doc("<p>The name of the vocabulary passed to Amazon Transcribe Medical.</p>")
  @as("VocabularyName")
  vocabularyName: option<string_>,
  @ocaml.doc("<p>The type of transcription.</p>") @as("Type") type_: transcribeMedicalType,
  @ocaml.doc("<p>The specialty specified for the Amazon Transcribe Medical engine.</p>")
  @as("Specialty")
  specialty: transcribeMedicalSpecialty,
  @ocaml.doc("<p>The language code specified for the Amazon Transcribe Medical engine.</p>")
  @as("LanguageCode")
  languageCode: transcribeMedicalLanguageCode,
}
type e164PhoneNumberList = array<e164PhoneNumber>
@ocaml.doc(
  "<p>The Dialed Number Identification Service (DNIS) emergency calling configuration details associated with an Amazon Chime Voice Connector's emergency calling configuration.</p>"
)
type dnisemergencyCallingConfiguration = {
  @ocaml.doc(
    "<p>The country from which emergency calls are allowed, in ISO 3166-1 alpha-2 format.</p>"
  )
  @as("CallingCountry")
  callingCountry: alpha2CountryCode,
  @ocaml.doc("<p>The DNIS phone number to route test emergency calls to, in E.164 format.</p>")
  @as("TestPhoneNumber")
  testPhoneNumber: option<e164PhoneNumber>,
  @ocaml.doc("<p>The DNIS phone number to route emergency calls to, in E.164 format.</p>")
  @as("EmergencyPhoneNumber")
  emergencyPhoneNumber: e164PhoneNumber,
}
@ocaml.doc(
  "<p>The SIP credentials used to authenticate requests to your Amazon Chime Voice Connector.</p>"
)
type credential = {
  @ocaml.doc(
    "<p>The RFC2617 compliant password associated with the SIP credentials, in US-ASCII format.</p>"
  )
  @as("Password")
  password: option<sensitiveString>,
  @ocaml.doc("<p>The RFC2617 compliant user name associated with the SIP credentials, in US-ASCII
            format.</p>")
  @as("Username")
  username: option<sensitiveString>,
}
@ocaml.doc(
  "<p>The list of errors returned when errors are encountered during the BatchCreateAttendee and CreateAttendee actions. This includes external user IDs, error codes, and error messages.</p>"
)
type createAttendeeError = {
  @ocaml.doc("<p>The error message.</p>") @as("ErrorMessage") errorMessage: option<string_>,
  @ocaml.doc("<p>The error code.</p>") @as("ErrorCode") errorCode: option<string_>,
  @ocaml.doc(
    "<p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>"
  )
  @as("ExternalUserId")
  externalUserId: option<externalUserIdType>,
}
type countryList = array<country>
@ocaml.doc(
  "<p>The retention settings that determine how long to retain conversation messages for an Amazon Chime Enterprise account.</p>"
)
type conversationRetentionSettings = {
  @ocaml.doc("<p>The number of days for which to retain conversation messages.</p>")
  @as("RetentionDays")
  retentionDays: option<retentionDays>,
}
@ocaml.doc("<p>The content artifact object.</p>")
type contentArtifactsConfiguration = {
  @ocaml.doc("<p>The MUX type of the artifact configuration.</p>") @as("MuxType")
  muxType: option<contentMuxType>,
  @ocaml.doc("<p>Indicates whether the content artifact is enabled or disabled.</p>") @as("State")
  state: artifactsState,
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
@ocaml.doc("<p>The details of the retention settings for a channel.</p>")
type channelRetentionSettings = {
  @ocaml.doc("<p>The time in days to retain the messages in a channel.</p>") @as("RetentionDays")
  retentionDays: option<retentionDays>,
}
type capabilityList = array<capability>
type callingRegionList = array<callingRegion>
@ocaml.doc("<p>The Amazon Chime Business Calling settings for the administrator's AWS account. Includes any
            Amazon S3 buckets designated for storing call detail records.</p>")
type businessCallingSettings = {
  @ocaml.doc("<p>The Amazon S3 bucket designated for call detail record storage.</p>")
  @as("CdrBucket")
  cdrBucket: option<string_>,
}
@ocaml.doc(
  "<p>A resource that allows Enterprise account administrators to configure an interface to receive events from Amazon Chime.</p>"
)
type bot = {
  @ocaml.doc(
    "<p>The security token used to authenticate Amazon Chime with the outgoing event endpoint.</p>"
  )
  @as("SecurityToken")
  securityToken: option<sensitiveString>,
  @ocaml.doc("<p>The bot email address.</p>") @as("BotEmail") botEmail: option<sensitiveString>,
  @ocaml.doc("<p>The updated bot timestamp, in ISO 8601 format.</p>") @as("UpdatedTimestamp")
  updatedTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The bot creation timestamp, in ISO 8601 format.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>When true, the bot is stopped from running in your account.</p>") @as("Disabled")
  disabled: option<nullableBoolean>,
  @ocaml.doc("<p>The bot type.</p>") @as("BotType") botType: option<botType>,
  @ocaml.doc("<p>The bot display name.</p>") @as("DisplayName")
  displayName: option<sensitiveString>,
  @ocaml.doc("<p>The unique ID for the bot user.</p>") @as("UserId") userId: option<string_>,
  @ocaml.doc("<p>The bot ID.</p>") @as("BotId") botId: option<string_>,
}
@ocaml.doc("<p>A list of failed member ARNs, error codes, and error messages.</p>")
type batchCreateChannelMembershipError = {
  @ocaml.doc("<p>The error message.</p>") @as("ErrorMessage") errorMessage: option<string_>,
  @ocaml.doc("<p>The error code.</p>") @as("ErrorCode") errorCode: option<errorCode>,
  @ocaml.doc("<p>The ARN of the member that the service couldn't add.</p>") @as("MemberArn")
  memberArn: option<chimeArn>,
}
@ocaml.doc("<p>The audio artifact configuration object.</p>")
type audioArtifactsConfiguration = {
  @ocaml.doc("<p>The MUX type of the audio artifact configuration object.</p>") @as("MuxType")
  muxType: audioMuxType,
}
type attendeeTagKeyList = array<tagKey>
type attendeeIdList = array<guidString>
@ocaml.doc("<p>
An Amazon Chime SDK meeting attendee. Includes a unique 
<code>AttendeeId</code>
and 
<code>JoinToken</code>
. The 
<code>JoinToken</code>
allows a client to authenticate and join as the specified attendee. The 
<code>JoinToken</code>
expires when the meeting ends or when 
<a>DeleteAttendee</a>
is called. After that, the attendee is unable to join the meeting.
</p>

         <p>We recommend securely transferring each <code>JoinToken</code> from your server application
            to the client so that no other client has access to the token except for the one
            authorized to represent the attendee.</p>")
type attendee = {
  @ocaml.doc("<p>The join token used by the Amazon Chime SDK attendee.</p>") @as("JoinToken")
  joinToken: option<joinTokenString>,
  @ocaml.doc("<p>The Amazon Chime SDK attendee ID.</p>") @as("AttendeeId")
  attendeeId: option<guidString>,
  @ocaml.doc(
    "<p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>"
  )
  @as("ExternalUserId")
  externalUserId: option<externalUserIdType>,
}
@ocaml.doc("<p>Summary of the details of an <code>AppInstanceUser</code>.</p>")
type appInstanceUserSummary = {
  @ocaml.doc("<p>The metadata of the <code>AppInstanceUser</code>.</p>") @as("Metadata")
  metadata: option<metadata>,
  @ocaml.doc("<p>The name of an <code>AppInstanceUser</code>.</p>") @as("Name")
  name: option<userName>,
  @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
  appInstanceUserArn: option<chimeArn>,
}
@ocaml.doc("<p>Summary of the membership details of an <code>AppInstanceUser</code>.</p>")
type appInstanceUserMembershipSummary = {
  @ocaml.doc("<p>The time at which a message was last read.</p>") @as("ReadMarkerTimestamp")
  readMarkerTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The type of <code>ChannelMembership</code>.</p>") @as("Type")
  type_: option<channelMembershipType>,
}
@ocaml.doc("<p>The details of an <code>AppInstanceUser</code>.</p>")
type appInstanceUser = {
  @ocaml.doc("<p>The time at which the <code>AppInstanceUser</code> was last updated.</p>")
  @as("LastUpdatedTimestamp")
  lastUpdatedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The metadata of the <code>AppInstanceUser</code>.</p>") @as("Metadata")
  metadata: option<metadata>,
  @ocaml.doc("<p>The time at which the <code>AppInstanceUser</code> was created.</p>")
  @as("CreatedTimestamp")
  createdTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The name of the <code>AppInstanceUser</code>.</p>") @as("Name")
  name: option<userName>,
  @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
  appInstanceUserArn: option<chimeArn>,
}
@ocaml.doc("<p>Summary of the data for an <code>AppInstance</code>.</p>")
type appInstanceSummary = {
  @ocaml.doc("<p>The metadata of the <code>AppInstance</code>.</p>") @as("Metadata")
  metadata: option<metadata>,
  @ocaml.doc("<p>The name of the <code>AppInstance</code>.</p>") @as("Name")
  name: option<nonEmptyResourceName>,
  @ocaml.doc("<p>The <code>AppInstance</code> ARN.</p>") @as("AppInstanceArn")
  appInstanceArn: option<chimeArn>,
}
@ocaml.doc("<p>The details of the streaming configuration of an <code>AppInstance</code>.</p>")
type appInstanceStreamingConfiguration = {
  @ocaml.doc("<p>The resource ARN.</p>") @as("ResourceArn") resourceArn: arn,
  @ocaml.doc("<p>The type of data to be streamed.</p>") @as("AppInstanceDataType")
  appInstanceDataType: appInstanceDataType,
}
@ocaml.doc(
  "<p>The details of an <code>AppInstance</code>, an instance of an Amazon Chime SDK messaging application.</p>"
)
type appInstance = {
  @ocaml.doc("<p>The time an <code>AppInstance</code> was last updated. In epoch milliseconds.</p>")
  @as("LastUpdatedTimestamp")
  lastUpdatedTimestamp: option<timestamp_>,
  @ocaml.doc(
    "<p>The time at which an <code>AppInstance</code> was created. In epoch milliseconds.</p>"
  )
  @as("CreatedTimestamp")
  createdTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The metadata of an <code>AppInstance</code>.</p>") @as("Metadata")
  metadata: option<metadata>,
  @ocaml.doc("<p>The name of an <code>AppInstance</code>.</p>") @as("Name")
  name: option<nonEmptyResourceName>,
  @ocaml.doc("<p>The ARN of the messaging instance.</p>") @as("AppInstanceArn")
  appInstanceArn: option<chimeArn>,
}
@ocaml.doc(
  "<p>The Alexa for Business metadata associated with an Amazon Chime user, used to integrate Alexa for Business with a device.</p>"
)
type alexaForBusinessMetadata = {
  @ocaml.doc("<p>The ARN of the room resource.</p>") @as("AlexaForBusinessRoomArn")
  alexaForBusinessRoomArn: option<sensitiveString>,
  @ocaml.doc("<p>Starts or stops Alexa for Business.</p>") @as("IsAlexaForBusinessEnabled")
  isAlexaForBusinessEnabled: option<boolean_>,
}
@ocaml.doc("<p>Settings related to the Amazon Chime account. This includes settings that start or stop
            remote control of shared screens, or start or stop the dial-out option in the Amazon Chime web application. For more information about these settings, see 
    <a href=\"https://docs.aws.amazon.com/chime/latest/ag/policies.html\">Use the Policies Page</a> in the <i>Amazon Chime Administration Guide</i>.</p>")
type accountSettings = {
  @ocaml.doc("<p>Setting that allows meeting participants to choose the <b>Call me at a phone number</b> option. For more information, see 
    <a href=\"https://docs.aws.amazon.com/chime/latest/ug/chime-join-meeting.html\">Join a Meeting without the Amazon Chime App</a>.</p>")
  @as("EnableDialOut")
  enableDialOut: option<boolean_>,
  @ocaml.doc(
    "<p>Setting that stops or starts remote control of shared screens during meetings.</p>"
  )
  @as("DisableRemoteControl")
  disableRemoteControl: option<boolean_>,
}
type voiceConnectorList = array<voiceConnector>
type voiceConnectorItemList = array<voiceConnectorItem>
@ocaml.doc("<p>Settings associated with an Amazon Chime user, including inbound and outbound calling and text
            messaging.</p>")
type userSettings = {
  @ocaml.doc("<p>The telephony settings associated with the user.</p>") @as("Telephony")
  telephony: telephonySettings,
}
type userErrorList = array<userError>
@ocaml.doc("<p>The user on the Amazon Chime account.</p>")
type user = {
  @ocaml.doc("<p>The user's personal meeting PIN.</p>") @as("PersonalPIN")
  personalPIN: option<string_>,
  @ocaml.doc("<p>The Alexa for Business metadata.</p>") @as("AlexaForBusinessMetadata")
  alexaForBusinessMetadata: option<alexaForBusinessMetadata>,
  @ocaml.doc(
    "<p>Date and time when the user is invited to the Amazon Chime account, in ISO 8601 format.</p>"
  )
  @as("InvitedOn")
  invitedOn: option<iso8601Timestamp>,
  @ocaml.doc("<p>Date and time when the user is registered, in ISO 8601 format.</p>")
  @as("RegisteredOn")
  registeredOn: option<iso8601Timestamp>,
  @ocaml.doc("<p>The user invite status.</p>") @as("UserInvitationStatus")
  userInvitationStatus: option<inviteStatus>,
  @ocaml.doc("<p>The user registration status.</p>") @as("UserRegistrationStatus")
  userRegistrationStatus: option<registrationStatus>,
  @ocaml.doc("<p>The user type.</p>") @as("UserType") userType: option<userType>,
  @ocaml.doc("<p>The license type for the user.</p>") @as("LicenseType")
  licenseType: option<license>,
  @ocaml.doc("<p>The display name of the user.</p>") @as("DisplayName")
  displayName: option<sensitiveString>,
  @ocaml.doc("<p>The primary phone number associated with the user.</p>")
  @as("PrimaryProvisionedNumber")
  primaryProvisionedNumber: option<sensitiveString>,
  @ocaml.doc("<p>The primary email address of the user.</p>") @as("PrimaryEmail")
  primaryEmail: option<emailAddress>,
  @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: option<string_>,
  @ocaml.doc("<p>The user ID.</p>") @as("UserId") userId: string_,
}
@ocaml.doc("<p>The user ID and user fields to update, used with the 
<a>BatchUpdateUser</a> action.</p>")
type updateUserRequestItem = {
  @ocaml.doc("<p>The Alexa for Business metadata.</p>") @as("AlexaForBusinessMetadata")
  alexaForBusinessMetadata: option<alexaForBusinessMetadata>,
  @ocaml.doc("<p>The user type.</p>") @as("UserType") userType: option<userType>,
  @ocaml.doc("<p>The user license type.</p>") @as("LicenseType") licenseType: option<license>,
  @ocaml.doc("<p>The user ID.</p>") @as("UserId") userId: nonEmptyString,
}
type updatePhoneNumberRequestItemList = array<updatePhoneNumberRequestItem>
@ocaml.doc(
  "<p>The configuration for the current transcription operation. Must contain <code>EngineTranscribeSettings</code> or <code>EngineTranscribeMedicalSettings</code>.</p>"
)
type transcriptionConfiguration = {
  @ocaml.doc("<p>The transcription configuration settings passed to Amazon Transcribe Medical.</p>")
  @as("EngineTranscribeMedicalSettings")
  engineTranscribeMedicalSettings: option<engineTranscribeMedicalSettings>,
  @ocaml.doc("<p>The transcription configuration settings passed to Amazon Transcribe.</p>")
  @as("EngineTranscribeSettings")
  engineTranscribeSettings: option<engineTranscribeSettings>,
}
@ocaml.doc("<p>Termination settings enable your SIP hosts to make outbound calls using your Amazon Chime
            Voice Connector.</p>")
type termination = {
  @ocaml.doc("<p>When termination settings are disabled, outbound calls can not be made.</p>")
  @as("Disabled")
  disabled: option<boolean_>,
  @ocaml.doc("<p>The IP addresses allowed to make calls, in CIDR format. Required.</p>")
  @as("CidrAllowedList")
  cidrAllowedList: option<stringList>,
  @ocaml.doc(
    "<p>The countries to which calls are allowed, in ISO 3166-1 alpha-2 format. Required.</p>"
  )
  @as("CallingRegions")
  callingRegions: option<callingRegionList>,
  @ocaml.doc("<p>The default caller ID phone number.</p>") @as("DefaultPhoneNumber")
  defaultPhoneNumber: option<e164PhoneNumber>,
  @ocaml.doc("<p>The limit on calls per second. Max value based on account service quota. Default value of
            1.</p>")
  @as("CpsLimit")
  cpsLimit: option<cpsLimit>,
}
type tagList_ = array<tag>
type streamingNotificationTargetList = array<streamingNotificationTarget>
type sipRuleTargetApplicationList = array<sipRuleTargetApplication>
type sipMediaApplicationEndpointList = array<sipMediaApplicationEndpoint>
type signinDelegateGroupList = array<signinDelegateGroup>
@ocaml.doc(
  "<p>The video streams to capture for a specified media capture pipeline. The total number of video streams can't exceed 25.</p>"
)
type selectedVideoStreams = {
  @ocaml.doc("<p>The external user IDs of the streams selected for a media capture pipeline.</p>")
  @as("ExternalUserIds")
  externalUserIds: option<externalUserIdList>,
  @ocaml.doc("<p>The attendee IDs of the streams selected for a media capture pipeline. </p>")
  @as("AttendeeIds")
  attendeeIds: option<attendeeIdList>,
}
@ocaml.doc("<p>The room membership details.</p>")
type roomMembership = {
  @ocaml.doc("<p>The room membership update timestamp, in ISO 8601 format.</p>")
  @as("UpdatedTimestamp")
  updatedTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The identifier of the user that invited the room member.</p>") @as("InvitedBy")
  invitedBy: option<nonEmptyString>,
  @ocaml.doc("<p>The membership role.</p>") @as("Role") role: option<roomMembershipRole>,
  @as("Member") member: option<member>,
  @ocaml.doc("<p>The room ID.</p>") @as("RoomId") roomId: option<nonEmptyString>,
}
type roomList = array<room>
@ocaml.doc(
  "<p>The retention settings for an Amazon Chime Enterprise account that determine how long to retain items such as chat-room messages and chat-conversation messages.</p>"
)
type retentionSettings = {
  @ocaml.doc("<p>The chat conversation retention settings.</p>")
  @as("ConversationRetentionSettings")
  conversationRetentionSettings: option<conversationRetentionSettings>,
  @ocaml.doc("<p>The chat room retention settings.</p>") @as("RoomRetentionSettings")
  roomRetentionSettings: option<roomRetentionSettings>,
}
@ocaml.doc("<p>The proxy configuration for an Amazon Chime Voice Connector.</p>")
type proxy = {
  @ocaml.doc("<p>The countries for proxy phone numbers to be selected from.</p>")
  @as("PhoneNumberCountries")
  phoneNumberCountries: option<stringList>,
  @ocaml.doc("<p>The phone number to route calls to after a proxy session expires.</p>")
  @as("FallBackPhoneNumber")
  fallBackPhoneNumber: option<e164PhoneNumber>,
  @ocaml.doc(
    "<p>When true, stops proxy sessions from being created on the specified Amazon Chime Voice Connector.</p>"
  )
  @as("Disabled")
  disabled: option<boolean_>,
  @ocaml.doc("<p>The default number of minutes allowed for proxy sessions.</p>")
  @as("DefaultSessionExpiryMinutes")
  defaultSessionExpiryMinutes: option<integer_>,
}
type phoneNumberErrorList = array<phoneNumberError>
@ocaml.doc("<p>The phone number country.</p>")
type phoneNumberCountry = {
  @ocaml.doc("<p>The supported phone number types. </p>") @as("SupportedPhoneNumberTypes")
  supportedPhoneNumberTypes: option<phoneNumberTypeList>,
  @ocaml.doc("<p>The phone number country code. Format: ISO 3166-1 alpha-2.</p>") @as("CountryCode")
  countryCode: option<alpha2CountryCode>,
}
type phoneNumberAssociationList = array<phoneNumberAssociation>
type participants = array<participant>
type originationRouteList = array<originationRoute>
type orderedPhoneNumberList = array<orderedPhoneNumber>
type membershipItemList = array<membershipItem>
type members = array<identity>
type memberErrorList = array<memberError>
type meetingTagList = array<tag>
@ocaml.doc("<p>A meeting created using the Amazon Chime SDK.</p>")
type meeting = {
  @ocaml.doc("<p>The Region in which you create the meeting. Available values: <code>af-south-1</code>, <code>ap-northeast-1</code>, 
    <code>ap-northeast-2</code>, <code>ap-south-1</code>, <code>ap-southeast-1</code>, <code>ap-southeast-2</code>, <code>ca-central-1</code>, 
    <code>eu-central-1</code>, <code>eu-north-1</code>, <code>eu-south-1</code>,
                <code>eu-west-1</code>, <code>eu-west-2</code>, <code>eu-west-3</code>,
                <code>sa-east-1</code>, <code>us-east-1</code>, <code>us-east-2</code>,
                <code>us-west-1</code>, <code>us-west-2</code>.</p>")
  @as("MediaRegion")
  mediaRegion: option<string_>,
  @ocaml.doc("<p>The media placement for the meeting.</p>") @as("MediaPlacement")
  mediaPlacement: option<mediaPlacement>,
  @ocaml.doc("<p>The external meeting ID.</p>") @as("ExternalMeetingId")
  externalMeetingId: option<externalMeetingIdType>,
  @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId")
  meetingId: option<guidString>,
}
type inviteList = array<invite>
type dnisemergencyCallingConfigurationList = array<dnisemergencyCallingConfiguration>
type credentialList = array<credential>
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
@ocaml.doc("<p>Summary of the messages in a <code>Channel</code>.</p>")
type channelMessageSummary = {
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
@ocaml.doc("<p>The details of a message in a channel.</p>")
type channelMessage = {
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
@ocaml.doc("<p>Summary of the details of a <code>ChannelMembership</code>.</p>")
type channelMembershipSummary = {
  @ocaml.doc("<p>A member's summary data.</p>") @as("Member") member: option<identity>,
}
@ocaml.doc("<p>Summary of the channel membership details of an <code>AppInstanceUser</code>.</p>")
type channelMembershipForAppInstanceUserSummary = {
  @as("AppInstanceUserMembershipSummary")
  appInstanceUserMembershipSummary: option<appInstanceUserMembershipSummary>,
  @as("ChannelSummary") channelSummary: option<channelSummary>,
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
@ocaml.doc("<p>The details of a channel.</p>")
type channel = {
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
  @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  @ocaml.doc("<p>The name of the channel.</p>") @as("Name") name: option<nonEmptyResourceName>,
}
type botList = array<bot>
type batchCreateChannelMembershipErrors = array<batchCreateChannelMembershipError>
type batchCreateAttendeeErrorList = array<createAttendeeError>
type attendeeTagList = array<tag>
type attendeeList = array<attendee>
@ocaml.doc("<p>The configuration for the artifacts.</p>")
type artifactsConfiguration = {
  @ocaml.doc("<p>The configuration for the content artifacts.</p>") @as("Content")
  content: contentArtifactsConfiguration,
  @ocaml.doc("<p>The configuration for the video artifacts.</p>") @as("Video")
  video: videoArtifactsConfiguration,
  @ocaml.doc("<p>The configuration for the audio artifacts.</p>") @as("Audio")
  audio: audioArtifactsConfiguration,
}
type appInstanceUserList = array<appInstanceUserSummary>
type appInstanceStreamingConfigurationList = array<appInstanceStreamingConfiguration>
@ocaml.doc("<p>The details of the data-retention settings for an <code>AppInstance</code>.</p>")
type appInstanceRetentionSettings = {
  @ocaml.doc("<p>The length of time in days to retain the messages in a channel.</p>")
  @as("ChannelRetentionSettings")
  channelRetentionSettings: option<channelRetentionSettings>,
}
type appInstanceList = array<appInstanceSummary>
@ocaml.doc("<p>Summary of the details of an <code>AppInstanceAdmin</code>.</p>")
type appInstanceAdminSummary = {
  @ocaml.doc("<p>The details of the <code>AppInstanceAdmin</code>.</p>") @as("Admin")
  admin: option<identity>,
}
@ocaml.doc("<p>The details of an <code>AppInstanceAdmin</code>.</p>")
type appInstanceAdmin = {
  @ocaml.doc("<p>The time at which an administrator was created.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<timestamp_>,
  @ocaml.doc(
    "<p>The ARN of the <code>AppInstance</code> for which the user is an administrator.</p>"
  )
  @as("AppInstanceArn")
  appInstanceArn: option<chimeArn>,
  @ocaml.doc("<p>The <code>AppInstanceAdmin</code> data.</p>") @as("Admin") admin: option<identity>,
}
@ocaml.doc("<p>The Amazon Chime Voice Connector group configuration, including associated Amazon Chime Voice
            Connectors. You can include Amazon Chime Voice Connectors from different AWS Regions in
            your group. This creates a fault tolerant mechanism for fallback in case of availability
            events.</p>")
type voiceConnectorGroup = {
  @ocaml.doc("<p>The ARN of the specified Amazon Chime Voice Connector group.</p>")
  @as("VoiceConnectorGroupArn")
  voiceConnectorGroupArn: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The updated Amazon Chime Voice Connector group time stamp, in ISO 8601 format.</p>"
  )
  @as("UpdatedTimestamp")
  updatedTimestamp: option<iso8601Timestamp>,
  @ocaml.doc(
    "<p>The Amazon Chime Voice Connector group creation time stamp, in ISO 8601 format.</p>"
  )
  @as("CreatedTimestamp")
  createdTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The Amazon Chime Voice Connectors to which to route inbound calls.</p>")
  @as("VoiceConnectorItems")
  voiceConnectorItems: option<voiceConnectorItemList>,
  @ocaml.doc("<p>The name of the Amazon Chime Voice Connector group.</p>") @as("Name")
  name: option<voiceConnectorGroupName>,
  @ocaml.doc("<p>The Amazon Chime Voice Connector group ID.</p>") @as("VoiceConnectorGroupId")
  voiceConnectorGroupId: option<nonEmptyString>,
}
type userList = array<user>
type updateUserRequestItemList = array<updateUserRequestItem>
@ocaml.doc("<p>The streaming configuration associated with an Amazon Chime Voice Connector. Specifies whether
            media streaming is enabled for sending to Amazon Kinesis, and shows the retention period
            for the Amazon Kinesis data, in hours.</p>")
type streamingConfiguration = {
  @ocaml.doc("<p>The streaming notification targets.</p>") @as("StreamingNotificationTargets")
  streamingNotificationTargets: option<streamingNotificationTargetList>,
  @ocaml.doc("<p>When true, media streaming to Amazon Kinesis is turned off.</p>") @as("Disabled")
  disabled: option<boolean_>,
  @ocaml.doc("<p>The retention period, in hours, for the Amazon Kinesis data.</p>")
  @as("DataRetentionInHours")
  dataRetentionInHours: dataRetentionInHours,
}
@ocaml.doc("<p>Source configuration for a specified media capture pipeline.</p>")
type sourceConfiguration = {
  @ocaml.doc(
    "<p>The selected video streams to capture for a specified media capture pipeline. The number of video streams can't exceed 25.</p>"
  )
  @as("SelectedVideoStreams")
  selectedVideoStreams: option<selectedVideoStreams>,
}
@ocaml.doc(
  "<p>The SIP rule details, including name, triggers, and target applications. An AWS account can have multiple SIP rules.</p>"
)
type sipRule = {
  @ocaml.doc("<p>The time at which the SIP rule was last updated, in ISO 8601 format.</p>")
  @as("UpdatedTimestamp")
  updatedTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The time at which the SIP rule was created, in ISO 8601 format.</p>")
  @as("CreatedTimestamp")
  createdTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>Target SIP media application and other details, such as priority and AWS Region, to be
            specified in the SIP rule. Only one SIP rule per AWS Region can be provided.</p>")
  @as("TargetApplications")
  targetApplications: option<sipRuleTargetApplicationList>,
  @ocaml.doc("<p>If <code>TriggerType</code> is <code>RequestUriHostname</code>, then the value can be the
            outbound host name of the Amazon Chime Voice Connector. If <code>TriggerType</code> is
                <code>ToPhoneNumber</code>, then the value can be a customer-owned phone number in
            E164 format. <code>SipRule</code> is triggered when a SIP rule requests host name or
                <code>ToPhoneNumber</code> matches in the incoming SIP request.</p>")
  @as("TriggerValue")
  triggerValue: option<nonEmptyString>,
  @ocaml.doc("<p>The type of trigger assigned to the SIP rule in <code>TriggerValue</code>, currently <code>RequestUriHostname</code> or 
        <code>ToPhoneNumber</code>.</p>")
  @as("TriggerType")
  triggerType: option<sipRuleTriggerType>,
  @ocaml.doc(
    "<p>Indicates whether the SIP rule is enabled or disabled. You must disable a rule before you can delete it.</p>"
  )
  @as("Disabled")
  disabled: option<boolean_>,
  @ocaml.doc("<p>The name of the SIP rule.</p>") @as("Name") name: option<sipRuleName>,
  @ocaml.doc("<p>The SIP rule ID.</p>") @as("SipRuleId") sipRuleId: option<nonEmptyString>,
}
@ocaml.doc(
  "<p>The details of the SIP media application, including name and endpoints. An AWS account can have multiple SIP media applications.</p>"
)
type sipMediaApplication = {
  @ocaml.doc("<p>The SIP media application updated timestamp, in ISO 8601 format.</p>")
  @as("UpdatedTimestamp")
  updatedTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The SIP media application creation timestamp, in ISO 8601 format.</p>")
  @as("CreatedTimestamp")
  createdTimestamp: option<iso8601Timestamp>,
  @ocaml.doc(
    "<p>List of endpoints for SIP media application. Currently, only one endpoint per SIP media application is permitted.</p>"
  )
  @as("Endpoints")
  endpoints: option<sipMediaApplicationEndpointList>,
  @ocaml.doc("<p>The name of the SIP media application.</p>") @as("Name")
  name: option<sipMediaApplicationName>,
  @ocaml.doc("<p>The AWS Region in which the SIP media application is created.</p>")
  @as("AwsRegion")
  awsRegion: option<string_>,
  @ocaml.doc("<p>The SIP media application ID.</p>") @as("SipMediaApplicationId")
  sipMediaApplicationId: option<nonEmptyString>,
}
type roomMembershipList = array<roomMembership>
@ocaml.doc("<p>The proxy session for an Amazon Chime Voice Connector.</p>")
type proxySession = {
  @ocaml.doc("<p>The country and area code for the proxy phone number.</p>") @as("GeoMatchParams")
  geoMatchParams: option<geoMatchParams>,
  @ocaml.doc(
    "<p>The preference for matching the country or area code of the proxy phone number with that of the first participant.</p>"
  )
  @as("GeoMatchLevel")
  geoMatchLevel: option<geoMatchLevel>,
  @ocaml.doc(
    "<p>The preference for proxy phone number reuse, or stickiness, between the same participants across sessions.</p>"
  )
  @as("NumberSelectionBehavior")
  numberSelectionBehavior: option<numberSelectionBehavior>,
  @ocaml.doc("<p>The proxy session participants.</p>") @as("Participants")
  participants: option<participants>,
  @ocaml.doc("<p>The ended time stamp, in ISO 8601 format.</p>") @as("EndedTimestamp")
  endedTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The updated time stamp, in ISO 8601 format.</p>") @as("UpdatedTimestamp")
  updatedTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The created time stamp, in ISO 8601 format.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The proxy session capabilities.</p>") @as("Capabilities")
  capabilities: option<capabilityList>,
  @ocaml.doc("<p>The number of minutes allowed for the proxy session.</p>") @as("ExpiryMinutes")
  expiryMinutes: option<positiveInteger>,
  @ocaml.doc("<p>The status of the proxy session.</p>") @as("Status")
  status: option<proxySessionStatus>,
  @ocaml.doc("<p>The name of the proxy session.</p>") @as("Name") name: option<string128>,
  @ocaml.doc("<p>The proxy session ID.</p>") @as("ProxySessionId")
  proxySessionId: option<nonEmptyString128>,
  @ocaml.doc("<p>The Amazon Chime voice connector ID.</p>") @as("VoiceConnectorId")
  voiceConnectorId: option<nonEmptyString128>,
}
@ocaml.doc("<p>The details of a phone number order created for Amazon Chime.</p>")
type phoneNumberOrder = {
  @ocaml.doc("<p>The updated phone number order time stamp, in ISO 8601 format.</p>")
  @as("UpdatedTimestamp")
  updatedTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The phone number order creation time stamp, in ISO 8601 format.</p>")
  @as("CreatedTimestamp")
  createdTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The ordered phone number details, such as the phone number in E.164 format and the phone
            number status.</p>")
  @as("OrderedPhoneNumbers")
  orderedPhoneNumbers: option<orderedPhoneNumberList>,
  @ocaml.doc("<p>The status of the phone number order.</p>") @as("Status")
  status: option<phoneNumberOrderStatus>,
  @ocaml.doc("<p>The phone number order product type.</p>") @as("ProductType")
  productType: option<phoneNumberProductType>,
  @ocaml.doc("<p>The phone number order ID.</p>") @as("PhoneNumberOrderId")
  phoneNumberOrderId: option<guidString>,
}
type phoneNumberCountriesList = array<phoneNumberCountry>
@ocaml.doc("<p>A phone number used for Amazon Chime Business Calling or an Amazon Chime Voice
            Connector.</p>")
type phoneNumber = {
  @ocaml.doc("<p>The deleted phone number timestamp, in ISO 8601 format.</p>")
  @as("DeletionTimestamp")
  deletionTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The updated phone number timestamp, in ISO 8601 format.</p>")
  @as("UpdatedTimestamp")
  updatedTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The phone number creation timestamp, in ISO 8601 format.</p>")
  @as("CreatedTimestamp")
  createdTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The outbound calling name status.</p>") @as("CallingNameStatus")
  callingNameStatus: option<callingNameStatus>,
  @ocaml.doc("<p>The outbound calling name associated with the phone number.</p>")
  @as("CallingName")
  callingName: option<callingName>,
  @ocaml.doc("<p>The phone number associations.</p>") @as("Associations")
  associations: option<phoneNumberAssociationList>,
  @ocaml.doc("<p>The phone number capabilities.</p>") @as("Capabilities")
  capabilities: option<phoneNumberCapabilities>,
  @ocaml.doc("<p>The phone number status.</p>") @as("Status") status: option<phoneNumberStatus>,
  @ocaml.doc("<p>The phone number product type.</p>") @as("ProductType")
  productType: option<phoneNumberProductType>,
  @ocaml.doc("<p>The phone number type.</p>") @as("Type") type_: option<phoneNumberType>,
  @ocaml.doc("<p>The phone number country. Format: ISO 3166-1 alpha-2.</p>") @as("Country")
  country: option<alpha2CountryCode>,
  @ocaml.doc("<p>The phone number, in E.164 format.</p>") @as("E164PhoneNumber")
  e164PhoneNumber: option<e164PhoneNumber>,
  @ocaml.doc("<p>The phone number ID.</p>") @as("PhoneNumberId") phoneNumberId: option<string_>,
}
@ocaml.doc("<p>Origination settings enable your SIP hosts to receive inbound calls using your Amazon Chime
            Voice Connector.</p>
         <note>
            <p>The parameters listed below are not required, but you must use at least one. </p>
         </note>")
type origination = {
  @ocaml.doc("<p>When origination settings are disabled, inbound calls are not enabled for your Amazon Chime
            Voice Connector. This parameter is not required, but you must specify this parameter or <code>Routes</code>.</p>")
  @as("Disabled")
  disabled: option<boolean_>,
  @ocaml.doc("<p>The call distribution properties defined for your SIP hosts. Valid range: Minimum value of 1.
    Maximum value of 20. This parameter is not required, but you must specify this parameter or <code>Disabled</code>.</p>")
  @as("Routes")
  routes: option<originationRouteList>,
}
type meetingList = array<meeting>
@ocaml.doc(
  "<p>The emergency calling configuration details associated with an Amazon Chime Voice Connector.</p>"
)
type emergencyCallingConfiguration = {
  @ocaml.doc(
    "<p>The Dialed Number Identification Service (DNIS) emergency calling configuration details.</p>"
  )
  @as("DNIS")
  dnis: option<dnisemergencyCallingConfigurationList>,
}
@ocaml.doc(
  "<p>The Amazon Chime SDK attendee fields to create, used with the BatchCreateAttendee action.</p>"
)
type createAttendeeRequestItem = {
  @ocaml.doc("<p>The tag key-value pairs.</p>") @as("Tags") tags: option<attendeeTagList>,
  @ocaml.doc(
    "<p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>"
  )
  @as("ExternalUserId")
  externalUserId: externalUserIdType,
}
type channelModeratorSummaryList = array<channelModeratorSummary>
type channelModeratedByAppInstanceUserSummaryList = array<channelModeratedByAppInstanceUserSummary>
type channelMessageSummaryList = array<channelMessageSummary>
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
type appInstanceAdminList = array<appInstanceAdminSummary>
@ocaml.doc(
  "<p>The Amazon Chime account details. An AWS account can have multiple Amazon Chime accounts.</p>"
)
type account = {
  @ocaml.doc("<p>The sign-in delegate groups associated with the account.</p>")
  @as("SigninDelegateGroups")
  signinDelegateGroups: option<signinDelegateGroupList>,
  @ocaml.doc("<p>The status of the account.</p>") @as("AccountStatus")
  accountStatus: option<accountStatus>,
  @ocaml.doc("<p>Supported licenses for the Amazon Chime account.</p>") @as("SupportedLicenses")
  supportedLicenses: option<licenseList>,
  @ocaml.doc("<p>The default license for the Amazon Chime account.</p>") @as("DefaultLicense")
  defaultLicense: option<license>,
  @ocaml.doc("<p>The Amazon Chime account creation timestamp, in ISO 8601 format.</p>")
  @as("CreatedTimestamp")
  createdTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The Amazon Chime account type. For more information about different account types, see 
    <a href=\"https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html\">Managing Your Amazon Chime Accounts</a> in the <i>Amazon Chime Administration
                Guide</i>.</p>")
  @as("AccountType")
  accountType: option<accountType>,
  @ocaml.doc("<p>The Amazon Chime account name.</p>") @as("Name") name: string_,
  @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: string_,
  @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: string_,
}
type voiceConnectorGroupList = array<voiceConnectorGroup>
type sipRuleList = array<sipRule>
type sipMediaApplicationList = array<sipMediaApplication>
type proxySessions = array<proxySession>
type phoneNumberOrderList = array<phoneNumberOrder>
type phoneNumberList = array<phoneNumber>
type createMeetingWithAttendeesRequestItemList = array<createAttendeeRequestItem>
type createAttendeeRequestItemList = array<createAttendeeRequestItem>
@ocaml.doc(
  "<p>The configuration object of the Amazon Chime SDK meeting for a specified media capture pipeline. <code>SourceType</code> must be <code>ChimeSdkMeeting</code>.</p>"
)
type chimeSdkMeetingConfiguration = {
  @ocaml.doc("<p>The configuration for the artifacts in an Amazon Chime SDK meeting.</p>")
  @as("ArtifactsConfiguration")
  artifactsConfiguration: option<artifactsConfiguration>,
  @ocaml.doc("<p>The source configuration for a specified media capture pipline.</p>")
  @as("SourceConfiguration")
  sourceConfiguration: option<sourceConfiguration>,
}
type accountList = array<account>
@ocaml.doc(
  "<p>A media capture pipeline object consisting of an ID, source type, source ARN, a sink type, a sink ARN, and a configuration object.</p>"
)
type mediaCapturePipeline = {
  @ocaml.doc(
    "<p>The configuration for a specified media capture pipeline. <code>SourceType</code> must be <code>ChimeSdkMeeting</code>.</p>"
  )
  @as("ChimeSdkMeetingConfiguration")
  chimeSdkMeetingConfiguration: option<chimeSdkMeetingConfiguration>,
  @ocaml.doc("<p>The time at which the capture pipeline was updated, in ISO 8601 format.</p>")
  @as("UpdatedTimestamp")
  updatedTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>The time at which the capture pipeline was created, in ISO 8601 format.</p>")
  @as("CreatedTimestamp")
  createdTimestamp: option<iso8601Timestamp>,
  @ocaml.doc("<p>ARN of the destination to which the media artifacts are saved.</p>") @as("SinkArn")
  sinkArn: option<arn>,
  @ocaml.doc(
    "<p>Destination type to which the media artifacts are saved. You must use an S3 Bucket.</p>"
  )
  @as("SinkType")
  sinkType: option<mediaPipelineSinkType>,
  @ocaml.doc("<p>The status of the media capture pipeline.</p>") @as("Status")
  status: option<mediaPipelineStatus>,
  @ocaml.doc("<p>ARN of the source from which the media artifacts will be saved.</p>")
  @as("SourceArn")
  sourceArn: option<arn>,
  @ocaml.doc(
    "<p>Source type from which media artifacts are saved. You must use <code>ChimeMeeting</code>.</p>"
  )
  @as("SourceType")
  sourceType: option<mediaPipelineSourceType>,
  @ocaml.doc("<p>The ID of a media capture pipeline.</p>") @as("MediaPipelineId")
  mediaPipelineId: option<guidString>,
}
type mediaCapturePipelineList = array<mediaCapturePipeline>
@ocaml.doc("<p>The Amazon Chime API (application programming interface) is designed for developers to
            perform key tasks, such as creating and managing Amazon Chime accounts, users, and Voice
            Connectors. This guide provides detailed information about the Amazon Chime API,
            including operations, types, inputs and outputs, and error codes. It also includes API actions for use with the Amazon Chime SDK, which developers use to build their own communication applications. For more information about the
            Amazon Chime SDK, see <a href=\"https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html\">
                Using the Amazon Chime SDK
            </a> in the <i>Amazon Chime Developer Guide</i>.</p>
         <p>You can use an AWS SDK, the AWS Command Line Interface (AWS CLI), or the REST API to make API calls. We recommend using an AWS SDK or the 
    AWS CLI. Each API operation includes links to information about using it with a language-specific AWS SDK or the AWS CLI.</p>
         <dl>
            <dt>Using an AWS SDK</dt>
            <dd>
               <p>
You don't need to write code to calculate a signature for request authentication. The SDK clients authenticate your requests by using access keys that you provide. For more information about AWS SDKs, see the 
<a href=\"http://aws.amazon.com/developer/\">AWS Developer Center</a>.
</p>
            </dd>
            <dt>Using the AWS CLI</dt>
            <dd>
               <p>Use your access keys with the AWS CLI to make API calls. For information about setting up the AWS CLI, see 
<a href=\"https://docs.aws.amazon.com/cli/latest/userguide/installing.html\">Installing the AWS Command Line Interface</a>
in the <i>AWS Command Line Interface User Guide</i>. For a list of available Amazon Chime commands, see the 
<a href=\"https://docs.aws.amazon.com/cli/latest/reference/chime/index.html\">Amazon Chime commands</a> in the 
    <i>AWS CLI Command Reference</i>.
</p>
            </dd>
            <dt>Using REST APIs</dt>
            <dd>
               <p>If you use REST to make API calls, you must authenticate your request by providing a signature. Amazon Chime supports signature version 4. For more information, see 
<a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4 Signing Process</a>
in the <i>Amazon Web Services General Reference</i>.</p>

               <p>When making REST API calls, use the service name <code>chime</code> and REST endpoint <code>https://service.chime.aws.amazon.com</code>.</p>
            </dd>
         </dl>

         <p>Administrative permissions are controlled using AWS Identity and Access Management (IAM). For more information, see 
<a href=\"https://docs.aws.amazon.com/chime/latest/ag/security-iam.html\">Identity and Access Management for Amazon Chime</a>
in the <i>Amazon Chime Administration Guide</i>.</p>")
module UpdatePhoneNumberSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The default outbound calling name for the account.</p>") @as("CallingName")
    callingName: callingName,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "UpdatePhoneNumberSettingsCommand"
  let make = (~callingName, ()) => new({callingName: callingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateChannelReadMarker = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "UpdateChannelReadMarkerCommand"
  let make = (~channelArn, ~chimeBearer=?, ()) => new({chimeBearer, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateChannelMessage = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
    @ocaml.doc("<p>The metadata of the message being updated.</p>") @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc("<p>The content of the message being updated.</p>") @as("Content")
    content: option<content>,
    @ocaml.doc("<p>The ID string of the message being updated.</p>") @as("MessageId")
    messageId: messageId,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ID string of the message being updated.</p>") @as("MessageId")
    messageId: option<messageId>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateChannelMessageCommand"
  let make = (~messageId, ~channelArn, ~chimeBearer=?, ~metadata=?, ~content=?, ()) =>
    new({chimeBearer, metadata, content, messageId, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
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
  let make = (~mode, ~name, ~channelArn, ~chimeBearer=?, ~metadata=?, ()) =>
    new({chimeBearer, metadata, mode, name, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateAppInstanceUser = {
  type t
  type request = {
    @ocaml.doc("<p>The metadata of the <code>AppInstanceUser</code>.</p>") @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc("<p>The name of the <code>AppInstanceUser</code>.</p>") @as("Name") name: userName,
    @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateAppInstanceUserCommand"
  let make = (~name, ~appInstanceUserArn, ~metadata=?, ()) =>
    new({metadata, name, appInstanceUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateAppInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The metadata that you want to change.</p>") @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc("<p>The name that you want to change.</p>") @as("Name") name: nonEmptyResourceName,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>. </p>") @as("AppInstanceArn")
    appInstanceArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateAppInstanceCommand"
  let make = (~name, ~appInstanceArn, ~metadata=?, ()) => new({metadata, name, appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StopMeetingTranscription = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the meeting for which you stop transcription.</p>")
    @as("MeetingId")
    meetingId: guidString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "StopMeetingTranscriptionCommand"
  let make = (~meetingId, ()) => new({meetingId: meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SendChannelMessage = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
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
    @ocaml.doc("<p>The ID string assigned to each message.</p>") @as("MessageId")
    messageId: option<messageId>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "SendChannelMessageCommand"
  let make = (
    ~clientRequestToken,
    ~persistence,
    ~type_,
    ~content,
    ~channelArn,
    ~chimeBearer=?,
    ~metadata=?,
    (),
  ) => new({chimeBearer, clientRequestToken, metadata, persistence, type_, content, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RedactRoomMessage = {
  type t
  type request = {
    @ocaml.doc("<p>The message ID.</p>") @as("MessageId") messageId: nonEmptyString,
    @ocaml.doc("<p>The room ID.</p>") @as("RoomId") roomId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "RedactRoomMessageCommand"
  let make = (~messageId, ~roomId, ~accountId, ()) => new({messageId, roomId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RedactConversationMessage = {
  type t
  type request = {
    @ocaml.doc("<p>The message ID.</p>") @as("MessageId") messageId: nonEmptyString,
    @ocaml.doc("<p>The conversation ID.</p>") @as("ConversationId") conversationId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "RedactConversationMessageCommand"
  let make = (~messageId, ~conversationId, ~accountId, ()) =>
    new({messageId, conversationId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RedactChannelMessage = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
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
  let make = (~messageId, ~channelArn, ~chimeBearer=?, ()) =>
    new({chimeBearer, messageId, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module LogoutUser = {
  type t
  type request = {
    @ocaml.doc("<p>The user ID.</p>") @as("UserId") userId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "LogoutUserCommand"
  let make = (~userId, ~accountId, ()) => new({userId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetPhoneNumberSettings = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The updated outbound calling name timestamp, in ISO 8601 format.</p>")
    @as("CallingNameUpdatedTimestamp")
    callingNameUpdatedTimestamp: option<iso8601Timestamp>,
    @ocaml.doc("<p>The default outbound calling name for the account.</p>") @as("CallingName")
    callingName: option<callingName>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetPhoneNumberSettingsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociatePhoneNumberFromUser = {
  type t
  type request = {
    @ocaml.doc("<p>The user ID.</p>") @as("UserId") userId: string_,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DisassociatePhoneNumberFromUserCommand"
  let make = (~userId, ~accountId, ()) => new({userId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteVoiceConnectorTermination = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DeleteVoiceConnectorTerminationCommand"
  let make = (~voiceConnectorId, ()) => new({voiceConnectorId: voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteVoiceConnectorStreamingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DeleteVoiceConnectorStreamingConfigurationCommand"
  let make = (~voiceConnectorId, ()) => new({voiceConnectorId: voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteVoiceConnectorProxy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString128,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DeleteVoiceConnectorProxyCommand"
  let make = (~voiceConnectorId, ()) => new({voiceConnectorId: voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteVoiceConnectorOrigination = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DeleteVoiceConnectorOriginationCommand"
  let make = (~voiceConnectorId, ()) => new({voiceConnectorId: voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteVoiceConnectorGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector group ID.</p>") @as("VoiceConnectorGroupId")
    voiceConnectorGroupId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DeleteVoiceConnectorGroupCommand"
  let make = (~voiceConnectorGroupId, ()) => new({voiceConnectorGroupId: voiceConnectorGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteVoiceConnectorEmergencyCallingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DeleteVoiceConnectorEmergencyCallingConfigurationCommand"
  let make = (~voiceConnectorId, ()) => new({voiceConnectorId: voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteVoiceConnector = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteVoiceConnectorCommand"
  let make = (~voiceConnectorId, ()) => new({voiceConnectorId: voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteSipRule = {
  type t
  type request = {@ocaml.doc("<p>The SIP rule ID.</p>") @as("SipRuleId") sipRuleId: nonEmptyString}
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteSipRuleCommand"
  let make = (~sipRuleId, ()) => new({sipRuleId: sipRuleId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteSipMediaApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The SIP media application ID.</p>") @as("SipMediaApplicationId")
    sipMediaApplicationId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DeleteSipMediaApplicationCommand"
  let make = (~sipMediaApplicationId, ()) => new({sipMediaApplicationId: sipMediaApplicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteRoomMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The member ID (user ID or bot ID).</p>") @as("MemberId")
    memberId: nonEmptyString,
    @ocaml.doc("<p>The room ID.</p>") @as("RoomId") roomId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteRoomMembershipCommand"
  let make = (~memberId, ~roomId, ~accountId, ()) => new({memberId, roomId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteRoom = {
  type t
  type request = {
    @ocaml.doc("<p>The chat room ID.</p>") @as("RoomId") roomId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteRoomCommand"
  let make = (~roomId, ~accountId, ()) => new({roomId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteProxySession = {
  type t
  type request = {
    @ocaml.doc("<p>The proxy session ID.</p>") @as("ProxySessionId")
    proxySessionId: nonEmptyString128,
    @ocaml.doc("<p>The Amazon Chime voice connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString128,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteProxySessionCommand"
  let make = (~proxySessionId, ~voiceConnectorId, ()) => new({proxySessionId, voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeletePhoneNumber = {
  type t
  type request = {
    @ocaml.doc("<p>The phone number ID.</p>") @as("PhoneNumberId") phoneNumberId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeletePhoneNumberCommand"
  let make = (~phoneNumberId, ()) => new({phoneNumberId: phoneNumberId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteMeeting = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteMeetingCommand"
  let make = (~meetingId, ()) => new({meetingId: meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteMediaCapturePipeline = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the media capture pipeline being deleted. </p>") @as("MediaPipelineId")
    mediaPipelineId: guidString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DeleteMediaCapturePipelineCommand"
  let make = (~mediaPipelineId, ()) => new({mediaPipelineId: mediaPipelineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteEventsConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The bot ID.</p>") @as("BotId") botId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DeleteEventsConfigurationCommand"
  let make = (~botId, ~accountId, ()) => new({botId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteChannelModerator = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
    @ocaml.doc("<p>The ARN of the moderator being deleted.</p>") @as("ChannelModeratorArn")
    channelModeratorArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteChannelModeratorCommand"
  let make = (~channelModeratorArn, ~channelArn, ~chimeBearer=?, ()) =>
    new({chimeBearer, channelModeratorArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteChannelMessage = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
    @ocaml.doc("<p>The ID of the message being deleted.</p>") @as("MessageId") messageId: messageId,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteChannelMessageCommand"
  let make = (~messageId, ~channelArn, ~chimeBearer=?, ()) =>
    new({chimeBearer, messageId, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteChannelMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
    @ocaml.doc("<p>The ARN of the member that you're removing from the channel.</p>")
    @as("MemberArn")
    memberArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel from which you want to remove the user.</p>")
    @as("ChannelArn")
    channelArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DeleteChannelMembershipCommand"
  let make = (~memberArn, ~channelArn, ~chimeBearer=?, ()) =>
    new({chimeBearer, memberArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteChannelBan = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
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
  let make = (~memberArn, ~channelArn, ~chimeBearer=?, ()) =>
    new({chimeBearer, memberArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
    @ocaml.doc("<p>The ARN of the channel being deleted.</p>") @as("ChannelArn")
    channelArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteChannelCommand"
  let make = (~channelArn, ~chimeBearer=?, ()) => new({chimeBearer, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAttendee = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime SDK attendee ID.</p>") @as("AttendeeId") attendeeId: guidString,
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteAttendeeCommand"
  let make = (~attendeeId, ~meetingId, ()) => new({attendeeId, meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAppInstanceUser = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the user request being deleted.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteAppInstanceUserCommand"
  let make = (~appInstanceUserArn, ()) => new({appInstanceUserArn: appInstanceUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAppInstanceStreamingConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the streaming configurations being deleted.</p>")
    @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DeleteAppInstanceStreamingConfigurationsCommand"
  let make = (~appInstanceArn, ()) => new({appInstanceArn: appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAppInstanceAdmin = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>'s administrator.</p>")
    @as("AppInstanceAdminArn")
    appInstanceAdminArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteAppInstanceAdminCommand"
  let make = (~appInstanceArn, ~appInstanceAdminArn, ()) =>
    new({appInstanceArn, appInstanceAdminArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAppInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteAppInstanceCommand"
  let make = (~appInstanceArn, ()) => new({appInstanceArn: appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteAccountCommand"
  let make = (~accountId, ()) => new({accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateMeetingDialOut = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Token used by the Amazon Chime SDK attendee. Call the <a href=\"https://docs.aws.amazon.com/chime/latest/APIReference/API_CreateAttendee.html\">CreateAttendee</a> action to get a join token.</p>"
    )
    @as("JoinToken")
    joinToken: joinTokenString,
    @ocaml.doc("<p>Phone number called when inviting someone to a meeting.</p>")
    @as("ToPhoneNumber")
    toPhoneNumber: e164PhoneNumber,
    @ocaml.doc("<p>Phone number used as the caller ID when the remote party receives a call.</p>")
    @as("FromPhoneNumber")
    fromPhoneNumber: e164PhoneNumber,
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {
    @ocaml.doc("<p>Unique ID that tracks API calls.</p>") @as("TransactionId")
    transactionId: option<guidString>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateMeetingDialOutCommand"
  let make = (~joinToken, ~toPhoneNumber, ~fromPhoneNumber, ~meetingId, ()) =>
    new({joinToken, toPhoneNumber, fromPhoneNumber, meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociatePhoneNumberWithUser = {
  type t
  type request = {
    @ocaml.doc("<p>The phone number, in E.164 format.</p>") @as("E164PhoneNumber")
    e164PhoneNumber: e164PhoneNumber,
    @ocaml.doc("<p>The user ID.</p>") @as("UserId") userId: string_,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "AssociatePhoneNumberWithUserCommand"
  let make = (~e164PhoneNumber, ~userId, ~accountId, ()) =>
    new({e164PhoneNumber, userId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateVoiceConnector = {
  type t
  type request = {
    @ocaml.doc("<p>When enabled, requires encryption for the Amazon Chime Voice Connector.</p>")
    @as("RequireEncryption")
    requireEncryption: boolean_,
    @ocaml.doc("<p>The name of the Amazon Chime Voice Connector.</p>") @as("Name")
    name: voiceConnectorName,
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The updated Amazon Chime Voice Connector details.</p>") @as("VoiceConnector")
    voiceConnector: option<voiceConnector>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateVoiceConnectorCommand"
  let make = (~requireEncryption, ~name, ~voiceConnectorId, ()) =>
    new({requireEncryption, name, voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateSipMediaApplicationCall = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Arguments made available to the Lambda function as part of the <code>CALL_UPDATE_REQUESTED</code> event. Can contain 0-20 key-value pairs.</p>"
    )
    @as("Arguments")
    arguments: smaupdateCallArgumentsMap,
    @ocaml.doc("<p>The ID of the call transaction.</p>") @as("TransactionId")
    transactionId: nonEmptyString,
    @ocaml.doc("<p>The ID of the SIP media application handling the call.</p>")
    @as("SipMediaApplicationId")
    sipMediaApplicationId: nonEmptyString,
  }
  type response = {
    @as("SipMediaApplicationCall") sipMediaApplicationCall: option<sipMediaApplicationCall>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "UpdateSipMediaApplicationCallCommand"
  let make = (~arguments, ~transactionId, ~sipMediaApplicationId, ()) =>
    new({arguments, transactionId, sipMediaApplicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateRoom = {
  type t
  type request = {
    @ocaml.doc("<p>The room name.</p>") @as("Name") name: option<sensitiveString>,
    @ocaml.doc("<p>The room ID.</p>") @as("RoomId") roomId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@ocaml.doc("<p>The room details.</p>") @as("Room") room: option<room>}
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateRoomCommand"
  let make = (~roomId, ~accountId, ~name=?, ()) => new({name, roomId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateGlobalSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector settings.</p>") @as("VoiceConnector")
    voiceConnector: option<voiceConnectorSettings>,
    @ocaml.doc("<p>The Amazon Chime Business Calling settings.</p>") @as("BusinessCalling")
    businessCalling: option<businessCallingSettings>,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateGlobalSettingsCommand"
  let make = (~voiceConnector=?, ~businessCalling=?, ()) => new({voiceConnector, businessCalling})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateBot = {
  type t
  type request = {
    @ocaml.doc("<p>When true, stops the specified bot from running in your account.</p>")
    @as("Disabled")
    disabled: option<nullableBoolean>,
    @ocaml.doc("<p>The bot ID.</p>") @as("BotId") botId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@ocaml.doc("<p>The updated bot details.</p>") @as("Bot") bot: option<bot>}
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateBotCommand"
  let make = (~botId, ~accountId, ~disabled=?, ()) => new({disabled, botId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateAccountSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime account settings to update.</p>") @as("AccountSettings")
    accountSettings: accountSettings,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateAccountSettingsCommand"
  let make = (~accountSettings, ~accountId, ()) => new({accountSettings, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys.</p>") @as("TagKeys") tagKeys: tagKeyList,
    @ocaml.doc("<p>The resource ARN.</p>") @as("ResourceARN") resourceARN: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys, resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagMeeting = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys.</p>") @as("TagKeys") tagKeys: meetingTagKeyList,
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "UntagMeetingCommand"
  let make = (~tagKeys, ~meetingId, ()) => new({tagKeys, meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagAttendee = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys.</p>") @as("TagKeys") tagKeys: attendeeTagKeyList,
    @ocaml.doc("<p>The Amazon Chime SDK attendee ID.</p>") @as("AttendeeId") attendeeId: guidString,
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "UntagAttendeeCommand"
  let make = (~tagKeys, ~attendeeId, ~meetingId, ()) => new({tagKeys, attendeeId, meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SearchAvailablePhoneNumbers = {
  type t
  type request = {
    @ocaml.doc("<p>The token used to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<phoneNumberMaxResults>,
    @ocaml.doc("<p>The phone number type used to filter results. Required for non-US numbers.</p>")
    @as("PhoneNumberType")
    phoneNumberType: option<phoneNumberType>,
    @ocaml.doc(
      "<p>The toll-free prefix that you use to filter results. Only applies to the US.</p>"
    )
    @as("TollFreePrefix")
    tollFreePrefix: option<tollFreePrefix>,
    @ocaml.doc(
      "<p>The state used to filter results. Required only if you provide <code>City</code>. Only applies to the US.</p>"
    )
    @as("State")
    state: option<string_>,
    @ocaml.doc(
      "<p>The country used to filter results. Defaults to the US Format: ISO 3166-1 alpha-2.</p>"
    )
    @as("Country")
    country: option<alpha2CountryCode>,
    @ocaml.doc("<p>The city used to filter results. Only applies to the US.</p>") @as("City")
    city: option<string_>,
    @ocaml.doc("<p>The area code used to filter results. Only applies to the US.</p>")
    @as("AreaCode")
    areaCode: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token used to retrieve the next page of search results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>List of phone numbers, in E.164 format.</p>") @as("E164PhoneNumbers")
    e164PhoneNumbers: option<e164PhoneNumberList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "SearchAvailablePhoneNumbersCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~phoneNumberType=?,
    ~tollFreePrefix=?,
    ~state=?,
    ~country=?,
    ~city=?,
    ~areaCode=?,
    (),
  ) => new({nextToken, maxResults, phoneNumberType, tollFreePrefix, state, country, city, areaCode})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RegenerateSecurityToken = {
  type t
  type request = {
    @ocaml.doc("<p>The bot ID.</p>") @as("BotId") botId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("Bot") bot: option<bot>}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "RegenerateSecurityTokenCommand"
  let make = (~botId, ~accountId, ()) => new({botId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutVoiceConnectorLoggingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The logging configuration details to add.</p>") @as("LoggingConfiguration")
    loggingConfiguration: loggingConfiguration,
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The updated logging configuration details.</p>") @as("LoggingConfiguration")
    loggingConfiguration: option<loggingConfiguration>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "PutVoiceConnectorLoggingConfigurationCommand"
  let make = (~loggingConfiguration, ~voiceConnectorId, ()) =>
    new({loggingConfiguration, voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutSipMediaApplicationLoggingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The actual logging configuration.</p>")
    @as("SipMediaApplicationLoggingConfiguration")
    sipMediaApplicationLoggingConfiguration: option<sipMediaApplicationLoggingConfiguration>,
    @ocaml.doc("<p>The SIP media application ID.</p>") @as("SipMediaApplicationId")
    sipMediaApplicationId: nonEmptyString,
  }
  type response = {
    @as("SipMediaApplicationLoggingConfiguration")
    sipMediaApplicationLoggingConfiguration: option<sipMediaApplicationLoggingConfiguration>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "PutSipMediaApplicationLoggingConfigurationCommand"
  let make = (~sipMediaApplicationId, ~sipMediaApplicationLoggingConfiguration=?, ()) =>
    new({sipMediaApplicationLoggingConfiguration, sipMediaApplicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutEventsConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Lambda function ARN that allows the bot to receive outgoing events.</p>")
    @as("LambdaFunctionArn")
    lambdaFunctionArn: option<sensitiveString>,
    @ocaml.doc("<p>HTTPS endpoint that allows the bot to receive outgoing events.</p>")
    @as("OutboundEventsHTTPSEndpoint")
    outboundEventsHTTPSEndpoint: option<sensitiveString>,
    @ocaml.doc("<p>The bot ID.</p>") @as("BotId") botId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("EventsConfiguration") eventsConfiguration: option<eventsConfiguration>}
  @module("@aws-sdk/client-chime") @new external new: request => t = "PutEventsConfigurationCommand"
  let make = (~botId, ~accountId, ~lambdaFunctionArn=?, ~outboundEventsHTTPSEndpoint=?, ()) =>
    new({lambdaFunctionArn, outboundEventsHTTPSEndpoint, botId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListVoiceConnectorTerminationCredentials = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>A list of user names.</p>") @as("Usernames")
    usernames: option<sensitiveStringList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "ListVoiceConnectorTerminationCredentialsCommand"
  let make = (~voiceConnectorId, ()) => new({voiceConnectorId: voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetVoiceConnectorTerminationHealth = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The termination health details.</p>") @as("TerminationHealth")
    terminationHealth: option<terminationHealth>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "GetVoiceConnectorTerminationHealthCommand"
  let make = (~voiceConnectorId, ()) => new({voiceConnectorId: voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetVoiceConnectorLoggingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The logging configuration details.</p>") @as("LoggingConfiguration")
    loggingConfiguration: option<loggingConfiguration>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "GetVoiceConnectorLoggingConfigurationCommand"
  let make = (~voiceConnectorId, ()) => new({voiceConnectorId: voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetVoiceConnector = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector details.</p>") @as("VoiceConnector")
    voiceConnector: option<voiceConnector>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetVoiceConnectorCommand"
  let make = (~voiceConnectorId, ()) => new({voiceConnectorId: voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSipMediaApplicationLoggingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The SIP media application ID.</p>") @as("SipMediaApplicationId")
    sipMediaApplicationId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The actual logging configuration.</p>")
    @as("SipMediaApplicationLoggingConfiguration")
    sipMediaApplicationLoggingConfiguration: option<sipMediaApplicationLoggingConfiguration>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "GetSipMediaApplicationLoggingConfigurationCommand"
  let make = (~sipMediaApplicationId, ()) => new({sipMediaApplicationId: sipMediaApplicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRoom = {
  type t
  type request = {
    @ocaml.doc("<p>The room ID.</p>") @as("RoomId") roomId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@ocaml.doc("<p>The room details.</p>") @as("Room") room: option<room>}
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetRoomCommand"
  let make = (~roomId, ~accountId, ()) => new({roomId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
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
module GetGlobalSettings = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector settings.</p>") @as("VoiceConnector")
    voiceConnector: option<voiceConnectorSettings>,
    @ocaml.doc("<p>The Amazon Chime Business Calling settings.</p>") @as("BusinessCalling")
    businessCalling: option<businessCallingSettings>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetGlobalSettingsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEventsConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The bot ID.</p>") @as("BotId") botId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The events configuration details.</p>") @as("EventsConfiguration")
    eventsConfiguration: option<eventsConfiguration>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetEventsConfigurationCommand"
  let make = (~botId, ~accountId, ()) => new({botId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetBot = {
  type t
  type request = {
    @ocaml.doc("<p>The bot ID.</p>") @as("BotId") botId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@ocaml.doc("<p>The chat bot details.</p>") @as("Bot") bot: option<bot>}
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetBotCommand"
  let make = (~botId, ~accountId, ()) => new({botId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAttendee = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime SDK attendee ID.</p>") @as("AttendeeId") attendeeId: guidString,
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Chime SDK attendee information.</p>") @as("Attendee")
    attendee: option<attendee>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetAttendeeCommand"
  let make = (~attendeeId, ~meetingId, ()) => new({attendeeId, meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAccountSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Chime account settings.</p>") @as("AccountSettings")
    accountSettings: option<accountSettings>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetAccountSettingsCommand"
  let make = (~accountId, ()) => new({accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateSigninDelegateGroupsFromAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The sign-in delegate group names.</p>") @as("GroupNames")
    groupNames: nonEmptyStringList,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DisassociateSigninDelegateGroupsFromAccountCommand"
  let make = (~groupNames, ~accountId, ()) => new({groupNames, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DescribeAppInstanceUser = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The name of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUser")
    appInstanceUser: option<appInstanceUser>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DescribeAppInstanceUserCommand"
  let make = (~appInstanceUserArn, ()) => new({appInstanceUserArn: appInstanceUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAppInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN, metadata, created and last-updated timestamps, and the name of the <code>AppInstance</code>. All
            timestamps use epoch milliseconds.</p>")
    @as("AppInstance")
    appInstance: option<appInstance>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "DescribeAppInstanceCommand"
  let make = (~appInstanceArn, ()) => new({appInstanceArn: appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteVoiceConnectorTerminationCredentials = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The RFC2617 compliant username associated with the SIP credentials, in US-ASCII format.</p>"
    )
    @as("Usernames")
    usernames: sensitiveStringList,
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DeleteVoiceConnectorTerminationCredentialsCommand"
  let make = (~usernames, ~voiceConnectorId, ()) => new({usernames, voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateVoiceConnector = {
  type t
  type request = {
    @ocaml.doc("<p>When enabled, requires encryption for the Amazon Chime Voice Connector.</p>")
    @as("RequireEncryption")
    requireEncryption: boolean_,
    @ocaml.doc("<p>
The AWS Region in which the Amazon Chime Voice Connector is created. Default value: 
<code>us-east-1</code>
.
</p>")
    @as("AwsRegion")
    awsRegion: option<voiceConnectorAwsRegion>,
    @ocaml.doc("<p>The name of the Amazon Chime Voice Connector.</p>") @as("Name")
    name: voiceConnectorName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector details.</p>") @as("VoiceConnector")
    voiceConnector: option<voiceConnector>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateVoiceConnectorCommand"
  let make = (~requireEncryption, ~name, ~awsRegion=?, ()) =>
    new({requireEncryption, awsRegion, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSipMediaApplicationCall = {
  type t
  type request = {
    @ocaml.doc("<p>The SIP headers added to an outbound call leg.</p>") @as("SipHeaders")
    sipHeaders: option<sipHeadersMap>,
    @ocaml.doc("<p>The ID of the SIP media application.</p>") @as("SipMediaApplicationId")
    sipMediaApplicationId: nonEmptyString,
    @ocaml.doc("<p>The phone number that the service should call.</p>") @as("ToPhoneNumber")
    toPhoneNumber: e164PhoneNumber,
    @ocaml.doc(
      "<p>The phone number that a user calls from. This is a phone number in your Amazon Chime phone number inventory.</p>"
    )
    @as("FromPhoneNumber")
    fromPhoneNumber: e164PhoneNumber,
  }
  type response = {
    @ocaml.doc("<p>The actual call.</p>") @as("SipMediaApplicationCall")
    sipMediaApplicationCall: option<sipMediaApplicationCall>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "CreateSipMediaApplicationCallCommand"
  let make = (~sipMediaApplicationId, ~toPhoneNumber, ~fromPhoneNumber, ~sipHeaders=?, ()) =>
    new({sipHeaders, sipMediaApplicationId, toPhoneNumber, fromPhoneNumber})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRoom = {
  type t
  type request = {
    @ocaml.doc("<p>The idempotency token for the request.</p>") @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The room name.</p>") @as("Name") name: sensitiveString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@ocaml.doc("<p>The room details.</p>") @as("Room") room: option<room>}
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateRoomCommand"
  let make = (~name, ~accountId, ~clientRequestToken=?, ()) =>
    new({clientRequestToken, name, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateChannelModerator = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
    @ocaml.doc("<p>The ARN of the moderator.</p>") @as("ChannelModeratorArn")
    channelModeratorArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARNs of the channel and the moderator.</p>") @as("ChannelModerator")
    channelModerator: option<identity>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateChannelModeratorCommand"
  let make = (~channelModeratorArn, ~channelArn, ~chimeBearer=?, ()) =>
    new({chimeBearer, channelModeratorArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateChannelMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
    @ocaml.doc("<p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
         members are always returned as part of <code>ListChannelMemberships</code>. Hidden members
         are only returned if the type filter in <code>ListChannelMemberships</code> equals
            <code>HIDDEN</code>. Otherwise hidden members are not returned. This is only supported
         by moderators.</p>")
    @as("Type")
    type_: channelMembershipType,
    @ocaml.doc("<p>The ARN of the member you want to add to the channel.</p>") @as("MemberArn")
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
  let make = (~type_, ~memberArn, ~channelArn, ~chimeBearer=?, ()) =>
    new({chimeBearer, type_, memberArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateChannelBan = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
    @ocaml.doc("<p>The ARN of the member being banned.</p>") @as("MemberArn") memberArn: chimeArn,
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
  let make = (~memberArn, ~channelArn, ~chimeBearer=?, ()) =>
    new({chimeBearer, memberArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateBot = {
  type t
  type request = {
    @ocaml.doc("<p>The domain of the Amazon Chime Enterprise account.</p>") @as("Domain")
    domain: option<nonEmptyString>,
    @ocaml.doc("<p>The bot display name.</p>") @as("DisplayName") displayName: sensitiveString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@ocaml.doc("<p>The bot details.</p>") @as("Bot") bot: option<bot>}
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateBotCommand"
  let make = (~displayName, ~accountId, ~domain=?, ()) => new({domain, displayName, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateAppInstanceAdmin = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
    @ocaml.doc("<p>The ARN of the administrator of the current <code>AppInstance</code>.</p>")
    @as("AppInstanceAdminArn")
    appInstanceAdminArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the of the admin for the <code>AppInstance</code>.</p>")
    @as("AppInstanceArn")
    appInstanceArn: option<chimeArn>,
    @ocaml.doc("<p>The name and ARN of the admin for the <code>AppInstance</code>.</p>")
    @as("AppInstanceAdmin")
    appInstanceAdmin: option<identity>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateAppInstanceAdminCommand"
  let make = (~appInstanceArn, ~appInstanceAdminArn, ()) =>
    new({appInstanceArn, appInstanceAdminArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateUserSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The user settings to update.</p>") @as("UserSettings")
    userSettings: userSettings,
    @ocaml.doc("<p>The user ID.</p>") @as("UserId") userId: string_,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateUserSettingsCommand"
  let make = (~userSettings, ~userId, ~accountId, ()) => new({userSettings, userId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateUser = {
  type t
  type request = {
    @ocaml.doc("<p>The Alexa for Business metadata.</p>") @as("AlexaForBusinessMetadata")
    alexaForBusinessMetadata: option<alexaForBusinessMetadata>,
    @ocaml.doc("<p>The user type.</p>") @as("UserType") userType: option<userType>,
    @ocaml.doc("<p>The user license type to update. This must be a supported license type for the Amazon Chime
            account that the user belongs to.</p>")
    @as("LicenseType")
    licenseType: option<license>,
    @ocaml.doc("<p>The user ID.</p>") @as("UserId") userId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@ocaml.doc("<p>The updated user details.</p>") @as("User") user: option<user>}
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateUserCommand"
  let make = (~userId, ~accountId, ~alexaForBusinessMetadata=?, ~userType=?, ~licenseType=?, ()) =>
    new({alexaForBusinessMetadata, userType, licenseType, userId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateRoomMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The role of the member.</p>") @as("Role") role: option<roomMembershipRole>,
    @ocaml.doc("<p>The member ID.</p>") @as("MemberId") memberId: nonEmptyString,
    @ocaml.doc("<p>The room ID.</p>") @as("RoomId") roomId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The room membership details.</p>") @as("RoomMembership")
    roomMembership: option<roomMembership>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateRoomMembershipCommand"
  let make = (~memberId, ~roomId, ~accountId, ~role=?, ()) =>
    new({role, memberId, roomId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag key-value pairs.</p>") @as("Tags") tags: tagList_,
    @ocaml.doc("<p>The resource ARN.</p>") @as("ResourceARN") resourceARN: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags, resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagMeeting = {
  type t
  type request = {
    @ocaml.doc("<p>The tag key-value pairs.</p>") @as("Tags") tags: meetingTagList,
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "TagMeetingCommand"
  let make = (~tags, ~meetingId, ()) => new({tags, meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagAttendee = {
  type t
  type request = {
    @ocaml.doc("<p>The tag key-value pairs.</p>") @as("Tags") tags: attendeeTagList,
    @ocaml.doc("<p>The Amazon Chime SDK attendee ID.</p>") @as("AttendeeId") attendeeId: guidString,
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "TagAttendeeCommand"
  let make = (~tags, ~attendeeId, ~meetingId, ()) => new({tags, attendeeId, meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StartMeetingTranscription = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The configuration for the current transcription operation. Must contain <code>EngineTranscribeSettings</code> or <code>EngineTranscribeMedicalSettings</code>.</p>"
    )
    @as("TranscriptionConfiguration")
    transcriptionConfiguration: transcriptionConfiguration,
    @ocaml.doc("<p>The unique ID of the meeting being transcribed.</p>") @as("MeetingId")
    meetingId: guidString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "StartMeetingTranscriptionCommand"
  let make = (~transcriptionConfiguration, ~meetingId, ()) =>
    new({transcriptionConfiguration, meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ResetPersonalPIN = {
  type t
  type request = {
    @ocaml.doc("<p>The user ID.</p>") @as("UserId") userId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The user details and new personal meeting PIN.</p>") @as("User")
    user: option<user>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ResetPersonalPINCommand"
  let make = (~userId, ~accountId, ()) => new({userId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutVoiceConnectorTerminationCredentials = {
  type t
  type request = {
    @ocaml.doc("<p>The termination SIP credentials.</p>") @as("Credentials")
    credentials: option<credentialList>,
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "PutVoiceConnectorTerminationCredentialsCommand"
  let make = (~voiceConnectorId, ~credentials=?, ()) => new({credentials, voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutVoiceConnectorTermination = {
  type t
  type request = {
    @ocaml.doc("<p>The termination setting details to add.</p>") @as("Termination")
    termination: termination,
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The updated termination setting details.</p>") @as("Termination")
    termination: option<termination>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "PutVoiceConnectorTerminationCommand"
  let make = (~termination, ~voiceConnectorId, ()) => new({termination, voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutVoiceConnectorProxy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>When true, stops proxy sessions from being created on the specified Amazon Chime Voice Connector.</p>"
    )
    @as("Disabled")
    disabled: option<boolean_>,
    @ocaml.doc("<p>The phone number to route calls to after a proxy session expires.</p>")
    @as("FallBackPhoneNumber")
    fallBackPhoneNumber: option<e164PhoneNumber>,
    @ocaml.doc("<p>The countries for proxy phone numbers to be selected from.</p>")
    @as("PhoneNumberPoolCountries")
    phoneNumberPoolCountries: countryList,
    @ocaml.doc("<p>The default number of minutes allowed for proxy sessions.</p>")
    @as("DefaultSessionExpiryMinutes")
    defaultSessionExpiryMinutes: integer_,
    @ocaml.doc("<p>The Amazon Chime voice connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString128,
  }
  type response = {
    @ocaml.doc("<p>The proxy configuration details.</p>") @as("Proxy") proxy: option<proxy>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "PutVoiceConnectorProxyCommand"
  let make = (
    ~phoneNumberPoolCountries,
    ~defaultSessionExpiryMinutes,
    ~voiceConnectorId,
    ~disabled=?,
    ~fallBackPhoneNumber=?,
    (),
  ) =>
    new({
      disabled,
      fallBackPhoneNumber,
      phoneNumberPoolCountries,
      defaultSessionExpiryMinutes,
      voiceConnectorId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutRetentionSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The retention settings.</p>") @as("RetentionSettings")
    retentionSettings: retentionSettings,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc(
      "<p>The timestamp representing the time at which the specified items are permanently deleted, in ISO 8601 format.</p>"
    )
    @as("InitiateDeletionTimestamp")
    initiateDeletionTimestamp: option<iso8601Timestamp>,
    @ocaml.doc("<p>The retention settings.</p>") @as("RetentionSettings")
    retentionSettings: option<retentionSettings>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "PutRetentionSettingsCommand"
  let make = (~retentionSettings, ~accountId, ()) => new({retentionSettings, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutAppInstanceStreamingConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>The streaming configurations set for an <code>AppInstance</code>.</p>")
    @as("AppInstanceStreamingConfigurations")
    appInstanceStreamingConfigurations: appInstanceStreamingConfigurationList,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The streaming configurations of an <code>AppInstance</code>.</p>")
    @as("AppInstanceStreamingConfigurations")
    appInstanceStreamingConfigurations: option<appInstanceStreamingConfigurationList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "PutAppInstanceStreamingConfigurationsCommand"
  let make = (~appInstanceStreamingConfigurations, ~appInstanceArn, ()) =>
    new({appInstanceStreamingConfigurations, appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutAppInstanceRetentionSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The time in days to retain data. Data type: number.</p>")
    @as("AppInstanceRetentionSettings")
    appInstanceRetentionSettings: appInstanceRetentionSettings,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The time at which the API deletes data.</p>") @as("InitiateDeletionTimestamp")
    initiateDeletionTimestamp: option<timestamp_>,
    @ocaml.doc("<p>The time in days to retain data. Data type: number.</p>")
    @as("AppInstanceRetentionSettings")
    appInstanceRetentionSettings: option<appInstanceRetentionSettings>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "PutAppInstanceRetentionSettingsCommand"
  let make = (~appInstanceRetentionSettings, ~appInstanceArn, ()) =>
    new({appInstanceRetentionSettings, appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListVoiceConnectors = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<resultMax>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The details of the Amazon Chime Voice Connectors.</p>") @as("VoiceConnectors")
    voiceConnectors: option<voiceConnectorList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListVoiceConnectorsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  type request = {@ocaml.doc("<p>The resource ARN.</p>") @as("ResourceARN") resourceARN: arn}
  type response = {
    @ocaml.doc("<p>A list of tag-key value pairs.</p>") @as("Tags") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRooms = {
  type t
  type request = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<resultMax>,
    @ocaml.doc("<p>The member ID (user ID or bot ID).</p>") @as("MemberId")
    memberId: option<string_>,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The room details.</p>") @as("Rooms") rooms: option<roomList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListRoomsCommand"
  let make = (~accountId, ~nextToken=?, ~maxResults=?, ~memberId=?, ()) =>
    new({nextToken, maxResults, memberId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListMeetingTags = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {
    @ocaml.doc("<p>A list of tag key-value pairs.</p>") @as("Tags") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListMeetingTagsCommand"
  let make = (~meetingId, ()) => new({meetingId: meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChannels = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
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
  let make = (~appInstanceArn, ~chimeBearer=?, ~nextToken=?, ~maxResults=?, ~privacy=?, ()) =>
    new({chimeBearer, nextToken, maxResults, privacy, appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListBots = {
  type t
  type request = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of results to return in a single call. The default is 10.</p>"
    )
    @as("MaxResults")
    maxResults: option<resultMax>,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>List of bots and bot details.</p>") @as("Bots") bots: option<botList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListBotsCommand"
  let make = (~accountId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAttendees = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<resultMax>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The Amazon Chime SDK attendee information.</p>") @as("Attendees")
    attendees: option<attendeeList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListAttendeesCommand"
  let make = (~meetingId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAttendeeTags = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime SDK attendee ID.</p>") @as("AttendeeId") attendeeId: guidString,
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {
    @ocaml.doc("<p>A list of tag key-value pairs.</p>") @as("Tags") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListAttendeeTagsCommand"
  let make = (~attendeeId, ~meetingId, ()) => new({attendeeId, meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAppInstances = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token passed by previous API requests until you reach the maximum number of <code>AppInstance</code>s.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of <code>AppInstance</code>s that you want to return.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token passed by previous API requests until the maximum number of <code>AppInstance</code>s is reached.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The information for each <code>AppInstance</code>.</p>") @as("AppInstances")
    appInstances: option<appInstanceList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListAppInstancesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAppInstanceUsers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token passed by previous API calls until all requested users are returned.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of requests that you want returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The token passed by previous API calls until all requested users are returned.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The information for each requested <code>AppInstanceUser</code>.</p>")
    @as("AppInstanceUsers")
    appInstanceUsers: option<appInstanceUserList>,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListAppInstanceUsersCommand"
  let make = (~appInstanceArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module InviteUsers = {
  type t
  type request = {
    @ocaml.doc("<p>The user type.</p>") @as("UserType") userType: option<userType>,
    @ocaml.doc("<p>The user email addresses to which to send the email invitation.</p>")
    @as("UserEmailList")
    userEmailList: userEmailList,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The email invitation details.</p>") @as("Invites") invites: option<inviteList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "InviteUsersCommand"
  let make = (~userEmailList, ~accountId, ~userType=?, ()) =>
    new({userType, userEmailList, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetVoiceConnectorTermination = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The termination setting details.</p>") @as("Termination")
    termination: option<termination>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "GetVoiceConnectorTerminationCommand"
  let make = (~voiceConnectorId, ()) => new({voiceConnectorId: voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetVoiceConnectorProxy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime voice connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString128,
  }
  type response = {
    @ocaml.doc("<p>The proxy configuration details.</p>") @as("Proxy") proxy: option<proxy>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetVoiceConnectorProxyCommand"
  let make = (~voiceConnectorId, ()) => new({voiceConnectorId: voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetUserSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The user ID.</p>") @as("UserId") userId: string_,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: string_,
  }
  type response = {
    @ocaml.doc("<p>The user settings.</p>") @as("UserSettings") userSettings: option<userSettings>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetUserSettingsCommand"
  let make = (~userId, ~accountId, ()) => new({userId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetUser = {
  type t
  type request = {
    @ocaml.doc("<p>The user ID.</p>") @as("UserId") userId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@ocaml.doc("<p>The user details.</p>") @as("User") user: option<user>}
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetUserCommand"
  let make = (~userId, ~accountId, ()) => new({userId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRetentionSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc(
      "<p>The timestamp representing the time at which the specified items are permanently deleted, in ISO 8601 format.</p>"
    )
    @as("InitiateDeletionTimestamp")
    initiateDeletionTimestamp: option<iso8601Timestamp>,
    @ocaml.doc("<p>The retention settings.</p>") @as("RetentionSettings")
    retentionSettings: option<retentionSettings>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetRetentionSettingsCommand"
  let make = (~accountId, ()) => new({accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetMeeting = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Chime SDK meeting information.</p>") @as("Meeting")
    meeting: option<meeting>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetMeetingCommand"
  let make = (~meetingId, ()) => new({meetingId: meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetChannelMessage = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
    @ocaml.doc("<p>The ID of the message.</p>") @as("MessageId") messageId: messageId,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The details of and content in the message.</p>") @as("ChannelMessage")
    channelMessage: option<channelMessage>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetChannelMessageCommand"
  let make = (~messageId, ~channelArn, ~chimeBearer=?, ()) =>
    new({chimeBearer, messageId, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAppInstanceStreamingConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The streaming settings.</p>") @as("AppInstanceStreamingConfigurations")
    appInstanceStreamingConfigurations: option<appInstanceStreamingConfigurationList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "GetAppInstanceStreamingConfigurationsCommand"
  let make = (~appInstanceArn, ()) => new({appInstanceArn: appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAppInstanceRetentionSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The timestamp representing the time at which the specified items are retained, in Epoch Seconds.</p>"
    )
    @as("InitiateDeletionTimestamp")
    initiateDeletionTimestamp: option<timestamp_>,
    @ocaml.doc("<p>The retention settings for the <code>AppInstance</code>.</p>")
    @as("AppInstanceRetentionSettings")
    appInstanceRetentionSettings: option<appInstanceRetentionSettings>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "GetAppInstanceRetentionSettingsCommand"
  let make = (~appInstanceArn, ()) => new({appInstanceArn: appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociatePhoneNumbersFromVoiceConnectorGroup = {
  type t
  type request = {
    @ocaml.doc("<p>List of phone numbers, in E.164 format.</p>") @as("E164PhoneNumbers")
    e164PhoneNumbers: e164PhoneNumberList,
    @ocaml.doc("<p>The Amazon Chime Voice Connector group ID.</p>") @as("VoiceConnectorGroupId")
    voiceConnectorGroupId: nonEmptyString,
  }
  type response = {
    @ocaml.doc(
      "<p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>"
    )
    @as("PhoneNumberErrors")
    phoneNumberErrors: option<phoneNumberErrorList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DisassociatePhoneNumbersFromVoiceConnectorGroupCommand"
  let make = (~e164PhoneNumbers, ~voiceConnectorGroupId, ()) =>
    new({e164PhoneNumbers, voiceConnectorGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociatePhoneNumbersFromVoiceConnector = {
  type t
  type request = {
    @ocaml.doc("<p>List of phone numbers, in E.164 format.</p>") @as("E164PhoneNumbers")
    e164PhoneNumbers: e164PhoneNumberList,
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {
    @ocaml.doc(
      "<p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>"
    )
    @as("PhoneNumberErrors")
    phoneNumberErrors: option<phoneNumberErrorList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DisassociatePhoneNumbersFromVoiceConnectorCommand"
  let make = (~e164PhoneNumbers, ~voiceConnectorId, ()) => new({e164PhoneNumbers, voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeChannelModerator = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
    @ocaml.doc("<p>The ARN of the channel moderator.</p>") @as("ChannelModeratorArn")
    channelModeratorArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The details of the channel moderator.</p>") @as("ChannelModerator")
    channelModerator: option<channelModerator>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DescribeChannelModeratorCommand"
  let make = (~channelModeratorArn, ~channelArn, ~chimeBearer=?, ()) =>
    new({chimeBearer, channelModeratorArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeChannelModeratedByAppInstanceUser = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
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
  let make = (~appInstanceUserArn, ~channelArn, ~chimeBearer=?, ()) =>
    new({chimeBearer, appInstanceUserArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeChannelMembershipForAppInstanceUser = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
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
  let make = (~appInstanceUserArn, ~channelArn, ~chimeBearer=?, ()) =>
    new({chimeBearer, appInstanceUserArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeChannelMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
    @ocaml.doc("<p>The ARN of the member.</p>") @as("MemberArn") memberArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The details of the membership.</p>") @as("ChannelMembership")
    channelMembership: option<channelMembership>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DescribeChannelMembershipCommand"
  let make = (~memberArn, ~channelArn, ~chimeBearer=?, ()) =>
    new({chimeBearer, memberArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeChannelBan = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
    @ocaml.doc("<p>The ARN of the member being banned.</p>") @as("MemberArn") memberArn: chimeArn,
    @ocaml.doc("<p>The ARN of the channel from which the user is banned.</p>") @as("ChannelArn")
    channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The details of the ban.</p>") @as("ChannelBan") channelBan: option<channelBan>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "DescribeChannelBanCommand"
  let make = (~memberArn, ~channelArn, ~chimeBearer=?, ()) =>
    new({chimeBearer, memberArn, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
    @ocaml.doc("<p>The ARN of the channel.</p>") @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The channel details.</p>") @as("Channel") channel: option<channel>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "DescribeChannelCommand"
  let make = (~channelArn, ~chimeBearer=?, ()) => new({chimeBearer, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAppInstanceAdmin = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
    @ocaml.doc("<p>The ARN of the <code>AppInstanceAdmin</code>.</p>") @as("AppInstanceAdminArn")
    appInstanceAdminArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN and name of the <code>AppInstanceUser</code>, the ARN of the <code>AppInstance</code>, and the created and
            last-updated timestamps. All timestamps use epoch milliseconds.</p>")
    @as("AppInstanceAdmin")
    appInstanceAdmin: option<appInstanceAdmin>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DescribeAppInstanceAdminCommand"
  let make = (~appInstanceArn, ~appInstanceAdminArn, ()) =>
    new({appInstanceArn, appInstanceAdminArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateUser = {
  type t
  type request = {
    @ocaml.doc("<p>The user type.</p>") @as("UserType") userType: option<userType>,
    @ocaml.doc("<p>The user's email address.</p>") @as("Email") email: option<emailAddress>,
    @ocaml.doc("<p>The user name.</p>") @as("Username") username: option<string_>,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("User") user: option<user>}
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateUserCommand"
  let make = (~accountId, ~userType=?, ~email=?, ~username=?, ()) =>
    new({userType, email, username, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRoomMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The role of the member.</p>") @as("Role") role: option<roomMembershipRole>,
    @ocaml.doc("<p>The Amazon Chime member ID (user ID or bot ID).</p>") @as("MemberId")
    memberId: nonEmptyString,
    @ocaml.doc("<p>The room ID.</p>") @as("RoomId") roomId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The room membership details.</p>") @as("RoomMembership")
    roomMembership: option<roomMembership>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateRoomMembershipCommand"
  let make = (~memberId, ~roomId, ~accountId, ~role=?, ()) =>
    new({role, memberId, roomId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateMeeting = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>"
    )
    @as("NotificationsConfiguration")
    notificationsConfiguration: option<meetingNotificationConfiguration>,
    @ocaml.doc("<p>The tag key-value pairs.</p>") @as("Tags") tags: option<meetingTagList>,
    @ocaml.doc("<p>
The Region in which to create the meeting. Default: <code>us-east-1</code>.
</p>

         <p>
Available values: 
<code>af-south-1</code>
, 
<code>ap-northeast-1</code>
, 
<code>ap-northeast-2</code>
, 
<code>ap-south-1</code>
, 
<code>ap-southeast-1</code>
, 
<code>ap-southeast-2</code>
, 
<code>ca-central-1</code>
, 
<code>eu-central-1</code>
, 
<code>eu-north-1</code>
, 
<code>eu-south-1</code>
, 
<code>eu-west-1</code>
, 
<code>eu-west-2</code>
, 
<code>eu-west-3</code>
, 
<code>sa-east-1</code>
, 
<code>us-east-1</code>
, 
<code>us-east-2</code>
, 
<code>us-west-1</code>
, 
<code>us-west-2</code>
.
</p>")
    @as("MediaRegion")
    mediaRegion: option<string_>,
    @ocaml.doc("<p>Reserved.</p>") @as("MeetingHostId") meetingHostId: option<externalUserIdType>,
    @ocaml.doc("<p>The external meeting ID.</p>") @as("ExternalMeetingId")
    externalMeetingId: option<externalMeetingIdType>,
    @ocaml.doc(
      "<p>The unique identifier for the client request. Use a different token for different meetings.</p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: clientRequestToken,
  }
  type response = {
    @ocaml.doc("<p>
The meeting information, including the meeting ID and 
<code>MediaPlacement</code>
.
</p>")
    @as("Meeting")
    meeting: option<meeting>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateMeetingCommand"
  let make = (
    ~clientRequestToken,
    ~notificationsConfiguration=?,
    ~tags=?,
    ~mediaRegion=?,
    ~meetingHostId=?,
    ~externalMeetingId=?,
    (),
  ) =>
    new({
      notificationsConfiguration,
      tags,
      mediaRegion,
      meetingHostId,
      externalMeetingId,
      clientRequestToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
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
    ~clientRequestToken,
    ~name,
    ~appInstanceArn,
    ~chimeBearer=?,
    ~tags=?,
    ~metadata=?,
    ~privacy=?,
    ~mode=?,
    (),
  ) => new({chimeBearer, tags, clientRequestToken, metadata, privacy, mode, name, appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateAttendee = {
  type t
  type request = {
    @ocaml.doc("<p>The tag key-value pairs.</p>") @as("Tags") tags: option<attendeeTagList>,
    @ocaml.doc(
      "<p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>"
    )
    @as("ExternalUserId")
    externalUserId: externalUserIdType,
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {
    @ocaml.doc("<p>The attendee information, including attendee ID and join token.</p>")
    @as("Attendee")
    attendee: option<attendee>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateAttendeeCommand"
  let make = (~externalUserId, ~meetingId, ~tags=?, ()) => new({tags, externalUserId, meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateAppInstanceUser = {
  type t
  type request = {
    @ocaml.doc("<p>Tags assigned to the <code>AppInstanceUser</code>.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The token assigned to the user requesting an <code>AppInstance</code>.</p>")
    @as("ClientRequestToken")
    clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>The request's metadata. Limited to a 1KB string in UTF-8.</p>") @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc("<p>The user's name.</p>") @as("Name") name: userName,
    @ocaml.doc("<p>The user ID of the <code>AppInstance</code>.</p>") @as("AppInstanceUserId")
    appInstanceUserId: userId,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code> request.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The user's ARN.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateAppInstanceUserCommand"
  let make = (
    ~clientRequestToken,
    ~name,
    ~appInstanceUserId,
    ~appInstanceArn,
    ~tags=?,
    ~metadata=?,
    (),
  ) => new({tags, clientRequestToken, metadata, name, appInstanceUserId, appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateAppInstance = {
  type t
  type request = {
    @ocaml.doc("<p>Tags assigned to the <code>AppInstance</code>.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The <code>ClientRequestToken</code> of the <code>AppInstance</code>.</p>")
    @as("ClientRequestToken")
    clientRequestToken: clientRequestToken,
    @ocaml.doc(
      "<p>The metadata of the <code>AppInstance</code>. Limited to a 1KB string in UTF-8.</p>"
    )
    @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc("<p>The name of the <code>AppInstance</code>.</p>") @as("Name")
    name: nonEmptyResourceName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of the <code>AppInstance</code>.</p>")
    @as("AppInstanceArn")
    appInstanceArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateAppInstanceCommand"
  let make = (~clientRequestToken, ~name, ~tags=?, ~metadata=?, ()) =>
    new({tags, clientRequestToken, metadata, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchUpdatePhoneNumber = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The request containing the phone number IDs and product types or calling names to update.</p>"
    )
    @as("UpdatePhoneNumberRequestItems")
    updatePhoneNumberRequestItems: updatePhoneNumberRequestItemList,
  }
  type response = {
    @ocaml.doc(
      "<p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>"
    )
    @as("PhoneNumberErrors")
    phoneNumberErrors: option<phoneNumberErrorList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "BatchUpdatePhoneNumberCommand"
  let make = (~updatePhoneNumberRequestItems, ()) =>
    new({updatePhoneNumberRequestItems: updatePhoneNumberRequestItems})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchUnsuspendUser = {
  type t
  type request = {
    @ocaml.doc("<p>The request containing the user IDs to unsuspend.</p>") @as("UserIdList")
    userIdList: userIdList,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>If the <a>BatchUnsuspendUser</a> action fails for one or more of the user IDs in the
            request, a list of the user IDs is returned, along with error codes and error messages.</p>")
    @as("UserErrors")
    userErrors: option<userErrorList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "BatchUnsuspendUserCommand"
  let make = (~userIdList, ~accountId, ()) => new({userIdList, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchSuspendUser = {
  type t
  type request = {
    @ocaml.doc("<p>The request containing the user IDs to suspend.</p>") @as("UserIdList")
    userIdList: userIdList,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>If the <a>BatchSuspendUser</a> action fails for one or more of the user IDs in the
            request, a list of the user IDs is returned, along with error codes and error messages.</p>")
    @as("UserErrors")
    userErrors: option<userErrorList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "BatchSuspendUserCommand"
  let make = (~userIdList, ~accountId, ()) => new({userIdList, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchDeletePhoneNumber = {
  type t
  type request = {
    @ocaml.doc("<p>List of phone number IDs.</p>") @as("PhoneNumberIds")
    phoneNumberIds: nonEmptyStringList,
  }
  type response = {
    @ocaml.doc(
      "<p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>"
    )
    @as("PhoneNumberErrors")
    phoneNumberErrors: option<phoneNumberErrorList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "BatchDeletePhoneNumberCommand"
  let make = (~phoneNumberIds, ()) => new({phoneNumberIds: phoneNumberIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchCreateRoomMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The list of membership items.</p>") @as("MembershipItemList")
    membershipItemList: membershipItemList,
    @ocaml.doc("<p>The room ID.</p>") @as("RoomId") roomId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc(
      "<p>If the action fails for one or more of the member IDs in the request, a list of the member IDs is returned, along with error codes and error messages.</p>"
    )
    @as("Errors")
    errors: option<memberErrorList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "BatchCreateRoomMembershipCommand"
  let make = (~membershipItemList, ~roomId, ~accountId, ()) =>
    new({membershipItemList, roomId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateSigninDelegateGroupsWithAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The sign-in delegate groups.</p>") @as("SigninDelegateGroups")
    signinDelegateGroups: signinDelegateGroupList,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "AssociateSigninDelegateGroupsWithAccountCommand"
  let make = (~signinDelegateGroups, ~accountId, ()) => new({signinDelegateGroups, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AssociatePhoneNumbersWithVoiceConnectorGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>If true, associates the provided phone numbers with the provided Amazon Chime Voice Connector Group and removes any previously existing associations. If false, does not associate any phone numbers that have previously existing associations.</p>"
    )
    @as("ForceAssociate")
    forceAssociate: option<nullableBoolean>,
    @ocaml.doc("<p>List of phone numbers, in E.164 format.</p>") @as("E164PhoneNumbers")
    e164PhoneNumbers: e164PhoneNumberList,
    @ocaml.doc("<p>The Amazon Chime Voice Connector group ID.</p>") @as("VoiceConnectorGroupId")
    voiceConnectorGroupId: nonEmptyString,
  }
  type response = {
    @ocaml.doc(
      "<p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>"
    )
    @as("PhoneNumberErrors")
    phoneNumberErrors: option<phoneNumberErrorList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "AssociatePhoneNumbersWithVoiceConnectorGroupCommand"
  let make = (~e164PhoneNumbers, ~voiceConnectorGroupId, ~forceAssociate=?, ()) =>
    new({forceAssociate, e164PhoneNumbers, voiceConnectorGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociatePhoneNumbersWithVoiceConnector = {
  type t
  type request = {
    @ocaml.doc(
      "<p>If true, associates the provided phone numbers with the provided Amazon Chime Voice Connector and removes any previously existing associations. If false, does not associate any phone numbers that have previously existing associations.</p>"
    )
    @as("ForceAssociate")
    forceAssociate: option<nullableBoolean>,
    @ocaml.doc("<p>List of phone numbers, in E.164 format.</p>") @as("E164PhoneNumbers")
    e164PhoneNumbers: e164PhoneNumberList,
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and 
    error messages.</p>")
    @as("PhoneNumberErrors")
    phoneNumberErrors: option<phoneNumberErrorList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "AssociatePhoneNumbersWithVoiceConnectorCommand"
  let make = (~e164PhoneNumbers, ~voiceConnectorId, ~forceAssociate=?, ()) =>
    new({forceAssociate, e164PhoneNumbers, voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateVoiceConnectorGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>VoiceConnectorItems</code> to associate with the group.</p>")
    @as("VoiceConnectorItems")
    voiceConnectorItems: voiceConnectorItemList,
    @ocaml.doc("<p>The name of the Amazon Chime Voice Connector group.</p>") @as("Name")
    name: voiceConnectorGroupName,
    @ocaml.doc("<p>The Amazon Chime Voice Connector group ID.</p>") @as("VoiceConnectorGroupId")
    voiceConnectorGroupId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The updated Amazon Chime Voice Connector group details.</p>")
    @as("VoiceConnectorGroup")
    voiceConnectorGroup: option<voiceConnectorGroup>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "UpdateVoiceConnectorGroupCommand"
  let make = (~voiceConnectorItems, ~name, ~voiceConnectorGroupId, ()) =>
    new({voiceConnectorItems, name, voiceConnectorGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateSipRule = {
  type t
  type request = {
    @ocaml.doc("<p>The new value of the list of target applications.</p>") @as("TargetApplications")
    targetApplications: option<sipRuleTargetApplicationList>,
    @ocaml.doc("<p>The new value specified to indicate whether the rule is disabled.</p>")
    @as("Disabled")
    disabled: option<nullableBoolean>,
    @ocaml.doc("<p>The new name for the specified SIP rule.</p>") @as("Name") name: sipRuleName,
    @ocaml.doc("<p>The SIP rule ID.</p>") @as("SipRuleId") sipRuleId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>Updated SIP rule details.</p>") @as("SipRule") sipRule: option<sipRule>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateSipRuleCommand"
  let make = (~name, ~sipRuleId, ~targetApplications=?, ~disabled=?, ()) =>
    new({targetApplications, disabled, name, sipRuleId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateSipMediaApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The new set of endpoints for the specified SIP media application.</p>")
    @as("Endpoints")
    endpoints: option<sipMediaApplicationEndpointList>,
    @ocaml.doc("<p>The new name for the specified SIP media application.</p>") @as("Name")
    name: option<sipMediaApplicationName>,
    @ocaml.doc("<p>The SIP media application ID.</p>") @as("SipMediaApplicationId")
    sipMediaApplicationId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The updated SIP media application details.</p>") @as("SipMediaApplication")
    sipMediaApplication: option<sipMediaApplication>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "UpdateSipMediaApplicationCommand"
  let make = (~sipMediaApplicationId, ~endpoints=?, ~name=?, ()) =>
    new({endpoints, name, sipMediaApplicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateProxySession = {
  type t
  type request = {
    @ocaml.doc("<p>The number of minutes allowed for the proxy session.</p>") @as("ExpiryMinutes")
    expiryMinutes: option<positiveInteger>,
    @ocaml.doc("<p>The proxy session capabilities.</p>") @as("Capabilities")
    capabilities: capabilityList,
    @ocaml.doc("<p>The proxy session ID.</p>") @as("ProxySessionId")
    proxySessionId: nonEmptyString128,
    @ocaml.doc("<p>The Amazon Chime voice connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString128,
  }
  type response = {
    @ocaml.doc("<p>The proxy session details.</p>") @as("ProxySession")
    proxySession: option<proxySession>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateProxySessionCommand"
  let make = (~capabilities, ~proxySessionId, ~voiceConnectorId, ~expiryMinutes=?, ()) =>
    new({expiryMinutes, capabilities, proxySessionId, voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdatePhoneNumber = {
  type t
  type request = {
    @ocaml.doc("<p>The outbound calling name associated with the phone number.</p>")
    @as("CallingName")
    callingName: option<callingName>,
    @ocaml.doc("<p>The product type.</p>") @as("ProductType")
    productType: option<phoneNumberProductType>,
    @ocaml.doc("<p>The phone number ID.</p>") @as("PhoneNumberId") phoneNumberId: string_,
  }
  type response = {
    @ocaml.doc("<p>The updated phone number details.</p>") @as("PhoneNumber")
    phoneNumber: option<phoneNumber>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdatePhoneNumberCommand"
  let make = (~phoneNumberId, ~callingName=?, ~productType=?, ()) =>
    new({callingName, productType, phoneNumberId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The default license applied when you add users to an Amazon Chime account.</p>")
    @as("DefaultLicense")
    defaultLicense: option<license>,
    @ocaml.doc("<p>The new name for the specified Amazon Chime account.</p>") @as("Name")
    name: option<accountName>,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The updated Amazon Chime account details.</p>") @as("Account")
    account: option<account>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateAccountCommand"
  let make = (~accountId, ~defaultLicense=?, ~name=?, ()) => new({defaultLicense, name, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RestorePhoneNumber = {
  type t
  type request = {
    @ocaml.doc("<p>The phone number.</p>") @as("PhoneNumberId") phoneNumberId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The phone number details.</p>") @as("PhoneNumber")
    phoneNumber: option<phoneNumber>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "RestorePhoneNumberCommand"
  let make = (~phoneNumberId, ()) => new({phoneNumberId: phoneNumberId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutVoiceConnectorStreamingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The streaming configuration details to add.</p>") @as("StreamingConfiguration")
    streamingConfiguration: streamingConfiguration,
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The updated streaming configuration details.</p>") @as("StreamingConfiguration")
    streamingConfiguration: option<streamingConfiguration>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "PutVoiceConnectorStreamingConfigurationCommand"
  let make = (~streamingConfiguration, ~voiceConnectorId, ()) =>
    new({streamingConfiguration, voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutVoiceConnectorOrigination = {
  type t
  type request = {
    @ocaml.doc("<p>The origination setting details to add.</p>") @as("Origination")
    origination: origination,
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The updated origination setting details.</p>") @as("Origination")
    origination: option<origination>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "PutVoiceConnectorOriginationCommand"
  let make = (~origination, ~voiceConnectorId, ()) => new({origination, voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutVoiceConnectorEmergencyCallingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The emergency calling configuration details.</p>")
    @as("EmergencyCallingConfiguration")
    emergencyCallingConfiguration: emergencyCallingConfiguration,
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The emergency calling configuration details.</p>")
    @as("EmergencyCallingConfiguration")
    emergencyCallingConfiguration: option<emergencyCallingConfiguration>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "PutVoiceConnectorEmergencyCallingConfigurationCommand"
  let make = (~emergencyCallingConfiguration, ~voiceConnectorId, ()) =>
    new({emergencyCallingConfiguration, voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListUsers = {
  type t
  type request = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return in a single call. Defaults to 100.</p>")
    @as("MaxResults")
    maxResults: option<profileServiceMaxResults>,
    @ocaml.doc("<p>The user type.</p>") @as("UserType") userType: option<userType>,
    @ocaml.doc("<p>Optional. The user email address used to filter results. Maximum 1.</p>")
    @as("UserEmail")
    userEmail: option<emailAddress>,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>List of users and user details.</p>") @as("Users") users: option<userList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListUsersCommand"
  let make = (~accountId, ~nextToken=?, ~maxResults=?, ~userType=?, ~userEmail=?, ()) =>
    new({nextToken, maxResults, userType, userEmail, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSupportedPhoneNumberCountries = {
  type t
  type request = {
    @ocaml.doc("<p>The phone number product type.</p>") @as("ProductType")
    productType: phoneNumberProductType,
  }
  type response = {
    @ocaml.doc("<p>The supported phone number countries.</p>") @as("PhoneNumberCountries")
    phoneNumberCountries: option<phoneNumberCountriesList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "ListSupportedPhoneNumberCountriesCommand"
  let make = (~productType, ()) => new({productType: productType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRoomMemberships = {
  type t
  type request = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<resultMax>,
    @ocaml.doc("<p>The room ID.</p>") @as("RoomId") roomId: nonEmptyString,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The room membership details.</p>") @as("RoomMemberships")
    roomMemberships: option<roomMembershipList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListRoomMembershipsCommand"
  let make = (~roomId, ~accountId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, roomId, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListMeetings = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<resultMax>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The Amazon Chime SDK meeting information.</p>") @as("Meetings")
    meetings: option<meetingList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListMeetingsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChannelsModeratedByAppInstanceUser = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
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
  let make = (~chimeBearer=?, ~nextToken=?, ~maxResults=?, ~appInstanceUserArn=?, ()) =>
    new({chimeBearer, nextToken, maxResults, appInstanceUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChannelModerators = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
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
  let make = (~channelArn, ~chimeBearer=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({chimeBearer, nextToken, maxResults, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChannelMessages = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
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
    ~channelArn,
    ~chimeBearer=?,
    ~nextToken=?,
    ~maxResults=?,
    ~notAfter=?,
    ~notBefore=?,
    ~sortOrder=?,
    (),
  ) => new({chimeBearer, nextToken, maxResults, notAfter, notBefore, sortOrder, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChannelMembershipsForAppInstanceUser = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
    @ocaml.doc(
      "<p>The token returned from previous API requests until the number of channel memberships is reached.</p>"
    )
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
  let make = (~chimeBearer=?, ~nextToken=?, ~maxResults=?, ~appInstanceUserArn=?, ()) =>
    new({chimeBearer, nextToken, maxResults, appInstanceUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChannelMemberships = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
    @ocaml.doc("<p>The token passed by previous API calls until all requested channel memberships are
         returned.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of channel memberships that you want returned.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
         members are always returned as part of <code>ListChannelMemberships</code>. Hidden members
         are only returned if the type filter in <code>ListChannelMemberships</code> equals
            <code>HIDDEN</code>. Otherwise hidden members are not returned.</p>")
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
  let make = (~channelArn, ~chimeBearer=?, ~nextToken=?, ~maxResults=?, ~type_=?, ()) =>
    new({chimeBearer, nextToken, maxResults, type_, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChannelBans = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
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
  let make = (~channelArn, ~chimeBearer=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({chimeBearer, nextToken, maxResults, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAppInstanceAdmins = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token returned from previous API requests until the number of administrators is reached.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of administrators that you want to return.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The token returned from previous API requests until the number of administrators is reached.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The information for each administrator.</p>") @as("AppInstanceAdmins")
    appInstanceAdmins: option<appInstanceAdminList>,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListAppInstanceAdminsCommand"
  let make = (~appInstanceArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetVoiceConnectorStreamingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The streaming configuration details.</p>") @as("StreamingConfiguration")
    streamingConfiguration: option<streamingConfiguration>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "GetVoiceConnectorStreamingConfigurationCommand"
  let make = (~voiceConnectorId, ()) => new({voiceConnectorId: voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetVoiceConnectorOrigination = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The origination setting details.</p>") @as("Origination")
    origination: option<origination>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "GetVoiceConnectorOriginationCommand"
  let make = (~voiceConnectorId, ()) => new({voiceConnectorId: voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetVoiceConnectorGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector group ID.</p>") @as("VoiceConnectorGroupId")
    voiceConnectorGroupId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector group details.</p>") @as("VoiceConnectorGroup")
    voiceConnectorGroup: option<voiceConnectorGroup>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetVoiceConnectorGroupCommand"
  let make = (~voiceConnectorGroupId, ()) => new({voiceConnectorGroupId: voiceConnectorGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetVoiceConnectorEmergencyCallingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The emergency calling configuration details.</p>")
    @as("EmergencyCallingConfiguration")
    emergencyCallingConfiguration: option<emergencyCallingConfiguration>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "GetVoiceConnectorEmergencyCallingConfigurationCommand"
  let make = (~voiceConnectorId, ()) => new({voiceConnectorId: voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSipRule = {
  type t
  type request = {@ocaml.doc("<p>The SIP rule ID.</p>") @as("SipRuleId") sipRuleId: nonEmptyString}
  type response = {
    @ocaml.doc("<p>The SIP rule details.</p>") @as("SipRule") sipRule: option<sipRule>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetSipRuleCommand"
  let make = (~sipRuleId, ()) => new({sipRuleId: sipRuleId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSipMediaApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The SIP media application ID.</p>") @as("SipMediaApplicationId")
    sipMediaApplicationId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The SIP media application details.</p>") @as("SipMediaApplication")
    sipMediaApplication: option<sipMediaApplication>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetSipMediaApplicationCommand"
  let make = (~sipMediaApplicationId, ()) => new({sipMediaApplicationId: sipMediaApplicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetProxySession = {
  type t
  type request = {
    @ocaml.doc("<p>The proxy session ID.</p>") @as("ProxySessionId")
    proxySessionId: nonEmptyString128,
    @ocaml.doc("<p>The Amazon Chime voice connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString128,
  }
  type response = {
    @ocaml.doc("<p>The proxy session details.</p>") @as("ProxySession")
    proxySession: option<proxySession>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetProxySessionCommand"
  let make = (~proxySessionId, ~voiceConnectorId, ()) => new({proxySessionId, voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPhoneNumberOrder = {
  type t
  type request = {
    @ocaml.doc("<p>The ID for the phone number order.</p>") @as("PhoneNumberOrderId")
    phoneNumberOrderId: guidString,
  }
  type response = {
    @ocaml.doc("<p>The phone number order details.</p>") @as("PhoneNumberOrder")
    phoneNumberOrder: option<phoneNumberOrder>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetPhoneNumberOrderCommand"
  let make = (~phoneNumberOrderId, ()) => new({phoneNumberOrderId: phoneNumberOrderId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPhoneNumber = {
  type t
  type request = {
    @ocaml.doc("<p>The phone number ID.</p>") @as("PhoneNumberId") phoneNumberId: string_,
  }
  type response = {
    @ocaml.doc("<p>The phone number details.</p>") @as("PhoneNumber")
    phoneNumber: option<phoneNumber>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetPhoneNumberCommand"
  let make = (~phoneNumberId, ()) => new({phoneNumberId: phoneNumberId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Chime account details.</p>") @as("Account") account: option<account>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetAccountCommand"
  let make = (~accountId, ()) => new({accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateVoiceConnectorGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime Voice Connectors to route inbound calls to.</p>")
    @as("VoiceConnectorItems")
    voiceConnectorItems: option<voiceConnectorItemList>,
    @ocaml.doc("<p>The name of the Amazon Chime Voice Connector group.</p>") @as("Name")
    name: voiceConnectorGroupName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Chime Voice Connector group details.</p>") @as("VoiceConnectorGroup")
    voiceConnectorGroup: option<voiceConnectorGroup>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "CreateVoiceConnectorGroupCommand"
  let make = (~name, ~voiceConnectorItems=?, ()) => new({voiceConnectorItems, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSipRule = {
  type t
  type request = {
    @ocaml.doc(
      "<p>List of SIP media applications with priority and AWS Region. Only one SIP application per AWS Region can be used.</p>"
    )
    @as("TargetApplications")
    targetApplications: sipRuleTargetApplicationList,
    @ocaml.doc(
      "<p>Enables or disables a rule. You must disable rules before you can delete them.</p>"
    )
    @as("Disabled")
    disabled: option<nullableBoolean>,
    @ocaml.doc("<p>If <code>TriggerType</code> is <code>RequestUriHostname</code>, the value can be the outbound
            host name of an Amazon Chime Voice Connector. If <code>TriggerType</code> is
                <code>ToPhoneNumber</code>, the value can be a customer-owned phone number in the
    E164 format. The <code>SipMediaApplication</code> specified in the <code>SipRule</code> is triggered if the request URI in an incoming SIP 
    request matches the <code>RequestUriHostname</code>, or if the <code>To</code> header in the incoming SIP request matches the 
    <code>ToPhoneNumber</code> value.</p>")
    @as("TriggerValue")
    triggerValue: nonEmptyString,
    @ocaml.doc(
      "<p>The type of trigger assigned to the SIP rule in <code>TriggerValue</code>, currently <code>RequestUriHostname</code> or <code>ToPhoneNumber</code>.</p>"
    )
    @as("TriggerType")
    triggerType: sipRuleTriggerType,
    @ocaml.doc("<p>The name of the SIP rule.</p>") @as("Name") name: sipRuleName,
  }
  type response = {
    @ocaml.doc(
      "<p>Returns the SIP rule information, including the rule ID, triggers, and target applications.</p>"
    )
    @as("SipRule")
    sipRule: option<sipRule>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateSipRuleCommand"
  let make = (~targetApplications, ~triggerValue, ~triggerType, ~name, ~disabled=?, ()) =>
    new({targetApplications, disabled, triggerValue, triggerType, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSipMediaApplication = {
  type t
  type request = {
    @ocaml.doc(
      "<p>List of endpoints (Lambda Amazon Resource Names) specified for the SIP media application. Currently, only one endpoint is supported.</p>"
    )
    @as("Endpoints")
    endpoints: sipMediaApplicationEndpointList,
    @ocaml.doc("<p>The SIP media application name.</p>") @as("Name") name: sipMediaApplicationName,
    @ocaml.doc("<p>The AWS Region assigned to the SIP media application.</p>") @as("AwsRegion")
    awsRegion: string_,
  }
  type response = {
    @ocaml.doc("<p>The SIP media application details.</p>") @as("SipMediaApplication")
    sipMediaApplication: option<sipMediaApplication>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "CreateSipMediaApplicationCommand"
  let make = (~endpoints, ~name, ~awsRegion, ()) => new({endpoints, name, awsRegion})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateProxySession = {
  type t
  type request = {
    @ocaml.doc("<p>The country and area code for the proxy phone number.</p>") @as("GeoMatchParams")
    geoMatchParams: option<geoMatchParams>,
    @ocaml.doc(
      "<p>The preference for matching the country or area code of the proxy phone number with that of the first participant.</p>"
    )
    @as("GeoMatchLevel")
    geoMatchLevel: option<geoMatchLevel>,
    @ocaml.doc(
      "<p>The preference for proxy phone number reuse, or stickiness, between the same participants across sessions.</p>"
    )
    @as("NumberSelectionBehavior")
    numberSelectionBehavior: option<numberSelectionBehavior>,
    @ocaml.doc("<p>The proxy session capabilities.</p>") @as("Capabilities")
    capabilities: capabilityList,
    @ocaml.doc("<p>The number of minutes allowed for the proxy session.</p>") @as("ExpiryMinutes")
    expiryMinutes: option<positiveInteger>,
    @ocaml.doc("<p>The name of the proxy session.</p>") @as("Name")
    name: option<proxySessionNameString>,
    @ocaml.doc("<p>The participant phone numbers.</p>") @as("ParticipantPhoneNumbers")
    participantPhoneNumbers: participantPhoneNumberList,
    @ocaml.doc("<p>The Amazon Chime voice connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString128,
  }
  type response = {
    @ocaml.doc("<p>The proxy session details.</p>") @as("ProxySession")
    proxySession: option<proxySession>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateProxySessionCommand"
  let make = (
    ~capabilities,
    ~participantPhoneNumbers,
    ~voiceConnectorId,
    ~geoMatchParams=?,
    ~geoMatchLevel=?,
    ~numberSelectionBehavior=?,
    ~expiryMinutes=?,
    ~name=?,
    (),
  ) =>
    new({
      geoMatchParams,
      geoMatchLevel,
      numberSelectionBehavior,
      capabilities,
      expiryMinutes,
      name,
      participantPhoneNumbers,
      voiceConnectorId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreatePhoneNumberOrder = {
  type t
  type request = {
    @ocaml.doc("<p>List of phone numbers, in E.164 format.</p>") @as("E164PhoneNumbers")
    e164PhoneNumbers: e164PhoneNumberList,
    @ocaml.doc("<p>The phone number product type.</p>") @as("ProductType")
    productType: phoneNumberProductType,
  }
  type response = {
    @ocaml.doc("<p>The phone number order details.</p>") @as("PhoneNumberOrder")
    phoneNumberOrder: option<phoneNumberOrder>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreatePhoneNumberOrderCommand"
  let make = (~e164PhoneNumbers, ~productType, ()) => new({e164PhoneNumbers, productType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Amazon Chime account.</p>") @as("Name") name: accountName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Chime account details.</p>") @as("Account") account: option<account>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateAccountCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchUpdateUser = {
  type t
  type request = {
    @ocaml.doc("<p>The request containing the user IDs and details to update.</p>")
    @as("UpdateUserRequestItems")
    updateUserRequestItems: updateUserRequestItemList,
    @ocaml.doc("<p>The Amazon Chime account ID.</p>") @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>If the <a>BatchUpdateUser</a> action fails for one or more of the user IDs in the
            request, a list of the user IDs is returned, along with error codes and error messages.</p>")
    @as("UserErrors")
    userErrors: option<userErrorList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "BatchUpdateUserCommand"
  let make = (~updateUserRequestItems, ~accountId, ()) => new({updateUserRequestItems, accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchCreateChannelMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>")
    @as("ChimeBearer")
    chimeBearer: option<chimeArn>,
    @ocaml.doc("<p>The ARNs of the members you want to add to the channel.</p>") @as("MemberArns")
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
  let make = (~memberArns, ~channelArn, ~chimeBearer=?, ~type_=?, ()) =>
    new({chimeBearer, memberArns, type_, channelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListVoiceConnectorGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<resultMax>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The details of the Amazon Chime Voice Connector groups.</p>")
    @as("VoiceConnectorGroups")
    voiceConnectorGroups: option<voiceConnectorGroupList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "ListVoiceConnectorGroupsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSipRules = {
  type t
  type request = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>The maximum number of results to return in a single call. Defaults to 100.</p>")
    @as("MaxResults")
    maxResults: option<resultMax>,
    @ocaml.doc("<p>The SIP media application ID.</p>") @as("SipMediaApplicationId")
    sipMediaApplicationId: option<nonEmptyString>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>List of SIP rules and rule details.</p>") @as("SipRules")
    sipRules: option<sipRuleList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListSipRulesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~sipMediaApplicationId=?, ()) =>
    new({nextToken, maxResults, sipMediaApplicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSipMediaApplications = {
  type t
  type request = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>The maximum number of results to return in a single call. Defaults to 100.</p>")
    @as("MaxResults")
    maxResults: option<resultMax>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>List of SIP media applications and application details.</p>")
    @as("SipMediaApplications")
    sipMediaApplications: option<sipMediaApplicationList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "ListSipMediaApplicationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListProxySessions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<resultMax>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>The proxy session status.</p>") @as("Status") status: option<proxySessionStatus>,
    @ocaml.doc("<p>The Amazon Chime voice connector ID.</p>") @as("VoiceConnectorId")
    voiceConnectorId: nonEmptyString128,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>The proxy session details.</p>") @as("ProxySessions")
    proxySessions: option<proxySessions>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListProxySessionsCommand"
  let make = (~voiceConnectorId, ~maxResults=?, ~nextToken=?, ~status=?, ()) =>
    new({maxResults, nextToken, status, voiceConnectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListPhoneNumbers = {
  type t
  type request = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<resultMax>,
    @ocaml.doc("<p>The value to use for the filter.</p>") @as("FilterValue")
    filterValue: option<string_>,
    @ocaml.doc("<p>The filter to use to limit the number of results.</p>") @as("FilterName")
    filterName: option<phoneNumberAssociationName>,
    @ocaml.doc("<p>The phone number product type.</p>") @as("ProductType")
    productType: option<phoneNumberProductType>,
    @ocaml.doc("<p>The phone number status.</p>") @as("Status") status: option<phoneNumberStatus>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The phone number details.</p>") @as("PhoneNumbers")
    phoneNumbers: option<phoneNumberList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListPhoneNumbersCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~filterValue=?,
    ~filterName=?,
    ~productType=?,
    ~status=?,
    (),
  ) => new({nextToken, maxResults, filterValue, filterName, productType, status})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListPhoneNumberOrders = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<resultMax>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The phone number order details.</p>") @as("PhoneNumberOrders")
    phoneNumberOrders: option<phoneNumberOrderList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListPhoneNumberOrdersCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAccounts = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call. Defaults to 100.</p>")
    @as("MaxResults")
    maxResults: option<profileServiceMaxResults>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>User email address with which to filter results.</p>") @as("UserEmail")
    userEmail: option<emailAddress>,
    @ocaml.doc("<p>Amazon Chime account name prefix with which to filter results.</p>") @as("Name")
    name: option<accountName>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>List of Amazon Chime accounts and account details.</p>") @as("Accounts")
    accounts: option<accountList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListAccountsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~userEmail=?, ~name=?, ()) =>
    new({maxResults, nextToken, userEmail, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateMeetingWithAttendees = {
  type t
  type request = {
    @ocaml.doc("<p>The request containing the attendees to create.</p>") @as("Attendees")
    attendees: option<createMeetingWithAttendeesRequestItemList>,
    @as("NotificationsConfiguration")
    notificationsConfiguration: option<meetingNotificationConfiguration>,
    @ocaml.doc("<p>The tag key-value pairs.</p>") @as("Tags") tags: option<meetingTagList>,
    @ocaml.doc("<p>
The Region in which to create the meeting. Default: <code>us-east-1</code>
.
</p>

         <p>
Available values: 
<code>af-south-1</code>
, 
<code>ap-northeast-1</code>
, 
<code>ap-northeast-2</code>
, 
<code>ap-south-1</code>
, 
<code>ap-southeast-1</code>
, 
<code>ap-southeast-2</code>
, 
<code>ca-central-1</code>
, 
<code>eu-central-1</code>
, 
<code>eu-north-1</code>
, 
<code>eu-south-1</code>
, 
<code>eu-west-1</code>
, 
<code>eu-west-2</code>
, 
<code>eu-west-3</code>
, 
<code>sa-east-1</code>
, 
<code>us-east-1</code>
, 
<code>us-east-2</code>
, 
<code>us-west-1</code>
, 
<code>us-west-2</code>
.
</p>")
    @as("MediaRegion")
    mediaRegion: option<string_>,
    @ocaml.doc("<p>Reserved.</p>") @as("MeetingHostId") meetingHostId: option<externalUserIdType>,
    @ocaml.doc("<p>The external meeting ID.</p>") @as("ExternalMeetingId")
    externalMeetingId: option<externalMeetingIdType>,
    @ocaml.doc(
      "<p>The unique identifier for the client request. Use a different token for different meetings.</p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: clientRequestToken,
  }
  type response = {
    @ocaml.doc(
      "<p>If the action fails for one or more of the attendees in the request, a list of the attendees is returned, along with error codes and error messages.</p>"
    )
    @as("Errors")
    errors: option<batchCreateAttendeeErrorList>,
    @ocaml.doc("<p>The attendee information, including attendees IDs and join tokens.</p>")
    @as("Attendees")
    attendees: option<attendeeList>,
    @as("Meeting") meeting: option<meeting>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "CreateMeetingWithAttendeesCommand"
  let make = (
    ~clientRequestToken,
    ~attendees=?,
    ~notificationsConfiguration=?,
    ~tags=?,
    ~mediaRegion=?,
    ~meetingHostId=?,
    ~externalMeetingId=?,
    (),
  ) =>
    new({
      attendees,
      notificationsConfiguration,
      tags,
      mediaRegion,
      meetingHostId,
      externalMeetingId,
      clientRequestToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchCreateAttendee = {
  type t
  type request = {
    @ocaml.doc("<p>The request containing the attendees to create.</p>") @as("Attendees")
    attendees: createAttendeeRequestItemList,
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {
    @ocaml.doc(
      "<p>If the action fails for one or more of the attendees in the request, a list of the attendees is returned, along with error codes and error messages.</p>"
    )
    @as("Errors")
    errors: option<batchCreateAttendeeErrorList>,
    @ocaml.doc("<p>The attendee information, including attendees IDs and join tokens.</p>")
    @as("Attendees")
    attendees: option<attendeeList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "BatchCreateAttendeeCommand"
  let make = (~attendees, ~meetingId, ()) => new({attendees, meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetMediaCapturePipeline = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the pipeline that you want to get.</p>") @as("MediaPipelineId")
    mediaPipelineId: guidString,
  }
  type response = {
    @ocaml.doc("<p>The media capture pipeline object.</p>") @as("MediaCapturePipeline")
    mediaCapturePipeline: option<mediaCapturePipeline>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "GetMediaCapturePipelineCommand"
  let make = (~mediaPipelineId, ()) => new({mediaPipelineId: mediaPipelineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateMediaCapturePipeline = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The configuration for a specified media capture pipeline. <code>SourceType</code> must be <code>ChimeSdkMeeting</code>.</p>"
    )
    @as("ChimeSdkMeetingConfiguration")
    chimeSdkMeetingConfiguration: option<chimeSdkMeetingConfiguration>,
    @ocaml.doc("<p>The token assigned to the client making the pipeline request.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The ARN of the sink type.</p>") @as("SinkArn") sinkArn: arn,
    @ocaml.doc(
      "<p>Destination type to which the media artifacts are saved. You must use an S3 bucket. </p>"
    )
    @as("SinkType")
    sinkType: mediaPipelineSinkType,
    @ocaml.doc("<p>ARN of the source from which the media artifacts are captured.</p>")
    @as("SourceArn")
    sourceArn: arn,
    @ocaml.doc("<p>Source type from which the media artifacts will be captured. A Chime SDK Meeting 
            is the only supported source.</p>")
    @as("SourceType")
    sourceType: mediaPipelineSourceType,
  }
  type response = {
    @ocaml.doc(
      "<p>A media capture pipeline object, the ID, source type, source ARN, sink type, and  sink ARN of a media capture pipeline object.</p>"
    )
    @as("MediaCapturePipeline")
    mediaCapturePipeline: option<mediaCapturePipeline>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "CreateMediaCapturePipelineCommand"
  let make = (
    ~sinkArn,
    ~sinkType,
    ~sourceArn,
    ~sourceType,
    ~chimeSdkMeetingConfiguration=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      chimeSdkMeetingConfiguration,
      clientRequestToken,
      sinkArn,
      sinkType,
      sourceArn,
      sourceType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListMediaCapturePipelines = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of results to return in a single call. Valid Range: 1 - 99.</p>"
    )
    @as("MaxResults")
    maxResults: option<resultMax>,
    @ocaml.doc("<p>The token used to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token used to retrieve the next page of results. </p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The media capture pipeline objects in the list.</p>")
    @as("MediaCapturePipelines")
    mediaCapturePipelines: option<mediaCapturePipelineList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "ListMediaCapturePipelinesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
