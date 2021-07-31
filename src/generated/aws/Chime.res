type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type voiceConnectorName = string
type voiceConnectorItemPriority = int;
type voiceConnectorGroupName = string
type voiceConnectorAwsRegion = [@as("us-west-2") #us_west_2 | @as("us-east-1") #us_east_1]
type userType = [@as("SharedDevice") #SharedDevice | @as("PrivateUser") #PrivateUser]
type userName = string
type userId = string
type urlType = string
type uriType = string
type tollFreePrefix = string
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type string128 = string
type amazonawsString = string
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type sipRuleTriggerType = [@as("RequestUriHostname") #RequestUriHostname | @as("ToPhoneNumber") #ToPhoneNumber]
type sipRuleName = string
type sipMediaApplicationName = string
type sipApplicationPriority = int;
type sensitiveString = string
type roomMembershipRole = [@as("Member") #Member | @as("Administrator") #Administrator]
type retentionDays = int;
type resultMax = int;
type resourceName = string
type registrationStatus = [@as("Suspended") #Suspended | @as("Registered") #Registered | @as("Unregistered") #Unregistered]
type proxySessionStatus = [@as("Closed") #Closed | @as("InProgress") #InProgress | @as("Open") #Open]
type proxySessionNameString = string
type profileServiceMaxResults = int;
type positiveInteger = int;
type port = int;
type phoneNumberType = [@as("TollFree") #TollFree | @as("Local") #Local]
type phoneNumberStatus = [@as("DeleteFailed") #DeleteFailed | @as("ReleaseFailed") #ReleaseFailed | @as("DeleteInProgress") #DeleteInProgress | @as("ReleaseInProgress") #ReleaseInProgress | @as("Assigned") #Assigned | @as("Unassigned") #Unassigned | @as("AcquireFailed") #AcquireFailed | @as("AcquireInProgress") #AcquireInProgress]
type phoneNumberProductType = [@as("SipMediaApplicationDialIn") #SipMediaApplicationDialIn | @as("VoiceConnector") #VoiceConnector | @as("BusinessCalling") #BusinessCalling]
type phoneNumberOrderStatus = [@as("Partial") #Partial | @as("Failed") #Failed | @as("Successful") #Successful | @as("Processing") #Processing]
type phoneNumberMaxResults = int;
type phoneNumberAssociationName = [@as("SipRuleId") #SipRuleId | @as("VoiceConnectorGroupId") #VoiceConnectorGroupId | @as("VoiceConnectorId") #VoiceConnectorId | @as("UserId") #UserId | @as("AccountId") #AccountId]
type originationRouteWeight = int;
type originationRouteProtocol = [@as("UDP") #UDP | @as("TCP") #TCP]
type originationRoutePriority = int;
type orderedPhoneNumberStatus = [@as("Failed") #Failed | @as("Acquired") #Acquired | @as("Processing") #Processing]
type numberSelectionBehavior = [@as("AvoidSticky") #AvoidSticky | @as("PreferSticky") #PreferSticky]
type nullableBoolean = bool;
type notificationTarget = [@as("SQS") #SQS | @as("SNS") #SNS | @as("EventBridge") #EventBridge]
type nonNullableBoolean = bool;
type nonEmptyString128 = string
type nonEmptyString = string
type nonEmptyResourceName = string
type nonEmptyContent = string
type nextTokenString = string
type nextToken = string
type metadata = string
type messageId = string
type memberType = [@as("Webhook") #Webhook | @as("Bot") #Bot | @as("User") #User]
type maxResults = int;
type license = [@as("ProTrial") #ProTrial | @as("Pro") #Pro | @as("Plus") #Plus | @as("Basic") #Basic]
type joinTokenString = string
type iso8601Timestamp = Js.Date.t;
type inviteStatus = [@as("Failed") #Failed | @as("Accepted") #Accepted | @as("Pending") #Pending]
type amazonawsInteger = int;
type guidString = string
type geoMatchLevel = [@as("AreaCode") #AreaCode | @as("Country") #Country]
type functionArn = string
type externalUserIdType = string
type externalMeetingIdType = string
type errorCode = [@as("PhoneNumberAssociationsExist") #PhoneNumberAssociationsExist | @as("VoiceConnectorGroupAssociationsExist") #VoiceConnectorGroupAssociationsExist | @as("Unprocessable") #Unprocessable | @as("Unauthorized") #Unauthorized | @as("Throttling") #Throttling | @as("Throttled") #Throttled | @as("ServiceUnavailable") #ServiceUnavailable | @as("AccessDenied") #AccessDenied | @as("ServiceFailure") #ServiceFailure | @as("ResourceLimitExceeded") #ResourceLimitExceeded | @as("PreconditionFailed") #PreconditionFailed | @as("NotFound") #NotFound | @as("Forbidden") #Forbidden | @as("Conflict") #Conflict | @as("BadRequest") #BadRequest]
type emailStatus = [@as("Failed") #Failed | @as("Sent") #Sent | @as("NotSent") #NotSent]
type emailAddress = string
type e164PhoneNumber = string
type dataRetentionInHours = int;
type cpsLimit = int;
type country = string
type content = string
type clientRequestToken = string
type chimeArn = string
type channelPrivacy = [@as("PRIVATE") #PRIVATE | @as("PUBLIC") #PUBLIC]
type channelMode = [@as("RESTRICTED") #RESTRICTED | @as("UNRESTRICTED") #UNRESTRICTED]
type channelMessageType = [@as("CONTROL") #CONTROL | @as("STANDARD") #STANDARD]
type channelMessagePersistenceType = [@as("NON_PERSISTENT") #NON_PERSISTENT | @as("PERSISTENT") #PERSISTENT]
type channelMembershipType = [@as("HIDDEN") #HIDDEN | @as("DEFAULT") #DEFAULT]
type capability = [@as("SMS") #SMS | @as("Voice") #Voice]
type callingRegion = string
type callingNameStatus = [@as("UpdateFailed") #UpdateFailed | @as("UpdateSucceeded") #UpdateSucceeded | @as("UpdateInProgress") #UpdateInProgress | @as("Unassigned") #Unassigned]
type callingName = string
type botType = [@as("ChatBot") #ChatBot]
type amazonawsBoolean = bool;
type arn = string
type areaCode = string
type appInstanceDataType = [@as("ChannelMessage") #ChannelMessage | @as("Channel") #Channel]
type alpha2CountryCode = string
type accountType = [@as("EnterpriseOIDC") #EnterpriseOIDC | @as("EnterpriseLWA") #EnterpriseLWA | @as("EnterpriseDirectory") #EnterpriseDirectory | @as("Team") #Team]
type accountName = string
type voiceConnectorSettings = {
@as("CdrBucket") cdrBucket: amazonawsString
}
type voiceConnectorItem = {
@as("Priority") priority: option<voiceConnectorItemPriority>,
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
type voiceConnector = {
@as("UpdatedTimestamp") updatedTimestamp: iso8601Timestamp,
@as("CreatedTimestamp") createdTimestamp: iso8601Timestamp,
@as("RequireEncryption") requireEncryption: amazonawsBoolean,
@as("OutboundHostName") outboundHostName: amazonawsString,
@as("Name") name: voiceConnectorName,
@as("AwsRegion") awsRegion: voiceConnectorAwsRegion,
@as("VoiceConnectorId") voiceConnectorId: nonEmptyString
}
type userIdList = array<nonEmptyString>
type userError = {
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorCode") errorCode: errorCode,
@as("UserId") userId: nonEmptyString
}
type userEmailList = array<emailAddress>
type updatePhoneNumberRequestItem = {
@as("CallingName") callingName: callingName,
@as("ProductType") productType: phoneNumberProductType,
@as("PhoneNumberId") phoneNumberId: option<nonEmptyString>
}
type terminationHealth = {
@as("Source") source: amazonawsString,
@as("Timestamp") timestamp: iso8601Timestamp
}
type telephonySettings = {
@as("SMS") sMS: option<amazonawsBoolean>,
@as("OutboundCalling") outboundCalling: option<amazonawsBoolean>,
@as("InboundCalling") inboundCalling: option<amazonawsBoolean>
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type stringList = array<amazonawsString>
type streamingNotificationTarget = {
@as("NotificationTarget") notificationTarget: option<notificationTarget>
}
type sipRuleTargetApplication = {
@as("AwsRegion") awsRegion: amazonawsString,
@as("Priority") priority: sipApplicationPriority,
@as("SipMediaApplicationId") sipMediaApplicationId: nonEmptyString
}
type sipMediaApplicationLoggingConfiguration = {
@as("EnableSipMediaApplicationMessageLogs") enableSipMediaApplicationMessageLogs: amazonawsBoolean
}
type sipMediaApplicationEndpoint = {
@as("LambdaArn") lambdaArn: functionArn
}
type sipMediaApplicationCall = {
@as("TransactionId") transactionId: guidString
}
type signinDelegateGroup = {
@as("GroupName") groupName: nonEmptyString
}
type sensitiveStringList = array<sensitiveString>
type roomRetentionSettings = {
@as("RetentionDays") retentionDays: retentionDays
}
type room = {
@as("UpdatedTimestamp") updatedTimestamp: iso8601Timestamp,
@as("CreatedTimestamp") createdTimestamp: iso8601Timestamp,
@as("CreatedBy") createdBy: nonEmptyString,
@as("AccountId") accountId: nonEmptyString,
@as("Name") name: sensitiveString,
@as("RoomId") roomId: nonEmptyString
}
type phoneNumberTypeList = array<phoneNumberType>
type phoneNumberError = {
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorCode") errorCode: errorCode,
@as("PhoneNumberId") phoneNumberId: nonEmptyString
}
type phoneNumberCapabilities = {
@as("OutboundMMS") outboundMMS: nullableBoolean,
@as("InboundMMS") inboundMMS: nullableBoolean,
@as("OutboundSMS") outboundSMS: nullableBoolean,
@as("InboundSMS") inboundSMS: nullableBoolean,
@as("OutboundCall") outboundCall: nullableBoolean,
@as("InboundCall") inboundCall: nullableBoolean
}
type phoneNumberAssociation = {
@as("AssociatedTimestamp") associatedTimestamp: iso8601Timestamp,
@as("Name") name: phoneNumberAssociationName,
@as("Value") value: amazonawsString
}
type participantPhoneNumberList = array<e164PhoneNumber>
type participant = {
@as("ProxyPhoneNumber") proxyPhoneNumber: e164PhoneNumber,
@as("PhoneNumber") phoneNumber: e164PhoneNumber
}
type originationRoute = {
@as("Weight") weight: originationRouteWeight,
@as("Priority") priority: originationRoutePriority,
@as("Protocol") protocol: originationRouteProtocol,
@as("Port") port: port,
@as("Host") host: amazonawsString
}
type orderedPhoneNumber = {
@as("Status") status: orderedPhoneNumberStatus,
@as("E164PhoneNumber") e164PhoneNumber: e164PhoneNumber
}
type nonEmptyStringList = array<amazonawsString>
type messagingSessionEndpoint = {
@as("Url") url: urlType
}
type membershipItem = {
@as("Role") role: roomMembershipRole,
@as("MemberId") memberId: nonEmptyString
}
type memberError = {
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorCode") errorCode: errorCode,
@as("MemberId") memberId: nonEmptyString
}
type memberArns = array<chimeArn>
type member = {
@as("AccountId") accountId: nonEmptyString,
@as("FullName") fullName: sensitiveString,
@as("Email") email: sensitiveString,
@as("MemberType") memberType: memberType,
@as("MemberId") memberId: nonEmptyString
}
type meetingTagKeyList = array<tagKey>
type meetingNotificationConfiguration = {
@as("SqsQueueArn") sqsQueueArn: arn,
@as("SnsTopicArn") snsTopicArn: arn
}
type mediaPlacement = {
@as("TurnControlUrl") turnControlUrl: uriType,
@as("SignalingUrl") signalingUrl: uriType,
@as("ScreenViewingUrl") screenViewingUrl: uriType,
@as("ScreenSharingUrl") screenSharingUrl: uriType,
@as("ScreenDataUrl") screenDataUrl: uriType,
@as("AudioFallbackUrl") audioFallbackUrl: uriType,
@as("AudioHostUrl") audioHostUrl: uriType
}
type loggingConfiguration = {
@as("EnableSIPLogs") enableSIPLogs: amazonawsBoolean
}
type licenseList = array<license>
type invite = {
@as("EmailStatus") emailStatus: emailStatus,
@as("EmailAddress") emailAddress: emailAddress,
@as("Status") status: inviteStatus,
@as("InviteId") inviteId: amazonawsString
}
type identity = {
@as("Name") name: resourceName,
@as("Arn") arn: chimeArn
}
type geoMatchParams = {
@as("AreaCode") areaCode: option<areaCode>,
@as("Country") country: option<country>
}
type eventsConfiguration = {
@as("LambdaFunctionArn") lambdaFunctionArn: sensitiveString,
@as("OutboundEventsHTTPSEndpoint") outboundEventsHTTPSEndpoint: sensitiveString,
@as("BotId") botId: amazonawsString
}
type e164PhoneNumberList = array<e164PhoneNumber>
type dNISEmergencyCallingConfiguration = {
@as("CallingCountry") callingCountry: option<alpha2CountryCode>,
@as("TestPhoneNumber") testPhoneNumber: e164PhoneNumber,
@as("EmergencyPhoneNumber") emergencyPhoneNumber: option<e164PhoneNumber>
}
type credential = {
@as("Password") password: sensitiveString,
@as("Username") username: sensitiveString
}
type createAttendeeError = {
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorCode") errorCode: amazonawsString,
@as("ExternalUserId") externalUserId: externalUserIdType
}
type countryList = array<country>
type conversationRetentionSettings = {
@as("RetentionDays") retentionDays: retentionDays
}
type channelSummary = {
@as("LastMessageTimestamp") lastMessageTimestamp: amazonawsTimestamp,
@as("Metadata") metadata: metadata,
@as("Privacy") privacy: channelPrivacy,
@as("Mode") mode: channelMode,
@as("ChannelArn") channelArn: chimeArn,
@as("Name") name: nonEmptyResourceName
}
type channelRetentionSettings = {
@as("RetentionDays") retentionDays: retentionDays
}
type capabilityList = array<capability>
type callingRegionList = array<callingRegion>
type businessCallingSettings = {
@as("CdrBucket") cdrBucket: amazonawsString
}
type bot = {
@as("SecurityToken") securityToken: sensitiveString,
@as("BotEmail") botEmail: sensitiveString,
@as("UpdatedTimestamp") updatedTimestamp: iso8601Timestamp,
@as("CreatedTimestamp") createdTimestamp: iso8601Timestamp,
@as("Disabled") disabled: nullableBoolean,
@as("BotType") botType: botType,
@as("DisplayName") displayName: sensitiveString,
@as("UserId") userId: amazonawsString,
@as("BotId") botId: amazonawsString
}
type batchCreateChannelMembershipError = {
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorCode") errorCode: errorCode,
@as("MemberArn") memberArn: chimeArn
}
type attendeeTagKeyList = array<tagKey>
type attendee = {
@as("JoinToken") joinToken: joinTokenString,
@as("AttendeeId") attendeeId: guidString,
@as("ExternalUserId") externalUserId: externalUserIdType
}
type appInstanceUserSummary = {
@as("Metadata") metadata: metadata,
@as("Name") name: userName,
@as("AppInstanceUserArn") appInstanceUserArn: chimeArn
}
type appInstanceUserMembershipSummary = {
@as("ReadMarkerTimestamp") readMarkerTimestamp: amazonawsTimestamp,
@as("Type") type_: channelMembershipType
}
type appInstanceUser = {
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: amazonawsTimestamp,
@as("Metadata") metadata: metadata,
@as("CreatedTimestamp") createdTimestamp: amazonawsTimestamp,
@as("Name") name: userName,
@as("AppInstanceUserArn") appInstanceUserArn: chimeArn
}
type appInstanceSummary = {
@as("Metadata") metadata: metadata,
@as("Name") name: nonEmptyResourceName,
@as("AppInstanceArn") appInstanceArn: chimeArn
}
type appInstanceStreamingConfiguration = {
@as("ResourceArn") resourceArn: option<arn>,
@as("AppInstanceDataType") appInstanceDataType: option<appInstanceDataType>
}
type appInstance = {
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: amazonawsTimestamp,
@as("CreatedTimestamp") createdTimestamp: amazonawsTimestamp,
@as("Metadata") metadata: metadata,
@as("Name") name: nonEmptyResourceName,
@as("AppInstanceArn") appInstanceArn: chimeArn
}
type alexaForBusinessMetadata = {
@as("AlexaForBusinessRoomArn") alexaForBusinessRoomArn: sensitiveString,
@as("IsAlexaForBusinessEnabled") isAlexaForBusinessEnabled: amazonawsBoolean
}
type accountSettings = {
@as("EnableDialOut") enableDialOut: amazonawsBoolean,
@as("DisableRemoteControl") disableRemoteControl: amazonawsBoolean
}
type voiceConnectorList = array<voiceConnector>
type voiceConnectorItemList = array<voiceConnectorItem>
type userSettings = {
@as("Telephony") telephony: option<telephonySettings>
}
type userErrorList = array<userError>
type user = {
@as("PersonalPIN") personalPIN: amazonawsString,
@as("AlexaForBusinessMetadata") alexaForBusinessMetadata: alexaForBusinessMetadata,
@as("InvitedOn") invitedOn: iso8601Timestamp,
@as("RegisteredOn") registeredOn: iso8601Timestamp,
@as("UserInvitationStatus") userInvitationStatus: inviteStatus,
@as("UserRegistrationStatus") userRegistrationStatus: registrationStatus,
@as("UserType") userType: userType,
@as("LicenseType") licenseType: license,
@as("DisplayName") displayName: sensitiveString,
@as("PrimaryProvisionedNumber") primaryProvisionedNumber: sensitiveString,
@as("PrimaryEmail") primaryEmail: emailAddress,
@as("AccountId") accountId: amazonawsString,
@as("UserId") userId: option<amazonawsString>
}
type updateUserRequestItem = {
@as("AlexaForBusinessMetadata") alexaForBusinessMetadata: alexaForBusinessMetadata,
@as("UserType") userType: userType,
@as("LicenseType") licenseType: license,
@as("UserId") userId: option<nonEmptyString>
}
type updatePhoneNumberRequestItemList = array<updatePhoneNumberRequestItem>
type termination = {
@as("Disabled") disabled: amazonawsBoolean,
@as("CidrAllowedList") cidrAllowedList: stringList,
@as("CallingRegions") callingRegions: callingRegionList,
@as("DefaultPhoneNumber") defaultPhoneNumber: e164PhoneNumber,
@as("CpsLimit") cpsLimit: cpsLimit
}
type tagList = array<tag>
type streamingNotificationTargetList = array<streamingNotificationTarget>
type sipRuleTargetApplicationList = array<sipRuleTargetApplication>
type sipMediaApplicationEndpointList = array<sipMediaApplicationEndpoint>
type signinDelegateGroupList = array<signinDelegateGroup>
type roomMembership = {
@as("UpdatedTimestamp") updatedTimestamp: iso8601Timestamp,
@as("InvitedBy") invitedBy: nonEmptyString,
@as("Role") role: roomMembershipRole,
@as("Member") member: member,
@as("RoomId") roomId: nonEmptyString
}
type roomList = array<room>
type retentionSettings = {
@as("ConversationRetentionSettings") conversationRetentionSettings: conversationRetentionSettings,
@as("RoomRetentionSettings") roomRetentionSettings: roomRetentionSettings
}
type proxy = {
@as("PhoneNumberCountries") phoneNumberCountries: stringList,
@as("FallBackPhoneNumber") fallBackPhoneNumber: e164PhoneNumber,
@as("Disabled") disabled: amazonawsBoolean,
@as("DefaultSessionExpiryMinutes") defaultSessionExpiryMinutes: amazonawsInteger
}
type phoneNumberErrorList = array<phoneNumberError>
type phoneNumberCountry = {
@as("SupportedPhoneNumberTypes") supportedPhoneNumberTypes: phoneNumberTypeList,
@as("CountryCode") countryCode: alpha2CountryCode
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
@as("MediaRegion") mediaRegion: amazonawsString,
@as("MediaPlacement") mediaPlacement: mediaPlacement,
@as("ExternalMeetingId") externalMeetingId: externalMeetingIdType,
@as("MeetingId") meetingId: guidString
}
type inviteList = array<invite>
type dNISEmergencyCallingConfigurationList = array<dNISEmergencyCallingConfiguration>
type credentialList = array<credential>
type channelSummaryList = array<channelSummary>
type channelModeratorSummary = {
@as("Moderator") moderator: identity
}
type channelModerator = {
@as("CreatedBy") createdBy: identity,
@as("CreatedTimestamp") createdTimestamp: amazonawsTimestamp,
@as("ChannelArn") channelArn: chimeArn,
@as("Moderator") moderator: identity
}
type channelModeratedByAppInstanceUserSummary = {
@as("ChannelSummary") channelSummary: channelSummary
}
type channelMessageSummary = {
@as("Redacted") redacted: nonNullableBoolean,
@as("Sender") sender: identity,
@as("LastEditedTimestamp") lastEditedTimestamp: amazonawsTimestamp,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: amazonawsTimestamp,
@as("CreatedTimestamp") createdTimestamp: amazonawsTimestamp,
@as("Type") type_: channelMessageType,
@as("Metadata") metadata: metadata,
@as("Content") content: content,
@as("MessageId") messageId: messageId
}
type channelMessage = {
@as("Persistence") persistence: channelMessagePersistenceType,
@as("Redacted") redacted: nonNullableBoolean,
@as("Sender") sender: identity,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: amazonawsTimestamp,
@as("LastEditedTimestamp") lastEditedTimestamp: amazonawsTimestamp,
@as("CreatedTimestamp") createdTimestamp: amazonawsTimestamp,
@as("Type") type_: channelMessageType,
@as("Metadata") metadata: metadata,
@as("Content") content: content,
@as("MessageId") messageId: messageId,
@as("ChannelArn") channelArn: chimeArn
}
type channelMembershipSummary = {
@as("Member") member: identity
}
type channelMembershipForAppInstanceUserSummary = {
@as("AppInstanceUserMembershipSummary") appInstanceUserMembershipSummary: appInstanceUserMembershipSummary,
@as("ChannelSummary") channelSummary: channelSummary
}
type channelMembership = {
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: amazonawsTimestamp,
@as("CreatedTimestamp") createdTimestamp: amazonawsTimestamp,
@as("ChannelArn") channelArn: chimeArn,
@as("Member") member: identity,
@as("Type") type_: channelMembershipType,
@as("InvitedBy") invitedBy: identity
}
type channelBanSummary = {
@as("Member") member: identity
}
type channelBan = {
@as("CreatedBy") createdBy: identity,
@as("CreatedTimestamp") createdTimestamp: amazonawsTimestamp,
@as("ChannelArn") channelArn: chimeArn,
@as("Member") member: identity
}
type channel = {
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: amazonawsTimestamp,
@as("LastMessageTimestamp") lastMessageTimestamp: amazonawsTimestamp,
@as("CreatedTimestamp") createdTimestamp: amazonawsTimestamp,
@as("CreatedBy") createdBy: identity,
@as("Metadata") metadata: metadata,
@as("Privacy") privacy: channelPrivacy,
@as("Mode") mode: channelMode,
@as("ChannelArn") channelArn: chimeArn,
@as("Name") name: nonEmptyResourceName
}
type botList = array<bot>
type batchCreateChannelMembershipErrors = array<batchCreateChannelMembershipError>
type batchCreateAttendeeErrorList = array<createAttendeeError>
type attendeeTagList = array<tag>
type attendeeList = array<attendee>
type appInstanceUserList = array<appInstanceUserSummary>
type appInstanceStreamingConfigurationList = array<appInstanceStreamingConfiguration>
type appInstanceRetentionSettings = {
@as("ChannelRetentionSettings") channelRetentionSettings: channelRetentionSettings
}
type appInstanceList = array<appInstanceSummary>
type appInstanceAdminSummary = {
@as("Admin") admin: identity
}
type appInstanceAdmin = {
@as("CreatedTimestamp") createdTimestamp: amazonawsTimestamp,
@as("AppInstanceArn") appInstanceArn: chimeArn,
@as("Admin") admin: identity
}
type voiceConnectorGroup = {
@as("UpdatedTimestamp") updatedTimestamp: iso8601Timestamp,
@as("CreatedTimestamp") createdTimestamp: iso8601Timestamp,
@as("VoiceConnectorItems") voiceConnectorItems: voiceConnectorItemList,
@as("Name") name: voiceConnectorGroupName,
@as("VoiceConnectorGroupId") voiceConnectorGroupId: nonEmptyString
}
type userList = array<user>
type updateUserRequestItemList = array<updateUserRequestItem>
type streamingConfiguration = {
@as("StreamingNotificationTargets") streamingNotificationTargets: streamingNotificationTargetList,
@as("Disabled") disabled: amazonawsBoolean,
@as("DataRetentionInHours") dataRetentionInHours: option<dataRetentionInHours>
}
type sipRule = {
@as("UpdatedTimestamp") updatedTimestamp: iso8601Timestamp,
@as("CreatedTimestamp") createdTimestamp: iso8601Timestamp,
@as("TargetApplications") targetApplications: sipRuleTargetApplicationList,
@as("TriggerValue") triggerValue: nonEmptyString,
@as("TriggerType") triggerType: sipRuleTriggerType,
@as("Disabled") disabled: amazonawsBoolean,
@as("Name") name: sipRuleName,
@as("SipRuleId") sipRuleId: nonEmptyString
}
type sipMediaApplication = {
@as("UpdatedTimestamp") updatedTimestamp: iso8601Timestamp,
@as("CreatedTimestamp") createdTimestamp: iso8601Timestamp,
@as("Endpoints") endpoints: sipMediaApplicationEndpointList,
@as("Name") name: sipMediaApplicationName,
@as("AwsRegion") awsRegion: amazonawsString,
@as("SipMediaApplicationId") sipMediaApplicationId: nonEmptyString
}
type roomMembershipList = array<roomMembership>
type proxySession = {
@as("GeoMatchParams") geoMatchParams: geoMatchParams,
@as("GeoMatchLevel") geoMatchLevel: geoMatchLevel,
@as("NumberSelectionBehavior") numberSelectionBehavior: numberSelectionBehavior,
@as("Participants") participants: participants,
@as("EndedTimestamp") endedTimestamp: iso8601Timestamp,
@as("UpdatedTimestamp") updatedTimestamp: iso8601Timestamp,
@as("CreatedTimestamp") createdTimestamp: iso8601Timestamp,
@as("Capabilities") capabilities: capabilityList,
@as("ExpiryMinutes") expiryMinutes: positiveInteger,
@as("Status") status: proxySessionStatus,
@as("Name") name: string128,
@as("ProxySessionId") proxySessionId: nonEmptyString128,
@as("VoiceConnectorId") voiceConnectorId: nonEmptyString128
}
type phoneNumberOrder = {
@as("UpdatedTimestamp") updatedTimestamp: iso8601Timestamp,
@as("CreatedTimestamp") createdTimestamp: iso8601Timestamp,
@as("OrderedPhoneNumbers") orderedPhoneNumbers: orderedPhoneNumberList,
@as("Status") status: phoneNumberOrderStatus,
@as("ProductType") productType: phoneNumberProductType,
@as("PhoneNumberOrderId") phoneNumberOrderId: guidString
}
type phoneNumberCountriesList = array<phoneNumberCountry>
type phoneNumber = {
@as("DeletionTimestamp") deletionTimestamp: iso8601Timestamp,
@as("UpdatedTimestamp") updatedTimestamp: iso8601Timestamp,
@as("CreatedTimestamp") createdTimestamp: iso8601Timestamp,
@as("CallingNameStatus") callingNameStatus: callingNameStatus,
@as("CallingName") callingName: callingName,
@as("Associations") associations: phoneNumberAssociationList,
@as("Capabilities") capabilities: phoneNumberCapabilities,
@as("Status") status: phoneNumberStatus,
@as("ProductType") productType: phoneNumberProductType,
@as("Type") type_: phoneNumberType,
@as("Country") country: alpha2CountryCode,
@as("E164PhoneNumber") e164PhoneNumber: e164PhoneNumber,
@as("PhoneNumberId") phoneNumberId: amazonawsString
}
type origination = {
@as("Disabled") disabled: amazonawsBoolean,
@as("Routes") routes: originationRouteList
}
type meetingList = array<meeting>
type emergencyCallingConfiguration = {
@as("DNIS") dNIS: dNISEmergencyCallingConfigurationList
}
type createAttendeeRequestItem = {
@as("Tags") tags: attendeeTagList,
@as("ExternalUserId") externalUserId: option<externalUserIdType>
}
type channelModeratorSummaryList = array<channelModeratorSummary>
type channelModeratedByAppInstanceUserSummaryList = array<channelModeratedByAppInstanceUserSummary>
type channelMessageSummaryList = array<channelMessageSummary>
type channelMembershipSummaryList = array<channelMembershipSummary>
type channelMembershipForAppInstanceUserSummaryList = array<channelMembershipForAppInstanceUserSummary>
type channelBanSummaryList = array<channelBanSummary>
type batchChannelMemberships = {
@as("ChannelArn") channelArn: chimeArn,
@as("Members") members: members,
@as("Type") type_: channelMembershipType,
@as("InvitedBy") invitedBy: identity
}
type appInstanceAdminList = array<appInstanceAdminSummary>
type account = {
@as("SigninDelegateGroups") signinDelegateGroups: signinDelegateGroupList,
@as("SupportedLicenses") supportedLicenses: licenseList,
@as("DefaultLicense") defaultLicense: license,
@as("CreatedTimestamp") createdTimestamp: iso8601Timestamp,
@as("AccountType") accountType: accountType,
@as("Name") name: option<amazonawsString>,
@as("AccountId") accountId: option<amazonawsString>,
@as("AwsAccountId") awsAccountId: option<amazonawsString>
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
type clientType;
@module("@aws-sdk/client-chime") @new external createClient: unit => clientType = "ChimeClient";
module UpdatePhoneNumberSettings = {
  type t;
  type request = {
@as("CallingName") callingName: option<callingName>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdatePhoneNumberSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateChannelReadMarker = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("ChannelArn") channelArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateChannelReadMarkerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateChannelMessage = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("Metadata") metadata: metadata,
@as("Content") content: content,
@as("MessageId") messageId: option<messageId>,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("MessageId") messageId: messageId,
@as("ChannelArn") channelArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateChannelMessageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateChannel = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("Metadata") metadata: metadata,
@as("Mode") mode: option<channelMode>,
@as("Name") name: option<nonEmptyResourceName>,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("ChannelArn") channelArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAppInstanceUser = {
  type t;
  type request = {
@as("Metadata") metadata: metadata,
@as("Name") name: option<userName>,
@as("AppInstanceUserArn") appInstanceUserArn: option<chimeArn>
}
  type response = {
@as("AppInstanceUserArn") appInstanceUserArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateAppInstanceUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAppInstance = {
  type t;
  type request = {
@as("Metadata") metadata: metadata,
@as("Name") name: option<nonEmptyResourceName>,
@as("AppInstanceArn") appInstanceArn: option<chimeArn>
}
  type response = {
@as("AppInstanceArn") appInstanceArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateAppInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendChannelMessage = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("Metadata") metadata: metadata,
@as("Persistence") persistence: option<channelMessagePersistenceType>,
@as("Type") type_: option<channelMessageType>,
@as("Content") content: option<nonEmptyContent>,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("MessageId") messageId: messageId,
@as("ChannelArn") channelArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "SendChannelMessageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RedactRoomMessage = {
  type t;
  type request = {
@as("MessageId") messageId: option<nonEmptyString>,
@as("RoomId") roomId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "RedactRoomMessageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RedactConversationMessage = {
  type t;
  type request = {
@as("MessageId") messageId: option<nonEmptyString>,
@as("ConversationId") conversationId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "RedactConversationMessageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RedactChannelMessage = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("MessageId") messageId: option<messageId>,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("MessageId") messageId: messageId,
@as("ChannelArn") channelArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "RedactChannelMessageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module LogoutUser = {
  type t;
  type request = {
@as("UserId") userId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "LogoutUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPhoneNumberSettings = {
  type t;
  
  type response = {
@as("CallingNameUpdatedTimestamp") callingNameUpdatedTimestamp: iso8601Timestamp,
@as("CallingName") callingName: callingName
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<unit>) => t = "GetPhoneNumberSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociatePhoneNumberFromUser = {
  type t;
  type request = {
@as("UserId") userId: option<amazonawsString>,
@as("AccountId") accountId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DisassociatePhoneNumberFromUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVoiceConnectorTermination = {
  type t;
  type request = {
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteVoiceConnectorTerminationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteVoiceConnectorStreamingConfiguration = {
  type t;
  type request = {
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteVoiceConnectorStreamingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteVoiceConnectorProxy = {
  type t;
  type request = {
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString128>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteVoiceConnectorProxyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteVoiceConnectorOrigination = {
  type t;
  type request = {
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteVoiceConnectorOriginationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteVoiceConnectorGroup = {
  type t;
  type request = {
@as("VoiceConnectorGroupId") voiceConnectorGroupId: option<nonEmptyString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteVoiceConnectorGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteVoiceConnectorEmergencyCallingConfiguration = {
  type t;
  type request = {
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteVoiceConnectorEmergencyCallingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteVoiceConnector = {
  type t;
  type request = {
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteVoiceConnectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSipRule = {
  type t;
  type request = {
@as("SipRuleId") sipRuleId: option<nonEmptyString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteSipRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSipMediaApplication = {
  type t;
  type request = {
@as("SipMediaApplicationId") sipMediaApplicationId: option<nonEmptyString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteSipMediaApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRoomMembership = {
  type t;
  type request = {
@as("MemberId") memberId: option<nonEmptyString>,
@as("RoomId") roomId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteRoomMembershipCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRoom = {
  type t;
  type request = {
@as("RoomId") roomId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteRoomCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteProxySession = {
  type t;
  type request = {
@as("ProxySessionId") proxySessionId: option<nonEmptyString128>,
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString128>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteProxySessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeletePhoneNumber = {
  type t;
  type request = {
@as("PhoneNumberId") phoneNumberId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeletePhoneNumberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteMeeting = {
  type t;
  type request = {
@as("MeetingId") meetingId: option<guidString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteMeetingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteEventsConfiguration = {
  type t;
  type request = {
@as("BotId") botId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteEventsConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteChannelModerator = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("ChannelModeratorArn") channelModeratorArn: option<chimeArn>,
@as("ChannelArn") channelArn: option<chimeArn>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteChannelModeratorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteChannelMessage = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("MessageId") messageId: option<messageId>,
@as("ChannelArn") channelArn: option<chimeArn>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteChannelMessageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteChannelMembership = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("MemberArn") memberArn: option<chimeArn>,
@as("ChannelArn") channelArn: option<chimeArn>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteChannelMembershipCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteChannelBan = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("MemberArn") memberArn: option<chimeArn>,
@as("ChannelArn") channelArn: option<chimeArn>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteChannelBanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteChannel = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("ChannelArn") channelArn: option<chimeArn>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAttendee = {
  type t;
  type request = {
@as("AttendeeId") attendeeId: option<guidString>,
@as("MeetingId") meetingId: option<guidString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteAttendeeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAppInstanceUser = {
  type t;
  type request = {
@as("AppInstanceUserArn") appInstanceUserArn: option<chimeArn>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteAppInstanceUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAppInstanceStreamingConfigurations = {
  type t;
  type request = {
@as("AppInstanceArn") appInstanceArn: option<chimeArn>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteAppInstanceStreamingConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAppInstanceAdmin = {
  type t;
  type request = {
@as("AppInstanceArn") appInstanceArn: option<chimeArn>,
@as("AppInstanceAdminArn") appInstanceAdminArn: option<chimeArn>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteAppInstanceAdminCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAppInstance = {
  type t;
  type request = {
@as("AppInstanceArn") appInstanceArn: option<chimeArn>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteAppInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAccount = {
  type t;
  type request = {
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMeetingDialOut = {
  type t;
  type request = {
@as("JoinToken") joinToken: option<joinTokenString>,
@as("ToPhoneNumber") toPhoneNumber: option<e164PhoneNumber>,
@as("FromPhoneNumber") fromPhoneNumber: option<e164PhoneNumber>,
@as("MeetingId") meetingId: option<guidString>
}
  type response = {
@as("TransactionId") transactionId: guidString
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateMeetingDialOutCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociatePhoneNumberWithUser = {
  type t;
  type request = {
@as("E164PhoneNumber") e164PhoneNumber: option<e164PhoneNumber>,
@as("UserId") userId: option<amazonawsString>,
@as("AccountId") accountId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "AssociatePhoneNumberWithUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateVoiceConnector = {
  type t;
  type request = {
@as("RequireEncryption") requireEncryption: option<amazonawsBoolean>,
@as("Name") name: option<voiceConnectorName>,
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  type response = {
@as("VoiceConnector") voiceConnector: voiceConnector
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateVoiceConnectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRoom = {
  type t;
  type request = {
@as("Name") name: sensitiveString,
@as("RoomId") roomId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("Room") room: room
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateRoomCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGlobalSettings = {
  type t;
  type request = {
@as("VoiceConnector") voiceConnector: option<voiceConnectorSettings>,
@as("BusinessCalling") businessCalling: option<businessCallingSettings>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateGlobalSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateBot = {
  type t;
  type request = {
@as("Disabled") disabled: nullableBoolean,
@as("BotId") botId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("Bot") bot: bot
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateBotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAccountSettings = {
  type t;
  type request = {
@as("AccountSettings") accountSettings: option<accountSettings>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateAccountSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceARN") resourceARN: option<arn>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagMeeting = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<meetingTagKeyList>,
@as("MeetingId") meetingId: option<guidString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UntagMeetingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagAttendee = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<attendeeTagKeyList>,
@as("AttendeeId") attendeeId: option<guidString>,
@as("MeetingId") meetingId: option<guidString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UntagAttendeeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SearchAvailablePhoneNumbers = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: phoneNumberMaxResults,
@as("PhoneNumberType") phoneNumberType: phoneNumberType,
@as("TollFreePrefix") tollFreePrefix: tollFreePrefix,
@as("State") state: amazonawsString,
@as("Country") country: alpha2CountryCode,
@as("City") city: amazonawsString,
@as("AreaCode") areaCode: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("E164PhoneNumbers") e164PhoneNumbers: e164PhoneNumberList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "SearchAvailablePhoneNumbersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegenerateSecurityToken = {
  type t;
  type request = {
@as("BotId") botId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("Bot") bot: bot
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "RegenerateSecurityTokenCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutVoiceConnectorLoggingConfiguration = {
  type t;
  type request = {
@as("LoggingConfiguration") loggingConfiguration: option<loggingConfiguration>,
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  type response = {
@as("LoggingConfiguration") loggingConfiguration: loggingConfiguration
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "PutVoiceConnectorLoggingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutSipMediaApplicationLoggingConfiguration = {
  type t;
  type request = {
@as("SipMediaApplicationLoggingConfiguration") sipMediaApplicationLoggingConfiguration: sipMediaApplicationLoggingConfiguration,
@as("SipMediaApplicationId") sipMediaApplicationId: option<nonEmptyString>
}
  type response = {
@as("SipMediaApplicationLoggingConfiguration") sipMediaApplicationLoggingConfiguration: sipMediaApplicationLoggingConfiguration
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "PutSipMediaApplicationLoggingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutEventsConfiguration = {
  type t;
  type request = {
@as("LambdaFunctionArn") lambdaFunctionArn: sensitiveString,
@as("OutboundEventsHTTPSEndpoint") outboundEventsHTTPSEndpoint: sensitiveString,
@as("BotId") botId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("EventsConfiguration") eventsConfiguration: eventsConfiguration
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "PutEventsConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVoiceConnectorTerminationCredentials = {
  type t;
  type request = {
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  type response = {
@as("Usernames") usernames: sensitiveStringList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListVoiceConnectorTerminationCredentialsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVoiceConnectorTerminationHealth = {
  type t;
  type request = {
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  type response = {
@as("TerminationHealth") terminationHealth: terminationHealth
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetVoiceConnectorTerminationHealthCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVoiceConnectorLoggingConfiguration = {
  type t;
  type request = {
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  type response = {
@as("LoggingConfiguration") loggingConfiguration: loggingConfiguration
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetVoiceConnectorLoggingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVoiceConnector = {
  type t;
  type request = {
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  type response = {
@as("VoiceConnector") voiceConnector: voiceConnector
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetVoiceConnectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSipMediaApplicationLoggingConfiguration = {
  type t;
  type request = {
@as("SipMediaApplicationId") sipMediaApplicationId: option<nonEmptyString>
}
  type response = {
@as("SipMediaApplicationLoggingConfiguration") sipMediaApplicationLoggingConfiguration: sipMediaApplicationLoggingConfiguration
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetSipMediaApplicationLoggingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRoom = {
  type t;
  type request = {
@as("RoomId") roomId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("Room") room: room
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetRoomCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMessagingSessionEndpoint = {
  type t;
  type request = unit
  type response = {
@as("Endpoint") endpoint: messagingSessionEndpoint
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetMessagingSessionEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGlobalSettings = {
  type t;
  
  type response = {
@as("VoiceConnector") voiceConnector: voiceConnectorSettings,
@as("BusinessCalling") businessCalling: businessCallingSettings
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<unit>) => t = "GetGlobalSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEventsConfiguration = {
  type t;
  type request = {
@as("BotId") botId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("EventsConfiguration") eventsConfiguration: eventsConfiguration
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetEventsConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBot = {
  type t;
  type request = {
@as("BotId") botId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("Bot") bot: bot
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetBotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAttendee = {
  type t;
  type request = {
@as("AttendeeId") attendeeId: option<guidString>,
@as("MeetingId") meetingId: option<guidString>
}
  type response = {
@as("Attendee") attendee: attendee
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetAttendeeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccountSettings = {
  type t;
  type request = {
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("AccountSettings") accountSettings: accountSettings
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetAccountSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateSigninDelegateGroupsFromAccount = {
  type t;
  type request = {
@as("GroupNames") groupNames: option<nonEmptyStringList>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DisassociateSigninDelegateGroupsFromAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAppInstanceUser = {
  type t;
  type request = {
@as("AppInstanceUserArn") appInstanceUserArn: option<chimeArn>
}
  type response = {
@as("AppInstanceUser") appInstanceUser: appInstanceUser
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DescribeAppInstanceUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAppInstance = {
  type t;
  type request = {
@as("AppInstanceArn") appInstanceArn: option<chimeArn>
}
  type response = {
@as("AppInstance") appInstance: appInstance
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DescribeAppInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVoiceConnectorTerminationCredentials = {
  type t;
  type request = {
@as("Usernames") usernames: option<sensitiveStringList>,
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DeleteVoiceConnectorTerminationCredentialsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateVoiceConnector = {
  type t;
  type request = {
@as("RequireEncryption") requireEncryption: option<amazonawsBoolean>,
@as("AwsRegion") awsRegion: voiceConnectorAwsRegion,
@as("Name") name: option<voiceConnectorName>
}
  type response = {
@as("VoiceConnector") voiceConnector: voiceConnector
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateVoiceConnectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSipMediaApplicationCall = {
  type t;
  type request = {
@as("SipMediaApplicationId") sipMediaApplicationId: option<nonEmptyString>,
@as("ToPhoneNumber") toPhoneNumber: option<e164PhoneNumber>,
@as("FromPhoneNumber") fromPhoneNumber: option<e164PhoneNumber>
}
  type response = {
@as("SipMediaApplicationCall") sipMediaApplicationCall: sipMediaApplicationCall
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateSipMediaApplicationCallCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRoom = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Name") name: option<sensitiveString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("Room") room: room
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateRoomCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateChannelModerator = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("ChannelModeratorArn") channelModeratorArn: option<chimeArn>,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("ChannelModerator") channelModerator: identity,
@as("ChannelArn") channelArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateChannelModeratorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateChannelMembership = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("Type") type_: option<channelMembershipType>,
@as("MemberArn") memberArn: option<chimeArn>,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("Member") member: identity,
@as("ChannelArn") channelArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateChannelMembershipCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateChannelBan = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("MemberArn") memberArn: option<chimeArn>,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("Member") member: identity,
@as("ChannelArn") channelArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateChannelBanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBot = {
  type t;
  type request = {
@as("Domain") domain: nonEmptyString,
@as("DisplayName") displayName: option<sensitiveString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("Bot") bot: bot
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateBotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAppInstanceAdmin = {
  type t;
  type request = {
@as("AppInstanceArn") appInstanceArn: option<chimeArn>,
@as("AppInstanceAdminArn") appInstanceAdminArn: option<chimeArn>
}
  type response = {
@as("AppInstanceArn") appInstanceArn: chimeArn,
@as("AppInstanceAdmin") appInstanceAdmin: identity
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateAppInstanceAdminCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateUserSettings = {
  type t;
  type request = {
@as("UserSettings") userSettings: option<userSettings>,
@as("UserId") userId: option<amazonawsString>,
@as("AccountId") accountId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateUserSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateUser = {
  type t;
  type request = {
@as("AlexaForBusinessMetadata") alexaForBusinessMetadata: alexaForBusinessMetadata,
@as("UserType") userType: userType,
@as("LicenseType") licenseType: license,
@as("UserId") userId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("User") user: user
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRoomMembership = {
  type t;
  type request = {
@as("Role") role: roomMembershipRole,
@as("MemberId") memberId: option<nonEmptyString>,
@as("RoomId") roomId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("RoomMembership") roomMembership: roomMembership
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateRoomMembershipCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceARN") resourceARN: option<arn>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagMeeting = {
  type t;
  type request = {
@as("Tags") tags: option<meetingTagList>,
@as("MeetingId") meetingId: option<guidString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "TagMeetingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagAttendee = {
  type t;
  type request = {
@as("Tags") tags: option<attendeeTagList>,
@as("AttendeeId") attendeeId: option<guidString>,
@as("MeetingId") meetingId: option<guidString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "TagAttendeeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ResetPersonalPIN = {
  type t;
  type request = {
@as("UserId") userId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("User") user: user
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ResetPersonalPINCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutVoiceConnectorTerminationCredentials = {
  type t;
  type request = {
@as("Credentials") credentials: credentialList,
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "PutVoiceConnectorTerminationCredentialsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutVoiceConnectorTermination = {
  type t;
  type request = {
@as("Termination") termination: option<termination>,
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  type response = {
@as("Termination") termination: termination
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "PutVoiceConnectorTerminationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutVoiceConnectorProxy = {
  type t;
  type request = {
@as("Disabled") disabled: amazonawsBoolean,
@as("FallBackPhoneNumber") fallBackPhoneNumber: e164PhoneNumber,
@as("PhoneNumberPoolCountries") phoneNumberPoolCountries: option<countryList>,
@as("DefaultSessionExpiryMinutes") defaultSessionExpiryMinutes: option<amazonawsInteger>,
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString128>
}
  type response = {
@as("Proxy") proxy: proxy
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "PutVoiceConnectorProxyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutRetentionSettings = {
  type t;
  type request = {
@as("RetentionSettings") retentionSettings: option<retentionSettings>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("InitiateDeletionTimestamp") initiateDeletionTimestamp: iso8601Timestamp,
@as("RetentionSettings") retentionSettings: retentionSettings
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "PutRetentionSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAppInstanceStreamingConfigurations = {
  type t;
  type request = {
@as("AppInstanceStreamingConfigurations") appInstanceStreamingConfigurations: option<appInstanceStreamingConfigurationList>,
@as("AppInstanceArn") appInstanceArn: option<chimeArn>
}
  type response = {
@as("AppInstanceStreamingConfigurations") appInstanceStreamingConfigurations: appInstanceStreamingConfigurationList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "PutAppInstanceStreamingConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAppInstanceRetentionSettings = {
  type t;
  type request = {
@as("AppInstanceRetentionSettings") appInstanceRetentionSettings: option<appInstanceRetentionSettings>,
@as("AppInstanceArn") appInstanceArn: option<chimeArn>
}
  type response = {
@as("InitiateDeletionTimestamp") initiateDeletionTimestamp: amazonawsTimestamp,
@as("AppInstanceRetentionSettings") appInstanceRetentionSettings: appInstanceRetentionSettings
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "PutAppInstanceRetentionSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVoiceConnectors = {
  type t;
  type request = {
@as("MaxResults") maxResults: resultMax,
@as("NextToken") nextToken: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("VoiceConnectors") voiceConnectors: voiceConnectorList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListVoiceConnectorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: option<arn>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRooms = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: resultMax,
@as("MemberId") memberId: amazonawsString,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Rooms") rooms: roomList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListRoomsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMeetingTags = {
  type t;
  type request = {
@as("MeetingId") meetingId: option<guidString>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListMeetingTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListChannels = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("Privacy") privacy: channelPrivacy,
@as("AppInstanceArn") appInstanceArn: option<chimeArn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Channels") channels: channelSummaryList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListChannelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBots = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: resultMax,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Bots") bots: botList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListBotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAttendees = {
  type t;
  type request = {
@as("MaxResults") maxResults: resultMax,
@as("NextToken") nextToken: amazonawsString,
@as("MeetingId") meetingId: option<guidString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Attendees") attendees: attendeeList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListAttendeesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAttendeeTags = {
  type t;
  type request = {
@as("AttendeeId") attendeeId: option<guidString>,
@as("MeetingId") meetingId: option<guidString>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListAttendeeTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAppInstances = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AppInstances") appInstances: appInstanceList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListAppInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAppInstanceUsers = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("AppInstanceArn") appInstanceArn: option<chimeArn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AppInstanceUsers") appInstanceUsers: appInstanceUserList,
@as("AppInstanceArn") appInstanceArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListAppInstanceUsersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InviteUsers = {
  type t;
  type request = {
@as("UserType") userType: userType,
@as("UserEmailList") userEmailList: option<userEmailList>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("Invites") invites: inviteList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "InviteUsersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVoiceConnectorTermination = {
  type t;
  type request = {
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  type response = {
@as("Termination") termination: termination
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetVoiceConnectorTerminationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVoiceConnectorProxy = {
  type t;
  type request = {
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString128>
}
  type response = {
@as("Proxy") proxy: proxy
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetVoiceConnectorProxyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUserSettings = {
  type t;
  type request = {
@as("UserId") userId: option<amazonawsString>,
@as("AccountId") accountId: option<amazonawsString>
}
  type response = {
@as("UserSettings") userSettings: userSettings
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetUserSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUser = {
  type t;
  type request = {
@as("UserId") userId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("User") user: user
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRetentionSettings = {
  type t;
  type request = {
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("InitiateDeletionTimestamp") initiateDeletionTimestamp: iso8601Timestamp,
@as("RetentionSettings") retentionSettings: retentionSettings
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetRetentionSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMeeting = {
  type t;
  type request = {
@as("MeetingId") meetingId: option<guidString>
}
  type response = {
@as("Meeting") meeting: meeting
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetMeetingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetChannelMessage = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("MessageId") messageId: option<messageId>,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("ChannelMessage") channelMessage: channelMessage
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetChannelMessageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAppInstanceStreamingConfigurations = {
  type t;
  type request = {
@as("AppInstanceArn") appInstanceArn: option<chimeArn>
}
  type response = {
@as("AppInstanceStreamingConfigurations") appInstanceStreamingConfigurations: appInstanceStreamingConfigurationList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetAppInstanceStreamingConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAppInstanceRetentionSettings = {
  type t;
  type request = {
@as("AppInstanceArn") appInstanceArn: option<chimeArn>
}
  type response = {
@as("InitiateDeletionTimestamp") initiateDeletionTimestamp: amazonawsTimestamp,
@as("AppInstanceRetentionSettings") appInstanceRetentionSettings: appInstanceRetentionSettings
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetAppInstanceRetentionSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociatePhoneNumbersFromVoiceConnectorGroup = {
  type t;
  type request = {
@as("E164PhoneNumbers") e164PhoneNumbers: option<e164PhoneNumberList>,
@as("VoiceConnectorGroupId") voiceConnectorGroupId: option<nonEmptyString>
}
  type response = {
@as("PhoneNumberErrors") phoneNumberErrors: phoneNumberErrorList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DisassociatePhoneNumbersFromVoiceConnectorGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociatePhoneNumbersFromVoiceConnector = {
  type t;
  type request = {
@as("E164PhoneNumbers") e164PhoneNumbers: option<e164PhoneNumberList>,
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  type response = {
@as("PhoneNumberErrors") phoneNumberErrors: phoneNumberErrorList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DisassociatePhoneNumbersFromVoiceConnectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeChannelModerator = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("ChannelModeratorArn") channelModeratorArn: option<chimeArn>,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("ChannelModerator") channelModerator: channelModerator
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DescribeChannelModeratorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeChannelModeratedByAppInstanceUser = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("AppInstanceUserArn") appInstanceUserArn: option<chimeArn>,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("Channel") channel: channelModeratedByAppInstanceUserSummary
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DescribeChannelModeratedByAppInstanceUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeChannelMembershipForAppInstanceUser = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("AppInstanceUserArn") appInstanceUserArn: option<chimeArn>,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("ChannelMembership") channelMembership: channelMembershipForAppInstanceUserSummary
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DescribeChannelMembershipForAppInstanceUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeChannelMembership = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("MemberArn") memberArn: option<chimeArn>,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("ChannelMembership") channelMembership: channelMembership
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DescribeChannelMembershipCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeChannelBan = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("MemberArn") memberArn: option<chimeArn>,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("ChannelBan") channelBan: channelBan
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DescribeChannelBanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeChannel = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("Channel") channel: channel
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DescribeChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAppInstanceAdmin = {
  type t;
  type request = {
@as("AppInstanceArn") appInstanceArn: option<chimeArn>,
@as("AppInstanceAdminArn") appInstanceAdminArn: option<chimeArn>
}
  type response = {
@as("AppInstanceAdmin") appInstanceAdmin: appInstanceAdmin
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "DescribeAppInstanceAdminCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUser = {
  type t;
  type request = {
@as("UserType") userType: userType,
@as("Email") email: emailAddress,
@as("Username") username: amazonawsString,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("User") user: user
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRoomMembership = {
  type t;
  type request = {
@as("Role") role: roomMembershipRole,
@as("MemberId") memberId: option<nonEmptyString>,
@as("RoomId") roomId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("RoomMembership") roomMembership: roomMembership
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateRoomMembershipCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMeeting = {
  type t;
  type request = {
@as("NotificationsConfiguration") notificationsConfiguration: meetingNotificationConfiguration,
@as("Tags") tags: meetingTagList,
@as("MediaRegion") mediaRegion: amazonawsString,
@as("MeetingHostId") meetingHostId: externalUserIdType,
@as("ExternalMeetingId") externalMeetingId: externalMeetingIdType,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>
}
  type response = {
@as("Meeting") meeting: meeting
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateMeetingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateChannel = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("Tags") tags: tagList,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("Metadata") metadata: metadata,
@as("Privacy") privacy: channelPrivacy,
@as("Mode") mode: channelMode,
@as("Name") name: option<nonEmptyResourceName>,
@as("AppInstanceArn") appInstanceArn: option<chimeArn>
}
  type response = {
@as("ChannelArn") channelArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAttendee = {
  type t;
  type request = {
@as("Tags") tags: attendeeTagList,
@as("ExternalUserId") externalUserId: option<externalUserIdType>,
@as("MeetingId") meetingId: option<guidString>
}
  type response = {
@as("Attendee") attendee: attendee
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateAttendeeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAppInstanceUser = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("Metadata") metadata: metadata,
@as("Name") name: option<userName>,
@as("AppInstanceUserId") appInstanceUserId: option<userId>,
@as("AppInstanceArn") appInstanceArn: option<chimeArn>
}
  type response = {
@as("AppInstanceUserArn") appInstanceUserArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateAppInstanceUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAppInstance = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("Metadata") metadata: metadata,
@as("Name") name: option<nonEmptyResourceName>
}
  type response = {
@as("AppInstanceArn") appInstanceArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateAppInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchUpdatePhoneNumber = {
  type t;
  type request = {
@as("UpdatePhoneNumberRequestItems") updatePhoneNumberRequestItems: option<updatePhoneNumberRequestItemList>
}
  type response = {
@as("PhoneNumberErrors") phoneNumberErrors: phoneNumberErrorList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "BatchUpdatePhoneNumberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchUnsuspendUser = {
  type t;
  type request = {
@as("UserIdList") userIdList: option<userIdList>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("UserErrors") userErrors: userErrorList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "BatchUnsuspendUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchSuspendUser = {
  type t;
  type request = {
@as("UserIdList") userIdList: option<userIdList>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("UserErrors") userErrors: userErrorList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "BatchSuspendUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDeletePhoneNumber = {
  type t;
  type request = {
@as("PhoneNumberIds") phoneNumberIds: option<nonEmptyStringList>
}
  type response = {
@as("PhoneNumberErrors") phoneNumberErrors: phoneNumberErrorList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "BatchDeletePhoneNumberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchCreateRoomMembership = {
  type t;
  type request = {
@as("MembershipItemList") membershipItemList: option<membershipItemList>,
@as("RoomId") roomId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("Errors") errors: memberErrorList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "BatchCreateRoomMembershipCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateSigninDelegateGroupsWithAccount = {
  type t;
  type request = {
@as("SigninDelegateGroups") signinDelegateGroups: option<signinDelegateGroupList>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "AssociateSigninDelegateGroupsWithAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociatePhoneNumbersWithVoiceConnectorGroup = {
  type t;
  type request = {
@as("ForceAssociate") forceAssociate: nullableBoolean,
@as("E164PhoneNumbers") e164PhoneNumbers: option<e164PhoneNumberList>,
@as("VoiceConnectorGroupId") voiceConnectorGroupId: option<nonEmptyString>
}
  type response = {
@as("PhoneNumberErrors") phoneNumberErrors: phoneNumberErrorList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "AssociatePhoneNumbersWithVoiceConnectorGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociatePhoneNumbersWithVoiceConnector = {
  type t;
  type request = {
@as("ForceAssociate") forceAssociate: nullableBoolean,
@as("E164PhoneNumbers") e164PhoneNumbers: option<e164PhoneNumberList>,
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  type response = {
@as("PhoneNumberErrors") phoneNumberErrors: phoneNumberErrorList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "AssociatePhoneNumbersWithVoiceConnectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateVoiceConnectorGroup = {
  type t;
  type request = {
@as("VoiceConnectorItems") voiceConnectorItems: option<voiceConnectorItemList>,
@as("Name") name: option<voiceConnectorGroupName>,
@as("VoiceConnectorGroupId") voiceConnectorGroupId: option<nonEmptyString>
}
  type response = {
@as("VoiceConnectorGroup") voiceConnectorGroup: voiceConnectorGroup
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateVoiceConnectorGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSipRule = {
  type t;
  type request = {
@as("TargetApplications") targetApplications: sipRuleTargetApplicationList,
@as("Disabled") disabled: nullableBoolean,
@as("Name") name: option<sipRuleName>,
@as("SipRuleId") sipRuleId: option<nonEmptyString>
}
  type response = {
@as("SipRule") sipRule: sipRule
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateSipRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSipMediaApplication = {
  type t;
  type request = {
@as("Endpoints") endpoints: sipMediaApplicationEndpointList,
@as("Name") name: sipMediaApplicationName,
@as("SipMediaApplicationId") sipMediaApplicationId: option<nonEmptyString>
}
  type response = {
@as("SipMediaApplication") sipMediaApplication: sipMediaApplication
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateSipMediaApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateProxySession = {
  type t;
  type request = {
@as("ExpiryMinutes") expiryMinutes: positiveInteger,
@as("Capabilities") capabilities: option<capabilityList>,
@as("ProxySessionId") proxySessionId: option<nonEmptyString128>,
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString128>
}
  type response = {
@as("ProxySession") proxySession: proxySession
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateProxySessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePhoneNumber = {
  type t;
  type request = {
@as("CallingName") callingName: callingName,
@as("ProductType") productType: phoneNumberProductType,
@as("PhoneNumberId") phoneNumberId: option<amazonawsString>
}
  type response = {
@as("PhoneNumber") phoneNumber: phoneNumber
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdatePhoneNumberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAccount = {
  type t;
  type request = {
@as("Name") name: accountName,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("Account") account: account
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "UpdateAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestorePhoneNumber = {
  type t;
  type request = {
@as("PhoneNumberId") phoneNumberId: option<nonEmptyString>
}
  type response = {
@as("PhoneNumber") phoneNumber: phoneNumber
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "RestorePhoneNumberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutVoiceConnectorStreamingConfiguration = {
  type t;
  type request = {
@as("StreamingConfiguration") streamingConfiguration: option<streamingConfiguration>,
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  type response = {
@as("StreamingConfiguration") streamingConfiguration: streamingConfiguration
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "PutVoiceConnectorStreamingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutVoiceConnectorOrigination = {
  type t;
  type request = {
@as("Origination") origination: option<origination>,
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  type response = {
@as("Origination") origination: origination
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "PutVoiceConnectorOriginationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutVoiceConnectorEmergencyCallingConfiguration = {
  type t;
  type request = {
@as("EmergencyCallingConfiguration") emergencyCallingConfiguration: option<emergencyCallingConfiguration>,
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  type response = {
@as("EmergencyCallingConfiguration") emergencyCallingConfiguration: emergencyCallingConfiguration
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "PutVoiceConnectorEmergencyCallingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListUsers = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: profileServiceMaxResults,
@as("UserType") userType: userType,
@as("UserEmail") userEmail: emailAddress,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Users") users: userList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListUsersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSupportedPhoneNumberCountries = {
  type t;
  type request = {
@as("ProductType") productType: option<phoneNumberProductType>
}
  type response = {
@as("PhoneNumberCountries") phoneNumberCountries: phoneNumberCountriesList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListSupportedPhoneNumberCountriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRoomMemberships = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: resultMax,
@as("RoomId") roomId: option<nonEmptyString>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("RoomMemberships") roomMemberships: roomMembershipList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListRoomMembershipsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMeetings = {
  type t;
  type request = {
@as("MaxResults") maxResults: resultMax,
@as("NextToken") nextToken: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Meetings") meetings: meetingList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListMeetingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListChannelsModeratedByAppInstanceUser = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("AppInstanceUserArn") appInstanceUserArn: chimeArn
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Channels") channels: channelModeratedByAppInstanceUserSummaryList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListChannelsModeratedByAppInstanceUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListChannelModerators = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("ChannelModerators") channelModerators: channelModeratorSummaryList,
@as("NextToken") nextToken: nextToken,
@as("ChannelArn") channelArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListChannelModeratorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListChannelMessages = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("NotAfter") notAfter: amazonawsTimestamp,
@as("NotBefore") notBefore: amazonawsTimestamp,
@as("SortOrder") sortOrder: sortOrder,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("ChannelMessages") channelMessages: channelMessageSummaryList,
@as("NextToken") nextToken: nextToken,
@as("ChannelArn") channelArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListChannelMessagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListChannelMembershipsForAppInstanceUser = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("AppInstanceUserArn") appInstanceUserArn: chimeArn
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ChannelMemberships") channelMemberships: channelMembershipForAppInstanceUserSummaryList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListChannelMembershipsForAppInstanceUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListChannelMemberships = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("Type") type_: channelMembershipType,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ChannelMemberships") channelMemberships: channelMembershipSummaryList,
@as("ChannelArn") channelArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListChannelMembershipsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListChannelBans = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("ChannelBans") channelBans: channelBanSummaryList,
@as("NextToken") nextToken: nextToken,
@as("ChannelArn") channelArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListChannelBansCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAppInstanceAdmins = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("AppInstanceArn") appInstanceArn: option<chimeArn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AppInstanceAdmins") appInstanceAdmins: appInstanceAdminList,
@as("AppInstanceArn") appInstanceArn: chimeArn
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListAppInstanceAdminsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVoiceConnectorStreamingConfiguration = {
  type t;
  type request = {
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  type response = {
@as("StreamingConfiguration") streamingConfiguration: streamingConfiguration
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetVoiceConnectorStreamingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVoiceConnectorOrigination = {
  type t;
  type request = {
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  type response = {
@as("Origination") origination: origination
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetVoiceConnectorOriginationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVoiceConnectorGroup = {
  type t;
  type request = {
@as("VoiceConnectorGroupId") voiceConnectorGroupId: option<nonEmptyString>
}
  type response = {
@as("VoiceConnectorGroup") voiceConnectorGroup: voiceConnectorGroup
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetVoiceConnectorGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVoiceConnectorEmergencyCallingConfiguration = {
  type t;
  type request = {
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString>
}
  type response = {
@as("EmergencyCallingConfiguration") emergencyCallingConfiguration: emergencyCallingConfiguration
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetVoiceConnectorEmergencyCallingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSipRule = {
  type t;
  type request = {
@as("SipRuleId") sipRuleId: option<nonEmptyString>
}
  type response = {
@as("SipRule") sipRule: sipRule
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetSipRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSipMediaApplication = {
  type t;
  type request = {
@as("SipMediaApplicationId") sipMediaApplicationId: option<nonEmptyString>
}
  type response = {
@as("SipMediaApplication") sipMediaApplication: sipMediaApplication
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetSipMediaApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetProxySession = {
  type t;
  type request = {
@as("ProxySessionId") proxySessionId: option<nonEmptyString128>,
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString128>
}
  type response = {
@as("ProxySession") proxySession: proxySession
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetProxySessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPhoneNumberOrder = {
  type t;
  type request = {
@as("PhoneNumberOrderId") phoneNumberOrderId: option<guidString>
}
  type response = {
@as("PhoneNumberOrder") phoneNumberOrder: phoneNumberOrder
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetPhoneNumberOrderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPhoneNumber = {
  type t;
  type request = {
@as("PhoneNumberId") phoneNumberId: option<amazonawsString>
}
  type response = {
@as("PhoneNumber") phoneNumber: phoneNumber
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetPhoneNumberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccount = {
  type t;
  type request = {
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("Account") account: account
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "GetAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVoiceConnectorGroup = {
  type t;
  type request = {
@as("VoiceConnectorItems") voiceConnectorItems: voiceConnectorItemList,
@as("Name") name: option<voiceConnectorGroupName>
}
  type response = {
@as("VoiceConnectorGroup") voiceConnectorGroup: voiceConnectorGroup
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateVoiceConnectorGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSipRule = {
  type t;
  type request = {
@as("TargetApplications") targetApplications: option<sipRuleTargetApplicationList>,
@as("Disabled") disabled: nullableBoolean,
@as("TriggerValue") triggerValue: option<nonEmptyString>,
@as("TriggerType") triggerType: option<sipRuleTriggerType>,
@as("Name") name: option<sipRuleName>
}
  type response = {
@as("SipRule") sipRule: sipRule
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateSipRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSipMediaApplication = {
  type t;
  type request = {
@as("Endpoints") endpoints: option<sipMediaApplicationEndpointList>,
@as("Name") name: option<sipMediaApplicationName>,
@as("AwsRegion") awsRegion: option<amazonawsString>
}
  type response = {
@as("SipMediaApplication") sipMediaApplication: sipMediaApplication
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateSipMediaApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProxySession = {
  type t;
  type request = {
@as("GeoMatchParams") geoMatchParams: geoMatchParams,
@as("GeoMatchLevel") geoMatchLevel: geoMatchLevel,
@as("NumberSelectionBehavior") numberSelectionBehavior: numberSelectionBehavior,
@as("Capabilities") capabilities: option<capabilityList>,
@as("ExpiryMinutes") expiryMinutes: positiveInteger,
@as("Name") name: proxySessionNameString,
@as("ParticipantPhoneNumbers") participantPhoneNumbers: option<participantPhoneNumberList>,
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString128>
}
  type response = {
@as("ProxySession") proxySession: proxySession
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateProxySessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePhoneNumberOrder = {
  type t;
  type request = {
@as("E164PhoneNumbers") e164PhoneNumbers: option<e164PhoneNumberList>,
@as("ProductType") productType: option<phoneNumberProductType>
}
  type response = {
@as("PhoneNumberOrder") phoneNumberOrder: phoneNumberOrder
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreatePhoneNumberOrderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAccount = {
  type t;
  type request = {
@as("Name") name: option<accountName>
}
  type response = {
@as("Account") account: account
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchUpdateUser = {
  type t;
  type request = {
@as("UpdateUserRequestItems") updateUserRequestItems: option<updateUserRequestItemList>,
@as("AccountId") accountId: option<nonEmptyString>
}
  type response = {
@as("UserErrors") userErrors: userErrorList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "BatchUpdateUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchCreateChannelMembership = {
  type t;
  type request = {
@as("ChimeBearer") chimeBearer: chimeArn,
@as("MemberArns") memberArns: option<memberArns>,
@as("Type") type_: channelMembershipType,
@as("ChannelArn") channelArn: option<chimeArn>
}
  type response = {
@as("Errors") errors: batchCreateChannelMembershipErrors,
@as("BatchChannelMemberships") batchChannelMemberships: batchChannelMemberships
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "BatchCreateChannelMembershipCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVoiceConnectorGroups = {
  type t;
  type request = {
@as("MaxResults") maxResults: resultMax,
@as("NextToken") nextToken: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("VoiceConnectorGroups") voiceConnectorGroups: voiceConnectorGroupList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListVoiceConnectorGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSipRules = {
  type t;
  type request = {
@as("NextToken") nextToken: nextTokenString,
@as("MaxResults") maxResults: resultMax,
@as("SipMediaApplicationId") sipMediaApplicationId: nonEmptyString
}
  type response = {
@as("NextToken") nextToken: nextTokenString,
@as("SipRules") sipRules: sipRuleList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListSipRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSipMediaApplications = {
  type t;
  type request = {
@as("NextToken") nextToken: nextTokenString,
@as("MaxResults") maxResults: resultMax
}
  type response = {
@as("NextToken") nextToken: nextTokenString,
@as("SipMediaApplications") sipMediaApplications: sipMediaApplicationList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListSipMediaApplicationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProxySessions = {
  type t;
  type request = {
@as("MaxResults") maxResults: resultMax,
@as("NextToken") nextToken: nextTokenString,
@as("Status") status: proxySessionStatus,
@as("VoiceConnectorId") voiceConnectorId: option<nonEmptyString128>
}
  type response = {
@as("NextToken") nextToken: nextTokenString,
@as("ProxySessions") proxySessions: proxySessions
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListProxySessionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPhoneNumbers = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: resultMax,
@as("FilterValue") filterValue: amazonawsString,
@as("FilterName") filterName: phoneNumberAssociationName,
@as("ProductType") productType: phoneNumberProductType,
@as("Status") status: phoneNumberStatus
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("PhoneNumbers") phoneNumbers: phoneNumberList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListPhoneNumbersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPhoneNumberOrders = {
  type t;
  type request = {
@as("MaxResults") maxResults: resultMax,
@as("NextToken") nextToken: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("PhoneNumberOrders") phoneNumberOrders: phoneNumberOrderList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListPhoneNumberOrdersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccounts = {
  type t;
  type request = {
@as("MaxResults") maxResults: profileServiceMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("UserEmail") userEmail: emailAddress,
@as("Name") name: accountName
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Accounts") accounts: accountList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "ListAccountsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMeetingWithAttendees = {
  type t;
  type request = {
@as("Attendees") attendees: createMeetingWithAttendeesRequestItemList,
@as("NotificationsConfiguration") notificationsConfiguration: meetingNotificationConfiguration,
@as("Tags") tags: meetingTagList,
@as("MediaRegion") mediaRegion: amazonawsString,
@as("MeetingHostId") meetingHostId: externalUserIdType,
@as("ExternalMeetingId") externalMeetingId: externalMeetingIdType,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>
}
  type response = {
@as("Errors") errors: batchCreateAttendeeErrorList,
@as("Attendees") attendees: attendeeList,
@as("Meeting") meeting: meeting
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "CreateMeetingWithAttendeesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchCreateAttendee = {
  type t;
  type request = {
@as("Attendees") attendees: option<createAttendeeRequestItemList>,
@as("MeetingId") meetingId: option<guidString>
}
  type response = {
@as("Errors") errors: batchCreateAttendeeErrorList,
@as("Attendees") attendees: attendeeList
}
  @module("@aws-sdk/client-chime") @new external new_: (Js.Promise.t<request>) => t = "BatchCreateAttendeeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
