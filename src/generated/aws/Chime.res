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
type userType = [@as("SharedDevice") #SharedDevice | @as("PrivateUser") #PrivateUser]
type userName = string
type userId = string
type urlType = string
type uriType = string
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
type accountName = string
type voiceConnectorSettings = {@as("CdrBucket") cdrBucket: option<string_>}
type voiceConnectorItem = {
  @as("Priority") priority: voiceConnectorItemPriority,
  @as("VoiceConnectorId") voiceConnectorId: nonEmptyString,
}
type voiceConnector = {
  @as("UpdatedTimestamp") updatedTimestamp: option<iso8601Timestamp>,
  @as("CreatedTimestamp") createdTimestamp: option<iso8601Timestamp>,
  @as("RequireEncryption") requireEncryption: option<boolean_>,
  @as("OutboundHostName") outboundHostName: option<string_>,
  @as("Name") name: option<voiceConnectorName>,
  @as("AwsRegion") awsRegion: option<voiceConnectorAwsRegion>,
  @as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>,
}
type userIdList = array<nonEmptyString>
type userError = {
  @as("ErrorMessage") errorMessage: option<string_>,
  @as("ErrorCode") errorCode: option<errorCode>,
  @as("UserId") userId: option<nonEmptyString>,
}
type userEmailList = array<emailAddress>
type updatePhoneNumberRequestItem = {
  @as("CallingName") callingName: option<callingName>,
  @as("ProductType") productType: option<phoneNumberProductType>,
  @as("PhoneNumberId") phoneNumberId: nonEmptyString,
}
type terminationHealth = {
  @as("Source") source: option<string_>,
  @as("Timestamp") timestamp_: option<iso8601Timestamp>,
}
type telephonySettings = {
  @as("SMS") sms: boolean_,
  @as("OutboundCalling") outboundCalling: boolean_,
  @as("InboundCalling") inboundCalling: boolean_,
}
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type stringList = array<string_>
type streamingNotificationTarget = {
  @as("NotificationTarget") notificationTarget: notificationTarget,
}
type sipRuleTargetApplication = {
  @as("AwsRegion") awsRegion: option<string_>,
  @as("Priority") priority: option<sipApplicationPriority>,
  @as("SipMediaApplicationId") sipMediaApplicationId: option<nonEmptyString>,
}
type sipMediaApplicationLoggingConfiguration = {
  @as("EnableSipMediaApplicationMessageLogs")
  enableSipMediaApplicationMessageLogs: option<boolean_>,
}
type sipMediaApplicationEndpoint = {@as("LambdaArn") lambdaArn: option<functionArn>}
type sipMediaApplicationCall = {@as("TransactionId") transactionId: option<guidString>}
type signinDelegateGroup = {@as("GroupName") groupName: option<nonEmptyString>}
type sensitiveStringList = array<sensitiveString>
type roomRetentionSettings = {@as("RetentionDays") retentionDays: option<retentionDays>}
type room = {
  @as("UpdatedTimestamp") updatedTimestamp: option<iso8601Timestamp>,
  @as("CreatedTimestamp") createdTimestamp: option<iso8601Timestamp>,
  @as("CreatedBy") createdBy: option<nonEmptyString>,
  @as("AccountId") accountId: option<nonEmptyString>,
  @as("Name") name: option<sensitiveString>,
  @as("RoomId") roomId: option<nonEmptyString>,
}
type phoneNumberTypeList = array<phoneNumberType>
type phoneNumberError = {
  @as("ErrorMessage") errorMessage: option<string_>,
  @as("ErrorCode") errorCode: option<errorCode>,
  @as("PhoneNumberId") phoneNumberId: option<nonEmptyString>,
}
type phoneNumberCapabilities = {
  @as("OutboundMMS") outboundMMS: option<nullableBoolean>,
  @as("InboundMMS") inboundMMS: option<nullableBoolean>,
  @as("OutboundSMS") outboundSMS: option<nullableBoolean>,
  @as("InboundSMS") inboundSMS: option<nullableBoolean>,
  @as("OutboundCall") outboundCall: option<nullableBoolean>,
  @as("InboundCall") inboundCall: option<nullableBoolean>,
}
type phoneNumberAssociation = {
  @as("AssociatedTimestamp") associatedTimestamp: option<iso8601Timestamp>,
  @as("Name") name: option<phoneNumberAssociationName>,
  @as("Value") value: option<string_>,
}
type participantPhoneNumberList = array<e164PhoneNumber>
type participant = {
  @as("ProxyPhoneNumber") proxyPhoneNumber: option<e164PhoneNumber>,
  @as("PhoneNumber") phoneNumber: option<e164PhoneNumber>,
}
type originationRoute = {
  @as("Weight") weight: option<originationRouteWeight>,
  @as("Priority") priority: option<originationRoutePriority>,
  @as("Protocol") protocol: option<originationRouteProtocol>,
  @as("Port") port: option<port>,
  @as("Host") host: option<string_>,
}
type orderedPhoneNumber = {
  @as("Status") status: option<orderedPhoneNumberStatus>,
  @as("E164PhoneNumber") e164PhoneNumber: option<e164PhoneNumber>,
}
type nonEmptyStringList = array<string_>
type messagingSessionEndpoint = {@as("Url") url: option<urlType>}
type membershipItem = {
  @as("Role") role: option<roomMembershipRole>,
  @as("MemberId") memberId: option<nonEmptyString>,
}
type memberError = {
  @as("ErrorMessage") errorMessage: option<string_>,
  @as("ErrorCode") errorCode: option<errorCode>,
  @as("MemberId") memberId: option<nonEmptyString>,
}
type memberArns = array<chimeArn>
type member = {
  @as("AccountId") accountId: option<nonEmptyString>,
  @as("FullName") fullName: option<sensitiveString>,
  @as("Email") email: option<sensitiveString>,
  @as("MemberType") memberType: option<memberType>,
  @as("MemberId") memberId: option<nonEmptyString>,
}
type meetingTagKeyList = array<tagKey>
type meetingNotificationConfiguration = {
  @as("SqsQueueArn") sqsQueueArn: option<arn>,
  @as("SnsTopicArn") snsTopicArn: option<arn>,
}
type mediaPlacement = {
  @as("TurnControlUrl") turnControlUrl: option<uriType>,
  @as("SignalingUrl") signalingUrl: option<uriType>,
  @as("ScreenViewingUrl") screenViewingUrl: option<uriType>,
  @as("ScreenSharingUrl") screenSharingUrl: option<uriType>,
  @as("ScreenDataUrl") screenDataUrl: option<uriType>,
  @as("AudioFallbackUrl") audioFallbackUrl: option<uriType>,
  @as("AudioHostUrl") audioHostUrl: option<uriType>,
}
type loggingConfiguration = {@as("EnableSIPLogs") enableSIPLogs: option<boolean_>}
type licenseList = array<license>
type invite = {
  @as("EmailStatus") emailStatus: option<emailStatus>,
  @as("EmailAddress") emailAddress: option<emailAddress>,
  @as("Status") status: option<inviteStatus>,
  @as("InviteId") inviteId: option<string_>,
}
type identity = {
  @as("Name") name: option<resourceName>,
  @as("Arn") arn: option<chimeArn>,
}
type geoMatchParams = {
  @as("AreaCode") areaCode: areaCode,
  @as("Country") country: country,
}
type eventsConfiguration = {
  @as("LambdaFunctionArn") lambdaFunctionArn: option<sensitiveString>,
  @as("OutboundEventsHTTPSEndpoint") outboundEventsHTTPSEndpoint: option<sensitiveString>,
  @as("BotId") botId: option<string_>,
}
type e164PhoneNumberList = array<e164PhoneNumber>
type dnisemergencyCallingConfiguration = {
  @as("CallingCountry") callingCountry: alpha2CountryCode,
  @as("TestPhoneNumber") testPhoneNumber: option<e164PhoneNumber>,
  @as("EmergencyPhoneNumber") emergencyPhoneNumber: e164PhoneNumber,
}
type credential = {
  @as("Password") password: option<sensitiveString>,
  @as("Username") username: option<sensitiveString>,
}
type createAttendeeError = {
  @as("ErrorMessage") errorMessage: option<string_>,
  @as("ErrorCode") errorCode: option<string_>,
  @as("ExternalUserId") externalUserId: option<externalUserIdType>,
}
type countryList = array<country>
type conversationRetentionSettings = {@as("RetentionDays") retentionDays: option<retentionDays>}
type channelSummary = {
  @as("LastMessageTimestamp") lastMessageTimestamp: option<timestamp_>,
  @as("Metadata") metadata: option<metadata>,
  @as("Privacy") privacy: option<channelPrivacy>,
  @as("Mode") mode: option<channelMode>,
  @as("ChannelArn") channelArn: option<chimeArn>,
  @as("Name") name: option<nonEmptyResourceName>,
}
type channelRetentionSettings = {@as("RetentionDays") retentionDays: option<retentionDays>}
type capabilityList = array<capability>
type callingRegionList = array<callingRegion>
type businessCallingSettings = {@as("CdrBucket") cdrBucket: option<string_>}
type bot = {
  @as("SecurityToken") securityToken: option<sensitiveString>,
  @as("BotEmail") botEmail: option<sensitiveString>,
  @as("UpdatedTimestamp") updatedTimestamp: option<iso8601Timestamp>,
  @as("CreatedTimestamp") createdTimestamp: option<iso8601Timestamp>,
  @as("Disabled") disabled: option<nullableBoolean>,
  @as("BotType") botType: option<botType>,
  @as("DisplayName") displayName: option<sensitiveString>,
  @as("UserId") userId: option<string_>,
  @as("BotId") botId: option<string_>,
}
type batchCreateChannelMembershipError = {
  @as("ErrorMessage") errorMessage: option<string_>,
  @as("ErrorCode") errorCode: option<errorCode>,
  @as("MemberArn") memberArn: option<chimeArn>,
}
type attendeeTagKeyList = array<tagKey>
type attendee = {
  @as("JoinToken") joinToken: option<joinTokenString>,
  @as("AttendeeId") attendeeId: option<guidString>,
  @as("ExternalUserId") externalUserId: option<externalUserIdType>,
}
type appInstanceUserSummary = {
  @as("Metadata") metadata: option<metadata>,
  @as("Name") name: option<userName>,
  @as("AppInstanceUserArn") appInstanceUserArn: option<chimeArn>,
}
type appInstanceUserMembershipSummary = {
  @as("ReadMarkerTimestamp") readMarkerTimestamp: option<timestamp_>,
  @as("Type") type_: option<channelMembershipType>,
}
type appInstanceUser = {
  @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<timestamp_>,
  @as("Metadata") metadata: option<metadata>,
  @as("CreatedTimestamp") createdTimestamp: option<timestamp_>,
  @as("Name") name: option<userName>,
  @as("AppInstanceUserArn") appInstanceUserArn: option<chimeArn>,
}
type appInstanceSummary = {
  @as("Metadata") metadata: option<metadata>,
  @as("Name") name: option<nonEmptyResourceName>,
  @as("AppInstanceArn") appInstanceArn: option<chimeArn>,
}
type appInstanceStreamingConfiguration = {
  @as("ResourceArn") resourceArn: arn,
  @as("AppInstanceDataType") appInstanceDataType: appInstanceDataType,
}
type appInstance = {
  @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<timestamp_>,
  @as("CreatedTimestamp") createdTimestamp: option<timestamp_>,
  @as("Metadata") metadata: option<metadata>,
  @as("Name") name: option<nonEmptyResourceName>,
  @as("AppInstanceArn") appInstanceArn: option<chimeArn>,
}
type alexaForBusinessMetadata = {
  @as("AlexaForBusinessRoomArn") alexaForBusinessRoomArn: option<sensitiveString>,
  @as("IsAlexaForBusinessEnabled") isAlexaForBusinessEnabled: option<boolean_>,
}
type accountSettings = {
  @as("EnableDialOut") enableDialOut: option<boolean_>,
  @as("DisableRemoteControl") disableRemoteControl: option<boolean_>,
}
type voiceConnectorList = array<voiceConnector>
type voiceConnectorItemList = array<voiceConnectorItem>
type userSettings = {@as("Telephony") telephony: telephonySettings}
type userErrorList = array<userError>
type user = {
  @as("PersonalPIN") personalPIN: option<string_>,
  @as("AlexaForBusinessMetadata") alexaForBusinessMetadata: option<alexaForBusinessMetadata>,
  @as("InvitedOn") invitedOn: option<iso8601Timestamp>,
  @as("RegisteredOn") registeredOn: option<iso8601Timestamp>,
  @as("UserInvitationStatus") userInvitationStatus: option<inviteStatus>,
  @as("UserRegistrationStatus") userRegistrationStatus: option<registrationStatus>,
  @as("UserType") userType: option<userType>,
  @as("LicenseType") licenseType: option<license>,
  @as("DisplayName") displayName: option<sensitiveString>,
  @as("PrimaryProvisionedNumber") primaryProvisionedNumber: option<sensitiveString>,
  @as("PrimaryEmail") primaryEmail: option<emailAddress>,
  @as("AccountId") accountId: option<string_>,
  @as("UserId") userId: string_,
}
type updateUserRequestItem = {
  @as("AlexaForBusinessMetadata") alexaForBusinessMetadata: option<alexaForBusinessMetadata>,
  @as("UserType") userType: option<userType>,
  @as("LicenseType") licenseType: option<license>,
  @as("UserId") userId: nonEmptyString,
}
type updatePhoneNumberRequestItemList = array<updatePhoneNumberRequestItem>
type termination = {
  @as("Disabled") disabled: option<boolean_>,
  @as("CidrAllowedList") cidrAllowedList: option<stringList>,
  @as("CallingRegions") callingRegions: option<callingRegionList>,
  @as("DefaultPhoneNumber") defaultPhoneNumber: option<e164PhoneNumber>,
  @as("CpsLimit") cpsLimit: option<cpsLimit>,
}
type tagList_ = array<tag>
type streamingNotificationTargetList = array<streamingNotificationTarget>
type sipRuleTargetApplicationList = array<sipRuleTargetApplication>
type sipMediaApplicationEndpointList = array<sipMediaApplicationEndpoint>
type signinDelegateGroupList = array<signinDelegateGroup>
type roomMembership = {
  @as("UpdatedTimestamp") updatedTimestamp: option<iso8601Timestamp>,
  @as("InvitedBy") invitedBy: option<nonEmptyString>,
  @as("Role") role: option<roomMembershipRole>,
  @as("Member") member: option<member>,
  @as("RoomId") roomId: option<nonEmptyString>,
}
type roomList = array<room>
type retentionSettings = {
  @as("ConversationRetentionSettings")
  conversationRetentionSettings: option<conversationRetentionSettings>,
  @as("RoomRetentionSettings") roomRetentionSettings: option<roomRetentionSettings>,
}
type proxy = {
  @as("PhoneNumberCountries") phoneNumberCountries: option<stringList>,
  @as("FallBackPhoneNumber") fallBackPhoneNumber: option<e164PhoneNumber>,
  @as("Disabled") disabled: option<boolean_>,
  @as("DefaultSessionExpiryMinutes") defaultSessionExpiryMinutes: option<integer_>,
}
type phoneNumberErrorList = array<phoneNumberError>
type phoneNumberCountry = {
  @as("SupportedPhoneNumberTypes") supportedPhoneNumberTypes: option<phoneNumberTypeList>,
  @as("CountryCode") countryCode: option<alpha2CountryCode>,
}
type phoneNumberAssociationList = array<phoneNumberAssociation>
type participants = array<participant>
type originationRouteList = array<originationRoute>
type orderedPhoneNumberList = array<orderedPhoneNumber>
type membershipItemList = array<membershipItem>
type members = array<identity>
type memberErrorList = array<memberError>
type meetingTagList = array<tag>
type meeting = {
  @as("MediaRegion") mediaRegion: option<string_>,
  @as("MediaPlacement") mediaPlacement: option<mediaPlacement>,
  @as("ExternalMeetingId") externalMeetingId: option<externalMeetingIdType>,
  @as("MeetingId") meetingId: option<guidString>,
}
type inviteList = array<invite>
type dnisemergencyCallingConfigurationList = array<dnisemergencyCallingConfiguration>
type credentialList = array<credential>
type channelSummaryList = array<channelSummary>
type channelModeratorSummary = {@as("Moderator") moderator: option<identity>}
type channelModerator = {
  @as("CreatedBy") createdBy: option<identity>,
  @as("CreatedTimestamp") createdTimestamp: option<timestamp_>,
  @as("ChannelArn") channelArn: option<chimeArn>,
  @as("Moderator") moderator: option<identity>,
}
type channelModeratedByAppInstanceUserSummary = {
  @as("ChannelSummary") channelSummary: option<channelSummary>,
}
type channelMessageSummary = {
  @as("Redacted") redacted: option<nonNullableBoolean>,
  @as("Sender") sender: option<identity>,
  @as("LastEditedTimestamp") lastEditedTimestamp: option<timestamp_>,
  @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<timestamp_>,
  @as("CreatedTimestamp") createdTimestamp: option<timestamp_>,
  @as("Type") type_: option<channelMessageType>,
  @as("Metadata") metadata: option<metadata>,
  @as("Content") content: option<content>,
  @as("MessageId") messageId: option<messageId>,
}
type channelMessage = {
  @as("Persistence") persistence: option<channelMessagePersistenceType>,
  @as("Redacted") redacted: option<nonNullableBoolean>,
  @as("Sender") sender: option<identity>,
  @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<timestamp_>,
  @as("LastEditedTimestamp") lastEditedTimestamp: option<timestamp_>,
  @as("CreatedTimestamp") createdTimestamp: option<timestamp_>,
  @as("Type") type_: option<channelMessageType>,
  @as("Metadata") metadata: option<metadata>,
  @as("Content") content: option<content>,
  @as("MessageId") messageId: option<messageId>,
  @as("ChannelArn") channelArn: option<chimeArn>,
}
type channelMembershipSummary = {@as("Member") member: option<identity>}
type channelMembershipForAppInstanceUserSummary = {
  @as("AppInstanceUserMembershipSummary")
  appInstanceUserMembershipSummary: option<appInstanceUserMembershipSummary>,
  @as("ChannelSummary") channelSummary: option<channelSummary>,
}
type channelMembership = {
  @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<timestamp_>,
  @as("CreatedTimestamp") createdTimestamp: option<timestamp_>,
  @as("ChannelArn") channelArn: option<chimeArn>,
  @as("Member") member: option<identity>,
  @as("Type") type_: option<channelMembershipType>,
  @as("InvitedBy") invitedBy: option<identity>,
}
type channelBanSummary = {@as("Member") member: option<identity>}
type channelBan = {
  @as("CreatedBy") createdBy: option<identity>,
  @as("CreatedTimestamp") createdTimestamp: option<timestamp_>,
  @as("ChannelArn") channelArn: option<chimeArn>,
  @as("Member") member: option<identity>,
}
type channel = {
  @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<timestamp_>,
  @as("LastMessageTimestamp") lastMessageTimestamp: option<timestamp_>,
  @as("CreatedTimestamp") createdTimestamp: option<timestamp_>,
  @as("CreatedBy") createdBy: option<identity>,
  @as("Metadata") metadata: option<metadata>,
  @as("Privacy") privacy: option<channelPrivacy>,
  @as("Mode") mode: option<channelMode>,
  @as("ChannelArn") channelArn: option<chimeArn>,
  @as("Name") name: option<nonEmptyResourceName>,
}
type botList = array<bot>
type batchCreateChannelMembershipErrors = array<batchCreateChannelMembershipError>
type batchCreateAttendeeErrorList = array<createAttendeeError>
type attendeeTagList = array<tag>
type attendeeList = array<attendee>
type appInstanceUserList = array<appInstanceUserSummary>
type appInstanceStreamingConfigurationList = array<appInstanceStreamingConfiguration>
type appInstanceRetentionSettings = {
  @as("ChannelRetentionSettings") channelRetentionSettings: option<channelRetentionSettings>,
}
type appInstanceList = array<appInstanceSummary>
type appInstanceAdminSummary = {@as("Admin") admin: option<identity>}
type appInstanceAdmin = {
  @as("CreatedTimestamp") createdTimestamp: option<timestamp_>,
  @as("AppInstanceArn") appInstanceArn: option<chimeArn>,
  @as("Admin") admin: option<identity>,
}
type voiceConnectorGroup = {
  @as("UpdatedTimestamp") updatedTimestamp: option<iso8601Timestamp>,
  @as("CreatedTimestamp") createdTimestamp: option<iso8601Timestamp>,
  @as("VoiceConnectorItems") voiceConnectorItems: option<voiceConnectorItemList>,
  @as("Name") name: option<voiceConnectorGroupName>,
  @as("VoiceConnectorGroupId") voiceConnectorGroupId: option<nonEmptyString>,
}
type userList = array<user>
type updateUserRequestItemList = array<updateUserRequestItem>
type streamingConfiguration = {
  @as("StreamingNotificationTargets")
  streamingNotificationTargets: option<streamingNotificationTargetList>,
  @as("Disabled") disabled: option<boolean_>,
  @as("DataRetentionInHours") dataRetentionInHours: dataRetentionInHours,
}
type sipRule = {
  @as("UpdatedTimestamp") updatedTimestamp: option<iso8601Timestamp>,
  @as("CreatedTimestamp") createdTimestamp: option<iso8601Timestamp>,
  @as("TargetApplications") targetApplications: option<sipRuleTargetApplicationList>,
  @as("TriggerValue") triggerValue: option<nonEmptyString>,
  @as("TriggerType") triggerType: option<sipRuleTriggerType>,
  @as("Disabled") disabled: option<boolean_>,
  @as("Name") name: option<sipRuleName>,
  @as("SipRuleId") sipRuleId: option<nonEmptyString>,
}
type sipMediaApplication = {
  @as("UpdatedTimestamp") updatedTimestamp: option<iso8601Timestamp>,
  @as("CreatedTimestamp") createdTimestamp: option<iso8601Timestamp>,
  @as("Endpoints") endpoints: option<sipMediaApplicationEndpointList>,
  @as("Name") name: option<sipMediaApplicationName>,
  @as("AwsRegion") awsRegion: option<string_>,
  @as("SipMediaApplicationId") sipMediaApplicationId: option<nonEmptyString>,
}
type roomMembershipList = array<roomMembership>
type proxySession = {
  @as("GeoMatchParams") geoMatchParams: option<geoMatchParams>,
  @as("GeoMatchLevel") geoMatchLevel: option<geoMatchLevel>,
  @as("NumberSelectionBehavior") numberSelectionBehavior: option<numberSelectionBehavior>,
  @as("Participants") participants: option<participants>,
  @as("EndedTimestamp") endedTimestamp: option<iso8601Timestamp>,
  @as("UpdatedTimestamp") updatedTimestamp: option<iso8601Timestamp>,
  @as("CreatedTimestamp") createdTimestamp: option<iso8601Timestamp>,
  @as("Capabilities") capabilities: option<capabilityList>,
  @as("ExpiryMinutes") expiryMinutes: option<positiveInteger>,
  @as("Status") status: option<proxySessionStatus>,
  @as("Name") name: option<string128>,
  @as("ProxySessionId") proxySessionId: option<nonEmptyString128>,
  @as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString128>,
}
type phoneNumberOrder = {
  @as("UpdatedTimestamp") updatedTimestamp: option<iso8601Timestamp>,
  @as("CreatedTimestamp") createdTimestamp: option<iso8601Timestamp>,
  @as("OrderedPhoneNumbers") orderedPhoneNumbers: option<orderedPhoneNumberList>,
  @as("Status") status: option<phoneNumberOrderStatus>,
  @as("ProductType") productType: option<phoneNumberProductType>,
  @as("PhoneNumberOrderId") phoneNumberOrderId: option<guidString>,
}
type phoneNumberCountriesList = array<phoneNumberCountry>
type phoneNumber = {
  @as("DeletionTimestamp") deletionTimestamp: option<iso8601Timestamp>,
  @as("UpdatedTimestamp") updatedTimestamp: option<iso8601Timestamp>,
  @as("CreatedTimestamp") createdTimestamp: option<iso8601Timestamp>,
  @as("CallingNameStatus") callingNameStatus: option<callingNameStatus>,
  @as("CallingName") callingName: option<callingName>,
  @as("Associations") associations: option<phoneNumberAssociationList>,
  @as("Capabilities") capabilities: option<phoneNumberCapabilities>,
  @as("Status") status: option<phoneNumberStatus>,
  @as("ProductType") productType: option<phoneNumberProductType>,
  @as("Type") type_: option<phoneNumberType>,
  @as("Country") country: option<alpha2CountryCode>,
  @as("E164PhoneNumber") e164PhoneNumber: option<e164PhoneNumber>,
  @as("PhoneNumberId") phoneNumberId: option<string_>,
}
type origination = {
  @as("Disabled") disabled: option<boolean_>,
  @as("Routes") routes: option<originationRouteList>,
}
type meetingList = array<meeting>
type emergencyCallingConfiguration = {
  @as("DNIS") dnis: option<dnisemergencyCallingConfigurationList>,
}
type createAttendeeRequestItem = {
  @as("Tags") tags: option<attendeeTagList>,
  @as("ExternalUserId") externalUserId: externalUserIdType,
}
type channelModeratorSummaryList = array<channelModeratorSummary>
type channelModeratedByAppInstanceUserSummaryList = array<channelModeratedByAppInstanceUserSummary>
type channelMessageSummaryList = array<channelMessageSummary>
type channelMembershipSummaryList = array<channelMembershipSummary>
type channelMembershipForAppInstanceUserSummaryList = array<
  channelMembershipForAppInstanceUserSummary,
>
type channelBanSummaryList = array<channelBanSummary>
type batchChannelMemberships = {
  @as("ChannelArn") channelArn: option<chimeArn>,
  @as("Members") members: option<members>,
  @as("Type") type_: option<channelMembershipType>,
  @as("InvitedBy") invitedBy: option<identity>,
}
type appInstanceAdminList = array<appInstanceAdminSummary>
type account = {
  @as("SigninDelegateGroups") signinDelegateGroups: option<signinDelegateGroupList>,
  @as("SupportedLicenses") supportedLicenses: option<licenseList>,
  @as("DefaultLicense") defaultLicense: option<license>,
  @as("CreatedTimestamp") createdTimestamp: option<iso8601Timestamp>,
  @as("AccountType") accountType: option<accountType>,
  @as("Name") name: string_,
  @as("AccountId") accountId: string_,
  @as("AwsAccountId") awsAccountId: string_,
}
type voiceConnectorGroupList = array<voiceConnectorGroup>
type sipRuleList = array<sipRule>
type sipMediaApplicationList = array<sipMediaApplication>
type proxySessions = array<proxySession>
type phoneNumberOrderList = array<phoneNumberOrder>
type phoneNumberList = array<phoneNumber>
type createMeetingWithAttendeesRequestItemList = array<createAttendeeRequestItem>
type createAttendeeRequestItemList = array<createAttendeeRequestItem>
type accountList = array<account>

module UpdatePhoneNumberSettings = {
  type t
  type request = {@as("CallingName") callingName: callingName}

  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "UpdatePhoneNumberSettingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateChannelReadMarker = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {@as("ChannelArn") channelArn: option<chimeArn>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "UpdateChannelReadMarkerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateChannelMessage = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("Metadata") metadata: option<metadata>,
    @as("Content") content: option<content>,
    @as("MessageId") messageId: messageId,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @as("MessageId") messageId: option<messageId>,
    @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "UpdateChannelMessageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateChannel = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("Metadata") metadata: option<metadata>,
    @as("Mode") mode: channelMode,
    @as("Name") name: nonEmptyResourceName,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {@as("ChannelArn") channelArn: option<chimeArn>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "UpdateChannelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAppInstanceUser = {
  type t
  type request = {
    @as("Metadata") metadata: option<metadata>,
    @as("Name") name: userName,
    @as("AppInstanceUserArn") appInstanceUserArn: chimeArn,
  }
  type response = {@as("AppInstanceUserArn") appInstanceUserArn: option<chimeArn>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "UpdateAppInstanceUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAppInstance = {
  type t
  type request = {
    @as("Metadata") metadata: option<metadata>,
    @as("Name") name: nonEmptyResourceName,
    @as("AppInstanceArn") appInstanceArn: chimeArn,
  }
  type response = {@as("AppInstanceArn") appInstanceArn: option<chimeArn>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "UpdateAppInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendChannelMessage = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("Metadata") metadata: option<metadata>,
    @as("Persistence") persistence: channelMessagePersistenceType,
    @as("Type") type_: channelMessageType,
    @as("Content") content: nonEmptyContent,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @as("MessageId") messageId: option<messageId>,
    @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "SendChannelMessageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RedactRoomMessage = {
  type t
  type request = {
    @as("MessageId") messageId: nonEmptyString,
    @as("RoomId") roomId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = unit
  @module("@aws-sdk/client-chime") @new external new_: request => t = "RedactRoomMessageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RedactConversationMessage = {
  type t
  type request = {
    @as("MessageId") messageId: nonEmptyString,
    @as("ConversationId") conversationId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = unit
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "RedactConversationMessageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RedactChannelMessage = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("MessageId") messageId: messageId,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @as("MessageId") messageId: option<messageId>,
    @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "RedactChannelMessageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module LogoutUser = {
  type t
  type request = {
    @as("UserId") userId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = unit
  @module("@aws-sdk/client-chime") @new external new_: request => t = "LogoutUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPhoneNumberSettings = {
  type t

  type response = {
    @as("CallingNameUpdatedTimestamp") callingNameUpdatedTimestamp: option<iso8601Timestamp>,
    @as("CallingName") callingName: option<callingName>,
  }
  @module("@aws-sdk/client-chime") @new external new_: unit => t = "GetPhoneNumberSettingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociatePhoneNumberFromUser = {
  type t
  type request = {
    @as("UserId") userId: string_,
    @as("AccountId") accountId: string_,
  }
  type response = unit
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DisassociatePhoneNumberFromUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVoiceConnectorTermination = {
  type t
  type request = {@as("VoiceConnectorId") voiceConnectorId: nonEmptyString}

  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DeleteVoiceConnectorTerminationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteVoiceConnectorStreamingConfiguration = {
  type t
  type request = {@as("VoiceConnectorId") voiceConnectorId: nonEmptyString}

  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DeleteVoiceConnectorStreamingConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteVoiceConnectorProxy = {
  type t
  type request = {@as("VoiceConnectorId") voiceConnectorId: nonEmptyString128}

  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DeleteVoiceConnectorProxyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteVoiceConnectorOrigination = {
  type t
  type request = {@as("VoiceConnectorId") voiceConnectorId: nonEmptyString}

  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DeleteVoiceConnectorOriginationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteVoiceConnectorGroup = {
  type t
  type request = {@as("VoiceConnectorGroupId") voiceConnectorGroupId: nonEmptyString}

  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DeleteVoiceConnectorGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteVoiceConnectorEmergencyCallingConfiguration = {
  type t
  type request = {@as("VoiceConnectorId") voiceConnectorId: nonEmptyString}

  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DeleteVoiceConnectorEmergencyCallingConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteVoiceConnector = {
  type t
  type request = {@as("VoiceConnectorId") voiceConnectorId: nonEmptyString}

  @module("@aws-sdk/client-chime") @new external new_: request => t = "DeleteVoiceConnectorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSipRule = {
  type t
  type request = {@as("SipRuleId") sipRuleId: nonEmptyString}

  @module("@aws-sdk/client-chime") @new external new_: request => t = "DeleteSipRuleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSipMediaApplication = {
  type t
  type request = {@as("SipMediaApplicationId") sipMediaApplicationId: nonEmptyString}

  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DeleteSipMediaApplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRoomMembership = {
  type t
  type request = {
    @as("MemberId") memberId: nonEmptyString,
    @as("RoomId") roomId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }

  @module("@aws-sdk/client-chime") @new external new_: request => t = "DeleteRoomMembershipCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRoom = {
  type t
  type request = {
    @as("RoomId") roomId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }

  @module("@aws-sdk/client-chime") @new external new_: request => t = "DeleteRoomCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteProxySession = {
  type t
  type request = {
    @as("ProxySessionId") proxySessionId: nonEmptyString128,
    @as("VoiceConnectorId") voiceConnectorId: nonEmptyString128,
  }

  @module("@aws-sdk/client-chime") @new external new_: request => t = "DeleteProxySessionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePhoneNumber = {
  type t
  type request = {@as("PhoneNumberId") phoneNumberId: string_}

  @module("@aws-sdk/client-chime") @new external new_: request => t = "DeletePhoneNumberCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMeeting = {
  type t
  type request = {@as("MeetingId") meetingId: guidString}

  @module("@aws-sdk/client-chime") @new external new_: request => t = "DeleteMeetingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEventsConfiguration = {
  type t
  type request = {
    @as("BotId") botId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }

  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DeleteEventsConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteChannelModerator = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("ChannelModeratorArn") channelModeratorArn: chimeArn,
    @as("ChannelArn") channelArn: chimeArn,
  }

  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DeleteChannelModeratorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteChannelMessage = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("MessageId") messageId: messageId,
    @as("ChannelArn") channelArn: chimeArn,
  }

  @module("@aws-sdk/client-chime") @new external new_: request => t = "DeleteChannelMessageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteChannelMembership = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("MemberArn") memberArn: chimeArn,
    @as("ChannelArn") channelArn: chimeArn,
  }

  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DeleteChannelMembershipCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteChannelBan = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("MemberArn") memberArn: chimeArn,
    @as("ChannelArn") channelArn: chimeArn,
  }

  @module("@aws-sdk/client-chime") @new external new_: request => t = "DeleteChannelBanCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteChannel = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("ChannelArn") channelArn: chimeArn,
  }

  @module("@aws-sdk/client-chime") @new external new_: request => t = "DeleteChannelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAttendee = {
  type t
  type request = {
    @as("AttendeeId") attendeeId: guidString,
    @as("MeetingId") meetingId: guidString,
  }

  @module("@aws-sdk/client-chime") @new external new_: request => t = "DeleteAttendeeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAppInstanceUser = {
  type t
  type request = {@as("AppInstanceUserArn") appInstanceUserArn: chimeArn}

  @module("@aws-sdk/client-chime") @new external new_: request => t = "DeleteAppInstanceUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAppInstanceStreamingConfigurations = {
  type t
  type request = {@as("AppInstanceArn") appInstanceArn: chimeArn}

  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DeleteAppInstanceStreamingConfigurationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAppInstanceAdmin = {
  type t
  type request = {
    @as("AppInstanceArn") appInstanceArn: chimeArn,
    @as("AppInstanceAdminArn") appInstanceAdminArn: chimeArn,
  }

  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DeleteAppInstanceAdminCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAppInstance = {
  type t
  type request = {@as("AppInstanceArn") appInstanceArn: chimeArn}

  @module("@aws-sdk/client-chime") @new external new_: request => t = "DeleteAppInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccount = {
  type t
  type request = {@as("AccountId") accountId: nonEmptyString}
  type response = unit
  @module("@aws-sdk/client-chime") @new external new_: request => t = "DeleteAccountCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMeetingDialOut = {
  type t
  type request = {
    @as("JoinToken") joinToken: joinTokenString,
    @as("ToPhoneNumber") toPhoneNumber: e164PhoneNumber,
    @as("FromPhoneNumber") fromPhoneNumber: e164PhoneNumber,
    @as("MeetingId") meetingId: guidString,
  }
  type response = {@as("TransactionId") transactionId: option<guidString>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "CreateMeetingDialOutCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociatePhoneNumberWithUser = {
  type t
  type request = {
    @as("E164PhoneNumber") e164PhoneNumber: e164PhoneNumber,
    @as("UserId") userId: string_,
    @as("AccountId") accountId: string_,
  }
  type response = unit
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "AssociatePhoneNumberWithUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVoiceConnector = {
  type t
  type request = {
    @as("RequireEncryption") requireEncryption: boolean_,
    @as("Name") name: voiceConnectorName,
    @as("VoiceConnectorId") voiceConnectorId: nonEmptyString,
  }
  type response = {@as("VoiceConnector") voiceConnector: option<voiceConnector>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "UpdateVoiceConnectorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRoom = {
  type t
  type request = {
    @as("Name") name: option<sensitiveString>,
    @as("RoomId") roomId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("Room") room: option<room>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "UpdateRoomCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGlobalSettings = {
  type t
  type request = {
    @as("VoiceConnector") voiceConnector: voiceConnectorSettings,
    @as("BusinessCalling") businessCalling: businessCallingSettings,
  }

  @module("@aws-sdk/client-chime") @new external new_: request => t = "UpdateGlobalSettingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateBot = {
  type t
  type request = {
    @as("Disabled") disabled: option<nullableBoolean>,
    @as("BotId") botId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("Bot") bot: option<bot>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "UpdateBotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAccountSettings = {
  type t
  type request = {
    @as("AccountSettings") accountSettings: accountSettings,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = unit
  @module("@aws-sdk/client-chime") @new external new_: request => t = "UpdateAccountSettingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceARN") resourceARN: arn,
  }

  @module("@aws-sdk/client-chime") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagMeeting = {
  type t
  type request = {
    @as("TagKeys") tagKeys: meetingTagKeyList,
    @as("MeetingId") meetingId: guidString,
  }

  @module("@aws-sdk/client-chime") @new external new_: request => t = "UntagMeetingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagAttendee = {
  type t
  type request = {
    @as("TagKeys") tagKeys: attendeeTagKeyList,
    @as("AttendeeId") attendeeId: guidString,
    @as("MeetingId") meetingId: guidString,
  }

  @module("@aws-sdk/client-chime") @new external new_: request => t = "UntagAttendeeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SearchAvailablePhoneNumbers = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<phoneNumberMaxResults>,
    @as("PhoneNumberType") phoneNumberType: option<phoneNumberType>,
    @as("TollFreePrefix") tollFreePrefix: option<tollFreePrefix>,
    @as("State") state: option<string_>,
    @as("Country") country: option<alpha2CountryCode>,
    @as("City") city: option<string_>,
    @as("AreaCode") areaCode: option<string_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("E164PhoneNumbers") e164PhoneNumbers: option<e164PhoneNumberList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "SearchAvailablePhoneNumbersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegenerateSecurityToken = {
  type t
  type request = {
    @as("BotId") botId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("Bot") bot: option<bot>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "RegenerateSecurityTokenCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutVoiceConnectorLoggingConfiguration = {
  type t
  type request = {
    @as("LoggingConfiguration") loggingConfiguration: loggingConfiguration,
    @as("VoiceConnectorId") voiceConnectorId: nonEmptyString,
  }
  type response = {@as("LoggingConfiguration") loggingConfiguration: option<loggingConfiguration>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "PutVoiceConnectorLoggingConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutSipMediaApplicationLoggingConfiguration = {
  type t
  type request = {
    @as("SipMediaApplicationLoggingConfiguration")
    sipMediaApplicationLoggingConfiguration: option<sipMediaApplicationLoggingConfiguration>,
    @as("SipMediaApplicationId") sipMediaApplicationId: nonEmptyString,
  }
  type response = {
    @as("SipMediaApplicationLoggingConfiguration")
    sipMediaApplicationLoggingConfiguration: option<sipMediaApplicationLoggingConfiguration>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "PutSipMediaApplicationLoggingConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutEventsConfiguration = {
  type t
  type request = {
    @as("LambdaFunctionArn") lambdaFunctionArn: option<sensitiveString>,
    @as("OutboundEventsHTTPSEndpoint") outboundEventsHTTPSEndpoint: option<sensitiveString>,
    @as("BotId") botId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("EventsConfiguration") eventsConfiguration: option<eventsConfiguration>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "PutEventsConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVoiceConnectorTerminationCredentials = {
  type t
  type request = {@as("VoiceConnectorId") voiceConnectorId: nonEmptyString}
  type response = {@as("Usernames") usernames: option<sensitiveStringList>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "ListVoiceConnectorTerminationCredentialsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVoiceConnectorTerminationHealth = {
  type t
  type request = {@as("VoiceConnectorId") voiceConnectorId: nonEmptyString}
  type response = {@as("TerminationHealth") terminationHealth: option<terminationHealth>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "GetVoiceConnectorTerminationHealthCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVoiceConnectorLoggingConfiguration = {
  type t
  type request = {@as("VoiceConnectorId") voiceConnectorId: nonEmptyString}
  type response = {@as("LoggingConfiguration") loggingConfiguration: option<loggingConfiguration>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "GetVoiceConnectorLoggingConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVoiceConnector = {
  type t
  type request = {@as("VoiceConnectorId") voiceConnectorId: nonEmptyString}
  type response = {@as("VoiceConnector") voiceConnector: option<voiceConnector>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "GetVoiceConnectorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSipMediaApplicationLoggingConfiguration = {
  type t
  type request = {@as("SipMediaApplicationId") sipMediaApplicationId: nonEmptyString}
  type response = {
    @as("SipMediaApplicationLoggingConfiguration")
    sipMediaApplicationLoggingConfiguration: option<sipMediaApplicationLoggingConfiguration>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "GetSipMediaApplicationLoggingConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRoom = {
  type t
  type request = {
    @as("RoomId") roomId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("Room") room: option<room>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "GetRoomCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMessagingSessionEndpoint = {
  type t
  type request = unit
  type response = {@as("Endpoint") endpoint: option<messagingSessionEndpoint>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "GetMessagingSessionEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGlobalSettings = {
  type t

  type response = {
    @as("VoiceConnector") voiceConnector: option<voiceConnectorSettings>,
    @as("BusinessCalling") businessCalling: option<businessCallingSettings>,
  }
  @module("@aws-sdk/client-chime") @new external new_: unit => t = "GetGlobalSettingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEventsConfiguration = {
  type t
  type request = {
    @as("BotId") botId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("EventsConfiguration") eventsConfiguration: option<eventsConfiguration>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "GetEventsConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBot = {
  type t
  type request = {
    @as("BotId") botId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("Bot") bot: option<bot>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "GetBotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAttendee = {
  type t
  type request = {
    @as("AttendeeId") attendeeId: guidString,
    @as("MeetingId") meetingId: guidString,
  }
  type response = {@as("Attendee") attendee: option<attendee>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "GetAttendeeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccountSettings = {
  type t
  type request = {@as("AccountId") accountId: nonEmptyString}
  type response = {@as("AccountSettings") accountSettings: option<accountSettings>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "GetAccountSettingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateSigninDelegateGroupsFromAccount = {
  type t
  type request = {
    @as("GroupNames") groupNames: nonEmptyStringList,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = unit
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DisassociateSigninDelegateGroupsFromAccountCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAppInstanceUser = {
  type t
  type request = {@as("AppInstanceUserArn") appInstanceUserArn: chimeArn}
  type response = {@as("AppInstanceUser") appInstanceUser: option<appInstanceUser>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DescribeAppInstanceUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAppInstance = {
  type t
  type request = {@as("AppInstanceArn") appInstanceArn: chimeArn}
  type response = {@as("AppInstance") appInstance: option<appInstance>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "DescribeAppInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVoiceConnectorTerminationCredentials = {
  type t
  type request = {
    @as("Usernames") usernames: sensitiveStringList,
    @as("VoiceConnectorId") voiceConnectorId: nonEmptyString,
  }

  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DeleteVoiceConnectorTerminationCredentialsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateVoiceConnector = {
  type t
  type request = {
    @as("RequireEncryption") requireEncryption: boolean_,
    @as("AwsRegion") awsRegion: option<voiceConnectorAwsRegion>,
    @as("Name") name: voiceConnectorName,
  }
  type response = {@as("VoiceConnector") voiceConnector: option<voiceConnector>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "CreateVoiceConnectorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSipMediaApplicationCall = {
  type t
  type request = {
    @as("SipMediaApplicationId") sipMediaApplicationId: nonEmptyString,
    @as("ToPhoneNumber") toPhoneNumber: e164PhoneNumber,
    @as("FromPhoneNumber") fromPhoneNumber: e164PhoneNumber,
  }
  type response = {
    @as("SipMediaApplicationCall") sipMediaApplicationCall: option<sipMediaApplicationCall>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "CreateSipMediaApplicationCallCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRoom = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("Name") name: sensitiveString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("Room") room: option<room>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "CreateRoomCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateChannelModerator = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("ChannelModeratorArn") channelModeratorArn: chimeArn,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @as("ChannelModerator") channelModerator: option<identity>,
    @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "CreateChannelModeratorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateChannelMembership = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("Type") type_: channelMembershipType,
    @as("MemberArn") memberArn: chimeArn,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @as("Member") member: option<identity>,
    @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "CreateChannelMembershipCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateChannelBan = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("MemberArn") memberArn: chimeArn,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @as("Member") member: option<identity>,
    @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "CreateChannelBanCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBot = {
  type t
  type request = {
    @as("Domain") domain: option<nonEmptyString>,
    @as("DisplayName") displayName: sensitiveString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("Bot") bot: option<bot>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "CreateBotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAppInstanceAdmin = {
  type t
  type request = {
    @as("AppInstanceArn") appInstanceArn: chimeArn,
    @as("AppInstanceAdminArn") appInstanceAdminArn: chimeArn,
  }
  type response = {
    @as("AppInstanceArn") appInstanceArn: option<chimeArn>,
    @as("AppInstanceAdmin") appInstanceAdmin: option<identity>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "CreateAppInstanceAdminCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateUserSettings = {
  type t
  type request = {
    @as("UserSettings") userSettings: userSettings,
    @as("UserId") userId: string_,
    @as("AccountId") accountId: string_,
  }

  @module("@aws-sdk/client-chime") @new external new_: request => t = "UpdateUserSettingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateUser = {
  type t
  type request = {
    @as("AlexaForBusinessMetadata") alexaForBusinessMetadata: option<alexaForBusinessMetadata>,
    @as("UserType") userType: option<userType>,
    @as("LicenseType") licenseType: option<license>,
    @as("UserId") userId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("User") user: option<user>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "UpdateUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRoomMembership = {
  type t
  type request = {
    @as("Role") role: option<roomMembershipRole>,
    @as("MemberId") memberId: nonEmptyString,
    @as("RoomId") roomId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("RoomMembership") roomMembership: option<roomMembership>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "UpdateRoomMembershipCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceARN") resourceARN: arn,
  }

  @module("@aws-sdk/client-chime") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagMeeting = {
  type t
  type request = {
    @as("Tags") tags: meetingTagList,
    @as("MeetingId") meetingId: guidString,
  }

  @module("@aws-sdk/client-chime") @new external new_: request => t = "TagMeetingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagAttendee = {
  type t
  type request = {
    @as("Tags") tags: attendeeTagList,
    @as("AttendeeId") attendeeId: guidString,
    @as("MeetingId") meetingId: guidString,
  }

  @module("@aws-sdk/client-chime") @new external new_: request => t = "TagAttendeeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ResetPersonalPIN = {
  type t
  type request = {
    @as("UserId") userId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("User") user: option<user>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ResetPersonalPINCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutVoiceConnectorTerminationCredentials = {
  type t
  type request = {
    @as("Credentials") credentials: option<credentialList>,
    @as("VoiceConnectorId") voiceConnectorId: nonEmptyString,
  }

  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "PutVoiceConnectorTerminationCredentialsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutVoiceConnectorTermination = {
  type t
  type request = {
    @as("Termination") termination: termination,
    @as("VoiceConnectorId") voiceConnectorId: nonEmptyString,
  }
  type response = {@as("Termination") termination: option<termination>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "PutVoiceConnectorTerminationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutVoiceConnectorProxy = {
  type t
  type request = {
    @as("Disabled") disabled: option<boolean_>,
    @as("FallBackPhoneNumber") fallBackPhoneNumber: option<e164PhoneNumber>,
    @as("PhoneNumberPoolCountries") phoneNumberPoolCountries: countryList,
    @as("DefaultSessionExpiryMinutes") defaultSessionExpiryMinutes: integer_,
    @as("VoiceConnectorId") voiceConnectorId: nonEmptyString128,
  }
  type response = {@as("Proxy") proxy: option<proxy>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "PutVoiceConnectorProxyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutRetentionSettings = {
  type t
  type request = {
    @as("RetentionSettings") retentionSettings: retentionSettings,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @as("InitiateDeletionTimestamp") initiateDeletionTimestamp: option<iso8601Timestamp>,
    @as("RetentionSettings") retentionSettings: option<retentionSettings>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "PutRetentionSettingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutAppInstanceStreamingConfigurations = {
  type t
  type request = {
    @as("AppInstanceStreamingConfigurations")
    appInstanceStreamingConfigurations: appInstanceStreamingConfigurationList,
    @as("AppInstanceArn") appInstanceArn: chimeArn,
  }
  type response = {
    @as("AppInstanceStreamingConfigurations")
    appInstanceStreamingConfigurations: option<appInstanceStreamingConfigurationList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "PutAppInstanceStreamingConfigurationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutAppInstanceRetentionSettings = {
  type t
  type request = {
    @as("AppInstanceRetentionSettings") appInstanceRetentionSettings: appInstanceRetentionSettings,
    @as("AppInstanceArn") appInstanceArn: chimeArn,
  }
  type response = {
    @as("InitiateDeletionTimestamp") initiateDeletionTimestamp: option<timestamp_>,
    @as("AppInstanceRetentionSettings")
    appInstanceRetentionSettings: option<appInstanceRetentionSettings>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "PutAppInstanceRetentionSettingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVoiceConnectors = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultMax>,
    @as("NextToken") nextToken: option<string_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("VoiceConnectors") voiceConnectors: option<voiceConnectorList>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListVoiceConnectorsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceARN") resourceARN: arn}
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRooms = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<resultMax>,
    @as("MemberId") memberId: option<string_>,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Rooms") rooms: option<roomList>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListRoomsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMeetingTags = {
  type t
  type request = {@as("MeetingId") meetingId: guidString}
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListMeetingTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListChannels = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Privacy") privacy: option<channelPrivacy>,
    @as("AppInstanceArn") appInstanceArn: chimeArn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Channels") channels: option<channelSummaryList>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListChannelsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBots = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<resultMax>,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Bots") bots: option<botList>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListBotsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAttendees = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultMax>,
    @as("NextToken") nextToken: option<string_>,
    @as("MeetingId") meetingId: guidString,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Attendees") attendees: option<attendeeList>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListAttendeesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAttendeeTags = {
  type t
  type request = {
    @as("AttendeeId") attendeeId: guidString,
    @as("MeetingId") meetingId: guidString,
  }
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListAttendeeTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAppInstances = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AppInstances") appInstances: option<appInstanceList>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListAppInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAppInstanceUsers = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("AppInstanceArn") appInstanceArn: chimeArn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AppInstanceUsers") appInstanceUsers: option<appInstanceUserList>,
    @as("AppInstanceArn") appInstanceArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListAppInstanceUsersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InviteUsers = {
  type t
  type request = {
    @as("UserType") userType: option<userType>,
    @as("UserEmailList") userEmailList: userEmailList,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("Invites") invites: option<inviteList>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "InviteUsersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVoiceConnectorTermination = {
  type t
  type request = {@as("VoiceConnectorId") voiceConnectorId: nonEmptyString}
  type response = {@as("Termination") termination: option<termination>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "GetVoiceConnectorTerminationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVoiceConnectorProxy = {
  type t
  type request = {@as("VoiceConnectorId") voiceConnectorId: nonEmptyString128}
  type response = {@as("Proxy") proxy: option<proxy>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "GetVoiceConnectorProxyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUserSettings = {
  type t
  type request = {
    @as("UserId") userId: string_,
    @as("AccountId") accountId: string_,
  }
  type response = {@as("UserSettings") userSettings: option<userSettings>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "GetUserSettingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUser = {
  type t
  type request = {
    @as("UserId") userId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("User") user: option<user>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "GetUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRetentionSettings = {
  type t
  type request = {@as("AccountId") accountId: nonEmptyString}
  type response = {
    @as("InitiateDeletionTimestamp") initiateDeletionTimestamp: option<iso8601Timestamp>,
    @as("RetentionSettings") retentionSettings: option<retentionSettings>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "GetRetentionSettingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMeeting = {
  type t
  type request = {@as("MeetingId") meetingId: guidString}
  type response = {@as("Meeting") meeting: option<meeting>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "GetMeetingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetChannelMessage = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("MessageId") messageId: messageId,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {@as("ChannelMessage") channelMessage: option<channelMessage>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "GetChannelMessageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAppInstanceStreamingConfigurations = {
  type t
  type request = {@as("AppInstanceArn") appInstanceArn: chimeArn}
  type response = {
    @as("AppInstanceStreamingConfigurations")
    appInstanceStreamingConfigurations: option<appInstanceStreamingConfigurationList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "GetAppInstanceStreamingConfigurationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAppInstanceRetentionSettings = {
  type t
  type request = {@as("AppInstanceArn") appInstanceArn: chimeArn}
  type response = {
    @as("InitiateDeletionTimestamp") initiateDeletionTimestamp: option<timestamp_>,
    @as("AppInstanceRetentionSettings")
    appInstanceRetentionSettings: option<appInstanceRetentionSettings>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "GetAppInstanceRetentionSettingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociatePhoneNumbersFromVoiceConnectorGroup = {
  type t
  type request = {
    @as("E164PhoneNumbers") e164PhoneNumbers: e164PhoneNumberList,
    @as("VoiceConnectorGroupId") voiceConnectorGroupId: nonEmptyString,
  }
  type response = {@as("PhoneNumberErrors") phoneNumberErrors: option<phoneNumberErrorList>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DisassociatePhoneNumbersFromVoiceConnectorGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociatePhoneNumbersFromVoiceConnector = {
  type t
  type request = {
    @as("E164PhoneNumbers") e164PhoneNumbers: e164PhoneNumberList,
    @as("VoiceConnectorId") voiceConnectorId: nonEmptyString,
  }
  type response = {@as("PhoneNumberErrors") phoneNumberErrors: option<phoneNumberErrorList>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DisassociatePhoneNumbersFromVoiceConnectorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeChannelModerator = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("ChannelModeratorArn") channelModeratorArn: chimeArn,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {@as("ChannelModerator") channelModerator: option<channelModerator>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DescribeChannelModeratorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeChannelModeratedByAppInstanceUser = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("AppInstanceUserArn") appInstanceUserArn: chimeArn,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {@as("Channel") channel: option<channelModeratedByAppInstanceUserSummary>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DescribeChannelModeratedByAppInstanceUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeChannelMembershipForAppInstanceUser = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("AppInstanceUserArn") appInstanceUserArn: chimeArn,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @as("ChannelMembership") channelMembership: option<channelMembershipForAppInstanceUserSummary>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DescribeChannelMembershipForAppInstanceUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeChannelMembership = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("MemberArn") memberArn: chimeArn,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {@as("ChannelMembership") channelMembership: option<channelMembership>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DescribeChannelMembershipCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeChannelBan = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("MemberArn") memberArn: chimeArn,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {@as("ChannelBan") channelBan: option<channelBan>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "DescribeChannelBanCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeChannel = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {@as("Channel") channel: option<channel>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "DescribeChannelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAppInstanceAdmin = {
  type t
  type request = {
    @as("AppInstanceArn") appInstanceArn: chimeArn,
    @as("AppInstanceAdminArn") appInstanceAdminArn: chimeArn,
  }
  type response = {@as("AppInstanceAdmin") appInstanceAdmin: option<appInstanceAdmin>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "DescribeAppInstanceAdminCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUser = {
  type t
  type request = {
    @as("UserType") userType: option<userType>,
    @as("Email") email: option<emailAddress>,
    @as("Username") username: option<string_>,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("User") user: option<user>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "CreateUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRoomMembership = {
  type t
  type request = {
    @as("Role") role: option<roomMembershipRole>,
    @as("MemberId") memberId: nonEmptyString,
    @as("RoomId") roomId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("RoomMembership") roomMembership: option<roomMembership>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "CreateRoomMembershipCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMeeting = {
  type t
  type request = {
    @as("NotificationsConfiguration")
    notificationsConfiguration: option<meetingNotificationConfiguration>,
    @as("Tags") tags: option<meetingTagList>,
    @as("MediaRegion") mediaRegion: option<string_>,
    @as("MeetingHostId") meetingHostId: option<externalUserIdType>,
    @as("ExternalMeetingId") externalMeetingId: option<externalMeetingIdType>,
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
  }
  type response = {@as("Meeting") meeting: option<meeting>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "CreateMeetingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateChannel = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("Tags") tags: option<tagList_>,
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("Metadata") metadata: option<metadata>,
    @as("Privacy") privacy: option<channelPrivacy>,
    @as("Mode") mode: option<channelMode>,
    @as("Name") name: nonEmptyResourceName,
    @as("AppInstanceArn") appInstanceArn: chimeArn,
  }
  type response = {@as("ChannelArn") channelArn: option<chimeArn>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "CreateChannelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAttendee = {
  type t
  type request = {
    @as("Tags") tags: option<attendeeTagList>,
    @as("ExternalUserId") externalUserId: externalUserIdType,
    @as("MeetingId") meetingId: guidString,
  }
  type response = {@as("Attendee") attendee: option<attendee>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "CreateAttendeeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAppInstanceUser = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("Metadata") metadata: option<metadata>,
    @as("Name") name: userName,
    @as("AppInstanceUserId") appInstanceUserId: userId,
    @as("AppInstanceArn") appInstanceArn: chimeArn,
  }
  type response = {@as("AppInstanceUserArn") appInstanceUserArn: option<chimeArn>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "CreateAppInstanceUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAppInstance = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("Metadata") metadata: option<metadata>,
    @as("Name") name: nonEmptyResourceName,
  }
  type response = {@as("AppInstanceArn") appInstanceArn: option<chimeArn>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "CreateAppInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchUpdatePhoneNumber = {
  type t
  type request = {
    @as("UpdatePhoneNumberRequestItems")
    updatePhoneNumberRequestItems: updatePhoneNumberRequestItemList,
  }
  type response = {@as("PhoneNumberErrors") phoneNumberErrors: option<phoneNumberErrorList>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "BatchUpdatePhoneNumberCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchUnsuspendUser = {
  type t
  type request = {
    @as("UserIdList") userIdList: userIdList,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("UserErrors") userErrors: option<userErrorList>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "BatchUnsuspendUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchSuspendUser = {
  type t
  type request = {
    @as("UserIdList") userIdList: userIdList,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("UserErrors") userErrors: option<userErrorList>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "BatchSuspendUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDeletePhoneNumber = {
  type t
  type request = {@as("PhoneNumberIds") phoneNumberIds: nonEmptyStringList}
  type response = {@as("PhoneNumberErrors") phoneNumberErrors: option<phoneNumberErrorList>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "BatchDeletePhoneNumberCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchCreateRoomMembership = {
  type t
  type request = {
    @as("MembershipItemList") membershipItemList: membershipItemList,
    @as("RoomId") roomId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("Errors") errors: option<memberErrorList>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "BatchCreateRoomMembershipCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateSigninDelegateGroupsWithAccount = {
  type t
  type request = {
    @as("SigninDelegateGroups") signinDelegateGroups: signinDelegateGroupList,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = unit
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "AssociateSigninDelegateGroupsWithAccountCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociatePhoneNumbersWithVoiceConnectorGroup = {
  type t
  type request = {
    @as("ForceAssociate") forceAssociate: option<nullableBoolean>,
    @as("E164PhoneNumbers") e164PhoneNumbers: e164PhoneNumberList,
    @as("VoiceConnectorGroupId") voiceConnectorGroupId: nonEmptyString,
  }
  type response = {@as("PhoneNumberErrors") phoneNumberErrors: option<phoneNumberErrorList>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "AssociatePhoneNumbersWithVoiceConnectorGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociatePhoneNumbersWithVoiceConnector = {
  type t
  type request = {
    @as("ForceAssociate") forceAssociate: option<nullableBoolean>,
    @as("E164PhoneNumbers") e164PhoneNumbers: e164PhoneNumberList,
    @as("VoiceConnectorId") voiceConnectorId: nonEmptyString,
  }
  type response = {@as("PhoneNumberErrors") phoneNumberErrors: option<phoneNumberErrorList>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "AssociatePhoneNumbersWithVoiceConnectorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVoiceConnectorGroup = {
  type t
  type request = {
    @as("VoiceConnectorItems") voiceConnectorItems: voiceConnectorItemList,
    @as("Name") name: voiceConnectorGroupName,
    @as("VoiceConnectorGroupId") voiceConnectorGroupId: nonEmptyString,
  }
  type response = {@as("VoiceConnectorGroup") voiceConnectorGroup: option<voiceConnectorGroup>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "UpdateVoiceConnectorGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSipRule = {
  type t
  type request = {
    @as("TargetApplications") targetApplications: option<sipRuleTargetApplicationList>,
    @as("Disabled") disabled: option<nullableBoolean>,
    @as("Name") name: sipRuleName,
    @as("SipRuleId") sipRuleId: nonEmptyString,
  }
  type response = {@as("SipRule") sipRule: option<sipRule>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "UpdateSipRuleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSipMediaApplication = {
  type t
  type request = {
    @as("Endpoints") endpoints: option<sipMediaApplicationEndpointList>,
    @as("Name") name: option<sipMediaApplicationName>,
    @as("SipMediaApplicationId") sipMediaApplicationId: nonEmptyString,
  }
  type response = {@as("SipMediaApplication") sipMediaApplication: option<sipMediaApplication>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "UpdateSipMediaApplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProxySession = {
  type t
  type request = {
    @as("ExpiryMinutes") expiryMinutes: option<positiveInteger>,
    @as("Capabilities") capabilities: capabilityList,
    @as("ProxySessionId") proxySessionId: nonEmptyString128,
    @as("VoiceConnectorId") voiceConnectorId: nonEmptyString128,
  }
  type response = {@as("ProxySession") proxySession: option<proxySession>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "UpdateProxySessionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePhoneNumber = {
  type t
  type request = {
    @as("CallingName") callingName: option<callingName>,
    @as("ProductType") productType: option<phoneNumberProductType>,
    @as("PhoneNumberId") phoneNumberId: string_,
  }
  type response = {@as("PhoneNumber") phoneNumber: option<phoneNumber>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "UpdatePhoneNumberCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAccount = {
  type t
  type request = {
    @as("Name") name: option<accountName>,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("Account") account: option<account>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "UpdateAccountCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestorePhoneNumber = {
  type t
  type request = {@as("PhoneNumberId") phoneNumberId: nonEmptyString}
  type response = {@as("PhoneNumber") phoneNumber: option<phoneNumber>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "RestorePhoneNumberCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutVoiceConnectorStreamingConfiguration = {
  type t
  type request = {
    @as("StreamingConfiguration") streamingConfiguration: streamingConfiguration,
    @as("VoiceConnectorId") voiceConnectorId: nonEmptyString,
  }
  type response = {
    @as("StreamingConfiguration") streamingConfiguration: option<streamingConfiguration>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "PutVoiceConnectorStreamingConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutVoiceConnectorOrigination = {
  type t
  type request = {
    @as("Origination") origination: origination,
    @as("VoiceConnectorId") voiceConnectorId: nonEmptyString,
  }
  type response = {@as("Origination") origination: option<origination>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "PutVoiceConnectorOriginationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutVoiceConnectorEmergencyCallingConfiguration = {
  type t
  type request = {
    @as("EmergencyCallingConfiguration")
    emergencyCallingConfiguration: emergencyCallingConfiguration,
    @as("VoiceConnectorId") voiceConnectorId: nonEmptyString,
  }
  type response = {
    @as("EmergencyCallingConfiguration")
    emergencyCallingConfiguration: option<emergencyCallingConfiguration>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "PutVoiceConnectorEmergencyCallingConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListUsers = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<profileServiceMaxResults>,
    @as("UserType") userType: option<userType>,
    @as("UserEmail") userEmail: option<emailAddress>,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Users") users: option<userList>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListUsersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSupportedPhoneNumberCountries = {
  type t
  type request = {@as("ProductType") productType: phoneNumberProductType}
  type response = {
    @as("PhoneNumberCountries") phoneNumberCountries: option<phoneNumberCountriesList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "ListSupportedPhoneNumberCountriesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRoomMemberships = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<resultMax>,
    @as("RoomId") roomId: nonEmptyString,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("RoomMemberships") roomMemberships: option<roomMembershipList>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListRoomMembershipsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMeetings = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultMax>,
    @as("NextToken") nextToken: option<string_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Meetings") meetings: option<meetingList>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListMeetingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListChannelsModeratedByAppInstanceUser = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("AppInstanceUserArn") appInstanceUserArn: option<chimeArn>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Channels") channels: option<channelModeratedByAppInstanceUserSummaryList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "ListChannelsModeratedByAppInstanceUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListChannelModerators = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @as("ChannelModerators") channelModerators: option<channelModeratorSummaryList>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListChannelModeratorsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListChannelMessages = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NotAfter") notAfter: option<timestamp_>,
    @as("NotBefore") notBefore: option<timestamp_>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @as("ChannelMessages") channelMessages: option<channelMessageSummaryList>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListChannelMessagesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListChannelMembershipsForAppInstanceUser = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("AppInstanceUserArn") appInstanceUserArn: option<chimeArn>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ChannelMemberships")
    channelMemberships: option<channelMembershipForAppInstanceUserSummaryList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "ListChannelMembershipsForAppInstanceUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListChannelMemberships = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Type") type_: option<channelMembershipType>,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ChannelMemberships") channelMemberships: option<channelMembershipSummaryList>,
    @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "ListChannelMembershipsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListChannelBans = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @as("ChannelBans") channelBans: option<channelBanSummaryList>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("ChannelArn") channelArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListChannelBansCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAppInstanceAdmins = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("AppInstanceArn") appInstanceArn: chimeArn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AppInstanceAdmins") appInstanceAdmins: option<appInstanceAdminList>,
    @as("AppInstanceArn") appInstanceArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListAppInstanceAdminsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVoiceConnectorStreamingConfiguration = {
  type t
  type request = {@as("VoiceConnectorId") voiceConnectorId: nonEmptyString}
  type response = {
    @as("StreamingConfiguration") streamingConfiguration: option<streamingConfiguration>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "GetVoiceConnectorStreamingConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVoiceConnectorOrigination = {
  type t
  type request = {@as("VoiceConnectorId") voiceConnectorId: nonEmptyString}
  type response = {@as("Origination") origination: option<origination>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "GetVoiceConnectorOriginationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVoiceConnectorGroup = {
  type t
  type request = {@as("VoiceConnectorGroupId") voiceConnectorGroupId: nonEmptyString}
  type response = {@as("VoiceConnectorGroup") voiceConnectorGroup: option<voiceConnectorGroup>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "GetVoiceConnectorGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVoiceConnectorEmergencyCallingConfiguration = {
  type t
  type request = {@as("VoiceConnectorId") voiceConnectorId: nonEmptyString}
  type response = {
    @as("EmergencyCallingConfiguration")
    emergencyCallingConfiguration: option<emergencyCallingConfiguration>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "GetVoiceConnectorEmergencyCallingConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSipRule = {
  type t
  type request = {@as("SipRuleId") sipRuleId: nonEmptyString}
  type response = {@as("SipRule") sipRule: option<sipRule>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "GetSipRuleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSipMediaApplication = {
  type t
  type request = {@as("SipMediaApplicationId") sipMediaApplicationId: nonEmptyString}
  type response = {@as("SipMediaApplication") sipMediaApplication: option<sipMediaApplication>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "GetSipMediaApplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetProxySession = {
  type t
  type request = {
    @as("ProxySessionId") proxySessionId: nonEmptyString128,
    @as("VoiceConnectorId") voiceConnectorId: nonEmptyString128,
  }
  type response = {@as("ProxySession") proxySession: option<proxySession>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "GetProxySessionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPhoneNumberOrder = {
  type t
  type request = {@as("PhoneNumberOrderId") phoneNumberOrderId: guidString}
  type response = {@as("PhoneNumberOrder") phoneNumberOrder: option<phoneNumberOrder>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "GetPhoneNumberOrderCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPhoneNumber = {
  type t
  type request = {@as("PhoneNumberId") phoneNumberId: string_}
  type response = {@as("PhoneNumber") phoneNumber: option<phoneNumber>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "GetPhoneNumberCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccount = {
  type t
  type request = {@as("AccountId") accountId: nonEmptyString}
  type response = {@as("Account") account: option<account>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "GetAccountCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVoiceConnectorGroup = {
  type t
  type request = {
    @as("VoiceConnectorItems") voiceConnectorItems: option<voiceConnectorItemList>,
    @as("Name") name: voiceConnectorGroupName,
  }
  type response = {@as("VoiceConnectorGroup") voiceConnectorGroup: option<voiceConnectorGroup>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "CreateVoiceConnectorGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSipRule = {
  type t
  type request = {
    @as("TargetApplications") targetApplications: sipRuleTargetApplicationList,
    @as("Disabled") disabled: option<nullableBoolean>,
    @as("TriggerValue") triggerValue: nonEmptyString,
    @as("TriggerType") triggerType: sipRuleTriggerType,
    @as("Name") name: sipRuleName,
  }
  type response = {@as("SipRule") sipRule: option<sipRule>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "CreateSipRuleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSipMediaApplication = {
  type t
  type request = {
    @as("Endpoints") endpoints: sipMediaApplicationEndpointList,
    @as("Name") name: sipMediaApplicationName,
    @as("AwsRegion") awsRegion: string_,
  }
  type response = {@as("SipMediaApplication") sipMediaApplication: option<sipMediaApplication>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "CreateSipMediaApplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProxySession = {
  type t
  type request = {
    @as("GeoMatchParams") geoMatchParams: option<geoMatchParams>,
    @as("GeoMatchLevel") geoMatchLevel: option<geoMatchLevel>,
    @as("NumberSelectionBehavior") numberSelectionBehavior: option<numberSelectionBehavior>,
    @as("Capabilities") capabilities: capabilityList,
    @as("ExpiryMinutes") expiryMinutes: option<positiveInteger>,
    @as("Name") name: option<proxySessionNameString>,
    @as("ParticipantPhoneNumbers") participantPhoneNumbers: participantPhoneNumberList,
    @as("VoiceConnectorId") voiceConnectorId: nonEmptyString128,
  }
  type response = {@as("ProxySession") proxySession: option<proxySession>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "CreateProxySessionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePhoneNumberOrder = {
  type t
  type request = {
    @as("E164PhoneNumbers") e164PhoneNumbers: e164PhoneNumberList,
    @as("ProductType") productType: phoneNumberProductType,
  }
  type response = {@as("PhoneNumberOrder") phoneNumberOrder: option<phoneNumberOrder>}
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "CreatePhoneNumberOrderCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAccount = {
  type t
  type request = {@as("Name") name: accountName}
  type response = {@as("Account") account: option<account>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "CreateAccountCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchUpdateUser = {
  type t
  type request = {
    @as("UpdateUserRequestItems") updateUserRequestItems: updateUserRequestItemList,
    @as("AccountId") accountId: nonEmptyString,
  }
  type response = {@as("UserErrors") userErrors: option<userErrorList>}
  @module("@aws-sdk/client-chime") @new external new_: request => t = "BatchUpdateUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchCreateChannelMembership = {
  type t
  type request = {
    @as("ChimeBearer") chimeBearer: option<chimeArn>,
    @as("MemberArns") memberArns: memberArns,
    @as("Type") type_: option<channelMembershipType>,
    @as("ChannelArn") channelArn: chimeArn,
  }
  type response = {
    @as("Errors") errors: option<batchCreateChannelMembershipErrors>,
    @as("BatchChannelMemberships") batchChannelMemberships: option<batchChannelMemberships>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "BatchCreateChannelMembershipCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVoiceConnectorGroups = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultMax>,
    @as("NextToken") nextToken: option<string_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("VoiceConnectorGroups") voiceConnectorGroups: option<voiceConnectorGroupList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "ListVoiceConnectorGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSipRules = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextTokenString>,
    @as("MaxResults") maxResults: option<resultMax>,
    @as("SipMediaApplicationId") sipMediaApplicationId: option<nonEmptyString>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextTokenString>,
    @as("SipRules") sipRules: option<sipRuleList>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListSipRulesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSipMediaApplications = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextTokenString>,
    @as("MaxResults") maxResults: option<resultMax>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextTokenString>,
    @as("SipMediaApplications") sipMediaApplications: option<sipMediaApplicationList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "ListSipMediaApplicationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProxySessions = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultMax>,
    @as("NextToken") nextToken: option<nextTokenString>,
    @as("Status") status: option<proxySessionStatus>,
    @as("VoiceConnectorId") voiceConnectorId: nonEmptyString128,
  }
  type response = {
    @as("NextToken") nextToken: option<nextTokenString>,
    @as("ProxySessions") proxySessions: option<proxySessions>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListProxySessionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPhoneNumbers = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<resultMax>,
    @as("FilterValue") filterValue: option<string_>,
    @as("FilterName") filterName: option<phoneNumberAssociationName>,
    @as("ProductType") productType: option<phoneNumberProductType>,
    @as("Status") status: option<phoneNumberStatus>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("PhoneNumbers") phoneNumbers: option<phoneNumberList>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListPhoneNumbersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPhoneNumberOrders = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultMax>,
    @as("NextToken") nextToken: option<string_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("PhoneNumberOrders") phoneNumberOrders: option<phoneNumberOrderList>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListPhoneNumberOrdersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccounts = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<profileServiceMaxResults>,
    @as("NextToken") nextToken: option<string_>,
    @as("UserEmail") userEmail: option<emailAddress>,
    @as("Name") name: option<accountName>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Accounts") accounts: option<accountList>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "ListAccountsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMeetingWithAttendees = {
  type t
  type request = {
    @as("Attendees") attendees: option<createMeetingWithAttendeesRequestItemList>,
    @as("NotificationsConfiguration")
    notificationsConfiguration: option<meetingNotificationConfiguration>,
    @as("Tags") tags: option<meetingTagList>,
    @as("MediaRegion") mediaRegion: option<string_>,
    @as("MeetingHostId") meetingHostId: option<externalUserIdType>,
    @as("ExternalMeetingId") externalMeetingId: option<externalMeetingIdType>,
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
  }
  type response = {
    @as("Errors") errors: option<batchCreateAttendeeErrorList>,
    @as("Attendees") attendees: option<attendeeList>,
    @as("Meeting") meeting: option<meeting>,
  }
  @module("@aws-sdk/client-chime") @new
  external new_: request => t = "CreateMeetingWithAttendeesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchCreateAttendee = {
  type t
  type request = {
    @as("Attendees") attendees: createAttendeeRequestItemList,
    @as("MeetingId") meetingId: guidString,
  }
  type response = {
    @as("Errors") errors: option<batchCreateAttendeeErrorList>,
    @as("Attendees") attendees: option<attendeeList>,
  }
  @module("@aws-sdk/client-chime") @new external new_: request => t = "BatchCreateAttendeeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
