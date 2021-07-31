type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-connect") @new external createClient: unit => awsServiceClient = "ConnectClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type voiceRecordingTrack = [@as("ALL") #ALL | @as("TO_AGENT") #TO_AGENT | @as("FROM_AGENT") #FROM_AGENT]
type value = float
type userId = string
type useCaseType = [@as("RULES_EVALUATION") #RULES_EVALUATION]
type useCaseId = string
type unit_ = [@as("PERCENT") #PERCENT | @as("COUNT") #COUNT | @as("SECONDS") #SECONDS]
type uri = string
type timestamp_ = Js.Date.t;
type timeZone = string
type thresholdValue = float
type tagValue = string
type tagKey = string
type string_ = string
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
type queueMaxContacts = int
type queueId = string
type queueDescription = string
type promptName = string
type promptId = string
type problemMessageString = string
type priority = int
type prefix = string
type phoneType = [@as("DESK_PHONE") #DESK_PHONE | @as("SOFT_PHONE") #SOFT_PHONE]
type phoneNumberType = [@as("DID") #DID | @as("TOLL_FREE") #TOLL_FREE]
type phoneNumberId = string
type phoneNumberCountryCode = [@as("ZW") #ZW | @as("ZM") #ZM | @as("YE") #YE | @as("EH") #EH | @as("WF") #WF | @as("VN") #VN | @as("VE") #VE | @as("VA") #VA | @as("VU") #VU | @as("UZ") #UZ | @as("UY") #UY | @as("US") #US | @as("GB") #GB | @as("AE") #AE | @as("UA") #UA | @as("UG") #UG | @as("VI") #VI | @as("TV") #TV | @as("TC") #TC | @as("TM") #TM | @as("TR") #TR | @as("TN") #TN | @as("TT") #TT | @as("TO") #TO | @as("TK") #TK | @as("TG") #TG | @as("TH") #TH | @as("TZ") #TZ | @as("TJ") #TJ | @as("TW") #TW | @as("SY") #SY | @as("CH") #CH | @as("SE") #SE | @as("SZ") #SZ | @as("SJ") #SJ | @as("SR") #SR | @as("SD") #SD | @as("LK") #LK | @as("ES") #ES | @as("KR") #KR | @as("ZA") #ZA | @as("SO") #SO | @as("SB") #SB | @as("SI") #SI | @as("SK") #SK | @as("SX") #SX | @as("SG") #SG | @as("SL") #SL | @as("SC") #SC | @as("RS") #RS | @as("SN") #SN | @as("SA") #SA | @as("ST") #ST | @as("SM") #SM | @as("WS") #WS | @as("VC") #VC | @as("PM") #PM | @as("MF") #MF | @as("LC") #LC | @as("KN") #KN | @as("SH") #SH | @as("BL") #BL | @as("RW") #RW | @as("RU") #RU | @as("RO") #RO | @as("RE") #RE | @as("CG") #CG | @as("QA") #QA | @as("PR") #PR | @as("PT") #PT | @as("PL") #PL | @as("PN") #PN | @as("PH") #PH | @as("PE") #PE | @as("PY") #PY | @as("PG") #PG | @as("PA") #PA | @as("PW") #PW | @as("PK") #PK | @as("OM") #OM | @as("NO") #NO | @as("MP") #MP | @as("KP") #KP | @as("NU") #NU | @as("NG") #NG | @as("NE") #NE | @as("NI") #NI | @as("NZ") #NZ | @as("NC") #NC | @as("AN") #AN | @as("NL") #NL | @as("NP") #NP | @as("NR") #NR | @as("NA") #NA | @as("MM") #MM | @as("MZ") #MZ | @as("MA") #MA | @as("MS") #MS | @as("ME") #ME | @as("MN") #MN | @as("MC") #MC | @as("MD") #MD | @as("FM") #FM | @as("MX") #MX | @as("YT") #YT | @as("MU") #MU | @as("MR") #MR | @as("MH") #MH | @as("MT") #MT | @as("ML") #ML | @as("MV") #MV | @as("MY") #MY | @as("MW") #MW | @as("MG") #MG | @as("MK") #MK | @as("MO") #MO | @as("LU") #LU | @as("LT") #LT | @as("LI") #LI | @as("LY") #LY | @as("LR") #LR | @as("LS") #LS | @as("LB") #LB | @as("LV") #LV | @as("LA") #LA | @as("KG") #KG | @as("KW") #KW | @as("KI") #KI | @as("KE") #KE | @as("KZ") #KZ | @as("JO") #JO | @as("JE") #JE | @as("JP") #JP | @as("JM") #JM | @as("CI") #CI | @as("IT") #IT | @as("IL") #IL | @as("IM") #IM | @as("IE") #IE | @as("IQ") #IQ | @as("IR") #IR | @as("ID") #ID | @as("IN") #IN | @as("IS") #IS | @as("HU") #HU | @as("HK") #HK | @as("HN") #HN | @as("HT") #HT | @as("GY") #GY | @as("GW") #GW | @as("GN") #GN | @as("GG") #GG | @as("GT") #GT | @as("GU") #GU | @as("GD") #GD | @as("GL") #GL | @as("GR") #GR | @as("GI") #GI | @as("GH") #GH | @as("DE") #DE | @as("GE") #GE | @as("GM") #GM | @as("GA") #GA | @as("PF") #PF | @as("FR") #FR | @as("FI") #FI | @as("FJ") #FJ | @as("FO") #FO | @as("FK") #FK | @as("ET") #ET | @as("EE") #EE | @as("ER") #ER | @as("GQ") #GQ | @as("SV") #SV | @as("EG") #EG | @as("EC") #EC | @as("TL") #TL | @as("DO") #DO | @as("DM") #DM | @as("DJ") #DJ | @as("DK") #DK | @as("CD") #CD | @as("CZ") #CZ | @as("CY") #CY | @as("CW") #CW | @as("CU") #CU | @as("HR") #HR | @as("CR") #CR | @as("CK") #CK | @as("KM") #KM | @as("CO") #CO | @as("CC") #CC | @as("CX") #CX | @as("CN") #CN | @as("CL") #CL | @as("TD") #TD | @as("CF") #CF | @as("KY") #KY | @as("CV") #CV | @as("CA") #CA | @as("CM") #CM | @as("KH") #KH | @as("BI") #BI | @as("BF") #BF | @as("BG") #BG | @as("BN") #BN | @as("VG") #VG | @as("IO") #IO | @as("BR") #BR | @as("BW") #BW | @as("BA") #BA | @as("BO") #BO | @as("BT") #BT | @as("BM") #BM | @as("BJ") #BJ | @as("BZ") #BZ | @as("BE") #BE | @as("BY") #BY | @as("BB") #BB | @as("BD") #BD | @as("BH") #BH | @as("BS") #BS | @as("AZ") #AZ | @as("AT") #AT | @as("AU") #AU | @as("AW") #AW | @as("AM") #AM | @as("AR") #AR | @as("AG") #AG | @as("AQ") #AQ | @as("AI") #AI | @as("AO") #AO | @as("AD") #AD | @as("AS") #AS | @as("DZ") #DZ | @as("AL") #AL | @as("AF") #AF]
type phoneNumber = string
type password = string
type participantToken = string
type participantId = string
type pem = string
type outboundCallsEnabled = bool
type outboundCallerIdName = string
type origin = string
type nextToken = string
type name = string
type minutesLimit60 = int
type message = string
type maxResult7 = int
type maxResult25 = int
type maxResult2 = int
type maxResult1000 = int
type maxResult100 = int
type maxResult10 = int
type lexRegion = string
type keyId = string
type integrationType = [@as("EVENT") #EVENT]
type integrationAssociationId = string
type instanceStorageResourceType = [@as("AGENT_EVENTS") #AGENT_EVENTS | @as("CONTACT_TRACE_RECORDS") #CONTACT_TRACE_RECORDS | @as("MEDIA_STREAMS") #MEDIA_STREAMS | @as("SCHEDULED_REPORTS") #SCHEDULED_REPORTS | @as("CALL_RECORDINGS") #CALL_RECORDINGS | @as("CHAT_TRANSCRIPTS") #CHAT_TRANSCRIPTS]
type instanceStatus = [@as("CREATION_FAILED") #CREATION_FAILED | @as("ACTIVE") #ACTIVE | @as("CREATION_IN_PROGRESS") #CREATION_IN_PROGRESS]
type instanceId = string
type instanceAttributeValue = string
type instanceAttributeType = [@as("EARLY_MEDIA") #EARLY_MEDIA | @as("USE_CUSTOM_TTS_VOICES") #USE_CUSTOM_TTS_VOICES | @as("AUTO_RESOLVE_BEST_VOICES") #AUTO_RESOLVE_BEST_VOICES | @as("CONTACT_LENS") #CONTACT_LENS | @as("CONTACTFLOW_LOGS") #CONTACTFLOW_LOGS | @as("OUTBOUND_CALLS") #OUTBOUND_CALLS | @as("INBOUND_CALLS") #INBOUND_CALLS]
type inboundCallsEnabled = bool
type hoursOfOperationName = string
type hoursOfOperationId = string
type hoursOfOperationDays = [@as("SATURDAY") #SATURDAY | @as("FRIDAY") #FRIDAY | @as("THURSDAY") #THURSDAY | @as("WEDNESDAY") #WEDNESDAY | @as("TUESDAY") #TUESDAY | @as("MONDAY") #MONDAY | @as("SUNDAY") #SUNDAY]
type hours24Format = int
type hours = int
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
type delay = int
type currentMetricName = [@as("SLOTS_AVAILABLE") #SLOTS_AVAILABLE | @as("SLOTS_ACTIVE") #SLOTS_ACTIVE | @as("AGENTS_ON_CONTACT") #AGENTS_ON_CONTACT | @as("CONTACTS_SCHEDULED") #CONTACTS_SCHEDULED | @as("OLDEST_CONTACT_AGE") #OLDEST_CONTACT_AGE | @as("CONTACTS_IN_QUEUE") #CONTACTS_IN_QUEUE | @as("AGENTS_STAFFED") #AGENTS_STAFFED | @as("AGENTS_ERROR") #AGENTS_ERROR | @as("AGENTS_AFTER_CONTACT_WORK") #AGENTS_AFTER_CONTACT_WORK | @as("AGENTS_NON_PRODUCTIVE") #AGENTS_NON_PRODUCTIVE | @as("AGENTS_ON_CALL") #AGENTS_ON_CALL | @as("AGENTS_AVAILABLE") #AGENTS_AVAILABLE | @as("AGENTS_ONLINE") #AGENTS_ONLINE]
type contactId = string
type contactFlowType = [@as("QUEUE_TRANSFER") #QUEUE_TRANSFER | @as("AGENT_TRANSFER") #AGENT_TRANSFER | @as("OUTBOUND_WHISPER") #OUTBOUND_WHISPER | @as("AGENT_WHISPER") #AGENT_WHISPER | @as("AGENT_HOLD") #AGENT_HOLD | @as("CUSTOMER_WHISPER") #CUSTOMER_WHISPER | @as("CUSTOMER_HOLD") #CUSTOMER_HOLD | @as("CUSTOMER_QUEUE") #CUSTOMER_QUEUE | @as("CONTACT_FLOW") #CONTACT_FLOW]
type contactFlowName = string
type contactFlowId = string
type contactFlowDescription = string
type contactFlowContent = string
type concurrency = int
type comparison = [@as("LT") #LT]
type commonNameLength127 = string
type commonDescriptionLength250 = string
type clientToken = string
type chatContentType = string
type chatContent = string
type channel = [@as("TASK") #TASK | @as("CHAT") #CHAT | @as("VOICE") #VOICE]
type bucketName = string
type botName = string
type autoAccept = bool
type attributeValue = string
type attributeName = string
type associationId = string
type agentUsername = string
type agentLastName = string
type agentFirstName = string
type afterContactWorkTimeLimit = int
type arn = string
type voiceRecordingConfiguration = {
@as("VoiceRecordingTrack") voiceRecordingTrack: option<voiceRecordingTrack>
}
type userSummary = {
@as("Username") username: option<agentUsername>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<userId>
}
type userQuickConnectConfig = {
@as("ContactFlowId") contactFlowId: contactFlowId,
  @as("UserId") userId: userId
}
type userPhoneConfig = {
@as("DeskPhoneNumber") deskPhoneNumber: option<phoneNumber>,
  @as("AfterContactWorkTimeLimit") afterContactWorkTimeLimit: option<afterContactWorkTimeLimit>,
  @as("AutoAccept") autoAccept: option<autoAccept>,
  @as("PhoneType") phoneType: phoneType
}
type userIdentityInfo = {
@as("Email") email: option<email>,
  @as("LastName") lastName: option<agentLastName>,
  @as("FirstName") firstName: option<agentFirstName>
}
type useCase = {
@as("UseCaseType") useCaseType: option<useCaseType>,
  @as("UseCaseArn") useCaseArn: option<arn>,
  @as("UseCaseId") useCaseId: option<useCaseId>
}
type threshold = {
@as("ThresholdValue") thresholdValue: option<thresholdValue>,
  @as("Comparison") comparison: option<comparison>
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type securityProfileSummary = {
@as("Name") name: option<securityProfileName>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<securityProfileId>
}
type securityProfileIds = array<securityProfileId>
type securityKey = {
@as("CreationTime") creationTime: option<timestamp_>,
  @as("Key") key: option<pem>,
  @as("AssociationId") associationId: option<associationId>
}
type routingProfileSummary = {
@as("Name") name: option<routingProfileName>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<routingProfileId>
}
type routingProfileQueueReference = {
@as("Channel") channel: channel,
  @as("QueueId") queueId: queueId
}
type routingProfileQueueConfigSummary = {
@as("Channel") channel: channel,
  @as("Delay") delay: delay,
  @as("Priority") priority: priority,
  @as("QueueName") queueName: queueName,
  @as("QueueArn") queueArn: arn,
  @as("QueueId") queueId: queueId
}
type reference = {
@as("Type") type_: referenceType,
  @as("Value") value: referenceValue
}
type quickConnectsList = array<quickConnectId>
type quickConnectTypes = array<quickConnectType>
type quickConnectSummary = {
@as("QuickConnectType") quickConnectType: option<quickConnectType>,
  @as("Name") name: option<quickConnectName>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<quickConnectId>
}
type queues = array<queueId>
type queueTypes = array<queueType>
type queueSummary = {
@as("QueueType") queueType: option<queueType>,
  @as("Name") name: option<queueName>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<queueId>
}
type queueReference = {
@as("Arn") arn: option<arn>,
  @as("Id") id: option<queueId>
}
type queueQuickConnectConfig = {
@as("ContactFlowId") contactFlowId: contactFlowId,
  @as("QueueId") queueId: queueId
}
type promptSummary = {
@as("Name") name: option<promptName>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<promptId>
}
type problemDetail = {
message: option<problemMessageString>
}
type phoneNumberTypes = array<phoneNumberType>
type phoneNumberSummary = {
@as("PhoneNumberCountryCode") phoneNumberCountryCode: option<phoneNumberCountryCode>,
  @as("PhoneNumberType") phoneNumberType: option<phoneNumberType>,
  @as("PhoneNumber") phoneNumber: option<phoneNumber>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<phoneNumberId>
}
type phoneNumberQuickConnectConfig = {
@as("PhoneNumber") phoneNumber: phoneNumber
}
type phoneNumberCountryCodes = array<phoneNumberCountryCode>
type participantDetails = {
@as("DisplayName") displayName: displayName
}
type outboundCallerConfig = {
@as("OutboundFlowId") outboundFlowId: option<contactFlowId>,
  @as("OutboundCallerIdNumberId") outboundCallerIdNumberId: option<phoneNumberId>,
  @as("OutboundCallerIdName") outboundCallerIdName: option<outboundCallerIdName>
}
type originsList = array<origin>
type mediaConcurrency = {
@as("Concurrency") concurrency: concurrency,
  @as("Channel") channel: channel
}
type lexBot = {
@as("LexRegion") lexRegion: option<lexRegion>,
  @as("Name") name: option<botName>
}
type kinesisStreamConfig = {
@as("StreamArn") streamArn: arn
}
type kinesisFirehoseConfig = {
@as("FirehoseArn") firehoseArn: arn
}
type integrationAssociationSummary = {
@as("SourceType") sourceType: option<sourceType>,
  @as("SourceApplicationName") sourceApplicationName: option<sourceApplicationName>,
  @as("SourceApplicationUrl") sourceApplicationUrl: option<uri>,
  @as("IntegrationArn") integrationArn: option<arn>,
  @as("IntegrationType") integrationType: option<integrationType>,
  @as("InstanceId") instanceId: option<instanceId>,
  @as("IntegrationAssociationArn") integrationAssociationArn: option<arn>,
  @as("IntegrationAssociationId") integrationAssociationId: option<integrationAssociationId>
}
type instanceSummary = {
@as("OutboundCallsEnabled") outboundCallsEnabled: option<outboundCallsEnabled>,
  @as("InboundCallsEnabled") inboundCallsEnabled: option<inboundCallsEnabled>,
  @as("InstanceStatus") instanceStatus: option<instanceStatus>,
  @as("ServiceRole") serviceRole: option<arn>,
  @as("CreatedTime") createdTime: option<timestamp_>,
  @as("InstanceAlias") instanceAlias: option<directoryAlias>,
  @as("IdentityManagementType") identityManagementType: option<directoryType>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<instanceId>
}
type instanceStatusReason = {
@as("Message") message: option<string_>
}
type hoursOfOperationTimeSlice = {
@as("Minutes") minutes: option<minutesLimit60>,
  @as("Hours") hours: option<hours24Format>
}
type hoursOfOperationSummary = {
@as("Name") name: option<hoursOfOperationName>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<hoursOfOperationId>
}
type hierarchyLevelUpdate = {
@as("Name") name: hierarchyLevelName
}
type hierarchyLevel = {
@as("Name") name: option<hierarchyLevelName>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<hierarchyLevelId>
}
type hierarchyGroupSummary = {
@as("Name") name: option<hierarchyGroupName>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<hierarchyGroupId>
}
type groupings = array<grouping>
type functionArnsList = array<functionArn>
type encryptionConfig = {
@as("KeyId") keyId: keyId,
  @as("EncryptionType") encryptionType: encryptionType
}
type currentMetric = {
@as("Unit") unit_: option<unit_>,
  @as("Name") name: option<currentMetricName>
}
type credentials = {
@as("RefreshTokenExpiration") refreshTokenExpiration: option<timestamp_>,
  @as("RefreshToken") refreshToken: option<securityToken>,
  @as("AccessTokenExpiration") accessTokenExpiration: option<timestamp_>,
  @as("AccessToken") accessToken: option<securityToken>
}
type contactFlowTypes = array<contactFlowType>
type contactFlowSummary = {
@as("ContactFlowType") contactFlowType: option<contactFlowType>,
  @as("Name") name: option<contactFlowName>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<contactFlowId>
}
type chatMessage = {
@as("Content") content: chatContent,
  @as("ContentType") contentType: chatContentType
}
type channels = array<channel>
type attributes = Js.Dict.t<attributeValue>
type attribute = {
@as("Value") value: option<instanceAttributeValue>,
  @as("AttributeType") attributeType: option<instanceAttributeType>
}
type userSummaryList = array<userSummary>
type user = {
@as("Tags") tags: option<tagMap>,
  @as("HierarchyGroupId") hierarchyGroupId: option<hierarchyGroupId>,
  @as("RoutingProfileId") routingProfileId: option<routingProfileId>,
  @as("SecurityProfileIds") securityProfileIds: option<securityProfileIds>,
  @as("DirectoryUserId") directoryUserId: option<directoryUserId>,
  @as("PhoneConfig") phoneConfig: option<userPhoneConfig>,
  @as("IdentityInfo") identityInfo: option<userIdentityInfo>,
  @as("Username") username: option<agentUsername>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<userId>
}
type useCaseSummaryList = array<useCase>
type securityProfileSummaryList = array<securityProfileSummary>
type securityKeysList = array<securityKey>
type s3Config = {
@as("EncryptionConfig") encryptionConfig: option<encryptionConfig>,
  @as("BucketPrefix") bucketPrefix: prefix,
  @as("BucketName") bucketName: bucketName
}
type routingProfileSummaryList = array<routingProfileSummary>
type routingProfileQueueReferenceList = array<routingProfileQueueReference>
type routingProfileQueueConfigSummaryList = array<routingProfileQueueConfigSummary>
type routingProfileQueueConfig = {
@as("Delay") delay: delay,
  @as("Priority") priority: priority,
  @as("QueueReference") queueReference: routingProfileQueueReference
}
type quickConnectSummaryList = array<quickConnectSummary>
type quickConnectConfig = {
@as("PhoneConfig") phoneConfig: option<phoneNumberQuickConnectConfig>,
  @as("QueueConfig") queueConfig: option<queueQuickConnectConfig>,
  @as("UserConfig") userConfig: option<userQuickConnectConfig>,
  @as("QuickConnectType") quickConnectType: quickConnectType
}
type queueSummaryList = array<queueSummary>
type queue = {
@as("Tags") tags: option<tagMap>,
  @as("Status") status: option<queueStatus>,
  @as("MaxContacts") maxContacts: option<queueMaxContacts>,
  @as("HoursOfOperationId") hoursOfOperationId: option<hoursOfOperationId>,
  @as("OutboundCallerConfig") outboundCallerConfig: option<outboundCallerConfig>,
  @as("Description") description: option<queueDescription>,
  @as("QueueId") queueId: option<queueId>,
  @as("QueueArn") queueArn: option<arn>,
  @as("Name") name: option<commonNameLength127>
}
type promptSummaryList = array<promptSummary>
type problems = array<problemDetail>
type phoneNumberSummaryList = array<phoneNumberSummary>
type mediaConcurrencies = array<mediaConcurrency>
type lexBotsList = array<lexBot>
type kinesisVideoStreamConfig = {
@as("EncryptionConfig") encryptionConfig: encryptionConfig,
  @as("RetentionPeriodHours") retentionPeriodHours: hours,
  @as("Prefix") prefix: prefix
}
type integrationAssociationSummaryList = array<integrationAssociationSummary>
type instanceSummaryList = array<instanceSummary>
type instance = {
@as("OutboundCallsEnabled") outboundCallsEnabled: option<outboundCallsEnabled>,
  @as("InboundCallsEnabled") inboundCallsEnabled: option<inboundCallsEnabled>,
  @as("StatusReason") statusReason: option<instanceStatusReason>,
  @as("InstanceStatus") instanceStatus: option<instanceStatus>,
  @as("ServiceRole") serviceRole: option<arn>,
  @as("CreatedTime") createdTime: option<timestamp_>,
  @as("InstanceAlias") instanceAlias: option<directoryAlias>,
  @as("IdentityManagementType") identityManagementType: option<directoryType>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<instanceId>
}
type hoursOfOperationSummaryList = array<hoursOfOperationSummary>
type hoursOfOperationConfig = {
@as("EndTime") endTime: option<hoursOfOperationTimeSlice>,
  @as("StartTime") startTime: option<hoursOfOperationTimeSlice>,
  @as("Day") day: option<hoursOfOperationDays>
}
type historicalMetric = {
@as("Unit") unit_: option<unit_>,
  @as("Statistic") statistic: option<statistic>,
  @as("Threshold") threshold: option<threshold>,
  @as("Name") name: option<historicalMetricName>
}
type hierarchyStructureUpdate = {
@as("LevelFive") levelFive: option<hierarchyLevelUpdate>,
  @as("LevelFour") levelFour: option<hierarchyLevelUpdate>,
  @as("LevelThree") levelThree: option<hierarchyLevelUpdate>,
  @as("LevelTwo") levelTwo: option<hierarchyLevelUpdate>,
  @as("LevelOne") levelOne: option<hierarchyLevelUpdate>
}
type hierarchyStructure = {
@as("LevelFive") levelFive: option<hierarchyLevel>,
  @as("LevelFour") levelFour: option<hierarchyLevel>,
  @as("LevelThree") levelThree: option<hierarchyLevel>,
  @as("LevelTwo") levelTwo: option<hierarchyLevel>,
  @as("LevelOne") levelOne: option<hierarchyLevel>
}
type hierarchyPath = {
@as("LevelFive") levelFive: option<hierarchyGroupSummary>,
  @as("LevelFour") levelFour: option<hierarchyGroupSummary>,
  @as("LevelThree") levelThree: option<hierarchyGroupSummary>,
  @as("LevelTwo") levelTwo: option<hierarchyGroupSummary>,
  @as("LevelOne") levelOne: option<hierarchyGroupSummary>
}
type hierarchyGroupSummaryList = array<hierarchyGroupSummary>
type filters = {
@as("Channels") channels: option<channels>,
  @as("Queues") queues: option<queues>
}
type dimensions = {
@as("Channel") channel: option<channel>,
  @as("Queue") queue: option<queueReference>
}
type currentMetrics = array<currentMetric>
type currentMetricData = {
@as("Value") value: option<value>,
  @as("Metric") metric: option<currentMetric>
}
type contactReferences = Js.Dict.t<reference>
type contactFlowSummaryList = array<contactFlowSummary>
type contactFlow = {
@as("Tags") tags: option<tagMap>,
  @as("Content") content: option<contactFlowContent>,
  @as("Description") description: option<contactFlowDescription>,
  @as("Type") type_: option<contactFlowType>,
  @as("Name") name: option<contactFlowName>,
  @as("Id") id: option<contactFlowId>,
  @as("Arn") arn: option<arn>
}
type attributesList = array<attribute>
type routingProfileQueueConfigList = array<routingProfileQueueConfig>
type routingProfile = {
@as("Tags") tags: option<tagMap>,
  @as("DefaultOutboundQueueId") defaultOutboundQueueId: option<queueId>,
  @as("MediaConcurrencies") mediaConcurrencies: option<mediaConcurrencies>,
  @as("Description") description: option<routingProfileDescription>,
  @as("RoutingProfileId") routingProfileId: option<routingProfileId>,
  @as("RoutingProfileArn") routingProfileArn: option<arn>,
  @as("Name") name: option<routingProfileName>,
  @as("InstanceId") instanceId: option<instanceId>
}
type quickConnect = {
@as("Tags") tags: option<tagMap>,
  @as("QuickConnectConfig") quickConnectConfig: option<quickConnectConfig>,
  @as("Description") description: option<quickConnectDescription>,
  @as("Name") name: option<quickConnectName>,
  @as("QuickConnectId") quickConnectId: option<quickConnectId>,
  @as("QuickConnectARN") quickConnectARN: option<arn>
}
type instanceStorageConfig = {
@as("KinesisFirehoseConfig") kinesisFirehoseConfig: option<kinesisFirehoseConfig>,
  @as("KinesisStreamConfig") kinesisStreamConfig: option<kinesisStreamConfig>,
  @as("KinesisVideoStreamConfig") kinesisVideoStreamConfig: option<kinesisVideoStreamConfig>,
  @as("S3Config") s3Config: option<s3Config>,
  @as("StorageType") storageType: storageType,
  @as("AssociationId") associationId: option<associationId>
}
type hoursOfOperationConfigList = array<hoursOfOperationConfig>
type historicalMetrics = array<historicalMetric>
type historicalMetricData = {
@as("Value") value: option<value>,
  @as("Metric") metric: option<historicalMetric>
}
type hierarchyGroup = {
@as("HierarchyPath") hierarchyPath: option<hierarchyPath>,
  @as("LevelId") levelId: option<hierarchyLevelId>,
  @as("Name") name: option<hierarchyGroupName>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<hierarchyGroupId>
}
type currentMetricDataCollections = array<currentMetricData>
type instanceStorageConfigs = array<instanceStorageConfig>
type hoursOfOperation = {
@as("Tags") tags: option<tagMap>,
  @as("Config") config: option<hoursOfOperationConfigList>,
  @as("TimeZone") timeZone: option<timeZone>,
  @as("Description") description: option<commonDescriptionLength250>,
  @as("Name") name: option<commonNameLength127>,
  @as("HoursOfOperationArn") hoursOfOperationArn: option<arn>,
  @as("HoursOfOperationId") hoursOfOperationId: option<hoursOfOperationId>
}
type historicalMetricDataCollections = array<historicalMetricData>
type currentMetricResult = {
@as("Collections") collections: option<currentMetricDataCollections>,
  @as("Dimensions") dimensions: option<dimensions>
}
type historicalMetricResult = {
@as("Collections") collections: option<historicalMetricDataCollections>,
  @as("Dimensions") dimensions: option<dimensions>
}
type currentMetricResults = array<currentMetricResult>
type historicalMetricResults = array<historicalMetricResult>

module UpdateUserRoutingProfile = {
  type t;
  type request = {
@as("InstanceId") instanceId: instanceId,
  @as("UserId") userId: userId,
  @as("RoutingProfileId") routingProfileId: routingProfileId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateUserRoutingProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateUserHierarchyGroupName = {
  type t;
  type request = {
@as("InstanceId") instanceId: instanceId,
  @as("HierarchyGroupId") hierarchyGroupId: hierarchyGroupId,
  @as("Name") name: hierarchyGroupName
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateUserHierarchyGroupNameCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateUserHierarchy = {
  type t;
  type request = {
@as("InstanceId") instanceId: instanceId,
  @as("UserId") userId: userId,
  @as("HierarchyGroupId") hierarchyGroupId: option<hierarchyGroupId>
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateUserHierarchyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateRoutingProfileName = {
  type t;
  type request = {
@as("Description") description: option<routingProfileDescription>,
  @as("Name") name: option<routingProfileName>,
  @as("RoutingProfileId") routingProfileId: routingProfileId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateRoutingProfileNameCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateRoutingProfileDefaultOutboundQueue = {
  type t;
  type request = {
@as("DefaultOutboundQueueId") defaultOutboundQueueId: queueId,
  @as("RoutingProfileId") routingProfileId: routingProfileId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateRoutingProfileDefaultOutboundQueueCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateQuickConnectName = {
  type t;
  type request = {
@as("Description") description: option<quickConnectDescription>,
  @as("Name") name: option<quickConnectName>,
  @as("QuickConnectId") quickConnectId: quickConnectId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateQuickConnectNameCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateQueueStatus = {
  type t;
  type request = {
@as("Status") status: queueStatus,
  @as("QueueId") queueId: queueId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateQueueStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateQueueName = {
  type t;
  type request = {
@as("Description") description: option<queueDescription>,
  @as("Name") name: option<commonNameLength127>,
  @as("QueueId") queueId: queueId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateQueueNameCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateQueueMaxContacts = {
  type t;
  type request = {
@as("MaxContacts") maxContacts: option<queueMaxContacts>,
  @as("QueueId") queueId: queueId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateQueueMaxContactsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateQueueHoursOfOperation = {
  type t;
  type request = {
@as("HoursOfOperationId") hoursOfOperationId: hoursOfOperationId,
  @as("QueueId") queueId: queueId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateQueueHoursOfOperationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateInstanceAttribute = {
  type t;
  type request = {
@as("Value") value: instanceAttributeValue,
  @as("AttributeType") attributeType: instanceAttributeType,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateInstanceAttributeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateContactFlowName = {
  type t;
  type request = {
@as("Description") description: option<contactFlowDescription>,
  @as("Name") name: option<contactFlowName>,
  @as("ContactFlowId") contactFlowId: contactFlowId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateContactFlowNameCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module SuspendContactRecording = {
  type t;
  type request = {
@as("InitialContactId") initialContactId: contactId,
  @as("ContactId") contactId: contactId,
  @as("InstanceId") instanceId: instanceId
}
  type response = unit
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "SuspendContactRecordingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopContactRecording = {
  type t;
  type request = {
@as("InitialContactId") initialContactId: contactId,
  @as("ContactId") contactId: contactId,
  @as("InstanceId") instanceId: instanceId
}
  type response = unit
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "StopContactRecordingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopContact = {
  type t;
  type request = {
@as("InstanceId") instanceId: instanceId,
  @as("ContactId") contactId: contactId
}
  type response = unit
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "StopContactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ResumeContactRecording = {
  type t;
  type request = {
@as("InitialContactId") initialContactId: contactId,
  @as("ContactId") contactId: contactId,
  @as("InstanceId") instanceId: instanceId
}
  type response = unit
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ResumeContactRecordingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateSecurityKey = {
  type t;
  type request = {
@as("AssociationId") associationId: associationId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DisassociateSecurityKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DisassociateLexBot = {
  type t;
  type request = {
@as("LexRegion") lexRegion: lexRegion,
  @as("BotName") botName: botName,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DisassociateLexBotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DisassociateLambdaFunction = {
  type t;
  type request = {
@as("FunctionArn") functionArn: functionArn,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DisassociateLambdaFunctionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DisassociateInstanceStorageConfig = {
  type t;
  type request = {
@as("ResourceType") resourceType: instanceStorageResourceType,
  @as("AssociationId") associationId: associationId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DisassociateInstanceStorageConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DisassociateApprovedOrigin = {
  type t;
  type request = {
@as("Origin") origin: origin,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DisassociateApprovedOriginCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteUserHierarchyGroup = {
  type t;
  type request = {
@as("InstanceId") instanceId: instanceId,
  @as("HierarchyGroupId") hierarchyGroupId: hierarchyGroupId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DeleteUserHierarchyGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteUser = {
  type t;
  type request = {
@as("UserId") userId: userId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DeleteUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteUseCase = {
  type t;
  type request = {
@as("UseCaseId") useCaseId: useCaseId,
  @as("IntegrationAssociationId") integrationAssociationId: integrationAssociationId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DeleteUseCaseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteQuickConnect = {
  type t;
  type request = {
@as("QuickConnectId") quickConnectId: quickConnectId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DeleteQuickConnectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteIntegrationAssociation = {
  type t;
  type request = {
@as("IntegrationAssociationId") integrationAssociationId: integrationAssociationId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DeleteIntegrationAssociationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteInstance = {
  type t;
  type request = {
@as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DeleteInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CreateUserHierarchyGroup = {
  type t;
  type request = {
@as("InstanceId") instanceId: instanceId,
  @as("ParentGroupId") parentGroupId: option<hierarchyGroupId>,
  @as("Name") name: hierarchyGroupName
}
  type response = {
@as("HierarchyGroupArn") hierarchyGroupArn: option<arn>,
  @as("HierarchyGroupId") hierarchyGroupId: option<hierarchyGroupId>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "CreateUserHierarchyGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateInstance = {
  type t;
  type request = {
@as("OutboundCallsEnabled") outboundCallsEnabled: outboundCallsEnabled,
  @as("InboundCallsEnabled") inboundCallsEnabled: inboundCallsEnabled,
  @as("DirectoryId") directoryId: option<directoryId>,
  @as("InstanceAlias") instanceAlias: option<directoryAlias>,
  @as("IdentityManagementType") identityManagementType: directoryType,
  @as("ClientToken") clientToken: option<clientToken>
}
  type response = {
@as("Arn") arn: option<arn>,
  @as("Id") id: option<instanceId>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "CreateInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateSecurityKey = {
  type t;
  type request = {
@as("Key") key: pem,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("AssociationId") associationId: option<associationId>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "AssociateSecurityKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateLambdaFunction = {
  type t;
  type request = {
@as("FunctionArn") functionArn: functionArn,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "AssociateLambdaFunctionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module AssociateApprovedOrigin = {
  type t;
  type request = {
@as("Origin") origin: origin,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "AssociateApprovedOriginCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateUserSecurityProfiles = {
  type t;
  type request = {
@as("InstanceId") instanceId: instanceId,
  @as("UserId") userId: userId,
  @as("SecurityProfileIds") securityProfileIds: securityProfileIds
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateUserSecurityProfilesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateUserPhoneConfig = {
  type t;
  type request = {
@as("InstanceId") instanceId: instanceId,
  @as("UserId") userId: userId,
  @as("PhoneConfig") phoneConfig: userPhoneConfig
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateUserPhoneConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateUserIdentityInfo = {
  type t;
  type request = {
@as("InstanceId") instanceId: instanceId,
  @as("UserId") userId: userId,
  @as("IdentityInfo") identityInfo: userIdentityInfo
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateUserIdentityInfoCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateQueueOutboundCallerConfig = {
  type t;
  type request = {
@as("OutboundCallerConfig") outboundCallerConfig: outboundCallerConfig,
  @as("QueueId") queueId: queueId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateQueueOutboundCallerConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateContactAttributes = {
  type t;
  type request = {
@as("Attributes") attributes: attributes,
  @as("InstanceId") instanceId: instanceId,
  @as("InitialContactId") initialContactId: contactId
}
  type response = unit
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateContactAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
  resourceArn: arn
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagMap,
  resourceArn: arn
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module StartOutboundVoiceContact = {
  type t;
  type request = {
@as("Attributes") attributes: option<attributes>,
  @as("QueueId") queueId: option<queueId>,
  @as("SourcePhoneNumber") sourcePhoneNumber: option<phoneNumber>,
  @as("ClientToken") clientToken: option<clientToken>,
  @as("InstanceId") instanceId: instanceId,
  @as("ContactFlowId") contactFlowId: contactFlowId,
  @as("DestinationPhoneNumber") destinationPhoneNumber: phoneNumber
}
  type response = {
@as("ContactId") contactId: option<contactId>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "StartOutboundVoiceContactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartContactRecording = {
  type t;
  type request = {
@as("VoiceRecordingConfiguration") voiceRecordingConfiguration: voiceRecordingConfiguration,
  @as("InitialContactId") initialContactId: contactId,
  @as("ContactId") contactId: contactId,
  @as("InstanceId") instanceId: instanceId
}
  type response = unit
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "StartContactRecordingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartChatContact = {
  type t;
  type request = {
@as("ClientToken") clientToken: option<clientToken>,
  @as("InitialMessage") initialMessage: option<chatMessage>,
  @as("ParticipantDetails") participantDetails: participantDetails,
  @as("Attributes") attributes: option<attributes>,
  @as("ContactFlowId") contactFlowId: contactFlowId,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("ParticipantToken") participantToken: option<participantToken>,
  @as("ParticipantId") participantId: option<participantId>,
  @as("ContactId") contactId: option<contactId>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "StartChatContactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: arn
}
  type response = {
tags: option<tagMap>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLambdaFunctions = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult25>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("LambdaFunctions") lambdaFunctions: option<functionArnsList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListLambdaFunctionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListApprovedOrigins = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult25>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Origins") origins: option<originsList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListApprovedOriginsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFederationToken = {
  type t;
  type request = {
@as("InstanceId") instanceId: instanceId
}
  type response = {
@as("Credentials") credentials: option<credentials>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "GetFederationTokenCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContactAttributes = {
  type t;
  type request = {
@as("InitialContactId") initialContactId: contactId,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("Attributes") attributes: option<attributes>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "GetContactAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateQueueQuickConnects = {
  type t;
  type request = {
@as("QuickConnectIds") quickConnectIds: quickConnectsList,
  @as("QueueId") queueId: queueId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DisassociateQueueQuickConnectsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DescribeInstanceAttribute = {
  type t;
  type request = {
@as("AttributeType") attributeType: instanceAttributeType,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("Attribute") attribute: option<attribute>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DescribeInstanceAttributeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateUser = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
  @as("InstanceId") instanceId: instanceId,
  @as("HierarchyGroupId") hierarchyGroupId: option<hierarchyGroupId>,
  @as("RoutingProfileId") routingProfileId: routingProfileId,
  @as("SecurityProfileIds") securityProfileIds: securityProfileIds,
  @as("DirectoryUserId") directoryUserId: option<directoryUserId>,
  @as("PhoneConfig") phoneConfig: userPhoneConfig,
  @as("IdentityInfo") identityInfo: option<userIdentityInfo>,
  @as("Password") password: option<password>,
  @as("Username") username: agentUsername
}
  type response = {
@as("UserArn") userArn: option<arn>,
  @as("UserId") userId: option<userId>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "CreateUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateUseCase = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
  @as("UseCaseType") useCaseType: useCaseType,
  @as("IntegrationAssociationId") integrationAssociationId: integrationAssociationId,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("UseCaseArn") useCaseArn: option<arn>,
  @as("UseCaseId") useCaseId: option<useCaseId>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "CreateUseCaseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateQueue = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
  @as("QuickConnectIds") quickConnectIds: option<quickConnectsList>,
  @as("MaxContacts") maxContacts: option<queueMaxContacts>,
  @as("HoursOfOperationId") hoursOfOperationId: hoursOfOperationId,
  @as("OutboundCallerConfig") outboundCallerConfig: option<outboundCallerConfig>,
  @as("Description") description: option<queueDescription>,
  @as("Name") name: commonNameLength127,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("QueueId") queueId: option<queueId>,
  @as("QueueArn") queueArn: option<arn>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "CreateQueueCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateIntegrationAssociation = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
  @as("SourceType") sourceType: sourceType,
  @as("SourceApplicationName") sourceApplicationName: sourceApplicationName,
  @as("SourceApplicationUrl") sourceApplicationUrl: uri,
  @as("IntegrationArn") integrationArn: arn,
  @as("IntegrationType") integrationType: integrationType,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("IntegrationAssociationArn") integrationAssociationArn: option<arn>,
  @as("IntegrationAssociationId") integrationAssociationId: option<integrationAssociationId>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "CreateIntegrationAssociationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateQueueQuickConnects = {
  type t;
  type request = {
@as("QuickConnectIds") quickConnectIds: quickConnectsList,
  @as("QueueId") queueId: queueId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "AssociateQueueQuickConnectsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module AssociateLexBot = {
  type t;
  type request = {
@as("LexBot") lexBot: lexBot,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "AssociateLexBotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateUserHierarchyStructure = {
  type t;
  type request = {
@as("InstanceId") instanceId: instanceId,
  @as("HierarchyStructure") hierarchyStructure: hierarchyStructureUpdate
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateUserHierarchyStructureCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateRoutingProfileConcurrency = {
  type t;
  type request = {
@as("MediaConcurrencies") mediaConcurrencies: mediaConcurrencies,
  @as("RoutingProfileId") routingProfileId: routingProfileId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateRoutingProfileConcurrencyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateQuickConnectConfig = {
  type t;
  type request = {
@as("QuickConnectConfig") quickConnectConfig: quickConnectConfig,
  @as("QuickConnectId") quickConnectId: quickConnectId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateQuickConnectConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateContactFlowContent = {
  type t;
  type request = {
@as("Content") content: contactFlowContent,
  @as("ContactFlowId") contactFlowId: contactFlowId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateContactFlowContentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module StartTaskContact = {
  type t;
  type request = {
@as("ClientToken") clientToken: option<clientToken>,
  @as("Description") description: option<description>,
  @as("References") references: option<contactReferences>,
  @as("Name") name: name,
  @as("Attributes") attributes: option<attributes>,
  @as("ContactFlowId") contactFlowId: contactFlowId,
  @as("PreviousContactId") previousContactId: option<contactId>,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("ContactId") contactId: option<contactId>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "StartTaskContactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListUsers = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult1000>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("UserSummaryList") userSummaryList: option<userSummaryList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListUsersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListUserHierarchyGroups = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult1000>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("UserHierarchyGroupSummaryList") userHierarchyGroupSummaryList: option<hierarchyGroupSummaryList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListUserHierarchyGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListUseCases = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult100>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("IntegrationAssociationId") integrationAssociationId: integrationAssociationId,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("UseCaseSummaryList") useCaseSummaryList: option<useCaseSummaryList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListUseCasesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSecurityProfiles = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult1000>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("SecurityProfileSummaryList") securityProfileSummaryList: option<securityProfileSummaryList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListSecurityProfilesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSecurityKeys = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult2>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("SecurityKeys") securityKeys: option<securityKeysList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListSecurityKeysCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRoutingProfiles = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult1000>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("RoutingProfileSummaryList") routingProfileSummaryList: option<routingProfileSummaryList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListRoutingProfilesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRoutingProfileQueues = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult100>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("RoutingProfileId") routingProfileId: routingProfileId,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("RoutingProfileQueueConfigSummaryList") routingProfileQueueConfigSummaryList: option<routingProfileQueueConfigSummaryList>,
  @as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListRoutingProfileQueuesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListQuickConnects = {
  type t;
  type request = {
@as("QuickConnectTypes") quickConnectTypes: option<quickConnectTypes>,
  @as("MaxResults") maxResults: option<maxResult1000>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("QuickConnectSummaryList") quickConnectSummaryList: option<quickConnectSummaryList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListQuickConnectsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListQueues = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult1000>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("QueueTypes") queueTypes: option<queueTypes>,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("QueueSummaryList") queueSummaryList: option<queueSummaryList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListQueuesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListQueueQuickConnects = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult100>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("QueueId") queueId: queueId,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("QuickConnectSummaryList") quickConnectSummaryList: option<quickConnectSummaryList>,
  @as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListQueueQuickConnectsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPrompts = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult1000>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("PromptSummaryList") promptSummaryList: option<promptSummaryList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListPromptsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPhoneNumbers = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult1000>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("PhoneNumberCountryCodes") phoneNumberCountryCodes: option<phoneNumberCountryCodes>,
  @as("PhoneNumberTypes") phoneNumberTypes: option<phoneNumberTypes>,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("PhoneNumberSummaryList") phoneNumberSummaryList: option<phoneNumberSummaryList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListPhoneNumbersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLexBots = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult25>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("LexBots") lexBots: option<lexBotsList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListLexBotsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListIntegrationAssociations = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult100>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("IntegrationAssociationSummaryList") integrationAssociationSummaryList: option<integrationAssociationSummaryList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListIntegrationAssociationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListInstances = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult10>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("InstanceSummaryList") instanceSummaryList: option<instanceSummaryList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListInstanceAttributes = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult7>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Attributes") attributes: option<attributesList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListInstanceAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListHoursOfOperations = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult1000>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("HoursOfOperationSummaryList") hoursOfOperationSummaryList: option<hoursOfOperationSummaryList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListHoursOfOperationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListContactFlows = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult1000>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ContactFlowTypes") contactFlowTypes: option<contactFlowTypes>,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("ContactFlowSummaryList") contactFlowSummaryList: option<contactFlowSummaryList>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListContactFlowsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateRoutingProfileQueues = {
  type t;
  type request = {
@as("QueueReferences") queueReferences: routingProfileQueueReferenceList,
  @as("RoutingProfileId") routingProfileId: routingProfileId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DisassociateRoutingProfileQueuesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DescribeUserHierarchyStructure = {
  type t;
  type request = {
@as("InstanceId") instanceId: instanceId
}
  type response = {
@as("HierarchyStructure") hierarchyStructure: option<hierarchyStructure>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DescribeUserHierarchyStructureCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeUser = {
  type t;
  type request = {
@as("InstanceId") instanceId: instanceId,
  @as("UserId") userId: userId
}
  type response = {
@as("User") user: option<user>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DescribeUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeQueue = {
  type t;
  type request = {
@as("QueueId") queueId: queueId,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("Queue") queue: option<queue>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DescribeQueueCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeInstance = {
  type t;
  type request = {
@as("InstanceId") instanceId: instanceId
}
  type response = {
@as("Instance") instance: option<instance>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DescribeInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeContactFlow = {
  type t;
  type request = {
@as("ContactFlowId") contactFlowId: contactFlowId,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("ContactFlow") contactFlow: option<contactFlow>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DescribeContactFlowCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateQuickConnect = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
  @as("QuickConnectConfig") quickConnectConfig: quickConnectConfig,
  @as("Description") description: option<quickConnectDescription>,
  @as("Name") name: quickConnectName,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("QuickConnectId") quickConnectId: option<quickConnectId>,
  @as("QuickConnectARN") quickConnectARN: option<arn>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "CreateQuickConnectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateContactFlow = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
  @as("Content") content: contactFlowContent,
  @as("Description") description: option<contactFlowDescription>,
  @as("Type") type_: contactFlowType,
  @as("Name") name: contactFlowName,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("ContactFlowArn") contactFlowArn: option<arn>,
  @as("ContactFlowId") contactFlowId: option<contactFlowId>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "CreateContactFlowCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateRoutingProfileQueues = {
  type t;
  type request = {
@as("QueueConfigs") queueConfigs: routingProfileQueueConfigList,
  @as("RoutingProfileId") routingProfileId: routingProfileId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateRoutingProfileQueuesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateInstanceStorageConfig = {
  type t;
  type request = {
@as("StorageConfig") storageConfig: instanceStorageConfig,
  @as("ResourceType") resourceType: instanceStorageResourceType,
  @as("AssociationId") associationId: associationId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "UpdateInstanceStorageConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DescribeUserHierarchyGroup = {
  type t;
  type request = {
@as("InstanceId") instanceId: instanceId,
  @as("HierarchyGroupId") hierarchyGroupId: hierarchyGroupId
}
  type response = {
@as("HierarchyGroup") hierarchyGroup: option<hierarchyGroup>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DescribeUserHierarchyGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRoutingProfile = {
  type t;
  type request = {
@as("RoutingProfileId") routingProfileId: routingProfileId,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("RoutingProfile") routingProfile: option<routingProfile>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DescribeRoutingProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeQuickConnect = {
  type t;
  type request = {
@as("QuickConnectId") quickConnectId: quickConnectId,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("QuickConnect") quickConnect: option<quickConnect>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DescribeQuickConnectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeInstanceStorageConfig = {
  type t;
  type request = {
@as("ResourceType") resourceType: instanceStorageResourceType,
  @as("AssociationId") associationId: associationId,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("StorageConfig") storageConfig: option<instanceStorageConfig>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DescribeInstanceStorageConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRoutingProfile = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
  @as("MediaConcurrencies") mediaConcurrencies: mediaConcurrencies,
  @as("QueueConfigs") queueConfigs: option<routingProfileQueueConfigList>,
  @as("DefaultOutboundQueueId") defaultOutboundQueueId: queueId,
  @as("Description") description: routingProfileDescription,
  @as("Name") name: routingProfileName,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("RoutingProfileId") routingProfileId: option<routingProfileId>,
  @as("RoutingProfileArn") routingProfileArn: option<arn>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "CreateRoutingProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateRoutingProfileQueues = {
  type t;
  type request = {
@as("QueueConfigs") queueConfigs: routingProfileQueueConfigList,
  @as("RoutingProfileId") routingProfileId: routingProfileId,
  @as("InstanceId") instanceId: instanceId
}
  
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "AssociateRoutingProfileQueuesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module AssociateInstanceStorageConfig = {
  type t;
  type request = {
@as("StorageConfig") storageConfig: instanceStorageConfig,
  @as("ResourceType") resourceType: instanceStorageResourceType,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("AssociationId") associationId: option<associationId>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "AssociateInstanceStorageConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListInstanceStorageConfigs = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult10>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ResourceType") resourceType: instanceStorageResourceType,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("StorageConfigs") storageConfigs: option<instanceStorageConfigs>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "ListInstanceStorageConfigsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeHoursOfOperation = {
  type t;
  type request = {
@as("HoursOfOperationId") hoursOfOperationId: hoursOfOperationId,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("HoursOfOperation") hoursOfOperation: option<hoursOfOperation>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "DescribeHoursOfOperationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCurrentMetricData = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult100>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("CurrentMetrics") currentMetrics: currentMetrics,
  @as("Groupings") groupings: option<groupings>,
  @as("Filters") filters: filters,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("DataSnapshotTime") dataSnapshotTime: option<timestamp_>,
  @as("MetricResults") metricResults: option<currentMetricResults>,
  @as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "GetCurrentMetricDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetMetricData = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResult100>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("HistoricalMetrics") historicalMetrics: historicalMetrics,
  @as("Groupings") groupings: option<groupings>,
  @as("Filters") filters: filters,
  @as("EndTime") endTime: timestamp_,
  @as("StartTime") startTime: timestamp_,
  @as("InstanceId") instanceId: instanceId
}
  type response = {
@as("MetricResults") metricResults: option<historicalMetricResults>,
  @as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-connect") @new external new_: (request) => t = "GetMetricDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
