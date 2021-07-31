type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type voiceRecordingTrack = [@as("ALL") #ALL | @as("TO_AGENT") #TO_AGENT | @as("FROM_AGENT") #FROM_AGENT]
type value = float;
type userId = string
type useCaseType = [@as("RULES_EVALUATION") #RULES_EVALUATION]
type useCaseId = string
type unit_ = [@as("PERCENT") #PERCENT | @as("COUNT") #COUNT | @as("SECONDS") #SECONDS]
type uRI = string
type amazonawsTimestamp = Js.Date.t;
type timeZone = string
type thresholdValue = float;
type tagValue = string
type tagKey = string
type amazonawsString = string
type storageType = [@as("KINESIS_FIREHOSE") #KINESIS_FIREHOSE | @as("KINESIS_STREAM") #KINESIS_STREAM | @as("KINESIS_VIDEO_STREAM") #KINESIS_VIDEO_STREAM | @as("S3") #S3]
type statistic = [@as("AVG") #AVG | @as("MAX") #MAX | @as("SUM") #SUM]
type sourceType = [@as("ZENDESK") #ZENDESK | @as("SALESFORCE") #SALESFORCE]
type sourceApplicationName = string
type securityToken = string
type securityProfileName = string
type securityProfileId = string
type routingProfileName = string
type routingProfileId = string
type routingProfileDescription = string
type resourceType = [@as("USER") #USER | @as("HIERARCHY_GROUP") #HIERARCHY_GROUP | @as("HIERARCHY_LEVEL") #HIERARCHY_LEVEL | @as("PARTICIPANT") #PARTICIPANT | @as("INSTANCE") #INSTANCE | @as("CONTACT_FLOW") #CONTACT_FLOW | @as("CONTACT") #CONTACT]
type referenceValue = string
type referenceType = [@as("URL") #URL]
type referenceKey = string
type quickConnectType = [@as("PHONE_NUMBER") #PHONE_NUMBER | @as("QUEUE") #QUEUE | @as("USER") #USER]
type quickConnectName = string
type quickConnectId = string
type quickConnectDescription = string
type queueType = [@as("AGENT") #AGENT | @as("STANDARD") #STANDARD]
type queueStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type queueName = string
type queueMaxContacts = int;
type queueId = string
type queueDescription = string
type promptName = string
type promptId = string
type problemMessageString = string
type priority = int;
type prefix = string
type phoneType = [@as("DESK_PHONE") #DESK_PHONE | @as("SOFT_PHONE") #SOFT_PHONE]
type phoneNumberType = [@as("DID") #DID | @as("TOLL_FREE") #TOLL_FREE]
type phoneNumberId = string
type phoneNumberCountryCode = [@as("ZW") #ZW | @as("ZM") #ZM | @as("YE") #YE | @as("EH") #EH | @as("WF") #WF | @as("VN") #VN | @as("VE") #VE | @as("VA") #VA | @as("VU") #VU | @as("UZ") #UZ | @as("UY") #UY | @as("US") #US | @as("GB") #GB | @as("AE") #AE | @as("UA") #UA | @as("UG") #UG | @as("VI") #VI | @as("TV") #TV | @as("TC") #TC | @as("TM") #TM | @as("TR") #TR | @as("TN") #TN | @as("TT") #TT | @as("TO") #TO | @as("TK") #TK | @as("TG") #TG | @as("TH") #TH | @as("TZ") #TZ | @as("TJ") #TJ | @as("TW") #TW | @as("SY") #SY | @as("CH") #CH | @as("SE") #SE | @as("SZ") #SZ | @as("SJ") #SJ | @as("SR") #SR | @as("SD") #SD | @as("LK") #LK | @as("ES") #ES | @as("KR") #KR | @as("ZA") #ZA | @as("SO") #SO | @as("SB") #SB | @as("SI") #SI | @as("SK") #SK | @as("SX") #SX | @as("SG") #SG | @as("SL") #SL | @as("SC") #SC | @as("RS") #RS | @as("SN") #SN | @as("SA") #SA | @as("ST") #ST | @as("SM") #SM | @as("WS") #WS | @as("VC") #VC | @as("PM") #PM | @as("MF") #MF | @as("LC") #LC | @as("KN") #KN | @as("SH") #SH | @as("BL") #BL | @as("RW") #RW | @as("RU") #RU | @as("RO") #RO | @as("RE") #RE | @as("CG") #CG | @as("QA") #QA | @as("PR") #PR | @as("PT") #PT | @as("PL") #PL | @as("PN") #PN | @as("PH") #PH | @as("PE") #PE | @as("PY") #PY | @as("PG") #PG | @as("PA") #PA | @as("PW") #PW | @as("PK") #PK | @as("OM") #OM | @as("NO") #NO | @as("MP") #MP | @as("KP") #KP | @as("NU") #NU | @as("NG") #NG | @as("NE") #NE | @as("NI") #NI | @as("NZ") #NZ | @as("NC") #NC | @as("AN") #AN | @as("NL") #NL | @as("NP") #NP | @as("NR") #NR | @as("NA") #NA | @as("MM") #MM | @as("MZ") #MZ | @as("MA") #MA | @as("MS") #MS | @as("ME") #ME | @as("MN") #MN | @as("MC") #MC | @as("MD") #MD | @as("FM") #FM | @as("MX") #MX | @as("YT") #YT | @as("MU") #MU | @as("MR") #MR | @as("MH") #MH | @as("MT") #MT | @as("ML") #ML | @as("MV") #MV | @as("MY") #MY | @as("MW") #MW | @as("MG") #MG | @as("MK") #MK | @as("MO") #MO | @as("LU") #LU | @as("LT") #LT | @as("LI") #LI | @as("LY") #LY | @as("LR") #LR | @as("LS") #LS | @as("LB") #LB | @as("LV") #LV | @as("LA") #LA | @as("KG") #KG | @as("KW") #KW | @as("KI") #KI | @as("KE") #KE | @as("KZ") #KZ | @as("JO") #JO | @as("JE") #JE | @as("JP") #JP | @as("JM") #JM | @as("CI") #CI | @as("IT") #IT | @as("IL") #IL | @as("IM") #IM | @as("IE") #IE | @as("IQ") #IQ | @as("IR") #IR | @as("ID") #ID | @as("IN") #IN | @as("IS") #IS | @as("HU") #HU | @as("HK") #HK | @as("HN") #HN | @as("HT") #HT | @as("GY") #GY | @as("GW") #GW | @as("GN") #GN | @as("GG") #GG | @as("GT") #GT | @as("GU") #GU | @as("GD") #GD | @as("GL") #GL | @as("GR") #GR | @as("GI") #GI | @as("GH") #GH | @as("DE") #DE | @as("GE") #GE | @as("GM") #GM | @as("GA") #GA | @as("PF") #PF | @as("FR") #FR | @as("FI") #FI | @as("FJ") #FJ | @as("FO") #FO | @as("FK") #FK | @as("ET") #ET | @as("EE") #EE | @as("ER") #ER | @as("GQ") #GQ | @as("SV") #SV | @as("EG") #EG | @as("EC") #EC | @as("TL") #TL | @as("DO") #DO | @as("DM") #DM | @as("DJ") #DJ | @as("DK") #DK | @as("CD") #CD | @as("CZ") #CZ | @as("CY") #CY | @as("CW") #CW | @as("CU") #CU | @as("HR") #HR | @as("CR") #CR | @as("CK") #CK | @as("KM") #KM | @as("CO") #CO | @as("CC") #CC | @as("CX") #CX | @as("CN") #CN | @as("CL") #CL | @as("TD") #TD | @as("CF") #CF | @as("KY") #KY | @as("CV") #CV | @as("CA") #CA | @as("CM") #CM | @as("KH") #KH | @as("BI") #BI | @as("BF") #BF | @as("BG") #BG | @as("BN") #BN | @as("VG") #VG | @as("IO") #IO | @as("BR") #BR | @as("BW") #BW | @as("BA") #BA | @as("BO") #BO | @as("BT") #BT | @as("BM") #BM | @as("BJ") #BJ | @as("BZ") #BZ | @as("BE") #BE | @as("BY") #BY | @as("BB") #BB | @as("BD") #BD | @as("BH") #BH | @as("BS") #BS | @as("AZ") #AZ | @as("AT") #AT | @as("AU") #AU | @as("AW") #AW | @as("AM") #AM | @as("AR") #AR | @as("AG") #AG | @as("AQ") #AQ | @as("AI") #AI | @as("AO") #AO | @as("AD") #AD | @as("AS") #AS | @as("DZ") #DZ | @as("AL") #AL | @as("AF") #AF]
type phoneNumber = string
type password = string
type participantToken = string
type participantId = string
type pEM = string
type outboundCallsEnabled = bool;
type outboundCallerIdName = string
type origin = string
type nextToken = string
type name = string
type minutesLimit60 = int;
type message = string
type maxResult7 = int;
type maxResult25 = int;
type maxResult2 = int;
type maxResult1000 = int;
type maxResult100 = int;
type maxResult10 = int;
type lexRegion = string
type keyId = string
type integrationType = [@as("EVENT") #EVENT]
type integrationAssociationId = string
type instanceStorageResourceType = [@as("AGENT_EVENTS") #AGENT_EVENTS | @as("CONTACT_TRACE_RECORDS") #CONTACT_TRACE_RECORDS | @as("MEDIA_STREAMS") #MEDIA_STREAMS | @as("SCHEDULED_REPORTS") #SCHEDULED_REPORTS | @as("CALL_RECORDINGS") #CALL_RECORDINGS | @as("CHAT_TRANSCRIPTS") #CHAT_TRANSCRIPTS]
type instanceStatus = [@as("CREATION_FAILED") #CREATION_FAILED | @as("ACTIVE") #ACTIVE | @as("CREATION_IN_PROGRESS") #CREATION_IN_PROGRESS]
type instanceId = string
type instanceAttributeValue = string
type instanceAttributeType = [@as("EARLY_MEDIA") #EARLY_MEDIA | @as("USE_CUSTOM_TTS_VOICES") #USE_CUSTOM_TTS_VOICES | @as("AUTO_RESOLVE_BEST_VOICES") #AUTO_RESOLVE_BEST_VOICES | @as("CONTACT_LENS") #CONTACT_LENS | @as("CONTACTFLOW_LOGS") #CONTACTFLOW_LOGS | @as("OUTBOUND_CALLS") #OUTBOUND_CALLS | @as("INBOUND_CALLS") #INBOUND_CALLS]
type inboundCallsEnabled = bool;
type hoursOfOperationName = string
type hoursOfOperationId = string
type hoursOfOperationDays = [@as("SATURDAY") #SATURDAY | @as("FRIDAY") #FRIDAY | @as("THURSDAY") #THURSDAY | @as("WEDNESDAY") #WEDNESDAY | @as("TUESDAY") #TUESDAY | @as("MONDAY") #MONDAY | @as("SUNDAY") #SUNDAY]
type hours24Format = int;
type hours = int;
type historicalMetricName = [@as("SERVICE_LEVEL") #SERVICE_LEVEL | @as("INTERACTION_AND_HOLD_TIME") #INTERACTION_AND_HOLD_TIME | @as("INTERACTION_TIME") #INTERACTION_TIME | @as("HOLD_TIME") #HOLD_TIME | @as("QUEUE_ANSWER_TIME") #QUEUE_ANSWER_TIME | @as("ABANDON_TIME") #ABANDON_TIME | @as("QUEUED_TIME") #QUEUED_TIME | @as("AFTER_CONTACT_WORK_TIME") #AFTER_CONTACT_WORK_TIME | @as("HANDLE_TIME") #HANDLE_TIME | @as("OCCUPANCY") #OCCUPANCY | @as("API_CONTACTS_HANDLED") #API_CONTACTS_HANDLED | @as("CALLBACK_CONTACTS_HANDLED") #CALLBACK_CONTACTS_HANDLED | @as("CONTACTS_MISSED") #CONTACTS_MISSED | @as("CONTACTS_TRANSFERRED_OUT_FROM_QUEUE") #CONTACTS_TRANSFERRED_OUT_FROM_QUEUE | @as("CONTACTS_TRANSFERRED_IN_FROM_QUEUE") #CONTACTS_TRANSFERRED_IN_FROM_QUEUE | @as("CONTACTS_TRANSFERRED_OUT") #CONTACTS_TRANSFERRED_OUT | @as("CONTACTS_TRANSFERRED_IN") #CONTACTS_TRANSFERRED_IN | @as("CONTACTS_HOLD_ABANDONS") #CONTACTS_HOLD_ABANDONS | @as("CONTACTS_HANDLED_OUTBOUND") #CONTACTS_HANDLED_OUTBOUND | @as("CONTACTS_HANDLED_INCOMING") #CONTACTS_HANDLED_INCOMING | @as("CONTACTS_AGENT_HUNG_UP_FIRST") #CONTACTS_AGENT_HUNG_UP_FIRST | @as("CONTACTS_CONSULTED") #CONTACTS_CONSULTED | @as("CONTACTS_ABANDONED") #CONTACTS_ABANDONED | @as("CONTACTS_HANDLED") #CONTACTS_HANDLED | @as("CONTACTS_QUEUED") #CONTACTS_QUEUED]
type hierarchyLevelName = string
type hierarchyLevelId = string
type hierarchyGroupName = string
type hierarchyGroupId = string
type grouping = [@as("CHANNEL") #CHANNEL | @as("QUEUE") #QUEUE]
type functionArn = string
type encryptionType = [@as("KMS") #KMS]
type email = string
type displayName = string
type directoryUserId = string
type directoryType = [@as("EXISTING_DIRECTORY") #EXISTING_DIRECTORY | @as("CONNECT_MANAGED") #CONNECT_MANAGED | @as("SAML") #SAML]
type directoryId = string
type directoryAlias = string
type description = string
type delay = int;
type currentMetricName = [@as("SLOTS_AVAILABLE") #SLOTS_AVAILABLE | @as("SLOTS_ACTIVE") #SLOTS_ACTIVE | @as("AGENTS_ON_CONTACT") #AGENTS_ON_CONTACT | @as("CONTACTS_SCHEDULED") #CONTACTS_SCHEDULED | @as("OLDEST_CONTACT_AGE") #OLDEST_CONTACT_AGE | @as("CONTACTS_IN_QUEUE") #CONTACTS_IN_QUEUE | @as("AGENTS_STAFFED") #AGENTS_STAFFED | @as("AGENTS_ERROR") #AGENTS_ERROR | @as("AGENTS_AFTER_CONTACT_WORK") #AGENTS_AFTER_CONTACT_WORK | @as("AGENTS_NON_PRODUCTIVE") #AGENTS_NON_PRODUCTIVE | @as("AGENTS_ON_CALL") #AGENTS_ON_CALL | @as("AGENTS_AVAILABLE") #AGENTS_AVAILABLE | @as("AGENTS_ONLINE") #AGENTS_ONLINE]
type contactId = string
type contactFlowType = [@as("QUEUE_TRANSFER") #QUEUE_TRANSFER | @as("AGENT_TRANSFER") #AGENT_TRANSFER | @as("OUTBOUND_WHISPER") #OUTBOUND_WHISPER | @as("AGENT_WHISPER") #AGENT_WHISPER | @as("AGENT_HOLD") #AGENT_HOLD | @as("CUSTOMER_WHISPER") #CUSTOMER_WHISPER | @as("CUSTOMER_HOLD") #CUSTOMER_HOLD | @as("CUSTOMER_QUEUE") #CUSTOMER_QUEUE | @as("CONTACT_FLOW") #CONTACT_FLOW]
type contactFlowName = string
type contactFlowId = string
type contactFlowDescription = string
type contactFlowContent = string
type concurrency = int;
type comparison = [@as("LT") #LT]
type commonNameLength127 = string
type commonDescriptionLength250 = string
type clientToken = string
type chatContentType = string
type chatContent = string
type channel = [@as("TASK") #TASK | @as("CHAT") #CHAT | @as("VOICE") #VOICE]
type bucketName = string
type botName = string
type autoAccept = bool;
type attributeValue = string
type attributeName = string
type associationId = string
type agentUsername = string
type agentLastName = string
type agentFirstName = string
type afterContactWorkTimeLimit = int;
type aRN = string
type voiceRecordingConfiguration = {
@as("VoiceRecordingTrack") voiceRecordingTrack: voiceRecordingTrack
}
type userSummary = {
@as("Username") username: agentUsername,
@as("Arn") arn: aRN,
@as("Id") id: userId
}
type userQuickConnectConfig = {
@as("ContactFlowId") contactFlowId: option<contactFlowId>,
@as("UserId") userId: option<userId>
}
type userPhoneConfig = {
@as("DeskPhoneNumber") deskPhoneNumber: phoneNumber,
@as("AfterContactWorkTimeLimit") afterContactWorkTimeLimit: afterContactWorkTimeLimit,
@as("AutoAccept") autoAccept: autoAccept,
@as("PhoneType") phoneType: option<phoneType>
}
type userIdentityInfo = {
@as("Email") email: email,
@as("LastName") lastName: agentLastName,
@as("FirstName") firstName: agentFirstName
}
type useCase = {
@as("UseCaseType") useCaseType: useCaseType,
@as("UseCaseArn") useCaseArn: aRN,
@as("UseCaseId") useCaseId: useCaseId
}
type threshold = {
@as("ThresholdValue") thresholdValue: thresholdValue,
@as("Comparison") comparison: comparison
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type securityProfileSummary = {
@as("Name") name: securityProfileName,
@as("Arn") arn: aRN,
@as("Id") id: securityProfileId
}
type securityProfileIds = array<securityProfileId>
type securityKey = {
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("Key") key: pEM,
@as("AssociationId") associationId: associationId
}
type routingProfileSummary = {
@as("Name") name: routingProfileName,
@as("Arn") arn: aRN,
@as("Id") id: routingProfileId
}
type routingProfileQueueReference = {
@as("Channel") channel: option<channel>,
@as("QueueId") queueId: option<queueId>
}
type routingProfileQueueConfigSummary = {
@as("Channel") channel: option<channel>,
@as("Delay") delay: option<delay>,
@as("Priority") priority: option<priority>,
@as("QueueName") queueName: option<queueName>,
@as("QueueArn") queueArn: option<aRN>,
@as("QueueId") queueId: option<queueId>
}
type reference = {
@as("Type") type_: option<referenceType>,
@as("Value") value: option<referenceValue>
}
type quickConnectsList = array<quickConnectId>
type quickConnectTypes = array<quickConnectType>
type quickConnectSummary = {
@as("QuickConnectType") quickConnectType: quickConnectType,
@as("Name") name: quickConnectName,
@as("Arn") arn: aRN,
@as("Id") id: quickConnectId
}
type queues = array<queueId>
type queueTypes = array<queueType>
type queueSummary = {
@as("QueueType") queueType: queueType,
@as("Name") name: queueName,
@as("Arn") arn: aRN,
@as("Id") id: queueId
}
type queueReference = {
@as("Arn") arn: aRN,
@as("Id") id: queueId
}
type queueQuickConnectConfig = {
@as("ContactFlowId") contactFlowId: option<contactFlowId>,
@as("QueueId") queueId: option<queueId>
}
type promptSummary = {
@as("Name") name: promptName,
@as("Arn") arn: aRN,
@as("Id") id: promptId
}
type problemDetail = {
@as("message") message: problemMessageString
}
type phoneNumberTypes = array<phoneNumberType>
type phoneNumberSummary = {
@as("PhoneNumberCountryCode") phoneNumberCountryCode: phoneNumberCountryCode,
@as("PhoneNumberType") phoneNumberType: phoneNumberType,
@as("PhoneNumber") phoneNumber: phoneNumber,
@as("Arn") arn: aRN,
@as("Id") id: phoneNumberId
}
type phoneNumberQuickConnectConfig = {
@as("PhoneNumber") phoneNumber: option<phoneNumber>
}
type phoneNumberCountryCodes = array<phoneNumberCountryCode>
type participantDetails = {
@as("DisplayName") displayName: option<displayName>
}
type outboundCallerConfig = {
@as("OutboundFlowId") outboundFlowId: contactFlowId,
@as("OutboundCallerIdNumberId") outboundCallerIdNumberId: phoneNumberId,
@as("OutboundCallerIdName") outboundCallerIdName: outboundCallerIdName
}
type originsList = array<origin>
type mediaConcurrency = {
@as("Concurrency") concurrency: option<concurrency>,
@as("Channel") channel: option<channel>
}
type lexBot = {
@as("LexRegion") lexRegion: lexRegion,
@as("Name") name: botName
}
type kinesisStreamConfig = {
@as("StreamArn") streamArn: option<aRN>
}
type kinesisFirehoseConfig = {
@as("FirehoseArn") firehoseArn: option<aRN>
}
type integrationAssociationSummary = {
@as("SourceType") sourceType: sourceType,
@as("SourceApplicationName") sourceApplicationName: sourceApplicationName,
@as("SourceApplicationUrl") sourceApplicationUrl: uRI,
@as("IntegrationArn") integrationArn: aRN,
@as("IntegrationType") integrationType: integrationType,
@as("InstanceId") instanceId: instanceId,
@as("IntegrationAssociationArn") integrationAssociationArn: aRN,
@as("IntegrationAssociationId") integrationAssociationId: integrationAssociationId
}
type instanceSummary = {
@as("OutboundCallsEnabled") outboundCallsEnabled: outboundCallsEnabled,
@as("InboundCallsEnabled") inboundCallsEnabled: inboundCallsEnabled,
@as("InstanceStatus") instanceStatus: instanceStatus,
@as("ServiceRole") serviceRole: aRN,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("InstanceAlias") instanceAlias: directoryAlias,
@as("IdentityManagementType") identityManagementType: directoryType,
@as("Arn") arn: aRN,
@as("Id") id: instanceId
}
type instanceStatusReason = {
@as("Message") message: amazonawsString
}
type hoursOfOperationTimeSlice = {
@as("Minutes") minutes: minutesLimit60,
@as("Hours") hours: hours24Format
}
type hoursOfOperationSummary = {
@as("Name") name: hoursOfOperationName,
@as("Arn") arn: aRN,
@as("Id") id: hoursOfOperationId
}
type hierarchyLevelUpdate = {
@as("Name") name: option<hierarchyLevelName>
}
type hierarchyLevel = {
@as("Name") name: hierarchyLevelName,
@as("Arn") arn: aRN,
@as("Id") id: hierarchyLevelId
}
type hierarchyGroupSummary = {
@as("Name") name: hierarchyGroupName,
@as("Arn") arn: aRN,
@as("Id") id: hierarchyGroupId
}
type groupings = array<grouping>
type functionArnsList = array<functionArn>
type encryptionConfig = {
@as("KeyId") keyId: option<keyId>,
@as("EncryptionType") encryptionType: option<encryptionType>
}
type currentMetric = {
@as("Unit") unit: unit_,
@as("Name") name: currentMetricName
}
type credentials = {
@as("RefreshTokenExpiration") refreshTokenExpiration: amazonawsTimestamp,
@as("RefreshToken") refreshToken: securityToken,
@as("AccessTokenExpiration") accessTokenExpiration: amazonawsTimestamp,
@as("AccessToken") accessToken: securityToken
}
type contactFlowTypes = array<contactFlowType>
type contactFlowSummary = {
@as("ContactFlowType") contactFlowType: contactFlowType,
@as("Name") name: contactFlowName,
@as("Arn") arn: aRN,
@as("Id") id: contactFlowId
}
type chatMessage = {
@as("Content") content: option<chatContent>,
@as("ContentType") contentType: option<chatContentType>
}
type channels = array<channel>
type attributes = Js.Dict.t< attributeValue>
type attribute = {
@as("Value") value: instanceAttributeValue,
@as("AttributeType") attributeType: instanceAttributeType
}
type userSummaryList = array<userSummary>
type user = {
@as("Tags") tags: tagMap,
@as("HierarchyGroupId") hierarchyGroupId: hierarchyGroupId,
@as("RoutingProfileId") routingProfileId: routingProfileId,
@as("SecurityProfileIds") securityProfileIds: securityProfileIds,
@as("DirectoryUserId") directoryUserId: directoryUserId,
@as("PhoneConfig") phoneConfig: userPhoneConfig,
@as("IdentityInfo") identityInfo: userIdentityInfo,
@as("Username") username: agentUsername,
@as("Arn") arn: aRN,
@as("Id") id: userId
}
type useCaseSummaryList = array<useCase>
type securityProfileSummaryList = array<securityProfileSummary>
type securityKeysList = array<securityKey>
type s3Config = {
@as("EncryptionConfig") encryptionConfig: encryptionConfig,
@as("BucketPrefix") bucketPrefix: option<prefix>,
@as("BucketName") bucketName: option<bucketName>
}
type routingProfileSummaryList = array<routingProfileSummary>
type routingProfileQueueReferenceList = array<routingProfileQueueReference>
type routingProfileQueueConfigSummaryList = array<routingProfileQueueConfigSummary>
type routingProfileQueueConfig = {
@as("Delay") delay: option<delay>,
@as("Priority") priority: option<priority>,
@as("QueueReference") queueReference: option<routingProfileQueueReference>
}
type quickConnectSummaryList = array<quickConnectSummary>
type quickConnectConfig = {
@as("PhoneConfig") phoneConfig: phoneNumberQuickConnectConfig,
@as("QueueConfig") queueConfig: queueQuickConnectConfig,
@as("UserConfig") userConfig: userQuickConnectConfig,
@as("QuickConnectType") quickConnectType: option<quickConnectType>
}
type queueSummaryList = array<queueSummary>
type queue = {
@as("Tags") tags: tagMap,
@as("Status") status: queueStatus,
@as("MaxContacts") maxContacts: queueMaxContacts,
@as("HoursOfOperationId") hoursOfOperationId: hoursOfOperationId,
@as("OutboundCallerConfig") outboundCallerConfig: outboundCallerConfig,
@as("Description") description: queueDescription,
@as("QueueId") queueId: queueId,
@as("QueueArn") queueArn: aRN,
@as("Name") name: commonNameLength127
}
type promptSummaryList = array<promptSummary>
type problems = array<problemDetail>
type phoneNumberSummaryList = array<phoneNumberSummary>
type mediaConcurrencies = array<mediaConcurrency>
type lexBotsList = array<lexBot>
type kinesisVideoStreamConfig = {
@as("EncryptionConfig") encryptionConfig: option<encryptionConfig>,
@as("RetentionPeriodHours") retentionPeriodHours: option<hours>,
@as("Prefix") prefix: option<prefix>
}
type integrationAssociationSummaryList = array<integrationAssociationSummary>
type instanceSummaryList = array<instanceSummary>
type instance = {
@as("OutboundCallsEnabled") outboundCallsEnabled: outboundCallsEnabled,
@as("InboundCallsEnabled") inboundCallsEnabled: inboundCallsEnabled,
@as("StatusReason") statusReason: instanceStatusReason,
@as("InstanceStatus") instanceStatus: instanceStatus,
@as("ServiceRole") serviceRole: aRN,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("InstanceAlias") instanceAlias: directoryAlias,
@as("IdentityManagementType") identityManagementType: directoryType,
@as("Arn") arn: aRN,
@as("Id") id: instanceId
}
type hoursOfOperationSummaryList = array<hoursOfOperationSummary>
type hoursOfOperationConfig = {
@as("EndTime") endTime: hoursOfOperationTimeSlice,
@as("StartTime") startTime: hoursOfOperationTimeSlice,
@as("Day") day: hoursOfOperationDays
}
type historicalMetric = {
@as("Unit") unit: unit_,
@as("Statistic") statistic: statistic,
@as("Threshold") threshold: threshold,
@as("Name") name: historicalMetricName
}
type hierarchyStructureUpdate = {
@as("LevelFive") levelFive: hierarchyLevelUpdate,
@as("LevelFour") levelFour: hierarchyLevelUpdate,
@as("LevelThree") levelThree: hierarchyLevelUpdate,
@as("LevelTwo") levelTwo: hierarchyLevelUpdate,
@as("LevelOne") levelOne: hierarchyLevelUpdate
}
type hierarchyStructure = {
@as("LevelFive") levelFive: hierarchyLevel,
@as("LevelFour") levelFour: hierarchyLevel,
@as("LevelThree") levelThree: hierarchyLevel,
@as("LevelTwo") levelTwo: hierarchyLevel,
@as("LevelOne") levelOne: hierarchyLevel
}
type hierarchyPath = {
@as("LevelFive") levelFive: hierarchyGroupSummary,
@as("LevelFour") levelFour: hierarchyGroupSummary,
@as("LevelThree") levelThree: hierarchyGroupSummary,
@as("LevelTwo") levelTwo: hierarchyGroupSummary,
@as("LevelOne") levelOne: hierarchyGroupSummary
}
type hierarchyGroupSummaryList = array<hierarchyGroupSummary>
type filters = {
@as("Channels") channels: channels,
@as("Queues") queues: queues
}
type dimensions = {
@as("Channel") channel: channel,
@as("Queue") queue: queueReference
}
type currentMetrics = array<currentMetric>
type currentMetricData = {
@as("Value") value: value,
@as("Metric") metric: currentMetric
}
type contactReferences = Js.Dict.t< reference>
type contactFlowSummaryList = array<contactFlowSummary>
type contactFlow = {
@as("Tags") tags: tagMap,
@as("Content") content: contactFlowContent,
@as("Description") description: contactFlowDescription,
@as("Type") type_: contactFlowType,
@as("Name") name: contactFlowName,
@as("Id") id: contactFlowId,
@as("Arn") arn: aRN
}
type attributesList = array<attribute>
type routingProfileQueueConfigList = array<routingProfileQueueConfig>
type routingProfile = {
@as("Tags") tags: tagMap,
@as("DefaultOutboundQueueId") defaultOutboundQueueId: queueId,
@as("MediaConcurrencies") mediaConcurrencies: mediaConcurrencies,
@as("Description") description: routingProfileDescription,
@as("RoutingProfileId") routingProfileId: routingProfileId,
@as("RoutingProfileArn") routingProfileArn: aRN,
@as("Name") name: routingProfileName,
@as("InstanceId") instanceId: instanceId
}
type quickConnect = {
@as("Tags") tags: tagMap,
@as("QuickConnectConfig") quickConnectConfig: quickConnectConfig,
@as("Description") description: quickConnectDescription,
@as("Name") name: quickConnectName,
@as("QuickConnectId") quickConnectId: quickConnectId,
@as("QuickConnectARN") quickConnectARN: aRN
}
type instanceStorageConfig = {
@as("KinesisFirehoseConfig") kinesisFirehoseConfig: kinesisFirehoseConfig,
@as("KinesisStreamConfig") kinesisStreamConfig: kinesisStreamConfig,
@as("KinesisVideoStreamConfig") kinesisVideoStreamConfig: kinesisVideoStreamConfig,
@as("S3Config") s3Config: s3Config,
@as("StorageType") storageType: option<storageType>,
@as("AssociationId") associationId: associationId
}
type hoursOfOperationConfigList = array<hoursOfOperationConfig>
type historicalMetrics = array<historicalMetric>
type historicalMetricData = {
@as("Value") value: value,
@as("Metric") metric: historicalMetric
}
type hierarchyGroup = {
@as("HierarchyPath") hierarchyPath: hierarchyPath,
@as("LevelId") levelId: hierarchyLevelId,
@as("Name") name: hierarchyGroupName,
@as("Arn") arn: aRN,
@as("Id") id: hierarchyGroupId
}
type currentMetricDataCollections = array<currentMetricData>
type instanceStorageConfigs = array<instanceStorageConfig>
type hoursOfOperation = {
@as("Tags") tags: tagMap,
@as("Config") config: hoursOfOperationConfigList,
@as("TimeZone") timeZone: timeZone,
@as("Description") description: commonDescriptionLength250,
@as("Name") name: commonNameLength127,
@as("HoursOfOperationArn") hoursOfOperationArn: aRN,
@as("HoursOfOperationId") hoursOfOperationId: hoursOfOperationId
}
type historicalMetricDataCollections = array<historicalMetricData>
type currentMetricResult = {
@as("Collections") collections: currentMetricDataCollections,
@as("Dimensions") dimensions: dimensions
}
type historicalMetricResult = {
@as("Collections") collections: historicalMetricDataCollections,
@as("Dimensions") dimensions: dimensions
}
type currentMetricResults = array<currentMetricResult>
type historicalMetricResults = array<historicalMetricResult>
type clientType;
@module("@aws-sdk/client-connect") @new external createClient: unit => clientType = "ConnectClient";
module UpdateUserRoutingProfile = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>,
@as("UserId") userId: option<userId>,
@as("RoutingProfileId") routingProfileId: option<routingProfileId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateUserRoutingProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateUserHierarchyGroupName = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>,
@as("HierarchyGroupId") hierarchyGroupId: option<hierarchyGroupId>,
@as("Name") name: option<hierarchyGroupName>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateUserHierarchyGroupNameCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateUserHierarchy = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>,
@as("UserId") userId: option<userId>,
@as("HierarchyGroupId") hierarchyGroupId: hierarchyGroupId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateUserHierarchyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateRoutingProfileName = {
  type t;
  type request = {
@as("Description") description: routingProfileDescription,
@as("Name") name: routingProfileName,
@as("RoutingProfileId") routingProfileId: option<routingProfileId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateRoutingProfileNameCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateRoutingProfileDefaultOutboundQueue = {
  type t;
  type request = {
@as("DefaultOutboundQueueId") defaultOutboundQueueId: option<queueId>,
@as("RoutingProfileId") routingProfileId: option<routingProfileId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateRoutingProfileDefaultOutboundQueueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateQuickConnectName = {
  type t;
  type request = {
@as("Description") description: quickConnectDescription,
@as("Name") name: quickConnectName,
@as("QuickConnectId") quickConnectId: option<quickConnectId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateQuickConnectNameCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateQueueStatus = {
  type t;
  type request = {
@as("Status") status: option<queueStatus>,
@as("QueueId") queueId: option<queueId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateQueueStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateQueueName = {
  type t;
  type request = {
@as("Description") description: queueDescription,
@as("Name") name: commonNameLength127,
@as("QueueId") queueId: option<queueId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateQueueNameCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateQueueMaxContacts = {
  type t;
  type request = {
@as("MaxContacts") maxContacts: queueMaxContacts,
@as("QueueId") queueId: option<queueId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateQueueMaxContactsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateQueueHoursOfOperation = {
  type t;
  type request = {
@as("HoursOfOperationId") hoursOfOperationId: option<hoursOfOperationId>,
@as("QueueId") queueId: option<queueId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateQueueHoursOfOperationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateInstanceAttribute = {
  type t;
  type request = {
@as("Value") value: option<instanceAttributeValue>,
@as("AttributeType") attributeType: option<instanceAttributeType>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateInstanceAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateContactFlowName = {
  type t;
  type request = {
@as("Description") description: contactFlowDescription,
@as("Name") name: contactFlowName,
@as("ContactFlowId") contactFlowId: option<contactFlowId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateContactFlowNameCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SuspendContactRecording = {
  type t;
  type request = {
@as("InitialContactId") initialContactId: option<contactId>,
@as("ContactId") contactId: option<contactId>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = unit
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "SuspendContactRecordingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopContactRecording = {
  type t;
  type request = {
@as("InitialContactId") initialContactId: option<contactId>,
@as("ContactId") contactId: option<contactId>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = unit
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "StopContactRecordingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopContact = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>,
@as("ContactId") contactId: option<contactId>
}
  type response = unit
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "StopContactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResumeContactRecording = {
  type t;
  type request = {
@as("InitialContactId") initialContactId: option<contactId>,
@as("ContactId") contactId: option<contactId>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = unit
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ResumeContactRecordingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateSecurityKey = {
  type t;
  type request = {
@as("AssociationId") associationId: option<associationId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DisassociateSecurityKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisassociateLexBot = {
  type t;
  type request = {
@as("LexRegion") lexRegion: option<lexRegion>,
@as("BotName") botName: option<botName>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DisassociateLexBotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisassociateLambdaFunction = {
  type t;
  type request = {
@as("FunctionArn") functionArn: option<functionArn>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DisassociateLambdaFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisassociateInstanceStorageConfig = {
  type t;
  type request = {
@as("ResourceType") resourceType: option<instanceStorageResourceType>,
@as("AssociationId") associationId: option<associationId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DisassociateInstanceStorageConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisassociateApprovedOrigin = {
  type t;
  type request = {
@as("Origin") origin: option<origin>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DisassociateApprovedOriginCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteUserHierarchyGroup = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>,
@as("HierarchyGroupId") hierarchyGroupId: option<hierarchyGroupId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DeleteUserHierarchyGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteUser = {
  type t;
  type request = {
@as("UserId") userId: option<userId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DeleteUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteUseCase = {
  type t;
  type request = {
@as("UseCaseId") useCaseId: option<useCaseId>,
@as("IntegrationAssociationId") integrationAssociationId: option<integrationAssociationId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DeleteUseCaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteQuickConnect = {
  type t;
  type request = {
@as("QuickConnectId") quickConnectId: option<quickConnectId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DeleteQuickConnectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteIntegrationAssociation = {
  type t;
  type request = {
@as("IntegrationAssociationId") integrationAssociationId: option<integrationAssociationId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DeleteIntegrationAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteInstance = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DeleteInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateUserHierarchyGroup = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>,
@as("ParentGroupId") parentGroupId: hierarchyGroupId,
@as("Name") name: option<hierarchyGroupName>
}
  type response = {
@as("HierarchyGroupArn") hierarchyGroupArn: aRN,
@as("HierarchyGroupId") hierarchyGroupId: hierarchyGroupId
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "CreateUserHierarchyGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInstance = {
  type t;
  type request = {
@as("OutboundCallsEnabled") outboundCallsEnabled: option<outboundCallsEnabled>,
@as("InboundCallsEnabled") inboundCallsEnabled: option<inboundCallsEnabled>,
@as("DirectoryId") directoryId: directoryId,
@as("InstanceAlias") instanceAlias: directoryAlias,
@as("IdentityManagementType") identityManagementType: option<directoryType>,
@as("ClientToken") clientToken: clientToken
}
  type response = {
@as("Arn") arn: aRN,
@as("Id") id: instanceId
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "CreateInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateSecurityKey = {
  type t;
  type request = {
@as("Key") key: option<pEM>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("AssociationId") associationId: associationId
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "AssociateSecurityKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateLambdaFunction = {
  type t;
  type request = {
@as("FunctionArn") functionArn: option<functionArn>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "AssociateLambdaFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AssociateApprovedOrigin = {
  type t;
  type request = {
@as("Origin") origin: option<origin>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "AssociateApprovedOriginCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateUserSecurityProfiles = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>,
@as("UserId") userId: option<userId>,
@as("SecurityProfileIds") securityProfileIds: option<securityProfileIds>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateUserSecurityProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateUserPhoneConfig = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>,
@as("UserId") userId: option<userId>,
@as("PhoneConfig") phoneConfig: option<userPhoneConfig>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateUserPhoneConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateUserIdentityInfo = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>,
@as("UserId") userId: option<userId>,
@as("IdentityInfo") identityInfo: option<userIdentityInfo>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateUserIdentityInfoCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateQueueOutboundCallerConfig = {
  type t;
  type request = {
@as("OutboundCallerConfig") outboundCallerConfig: option<outboundCallerConfig>,
@as("QueueId") queueId: option<queueId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateQueueOutboundCallerConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateContactAttributes = {
  type t;
  type request = {
@as("Attributes") attributes: option<attributes>,
@as("InstanceId") instanceId: option<instanceId>,
@as("InitialContactId") initialContactId: option<contactId>
}
  type response = unit
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateContactAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<aRN>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<aRN>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StartOutboundVoiceContact = {
  type t;
  type request = {
@as("Attributes") attributes: attributes,
@as("QueueId") queueId: queueId,
@as("SourcePhoneNumber") sourcePhoneNumber: phoneNumber,
@as("ClientToken") clientToken: clientToken,
@as("InstanceId") instanceId: option<instanceId>,
@as("ContactFlowId") contactFlowId: option<contactFlowId>,
@as("DestinationPhoneNumber") destinationPhoneNumber: option<phoneNumber>
}
  type response = {
@as("ContactId") contactId: contactId
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "StartOutboundVoiceContactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartContactRecording = {
  type t;
  type request = {
@as("VoiceRecordingConfiguration") voiceRecordingConfiguration: option<voiceRecordingConfiguration>,
@as("InitialContactId") initialContactId: option<contactId>,
@as("ContactId") contactId: option<contactId>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = unit
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "StartContactRecordingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartChatContact = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientToken,
@as("InitialMessage") initialMessage: chatMessage,
@as("ParticipantDetails") participantDetails: option<participantDetails>,
@as("Attributes") attributes: attributes,
@as("ContactFlowId") contactFlowId: option<contactFlowId>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("ParticipantToken") participantToken: participantToken,
@as("ParticipantId") participantId: participantId,
@as("ContactId") contactId: contactId
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "StartChatContactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<aRN>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLambdaFunctions = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult25,
@as("NextToken") nextToken: nextToken,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("LambdaFunctions") lambdaFunctions: functionArnsList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListLambdaFunctionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApprovedOrigins = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult25,
@as("NextToken") nextToken: nextToken,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Origins") origins: originsList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListApprovedOriginsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFederationToken = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("Credentials") credentials: credentials
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "GetFederationTokenCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContactAttributes = {
  type t;
  type request = {
@as("InitialContactId") initialContactId: option<contactId>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("Attributes") attributes: attributes
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "GetContactAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateQueueQuickConnects = {
  type t;
  type request = {
@as("QuickConnectIds") quickConnectIds: option<quickConnectsList>,
@as("QueueId") queueId: option<queueId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DisassociateQueueQuickConnectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeInstanceAttribute = {
  type t;
  type request = {
@as("AttributeType") attributeType: option<instanceAttributeType>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("Attribute") attribute: attribute
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DescribeInstanceAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUser = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("InstanceId") instanceId: option<instanceId>,
@as("HierarchyGroupId") hierarchyGroupId: hierarchyGroupId,
@as("RoutingProfileId") routingProfileId: option<routingProfileId>,
@as("SecurityProfileIds") securityProfileIds: option<securityProfileIds>,
@as("DirectoryUserId") directoryUserId: directoryUserId,
@as("PhoneConfig") phoneConfig: option<userPhoneConfig>,
@as("IdentityInfo") identityInfo: userIdentityInfo,
@as("Password") password: password,
@as("Username") username: option<agentUsername>
}
  type response = {
@as("UserArn") userArn: aRN,
@as("UserId") userId: userId
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "CreateUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUseCase = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("UseCaseType") useCaseType: option<useCaseType>,
@as("IntegrationAssociationId") integrationAssociationId: option<integrationAssociationId>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("UseCaseArn") useCaseArn: aRN,
@as("UseCaseId") useCaseId: useCaseId
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "CreateUseCaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateQueue = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("QuickConnectIds") quickConnectIds: quickConnectsList,
@as("MaxContacts") maxContacts: queueMaxContacts,
@as("HoursOfOperationId") hoursOfOperationId: option<hoursOfOperationId>,
@as("OutboundCallerConfig") outboundCallerConfig: outboundCallerConfig,
@as("Description") description: queueDescription,
@as("Name") name: option<commonNameLength127>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("QueueId") queueId: queueId,
@as("QueueArn") queueArn: aRN
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "CreateQueueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateIntegrationAssociation = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("SourceType") sourceType: option<sourceType>,
@as("SourceApplicationName") sourceApplicationName: option<sourceApplicationName>,
@as("SourceApplicationUrl") sourceApplicationUrl: option<uRI>,
@as("IntegrationArn") integrationArn: option<aRN>,
@as("IntegrationType") integrationType: option<integrationType>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("IntegrationAssociationArn") integrationAssociationArn: aRN,
@as("IntegrationAssociationId") integrationAssociationId: integrationAssociationId
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "CreateIntegrationAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateQueueQuickConnects = {
  type t;
  type request = {
@as("QuickConnectIds") quickConnectIds: option<quickConnectsList>,
@as("QueueId") queueId: option<queueId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "AssociateQueueQuickConnectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AssociateLexBot = {
  type t;
  type request = {
@as("LexBot") lexBot: option<lexBot>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "AssociateLexBotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateUserHierarchyStructure = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>,
@as("HierarchyStructure") hierarchyStructure: option<hierarchyStructureUpdate>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateUserHierarchyStructureCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateRoutingProfileConcurrency = {
  type t;
  type request = {
@as("MediaConcurrencies") mediaConcurrencies: option<mediaConcurrencies>,
@as("RoutingProfileId") routingProfileId: option<routingProfileId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateRoutingProfileConcurrencyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateQuickConnectConfig = {
  type t;
  type request = {
@as("QuickConnectConfig") quickConnectConfig: option<quickConnectConfig>,
@as("QuickConnectId") quickConnectId: option<quickConnectId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateQuickConnectConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateContactFlowContent = {
  type t;
  type request = {
@as("Content") content: option<contactFlowContent>,
@as("ContactFlowId") contactFlowId: option<contactFlowId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateContactFlowContentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StartTaskContact = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientToken,
@as("Description") description: description,
@as("References") references: contactReferences,
@as("Name") name: option<name>,
@as("Attributes") attributes: attributes,
@as("ContactFlowId") contactFlowId: option<contactFlowId>,
@as("PreviousContactId") previousContactId: contactId,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("ContactId") contactId: contactId
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "StartTaskContactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListUsers = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult1000,
@as("NextToken") nextToken: nextToken,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("UserSummaryList") userSummaryList: userSummaryList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListUsersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListUserHierarchyGroups = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult1000,
@as("NextToken") nextToken: nextToken,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("UserHierarchyGroupSummaryList") userHierarchyGroupSummaryList: hierarchyGroupSummaryList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListUserHierarchyGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListUseCases = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult100,
@as("NextToken") nextToken: nextToken,
@as("IntegrationAssociationId") integrationAssociationId: option<integrationAssociationId>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("UseCaseSummaryList") useCaseSummaryList: useCaseSummaryList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListUseCasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSecurityProfiles = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult1000,
@as("NextToken") nextToken: nextToken,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("SecurityProfileSummaryList") securityProfileSummaryList: securityProfileSummaryList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListSecurityProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSecurityKeys = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult2,
@as("NextToken") nextToken: nextToken,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("SecurityKeys") securityKeys: securityKeysList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListSecurityKeysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRoutingProfiles = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult1000,
@as("NextToken") nextToken: nextToken,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("RoutingProfileSummaryList") routingProfileSummaryList: routingProfileSummaryList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListRoutingProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRoutingProfileQueues = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult100,
@as("NextToken") nextToken: nextToken,
@as("RoutingProfileId") routingProfileId: option<routingProfileId>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("RoutingProfileQueueConfigSummaryList") routingProfileQueueConfigSummaryList: routingProfileQueueConfigSummaryList,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListRoutingProfileQueuesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListQuickConnects = {
  type t;
  type request = {
@as("QuickConnectTypes") quickConnectTypes: quickConnectTypes,
@as("MaxResults") maxResults: maxResult1000,
@as("NextToken") nextToken: nextToken,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("QuickConnectSummaryList") quickConnectSummaryList: quickConnectSummaryList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListQuickConnectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListQueues = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult1000,
@as("NextToken") nextToken: nextToken,
@as("QueueTypes") queueTypes: queueTypes,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("QueueSummaryList") queueSummaryList: queueSummaryList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListQueuesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListQueueQuickConnects = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult100,
@as("NextToken") nextToken: nextToken,
@as("QueueId") queueId: option<queueId>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("QuickConnectSummaryList") quickConnectSummaryList: quickConnectSummaryList,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListQueueQuickConnectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPrompts = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult1000,
@as("NextToken") nextToken: nextToken,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("PromptSummaryList") promptSummaryList: promptSummaryList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListPromptsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPhoneNumbers = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult1000,
@as("NextToken") nextToken: nextToken,
@as("PhoneNumberCountryCodes") phoneNumberCountryCodes: phoneNumberCountryCodes,
@as("PhoneNumberTypes") phoneNumberTypes: phoneNumberTypes,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("PhoneNumberSummaryList") phoneNumberSummaryList: phoneNumberSummaryList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListPhoneNumbersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLexBots = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult25,
@as("NextToken") nextToken: nextToken,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("LexBots") lexBots: lexBotsList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListLexBotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIntegrationAssociations = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult100,
@as("NextToken") nextToken: nextToken,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("IntegrationAssociationSummaryList") integrationAssociationSummaryList: integrationAssociationSummaryList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListIntegrationAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInstances = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult10,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("InstanceSummaryList") instanceSummaryList: instanceSummaryList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInstanceAttributes = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult7,
@as("NextToken") nextToken: nextToken,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Attributes") attributes: attributesList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListInstanceAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListHoursOfOperations = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult1000,
@as("NextToken") nextToken: nextToken,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("HoursOfOperationSummaryList") hoursOfOperationSummaryList: hoursOfOperationSummaryList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListHoursOfOperationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListContactFlows = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult1000,
@as("NextToken") nextToken: nextToken,
@as("ContactFlowTypes") contactFlowTypes: contactFlowTypes,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ContactFlowSummaryList") contactFlowSummaryList: contactFlowSummaryList
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListContactFlowsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateRoutingProfileQueues = {
  type t;
  type request = {
@as("QueueReferences") queueReferences: option<routingProfileQueueReferenceList>,
@as("RoutingProfileId") routingProfileId: option<routingProfileId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DisassociateRoutingProfileQueuesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeUserHierarchyStructure = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("HierarchyStructure") hierarchyStructure: hierarchyStructure
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DescribeUserHierarchyStructureCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeUser = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>,
@as("UserId") userId: option<userId>
}
  type response = {
@as("User") user: user
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DescribeUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeQueue = {
  type t;
  type request = {
@as("QueueId") queueId: option<queueId>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("Queue") queue: queue
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DescribeQueueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInstance = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("Instance") instance: instance
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DescribeInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeContactFlow = {
  type t;
  type request = {
@as("ContactFlowId") contactFlowId: option<contactFlowId>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("ContactFlow") contactFlow: contactFlow
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DescribeContactFlowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateQuickConnect = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("QuickConnectConfig") quickConnectConfig: option<quickConnectConfig>,
@as("Description") description: quickConnectDescription,
@as("Name") name: option<quickConnectName>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("QuickConnectId") quickConnectId: quickConnectId,
@as("QuickConnectARN") quickConnectARN: aRN
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "CreateQuickConnectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateContactFlow = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("Content") content: option<contactFlowContent>,
@as("Description") description: contactFlowDescription,
@as("Type") type_: option<contactFlowType>,
@as("Name") name: option<contactFlowName>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("ContactFlowArn") contactFlowArn: aRN,
@as("ContactFlowId") contactFlowId: contactFlowId
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "CreateContactFlowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRoutingProfileQueues = {
  type t;
  type request = {
@as("QueueConfigs") queueConfigs: option<routingProfileQueueConfigList>,
@as("RoutingProfileId") routingProfileId: option<routingProfileId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateRoutingProfileQueuesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateInstanceStorageConfig = {
  type t;
  type request = {
@as("StorageConfig") storageConfig: option<instanceStorageConfig>,
@as("ResourceType") resourceType: option<instanceStorageResourceType>,
@as("AssociationId") associationId: option<associationId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "UpdateInstanceStorageConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeUserHierarchyGroup = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>,
@as("HierarchyGroupId") hierarchyGroupId: option<hierarchyGroupId>
}
  type response = {
@as("HierarchyGroup") hierarchyGroup: hierarchyGroup
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DescribeUserHierarchyGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRoutingProfile = {
  type t;
  type request = {
@as("RoutingProfileId") routingProfileId: option<routingProfileId>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("RoutingProfile") routingProfile: routingProfile
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DescribeRoutingProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeQuickConnect = {
  type t;
  type request = {
@as("QuickConnectId") quickConnectId: option<quickConnectId>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("QuickConnect") quickConnect: quickConnect
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DescribeQuickConnectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInstanceStorageConfig = {
  type t;
  type request = {
@as("ResourceType") resourceType: option<instanceStorageResourceType>,
@as("AssociationId") associationId: option<associationId>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("StorageConfig") storageConfig: instanceStorageConfig
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DescribeInstanceStorageConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRoutingProfile = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("MediaConcurrencies") mediaConcurrencies: option<mediaConcurrencies>,
@as("QueueConfigs") queueConfigs: routingProfileQueueConfigList,
@as("DefaultOutboundQueueId") defaultOutboundQueueId: option<queueId>,
@as("Description") description: option<routingProfileDescription>,
@as("Name") name: option<routingProfileName>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("RoutingProfileId") routingProfileId: routingProfileId,
@as("RoutingProfileArn") routingProfileArn: aRN
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "CreateRoutingProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateRoutingProfileQueues = {
  type t;
  type request = {
@as("QueueConfigs") queueConfigs: option<routingProfileQueueConfigList>,
@as("RoutingProfileId") routingProfileId: option<routingProfileId>,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "AssociateRoutingProfileQueuesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AssociateInstanceStorageConfig = {
  type t;
  type request = {
@as("StorageConfig") storageConfig: option<instanceStorageConfig>,
@as("ResourceType") resourceType: option<instanceStorageResourceType>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("AssociationId") associationId: associationId
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "AssociateInstanceStorageConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInstanceStorageConfigs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult10,
@as("NextToken") nextToken: nextToken,
@as("ResourceType") resourceType: option<instanceStorageResourceType>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("StorageConfigs") storageConfigs: instanceStorageConfigs
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "ListInstanceStorageConfigsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeHoursOfOperation = {
  type t;
  type request = {
@as("HoursOfOperationId") hoursOfOperationId: option<hoursOfOperationId>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("HoursOfOperation") hoursOfOperation: hoursOfOperation
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "DescribeHoursOfOperationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCurrentMetricData = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult100,
@as("NextToken") nextToken: nextToken,
@as("CurrentMetrics") currentMetrics: option<currentMetrics>,
@as("Groupings") groupings: groupings,
@as("Filters") filters: option<filters>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("DataSnapshotTime") dataSnapshotTime: amazonawsTimestamp,
@as("MetricResults") metricResults: currentMetricResults,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "GetCurrentMetricDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMetricData = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResult100,
@as("NextToken") nextToken: nextToken,
@as("HistoricalMetrics") historicalMetrics: option<historicalMetrics>,
@as("Groupings") groupings: groupings,
@as("Filters") filters: option<filters>,
@as("EndTime") endTime: option<amazonawsTimestamp>,
@as("StartTime") startTime: option<amazonawsTimestamp>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("MetricResults") metricResults: historicalMetricResults,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-connect") @new external new_: (Js.Promise.t<request>) => t = "GetMetricDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
