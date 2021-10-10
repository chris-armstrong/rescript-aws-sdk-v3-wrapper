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
external createClient: unit => awsServiceClient = "ConnectClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type voiceRecordingTrack = [
  | @as("ALL") #ALL
  | @as("TO_AGENT") #TO_AGENT
  | @as("FROM_AGENT") #FROM_AGENT
]
type value = float
type userId = string
type useCaseType = [@as("RULES_EVALUATION") #RULES_EVALUATION]
type useCaseId = string
type unit_ = [@as("PERCENT") #PERCENT | @as("COUNT") #COUNT | @as("SECONDS") #SECONDS]
type uri = string
type timestamp_ = Js.Date.t
type timeZone = string
type thresholdValue = float
type tagValue = string
type tagKey = string
type string_ = string
type storageType = [
  | @as("KINESIS_FIREHOSE") #KINESIS_FIREHOSE
  | @as("KINESIS_STREAM") #KINESIS_STREAM
  | @as("KINESIS_VIDEO_STREAM") #KINESIS_VIDEO_STREAM
  | @as("S3") #S3
]
type statistic = [@as("AVG") #AVG | @as("MAX") #MAX | @as("SUM") #SUM]
type sourceType = [@as("ZENDESK") #ZENDESK | @as("SALESFORCE") #SALESFORCE]
type sourceApplicationName = string
type securityToken = string
type securityProfileName = string
type securityProfileId = string
type routingProfileName = string
type routingProfileId = string
type routingProfileDescription = string
type resourceType = [
  | @as("USER") #USER
  | @as("HIERARCHY_GROUP") #HIERARCHY_GROUP
  | @as("HIERARCHY_LEVEL") #HIERARCHY_LEVEL
  | @as("PARTICIPANT") #PARTICIPANT
  | @as("INSTANCE") #INSTANCE
  | @as("CONTACT_FLOW") #CONTACT_FLOW
  | @as("CONTACT") #CONTACT
]
type referenceValue = string
type referenceType = [@as("URL") #URL]
type referenceKey = string
type quickConnectType = [
  | @as("PHONE_NUMBER") #PHONE_NUMBER
  | @as("QUEUE") #QUEUE
  | @as("USER") #USER
]
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
type phoneNumberCountryCode = [
  | @as("ZW") #ZW
  | @as("ZM") #ZM
  | @as("YE") #YE
  | @as("EH") #EH
  | @as("WF") #WF
  | @as("VN") #VN
  | @as("VE") #VE
  | @as("VA") #VA
  | @as("VU") #VU
  | @as("UZ") #UZ
  | @as("UY") #UY
  | @as("US") #US
  | @as("GB") #GB
  | @as("AE") #AE
  | @as("UA") #UA
  | @as("UG") #UG
  | @as("VI") #VI
  | @as("TV") #TV
  | @as("TC") #TC
  | @as("TM") #TM
  | @as("TR") #TR
  | @as("TN") #TN
  | @as("TT") #TT
  | @as("TO") #TO
  | @as("TK") #TK
  | @as("TG") #TG
  | @as("TH") #TH
  | @as("TZ") #TZ
  | @as("TJ") #TJ
  | @as("TW") #TW
  | @as("SY") #SY
  | @as("CH") #CH
  | @as("SE") #SE
  | @as("SZ") #SZ
  | @as("SJ") #SJ
  | @as("SR") #SR
  | @as("SD") #SD
  | @as("LK") #LK
  | @as("ES") #ES
  | @as("KR") #KR
  | @as("ZA") #ZA
  | @as("SO") #SO
  | @as("SB") #SB
  | @as("SI") #SI
  | @as("SK") #SK
  | @as("SX") #SX
  | @as("SG") #SG
  | @as("SL") #SL
  | @as("SC") #SC
  | @as("RS") #RS
  | @as("SN") #SN
  | @as("SA") #SA
  | @as("ST") #ST
  | @as("SM") #SM
  | @as("WS") #WS
  | @as("VC") #VC
  | @as("PM") #PM
  | @as("MF") #MF
  | @as("LC") #LC
  | @as("KN") #KN
  | @as("SH") #SH
  | @as("BL") #BL
  | @as("RW") #RW
  | @as("RU") #RU
  | @as("RO") #RO
  | @as("RE") #RE
  | @as("CG") #CG
  | @as("QA") #QA
  | @as("PR") #PR
  | @as("PT") #PT
  | @as("PL") #PL
  | @as("PN") #PN
  | @as("PH") #PH
  | @as("PE") #PE
  | @as("PY") #PY
  | @as("PG") #PG
  | @as("PA") #PA
  | @as("PW") #PW
  | @as("PK") #PK
  | @as("OM") #OM
  | @as("NO") #NO
  | @as("MP") #MP
  | @as("KP") #KP
  | @as("NU") #NU
  | @as("NG") #NG
  | @as("NE") #NE
  | @as("NI") #NI
  | @as("NZ") #NZ
  | @as("NC") #NC
  | @as("AN") #AN
  | @as("NL") #NL
  | @as("NP") #NP
  | @as("NR") #NR
  | @as("NA") #NA
  | @as("MM") #MM
  | @as("MZ") #MZ
  | @as("MA") #MA
  | @as("MS") #MS
  | @as("ME") #ME
  | @as("MN") #MN
  | @as("MC") #MC
  | @as("MD") #MD
  | @as("FM") #FM
  | @as("MX") #MX
  | @as("YT") #YT
  | @as("MU") #MU
  | @as("MR") #MR
  | @as("MH") #MH
  | @as("MT") #MT
  | @as("ML") #ML
  | @as("MV") #MV
  | @as("MY") #MY
  | @as("MW") #MW
  | @as("MG") #MG
  | @as("MK") #MK
  | @as("MO") #MO
  | @as("LU") #LU
  | @as("LT") #LT
  | @as("LI") #LI
  | @as("LY") #LY
  | @as("LR") #LR
  | @as("LS") #LS
  | @as("LB") #LB
  | @as("LV") #LV
  | @as("LA") #LA
  | @as("KG") #KG
  | @as("KW") #KW
  | @as("KI") #KI
  | @as("KE") #KE
  | @as("KZ") #KZ
  | @as("JO") #JO
  | @as("JE") #JE
  | @as("JP") #JP
  | @as("JM") #JM
  | @as("CI") #CI
  | @as("IT") #IT
  | @as("IL") #IL
  | @as("IM") #IM
  | @as("IE") #IE
  | @as("IQ") #IQ
  | @as("IR") #IR
  | @as("ID") #ID
  | @as("IN") #IN
  | @as("IS") #IS
  | @as("HU") #HU
  | @as("HK") #HK
  | @as("HN") #HN
  | @as("HT") #HT
  | @as("GY") #GY
  | @as("GW") #GW
  | @as("GN") #GN
  | @as("GG") #GG
  | @as("GT") #GT
  | @as("GU") #GU
  | @as("GD") #GD
  | @as("GL") #GL
  | @as("GR") #GR
  | @as("GI") #GI
  | @as("GH") #GH
  | @as("DE") #DE
  | @as("GE") #GE
  | @as("GM") #GM
  | @as("GA") #GA
  | @as("PF") #PF
  | @as("FR") #FR
  | @as("FI") #FI
  | @as("FJ") #FJ
  | @as("FO") #FO
  | @as("FK") #FK
  | @as("ET") #ET
  | @as("EE") #EE
  | @as("ER") #ER
  | @as("GQ") #GQ
  | @as("SV") #SV
  | @as("EG") #EG
  | @as("EC") #EC
  | @as("TL") #TL
  | @as("DO") #DO
  | @as("DM") #DM
  | @as("DJ") #DJ
  | @as("DK") #DK
  | @as("CD") #CD
  | @as("CZ") #CZ
  | @as("CY") #CY
  | @as("CW") #CW
  | @as("CU") #CU
  | @as("HR") #HR
  | @as("CR") #CR
  | @as("CK") #CK
  | @as("KM") #KM
  | @as("CO") #CO
  | @as("CC") #CC
  | @as("CX") #CX
  | @as("CN") #CN
  | @as("CL") #CL
  | @as("TD") #TD
  | @as("CF") #CF
  | @as("KY") #KY
  | @as("CV") #CV
  | @as("CA") #CA
  | @as("CM") #CM
  | @as("KH") #KH
  | @as("BI") #BI
  | @as("BF") #BF
  | @as("BG") #BG
  | @as("BN") #BN
  | @as("VG") #VG
  | @as("IO") #IO
  | @as("BR") #BR
  | @as("BW") #BW
  | @as("BA") #BA
  | @as("BO") #BO
  | @as("BT") #BT
  | @as("BM") #BM
  | @as("BJ") #BJ
  | @as("BZ") #BZ
  | @as("BE") #BE
  | @as("BY") #BY
  | @as("BB") #BB
  | @as("BD") #BD
  | @as("BH") #BH
  | @as("BS") #BS
  | @as("AZ") #AZ
  | @as("AT") #AT
  | @as("AU") #AU
  | @as("AW") #AW
  | @as("AM") #AM
  | @as("AR") #AR
  | @as("AG") #AG
  | @as("AQ") #AQ
  | @as("AI") #AI
  | @as("AO") #AO
  | @as("AD") #AD
  | @as("AS") #AS
  | @as("DZ") #DZ
  | @as("AL") #AL
  | @as("AF") #AF
]
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
type instanceStorageResourceType = [
  | @as("AGENT_EVENTS") #AGENT_EVENTS
  | @as("CONTACT_TRACE_RECORDS") #CONTACT_TRACE_RECORDS
  | @as("MEDIA_STREAMS") #MEDIA_STREAMS
  | @as("SCHEDULED_REPORTS") #SCHEDULED_REPORTS
  | @as("CALL_RECORDINGS") #CALL_RECORDINGS
  | @as("CHAT_TRANSCRIPTS") #CHAT_TRANSCRIPTS
]
type instanceStatus = [
  | @as("CREATION_FAILED") #CREATION_FAILED
  | @as("ACTIVE") #ACTIVE
  | @as("CREATION_IN_PROGRESS") #CREATION_IN_PROGRESS
]
type instanceId = string
type instanceAttributeValue = string
type instanceAttributeType = [
  | @as("EARLY_MEDIA") #EARLY_MEDIA
  | @as("USE_CUSTOM_TTS_VOICES") #USE_CUSTOM_TTS_VOICES
  | @as("AUTO_RESOLVE_BEST_VOICES") #AUTO_RESOLVE_BEST_VOICES
  | @as("CONTACT_LENS") #CONTACT_LENS
  | @as("CONTACTFLOW_LOGS") #CONTACTFLOW_LOGS
  | @as("OUTBOUND_CALLS") #OUTBOUND_CALLS
  | @as("INBOUND_CALLS") #INBOUND_CALLS
]
type inboundCallsEnabled = bool
type hoursOfOperationName = string
type hoursOfOperationId = string
type hoursOfOperationDays = [
  | @as("SATURDAY") #SATURDAY
  | @as("FRIDAY") #FRIDAY
  | @as("THURSDAY") #THURSDAY
  | @as("WEDNESDAY") #WEDNESDAY
  | @as("TUESDAY") #TUESDAY
  | @as("MONDAY") #MONDAY
  | @as("SUNDAY") #SUNDAY
]
type hours24Format = int
type hours = int
@ocaml.doc("<p>The historical metric names.</p>")
type historicalMetricName = [
  | @as("SERVICE_LEVEL") #SERVICE_LEVEL
  | @as("INTERACTION_AND_HOLD_TIME") #INTERACTION_AND_HOLD_TIME
  | @as("INTERACTION_TIME") #INTERACTION_TIME
  | @as("HOLD_TIME") #HOLD_TIME
  | @as("QUEUE_ANSWER_TIME") #QUEUE_ANSWER_TIME
  | @as("ABANDON_TIME") #ABANDON_TIME
  | @as("QUEUED_TIME") #QUEUED_TIME
  | @as("AFTER_CONTACT_WORK_TIME") #AFTER_CONTACT_WORK_TIME
  | @as("HANDLE_TIME") #HANDLE_TIME
  | @as("OCCUPANCY") #OCCUPANCY
  | @as("API_CONTACTS_HANDLED") #API_CONTACTS_HANDLED
  | @as("CALLBACK_CONTACTS_HANDLED") #CALLBACK_CONTACTS_HANDLED
  | @as("CONTACTS_MISSED") #CONTACTS_MISSED
  | @as("CONTACTS_TRANSFERRED_OUT_FROM_QUEUE") #CONTACTS_TRANSFERRED_OUT_FROM_QUEUE
  | @as("CONTACTS_TRANSFERRED_IN_FROM_QUEUE") #CONTACTS_TRANSFERRED_IN_FROM_QUEUE
  | @as("CONTACTS_TRANSFERRED_OUT") #CONTACTS_TRANSFERRED_OUT
  | @as("CONTACTS_TRANSFERRED_IN") #CONTACTS_TRANSFERRED_IN
  | @as("CONTACTS_HOLD_ABANDONS") #CONTACTS_HOLD_ABANDONS
  | @as("CONTACTS_HANDLED_OUTBOUND") #CONTACTS_HANDLED_OUTBOUND
  | @as("CONTACTS_HANDLED_INCOMING") #CONTACTS_HANDLED_INCOMING
  | @as("CONTACTS_AGENT_HUNG_UP_FIRST") #CONTACTS_AGENT_HUNG_UP_FIRST
  | @as("CONTACTS_CONSULTED") #CONTACTS_CONSULTED
  | @as("CONTACTS_ABANDONED") #CONTACTS_ABANDONED
  | @as("CONTACTS_HANDLED") #CONTACTS_HANDLED
  | @as("CONTACTS_QUEUED") #CONTACTS_QUEUED
]
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
type directoryType = [
  | @as("EXISTING_DIRECTORY") #EXISTING_DIRECTORY
  | @as("CONNECT_MANAGED") #CONNECT_MANAGED
  | @as("SAML") #SAML
]
type directoryId = string
type directoryAlias = string
type description = string
type delay = int
@ocaml.doc("<p>The current metric names.</p>")
type currentMetricName = [
  | @as("SLOTS_AVAILABLE") #SLOTS_AVAILABLE
  | @as("SLOTS_ACTIVE") #SLOTS_ACTIVE
  | @as("AGENTS_ON_CONTACT") #AGENTS_ON_CONTACT
  | @as("CONTACTS_SCHEDULED") #CONTACTS_SCHEDULED
  | @as("OLDEST_CONTACT_AGE") #OLDEST_CONTACT_AGE
  | @as("CONTACTS_IN_QUEUE") #CONTACTS_IN_QUEUE
  | @as("AGENTS_STAFFED") #AGENTS_STAFFED
  | @as("AGENTS_ERROR") #AGENTS_ERROR
  | @as("AGENTS_AFTER_CONTACT_WORK") #AGENTS_AFTER_CONTACT_WORK
  | @as("AGENTS_NON_PRODUCTIVE") #AGENTS_NON_PRODUCTIVE
  | @as("AGENTS_ON_CALL") #AGENTS_ON_CALL
  | @as("AGENTS_AVAILABLE") #AGENTS_AVAILABLE
  | @as("AGENTS_ONLINE") #AGENTS_ONLINE
]
type contactId = string
type contactFlowType = [
  | @as("QUEUE_TRANSFER") #QUEUE_TRANSFER
  | @as("AGENT_TRANSFER") #AGENT_TRANSFER
  | @as("OUTBOUND_WHISPER") #OUTBOUND_WHISPER
  | @as("AGENT_WHISPER") #AGENT_WHISPER
  | @as("AGENT_HOLD") #AGENT_HOLD
  | @as("CUSTOMER_WHISPER") #CUSTOMER_WHISPER
  | @as("CUSTOMER_HOLD") #CUSTOMER_HOLD
  | @as("CUSTOMER_QUEUE") #CUSTOMER_QUEUE
  | @as("CONTACT_FLOW") #CONTACT_FLOW
]
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
@ocaml.doc("<p>Contains information about the recording configuration settings.</p>")
type voiceRecordingConfiguration = {
  @ocaml.doc("<p>Identifies which track is being recorded.</p>") @as("VoiceRecordingTrack")
  voiceRecordingTrack: option<voiceRecordingTrack>,
}
@ocaml.doc("<p>Contains summary information about a user.</p>")
type userSummary = {
  @ocaml.doc("<p>The Amazon Connect user name of the user account.</p>") @as("Username")
  username: option<agentUsername>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user account.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The identifier of the user account.</p>") @as("Id") id: option<userId>,
}
@ocaml.doc("<p>Contains information about the quick connect configuration settings for a user. The contact
   flow must be of type Transfer to Agent.</p>")
type userQuickConnectConfig = {
  @ocaml.doc("<p>The identifier of the contact flow.</p>") @as("ContactFlowId")
  contactFlowId: contactFlowId,
  @ocaml.doc("<p>The identifier of the user.</p>") @as("UserId") userId: userId,
}
@ocaml.doc("<p>Contains information about the phone configuration settings for a user.</p>")
type userPhoneConfig = {
  @ocaml.doc("<p>The phone number for the user's desk phone.</p>") @as("DeskPhoneNumber")
  deskPhoneNumber: option<phoneNumber>,
  @ocaml.doc("<p>The After Call Work (ACW) timeout setting, in seconds.</p>")
  @as("AfterContactWorkTimeLimit")
  afterContactWorkTimeLimit: option<afterContactWorkTimeLimit>,
  @ocaml.doc("<p>The Auto accept setting.</p>") @as("AutoAccept") autoAccept: option<autoAccept>,
  @ocaml.doc("<p>The phone type.</p>") @as("PhoneType") phoneType: phoneType,
}
@ocaml.doc("<p>Contains information about the identity of a user.</p>")
type userIdentityInfo = {
  @ocaml.doc("<p>The email address. If you are using SAML for identity management and include this parameter,
   an error is returned.</p>")
  @as("Email")
  email: option<email>,
  @ocaml.doc("<p>The last name. This is required if you are using Amazon Connect or SAML for identity
   management.</p>")
  @as("LastName")
  lastName: option<agentLastName>,
  @ocaml.doc("<p>The first name. This is required if you are using Amazon Connect or SAML for identity
   management.</p>")
  @as("FirstName")
  firstName: option<agentFirstName>,
}
@ocaml.doc("<p>Contains the
   use
   case.</p>")
type useCase = {
  @ocaml.doc("<p>The type of use case to associate to the AppIntegration association. Each AppIntegration
   association can have only one of each use case type.</p>")
  @as("UseCaseType")
  useCaseType: option<useCaseType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the use case.</p>") @as("UseCaseArn")
  useCaseArn: option<arn>,
  @ocaml.doc("<p>The identifier for the use case.</p>") @as("UseCaseId")
  useCaseId: option<useCaseId>,
}
@ocaml.doc("<p>Contains information about the threshold for service level metrics.</p>")
type threshold = {
  @ocaml.doc("<p>The threshold value to compare.</p>") @as("ThresholdValue")
  thresholdValue: option<thresholdValue>,
  @ocaml.doc("<p>The type of comparison. Only \"less than\" (LT) comparisons are supported.</p>")
  @as("Comparison")
  comparison: option<comparison>,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Contains information about a security profile.</p>")
type securityProfileSummary = {
  @ocaml.doc("<p>The name of the security profile.</p>") @as("Name")
  name: option<securityProfileName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the security profile.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The identifier of the security profile.</p>") @as("Id")
  id: option<securityProfileId>,
}
type securityProfileIds = array<securityProfileId>
@ocaml.doc("<p>Configuration information of the security key.</p>")
type securityKey = {
  @ocaml.doc("<p>When the security key was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The key of the security key.</p>") @as("Key") key: option<pem>,
  @ocaml.doc(
    "<p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>"
  )
  @as("AssociationId")
  associationId: option<associationId>,
}
@ocaml.doc("<p>Contains summary information about a routing profile.</p>")
type routingProfileSummary = {
  @ocaml.doc("<p>The name of the routing profile.</p>") @as("Name")
  name: option<routingProfileName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the routing profile.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The identifier of the routing profile.</p>") @as("Id")
  id: option<routingProfileId>,
}
@ocaml.doc("<p>Contains the channel and queue identifier for a routing profile.</p>")
type routingProfileQueueReference = {
  @ocaml.doc("<p>The channels agents can handle in the Contact Control Panel (CCP) for this routing
   profile.</p>")
  @as("Channel")
  channel: channel,
  @ocaml.doc("<p>The identifier for the queue.</p>") @as("QueueId") queueId: queueId,
}
@ocaml.doc("<p>Contains summary information about a routing profile queue.</p>")
type routingProfileQueueConfigSummary = {
  @ocaml.doc("<p>The channels this queue supports.</p>") @as("Channel") channel: channel,
  @ocaml.doc("<p>The delay, in seconds, that a contact should be in the queue before they are routed to an
   available agent. For more information, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html\">Queues: priority and
    delay</a> in the <i>Amazon Connect Administrator Guide</i>.</p>")
  @as("Delay")
  delay: delay,
  @ocaml.doc("<p>The order in which contacts are to be handled for the queue. For more information, see
    <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html\">Queues: priority and
    delay</a>.</p>")
  @as("Priority")
  priority: priority,
  @ocaml.doc("<p>The name of the queue.</p>") @as("QueueName") queueName: queueName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the queue.</p>") @as("QueueArn") queueArn: arn,
  @ocaml.doc("<p>The identifier for the queue.</p>") @as("QueueId") queueId: queueId,
}
@ocaml.doc("<p>A link that an agent selects to complete a given task. You can have up to 4,096 UTF-8 bytes
   across all references for a contact.</p>")
type reference = {
  @ocaml.doc("<p>A valid
   URL.</p>")
  @as("Type")
  type_: referenceType,
  @ocaml.doc("<p>A formatted URL that displays to an agent in the Contact Control Panel (CCP)</p>")
  @as("Value")
  value: referenceValue,
}
type quickConnectsList = array<quickConnectId>
type quickConnectTypes = array<quickConnectType>
@ocaml.doc("<p>Contains summary information about a quick connect.</p>")
type quickConnectSummary = {
  @ocaml.doc("<p>The type of quick connect. In the Amazon Connect console, when you create a quick connect, you are
   prompted to assign one of the following types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).</p>")
  @as("QuickConnectType")
  quickConnectType: option<quickConnectType>,
  @ocaml.doc("<p>The name of the quick connect.</p>") @as("Name") name: option<quickConnectName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the quick connect.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The identifier for the quick connect.</p>") @as("Id") id: option<quickConnectId>,
}
type queues = array<queueId>
type queueTypes = array<queueType>
@ocaml.doc("<p>Contains summary information about a queue.</p>")
type queueSummary = {
  @ocaml.doc("<p>The type of queue.</p>") @as("QueueType") queueType: option<queueType>,
  @ocaml.doc("<p>The name of the queue.</p>") @as("Name") name: option<queueName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the queue.</p>") @as("Arn") arn: option<arn>,
  @ocaml.doc("<p>The identifier of the queue.</p>") @as("Id") id: option<queueId>,
}
@ocaml.doc("<p>Contains information about a queue resource for which metrics are returned.</p>")
type queueReference = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the queue.</p>") @as("Arn") arn: option<arn>,
  @ocaml.doc("<p>The identifier of the queue.</p>") @as("Id") id: option<queueId>,
}
@ocaml.doc("<p>Contains information about a queue for a quick connect. The contact flow must be of type
   Transfer to Queue.</p>")
type queueQuickConnectConfig = {
  @ocaml.doc("<p>The identifier of the contact flow.</p>") @as("ContactFlowId")
  contactFlowId: contactFlowId,
  @ocaml.doc("<p>The identifier for the queue.</p>") @as("QueueId") queueId: queueId,
}
@ocaml.doc("<p>Contains information about the prompt.</p>")
type promptSummary = {
  @ocaml.doc("<p>The name of the prompt.</p>") @as("Name") name: option<promptName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the prompt.</p>") @as("Arn") arn: option<arn>,
  @ocaml.doc("<p>The identifier of the prompt.</p>") @as("Id") id: option<promptId>,
}
@ocaml.doc("<p>Information about a problem detail.</p>")
type problemDetail = {
  @ocaml.doc("<p>The problem detail's message.</p>") message: option<problemMessageString>,
}
type phoneNumberTypes = array<phoneNumberType>
@ocaml.doc("<p>Contains summary information about a phone number for a contact center.</p>")
type phoneNumberSummary = {
  @ocaml.doc("<p>The ISO country code.</p>") @as("PhoneNumberCountryCode")
  phoneNumberCountryCode: option<phoneNumberCountryCode>,
  @ocaml.doc("<p>The type of phone number.</p>") @as("PhoneNumberType")
  phoneNumberType: option<phoneNumberType>,
  @ocaml.doc("<p>The phone number.</p>") @as("PhoneNumber") phoneNumber: option<phoneNumber>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the phone number.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The identifier of the phone number.</p>") @as("Id") id: option<phoneNumberId>,
}
@ocaml.doc("<p>Contains information about a phone number for a quick connect.</p>")
type phoneNumberQuickConnectConfig = {
  @ocaml.doc("<p>The phone number in E.164 format.</p>") @as("PhoneNumber")
  phoneNumber: phoneNumber,
}
type phoneNumberCountryCodes = array<phoneNumberCountryCode>
@ocaml.doc("<p>The customer's details.</p>")
type participantDetails = {
  @ocaml.doc("<p>Display name of the participant.</p>") @as("DisplayName") displayName: displayName,
}
@ocaml.doc("<p>The outbound caller ID name, number, and outbound whisper flow.</p>")
type outboundCallerConfig = {
  @ocaml.doc("<p>The outbound whisper flow to be used during an outbound call.</p>")
  @as("OutboundFlowId")
  outboundFlowId: option<contactFlowId>,
  @ocaml.doc("<p>The caller ID number.</p>") @as("OutboundCallerIdNumberId")
  outboundCallerIdNumberId: option<phoneNumberId>,
  @ocaml.doc("<p>The caller ID name.</p>") @as("OutboundCallerIdName")
  outboundCallerIdName: option<outboundCallerIdName>,
}
type originsList = array<origin>
@ocaml.doc("<p>Contains information about which channels are supported, and how many contacts an agent can
   have on a channel simultaneously.</p>")
type mediaConcurrency = {
  @ocaml.doc("<p>The number of contacts an agent can have on a channel simultaneously.</p>
         <p>Valid Range for <code>VOICE</code>: Minimum value of 1. Maximum value of 1.</p>
         <p>Valid Range for <code>CHAT</code>: Minimum value of 1. Maximum value of 5.</p>
         <p>Valid Range for <code>TASK</code>: Minimum value of 1. Maximum value of 10.</p>")
  @as("Concurrency")
  concurrency: concurrency,
  @ocaml.doc("<p>The channels that agents can handle in the Contact Control Panel (CCP).</p>")
  @as("Channel")
  channel: channel,
}
@ocaml.doc("<p>Configuration information of an Amazon Lex bot.</p>")
type lexBot = {
  @ocaml.doc("<p>The Region that the Amazon Lex bot was created in.</p>") @as("LexRegion")
  lexRegion: option<lexRegion>,
  @ocaml.doc("<p>The name of the Amazon Lex bot.</p>") @as("Name") name: option<botName>,
}
@ocaml.doc("<p>Configuration information of a Kinesis data stream.</p>")
type kinesisStreamConfig = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the data stream.</p>") @as("StreamArn")
  streamArn: arn,
}
@ocaml.doc("<p>Configuration information of a Kinesis Data Firehose delivery stream.</p>")
type kinesisFirehoseConfig = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the delivery stream.</p>") @as("FirehoseArn")
  firehoseArn: arn,
}
@ocaml.doc("<p>Contains summary information about the associated AppIntegrations.</p>")
type integrationAssociationSummary = {
  @ocaml.doc("<p>The name of the source.</p>") @as("SourceType") sourceType: option<sourceType>,
  @ocaml.doc("<p>The user-provided, friendly name for the external application.</p>")
  @as("SourceApplicationName")
  sourceApplicationName: option<sourceApplicationName>,
  @ocaml.doc("<p>The URL for the external application.</p>") @as("SourceApplicationUrl")
  sourceApplicationUrl: option<uri>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the AppIntegration.</p>") @as("IntegrationArn")
  integrationArn: option<arn>,
  @ocaml.doc("<p>The integration type.</p>") @as("IntegrationType")
  integrationType: option<integrationType>,
  @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
  instanceId: option<instanceId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the AppIntegration association.</p>")
  @as("IntegrationAssociationArn")
  integrationAssociationArn: option<arn>,
  @ocaml.doc("<p>The identifier for the AppIntegration association.</p>")
  @as("IntegrationAssociationId")
  integrationAssociationId: option<integrationAssociationId>,
}
@ocaml.doc("<p>Information about the instance.</p>")
type instanceSummary = {
  @ocaml.doc("<p>Whether outbound calls are enabled.</p>") @as("OutboundCallsEnabled")
  outboundCallsEnabled: option<outboundCallsEnabled>,
  @ocaml.doc("<p>Whether inbound calls are enabled.</p>") @as("InboundCallsEnabled")
  inboundCallsEnabled: option<inboundCallsEnabled>,
  @ocaml.doc("<p>The state of the instance.</p>") @as("InstanceStatus")
  instanceStatus: option<instanceStatus>,
  @ocaml.doc("<p>The service role of the instance.</p>") @as("ServiceRole")
  serviceRole: option<arn>,
  @ocaml.doc("<p>When the instance was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The alias of the instance.</p>") @as("InstanceAlias")
  instanceAlias: option<directoryAlias>,
  @ocaml.doc("<p>The identity management type of the instance.</p>") @as("IdentityManagementType")
  identityManagementType: option<directoryType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the instance.</p>") @as("Arn") arn: option<arn>,
  @ocaml.doc("<p>The identifier of the instance.</p>") @as("Id") id: option<instanceId>,
}
@ocaml.doc("<p>Relevant
   details why the instance was not successfully created.</p>")
type instanceStatusReason = {
  @ocaml.doc("<p>The message.</p>") @as("Message") message: option<string_>,
}
@ocaml.doc("<p>The start time or end time for an hours of operation.</p>")
type hoursOfOperationTimeSlice = {
  @ocaml.doc("<p>The minutes.</p>") @as("Minutes") minutes: option<minutesLimit60>,
  @ocaml.doc("<p>The hours.</p>") @as("Hours") hours: option<hours24Format>,
}
@ocaml.doc("<p>Contains summary information about hours of operation for a contact center.</p>")
type hoursOfOperationSummary = {
  @ocaml.doc("<p>The name of the hours of operation.</p>") @as("Name")
  name: option<hoursOfOperationName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the hours of operation.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The identifier of the hours of operation.</p>") @as("Id")
  id: option<hoursOfOperationId>,
}
@ocaml.doc("<p>Contains information about the hierarchy level to update.</p>")
type hierarchyLevelUpdate = {
  @ocaml.doc("<p>The name of the user hierarchy level. Must not be more than 50 characters.</p>")
  @as("Name")
  name: hierarchyLevelName,
}
@ocaml.doc("<p>Contains information about a hierarchy level.</p>")
type hierarchyLevel = {
  @ocaml.doc("<p>The name of the hierarchy level.</p>") @as("Name")
  name: option<hierarchyLevelName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the hierarchy level.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The identifier of the hierarchy level.</p>") @as("Id")
  id: option<hierarchyLevelId>,
}
@ocaml.doc("<p>Contains summary information about a hierarchy group.</p>")
type hierarchyGroupSummary = {
  @ocaml.doc("<p>The name of the hierarchy group.</p>") @as("Name")
  name: option<hierarchyGroupName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the hierarchy group.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The identifier of the hierarchy group.</p>") @as("Id")
  id: option<hierarchyGroupId>,
}
type groupings = array<grouping>
type functionArnsList = array<functionArn>
@ocaml.doc("<p>The encryption configuration.</p>")
type encryptionConfig = {
  @ocaml.doc("<p>The identifier of the encryption key.</p>") @as("KeyId") keyId: keyId,
  @ocaml.doc("<p>The type of encryption.</p>") @as("EncryptionType") encryptionType: encryptionType,
}
@ocaml.doc("<p>Contains information about a real-time metric. For a description of each metric, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html\">Real-time Metrics Definitions</a> in the <i>Amazon Connect Administrator
   Guide</i>.</p>")
type currentMetric = {
  @ocaml.doc("<p>The unit for the metric.</p>") @as("Unit") unit_: option<unit_>,
  @ocaml.doc("<p>The name of the metric.</p>") @as("Name") name: option<currentMetricName>,
}
@ocaml.doc("<p>Contains credentials to use for federation.</p>")
type credentials = {
  @ocaml.doc("<p>Renews the expiration timer for a generated token.</p>")
  @as("RefreshTokenExpiration")
  refreshTokenExpiration: option<timestamp_>,
  @ocaml.doc("<p>Renews a token generated for a user to access the Amazon Connect instance.</p>")
  @as("RefreshToken")
  refreshToken: option<securityToken>,
  @ocaml.doc("<p>A token generated with an expiration time for the session a user is logged in to
   Amazon Connect.</p>")
  @as("AccessTokenExpiration")
  accessTokenExpiration: option<timestamp_>,
  @ocaml.doc("<p>An access token generated for a federated user to access Amazon Connect.</p>")
  @as("AccessToken")
  accessToken: option<securityToken>,
}
type contactFlowTypes = array<contactFlowType>
@ocaml.doc("<p>Contains summary information about a contact flow.</p>
         <p>You can also create and update contact flows using the <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html\">Amazon Connect
   Flow language</a>.</p>")
type contactFlowSummary = {
  @ocaml.doc("<p>The type of contact flow.</p>") @as("ContactFlowType")
  contactFlowType: option<contactFlowType>,
  @ocaml.doc("<p>The name of the contact flow.</p>") @as("Name") name: option<contactFlowName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact flow.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The identifier of the contact flow.</p>") @as("Id") id: option<contactFlowId>,
}
@ocaml.doc("<p>A chat message.</p>")
type chatMessage = {
  @ocaml.doc("<p>The content of the chat message.</p>") @as("Content") content: chatContent,
  @ocaml.doc("<p>The type of the content. Supported types are text and plain.</p>")
  @as("ContentType")
  contentType: chatContentType,
}
type channels = array<channel>
type attributes = Js.Dict.t<attributeValue>
@ocaml.doc("<p>A toggle for an individual feature at the instance level.</p>")
type attribute = {
  @ocaml.doc("<p>The value of the attribute.</p>") @as("Value")
  value: option<instanceAttributeValue>,
  @ocaml.doc("<p>The type of attribute.</p>") @as("AttributeType")
  attributeType: option<instanceAttributeType>,
}
type userSummaryList = array<userSummary>
@ocaml.doc("<p>Contains information about a user account for a Amazon Connect instance.</p>")
type user = {
  @ocaml.doc("<p>The
   tags.</p>")
  @as("Tags")
  tags: option<tagMap>,
  @ocaml.doc("<p>The identifier of the hierarchy group for the user.</p>") @as("HierarchyGroupId")
  hierarchyGroupId: option<hierarchyGroupId>,
  @ocaml.doc("<p>The identifier of the routing profile for the user.</p>") @as("RoutingProfileId")
  routingProfileId: option<routingProfileId>,
  @ocaml.doc("<p>The identifiers of the security profiles for the user.</p>")
  @as("SecurityProfileIds")
  securityProfileIds: option<securityProfileIds>,
  @ocaml.doc(
    "<p>The identifier of the user account in the directory used for identity management.</p>"
  )
  @as("DirectoryUserId")
  directoryUserId: option<directoryUserId>,
  @ocaml.doc("<p>Information about the phone configuration for the user.</p>") @as("PhoneConfig")
  phoneConfig: option<userPhoneConfig>,
  @ocaml.doc("<p>Information about the user identity.</p>") @as("IdentityInfo")
  identityInfo: option<userIdentityInfo>,
  @ocaml.doc("<p>The user name assigned to the user account.</p>") @as("Username")
  username: option<agentUsername>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user account.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The identifier of the user account.</p>") @as("Id") id: option<userId>,
}
type useCaseSummaryList = array<useCase>
type securityProfileSummaryList = array<securityProfileSummary>
type securityKeysList = array<securityKey>
@ocaml.doc("<p>Information about the Amazon Simple Storage Service (Amazon S3) storage type.</p>")
type s3Config = {
  @ocaml.doc("<p>The Amazon S3 encryption configuration.</p>") @as("EncryptionConfig")
  encryptionConfig: option<encryptionConfig>,
  @ocaml.doc("<p>The S3 bucket prefix.</p>") @as("BucketPrefix") bucketPrefix: prefix,
  @ocaml.doc("<p>The S3 bucket name.</p>") @as("BucketName") bucketName: bucketName,
}
type routingProfileSummaryList = array<routingProfileSummary>
type routingProfileQueueReferenceList = array<routingProfileQueueReference>
type routingProfileQueueConfigSummaryList = array<routingProfileQueueConfigSummary>
@ocaml.doc("<p>Contains information about the queue and channel for which priority and delay can be
   set.</p>")
type routingProfileQueueConfig = {
  @ocaml.doc("<p>The delay, in seconds, a contact should be in the queue before they are routed to an
   available agent. For more information, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html\">Queues: priority and
    delay</a> in the <i>Amazon Connect Administrator Guide</i>.</p>")
  @as("Delay")
  delay: delay,
  @ocaml.doc("<p>The order in which contacts are to be handled for the queue. For more information, see
    <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html\">Queues: priority and
    delay</a>.</p>")
  @as("Priority")
  priority: priority,
  @ocaml.doc("<p>Contains information about a queue resource.</p>") @as("QueueReference")
  queueReference: routingProfileQueueReference,
}
type quickConnectSummaryList = array<quickConnectSummary>
@ocaml.doc("<p>Contains configuration settings for a quick connect.</p>")
type quickConnectConfig = {
  @ocaml.doc(
    "<p>The phone configuration. This is required only if QuickConnectType is PHONE_NUMBER.</p>"
  )
  @as("PhoneConfig")
  phoneConfig: option<phoneNumberQuickConnectConfig>,
  @ocaml.doc("<p>The queue configuration. This is required only if QuickConnectType is QUEUE.</p>")
  @as("QueueConfig")
  queueConfig: option<queueQuickConnectConfig>,
  @ocaml.doc("<p>The user configuration. This is required only if QuickConnectType is USER.</p>")
  @as("UserConfig")
  userConfig: option<userQuickConnectConfig>,
  @ocaml.doc("<p>The type of quick connect. In the Amazon Connect console, when you create a quick connect, you are
   prompted to assign one of the following types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE). </p>")
  @as("QuickConnectType")
  quickConnectType: quickConnectType,
}
type queueSummaryList = array<queueSummary>
@ocaml.doc("<p>Contains information about a queue.</p>")
type queue = {
  @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
  @ocaml.doc("<p>The status of the queue.</p>") @as("Status") status: option<queueStatus>,
  @ocaml.doc(
    "<p>The maximum number of contacts that can be in the queue before it is considered full.</p>"
  )
  @as("MaxContacts")
  maxContacts: option<queueMaxContacts>,
  @ocaml.doc("<p>The identifier for the hours of operation.</p>") @as("HoursOfOperationId")
  hoursOfOperationId: option<hoursOfOperationId>,
  @ocaml.doc("<p>The outbound caller ID name, number, and outbound whisper flow.</p>")
  @as("OutboundCallerConfig")
  outboundCallerConfig: option<outboundCallerConfig>,
  @ocaml.doc("<p>The description of the queue.</p>") @as("Description")
  description: option<queueDescription>,
  @ocaml.doc("<p>The identifier for the queue.</p>") @as("QueueId") queueId: option<queueId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the queue.</p>") @as("QueueArn")
  queueArn: option<arn>,
  @ocaml.doc("<p>The name of the queue.</p>") @as("Name") name: option<commonNameLength127>,
}
type promptSummaryList = array<promptSummary>
type problems = array<problemDetail>
type phoneNumberSummaryList = array<phoneNumberSummary>
type mediaConcurrencies = array<mediaConcurrency>
type lexBotsList = array<lexBot>
@ocaml.doc("<p>Configuration information of a Kinesis video stream.</p>")
type kinesisVideoStreamConfig = {
  @ocaml.doc("<p>The encryption configuration.</p>") @as("EncryptionConfig")
  encryptionConfig: encryptionConfig,
  @ocaml.doc("<p>The number of hours data is retained in the stream. Kinesis Video Streams retains the data
   in a data store that is associated with the stream.</p>
         <p>The default value is 0, indicating that the stream does not persist data.</p>")
  @as("RetentionPeriodHours")
  retentionPeriodHours: hours,
  @ocaml.doc("<p>The prefix of the video stream.</p>") @as("Prefix") prefix: prefix,
}
type integrationAssociationSummaryList = array<integrationAssociationSummary>
type instanceSummaryList = array<instanceSummary>
@ocaml.doc("<p>The Amazon Connect instance.</p>")
type instance = {
  @ocaml.doc("<p>Whether outbound calls are enabled.</p>") @as("OutboundCallsEnabled")
  outboundCallsEnabled: option<outboundCallsEnabled>,
  @ocaml.doc("<p>Whether inbound calls are enabled.</p>") @as("InboundCallsEnabled")
  inboundCallsEnabled: option<inboundCallsEnabled>,
  @ocaml.doc("<p>Relevant
   details why the instance was not successfully created. </p>")
  @as("StatusReason")
  statusReason: option<instanceStatusReason>,
  @ocaml.doc("<p>The state of the instance.</p>") @as("InstanceStatus")
  instanceStatus: option<instanceStatus>,
  @ocaml.doc("<p>The service role of the instance.</p>") @as("ServiceRole")
  serviceRole: option<arn>,
  @ocaml.doc("<p>When the instance was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The alias of instance.</p>") @as("InstanceAlias")
  instanceAlias: option<directoryAlias>,
  @ocaml.doc("<p>The identity management type.</p>") @as("IdentityManagementType")
  identityManagementType: option<directoryType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the instance.</p>") @as("Arn") arn: option<arn>,
  @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("Id")
  id: option<instanceId>,
}
type hoursOfOperationSummaryList = array<hoursOfOperationSummary>
@ocaml.doc("<p>Contains information about the hours of operation.</p>")
type hoursOfOperationConfig = {
  @ocaml.doc("<p>The end time that your contact center is closes.</p>") @as("EndTime")
  endTime: option<hoursOfOperationTimeSlice>,
  @ocaml.doc("<p>The start time that your contact center is open.</p>") @as("StartTime")
  startTime: option<hoursOfOperationTimeSlice>,
  @ocaml.doc("<p>The day that the hours of operation applies to.</p>") @as("Day")
  day: option<hoursOfOperationDays>,
}
@ocaml.doc("<p>Contains information about a historical metric. For a description of each metric, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html\">Historical Metrics Definitions</a> in the <i>Amazon Connect Administrator
   Guide</i>.</p>")
type historicalMetric = {
  @ocaml.doc("<p>The unit for the metric.</p>") @as("Unit") unit_: option<unit_>,
  @ocaml.doc("<p>The statistic for the metric.</p>") @as("Statistic") statistic: option<statistic>,
  @ocaml.doc("<p>The threshold for the metric, used with service level metrics.</p>")
  @as("Threshold")
  threshold: option<threshold>,
  @ocaml.doc("<p>The name of the metric.</p>") @as("Name") name: option<historicalMetricName>,
}
@ocaml.doc("<p>Contains information about the level hierarchy to update.</p>")
type hierarchyStructureUpdate = {
  @ocaml.doc("<p>The update for level five.</p>") @as("LevelFive")
  levelFive: option<hierarchyLevelUpdate>,
  @ocaml.doc("<p>The update for level four.</p>") @as("LevelFour")
  levelFour: option<hierarchyLevelUpdate>,
  @ocaml.doc("<p>The update for level three.</p>") @as("LevelThree")
  levelThree: option<hierarchyLevelUpdate>,
  @ocaml.doc("<p>The update for level two.</p>") @as("LevelTwo")
  levelTwo: option<hierarchyLevelUpdate>,
  @ocaml.doc("<p>The
   update
   for level one.</p>")
  @as("LevelOne")
  levelOne: option<hierarchyLevelUpdate>,
}
@ocaml.doc("<p>Contains information about a hierarchy structure.</p>")
type hierarchyStructure = {
  @ocaml.doc("<p>Information about level five.</p>") @as("LevelFive")
  levelFive: option<hierarchyLevel>,
  @ocaml.doc("<p>Information about level four.</p>") @as("LevelFour")
  levelFour: option<hierarchyLevel>,
  @ocaml.doc("<p>Information about level three.</p>") @as("LevelThree")
  levelThree: option<hierarchyLevel>,
  @ocaml.doc("<p>Information about level two.</p>") @as("LevelTwo")
  levelTwo: option<hierarchyLevel>,
  @ocaml.doc("<p>Information about level one.</p>") @as("LevelOne")
  levelOne: option<hierarchyLevel>,
}
@ocaml.doc("<p>Contains information about the levels of a hierarchy group.</p>")
type hierarchyPath = {
  @ocaml.doc("<p>Information about level five.</p>") @as("LevelFive")
  levelFive: option<hierarchyGroupSummary>,
  @ocaml.doc("<p>Information about level four.</p>") @as("LevelFour")
  levelFour: option<hierarchyGroupSummary>,
  @ocaml.doc("<p>Information about level three.</p>") @as("LevelThree")
  levelThree: option<hierarchyGroupSummary>,
  @ocaml.doc("<p>Information about level two.</p>") @as("LevelTwo")
  levelTwo: option<hierarchyGroupSummary>,
  @ocaml.doc("<p>Information about level one.</p>") @as("LevelOne")
  levelOne: option<hierarchyGroupSummary>,
}
type hierarchyGroupSummaryList = array<hierarchyGroupSummary>
@ocaml.doc("<p>Contains the filter to apply when retrieving metrics.</p>")
type filters = {
  @ocaml.doc("<p>The channel to use to filter the metrics.</p>") @as("Channels")
  channels: option<channels>,
  @ocaml.doc("<p>The queues to use to filter the metrics. You can specify up to 100 queues per
   request.</p>")
  @as("Queues")
  queues: option<queues>,
}
@ocaml.doc("<p>Contains information about the dimensions for a set of metrics.</p>")
type dimensions = {
  @ocaml.doc("<p>The channel used for grouping and filters.</p>") @as("Channel")
  channel: option<channel>,
  @ocaml.doc("<p>Information about the queue for which metrics are returned.</p>") @as("Queue")
  queue: option<queueReference>,
}
type currentMetrics = array<currentMetric>
@ocaml.doc("<p>Contains the data for a real-time metric.</p>")
type currentMetricData = {
  @ocaml.doc("<p>The value of the metric.</p>") @as("Value") value: option<value>,
  @ocaml.doc("<p>Information about the metric.</p>") @as("Metric") metric: option<currentMetric>,
}
type contactReferences = Js.Dict.t<reference>
type contactFlowSummaryList = array<contactFlowSummary>
@ocaml.doc("<p>Contains information about a contact flow.</p>")
type contactFlow = {
  @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
  @ocaml.doc("<p>The content of the contact flow.</p>") @as("Content")
  content: option<contactFlowContent>,
  @ocaml.doc("<p>The description of the contact flow.</p>") @as("Description")
  description: option<contactFlowDescription>,
  @ocaml.doc("<p>The type of the contact flow. For descriptions of the available types, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types\">Choose a Contact Flow Type</a> in the <i>Amazon Connect Administrator
   Guide</i>.</p>")
  @as("Type")
  type_: option<contactFlowType>,
  @ocaml.doc("<p>The name of the contact flow.</p>") @as("Name") name: option<contactFlowName>,
  @ocaml.doc("<p>The identifier of the contact flow.</p>") @as("Id") id: option<contactFlowId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact flow.</p>") @as("Arn")
  arn: option<arn>,
}
type attributesList = array<attribute>
type routingProfileQueueConfigList = array<routingProfileQueueConfig>
@ocaml.doc("<p>Contains information about a routing profile.</p>")
type routingProfile = {
  @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
  @ocaml.doc("<p>The identifier of the default outbound queue for this routing profile.</p>")
  @as("DefaultOutboundQueueId")
  defaultOutboundQueueId: option<queueId>,
  @ocaml.doc("<p>The channels agents can handle in the Contact Control Panel (CCP) for this routing
   profile.</p>")
  @as("MediaConcurrencies")
  mediaConcurrencies: option<mediaConcurrencies>,
  @ocaml.doc("<p>The description of the routing profile.</p>") @as("Description")
  description: option<routingProfileDescription>,
  @ocaml.doc("<p>The identifier of the routing profile.</p>") @as("RoutingProfileId")
  routingProfileId: option<routingProfileId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the routing profile.</p>")
  @as("RoutingProfileArn")
  routingProfileArn: option<arn>,
  @ocaml.doc("<p>The name of the routing profile.</p>") @as("Name")
  name: option<routingProfileName>,
  @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
  instanceId: option<instanceId>,
}
@ocaml.doc("<p>Contains information about a quick connect.</p>")
type quickConnect = {
  @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
  @ocaml.doc("<p>Contains information about the quick connect.</p>") @as("QuickConnectConfig")
  quickConnectConfig: option<quickConnectConfig>,
  @ocaml.doc("<p>The description.</p>") @as("Description")
  description: option<quickConnectDescription>,
  @ocaml.doc("<p>The name of the quick connect.</p>") @as("Name") name: option<quickConnectName>,
  @ocaml.doc("<p>The identifier for the quick connect.</p>") @as("QuickConnectId")
  quickConnectId: option<quickConnectId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the quick connect.</p>") @as("QuickConnectARN")
  quickConnectARN: option<arn>,
}
@ocaml.doc("<p>The storage configuration for the instance.</p>")
type instanceStorageConfig = {
  @ocaml.doc("<p>The configuration of the Kinesis Firehose delivery stream.</p>")
  @as("KinesisFirehoseConfig")
  kinesisFirehoseConfig: option<kinesisFirehoseConfig>,
  @ocaml.doc("<p>The configuration of the Kinesis data stream.</p>") @as("KinesisStreamConfig")
  kinesisStreamConfig: option<kinesisStreamConfig>,
  @ocaml.doc("<p>The configuration of the Kinesis video stream.</p>")
  @as("KinesisVideoStreamConfig")
  kinesisVideoStreamConfig: option<kinesisVideoStreamConfig>,
  @ocaml.doc("<p>The S3 bucket
   configuration.</p>")
  @as("S3Config")
  s3Config: option<s3Config>,
  @ocaml.doc("<p>A valid storage type.</p>") @as("StorageType") storageType: storageType,
  @ocaml.doc(
    "<p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>"
  )
  @as("AssociationId")
  associationId: option<associationId>,
}
type hoursOfOperationConfigList = array<hoursOfOperationConfig>
type historicalMetrics = array<historicalMetric>
@ocaml.doc("<p>Contains the data for a historical metric.</p>")
type historicalMetricData = {
  @ocaml.doc("<p>The value of the metric.</p>") @as("Value") value: option<value>,
  @ocaml.doc("<p>Information about the metric.</p>") @as("Metric") metric: option<historicalMetric>,
}
@ocaml.doc("<p>Contains information about a hierarchy group.</p>")
type hierarchyGroup = {
  @ocaml.doc("<p>Information about the levels in the hierarchy group.</p>") @as("HierarchyPath")
  hierarchyPath: option<hierarchyPath>,
  @ocaml.doc("<p>The identifier of the level in the hierarchy group.</p>") @as("LevelId")
  levelId: option<hierarchyLevelId>,
  @ocaml.doc("<p>The name of the hierarchy group.</p>") @as("Name")
  name: option<hierarchyGroupName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the hierarchy group.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The identifier of the hierarchy group.</p>") @as("Id")
  id: option<hierarchyGroupId>,
}
type currentMetricDataCollections = array<currentMetricData>
type instanceStorageConfigs = array<instanceStorageConfig>
@ocaml.doc("<p>Information about of the hours of operation.</p>")
type hoursOfOperation = {
  @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
  @ocaml.doc("<p>Configuration information for the hours of operation.</p>") @as("Config")
  config: option<hoursOfOperationConfigList>,
  @ocaml.doc("<p>The time zone for the hours of operation.</p>") @as("TimeZone")
  timeZone: option<timeZone>,
  @ocaml.doc("<p>The description for the hours of operation.</p>") @as("Description")
  description: option<commonDescriptionLength250>,
  @ocaml.doc("<p>The name for the hours of operation.</p>") @as("Name")
  name: option<commonNameLength127>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the hours of operation.</p>")
  @as("HoursOfOperationArn")
  hoursOfOperationArn: option<arn>,
  @ocaml.doc("<p>The identifier for the hours of operation.</p>") @as("HoursOfOperationId")
  hoursOfOperationId: option<hoursOfOperationId>,
}
type historicalMetricDataCollections = array<historicalMetricData>
@ocaml.doc("<p>Contains information about a set of real-time metrics.</p>")
type currentMetricResult = {
  @ocaml.doc("<p>The set of metrics.</p>") @as("Collections")
  collections: option<currentMetricDataCollections>,
  @ocaml.doc("<p>The dimensions for the metrics.</p>") @as("Dimensions")
  dimensions: option<dimensions>,
}
@ocaml.doc("<p>Contains information about the historical metrics retrieved.</p>")
type historicalMetricResult = {
  @ocaml.doc("<p>The set of metrics.</p>") @as("Collections")
  collections: option<historicalMetricDataCollections>,
  @ocaml.doc("<p>The dimension for the metrics.</p>") @as("Dimensions")
  dimensions: option<dimensions>,
}
type currentMetricResults = array<currentMetricResult>
type historicalMetricResults = array<historicalMetricResult>
@ocaml.doc("<p>Amazon Connect is a cloud-based contact center solution that you use to set up and manage a customer
   contact center and provide reliable customer engagement at any scale.</p>
         <p>Amazon Connect provides metrics and real-time reporting that enable you to optimize contact routing.
   You can also resolve customer issues more efficiently by getting customers in touch with the
   appropriate agents.</p>
         <p>There are limits to the number of Amazon Connect resources that you can create. There are also limits
   to the number of requests that you can make per second. For more information, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html\">Amazon Connect
    Service Quotas</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
         <p>You can
   connect
   programmatically to an AWS service by using an endpoint. For a list of Amazon Connect endpoints, see
    <a href=\"https://docs.aws.amazon.com/general/latest/gr/connect_region.html\">Amazon Connect
   Endpoints</a>.</p>
         <note>
            <p>Working with contact flows? Check out the <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html\">Amazon Connect Flow language</a>.</p>
         </note>")
module UpdateUserRoutingProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
    @ocaml.doc("<p>The identifier of the user account.</p>") @as("UserId") userId: userId,
    @ocaml.doc("<p>The identifier of the routing profile for the user.</p>") @as("RoutingProfileId")
    routingProfileId: routingProfileId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateUserRoutingProfileCommand"
  let make = (~instanceId, ~userId, ~routingProfileId, ()) =>
    new({instanceId: instanceId, userId: userId, routingProfileId: routingProfileId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateUserHierarchyGroupName = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
    @ocaml.doc("<p>The identifier of the hierarchy group.</p>") @as("HierarchyGroupId")
    hierarchyGroupId: hierarchyGroupId,
    @ocaml.doc("<p>The name of the hierarchy group. Must not be more than 100 characters.</p>")
    @as("Name")
    name: hierarchyGroupName,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateUserHierarchyGroupNameCommand"
  let make = (~instanceId, ~hierarchyGroupId, ~name, ()) =>
    new({instanceId: instanceId, hierarchyGroupId: hierarchyGroupId, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateUserHierarchy = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
    @ocaml.doc("<p>The identifier of the user account.</p>") @as("UserId") userId: userId,
    @ocaml.doc("<p>The identifier of the hierarchy group.</p>") @as("HierarchyGroupId")
    hierarchyGroupId: option<hierarchyGroupId>,
  }

  @module("@aws-sdk/client-connect") @new external new: request => t = "UpdateUserHierarchyCommand"
  let make = (~instanceId, ~userId, ~hierarchyGroupId=?, ()) =>
    new({instanceId: instanceId, userId: userId, hierarchyGroupId: hierarchyGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateRoutingProfileName = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The description of the routing profile. Must not be more than 250 characters.</p>"
    )
    @as("Description")
    description: option<routingProfileDescription>,
    @ocaml.doc("<p>The name of the routing profile. Must not be more than 127 characters.</p>")
    @as("Name")
    name: option<routingProfileName>,
    @ocaml.doc("<p>The identifier of the routing profile.</p>") @as("RoutingProfileId")
    routingProfileId: routingProfileId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateRoutingProfileNameCommand"
  let make = (~routingProfileId, ~instanceId, ~description=?, ~name=?, ()) =>
    new({
      description: description,
      name: name,
      routingProfileId: routingProfileId,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateRoutingProfileDefaultOutboundQueue = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the default outbound queue.</p>")
    @as("DefaultOutboundQueueId")
    defaultOutboundQueueId: queueId,
    @ocaml.doc("<p>The identifier of the routing profile.</p>") @as("RoutingProfileId")
    routingProfileId: routingProfileId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateRoutingProfileDefaultOutboundQueueCommand"
  let make = (~defaultOutboundQueueId, ~routingProfileId, ~instanceId, ()) =>
    new({
      defaultOutboundQueueId: defaultOutboundQueueId,
      routingProfileId: routingProfileId,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateQuickConnectName = {
  type t
  type request = {
    @ocaml.doc("<p>The description of the quick connect.</p>") @as("Description")
    description: option<quickConnectDescription>,
    @ocaml.doc("<p>The name of the quick connect.</p>") @as("Name") name: option<quickConnectName>,
    @ocaml.doc("<p>The identifier for the quick connect.</p>") @as("QuickConnectId")
    quickConnectId: quickConnectId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateQuickConnectNameCommand"
  let make = (~quickConnectId, ~instanceId, ~description=?, ~name=?, ()) =>
    new({
      description: description,
      name: name,
      quickConnectId: quickConnectId,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateQueueStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The status of the queue.</p>") @as("Status") status: queueStatus,
    @ocaml.doc("<p>The identifier for the queue.</p>") @as("QueueId") queueId: queueId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new external new: request => t = "UpdateQueueStatusCommand"
  let make = (~status, ~queueId, ~instanceId, ()) =>
    new({status: status, queueId: queueId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateQueueName = {
  type t
  type request = {
    @ocaml.doc("<p>The description of the queue.</p>") @as("Description")
    description: option<queueDescription>,
    @ocaml.doc("<p>The name of the queue.</p>") @as("Name") name: option<commonNameLength127>,
    @ocaml.doc("<p>The identifier for the queue.</p>") @as("QueueId") queueId: queueId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new external new: request => t = "UpdateQueueNameCommand"
  let make = (~queueId, ~instanceId, ~description=?, ~name=?, ()) =>
    new({description: description, name: name, queueId: queueId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateQueueMaxContacts = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of contacts that can be in the queue before it is considered full.</p>"
    )
    @as("MaxContacts")
    maxContacts: option<queueMaxContacts>,
    @ocaml.doc("<p>The identifier for the queue.</p>") @as("QueueId") queueId: queueId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateQueueMaxContactsCommand"
  let make = (~queueId, ~instanceId, ~maxContacts=?, ()) =>
    new({maxContacts: maxContacts, queueId: queueId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateQueueHoursOfOperation = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the hours of operation.</p>") @as("HoursOfOperationId")
    hoursOfOperationId: hoursOfOperationId,
    @ocaml.doc("<p>The identifier for the queue.</p>") @as("QueueId") queueId: queueId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateQueueHoursOfOperationCommand"
  let make = (~hoursOfOperationId, ~queueId, ~instanceId, ()) =>
    new({hoursOfOperationId: hoursOfOperationId, queueId: queueId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateInstanceAttribute = {
  type t
  type request = {
    @ocaml.doc("<p>The value for the attribute. Maximum character limit is 100. </p>") @as("Value")
    value: instanceAttributeValue,
    @ocaml.doc("<p>The type of attribute.</p>") @as("AttributeType")
    attributeType: instanceAttributeType,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateInstanceAttributeCommand"
  let make = (~value, ~attributeType, ~instanceId, ()) =>
    new({value: value, attributeType: attributeType, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateContactFlowName = {
  type t
  type request = {
    @ocaml.doc("<p>The description of the contact flow.</p>") @as("Description")
    description: option<contactFlowDescription>,
    @ocaml.doc("<p>The name of the contact flow.</p>") @as("Name") name: option<contactFlowName>,
    @ocaml.doc("<p>The identifier of the contact flow.</p>") @as("ContactFlowId")
    contactFlowId: contactFlowId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateContactFlowNameCommand"
  let make = (~contactFlowId, ~instanceId, ~description=?, ~name=?, ()) =>
    new({
      description: description,
      name: name,
      contactFlowId: contactFlowId,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SuspendContactRecording = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the contact. This is the identifier of the contact associated with the
   first interaction with the contact center.</p>")
    @as("InitialContactId")
    initialContactId: contactId,
    @ocaml.doc("<p>The identifier of the contact.</p>") @as("ContactId") contactId: contactId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "SuspendContactRecordingCommand"
  let make = (~initialContactId, ~contactId, ~instanceId, ()) =>
    new({initialContactId: initialContactId, contactId: contactId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopContactRecording = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the contact. This is the identifier of the contact associated with the
   first interaction with the contact center.</p>")
    @as("InitialContactId")
    initialContactId: contactId,
    @ocaml.doc("<p>The identifier of the contact.</p>") @as("ContactId") contactId: contactId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new external new: request => t = "StopContactRecordingCommand"
  let make = (~initialContactId, ~contactId, ~instanceId, ()) =>
    new({initialContactId: initialContactId, contactId: contactId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopContact = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
    @ocaml.doc("<p>The ID of the contact.</p>") @as("ContactId") contactId: contactId,
  }

  @module("@aws-sdk/client-connect") @new external new: request => t = "StopContactCommand"
  let make = (~instanceId, ~contactId, ()) => new({instanceId: instanceId, contactId: contactId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ResumeContactRecording = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the contact. This is the identifier of the contact associated with the
   first interaction with the contact center.</p>")
    @as("InitialContactId")
    initialContactId: contactId,
    @ocaml.doc("<p>The identifier of the contact.</p>") @as("ContactId") contactId: contactId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "ResumeContactRecordingCommand"
  let make = (~initialContactId, ~contactId, ~instanceId, ()) =>
    new({initialContactId: initialContactId, contactId: contactId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateSecurityKey = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>"
    )
    @as("AssociationId")
    associationId: associationId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "DisassociateSecurityKeyCommand"
  let make = (~associationId, ~instanceId, ()) =>
    new({associationId: associationId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateLexBot = {
  type t
  type request = {
    @ocaml.doc("<p>The Region in which the Amazon Lex bot has been created.</p>") @as("LexRegion")
    lexRegion: lexRegion,
    @ocaml.doc("<p>The name of the Amazon Lex bot. Maximum character limit of 50.</p>")
    @as("BotName")
    botName: botName,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new external new: request => t = "DisassociateLexBotCommand"
  let make = (~lexRegion, ~botName, ~instanceId, ()) =>
    new({lexRegion: lexRegion, botName: botName, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateLambdaFunction = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Lambda function being disassociated.</p>")
    @as("FunctionArn")
    functionArn: functionArn,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance..</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "DisassociateLambdaFunctionCommand"
  let make = (~functionArn, ~instanceId, ()) =>
    new({functionArn: functionArn, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateInstanceStorageConfig = {
  type t
  type request = {
    @ocaml.doc("<p>A valid resource type.</p>") @as("ResourceType")
    resourceType: instanceStorageResourceType,
    @ocaml.doc(
      "<p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>"
    )
    @as("AssociationId")
    associationId: associationId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "DisassociateInstanceStorageConfigCommand"
  let make = (~resourceType, ~associationId, ~instanceId, ()) =>
    new({resourceType: resourceType, associationId: associationId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateApprovedOrigin = {
  type t
  type request = {
    @ocaml.doc("<p>The domain URL of the integrated application.</p>") @as("Origin") origin: origin,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "DisassociateApprovedOriginCommand"
  let make = (~origin, ~instanceId, ()) => new({origin: origin, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteUserHierarchyGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
    @ocaml.doc("<p>The identifier of the hierarchy group.</p>") @as("HierarchyGroupId")
    hierarchyGroupId: hierarchyGroupId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "DeleteUserHierarchyGroupCommand"
  let make = (~instanceId, ~hierarchyGroupId, ()) =>
    new({instanceId: instanceId, hierarchyGroupId: hierarchyGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteUser = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the user.</p>") @as("UserId") userId: userId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new external new: request => t = "DeleteUserCommand"
  let make = (~userId, ~instanceId, ()) => new({userId: userId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteUseCase = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the use case.</p>") @as("UseCaseId") useCaseId: useCaseId,
    @ocaml.doc("<p>The identifier for the AppIntegration association.</p>")
    @as("IntegrationAssociationId")
    integrationAssociationId: integrationAssociationId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new external new: request => t = "DeleteUseCaseCommand"
  let make = (~useCaseId, ~integrationAssociationId, ~instanceId, ()) =>
    new({
      useCaseId: useCaseId,
      integrationAssociationId: integrationAssociationId,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteQuickConnect = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the quick connect.</p>") @as("QuickConnectId")
    quickConnectId: quickConnectId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new external new: request => t = "DeleteQuickConnectCommand"
  let make = (~quickConnectId, ~instanceId, ()) =>
    new({quickConnectId: quickConnectId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteIntegrationAssociation = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the AppIntegration association.</p>")
    @as("IntegrationAssociationId")
    integrationAssociationId: integrationAssociationId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "DeleteIntegrationAssociationCommand"
  let make = (~integrationAssociationId, ~instanceId, ()) =>
    new({integrationAssociationId: integrationAssociationId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new external new: request => t = "DeleteInstanceCommand"
  let make = (~instanceId, ()) => new({instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateUserHierarchyGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
    @ocaml.doc("<p>The identifier for the parent hierarchy group. The user hierarchy is created at level one if
   the parent group ID is null.</p>")
    @as("ParentGroupId")
    parentGroupId: option<hierarchyGroupId>,
    @ocaml.doc("<p>The name of the user hierarchy group. Must not be more than 100 characters.</p>")
    @as("Name")
    name: hierarchyGroupName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the hierarchy group. </p>")
    @as("HierarchyGroupArn")
    hierarchyGroupArn: option<arn>,
    @ocaml.doc("<p>The identifier of the hierarchy group.</p>") @as("HierarchyGroupId")
    hierarchyGroupId: option<hierarchyGroupId>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "CreateUserHierarchyGroupCommand"
  let make = (~instanceId, ~name, ~parentGroupId=?, ()) =>
    new({instanceId: instanceId, parentGroupId: parentGroupId, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInstance = {
  type t
  type request = {
    @ocaml.doc("<p>Your contact center allows outbound calls.</p>") @as("OutboundCallsEnabled")
    outboundCallsEnabled: outboundCallsEnabled,
    @ocaml.doc("<p>Your contact center handles incoming contacts.</p>") @as("InboundCallsEnabled")
    inboundCallsEnabled: inboundCallsEnabled,
    @ocaml.doc("<p>The identifier for the directory.</p>") @as("DirectoryId")
    directoryId: option<directoryId>,
    @ocaml.doc("<p>The name for your instance.</p>") @as("InstanceAlias")
    instanceAlias: option<directoryAlias>,
    @ocaml.doc("<p>The type of identity management for your Amazon Connect users.</p>")
    @as("IdentityManagementType")
    identityManagementType: directoryType,
    @ocaml.doc("<p>The idempotency token.</p>") @as("ClientToken") clientToken: option<clientToken>,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the instance.</p>") @as("Arn")
    arn: option<arn>,
    @ocaml.doc("<p>The identifier for the instance.</p>") @as("Id") id: option<instanceId>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "CreateInstanceCommand"
  let make = (
    ~outboundCallsEnabled,
    ~inboundCallsEnabled,
    ~identityManagementType,
    ~directoryId=?,
    ~instanceAlias=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      outboundCallsEnabled: outboundCallsEnabled,
      inboundCallsEnabled: inboundCallsEnabled,
      directoryId: directoryId,
      instanceAlias: instanceAlias,
      identityManagementType: identityManagementType,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateSecurityKey = {
  type t
  type request = {
    @ocaml.doc("<p>A valid security key in PEM format.</p>") @as("Key") key: pem,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>"
    )
    @as("AssociationId")
    associationId: option<associationId>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "AssociateSecurityKeyCommand"
  let make = (~key, ~instanceId, ()) => new({key: key, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateLambdaFunction = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the Lambda function being associated. Maximum number of characters allowed is
   140.</p>")
    @as("FunctionArn")
    functionArn: functionArn,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "AssociateLambdaFunctionCommand"
  let make = (~functionArn, ~instanceId, ()) =>
    new({functionArn: functionArn, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateApprovedOrigin = {
  type t
  type request = {
    @ocaml.doc("<p>The domain to add to your allow list.</p>") @as("Origin") origin: origin,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "AssociateApprovedOriginCommand"
  let make = (~origin, ~instanceId, ()) => new({origin: origin, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateUserSecurityProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
    @ocaml.doc("<p>The identifier of the user account.</p>") @as("UserId") userId: userId,
    @ocaml.doc("<p>The identifiers of the security profiles for the user.</p>")
    @as("SecurityProfileIds")
    securityProfileIds: securityProfileIds,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateUserSecurityProfilesCommand"
  let make = (~instanceId, ~userId, ~securityProfileIds, ()) =>
    new({instanceId: instanceId, userId: userId, securityProfileIds: securityProfileIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateUserPhoneConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
    @ocaml.doc("<p>The identifier of the user account.</p>") @as("UserId") userId: userId,
    @ocaml.doc("<p>Information about phone configuration settings for the user.</p>")
    @as("PhoneConfig")
    phoneConfig: userPhoneConfig,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateUserPhoneConfigCommand"
  let make = (~instanceId, ~userId, ~phoneConfig, ()) =>
    new({instanceId: instanceId, userId: userId, phoneConfig: phoneConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateUserIdentityInfo = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
    @ocaml.doc("<p>The identifier of the user account.</p>") @as("UserId") userId: userId,
    @ocaml.doc("<p>The identity information for the user.</p>") @as("IdentityInfo")
    identityInfo: userIdentityInfo,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateUserIdentityInfoCommand"
  let make = (~instanceId, ~userId, ~identityInfo, ()) =>
    new({instanceId: instanceId, userId: userId, identityInfo: identityInfo})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateQueueOutboundCallerConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The outbound caller ID name, number, and outbound whisper flow.</p>")
    @as("OutboundCallerConfig")
    outboundCallerConfig: outboundCallerConfig,
    @ocaml.doc("<p>The identifier for the queue.</p>") @as("QueueId") queueId: queueId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateQueueOutboundCallerConfigCommand"
  let make = (~outboundCallerConfig, ~queueId, ~instanceId, ()) =>
    new({outboundCallerConfig: outboundCallerConfig, queueId: queueId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateContactAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Connect attributes. These attributes can be accessed in contact flows just like any other
   contact attributes.</p>
         <p>You can have up to 32,768 UTF-8 bytes across all attributes for a contact. Attribute keys
   can include only alphanumeric, dash, and underscore characters.</p>")
    @as("Attributes")
    attributes: attributes,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
    @ocaml.doc("<p>The identifier of the contact. This is the identifier of the contact associated with the
   first interaction with the contact center.</p>")
    @as("InitialContactId")
    initialContactId: contactId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateContactAttributesCommand"
  let make = (~attributes, ~instanceId, ~initialContactId, ()) =>
    new({attributes: attributes, instanceId: instanceId, initialContactId: initialContactId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") resourceArn: arn,
  }

  @module("@aws-sdk/client-connect") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>One or more tags. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"
    )
    tags: tagMap,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") resourceArn: arn,
  }

  @module("@aws-sdk/client-connect") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartOutboundVoiceContact = {
  type t
  type request = {
    @ocaml.doc("<p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect
   attributes, and can be accessed in contact flows just like any other contact attributes.</p>
         <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
   can include only alphanumeric, dash, and underscore characters.</p>")
    @as("Attributes")
    attributes: option<attributes>,
    @ocaml.doc("<p>The queue for the call. If you specify a queue, the phone displayed for caller ID is the
   phone number specified in the queue. If you do not specify a queue, the queue defined in the
   contact flow is used. If you do not specify a queue, you must specify a source phone
   number.</p>")
    @as("QueueId")
    queueId: option<queueId>,
    @ocaml.doc("<p>The phone number associated with the Amazon Connect instance, in E.164 format. If you do not specify
   a source phone number, you must specify a queue.</p>")
    @as("SourcePhoneNumber")
    sourcePhoneNumber: option<phoneNumber>,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
   request. The token is valid for 7 days after creation. If a contact is already started, the
   contact ID is returned. If the contact is disconnected, a new contact is started.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
    @ocaml.doc("<p>The
   identifier of the contact flow for the outbound call. To see the ContactFlowId in the Amazon Connect
   console user interface, on the navigation menu go to <b>Routing</b>,
    <b>Contact Flows</b>. Choose the contact flow. On the contact flow
   page, under the name of the contact flow, choose <b>Show additional flow
    information</b>. The ContactFlowId is the last part of the ARN, shown here in bold: </p>
         <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
         </p>")
    @as("ContactFlowId")
    contactFlowId: contactFlowId,
    @ocaml.doc("<p>The phone number of the customer, in E.164 format.</p>")
    @as("DestinationPhoneNumber")
    destinationPhoneNumber: phoneNumber,
  }
  type response = {
    @ocaml.doc("<p>The identifier of this contact within the Amazon Connect instance.</p>")
    @as("ContactId")
    contactId: option<contactId>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "StartOutboundVoiceContactCommand"
  let make = (
    ~instanceId,
    ~contactFlowId,
    ~destinationPhoneNumber,
    ~attributes=?,
    ~queueId=?,
    ~sourcePhoneNumber=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      attributes: attributes,
      queueId: queueId,
      sourcePhoneNumber: sourcePhoneNumber,
      clientToken: clientToken,
      instanceId: instanceId,
      contactFlowId: contactFlowId,
      destinationPhoneNumber: destinationPhoneNumber,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartContactRecording = {
  type t
  type request = {
    @ocaml.doc("<p>The person being recorded.</p>") @as("VoiceRecordingConfiguration")
    voiceRecordingConfiguration: voiceRecordingConfiguration,
    @ocaml.doc("<p>The identifier of the contact. This is the identifier of the contact associated with the
   first interaction with the contact center.</p>")
    @as("InitialContactId")
    initialContactId: contactId,
    @ocaml.doc("<p>The identifier of the contact.</p>") @as("ContactId") contactId: contactId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "StartContactRecordingCommand"
  let make = (~voiceRecordingConfiguration, ~initialContactId, ~contactId, ~instanceId, ()) =>
    new({
      voiceRecordingConfiguration: voiceRecordingConfiguration,
      initialContactId: initialContactId,
      contactId: contactId,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartChatContact = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
   request.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The initial message to be sent to the newly created chat.</p>")
    @as("InitialMessage")
    initialMessage: option<chatMessage>,
    @ocaml.doc("<p>Information identifying the participant.</p>") @as("ParticipantDetails")
    participantDetails: participantDetails,
    @ocaml.doc("<p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect
   attributes. They can be accessed in contact flows just like any other contact attributes. </p>
         <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
   can include only alphanumeric, dash, and underscore characters.</p>")
    @as("Attributes")
    attributes: option<attributes>,
    @ocaml.doc("<p>The identifier of the contact flow for initiating the chat.
   To
   see the ContactFlowId in the Amazon Connect console user interface, on the navigation menu go to <b>Routing</b>, <b>Contact Flows</b>. Choose the
   contact flow. On the contact flow page, under the name of the contact flow, choose <b>Show additional flow information</b>. The ContactFlowId is the last part of
   the ARN, shown here in bold: </p>
         <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
         </p>")
    @as("ContactFlowId")
    contactFlowId: contactFlowId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The token used by the chat participant to call <a href=\"https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html\">CreateParticipantConnection</a>. The participant token is valid for the lifetime of a chat
   participant.</p>")
    @as("ParticipantToken")
    participantToken: option<participantToken>,
    @ocaml.doc("<p>The identifier for a chat participant. The participantId for a chat participant is the same
   throughout the chat lifecycle.</p>")
    @as("ParticipantId")
    participantId: option<participantId>,
    @ocaml.doc("<p>The identifier of this contact within the Amazon Connect instance. </p>")
    @as("ContactId")
    contactId: option<contactId>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "StartChatContactCommand"
  let make = (
    ~participantDetails,
    ~contactFlowId,
    ~instanceId,
    ~clientToken=?,
    ~initialMessage=?,
    ~attributes=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      initialMessage: initialMessage,
      participantDetails: participantDetails,
      attributes: attributes,
      contactFlowId: contactFlowId,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") resourceArn: arn,
  }
  type response = {@ocaml.doc("<p>Information about the tags.</p>") tags: option<tagMap>}
  @module("@aws-sdk/client-connect") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLambdaFunctions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult25>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Lambdafunction ARNs associated with the specified instance.</p>")
    @as("LambdaFunctions")
    lambdaFunctions: option<functionArnsList>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "ListLambdaFunctionsCommand"
  let make = (~instanceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApprovedOrigins = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult25>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The approved origins.</p>") @as("Origins") origins: option<originsList>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "ListApprovedOriginsCommand"
  let make = (~instanceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFederationToken = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The credentials to use for federation.</p>") @as("Credentials")
    credentials: option<credentials>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "GetFederationTokenCommand"
  let make = (~instanceId, ()) => new({instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContactAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the initial contact.</p>") @as("InitialContactId")
    initialContactId: contactId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the attributes.</p>") @as("Attributes")
    attributes: option<attributes>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "GetContactAttributesCommand"
  let make = (~initialContactId, ~instanceId, ()) =>
    new({initialContactId: initialContactId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateQueueQuickConnects = {
  type t
  type request = {
    @ocaml.doc("<p>The quick connects to disassociate from the queue.</p>") @as("QuickConnectIds")
    quickConnectIds: quickConnectsList,
    @ocaml.doc("<p>The identifier for the queue.</p>") @as("QueueId") queueId: queueId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "DisassociateQueueQuickConnectsCommand"
  let make = (~quickConnectIds, ~queueId, ~instanceId, ()) =>
    new({quickConnectIds: quickConnectIds, queueId: queueId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeInstanceAttribute = {
  type t
  type request = {
    @ocaml.doc("<p>The type of attribute.</p>") @as("AttributeType")
    attributeType: instanceAttributeType,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The
   type
   of attribute.</p>")
    @as("Attribute")
    attribute: option<attribute>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "DescribeInstanceAttributeCommand"
  let make = (~attributeType, ~instanceId, ()) =>
    new({attributeType: attributeType, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUser = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
    @ocaml.doc("<p>The identifier of the hierarchy group for the user.</p>") @as("HierarchyGroupId")
    hierarchyGroupId: option<hierarchyGroupId>,
    @ocaml.doc("<p>The identifier of the routing profile for the user.</p>") @as("RoutingProfileId")
    routingProfileId: routingProfileId,
    @ocaml.doc("<p>The identifier of the security profile for the user.</p>")
    @as("SecurityProfileIds")
    securityProfileIds: securityProfileIds,
    @ocaml.doc("<p>The identifier of the user account in the directory used for identity management. If Amazon Connect
   cannot access the directory, you can specify this identifier to authenticate users. If you
   include the identifier, we assume that Amazon Connect cannot access the directory. Otherwise, the identity
   information is used to authenticate users from your directory.</p>
         <p>This parameter is required if you are using an existing directory for identity management in
   Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for
   identity management and include this parameter, an error is returned.</p>")
    @as("DirectoryUserId")
    directoryUserId: option<directoryUserId>,
    @ocaml.doc("<p>The phone settings for the user.</p>") @as("PhoneConfig")
    phoneConfig: userPhoneConfig,
    @ocaml.doc("<p>The information about the identity of the user.</p>") @as("IdentityInfo")
    identityInfo: option<userIdentityInfo>,
    @ocaml.doc("<p>The password for the user account. A password is required if you are using Amazon Connect for
   identity management. Otherwise, it is an error to include a password.</p>")
    @as("Password")
    password: option<password>,
    @ocaml.doc("<p>The user name for the account. For instances not using SAML for identity management, the
   user name can include up to 20 characters. If you are using SAML for identity management, the
   user name can include up to 64 characters from [a-zA-Z0-9_-.\\@]+.</p>")
    @as("Username")
    username: agentUsername,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user account.</p>") @as("UserArn")
    userArn: option<arn>,
    @ocaml.doc("<p>The identifier of the user account.</p>") @as("UserId") userId: option<userId>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "CreateUserCommand"
  let make = (
    ~instanceId,
    ~routingProfileId,
    ~securityProfileIds,
    ~phoneConfig,
    ~username,
    ~tags=?,
    ~hierarchyGroupId=?,
    ~directoryUserId=?,
    ~identityInfo=?,
    ~password=?,
    (),
  ) =>
    new({
      tags: tags,
      instanceId: instanceId,
      hierarchyGroupId: hierarchyGroupId,
      routingProfileId: routingProfileId,
      securityProfileIds: securityProfileIds,
      directoryUserId: directoryUserId,
      phoneConfig: phoneConfig,
      identityInfo: identityInfo,
      password: password,
      username: username,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUseCase = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The type of use case to associate to the AppIntegration association. Each AppIntegration
   association can have only one of each use case type.</p>")
    @as("UseCaseType")
    useCaseType: useCaseType,
    @ocaml.doc("<p>The identifier for the AppIntegration association.</p>")
    @as("IntegrationAssociationId")
    integrationAssociationId: integrationAssociationId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the use case.</p>") @as("UseCaseArn")
    useCaseArn: option<arn>,
    @ocaml.doc("<p>The identifier of the use case.</p>") @as("UseCaseId")
    useCaseId: option<useCaseId>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "CreateUseCaseCommand"
  let make = (~useCaseType, ~integrationAssociationId, ~instanceId, ~tags=?, ()) =>
    new({
      tags: tags,
      useCaseType: useCaseType,
      integrationAssociationId: integrationAssociationId,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateQueue = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The quick connects available to agents who are working the queue.</p>")
    @as("QuickConnectIds")
    quickConnectIds: option<quickConnectsList>,
    @ocaml.doc(
      "<p>The maximum number of contacts that can be in the queue before it is considered full.</p>"
    )
    @as("MaxContacts")
    maxContacts: option<queueMaxContacts>,
    @ocaml.doc("<p>The identifier for the hours of operation.</p>") @as("HoursOfOperationId")
    hoursOfOperationId: hoursOfOperationId,
    @ocaml.doc("<p>The outbound caller ID name, number, and outbound whisper flow.</p>")
    @as("OutboundCallerConfig")
    outboundCallerConfig: option<outboundCallerConfig>,
    @ocaml.doc("<p>The description of the queue.</p>") @as("Description")
    description: option<queueDescription>,
    @ocaml.doc("<p>The name of the queue.</p>") @as("Name") name: commonNameLength127,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The identifier for the queue.</p>") @as("QueueId") queueId: option<queueId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the queue.</p>") @as("QueueArn")
    queueArn: option<arn>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "CreateQueueCommand"
  let make = (
    ~hoursOfOperationId,
    ~name,
    ~instanceId,
    ~tags=?,
    ~quickConnectIds=?,
    ~maxContacts=?,
    ~outboundCallerConfig=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      quickConnectIds: quickConnectIds,
      maxContacts: maxContacts,
      hoursOfOperationId: hoursOfOperationId,
      outboundCallerConfig: outboundCallerConfig,
      description: description,
      name: name,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIntegrationAssociation = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The type of the data source.</p>") @as("SourceType") sourceType: sourceType,
    @ocaml.doc("<p>The name of the external application.</p>") @as("SourceApplicationName")
    sourceApplicationName: sourceApplicationName,
    @ocaml.doc("<p>The URL for the external application.</p>") @as("SourceApplicationUrl")
    sourceApplicationUrl: uri,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the integration.</p>") @as("IntegrationArn")
    integrationArn: arn,
    @ocaml.doc("<p>The type of information to be ingested.</p>") @as("IntegrationType")
    integrationType: integrationType,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the association.</p>")
    @as("IntegrationAssociationArn")
    integrationAssociationArn: option<arn>,
    @ocaml.doc("<p>The identifier for the association.</p>") @as("IntegrationAssociationId")
    integrationAssociationId: option<integrationAssociationId>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "CreateIntegrationAssociationCommand"
  let make = (
    ~sourceType,
    ~sourceApplicationName,
    ~sourceApplicationUrl,
    ~integrationArn,
    ~integrationType,
    ~instanceId,
    ~tags=?,
    (),
  ) =>
    new({
      tags: tags,
      sourceType: sourceType,
      sourceApplicationName: sourceApplicationName,
      sourceApplicationUrl: sourceApplicationUrl,
      integrationArn: integrationArn,
      integrationType: integrationType,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateQueueQuickConnects = {
  type t
  type request = {
    @ocaml.doc("<p>The quick connects to associate with this queue.</p>") @as("QuickConnectIds")
    quickConnectIds: quickConnectsList,
    @ocaml.doc("<p>The identifier for the queue.</p>") @as("QueueId") queueId: queueId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "AssociateQueueQuickConnectsCommand"
  let make = (~quickConnectIds, ~queueId, ~instanceId, ()) =>
    new({quickConnectIds: quickConnectIds, queueId: queueId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateLexBot = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Lex box to associate with the instance.</p>") @as("LexBot")
    lexBot: lexBot,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new external new: request => t = "AssociateLexBotCommand"
  let make = (~lexBot, ~instanceId, ()) => new({lexBot: lexBot, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateUserHierarchyStructure = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
    @ocaml.doc("<p>The hierarchy levels to update.</p>") @as("HierarchyStructure")
    hierarchyStructure: hierarchyStructureUpdate,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateUserHierarchyStructureCommand"
  let make = (~instanceId, ~hierarchyStructure, ()) =>
    new({instanceId: instanceId, hierarchyStructure: hierarchyStructure})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateRoutingProfileConcurrency = {
  type t
  type request = {
    @ocaml.doc("<p>The channels that agents can handle in the Contact Control Panel (CCP).</p>")
    @as("MediaConcurrencies")
    mediaConcurrencies: mediaConcurrencies,
    @ocaml.doc("<p>The identifier of the routing profile.</p>") @as("RoutingProfileId")
    routingProfileId: routingProfileId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateRoutingProfileConcurrencyCommand"
  let make = (~mediaConcurrencies, ~routingProfileId, ~instanceId, ()) =>
    new({
      mediaConcurrencies: mediaConcurrencies,
      routingProfileId: routingProfileId,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateQuickConnectConfig = {
  type t
  type request = {
    @ocaml.doc("<p>Information about the configuration settings for the quick connect.</p>")
    @as("QuickConnectConfig")
    quickConnectConfig: quickConnectConfig,
    @ocaml.doc("<p>The identifier for the quick connect.</p>") @as("QuickConnectId")
    quickConnectId: quickConnectId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateQuickConnectConfigCommand"
  let make = (~quickConnectConfig, ~quickConnectId, ~instanceId, ()) =>
    new({
      quickConnectConfig: quickConnectConfig,
      quickConnectId: quickConnectId,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateContactFlowContent = {
  type t
  type request = {
    @ocaml.doc("<p>The JSON string that represents contact flow’s content. For an example, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/flow-language-example.html\">Example contact
    flow in Amazon Connect Flow language</a> in the <i>Amazon Connect Administrator Guide</i>.
  </p>")
    @as("Content")
    content: contactFlowContent,
    @ocaml.doc("<p>The identifier of the contact flow.</p>") @as("ContactFlowId")
    contactFlowId: contactFlowId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateContactFlowContentCommand"
  let make = (~content, ~contactFlowId, ~instanceId, ()) =>
    new({content: content, contactFlowId: contactFlowId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartTaskContact = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
   request.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>A description of the task that is shown to an agent in the Contact Control Panel
   (CCP).</p>")
    @as("Description")
    description: option<description>,
    @ocaml.doc(
      "<p>A formatted URL that is shown to an agent in the Contact Control Panel (CCP).</p>"
    )
    @as("References")
    references: option<contactReferences>,
    @ocaml.doc(
      "<p>The name of a task that is shown to an agent in the Contact Control Panel (CCP).</p>"
    )
    @as("Name")
    name: name,
    @ocaml.doc("<p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect
   attributes, and can be accessed in contact flows just like any other contact attributes.</p>
         <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
   can include only alphanumeric, dash, and underscore characters.</p>")
    @as("Attributes")
    attributes: option<attributes>,
    @ocaml.doc("<p>The identifier of the contact flow for initiating the tasks. To see the ContactFlowId in the
   Amazon Connect console user interface, on the navigation menu go to <b>Routing</b>, <b>Contact Flows</b>. Choose the contact flow. On
   the contact flow page, under the name of the contact flow, choose <b>Show
    additional flow information</b>. The ContactFlowId is the last part of the ARN, shown
   here in bold: </p>
         <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
         </p>")
    @as("ContactFlowId")
    contactFlowId: contactFlowId,
    @ocaml.doc("<p>The identifier of the previous chat, voice, or task contact. </p>")
    @as("PreviousContactId")
    previousContactId: option<contactId>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The identifier of this contact within the Amazon Connect instance.</p>")
    @as("ContactId")
    contactId: option<contactId>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "StartTaskContactCommand"
  let make = (
    ~name,
    ~contactFlowId,
    ~instanceId,
    ~clientToken=?,
    ~description=?,
    ~references=?,
    ~attributes=?,
    ~previousContactId=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      description: description,
      references: references,
      name: name,
      attributes: attributes,
      contactFlowId: contactFlowId,
      previousContactId: previousContactId,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListUsers = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult1000>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the users.</p>") @as("UserSummaryList")
    userSummaryList: option<userSummaryList>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "ListUsersCommand"
  let make = (~instanceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListUserHierarchyGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult1000>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the hierarchy groups.</p>")
    @as("UserHierarchyGroupSummaryList")
    userHierarchyGroupSummaryList: option<hierarchyGroupSummaryList>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "ListUserHierarchyGroupsCommand"
  let make = (~instanceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListUseCases = {
  type t
  @ocaml.doc("<p>Provides summary information about the use cases for the specified Amazon Connect AppIntegration
   association.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult100>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier for the integration association.</p>")
    @as("IntegrationAssociationId")
    integrationAssociationId: integrationAssociationId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The use cases.</p>") @as("UseCaseSummaryList")
    useCaseSummaryList: option<useCaseSummaryList>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "ListUseCasesCommand"
  let make = (~integrationAssociationId, ~instanceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      integrationAssociationId: integrationAssociationId,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSecurityProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult1000>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the security profiles.</p>") @as("SecurityProfileSummaryList")
    securityProfileSummaryList: option<securityProfileSummaryList>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "ListSecurityProfilesCommand"
  let make = (~instanceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSecurityKeys = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult2>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The security keys.</p>") @as("SecurityKeys")
    securityKeys: option<securityKeysList>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "ListSecurityKeysCommand"
  let make = (~instanceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRoutingProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult1000>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the routing profiles.</p>") @as("RoutingProfileSummaryList")
    routingProfileSummaryList: option<routingProfileSummaryList>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "ListRoutingProfilesCommand"
  let make = (~instanceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRoutingProfileQueues = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult100>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the routing profile.</p>") @as("RoutingProfileId")
    routingProfileId: routingProfileId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the routing profiles.</p>")
    @as("RoutingProfileQueueConfigSummaryList")
    routingProfileQueueConfigSummaryList: option<routingProfileQueueConfigSummaryList>,
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "ListRoutingProfileQueuesCommand"
  let make = (~routingProfileId, ~instanceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      routingProfileId: routingProfileId,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListQuickConnects = {
  type t
  type request = {
    @ocaml.doc("<p>The type of quick connect. In the Amazon Connect console, when you create a quick connect, you are
   prompted to assign one of the following types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).</p>")
    @as("QuickConnectTypes")
    quickConnectTypes: option<quickConnectTypes>,
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult1000>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the quick connects.</p>") @as("QuickConnectSummaryList")
    quickConnectSummaryList: option<quickConnectSummaryList>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "ListQuickConnectsCommand"
  let make = (~instanceId, ~quickConnectTypes=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      quickConnectTypes: quickConnectTypes,
      maxResults: maxResults,
      nextToken: nextToken,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListQueues = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult1000>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The type of queue.</p>") @as("QueueTypes") queueTypes: option<queueTypes>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the queues.</p>") @as("QueueSummaryList")
    queueSummaryList: option<queueSummaryList>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "ListQueuesCommand"
  let make = (~instanceId, ~maxResults=?, ~nextToken=?, ~queueTypes=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      queueTypes: queueTypes,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListQueueQuickConnects = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult100>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier for the queue.</p>") @as("QueueId") queueId: queueId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the quick connects.</p>") @as("QuickConnectSummaryList")
    quickConnectSummaryList: option<quickConnectSummaryList>,
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "ListQueueQuickConnectsCommand"
  let make = (~queueId, ~instanceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, queueId: queueId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPrompts = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult1000>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous response in
   the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the prompts.</p>") @as("PromptSummaryList")
    promptSummaryList: option<promptSummaryList>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "ListPromptsCommand"
  let make = (~instanceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPhoneNumbers = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult1000>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ISO country code.</p>") @as("PhoneNumberCountryCodes")
    phoneNumberCountryCodes: option<phoneNumberCountryCodes>,
    @ocaml.doc("<p>The type of phone number.</p>") @as("PhoneNumberTypes")
    phoneNumberTypes: option<phoneNumberTypes>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the phone numbers.</p>") @as("PhoneNumberSummaryList")
    phoneNumberSummaryList: option<phoneNumberSummaryList>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "ListPhoneNumbersCommand"
  let make = (
    ~instanceId,
    ~maxResults=?,
    ~nextToken=?,
    ~phoneNumberCountryCodes=?,
    ~phoneNumberTypes=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      phoneNumberCountryCodes: phoneNumberCountryCodes,
      phoneNumberTypes: phoneNumberTypes,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLexBots = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult25>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The names and Regions of the Amazon Lex bots associated with the specified instance.</p>"
    )
    @as("LexBots")
    lexBots: option<lexBotsList>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "ListLexBotsCommand"
  let make = (~instanceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIntegrationAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult100>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The AppIntegration associations.</p>") @as("IntegrationAssociationSummaryList")
    integrationAssociationSummaryList: option<integrationAssociationSummaryList>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "ListIntegrationAssociationsCommand"
  let make = (~instanceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInstances = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult10>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the instances.</p>") @as("InstanceSummaryList")
    instanceSummaryList: option<instanceSummaryList>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "ListInstancesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInstanceAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult7>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The attribute types.</p>") @as("Attributes") attributes: option<attributesList>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "ListInstanceAttributesCommand"
  let make = (~instanceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListHoursOfOperations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult1000>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the hours of operation.</p>")
    @as("HoursOfOperationSummaryList")
    hoursOfOperationSummaryList: option<hoursOfOperationSummaryList>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "ListHoursOfOperationsCommand"
  let make = (~instanceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListContactFlows = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult1000>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The type of contact flow.</p>") @as("ContactFlowTypes")
    contactFlowTypes: option<contactFlowTypes>,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the contact flows.</p>") @as("ContactFlowSummaryList")
    contactFlowSummaryList: option<contactFlowSummaryList>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "ListContactFlowsCommand"
  let make = (~instanceId, ~maxResults=?, ~nextToken=?, ~contactFlowTypes=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      contactFlowTypes: contactFlowTypes,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateRoutingProfileQueues = {
  type t
  type request = {
    @ocaml.doc("<p>The queues to disassociate from this routing profile.</p>")
    @as("QueueReferences")
    queueReferences: routingProfileQueueReferenceList,
    @ocaml.doc("<p>The identifier of the routing profile.</p>") @as("RoutingProfileId")
    routingProfileId: routingProfileId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "DisassociateRoutingProfileQueuesCommand"
  let make = (~queueReferences, ~routingProfileId, ~instanceId, ()) =>
    new({
      queueReferences: queueReferences,
      routingProfileId: routingProfileId,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeUserHierarchyStructure = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the hierarchy structure.</p>") @as("HierarchyStructure")
    hierarchyStructure: option<hierarchyStructure>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "DescribeUserHierarchyStructureCommand"
  let make = (~instanceId, ()) => new({instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUser = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
    @ocaml.doc("<p>The identifier of the user account.</p>") @as("UserId") userId: userId,
  }
  type response = {
    @ocaml.doc("<p>Information about the user account and configuration settings.</p>") @as("User")
    user: option<user>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "DescribeUserCommand"
  let make = (~instanceId, ~userId, ()) => new({instanceId: instanceId, userId: userId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeQueue = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the queue.</p>") @as("QueueId") queueId: queueId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {@ocaml.doc("<p>The name of the queue.</p>") @as("Queue") queue: option<queue>}
  @module("@aws-sdk/client-connect") @new external new: request => t = "DescribeQueueCommand"
  let make = (~queueId, ~instanceId, ()) => new({queueId: queueId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The name of the instance.</p>") @as("Instance") instance: option<instance>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "DescribeInstanceCommand"
  let make = (~instanceId, ()) => new({instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeContactFlow = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the contact flow.</p>") @as("ContactFlowId")
    contactFlowId: contactFlowId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the contact flow.</p>") @as("ContactFlow")
    contactFlow: option<contactFlow>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "DescribeContactFlowCommand"
  let make = (~contactFlowId, ~instanceId, ()) =>
    new({contactFlowId: contactFlowId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateQuickConnect = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>Configuration settings for the quick connect.</p>") @as("QuickConnectConfig")
    quickConnectConfig: quickConnectConfig,
    @ocaml.doc("<p>The description of the quick connect.</p>") @as("Description")
    description: option<quickConnectDescription>,
    @ocaml.doc("<p>The name of the quick connect.</p>") @as("Name") name: quickConnectName,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The identifier for the quick connect.</p>") @as("QuickConnectId")
    quickConnectId: option<quickConnectId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the quick connect. </p>")
    @as("QuickConnectARN")
    quickConnectARN: option<arn>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "CreateQuickConnectCommand"
  let make = (~quickConnectConfig, ~name, ~instanceId, ~tags=?, ~description=?, ()) =>
    new({
      tags: tags,
      quickConnectConfig: quickConnectConfig,
      description: description,
      name: name,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateContactFlow = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The content of the contact flow. </p>") @as("Content")
    content: contactFlowContent,
    @ocaml.doc("<p>The description of the contact flow. </p>") @as("Description")
    description: option<contactFlowDescription>,
    @ocaml.doc("<p>The type of the contact flow. For descriptions of the available types, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types\">Choose a Contact Flow Type</a> in the <i>Amazon Connect Administrator
   Guide</i>.</p>")
    @as("Type")
    type_: contactFlowType,
    @ocaml.doc("<p>The name of the contact flow.</p>") @as("Name") name: contactFlowName,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact flow.</p>") @as("ContactFlowArn")
    contactFlowArn: option<arn>,
    @ocaml.doc("<p>The identifier of the contact flow.</p>") @as("ContactFlowId")
    contactFlowId: option<contactFlowId>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "CreateContactFlowCommand"
  let make = (~content, ~type_, ~name, ~instanceId, ~tags=?, ~description=?, ()) =>
    new({
      tags: tags,
      content: content,
      description: description,
      type_: type_,
      name: name,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRoutingProfileQueues = {
  type t
  type request = {
    @ocaml.doc("<p>The queues to be updated for this routing profile.
   Queues must first be associated to the routing
   profile. You can do this using AssociateRoutingProfileQueues.</p>")
    @as("QueueConfigs")
    queueConfigs: routingProfileQueueConfigList,
    @ocaml.doc("<p>The identifier of the routing profile.</p>") @as("RoutingProfileId")
    routingProfileId: routingProfileId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateRoutingProfileQueuesCommand"
  let make = (~queueConfigs, ~routingProfileId, ~instanceId, ()) =>
    new({queueConfigs: queueConfigs, routingProfileId: routingProfileId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateInstanceStorageConfig = {
  type t
  type request = {
    @as("StorageConfig") storageConfig: instanceStorageConfig,
    @ocaml.doc("<p>A valid resource type.</p>") @as("ResourceType")
    resourceType: instanceStorageResourceType,
    @ocaml.doc(
      "<p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>"
    )
    @as("AssociationId")
    associationId: associationId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "UpdateInstanceStorageConfigCommand"
  let make = (~storageConfig, ~resourceType, ~associationId, ~instanceId, ()) =>
    new({
      storageConfig: storageConfig,
      resourceType: resourceType,
      associationId: associationId,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeUserHierarchyGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
    @ocaml.doc("<p>The identifier of the hierarchy group.</p>") @as("HierarchyGroupId")
    hierarchyGroupId: hierarchyGroupId,
  }
  type response = {
    @ocaml.doc("<p>Information about the hierarchy group.</p>") @as("HierarchyGroup")
    hierarchyGroup: option<hierarchyGroup>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "DescribeUserHierarchyGroupCommand"
  let make = (~instanceId, ~hierarchyGroupId, ()) =>
    new({instanceId: instanceId, hierarchyGroupId: hierarchyGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRoutingProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the routing profile.</p>") @as("RoutingProfileId")
    routingProfileId: routingProfileId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The routing profile.</p>") @as("RoutingProfile")
    routingProfile: option<routingProfile>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "DescribeRoutingProfileCommand"
  let make = (~routingProfileId, ~instanceId, ()) =>
    new({routingProfileId: routingProfileId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeQuickConnect = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the quick connect.</p>") @as("QuickConnectId")
    quickConnectId: quickConnectId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the quick connect.</p>") @as("QuickConnect")
    quickConnect: option<quickConnect>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "DescribeQuickConnectCommand"
  let make = (~quickConnectId, ~instanceId, ()) =>
    new({quickConnectId: quickConnectId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstanceStorageConfig = {
  type t
  type request = {
    @ocaml.doc("<p>A valid resource type.</p>") @as("ResourceType")
    resourceType: instanceStorageResourceType,
    @ocaml.doc(
      "<p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>"
    )
    @as("AssociationId")
    associationId: associationId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>A valid storage type.</p>") @as("StorageConfig")
    storageConfig: option<instanceStorageConfig>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "DescribeInstanceStorageConfigCommand"
  let make = (~resourceType, ~associationId, ~instanceId, ()) =>
    new({resourceType: resourceType, associationId: associationId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRoutingProfile = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The channels that agents can handle in the Contact Control Panel (CCP) for this routing
   profile.</p>")
    @as("MediaConcurrencies")
    mediaConcurrencies: mediaConcurrencies,
    @ocaml.doc("<p>The inbound queues associated with the routing profile. If no queue is added, the agent can
   make only outbound calls.</p>")
    @as("QueueConfigs")
    queueConfigs: option<routingProfileQueueConfigList>,
    @ocaml.doc("<p>The default outbound queue for the routing profile.</p>")
    @as("DefaultOutboundQueueId")
    defaultOutboundQueueId: queueId,
    @ocaml.doc("<p>Description of the routing profile. Must not be more than 250 characters.</p>")
    @as("Description")
    description: routingProfileDescription,
    @ocaml.doc("<p>The name of the routing profile. Must not be more than 127 characters.</p>")
    @as("Name")
    name: routingProfileName,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the routing profile.</p>") @as("RoutingProfileId")
    routingProfileId: option<routingProfileId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the routing profile.</p>")
    @as("RoutingProfileArn")
    routingProfileArn: option<arn>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "CreateRoutingProfileCommand"
  let make = (
    ~mediaConcurrencies,
    ~defaultOutboundQueueId,
    ~description,
    ~name,
    ~instanceId,
    ~tags=?,
    ~queueConfigs=?,
    (),
  ) =>
    new({
      tags: tags,
      mediaConcurrencies: mediaConcurrencies,
      queueConfigs: queueConfigs,
      defaultOutboundQueueId: defaultOutboundQueueId,
      description: description,
      name: name,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateRoutingProfileQueues = {
  type t
  type request = {
    @ocaml.doc("<p>The queues to associate with this routing profile.</p>") @as("QueueConfigs")
    queueConfigs: routingProfileQueueConfigList,
    @ocaml.doc("<p>The identifier of the routing profile.</p>") @as("RoutingProfileId")
    routingProfileId: routingProfileId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }

  @module("@aws-sdk/client-connect") @new
  external new: request => t = "AssociateRoutingProfileQueuesCommand"
  let make = (~queueConfigs, ~routingProfileId, ~instanceId, ()) =>
    new({queueConfigs: queueConfigs, routingProfileId: routingProfileId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateInstanceStorageConfig = {
  type t
  type request = {
    @ocaml.doc("<p>A valid storage type.</p>") @as("StorageConfig")
    storageConfig: instanceStorageConfig,
    @ocaml.doc("<p>A valid resource type.</p>") @as("ResourceType")
    resourceType: instanceStorageResourceType,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>"
    )
    @as("AssociationId")
    associationId: option<associationId>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "AssociateInstanceStorageConfigCommand"
  let make = (~storageConfig, ~resourceType, ~instanceId, ()) =>
    new({storageConfig: storageConfig, resourceType: resourceType, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInstanceStorageConfigs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult10>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A valid resource type.</p>") @as("ResourceType")
    resourceType: instanceStorageResourceType,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A valid storage type.</p>") @as("StorageConfigs")
    storageConfigs: option<instanceStorageConfigs>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "ListInstanceStorageConfigsCommand"
  let make = (~resourceType, ~instanceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      resourceType: resourceType,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHoursOfOperation = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the hours of operation.</p>") @as("HoursOfOperationId")
    hoursOfOperationId: hoursOfOperationId,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The hours of operation.</p>") @as("HoursOfOperation")
    hoursOfOperation: option<hoursOfOperation>,
  }
  @module("@aws-sdk/client-connect") @new
  external new: request => t = "DescribeHoursOfOperationCommand"
  let make = (~hoursOfOperationId, ~instanceId, ()) =>
    new({hoursOfOperationId: hoursOfOperationId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCurrentMetricData = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult100>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>
         <p>The token expires after 5 minutes from the time it is created. Subsequent requests that use
   the token must use the same request parameters as the request that generated the token.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The metrics to retrieve. Specify the name and unit for each metric. The following metrics
   are available. For a description of all the metrics, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html\">Real-time Metrics
    Definitions</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
         <dl>
            <dt>AGENTS_AFTER_CONTACT_WORK</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Name in real-time metrics report: <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#aftercallwork-real-time\">ACW</a>
               </p>

            </dd>
            <dt>AGENTS_AVAILABLE</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Name in real-time metrics report: <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#available-real-time\">Available</a>
               </p>
            </dd>
            <dt>AGENTS_ERROR</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Name in real-time metrics report: <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#error-real-time\">Error</a>
               </p>
            </dd>
            <dt>AGENTS_NON_PRODUCTIVE</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Name in real-time metrics report: <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#non-productive-time-real-time\">NPT (Non-Productive Time)</a>
               </p>
            </dd>
            <dt>AGENTS_ON_CALL</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Name in real-time metrics report: <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#on-call-real-time\">On
       contact</a>
               </p>
            </dd>
            <dt>AGENTS_ON_CONTACT</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Name in real-time metrics report: <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#on-call-real-time\">On
       contact</a>
               </p>
            </dd>
            <dt>AGENTS_ONLINE</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Name in real-time metrics report: <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#online-real-time\">Online</a>
               </p>
            </dd>
            <dt>AGENTS_STAFFED</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Name in real-time metrics report: <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#staffed-real-time\">Staffed</a>
               </p>
            </dd>
            <dt>CONTACTS_IN_QUEUE</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Name in real-time metrics report: <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#in-queue-real-time\">In
       queue</a>
               </p>
            </dd>
            <dt>CONTACTS_SCHEDULED</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Name in real-time metrics report: <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#scheduled-real-time\">Scheduled</a>
               </p>
            </dd>
            <dt>OLDEST_CONTACT_AGE</dt>
            <dd>
               <p>Unit: SECONDS</p>
               <p>When you use groupings, Unit says SECONDS but the Value is returned in MILLISECONDS. For
      example, if you get a response like this:</p>
               <p>
                  <code>{ \"Metric\": { \"Name\": \"OLDEST_CONTACT_AGE\", \"Unit\": \"SECONDS\" }, \"Value\": 24113.0
      </code>}</p>
               <p>The actual OLDEST_CONTACT_AGE is 24 seconds.</p>

               <p>Name in real-time metrics report: <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#oldest-real-time\">Oldest</a>
               </p>
            </dd>
            <dt>SLOTS_ACTIVE</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Name in real-time metrics report: <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#active-real-time\">Active</a>
               </p>
            </dd>
            <dt>SLOTS_AVAILABLE</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Name in real-time metrics report: <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#availability-real-time\">Availability</a>
               </p>
            </dd>
         </dl>")
    @as("CurrentMetrics")
    currentMetrics: currentMetrics,
    @ocaml.doc("<p>The grouping applied to the metrics returned. For example, when grouped by
    <code>QUEUE</code>, the metrics returned apply to each queue rather than aggregated for all
   queues. If you group by <code>CHANNEL</code>, you should include a Channels filter.
   VOICE, CHAT, and TASK channels are supported.</p>
         <p>If no <code>Grouping</code> is included in the request, a summary of metrics is
   returned.</p>")
    @as("Groupings")
    groupings: option<groupings>,
    @ocaml.doc("<p>The queues, up to 100, or channels, to use to filter the metrics returned. Metric data is
   retrieved only for the resources associated with the queues or channels included in the filter.
   You can include both queue IDs and queue ARNs in the same request. VOICE, CHAT, and TASK channels are supported.</p>")
    @as("Filters")
    filters: filters,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The time at which the metrics were retrieved and cached for pagination.</p>")
    @as("DataSnapshotTime")
    dataSnapshotTime: option<timestamp_>,
    @ocaml.doc("<p>Information about the real-time metrics.</p>") @as("MetricResults")
    metricResults: option<currentMetricResults>,
    @ocaml.doc("<p>If there are additional results, this is the token for the next set of results.</p>
         <p>The token expires after 5 minutes from the time it is created. Subsequent requests that use
   the token must use the same request parameters as the request that generated the token.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "GetCurrentMetricDataCommand"
  let make = (
    ~currentMetrics,
    ~filters,
    ~instanceId,
    ~maxResults=?,
    ~nextToken=?,
    ~groupings=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      currentMetrics: currentMetrics,
      groupings: groupings,
      filters: filters,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMetricData = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResult100>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The metrics to retrieve. Specify the name, unit, and statistic for each metric. The
   following historical metrics are available. For a description of each metric, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html\">Historical Metrics Definitions</a> in the <i>Amazon Connect Administrator
   Guide</i>.</p>
         <dl>
            <dt>ABANDON_TIME</dt>
            <dd>
               <p>Unit: SECONDS</p>
               <p>Statistic: AVG</p>
            </dd>
            <dt>AFTER_CONTACT_WORK_TIME</dt>
            <dd>
               <p>Unit: SECONDS</p>
               <p>Statistic: AVG</p>
            </dd>
            <dt>API_CONTACTS_HANDLED</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Statistic: SUM</p>
            </dd>
            <dt>CALLBACK_CONTACTS_HANDLED</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Statistic: SUM</p>
            </dd>
            <dt>CONTACTS_ABANDONED</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Statistic: SUM</p>
            </dd>
            <dt>CONTACTS_AGENT_HUNG_UP_FIRST</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Statistic: SUM</p>
            </dd>
            <dt>CONTACTS_CONSULTED</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Statistic: SUM</p>
            </dd>
            <dt>CONTACTS_HANDLED</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Statistic: SUM</p>
            </dd>
            <dt>CONTACTS_HANDLED_INCOMING</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Statistic: SUM</p>
            </dd>
            <dt>CONTACTS_HANDLED_OUTBOUND</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Statistic: SUM</p>
            </dd>
            <dt>CONTACTS_HOLD_ABANDONS</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Statistic: SUM</p>
            </dd>
            <dt>CONTACTS_MISSED</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Statistic: SUM</p>
            </dd>
            <dt>CONTACTS_QUEUED</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Statistic: SUM</p>
            </dd>
            <dt>CONTACTS_TRANSFERRED_IN</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Statistic: SUM</p>
            </dd>
            <dt>CONTACTS_TRANSFERRED_IN_FROM_QUEUE</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Statistic: SUM</p>
            </dd>
            <dt>CONTACTS_TRANSFERRED_OUT</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Statistic: SUM</p>
            </dd>
            <dt>CONTACTS_TRANSFERRED_OUT_FROM_QUEUE</dt>
            <dd>
               <p>Unit: COUNT</p>
               <p>Statistic: SUM</p>
            </dd>
            <dt>HANDLE_TIME</dt>
            <dd>
               <p>Unit: SECONDS</p>
               <p>Statistic: AVG</p>
            </dd>
            <dt>HOLD_TIME</dt>
            <dd>
               <p>Unit: SECONDS</p>
               <p>Statistic: AVG</p>
            </dd>
            <dt>INTERACTION_AND_HOLD_TIME</dt>
            <dd>
               <p>Unit: SECONDS</p>
               <p>Statistic: AVG</p>
            </dd>
            <dt>INTERACTION_TIME</dt>
            <dd>
               <p>Unit: SECONDS</p>
               <p>Statistic: AVG</p>
            </dd>
            <dt>OCCUPANCY</dt>
            <dd>
               <p>Unit: PERCENT</p>
               <p>Statistic: AVG</p>
            </dd>
            <dt>QUEUE_ANSWER_TIME</dt>
            <dd>
               <p>Unit: SECONDS</p>
               <p>Statistic: AVG</p>
            </dd>
            <dt>QUEUED_TIME</dt>
            <dd>
               <p>Unit: SECONDS</p>
               <p>Statistic: MAX</p>
            </dd>
            <dt>SERVICE_LEVEL</dt>
            <dd>
               <p>You can include up to 20 SERVICE_LEVEL metrics in a request.</p>
               <p>Unit: PERCENT</p>
               <p>Statistic: AVG</p>
               <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
      (inclusive), in seconds. For <code>Comparison</code>, you must enter <code>LT</code> (for
      \"Less than\"). </p>
            </dd>
         </dl>")
    @as("HistoricalMetrics")
    historicalMetrics: historicalMetrics,
    @ocaml.doc("<p>The grouping applied to the metrics returned. For example, when results are grouped by
   queue, the metrics returned are grouped by queue. The values returned apply to the metrics for
   each queue rather than aggregated for all queues.</p>
  
         <p>If no grouping is specified, a summary of metrics for all queues is returned.</p>")
    @as("Groupings")
    groupings: option<groupings>,
    @ocaml.doc("<p>The queues, up to 100, or channels, to use to filter the metrics returned. Metric data is
   retrieved only for the resources associated with the queues or channels included in the filter.
   You can include both queue IDs and queue ARNs in the same request. VOICE, CHAT, and TASK channels are supported.</p>
         <note>
            <p>To filter by <code>Queues</code>, enter the queue
    ID/ARN, not the name of the queue.</p>
         </note>")
    @as("Filters")
    filters: filters,
    @ocaml.doc("<p>The timestamp, in UNIX Epoch time format, at which to end the reporting interval for the
   retrieval of historical metrics data. The time must be specified using an interval of 5 minutes,
   such as 11:00, 11:05, 11:10, and must be later than the start time timestamp.</p>
         <p>The time range between the start and end time must be less than 24 hours.</p>")
    @as("EndTime")
    endTime: timestamp_,
    @ocaml.doc("<p>The timestamp, in UNIX Epoch time format, at which to start the reporting interval for the
   retrieval of historical metrics data. The time must be specified using a multiple of 5 minutes,
   such as 10:05, 10:10, 10:15.</p>
         <p>The start time cannot be earlier than 24 hours before the time of the request. Historical
   metrics are available only for 24 hours.</p>")
    @as("StartTime")
    startTime: timestamp_,
    @ocaml.doc("<p>The identifier of the Amazon Connect instance.</p>") @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the historical metrics.</p>
         <p>If no grouping is specified, a summary of metric data is returned.</p>")
    @as("MetricResults")
    metricResults: option<historicalMetricResults>,
    @ocaml.doc("<p>If there are additional results, this is the token for the next set of results.</p>
         <p>The token expires after 5 minutes from the time it is created. Subsequent requests that use
   the token must use the same request parameters as the request that generated the token.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-connect") @new external new: request => t = "GetMetricDataCommand"
  let make = (
    ~historicalMetrics,
    ~filters,
    ~endTime,
    ~startTime,
    ~instanceId,
    ~maxResults=?,
    ~nextToken=?,
    ~groupings=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      historicalMetrics: historicalMetrics,
      groupings: groupings,
      filters: filters,
      endTime: endTime,
      startTime: startTime,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
