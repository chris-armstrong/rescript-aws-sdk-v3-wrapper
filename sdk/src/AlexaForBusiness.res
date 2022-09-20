type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-a4b") @new
external createClient: unit => awsServiceClient = "AlexaForBusinessClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type user_UserId = string
type user_LastName = string
type user_FirstName = string
type wakeWord = [
  | @as("COMPUTER") #COMPUTER
  | @as("ECHO") #ECHO
  | @as("AMAZON") #AMAZON
  | @as("ALEXA") #ALEXA
]
type value = string
type utterance = string
type userId = string
type userCode = string
type url = string
type trustAnchor = string
type totalCount = int
type timezone = string
type timeToLiveInSeconds = int
type textValue = string
type temperatureUnit = [@as("CELSIUS") #CELSIUS | @as("FAHRENHEIT") #FAHRENHEIT]
type tagValue = string
type tagKey = string
type ssmlValue = string
type sortValue = [@as("DESC") #DESC | @as("ASC") #ASC]
type sortKey = string
type softwareVersion = string
type skillTypeFilter = [@as("ALL") #ALL | @as("PRIVATE") #PRIVATE | @as("PUBLIC") #PUBLIC]
type skillType = [@as("PRIVATE") #PRIVATE | @as("PUBLIC") #PUBLIC]
type skillStoreType = string
type skillName = string
type skillListMaxResults = int
type skillId = string
type skillGroupName = string
type skillGroupDescription = string
type sipUri = string
type sipType = [@as("WORK") #WORK]
type shortDescription = string
type s3KeyPrefix = string
type roomSkillParameterValue = string
type roomSkillParameterKey = string
type roomName = string
type roomDescription = string
type reviewValue = string
type reviewKey = string
type requirePin = [@as("OPTIONAL") #OPTIONAL | @as("NO") #NO | @as("YES") #YES]
type releaseDate = string
type rawPhoneNumber = string
type providerCalendarId = string
type profileName = string
type productId = string
type productDescription = string
type privacyPolicy = string
type phoneNumberType = [@as("HOME") #HOME | @as("WORK") #WORK | @as("MOBILE") #MOBILE]
type outboundPhoneNumber = string
type organizationName = string
type oneClickPinDelay = string
type oneClickIdDelay = string
type nextWiFiPassword = string
type nextToken = string
type networkSsid = string
type networkSecurityType = [
  | @as("WPA2_ENTERPRISE") #WPA2_ENTERPRISE
  | @as("WPA2_PSK") #WPA2_PSK
  | @as("WPA_PSK") #WPA_PSK
  | @as("WEP") #WEP
  | @as("OPEN") #OPEN
]
type networkProfileName = string
type networkProfileDescription = string
type networkEapMethod = [@as("EAP_TLS") #EAP_TLS]
type minutes = int
type maxVolumeLimit = int
type maxResults = int
type macAddress = string
type locale = [@as("en-US") #En_US]
type key = string
type invocationPhrase = string
type iconUrl = string
type genericKeyword = string
type gatewayVersion = string
type gatewayName = string
type gatewayGroupName = string
type gatewayGroupDescription = string
type gatewayDescription = string
type filterValue = string
type filterKey = string
type feature = [
  | @as("ALL") #ALL
  | @as("SETTINGS") #SETTINGS
  | @as("NETWORK_PROFILE") #NETWORK_PROFILE
  | @as("SKILLS") #SKILLS
  | @as("LISTS") #LISTS
  | @as("NOTIFICATIONS") #NOTIFICATIONS
  | @as("VOLUME") #VOLUME
  | @as("BLUETOOTH") #BLUETOOTH
]
type errorMessage = string
type enrollmentStatus = [
  | @as("DEREGISTERING") #DEREGISTERING
  | @as("DISASSOCIATING") #DISASSOCIATING
  | @as("REGISTERED") #REGISTERED
  | @as("PENDING") #PENDING
  | @as("INITIALIZED") #INITIALIZED
]
type enrollmentId = string
type endpoint = string
type endUserLicenseAgreement = string
type endOfMeetingReminderType = [
  | @as("KNOCK") #KNOCK
  | @as("CHIME") #CHIME
  | @as("ANNOUNCEMENT_VARIABLE_TIME_LEFT") #ANNOUNCEMENT_VARIABLE_TIME_LEFT
  | @as("ANNOUNCEMENT_TIME_CHECK") #ANNOUNCEMENT_TIME_CHECK
]
type enablementTypeFilter = [@as("PENDING") #PENDING | @as("ENABLED") #ENABLED]
type enablementType = [@as("PENDING") #PENDING | @as("ENABLED") #ENABLED]
type email = string
type distanceUnit = [@as("IMPERIAL") #IMPERIAL | @as("METRIC") #METRIC]
type deviceUsageType = [@as("VOICE") #VOICE]
type deviceType = string
type deviceStatusDetailCode = [
  | @as("CERTIFICATE_AUTHORITY_ACCESS_DENIED") #CERTIFICATE_AUTHORITY_ACCESS_DENIED
  | @as("PASSWORD_MANAGER_ACCESS_DENIED") #PASSWORD_MANAGER_ACCESS_DENIED
  | @as("PASSWORD_NOT_FOUND") #PASSWORD_NOT_FOUND
  | @as("INVALID_PASSWORD_STATE") #INVALID_PASSWORD_STATE
  | @as("NETWORK_PROFILE_NOT_FOUND") #NETWORK_PROFILE_NOT_FOUND
  | @as("INVALID_CERTIFICATE_AUTHORITY") #INVALID_CERTIFICATE_AUTHORITY
  | @as("CERTIFICATE_ISSUING_LIMIT_EXCEEDED") #CERTIFICATE_ISSUING_LIMIT_EXCEEDED
  | @as("UNKNOWN_FAILURE") #UNKNOWN_FAILURE
  | @as("DNS_FAILURE") #DNS_FAILURE
  | @as("INTERNET_UNAVAILABLE") #INTERNET_UNAVAILABLE
  | @as("DHCP_FAILURE") #DHCP_FAILURE
  | @as("AUTHENTICATION_FAILURE") #AUTHENTICATION_FAILURE
  | @as("ASSOCIATION_REJECTION") #ASSOCIATION_REJECTION
  | @as("TLS_VERSION_MISMATCH") #TLS_VERSION_MISMATCH
  | @as("CREDENTIALS_ACCESS_FAILURE") #CREDENTIALS_ACCESS_FAILURE
  | @as("DEVICE_WAS_OFFLINE") #DEVICE_WAS_OFFLINE
  | @as("DEVICE_SOFTWARE_UPDATE_NEEDED") #DEVICE_SOFTWARE_UPDATE_NEEDED
]
type deviceStatus = [
  | @as("FAILED") #FAILED
  | @as("DEREGISTERED") #DEREGISTERED
  | @as("WAS_OFFLINE") #WAS_OFFLINE
  | @as("PENDING") #PENDING
  | @as("READY") #READY
]
type deviceSerialNumberForAVS = string
type deviceSerialNumber = string
type deviceRoomName = string
type deviceName = string
type deviceLocale = string
type deviceEventValue = string
type deviceEventType = [
  | @as("DEVICE_STATUS") #DEVICE_STATUS
  | @as("CONNECTION_STATUS") #CONNECTION_STATUS
]
type deviceEventTime = Js.Date.t
type deviceDataCreatedTime = Js.Date.t
type developerName = string
type date = string
type customerS3BucketName = string
type currentWiFiPassword = string
type countryCode = string
type contactName = string
type connectionStatusUpdatedTime = Js.Date.t
type connectionStatus = [@as("OFFLINE") #OFFLINE | @as("ONLINE") #ONLINE]
type conferenceProviderType = [
  | @as("CUSTOM") #CUSTOM
  | @as("ZOOM") #ZOOM
  | @as("WEBEX") #WEBEX
  | @as("SKYPE_FOR_BUSINESS") #SKYPE_FOR_BUSINESS
  | @as("RINGCENTRAL") #RINGCENTRAL
  | @as("POLYCOM") #POLYCOM
  | @as("GOOGLE_HANGOUTS") #GOOGLE_HANGOUTS
  | @as("FUZE") #FUZE
  | @as("BLUEJEANS") #BLUEJEANS
  | @as("CHIME") #CHIME
]
type conferenceProviderName = string
type commsProtocol = [@as("H323") #H323 | @as("SIPS") #SIPS | @as("SIP") #SIP]
@ocaml.doc("<p>A unique, user-specified identifier for the request that ensures idempotency.</p>")
type clientRequestToken = string
type clientId = string
type certificateTime = Js.Date.t
type categoryName = string
type categoryId = float
type businessReportStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("RUNNING") #RUNNING
]
type businessReportScheduleName = string
type businessReportS3Path = string
type businessReportInterval = [
  | @as("THIRTY_DAYS") #THIRTY_DAYS
  | @as("ONE_WEEK") #ONE_WEEK
  | @as("ONE_DAY") #ONE_DAY
]
type businessReportFormat = [@as("CSV_ZIP") #CSV_ZIP | @as("CSV") #CSV]
type businessReportFailureCode = [
  | @as("INTERNAL_FAILURE") #INTERNAL_FAILURE
  | @as("NO_SUCH_BUCKET") #NO_SUCH_BUCKET
  | @as("ACCESS_DENIED") #ACCESS_DENIED
]
type businessReportDownloadUrl = string
type businessReportDeliveryTime = Js.Date.t
type bulletPoint = string
type boolean2 = bool
type boolean_ = bool
type audioLocation = string
type arn = string
type applianceManufacturerName = string
type applianceFriendlyName = string
type applianceDescription = string
type amazonId = string
type addressBookName = string
type addressBookDescription = string
type address = string
@ocaml.doc("<p>Information related to a user.</p>")
type userData = {
  @ocaml.doc("<p>The enrollment ARN of a user.</p>") @as("EnrollmentId")
  enrollmentId: option<enrollmentId>,
  @ocaml.doc("<p>The enrollment status of a user.</p>") @as("EnrollmentStatus")
  enrollmentStatus: option<enrollmentStatus>,
  @ocaml.doc("<p>The email of a user.</p>") @as("Email") email: option<email>,
  @ocaml.doc("<p>The last name of a user.</p>") @as("LastName") lastName: option<user_LastName>,
  @ocaml.doc("<p>The first name of a user.</p>") @as("FirstName") firstName: option<user_FirstName>,
  @ocaml.doc("<p>The ARN of a user.</p>") @as("UserArn") userArn: option<arn>,
}
@ocaml.doc(
  "<p>Updates settings for the require check in feature that are applied to a room profile. Require check in allows a meeting room’s Alexa or AVS device to prompt the user to check in; otherwise, the room will be released. </p>"
)
type updateRequireCheckIn = {
  @ocaml.doc("<p>Whether require check in is enabled or not.</p>") @as("Enabled")
  enabled: option<boolean_>,
  @ocaml.doc(
    "<p>Duration between 5 and 20 minutes to determine when to release the room if it's not checked into. </p>"
  )
  @as("ReleaseAfterMinutes")
  releaseAfterMinutes: option<minutes>,
}
@ocaml.doc("<p>Updates settings for the instant booking feature that are applied to a room profile. If
         instant booking is enabled, Alexa automatically reserves a room if it is free when a user
         joins a meeting with Alexa.</p>")
type updateInstantBooking = {
  @ocaml.doc("<p>Whether instant booking is enabled or not.</p>") @as("Enabled")
  enabled: option<boolean_>,
  @ocaml.doc("<p>Duration between 15 and 240 minutes at increments of 15 that determines how long to book
         an available room when a meeting is started with Alexa.</p>")
  @as("DurationInMinutes")
  durationInMinutes: option<minutes>,
}
type trustAnchorList = array<trustAnchor>
@ocaml.doc("<p>The text message.</p>")
type text = {
  @ocaml.doc("<p>The value of the text message.</p>") @as("Value") value: textValue,
  @ocaml.doc("<p>The locale of the text message. Currently, en-US is supported.</p>") @as("Locale")
  locale: locale,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A key-value pair that can be associated with a resource. </p>")
type tag = {
  @ocaml.doc("<p>The value of a tag. Tag values are case sensitive and can be null.</p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>The key of a tag. Tag keys are case-sensitive. </p>") @as("Key") key: tagKey,
}
@ocaml.doc(
  "<p>The SSML message. For more information, see <a href=\"https://developer.amazon.com/docs/custom-skills/speech-synthesis-markup-language-ssml-reference.html\">SSML Reference</a>.</p>"
)
type ssml = {
  @ocaml.doc(
    "<p>The value of the SSML message in the correct SSML format. The audio tag is not supported.</p>"
  )
  @as("Value")
  value: ssmlValue,
  @ocaml.doc("<p>The locale of the SSML message. Currently, en-US is supported.</p>") @as("Locale")
  locale: locale,
}
@ocaml.doc("<p>An object representing a sort criteria. </p>")
type sort = {
  @ocaml.doc("<p>The sort value of a sort object.</p>") @as("Value") value: sortValue,
  @ocaml.doc("<p>The sort key of a sort object.</p>") @as("Key") key: sortKey,
}
@ocaml.doc("<p>A smart home appliance that can connect to a central system. Any domestic device can be
         a smart appliance. </p>")
type smartHomeAppliance = {
  @ocaml.doc("<p>The name of the manufacturer of the smart home appliance.</p>")
  @as("ManufacturerName")
  manufacturerName: option<applianceManufacturerName>,
  @ocaml.doc("<p>The description of the smart home appliance.</p>") @as("Description")
  description: option<applianceDescription>,
  @ocaml.doc("<p>The friendly name of the smart home appliance.</p>") @as("FriendlyName")
  friendlyName: option<applianceFriendlyName>,
}
type skillTypes = array<skillStoreType>
@ocaml.doc("<p>The summary of skills.</p>")
type skillSummary = {
  @ocaml.doc("<p>Whether the skill is publicly available or is a private skill.</p>")
  @as("SkillType")
  skillType: option<skillType>,
  @ocaml.doc("<p>Whether the skill is enabled under the user's account, or if it requires linking to be
         used.</p>")
  @as("EnablementType")
  enablementType: option<enablementType>,
  @ocaml.doc("<p>Linking support for a skill.</p>") @as("SupportsLinking")
  supportsLinking: option<boolean2>,
  @ocaml.doc("<p>The name of the skill.</p>") @as("SkillName") skillName: option<skillName>,
  @ocaml.doc("<p>The ARN of the skill summary.</p>") @as("SkillId") skillId: option<skillId>,
}
@ocaml.doc("<p>The attributes of a skill group.</p>")
type skillGroupData = {
  @ocaml.doc("<p>The description of a skill group.</p>") @as("Description")
  description: option<skillGroupDescription>,
  @ocaml.doc("<p>The skill group name of a skill group.</p>") @as("SkillGroupName")
  skillGroupName: option<skillGroupName>,
  @ocaml.doc("<p>The skill group ARN of a skill group.</p>") @as("SkillGroupArn")
  skillGroupArn: option<arn>,
}
@ocaml.doc("<p>A skill group with attributes.</p>")
type skillGroup = {
  @ocaml.doc("<p>The description of a skill group.</p>") @as("Description")
  description: option<skillGroupDescription>,
  @ocaml.doc("<p>The name of a skill group.</p>") @as("SkillGroupName")
  skillGroupName: option<skillGroupName>,
  @ocaml.doc("<p>The ARN of a skill group.</p>") @as("SkillGroupArn") skillGroupArn: option<arn>,
}
@ocaml.doc("<p>The SIP address for the contact containing the URI and SIP address type.</p>")
type sipAddress = {
  @ocaml.doc("<p>The type of the SIP address.</p>") @as("Type") type_: sipType,
  @ocaml.doc("<p>The URI for the SIP address.</p>") @as("Uri") uri: sipUri,
}
type shortSkillIdList = array<skillId>
type sampleUtterances = array<utterance>
@ocaml.doc("<p>A skill parameter associated with a room.</p>")
type roomSkillParameter = {
  @ocaml.doc("<p>The parameter value of a room skill parameter.</p>") @as("ParameterValue")
  parameterValue: roomSkillParameterValue,
  @ocaml.doc("<p>The parameter key of a room skill parameter. ParameterKey is an enumerated type that
         only takes “DEFAULT” or “SCOPE” as valid values.</p>")
  @as("ParameterKey")
  parameterKey: roomSkillParameterKey,
}
@ocaml.doc("<p>The data of a room.</p>")
type roomData = {
  @ocaml.doc("<p>The profile name of a room.</p>") @as("ProfileName")
  profileName: option<profileName>,
  @ocaml.doc("<p>The profile ARN of a room.</p>") @as("ProfileArn") profileArn: option<arn>,
  @ocaml.doc("<p>The provider calendar ARN of a room.</p>") @as("ProviderCalendarId")
  providerCalendarId: option<providerCalendarId>,
  @ocaml.doc("<p>The description of a room.</p>") @as("Description")
  description: option<roomDescription>,
  @ocaml.doc("<p>The name of a room.</p>") @as("RoomName") roomName: option<roomName>,
  @ocaml.doc("<p>The ARN of a room.</p>") @as("RoomArn") roomArn: option<arn>,
}
@ocaml.doc("<p>A room with attributes.</p>")
type room = {
  @ocaml.doc("<p>The profile ARN of a room.</p>") @as("ProfileArn") profileArn: option<arn>,
  @ocaml.doc("<p>The provider calendar ARN of a room.</p>") @as("ProviderCalendarId")
  providerCalendarId: option<providerCalendarId>,
  @ocaml.doc("<p>The description of a room.</p>") @as("Description")
  description: option<roomDescription>,
  @ocaml.doc("<p>The name of a room.</p>") @as("RoomName") roomName: option<roomName>,
  @ocaml.doc("<p>The ARN of a room.</p>") @as("RoomArn") roomArn: option<arn>,
}
type reviews = Js.Dict.t<reviewValue>
@ocaml.doc(
  "<p>Settings for the require check in feature that are applied to a room profile. Require check in allows a meeting room’s Alexa or AVS device to prompt the user to check in; otherwise, the room will be released. </p>"
)
type requireCheckIn = {
  @ocaml.doc("<p>Whether require check in is enabled or not.</p>") @as("Enabled")
  enabled: option<boolean_>,
  @ocaml.doc(
    "<p>Duration between 5 and 20 minutes to determine when to release the room if it's not checked into. </p>"
  )
  @as("ReleaseAfterMinutes")
  releaseAfterMinutes: option<minutes>,
}
@ocaml.doc("<p>The data of a room profile.</p>")
type profileData = {
  @ocaml.doc("<p>The locale of a room profile. (This is currently available only to a limited preview
         audience.)</p>")
  @as("Locale")
  locale: option<deviceLocale>,
  @ocaml.doc("<p>The wake word of a room profile.</p>") @as("WakeWord") wakeWord: option<wakeWord>,
  @ocaml.doc("<p>The temperature unit of a room profile.</p>") @as("TemperatureUnit")
  temperatureUnit: option<temperatureUnit>,
  @ocaml.doc("<p>The distance unit of a room profile.</p>") @as("DistanceUnit")
  distanceUnit: option<distanceUnit>,
  @ocaml.doc("<p>The time zone of a room profile.</p>") @as("Timezone") timezone: option<timezone>,
  @ocaml.doc("<p>The address of a room profile.</p>") @as("Address") address: option<address>,
  @ocaml.doc("<p>Retrieves if the profile data is default or not.</p>") @as("IsDefault")
  isDefault: option<boolean_>,
  @ocaml.doc("<p>The name of a room profile.</p>") @as("ProfileName")
  profileName: option<profileName>,
  @ocaml.doc("<p>The ARN of a room profile.</p>") @as("ProfileArn") profileArn: option<arn>,
}
@ocaml.doc(
  "<p>The phone number for the contact containing the raw number and phone number type.</p>"
)
type phoneNumber = {
  @ocaml.doc("<p>The type of the phone number.</p>") @as("Type") type_: phoneNumberType,
  @ocaml.doc("<p>The raw value of the phone number.</p>") @as("Number") number: rawPhoneNumber,
}
@ocaml.doc("<p>The information for public switched telephone network (PSTN) conferencing.</p>")
type pstndialIn = {
  @ocaml.doc(
    "<p>The delay duration before Alexa enters the conference pin with dual-tone multi-frequency (DTMF). Each number on the dial pad corresponds to a DTMF tone, which is how we send data over the telephone network.</p>"
  )
  @as("OneClickPinDelay")
  oneClickPinDelay: oneClickPinDelay,
  @ocaml.doc(
    "<p>The delay duration before Alexa enters the conference ID with dual-tone multi-frequency (DTMF). Each number on the dial pad corresponds to a DTMF tone, which is how we send data over the telephone network.</p>"
  )
  @as("OneClickIdDelay")
  oneClickIdDelay: oneClickIdDelay,
  @ocaml.doc("<p>The phone number to call to join the conference.</p>") @as("PhoneNumber")
  phoneNumber: outboundPhoneNumber,
  @ocaml.doc("<p>The zip code.</p>") @as("CountryCode") countryCode: countryCode,
}
type newInThisVersionBulletPoints = array<bulletPoint>
@ocaml.doc("<p>The data associated with a network profile.</p>")
type networkProfileData = {
  @ocaml.doc("<p>The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager
         (ACM). This is used to issue certificates to the devices.</p>")
  @as("CertificateAuthorityArn")
  certificateAuthorityArn: option<arn>,
  @ocaml.doc("<p>The authentication standard that is used in the EAP framework. Currently, EAP_TLS is
         supported.</p>")
  @as("EapMethod")
  eapMethod: option<networkEapMethod>,
  @ocaml.doc("<p>The security type of the Wi-Fi network. This can be WPA2_ENTERPRISE, WPA2_PSK, WPA_PSK,
         WEP, or OPEN.</p>")
  @as("SecurityType")
  securityType: option<networkSecurityType>,
  @ocaml.doc("<p>The SSID of the Wi-Fi network.</p>") @as("Ssid") ssid: option<networkSsid>,
  @ocaml.doc("<p>Detailed information about a device's network profile.</p>") @as("Description")
  description: option<networkProfileDescription>,
  @ocaml.doc("<p>The name of the network profile associated with a device.</p>")
  @as("NetworkProfileName")
  networkProfileName: option<networkProfileName>,
  @ocaml.doc("<p>The ARN of the network profile associated with a device.</p>")
  @as("NetworkProfileArn")
  networkProfileArn: option<arn>,
}
@ocaml.doc("<p>The values that indicate whether a pin is always required (YES), never required (NO),
            or OPTIONAL.</p>
        <ul>
            <li>
                <p>If YES, Alexa will always ask for a meeting pin.</p>
            </li>
            <li>
                <p>If NO, Alexa will never ask for a meeting pin.</p>
            </li>
            <li>
                <p>If OPTIONAL, Alexa will ask if you have a meeting pin and if the customer responds
                    with yes, it will ask for the meeting pin.</p>
            </li>
         </ul>")
type meetingSetting = {
  @ocaml.doc("<p>The values that indicate whether the pin is always required.</p>")
  @as("RequirePin")
  requirePin: requirePin,
}
@ocaml.doc("<p>Settings for the instant booking feature that are applied to a room profile. When users
         start their meeting with Alexa, Alexa  automatically books the room for the configured
         duration if the room is available.</p>")
type instantBooking = {
  @ocaml.doc("<p>Whether instant booking is enabled or not.</p>") @as("Enabled")
  enabled: option<boolean_>,
  @ocaml.doc("<p>Duration between 15 and 240 minutes at increments of 15 that determines how long to book
         an available room when a meeting is started with Alexa. </p>")
  @as("DurationInMinutes")
  durationInMinutes: option<minutes>,
}
@ocaml.doc("<p>The IP endpoint and protocol for calling.</p>")
type ipdialIn = {
  @ocaml.doc("<p>The protocol, including SIP, SIPS, and H323.</p>") @as("CommsProtocol")
  commsProtocol: commsProtocol,
  @ocaml.doc("<p>The IP address.</p>") @as("Endpoint") endpoint: endpoint,
}
type genericKeywords = array<genericKeyword>
@ocaml.doc("<p>The summary of a gateway.</p>")
type gatewaySummary = {
  @ocaml.doc("<p>The software version of the gateway. The gateway automatically updates its software
         version during normal operation.</p>")
  @as("SoftwareVersion")
  softwareVersion: option<gatewayVersion>,
  @ocaml.doc("<p>The ARN of the gateway group that the gateway is associated to.</p>")
  @as("GatewayGroupArn")
  gatewayGroupArn: option<arn>,
  @ocaml.doc("<p>The description of the gateway.</p>") @as("Description")
  description: option<gatewayDescription>,
  @ocaml.doc("<p>The name of the gateway.</p>") @as("Name") name: option<gatewayName>,
  @ocaml.doc("<p>The ARN of the gateway.</p>") @as("Arn") arn: option<arn>,
}
@ocaml.doc("<p>The summary of a gateway group.</p>")
type gatewayGroupSummary = {
  @ocaml.doc("<p>The description of the gateway group.</p>") @as("Description")
  description: option<gatewayGroupDescription>,
  @ocaml.doc("<p>The name of the gateway group.</p>") @as("Name") name: option<gatewayGroupName>,
  @ocaml.doc("<p>The ARN of the gateway group.</p>") @as("Arn") arn: option<arn>,
}
@ocaml.doc("<p>The details of the gateway group.</p>")
type gatewayGroup = {
  @ocaml.doc("<p>The description of the gateway group.</p>") @as("Description")
  description: option<gatewayGroupDescription>,
  @ocaml.doc("<p>The name of the gateway group.</p>") @as("Name") name: option<gatewayGroupName>,
  @ocaml.doc("<p>The ARN of the gateway group.</p>") @as("Arn") arn: option<arn>,
}
@ocaml.doc("<p>The details of the gateway. </p>")
type gateway = {
  @ocaml.doc("<p>The software version of the gateway. The gateway automatically updates its software
         version during normal operation.</p>")
  @as("SoftwareVersion")
  softwareVersion: option<gatewayVersion>,
  @ocaml.doc("<p>The ARN of the gateway group that the gateway is associated to.</p>")
  @as("GatewayGroupArn")
  gatewayGroupArn: option<arn>,
  @ocaml.doc("<p>The description of the gateway.</p>") @as("Description")
  description: option<gatewayDescription>,
  @ocaml.doc("<p>The name of the gateway.</p>") @as("Name") name: option<gatewayName>,
  @ocaml.doc("<p>The ARN of the gateway.</p>") @as("Arn") arn: option<arn>,
}
type filterValueList = array<filterValue>
type features = array<feature>
type endOfMeetingReminderMinutesList = array<minutes>
@ocaml.doc("<p>Details of a device’s status.</p>")
type deviceStatusDetail = {
  @ocaml.doc("<p>The device status detail code.</p>") @as("Code")
  code: option<deviceStatusDetailCode>,
  @ocaml.doc("<p>The list of available features on the device.</p>") @as("Feature")
  feature: option<feature>,
}
@ocaml.doc("<p>Detailed information about a device's network profile.</p>")
type deviceNetworkProfileInfo = {
  @ocaml.doc("<p>The time (in epoch) when the certificate expires.</p>")
  @as("CertificateExpirationTime")
  certificateExpirationTime: option<certificateTime>,
  @ocaml.doc("<p>The ARN of the certificate associated with a device.</p>") @as("CertificateArn")
  certificateArn: option<arn>,
  @ocaml.doc("<p>The ARN of the network profile associated with a device.</p>")
  @as("NetworkProfileArn")
  networkProfileArn: option<arn>,
}
@ocaml.doc("<p>The list of device events.</p>")
type deviceEvent = {
  @ocaml.doc("<p>The time (in epoch) when the event occurred. </p>") @as("Timestamp")
  timestamp_: option<deviceEventTime>,
  @ocaml.doc("<p>The value of the event.</p>") @as("Value") value: option<deviceEventValue>,
  @ocaml.doc("<p>The type of device event.</p>") @as("Type") type_: option<deviceEventType>,
}
@ocaml.doc("<p>The details about the developer that published the skill.</p>")
type developerInfo = {
  @ocaml.doc("<p>The website of the developer.</p>") @as("Url") url: option<url>,
  @ocaml.doc("<p>The email of the developer.</p>") @as("Email") email: option<email>,
  @ocaml.doc("<p>The URL of the privacy policy.</p>") @as("PrivacyPolicy")
  privacyPolicy: option<privacyPolicy>,
  @ocaml.doc("<p>The name of the developer.</p>") @as("DeveloperName")
  developerName: option<developerName>,
}
@ocaml.doc(
  "<p>Creates settings for the require check in feature that are applied to a room profile. Require check in allows a meeting room’s Alexa or AVS device to prompt the user to check in; otherwise, the room will be released.</p>"
)
type createRequireCheckIn = {
  @ocaml.doc("<p>Whether require check in is enabled or not.</p>") @as("Enabled") enabled: boolean_,
  @ocaml.doc(
    "<p>Duration between 5 and 20 minutes to determine when to release the room if it's not checked into.</p>"
  )
  @as("ReleaseAfterMinutes")
  releaseAfterMinutes: minutes,
}
@ocaml.doc("<p>Creates settings for the instant booking feature that are applied to a room profile.
         When users start their meeting with Alexa, Alexa automatically books the room for the
         configured duration if the room is available.</p>")
type createInstantBooking = {
  @ocaml.doc("<p>Whether instant booking is enabled or not.</p>") @as("Enabled") enabled: boolean_,
  @ocaml.doc("<p>Duration between 15 and 240 minutes at increments of 15 that determines how long to book
         an available room when a meeting is started with Alexa.</p>")
  @as("DurationInMinutes")
  durationInMinutes: minutes,
}
@ocaml.doc("<p>The default conference provider that is used if no other scheduled meetings are
         detected.</p>")
type conferencePreference = {
  @ocaml.doc("<p>The ARN of the default conference provider.</p>")
  @as("DefaultConferenceProviderArn")
  defaultConferenceProviderArn: option<arn>,
}
@ocaml.doc("<p>The skill store category that is shown. Alexa skills are assigned a specific skill
         category during creation, such as News, Social, and Sports.</p>")
type category = {
  @ocaml.doc("<p>The name of the skill store category.</p>") @as("CategoryName")
  categoryName: option<categoryName>,
  @ocaml.doc("<p>The ID of the skill store category.</p>") @as("CategoryId")
  categoryId: option<categoryId>,
}
@ocaml.doc("<p>The S3 location of the output reports.</p>")
type businessReportS3Location = {
  @ocaml.doc("<p>The S3 bucket name of the output reports.</p>") @as("BucketName")
  bucketName: option<customerS3BucketName>,
  @ocaml.doc("<p>The path of the business report.</p>") @as("Path")
  path: option<businessReportS3Path>,
}
@ocaml.doc("<p>The recurrence of the reports.</p>")
type businessReportRecurrence = {
  @ocaml.doc("<p>The start date.</p>") @as("StartDate") startDate: option<date>,
}
@ocaml.doc("<p>The content range of the report.</p>")
type businessReportContentRange = {
  @ocaml.doc("<p>The interval of the content range.</p>") @as("Interval")
  interval: businessReportInterval,
}
type bulletPoints = array<bulletPoint>
type authorizationResult = Js.Dict.t<value>
@ocaml.doc("<p>The audio message. There is a 1 MB limit on the audio file input and the only supported
         format is MP3. To convert your MP3 audio files to an Alexa-friendly,  </p>
         <p>required codec version (MPEG version 2) and bit rate (48 kbps), you might use converter
         software. One option for this is a command-line tool, FFmpeg. For more information, see
            <a href=\"https://www.ffmpeg.org/\">FFmpeg</a>. The following command converts the
         provided <input-file> to an MP3 file that is played in the announcement:</p>
         <p>
            <code>ffmpeg -i <input-file> -ac 2 -codec:a libmp3lame -b:a 48k -ar 16000
            <output-file.mp3></code>
         </p>")
type audio = {
  @ocaml.doc("<p>The location of the audio file. Currently, S3 URLs are supported. Only S3 locations
         comprised of safe characters are valid. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#Safe%20Characters\">Safe Characters</a>.</p>")
  @as("Location")
  location: audioLocation,
  @ocaml.doc("<p>The locale of the audio message. Currently, en-US is supported.</p>") @as("Locale")
  locale: locale,
}
@ocaml.doc("<p>Information related to an address book.</p>")
type addressBookData = {
  @ocaml.doc("<p>The description of the address book.</p>") @as("Description")
  description: option<addressBookDescription>,
  @ocaml.doc("<p>The name of the address book.</p>") @as("Name") name: option<addressBookName>,
  @ocaml.doc("<p>The ARN of the address book.</p>") @as("AddressBookArn")
  addressBookArn: option<arn>,
}
@ocaml.doc("<p>An address book with attributes.</p>")
type addressBook = {
  @ocaml.doc("<p>The description of the address book.</p>") @as("Description")
  description: option<addressBookDescription>,
  @ocaml.doc("<p>The name of the address book.</p>") @as("Name") name: option<addressBookName>,
  @ocaml.doc("<p>The ARN of the address book.</p>") @as("AddressBookArn")
  addressBookArn: option<arn>,
}
type userDataList = array<userData>
@ocaml.doc("<p>Settings for the end of meeting reminder feature that are applied to a room profile. The
         end of meeting reminder enables Alexa to remind users when a meeting is ending. </p>")
type updateEndOfMeetingReminder = {
  @ocaml.doc("<p>Whether an end of meeting reminder is enabled or not.</p>") @as("Enabled")
  enabled: option<boolean_>,
  @ocaml.doc("<p>The type of sound that users hear during the end of meeting reminder. </p>")
  @as("ReminderType")
  reminderType: option<endOfMeetingReminderType>,
  @ocaml.doc("<p>Updates settings for the end of meeting reminder feature that are applied to a room
         profile. The end of meeting reminder enables Alexa to remind users when a meeting is
         ending. </p>")
  @as("ReminderAtMinutes")
  reminderAtMinutes: option<endOfMeetingReminderMinutesList>,
}
type textList = array<text>
type tagList_ = array<tag>
type ssmlList = array<ssml>
type sortList = array<sort>
type smartHomeApplianceList = array<smartHomeAppliance>
type skillSummaryList = array<skillSummary>
type skillGroupDataList = array<skillGroupData>
@ocaml.doc("<p>Granular information about the skill.</p>")
type skillDetails = {
  @ocaml.doc("<p>The details about the developer that published the skill.</p>")
  @as("DeveloperInfo")
  developerInfo: option<developerInfo>,
  @ocaml.doc("<p>
            <i>This member has been deprecated.</i>
         </p>
         <p>The list of reviews for the skill, including Key and Value pair.</p>")
  @as("Reviews")
  reviews: option<reviews>,
  @ocaml.doc("<p>The types of skills.</p>") @as("SkillTypes") skillTypes: option<skillTypes>,
  @ocaml.doc("<p>The updates added in bullet points.</p>") @as("NewInThisVersionBulletPoints")
  newInThisVersionBulletPoints: option<newInThisVersionBulletPoints>,
  @ocaml.doc("<p>The details about what the skill supports organized as bullet points.</p>")
  @as("BulletPoints")
  bulletPoints: option<bulletPoints>,
  @ocaml.doc("<p>The generic keywords associated with the skill that can be used to find a
         skill.</p>")
  @as("GenericKeywords")
  genericKeywords: option<genericKeywords>,
  @ocaml.doc("<p>The URL of the end user license agreement.</p>") @as("EndUserLicenseAgreement")
  endUserLicenseAgreement: option<endUserLicenseAgreement>,
  @ocaml.doc("<p>The date when the skill was released.</p>") @as("ReleaseDate")
  releaseDate: option<releaseDate>,
  @ocaml.doc("<p>The phrase used to trigger the skill.</p>") @as("InvocationPhrase")
  invocationPhrase: option<invocationPhrase>,
  @ocaml.doc("<p>The description of the product.</p>") @as("ProductDescription")
  productDescription: option<productDescription>,
}
type sipAddressList = array<sipAddress>
type roomSkillParameters = array<roomSkillParameter>
type roomDataList = array<roomData>
type profileDataList = array<profileData>
type phoneNumberList = array<phoneNumber>
type networkProfileDataList = array<networkProfileData>
@ocaml.doc("<p>The network profile associated with a device.</p>")
type networkProfile = {
  @ocaml.doc("<p>The root certificates of your authentication server, which is installed on your devices
         and used to trust your authentication server during EAP negotiation.</p>")
  @as("TrustAnchors")
  trustAnchors: option<trustAnchorList>,
  @ocaml.doc("<p>The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager
         (ACM). This is used to issue certificates to the devices. </p>")
  @as("CertificateAuthorityArn")
  certificateAuthorityArn: option<arn>,
  @ocaml.doc("<p>The next, or subsequent, password of the Wi-Fi network. This password is asynchronously
         transmitted to the device and is used when the password of the network changes to
         NextPassword. </p>")
  @as("NextPassword")
  nextPassword: option<nextWiFiPassword>,
  @ocaml.doc("<p>The current password of the Wi-Fi network.</p>") @as("CurrentPassword")
  currentPassword: option<currentWiFiPassword>,
  @ocaml.doc("<p>The authentication standard that is used in the EAP framework. Currently, EAP_TLS is
         supported. </p>")
  @as("EapMethod")
  eapMethod: option<networkEapMethod>,
  @ocaml.doc("<p>The security type of the Wi-Fi network. This can be WPA2_ENTERPRISE, WPA2_PSK, WPA_PSK,
         WEP, or OPEN.</p>")
  @as("SecurityType")
  securityType: option<networkSecurityType>,
  @ocaml.doc("<p>The SSID of the Wi-Fi network.</p>") @as("Ssid") ssid: option<networkSsid>,
  @ocaml.doc("<p>Detailed information about a device's network profile.</p>") @as("Description")
  description: option<networkProfileDescription>,
  @ocaml.doc("<p>The name of the network profile associated with a device.</p>")
  @as("NetworkProfileName")
  networkProfileName: option<networkProfileName>,
  @ocaml.doc("<p>The ARN of the network profile associated with a device.</p>")
  @as("NetworkProfileArn")
  networkProfileArn: option<arn>,
}
type gatewaySummaries = array<gatewaySummary>
type gatewayGroupSummaries = array<gatewayGroupSummary>
@ocaml.doc("<p>A filter name and value pair that is used to return a more specific list of results.
         Filters can be used to match a set of resources by various criteria.</p>")
type filter = {
  @ocaml.doc("<p>The values of a filter.</p>") @as("Values") values: filterValueList,
  @ocaml.doc("<p>The key of a filter.</p>") @as("Key") key: filterKey,
}
@ocaml.doc("<p>Settings for the end of meeting reminder feature that are applied to a room profile. The
         end of meeting reminder enables Alexa to remind users when a meeting is ending. </p>")
type endOfMeetingReminder = {
  @ocaml.doc("<p>Whether an end of meeting reminder is enabled or not.</p>") @as("Enabled")
  enabled: option<boolean_>,
  @ocaml.doc("<p>The type of sound that users hear during the end of meeting reminder. </p>")
  @as("ReminderType")
  reminderType: option<endOfMeetingReminderType>,
  @ocaml.doc("<p>A range of 3 to 15 minutes that determines when the reminder begins.</p>")
  @as("ReminderAtMinutes")
  reminderAtMinutes: option<endOfMeetingReminderMinutesList>,
}
type deviceStatusDetails = array<deviceStatusDetail>
type deviceEventList = array<deviceEvent>
@ocaml.doc("<p>Creates settings for the end of meeting reminder feature that are applied to a room
         profile. The end of meeting reminder enables Alexa to remind users when a meeting is
         ending.</p>")
type createEndOfMeetingReminder = {
  @ocaml.doc("<p>Whether an end of meeting reminder is enabled or not.</p>") @as("Enabled")
  enabled: boolean_,
  @ocaml.doc("<p>The type of sound that users hear during the end of meeting reminder. </p>")
  @as("ReminderType")
  reminderType: endOfMeetingReminderType,
  @ocaml.doc("<p> A range of 3 to 15 minutes that determines when the reminder begins.</p>")
  @as("ReminderAtMinutes")
  reminderAtMinutes: endOfMeetingReminderMinutesList,
}
@ocaml.doc(
  "<p>An entity that provides a conferencing solution. Alexa for Business acts as the voice interface and mediator that connects users to their preferred conference provider. Examples of conference providers include Amazon Chime, Zoom, Cisco, and Polycom. </p>"
)
type conferenceProvider = {
  @ocaml.doc("<p>The meeting settings for the conference provider.</p>") @as("MeetingSetting")
  meetingSetting: option<meetingSetting>,
  @ocaml.doc("<p>The information for PSTN conferencing.</p>") @as("PSTNDialIn")
  pstndialIn: option<pstndialIn>,
  @ocaml.doc("<p>The IP endpoint and protocol for calling.</p>") @as("IPDialIn")
  ipdialIn: option<ipdialIn>,
  @ocaml.doc("<p>The type of conference providers.</p>") @as("Type")
  type_: option<conferenceProviderType>,
  @ocaml.doc("<p>The name of the conference provider.</p>") @as("Name")
  name: option<conferenceProviderName>,
  @ocaml.doc("<p>The ARN of the newly created conference provider.</p>") @as("Arn")
  arn: option<arn>,
}
type categoryList = array<category>
@ocaml.doc("<p>Usage report with specified parameters.</p>")
type businessReport = {
  @ocaml.doc("<p>The download link where a user can download the report.</p>") @as("DownloadUrl")
  downloadUrl: option<businessReportDownloadUrl>,
  @ocaml.doc("<p>The time of report delivery.</p>") @as("DeliveryTime")
  deliveryTime: option<businessReportDeliveryTime>,
  @ocaml.doc("<p>The S3 location of the output reports.</p>") @as("S3Location")
  s3Location: option<businessReportS3Location>,
  @ocaml.doc("<p>The failure code.</p>") @as("FailureCode")
  failureCode: option<businessReportFailureCode>,
  @ocaml.doc("<p>The status of the report generation execution (RUNNING, SUCCEEDED, or
         FAILED).</p>")
  @as("Status")
  status: option<businessReportStatus>,
}
type audioList = array<audio>
type addressBookDataList = array<addressBookData>
@ocaml.doc("<p>Updates meeting room settings of a room profile.</p>")
type updateMeetingRoomConfiguration = {
  @ocaml.doc(
    "<p>Settings for requiring a check in when a room is reserved. Alexa can cancel a room reservation if it's not checked into to make the room available for others. Users can check in by joining the meeting with Alexa or an AVS device, or by saying “Alexa, check in.” </p>"
  )
  @as("RequireCheckIn")
  requireCheckIn: option<updateRequireCheckIn>,
  @ocaml.doc("<p>Settings to automatically book an available room available for a configured duration
         when joining a meeting with Alexa.</p>")
  @as("InstantBooking")
  instantBooking: option<updateInstantBooking>,
  @ocaml.doc("<p>Settings for the end of meeting reminder feature that are applied to a room profile. The
         end of meeting reminder enables Alexa to remind users when a meeting is ending. </p>")
  @as("EndOfMeetingReminder")
  endOfMeetingReminder: option<updateEndOfMeetingReminder>,
  @ocaml.doc("<p>Whether room utilization metrics are enabled or not.</p>")
  @as("RoomUtilizationMetricsEnabled")
  roomUtilizationMetricsEnabled: option<boolean_>,
}
@ocaml.doc("<p>The detailed information about an Alexa skill.</p>")
type skillsStoreSkill = {
  @ocaml.doc("<p>Linking support for a skill.</p>") @as("SupportsLinking")
  supportsLinking: option<boolean2>,
  @ocaml.doc("<p>Information about the skill.</p>") @as("SkillDetails")
  skillDetails: option<skillDetails>,
  @ocaml.doc("<p>Sample utterances that interact with the skill.</p>") @as("SampleUtterances")
  sampleUtterances: option<sampleUtterances>,
  @ocaml.doc("<p>The URL where the skill icon resides.</p>") @as("IconUrl")
  iconUrl: option<iconUrl>,
  @ocaml.doc("<p>Short description about the skill.</p>") @as("ShortDescription")
  shortDescription: option<shortDescription>,
  @ocaml.doc("<p>The name of the skill.</p>") @as("SkillName") skillName: option<skillName>,
  @ocaml.doc("<p>The ARN of the skill.</p>") @as("SkillId") skillId: option<skillId>,
}
@ocaml.doc("<p>Meeting room settings of a room profile.</p>")
type meetingRoomConfiguration = {
  @ocaml.doc("<p>Settings for requiring a check in when a room is reserved. Alexa can cancel a room
         reservation if it's not checked into. This makes the room available for others. Users can
         check in by joining the meeting with Alexa or an AVS device, or by saying “Alexa, check
         in.” </p>")
  @as("RequireCheckIn")
  requireCheckIn: option<requireCheckIn>,
  @ocaml.doc("<p>Settings to automatically book the room if available for a configured duration when
         joining a meeting with Alexa. </p>")
  @as("InstantBooking")
  instantBooking: option<instantBooking>,
  @ocaml.doc("<p>Settings for the end of meeting reminder feature that are applied to a room profile. The
         end of meeting reminder enables Alexa to remind users when a meeting is ending. </p>")
  @as("EndOfMeetingReminder")
  endOfMeetingReminder: option<endOfMeetingReminder>,
  @ocaml.doc("<p>Whether room utilization metrics are enabled or not.</p>")
  @as("RoomUtilizationMetricsEnabled")
  roomUtilizationMetricsEnabled: option<boolean_>,
}
type filterList = array<filter>
@ocaml.doc("<p>Detailed information about a device's status.</p>")
type deviceStatusInfo = {
  @ocaml.doc("<p>The time (in epoch) when the device connection status changed.</p>")
  @as("ConnectionStatusUpdatedTime")
  connectionStatusUpdatedTime: option<connectionStatusUpdatedTime>,
  @ocaml.doc("<p>The latest available information about the connection status of a device. </p>")
  @as("ConnectionStatus")
  connectionStatus: option<connectionStatus>,
  @ocaml.doc("<p>One or more device status detail descriptions.</p>") @as("DeviceStatusDetails")
  deviceStatusDetails: option<deviceStatusDetails>,
}
@ocaml.doc("<p>Creates meeting room settings of a room profile.</p>")
type createMeetingRoomConfiguration = {
  @ocaml.doc(
    "<p>Settings for requiring a check in when a room is reserved. Alexa can cancel a room reservation if it's not checked into to make the room available for others. Users can check in by joining the meeting with Alexa or an AVS device, or by saying “Alexa, check in.”</p>"
  )
  @as("RequireCheckIn")
  requireCheckIn: option<createRequireCheckIn>,
  @ocaml.doc(
    "<p>Settings to automatically book a room for a configured duration if it's free when joining a meeting with Alexa.</p>"
  )
  @as("InstantBooking")
  instantBooking: option<createInstantBooking>,
  @as("EndOfMeetingReminder") endOfMeetingReminder: option<createEndOfMeetingReminder>,
  @ocaml.doc("<p>Whether room utilization metrics are enabled or not.</p>")
  @as("RoomUtilizationMetricsEnabled")
  roomUtilizationMetricsEnabled: option<boolean_>,
}
@ocaml.doc("<p>The content definition. This can contain only one text, SSML, or audio list
         object.</p>")
type content = {
  @ocaml.doc("<p>The list of audio messages.</p>") @as("AudioList") audioList: option<audioList>,
  @ocaml.doc("<p>The list of SSML messages.</p>") @as("SsmlList") ssmlList: option<ssmlList>,
  @ocaml.doc("<p>The list of text messages.</p>") @as("TextList") textList: option<textList>,
}
@ocaml.doc("<p>Information related to a contact.</p>")
type contactData = {
  @ocaml.doc("<p>The list of SIP addresses for the contact.</p>") @as("SipAddresses")
  sipAddresses: option<sipAddressList>,
  @ocaml.doc("<p>The list of phone numbers for the contact.</p>") @as("PhoneNumbers")
  phoneNumbers: option<phoneNumberList>,
  @ocaml.doc("<p>The phone number of the contact. The phone number type defaults to WORK. You can
         specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which lets you
         specify the phone number type and multiple numbers.</p>")
  @as("PhoneNumber")
  phoneNumber: option<rawPhoneNumber>,
  @ocaml.doc("<p>The last name of the contact, used to call the contact on the device.</p>")
  @as("LastName")
  lastName: option<contactName>,
  @ocaml.doc("<p>The first name of the contact, used to call the contact on the device.</p>")
  @as("FirstName")
  firstName: option<contactName>,
  @ocaml.doc("<p>The name of the contact to display on the console.</p>") @as("DisplayName")
  displayName: option<contactName>,
  @ocaml.doc("<p>The ARN of the contact.</p>") @as("ContactArn") contactArn: option<arn>,
}
@ocaml.doc("<p>A contact with attributes.</p>")
type contact = {
  @ocaml.doc("<p>The list of SIP addresses for the contact.</p>") @as("SipAddresses")
  sipAddresses: option<sipAddressList>,
  @ocaml.doc("<p>The list of phone numbers for the contact.</p>") @as("PhoneNumbers")
  phoneNumbers: option<phoneNumberList>,
  @ocaml.doc("<p>The phone number of the contact. The phone number type defaults to WORK. You can
         either specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which
         lets you specify the phone number type and multiple numbers.</p>")
  @as("PhoneNumber")
  phoneNumber: option<rawPhoneNumber>,
  @ocaml.doc("<p>The last name of the contact, used to call the contact on the device.</p>")
  @as("LastName")
  lastName: option<contactName>,
  @ocaml.doc("<p>The first name of the contact, used to call the contact on the device.</p>")
  @as("FirstName")
  firstName: option<contactName>,
  @ocaml.doc("<p>The name of the contact to display on the console.</p>") @as("DisplayName")
  displayName: option<contactName>,
  @ocaml.doc("<p>The ARN of the contact.</p>") @as("ContactArn") contactArn: option<arn>,
}
type conferenceProvidersList = array<conferenceProvider>
@ocaml.doc("<p>The schedule of the usage report.</p>")
type businessReportSchedule = {
  @ocaml.doc("<p>The details of the last business report delivery for a specified time
         interval.</p>")
  @as("LastBusinessReport")
  lastBusinessReport: option<businessReport>,
  @ocaml.doc("<p>The recurrence of the reports.</p>") @as("Recurrence")
  recurrence: option<businessReportRecurrence>,
  @ocaml.doc("<p>The content range of the reports.</p>") @as("ContentRange")
  contentRange: option<businessReportContentRange>,
  @ocaml.doc("<p>The format of the generated report (individual CSV files or zipped files of
         individual files).</p>")
  @as("Format")
  format: option<businessReportFormat>,
  @ocaml.doc("<p>The S3 key where the report is delivered.</p>") @as("S3KeyPrefix")
  s3KeyPrefix: option<s3KeyPrefix>,
  @ocaml.doc("<p>The S3 bucket name of the output reports.</p>") @as("S3BucketName")
  s3BucketName: option<customerS3BucketName>,
  @ocaml.doc("<p>The name identifier of the schedule.</p>") @as("ScheduleName")
  scheduleName: option<businessReportScheduleName>,
  @ocaml.doc("<p>The ARN of the business report schedule.</p>") @as("ScheduleArn")
  scheduleArn: option<arn>,
}
type skillsStoreSkillList = array<skillsStoreSkill>
@ocaml.doc("<p>A room profile with attributes.</p>")
type profile = {
  @ocaml.doc("<p>Meeting room settings of a room profile.</p>") @as("MeetingRoomConfiguration")
  meetingRoomConfiguration: option<meetingRoomConfiguration>,
  @ocaml.doc("<p>The ARN of the address book.</p>") @as("AddressBookArn")
  addressBookArn: option<arn>,
  @ocaml.doc("<p>Whether data retention of the profile is enabled.</p>") @as("DataRetentionOptIn")
  dataRetentionOptIn: option<boolean_>,
  @ocaml.doc("<p>The PSTN setting of a room profile.</p>") @as("PSTNEnabled")
  pstnenabled: option<boolean_>,
  @ocaml.doc("<p>The max volume limit of a room profile.</p>") @as("MaxVolumeLimit")
  maxVolumeLimit: option<maxVolumeLimit>,
  @ocaml.doc("<p>The setup mode of a room profile.</p>") @as("SetupModeDisabled")
  setupModeDisabled: option<boolean_>,
  @ocaml.doc("<p>The locale of a room profile. (This is currently available only to a limited preview
         audience.)</p>")
  @as("Locale")
  locale: option<deviceLocale>,
  @ocaml.doc("<p>The wake word of a room profile.</p>") @as("WakeWord") wakeWord: option<wakeWord>,
  @ocaml.doc("<p>The temperature unit of a room profile.</p>") @as("TemperatureUnit")
  temperatureUnit: option<temperatureUnit>,
  @ocaml.doc("<p>The distance unit of a room profile.</p>") @as("DistanceUnit")
  distanceUnit: option<distanceUnit>,
  @ocaml.doc("<p>The time zone of a room profile.</p>") @as("Timezone") timezone: option<timezone>,
  @ocaml.doc("<p>The address of a room profile.</p>") @as("Address") address: option<address>,
  @ocaml.doc("<p>Retrieves if the profile is default or not.</p>") @as("IsDefault")
  isDefault: option<boolean_>,
  @ocaml.doc("<p>The name of a room profile.</p>") @as("ProfileName")
  profileName: option<profileName>,
  @ocaml.doc("<p>The ARN of a room profile.</p>") @as("ProfileArn") profileArn: option<arn>,
}
@ocaml.doc("<p>Device attributes.</p>")
type deviceData = {
  @ocaml.doc("<p>The time (in epoch) when the device data was created.</p>") @as("CreatedTime")
  createdTime: option<deviceDataCreatedTime>,
  @ocaml.doc("<p>Detailed information about a device's status.</p>") @as("DeviceStatusInfo")
  deviceStatusInfo: option<deviceStatusInfo>,
  @ocaml.doc("<p>The name of the room associated with a device.</p>") @as("RoomName")
  roomName: option<deviceRoomName>,
  @ocaml.doc("<p>The room ARN associated with a device.</p>") @as("RoomArn") roomArn: option<arn>,
  @ocaml.doc("<p>The name of the network profile associated with a device.</p>")
  @as("NetworkProfileName")
  networkProfileName: option<networkProfileName>,
  @ocaml.doc("<p>The ARN of the network profile associated with a device.</p>")
  @as("NetworkProfileArn")
  networkProfileArn: option<arn>,
  @ocaml.doc("<p>The status of a device.</p>") @as("DeviceStatus")
  deviceStatus: option<deviceStatus>,
  @ocaml.doc("<p>The MAC address of a device.</p>") @as("MacAddress")
  macAddress: option<macAddress>,
  @ocaml.doc("<p>The software version of a device.</p>") @as("SoftwareVersion")
  softwareVersion: option<softwareVersion>,
  @ocaml.doc("<p>The name of a device.</p>") @as("DeviceName") deviceName: option<deviceName>,
  @ocaml.doc("<p>The type of a device.</p>") @as("DeviceType") deviceType: option<deviceType>,
  @ocaml.doc("<p>The serial number of a device.</p>") @as("DeviceSerialNumber")
  deviceSerialNumber: option<deviceSerialNumber>,
  @ocaml.doc("<p>The ARN of a device.</p>") @as("DeviceArn") deviceArn: option<arn>,
}
@ocaml.doc("<p>A device with attributes.</p>")
type device = {
  @ocaml.doc("<p>Detailed information about a device's network profile.</p>")
  @as("NetworkProfileInfo")
  networkProfileInfo: option<deviceNetworkProfileInfo>,
  @ocaml.doc("<p>Detailed information about a device's status.</p>") @as("DeviceStatusInfo")
  deviceStatusInfo: option<deviceStatusInfo>,
  @ocaml.doc("<p>The status of a device. If the status is not READY, check the DeviceStatusInfo value
         for details.</p>")
  @as("DeviceStatus")
  deviceStatus: option<deviceStatus>,
  @ocaml.doc("<p>The room ARN of a device.</p>") @as("RoomArn") roomArn: option<arn>,
  @ocaml.doc("<p>The MAC address of a device.</p>") @as("MacAddress")
  macAddress: option<macAddress>,
  @ocaml.doc("<p>The software version of a device.</p>") @as("SoftwareVersion")
  softwareVersion: option<softwareVersion>,
  @ocaml.doc("<p>The name of a device.</p>") @as("DeviceName") deviceName: option<deviceName>,
  @ocaml.doc("<p>The type of a device.</p>") @as("DeviceType") deviceType: option<deviceType>,
  @ocaml.doc("<p>The serial number of a device.</p>") @as("DeviceSerialNumber")
  deviceSerialNumber: option<deviceSerialNumber>,
  @ocaml.doc("<p>The ARN of a device.</p>") @as("DeviceArn") deviceArn: option<arn>,
}
type contactDataList = array<contactData>
type businessReportScheduleList = array<businessReportSchedule>
type deviceDataList = array<deviceData>
@ocaml.doc("<p>Alexa for Business helps you use Alexa in your organization. Alexa for Business provides you with the tools
         to manage Alexa devices, enroll your users, and assign skills, at scale. You can build your
         own context-aware voice skills using the Alexa Skills Kit and the Alexa for Business API operations.
         You can also make these available as private skills for your organization. Alexa for Business makes it
         efficient to voice-enable your products and services, thus providing context-aware voice
         experiences for your customers. Device makers building with the Alexa Voice Service (AVS)
         can create fully integrated solutions, register their products with Alexa for Business, and manage them
         as shared devices in their organization. </p>")
module UpdateSkillGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The updated description for the skill group.</p>") @as("Description")
    description: option<skillGroupDescription>,
    @ocaml.doc("<p>The updated name for the skill group.</p>") @as("SkillGroupName")
    skillGroupName: option<skillGroupName>,
    @ocaml.doc("<p>The ARN of the skill group to update. </p>") @as("SkillGroupArn")
    skillGroupArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateSkillGroupCommand"
  let make = (~description=?, ~skillGroupName=?, ~skillGroupArn=?, ()) =>
    new({description: description, skillGroupName: skillGroupName, skillGroupArn: skillGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateRoom = {
  type t
  type request = {
    @ocaml.doc("<p>The updated profile ARN for the room.</p>") @as("ProfileArn")
    profileArn: option<arn>,
    @ocaml.doc("<p>The updated provider calendar ARN for the room.</p>") @as("ProviderCalendarId")
    providerCalendarId: option<providerCalendarId>,
    @ocaml.doc("<p>The updated description for the room.</p>") @as("Description")
    description: option<roomDescription>,
    @ocaml.doc("<p>The updated name for the room.</p>") @as("RoomName") roomName: option<roomName>,
    @ocaml.doc("<p>The ARN of the room to update. </p>") @as("RoomArn") roomArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateRoomCommand"
  let make = (~profileArn=?, ~providerCalendarId=?, ~description=?, ~roomName=?, ~roomArn=?, ()) =>
    new({
      profileArn: profileArn,
      providerCalendarId: providerCalendarId,
      description: description,
      roomName: roomName,
      roomArn: roomArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateGatewayGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The updated description of the gateway group.</p>") @as("Description")
    description: option<gatewayGroupDescription>,
    @ocaml.doc("<p>The updated name of the gateway group.</p>") @as("Name")
    name: option<gatewayGroupName>,
    @ocaml.doc("<p>The ARN of the gateway group to update.</p>") @as("GatewayGroupArn")
    gatewayGroupArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateGatewayGroupCommand"
  let make = (~gatewayGroupArn, ~description=?, ~name=?, ()) =>
    new({description: description, name: name, gatewayGroupArn: gatewayGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The updated software version of the gateway. The gateway automatically updates its
         software version during normal operation.</p>")
    @as("SoftwareVersion")
    softwareVersion: option<gatewayVersion>,
    @ocaml.doc("<p>The updated description of the gateway.</p>") @as("Description")
    description: option<gatewayDescription>,
    @ocaml.doc("<p>The updated name of the gateway.</p>") @as("Name") name: option<gatewayName>,
    @ocaml.doc("<p>The ARN of the gateway to update.</p>") @as("GatewayArn") gatewayArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateGatewayCommand"
  let make = (~gatewayArn, ~softwareVersion=?, ~description=?, ~name=?, ()) =>
    new({
      softwareVersion: softwareVersion,
      description: description,
      name: name,
      gatewayArn: gatewayArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The updated device name. Required.</p>") @as("DeviceName")
    deviceName: option<deviceName>,
    @ocaml.doc("<p>The ARN of the device to update. Required.</p>") @as("DeviceArn")
    deviceArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateDeviceCommand"
  let make = (~deviceName=?, ~deviceArn=?, ()) =>
    new({deviceName: deviceName, deviceArn: deviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateAddressBook = {
  type t
  type request = {
    @ocaml.doc("<p>The updated description of the room.</p>") @as("Description")
    description: option<addressBookDescription>,
    @ocaml.doc("<p>The updated name of the room.</p>") @as("Name") name: option<addressBookName>,
    @ocaml.doc("<p>The ARN of the room to update.</p>") @as("AddressBookArn") addressBookArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateAddressBookCommand"
  let make = (~addressBookArn, ~description=?, ~name=?, ()) =>
    new({description: description, name: name, addressBookArn: addressBookArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartSmartHomeApplianceDiscovery = {
  type t
  type request = {
    @ocaml.doc("<p>The room where smart home appliance discovery was initiated.</p>") @as("RoomArn")
    roomArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "StartSmartHomeApplianceDiscoveryCommand"
  let make = (~roomArn, ()) => new({roomArn: roomArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SendInvitation = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the user to whom to send an invitation. Required.</p>") @as("UserArn")
    userArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SendInvitationCommand"
  let make = (~userArn=?, ()) => new({userArn: userArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RevokeInvitation = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the enrollment invitation to revoke. Required.</p>")
    @as("EnrollmentId")
    enrollmentId: option<enrollmentId>,
    @ocaml.doc("<p>The ARN of the user for whom to revoke an enrollment invitation. Required.</p>")
    @as("UserArn")
    userArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "RevokeInvitationCommand"
  let make = (~enrollmentId=?, ~userArn=?, ()) =>
    new({enrollmentId: enrollmentId, userArn: userArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RejectSkill = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the skill.</p>") @as("SkillId") skillId: skillId,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "RejectSkillCommand"
  let make = (~skillId, ()) => new({skillId: skillId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ForgetSmartHomeAppliances = {
  type t
  type request = {
    @ocaml.doc("<p>The room that the appliances are associated with.</p>") @as("RoomArn")
    roomArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "ForgetSmartHomeAppliancesCommand"
  let make = (~roomArn, ()) => new({roomArn: roomArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateSkillGroupFromRoom = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the room from which the skill group is to be disassociated.
         Required.</p>")
    @as("RoomArn")
    roomArn: option<arn>,
    @ocaml.doc("<p>The ARN of the skill group to disassociate from a room. Required.</p>")
    @as("SkillGroupArn")
    skillGroupArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "DisassociateSkillGroupFromRoomCommand"
  let make = (~roomArn=?, ~skillGroupArn=?, ()) =>
    new({roomArn: roomArn, skillGroupArn: skillGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateSkillFromUsers = {
  type t
  type request = {
    @ocaml.doc("<p> The private skill ID you want to make unavailable for enrolled users.</p>")
    @as("SkillId")
    skillId: skillId,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "DisassociateSkillFromUsersCommand"
  let make = (~skillId, ()) => new({skillId: skillId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateSkillFromSkillGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of a skill group to associate to a skill.</p>") @as("SkillId")
    skillId: skillId,
    @ocaml.doc("<p>The unique identifier of a skill. Required.</p>") @as("SkillGroupArn")
    skillGroupArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "DisassociateSkillFromSkillGroupCommand"
  let make = (~skillId, ~skillGroupArn=?, ()) =>
    new({skillId: skillId, skillGroupArn: skillGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateDeviceFromRoom = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the device to disassociate from a room. Required.</p>")
    @as("DeviceArn")
    deviceArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "DisassociateDeviceFromRoomCommand"
  let make = (~deviceArn=?, ()) => new({deviceArn: deviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateContactFromAddressBook = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the address from which to disassociate the contact.</p>")
    @as("AddressBookArn")
    addressBookArn: arn,
    @ocaml.doc("<p>The ARN of the contact to disassociate from an address book.</p>")
    @as("ContactArn")
    contactArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "DisassociateContactFromAddressBookCommand"
  let make = (~addressBookArn, ~contactArn, ()) =>
    new({addressBookArn: addressBookArn, contactArn: contactArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteUser = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the user's enrollment in the organization. Required.</p>")
    @as("EnrollmentId")
    enrollmentId: enrollmentId,
    @ocaml.doc("<p>The ARN of the user to delete in the organization. Required.</p>") @as("UserArn")
    userArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteUserCommand"
  let make = (~enrollmentId, ~userArn=?, ()) => new({enrollmentId: enrollmentId, userArn: userArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSkillGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the skill group to delete. Required.</p>") @as("SkillGroupArn")
    skillGroupArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteSkillGroupCommand"
  let make = (~skillGroupArn=?, ()) => new({skillGroupArn: skillGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSkillAuthorization = {
  type t
  type request = {
    @ocaml.doc("<p>The room that the skill is authorized for.</p>") @as("RoomArn")
    roomArn: option<arn>,
    @ocaml.doc("<p>The unique identifier of a skill.</p>") @as("SkillId") skillId: skillId,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteSkillAuthorizationCommand"
  let make = (~skillId, ~roomArn=?, ()) => new({roomArn: roomArn, skillId: skillId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRoomSkillParameter = {
  type t
  type request = {
    @ocaml.doc("<p>The room skill parameter key for which to remove details.</p>")
    @as("ParameterKey")
    parameterKey: roomSkillParameterKey,
    @ocaml.doc("<p>The ID of the skill from which to remove the room skill parameter details.</p>")
    @as("SkillId")
    skillId: skillId,
    @ocaml.doc("<p>The ARN of the room from which to remove the room skill parameter details.</p>")
    @as("RoomArn")
    roomArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteRoomSkillParameterCommand"
  let make = (~parameterKey, ~skillId, ~roomArn=?, ()) =>
    new({parameterKey: parameterKey, skillId: skillId, roomArn: roomArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRoom = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the room to delete. Required.</p>") @as("RoomArn")
    roomArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteRoomCommand"
  let make = (~roomArn=?, ()) => new({roomArn: roomArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the room profile to delete. Required.</p>") @as("ProfileArn")
    profileArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteProfileCommand"
  let make = (~profileArn=?, ()) => new({profileArn: profileArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteNetworkProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the network profile associated with a device.</p>")
    @as("NetworkProfileArn")
    networkProfileArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteNetworkProfileCommand"
  let make = (~networkProfileArn, ()) => new({networkProfileArn: networkProfileArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteGatewayGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the gateway group to delete.</p>") @as("GatewayGroupArn")
    gatewayGroupArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteGatewayGroupCommand"
  let make = (~gatewayGroupArn, ()) => new({gatewayGroupArn: gatewayGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDeviceUsageData = {
  type t
  type request = {
    @ocaml.doc("<p>The type of usage data to delete.</p>") @as("DeviceUsageType")
    deviceUsageType: deviceUsageType,
    @ocaml.doc("<p>The ARN of the device.</p>") @as("DeviceArn") deviceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteDeviceUsageDataCommand"
  let make = (~deviceUsageType, ~deviceArn, ()) =>
    new({deviceUsageType: deviceUsageType, deviceArn: deviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the device for which to request details.</p>") @as("DeviceArn")
    deviceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteDeviceCommand"
  let make = (~deviceArn, ()) => new({deviceArn: deviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteContact = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the contact to delete.</p>") @as("ContactArn") contactArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteContactCommand"
  let make = (~contactArn, ()) => new({contactArn: contactArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteConferenceProvider = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the conference provider.</p>") @as("ConferenceProviderArn")
    conferenceProviderArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteConferenceProviderCommand"
  let make = (~conferenceProviderArn, ()) => new({conferenceProviderArn: conferenceProviderArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBusinessReportSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the business report schedule.</p>") @as("ScheduleArn")
    scheduleArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "DeleteBusinessReportScheduleCommand"
  let make = (~scheduleArn, ()) => new({scheduleArn: scheduleArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAddressBook = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the address book to delete.</p>") @as("AddressBookArn")
    addressBookArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteAddressBookCommand"
  let make = (~addressBookArn, ()) => new({addressBookArn: addressBookArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateSkillWithUsers = {
  type t
  type request = {
    @ocaml.doc("<p>The private skill ID you want to make available to enrolled users.</p>")
    @as("SkillId")
    skillId: skillId,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "AssociateSkillWithUsersCommand"
  let make = (~skillId, ()) => new({skillId: skillId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateSkillWithSkillGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the skill.</p>") @as("SkillId") skillId: skillId,
    @ocaml.doc("<p>The ARN of the skill group to associate the skill to. Required.</p>")
    @as("SkillGroupArn")
    skillGroupArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "AssociateSkillWithSkillGroupCommand"
  let make = (~skillId, ~skillGroupArn=?, ()) =>
    new({skillId: skillId, skillGroupArn: skillGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateSkillGroupWithRoom = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the room with which to associate the skill group. Required.</p>")
    @as("RoomArn")
    roomArn: option<arn>,
    @ocaml.doc("<p>The ARN of the skill group to associate with a room. Required.</p>")
    @as("SkillGroupArn")
    skillGroupArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "AssociateSkillGroupWithRoomCommand"
  let make = (~roomArn=?, ~skillGroupArn=?, ()) =>
    new({roomArn: roomArn, skillGroupArn: skillGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateDeviceWithRoom = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the room with which to associate the device. Required.</p>")
    @as("RoomArn")
    roomArn: option<arn>,
    @ocaml.doc("<p>The ARN of the device to associate to a room. Required.</p>") @as("DeviceArn")
    deviceArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "AssociateDeviceWithRoomCommand"
  let make = (~roomArn=?, ~deviceArn=?, ()) => new({roomArn: roomArn, deviceArn: deviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateDeviceWithNetworkProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the network profile to associate with a device.</p>")
    @as("NetworkProfileArn")
    networkProfileArn: arn,
    @ocaml.doc("<p>The device ARN.</p>") @as("DeviceArn") deviceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "AssociateDeviceWithNetworkProfileCommand"
  let make = (~networkProfileArn, ~deviceArn, ()) =>
    new({networkProfileArn: networkProfileArn, deviceArn: deviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateContactWithAddressBook = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the address book with which to associate the contact.</p>")
    @as("AddressBookArn")
    addressBookArn: arn,
    @ocaml.doc("<p>The ARN of the contact to associate with an address book.</p>") @as("ContactArn")
    contactArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "AssociateContactWithAddressBookCommand"
  let make = (~addressBookArn, ~contactArn, ()) =>
    new({addressBookArn: addressBookArn, contactArn: contactArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ApproveSkill = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the skill.</p>") @as("SkillId") skillId: skillId,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ApproveSkillCommand"
  let make = (~skillId, ()) => new({skillId: skillId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateNetworkProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The root certificate(s) of your authentication server that will be installed on your
         devices and used to trust your authentication server during EAP negotiation. </p>")
    @as("TrustAnchors")
    trustAnchors: option<trustAnchorList>,
    @ocaml.doc("<p>The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager
         (ACM). This is used to issue certificates to the devices. </p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: option<arn>,
    @ocaml.doc("<p>The next, or subsequent, password of the Wi-Fi network. This password is asynchronously
         transmitted to the device and is used when the password of the network changes to
         NextPassword. </p>")
    @as("NextPassword")
    nextPassword: option<nextWiFiPassword>,
    @ocaml.doc("<p>The current password of the Wi-Fi network.</p>") @as("CurrentPassword")
    currentPassword: option<currentWiFiPassword>,
    @ocaml.doc("<p>Detailed information about a device's network profile.</p>") @as("Description")
    description: option<networkProfileDescription>,
    @ocaml.doc("<p>The name of the network profile associated with a device.</p>")
    @as("NetworkProfileName")
    networkProfileName: option<networkProfileName>,
    @ocaml.doc("<p>The ARN of the network profile associated with a device.</p>")
    @as("NetworkProfileArn")
    networkProfileArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateNetworkProfileCommand"
  let make = (
    ~networkProfileArn,
    ~trustAnchors=?,
    ~certificateAuthorityArn=?,
    ~nextPassword=?,
    ~currentPassword=?,
    ~description=?,
    ~networkProfileName=?,
    (),
  ) =>
    new({
      trustAnchors: trustAnchors,
      certificateAuthorityArn: certificateAuthorityArn,
      nextPassword: nextPassword,
      currentPassword: currentPassword,
      description: description,
      networkProfileName: networkProfileName,
      networkProfileArn: networkProfileArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateConferenceProvider = {
  type t
  type request = {
    @ocaml.doc("<p>The meeting settings for the conference provider.</p>") @as("MeetingSetting")
    meetingSetting: meetingSetting,
    @ocaml.doc("<p>The information for PSTN conferencing.</p>") @as("PSTNDialIn")
    pstndialIn: option<pstndialIn>,
    @ocaml.doc("<p>The IP endpoint and protocol for calling.</p>") @as("IPDialIn")
    ipdialIn: option<ipdialIn>,
    @ocaml.doc("<p>The type of the conference provider.</p>") @as("ConferenceProviderType")
    conferenceProviderType: conferenceProviderType,
    @ocaml.doc("<p>The ARN of the conference provider.</p>") @as("ConferenceProviderArn")
    conferenceProviderArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateConferenceProviderCommand"
  let make = (
    ~meetingSetting,
    ~conferenceProviderType,
    ~conferenceProviderArn,
    ~pstndialIn=?,
    ~ipdialIn=?,
    (),
  ) =>
    new({
      meetingSetting: meetingSetting,
      pstndialIn: pstndialIn,
      ipdialIn: ipdialIn,
      conferenceProviderType: conferenceProviderType,
      conferenceProviderArn: conferenceProviderArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateBusinessReportSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>The recurrence of the reports.</p>") @as("Recurrence")
    recurrence: option<businessReportRecurrence>,
    @ocaml.doc("<p>The name identifier of the schedule.</p>") @as("ScheduleName")
    scheduleName: option<businessReportScheduleName>,
    @ocaml.doc("<p>The format of the generated report (individual CSV files or zipped files of
         individual files).</p>")
    @as("Format")
    format: option<businessReportFormat>,
    @ocaml.doc("<p>The S3 key where the report is delivered.</p>") @as("S3KeyPrefix")
    s3KeyPrefix: option<s3KeyPrefix>,
    @ocaml.doc("<p>The S3 location of the output reports.</p>") @as("S3BucketName")
    s3BucketName: option<customerS3BucketName>,
    @ocaml.doc("<p>The ARN of the business report schedule.</p>") @as("ScheduleArn")
    scheduleArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "UpdateBusinessReportScheduleCommand"
  let make = (
    ~scheduleArn,
    ~recurrence=?,
    ~scheduleName=?,
    ~format=?,
    ~s3KeyPrefix=?,
    ~s3BucketName=?,
    (),
  ) =>
    new({
      recurrence: recurrence,
      scheduleName: scheduleName,
      format: format,
      s3KeyPrefix: s3KeyPrefix,
      s3BucketName: s3BucketName,
      scheduleArn: scheduleArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be removed from the specified resource. Do not provide system tags.
         Required. </p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the resource from which to remove metadata tags. Required. </p>")
    @as("Arn")
    arn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~arn, ()) => new({tagKeys: tagKeys, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartDeviceSync = {
  type t
  type request = {
    @ocaml.doc("<p>Request structure to start the device sync. Required.</p>") @as("Features")
    features: features,
    @ocaml.doc("<p>The ARN of the device to sync. Required.</p>") @as("DeviceArn")
    deviceArn: option<arn>,
    @ocaml.doc("<p>The ARN of the room with which the device to sync is associated. Required.</p>")
    @as("RoomArn")
    roomArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "StartDeviceSyncCommand"
  let make = (~features, ~deviceArn=?, ~roomArn=?, ()) =>
    new({features: features, deviceArn: deviceArn, roomArn: roomArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutSkillAuthorization = {
  type t
  type request = {
    @ocaml.doc("<p>The room that the skill is authorized for.</p>") @as("RoomArn")
    roomArn: option<arn>,
    @ocaml.doc("<p>The unique identifier of a skill.</p>") @as("SkillId") skillId: skillId,
    @ocaml.doc("<p>The authorization result specific to OAUTH code grant output. \"Code” must be
         populated in the AuthorizationResult map to establish the authorization.</p>")
    @as("AuthorizationResult")
    authorizationResult: authorizationResult,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "PutSkillAuthorizationCommand"
  let make = (~skillId, ~authorizationResult, ~roomArn=?, ()) =>
    new({roomArn: roomArn, skillId: skillId, authorizationResult: authorizationResult})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutRoomSkillParameter = {
  type t
  type request = {
    @ocaml.doc("<p>The updated room skill parameter. Required.</p>") @as("RoomSkillParameter")
    roomSkillParameter: roomSkillParameter,
    @ocaml.doc("<p>The ARN of the skill associated with the room skill parameter. Required.</p>")
    @as("SkillId")
    skillId: skillId,
    @ocaml.doc("<p>The ARN of the room associated with the room skill parameter. Required.</p>")
    @as("RoomArn")
    roomArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "PutRoomSkillParameterCommand"
  let make = (~roomSkillParameter, ~skillId, ~roomArn=?, ()) =>
    new({roomSkillParameter: roomSkillParameter, skillId: skillId, roomArn: roomArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutInvitationConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The list of private skill IDs that you want to recommend to the user to enable in the
         invitation.</p>")
    @as("PrivateSkillIds")
    privateSkillIds: option<shortSkillIdList>,
    @ocaml.doc("<p>The email ID of the organization or individual contact that the enrolled user can use.
      </p>")
    @as("ContactEmail")
    contactEmail: option<email>,
    @ocaml.doc("<p>The name of the organization sending the enrollment invite to a user.</p>")
    @as("OrganizationName")
    organizationName: organizationName,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "PutInvitationConfigurationCommand"
  let make = (~organizationName, ~privateSkillIds=?, ~contactEmail=?, ()) =>
    new({
      privateSkillIds: privateSkillIds,
      contactEmail: contactEmail,
      organizationName: organizationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutConferencePreference = {
  type t
  type request = {
    @ocaml.doc("<p>The conference preference of a specific conference provider.</p>")
    @as("ConferencePreference")
    conferencePreference: conferencePreference,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "PutConferencePreferenceCommand"
  let make = (~conferencePreference, ()) => new({conferencePreference: conferencePreference})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetSkillGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the skill group for which to get details. Required.</p>")
    @as("SkillGroupArn")
    skillGroupArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>The details of the skill group requested. Required.</p>") @as("SkillGroup")
    skillGroup: option<skillGroup>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetSkillGroupCommand"
  let make = (~skillGroupArn=?, ()) => new({skillGroupArn: skillGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRoomSkillParameter = {
  type t
  type request = {
    @ocaml.doc("<p>The room skill parameter key for which to get details. Required.</p>")
    @as("ParameterKey")
    parameterKey: roomSkillParameterKey,
    @ocaml.doc("<p>The ARN of the skill from which to get the room skill parameter details.
         Required.</p>")
    @as("SkillId")
    skillId: skillId,
    @ocaml.doc("<p>The ARN of the room from which to get the room skill parameter details. </p>")
    @as("RoomArn")
    roomArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>The details of the room skill parameter requested. Required.</p>")
    @as("RoomSkillParameter")
    roomSkillParameter: option<roomSkillParameter>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetRoomSkillParameterCommand"
  let make = (~parameterKey, ~skillId, ~roomArn=?, ()) =>
    new({parameterKey: parameterKey, skillId: skillId, roomArn: roomArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRoom = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the room for which to request details. Required.</p>") @as("RoomArn")
    roomArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>The details of the room requested.</p>") @as("Room") room: option<room>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetRoomCommand"
  let make = (~roomArn=?, ()) => new({roomArn: roomArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInvitationConfiguration = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The list of private skill IDs that you want to recommend to the user to enable in the
         invitation.</p>")
    @as("PrivateSkillIds")
    privateSkillIds: option<shortSkillIdList>,
    @ocaml.doc("<p>The email ID of the organization or individual contact that the enrolled user can use.
      </p>")
    @as("ContactEmail")
    contactEmail: option<email>,
    @ocaml.doc("<p>The name of the organization sending the enrollment invite to a user.</p>")
    @as("OrganizationName")
    organizationName: option<organizationName>,
  }
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "GetInvitationConfigurationCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGatewayGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the gateway group to get.</p>") @as("GatewayGroupArn")
    gatewayGroupArn: arn,
  }
  type response = {@as("GatewayGroup") gatewayGroup: option<gatewayGroup>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetGatewayGroupCommand"
  let make = (~gatewayGroupArn, ()) => new({gatewayGroupArn: gatewayGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the gateway to get.</p>") @as("GatewayArn") gatewayArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The details of the gateway.</p>") @as("Gateway") gateway: option<gateway>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetGatewayCommand"
  let make = (~gatewayArn, ()) => new({gatewayArn: gatewayArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConferencePreference = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The conference preference.</p>") @as("Preference")
    preference: option<conferencePreference>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetConferencePreferenceCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAddressBook = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the address book for which to request details.</p>")
    @as("AddressBookArn")
    addressBookArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The details of the requested address book.</p>") @as("AddressBook")
    addressBook: option<addressBook>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetAddressBookCommand"
  let make = (~addressBookArn, ()) => new({addressBookArn: addressBookArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateContact = {
  type t
  type request = {
    @ocaml.doc("<p>The list of SIP addresses for the contact.</p>") @as("SipAddresses")
    sipAddresses: option<sipAddressList>,
    @ocaml.doc("<p>The list of phone numbers for the contact.</p>") @as("PhoneNumbers")
    phoneNumbers: option<phoneNumberList>,
    @ocaml.doc("<p>The updated phone number of the contact. The phone number type defaults to WORK. You
         can either specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers,
         which lets you specify the phone number type and multiple numbers.</p>")
    @as("PhoneNumber")
    phoneNumber: option<rawPhoneNumber>,
    @ocaml.doc("<p>The updated last name of the contact.</p>") @as("LastName")
    lastName: option<contactName>,
    @ocaml.doc("<p>The updated first name of the contact.</p>") @as("FirstName")
    firstName: option<contactName>,
    @ocaml.doc("<p>The updated display name of the contact.</p>") @as("DisplayName")
    displayName: option<contactName>,
    @ocaml.doc("<p>The ARN of the contact to update.</p>") @as("ContactArn") contactArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateContactCommand"
  let make = (
    ~contactArn,
    ~sipAddresses=?,
    ~phoneNumbers=?,
    ~phoneNumber=?,
    ~lastName=?,
    ~firstName=?,
    ~displayName=?,
    (),
  ) =>
    new({
      sipAddresses: sipAddresses,
      phoneNumbers: phoneNumbers,
      phoneNumber: phoneNumber,
      lastName: lastName,
      firstName: firstName,
      displayName: displayName,
      contactArn: contactArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be added to the specified resource. Do not provide system tags. Required.
      </p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The ARN of the resource to which to add metadata tags. Required. </p>")
    @as("Arn")
    arn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~arn, ()) => new({tags: tags, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ResolveRoom = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the skill that was requested. Required.</p>") @as("SkillId")
    skillId: skillId,
    @ocaml.doc("<p>The ARN of the user. Required.</p>") @as("UserId") userId: userId,
  }
  type response = {
    @ocaml.doc("<p>Response to get the room profile request. Required.</p>")
    @as("RoomSkillParameters")
    roomSkillParameters: option<roomSkillParameters>,
    @ocaml.doc("<p>The name of the room from which the skill request was invoked.</p>")
    @as("RoomName")
    roomName: option<roomName>,
    @ocaml.doc("<p>The ARN of the room from which the skill request was invoked.</p>")
    @as("RoomArn")
    roomArn: option<arn>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ResolveRoomCommand"
  let make = (~skillId, ~userId, ()) => new({skillId: skillId, userId: userId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterAVSDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be added to the specified resource. Do not provide system tags.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the room with which to associate your AVS device.</p>"
    )
    @as("RoomArn")
    roomArn: option<arn>,
    @ocaml.doc("<p>The device type ID for your AVS device generated by Amazon when the OEM creates a new
         product on Amazon's Developer Console.</p>")
    @as("AmazonId")
    amazonId: amazonId,
    @ocaml.doc("<p>The key generated by the OEM that uniquely identifies a specified instance of your
         AVS device.</p>")
    @as("DeviceSerialNumber")
    deviceSerialNumber: option<deviceSerialNumberForAVS>,
    @ocaml.doc("<p>The product ID used to identify your AVS device during authorization.</p>")
    @as("ProductId")
    productId: productId,
    @ocaml.doc("<p>The code that is obtained after your AVS device has made a POST request to LWA as a
         part of the Device Authorization Request component of the OAuth code-based linking
         specification.</p>")
    @as("UserCode")
    userCode: userCode,
    @ocaml.doc("<p>The client ID of the OEM used for code-based linking authorization on an AVS
         device.</p>")
    @as("ClientId")
    clientId: clientId,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the device.</p>") @as("DeviceArn") deviceArn: option<arn>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "RegisterAVSDeviceCommand"
  let make = (
    ~amazonId,
    ~productId,
    ~userCode,
    ~clientId,
    ~tags=?,
    ~roomArn=?,
    ~deviceSerialNumber=?,
    (),
  ) =>
    new({
      tags: tags,
      roomArn: roomArn,
      amazonId: amazonId,
      deviceSerialNumber: deviceSerialNumber,
      productId: productId,
      userCode: userCode,
      clientId: clientId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTags = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than
         the specified <code>MaxResults</code> value, a token is included in the response so that
         the remaining results can be retrieved.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
         results from this action. If this parameter is specified, the response includes only
         results beyond the token, up to the value specified by <code>MaxResults</code>. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN of the specified resource for which to list tags.</p>") @as("Arn")
    arn: arn,
  }
  type response = {
    @ocaml.doc("<p>The token returned to indicate that there is more data available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The tags requested for the specified resource.</p>") @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ListTagsCommand"
  let make = (~arn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSmartHomeAppliances = {
  type t
  type request = {
    @ocaml.doc("<p>The tokens used for pagination.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of appliances to be returned, per paginated calls.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The room that the appliances are associated with.</p>") @as("RoomArn")
    roomArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The tokens used for pagination.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The smart home appliances.</p>") @as("SmartHomeAppliances")
    smartHomeAppliances: option<smartHomeApplianceList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ListSmartHomeAppliancesCommand"
  let make = (~roomArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, roomArn: roomArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSkillsStoreCategories = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of categories returned, per paginated calls.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The tokens used for pagination.</p>") @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The tokens used for pagination.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of categories.</p>") @as("CategoryList")
    categoryList: option<categoryList>,
  }
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "ListSkillsStoreCategoriesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSkills = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than
         the specified <code>MaxResults</code> value, a token is included in the response so that
         the remaining results can be retrieved.</p>")
    @as("MaxResults")
    maxResults: option<skillListMaxResults>,
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
         results from this action. If this parameter is specified, the response includes only
         results beyond the token, up to the value specified by <code>MaxResults</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Whether the skill is publicly available or is a private skill.</p>")
    @as("SkillType")
    skillType: option<skillTypeFilter>,
    @ocaml.doc("<p>Whether the skill is enabled under the user's account.</p>")
    @as("EnablementType")
    enablementType: option<enablementTypeFilter>,
    @ocaml.doc("<p>The ARN of the skill group for which to list enabled skills.</p>")
    @as("SkillGroupArn")
    skillGroupArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>The token returned to indicate that there is more data available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of enabled skills requested. Required.</p>") @as("SkillSummaries")
    skillSummaries: option<skillSummaryList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ListSkillsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~skillType=?, ~enablementType=?, ~skillGroupArn=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      skillType: skillType,
      enablementType: enablementType,
      skillGroupArn: skillGroupArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGateways = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of gateway summaries to return. The default is 50.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token used to paginate though multiple pages of gateway summaries.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The gateway group ARN for which to list gateways.</p>") @as("GatewayGroupArn")
    gatewayGroupArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>The token used to paginate though multiple pages of gateway summaries.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The gateways in the list.</p>") @as("Gateways")
    gateways: option<gatewaySummaries>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ListGatewaysCommand"
  let make = (~maxResults=?, ~nextToken=?, ~gatewayGroupArn=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, gatewayGroupArn: gatewayGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGatewayGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of gateway group summaries to return. The default is 50.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token used to paginate though multiple pages of gateway group summaries.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token used to paginate though multiple pages of gateway group summaries.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The gateway groups in the list.</p>") @as("GatewayGroups")
    gatewayGroups: option<gatewayGroupSummaries>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ListGatewayGroupsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeviceEvents = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to include in the response. The default value is 50. If
         more results exist than the specified MaxResults value, a token is included in the response
         so that the remaining results can be retrieved. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
         results from this action. If this parameter is specified, the response only includes
         results beyond the token, up to the value specified by MaxResults. When the end of results
         is reached, the response has a value of null.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The event type to filter device events. If EventType isn't specified, this returns a
         list of all device events in reverse chronological order. If EventType is specified, this
         returns a list of device events for that EventType in reverse chronological order.
      </p>")
    @as("EventType")
    eventType: option<deviceEventType>,
    @ocaml.doc("<p>The ARN of a device.</p>") @as("DeviceArn") deviceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The token returned to indicate that there is more data available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The device events requested for the device ARN.</p>") @as("DeviceEvents")
    deviceEvents: option<deviceEventList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ListDeviceEventsCommand"
  let make = (~deviceArn, ~maxResults=?, ~nextToken=?, ~eventType=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, eventType: eventType, deviceArn: deviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetNetworkProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the network profile associated with a device.</p>")
    @as("NetworkProfileArn")
    networkProfileArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The network profile associated with a device.</p>") @as("NetworkProfile")
    networkProfile: option<networkProfile>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetNetworkProfileCommand"
  let make = (~networkProfileArn, ()) => new({networkProfileArn: networkProfileArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConferenceProvider = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the newly created conference provider.</p>")
    @as("ConferenceProviderArn")
    conferenceProviderArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The conference provider.</p>") @as("ConferenceProvider")
    conferenceProvider: option<conferenceProvider>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetConferenceProviderCommand"
  let make = (~conferenceProviderArn, ()) => new({conferenceProviderArn: conferenceProviderArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUser = {
  type t
  type request = {
    @ocaml.doc("<p>The tags for the user.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>A unique, user-specified identifier for this request that ensures idempotency.
      </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The email address for the user.</p>") @as("Email") email: option<email>,
    @ocaml.doc("<p>The last name for the user.</p>") @as("LastName")
    lastName: option<user_LastName>,
    @ocaml.doc("<p>The first name for the user.</p>") @as("FirstName")
    firstName: option<user_FirstName>,
    @ocaml.doc("<p>The ARN for the user.</p>") @as("UserId") userId: user_UserId,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the newly created user in the response.</p>") @as("UserArn")
    userArn: option<arn>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateUserCommand"
  let make = (~userId, ~tags=?, ~clientRequestToken=?, ~email=?, ~lastName=?, ~firstName=?, ()) =>
    new({
      tags: tags,
      clientRequestToken: clientRequestToken,
      email: email,
      lastName: lastName,
      firstName: firstName,
      userId: userId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSkillGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The tags for the skill group.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>A unique, user-specified identifier for this request that ensures idempotency.
      </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The description for the skill group.</p>") @as("Description")
    description: option<skillGroupDescription>,
    @ocaml.doc("<p>The name for the skill group.</p>") @as("SkillGroupName")
    skillGroupName: skillGroupName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the newly created skill group in the response.</p>")
    @as("SkillGroupArn")
    skillGroupArn: option<arn>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateSkillGroupCommand"
  let make = (~skillGroupName, ~tags=?, ~clientRequestToken=?, ~description=?, ()) =>
    new({
      tags: tags,
      clientRequestToken: clientRequestToken,
      description: description,
      skillGroupName: skillGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRoom = {
  type t
  type request = {
    @ocaml.doc("<p>The tags for the room.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>A unique, user-specified identifier for this request that ensures idempotency.
      </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The calendar ARN for the room.</p>") @as("ProviderCalendarId")
    providerCalendarId: option<providerCalendarId>,
    @ocaml.doc("<p>The profile ARN for the room. This is required.</p>") @as("ProfileArn")
    profileArn: option<arn>,
    @ocaml.doc("<p>The description for the room.</p>") @as("Description")
    description: option<roomDescription>,
    @ocaml.doc("<p>The name for the room.</p>") @as("RoomName") roomName: roomName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the newly created room in the response.</p>") @as("RoomArn")
    roomArn: option<arn>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateRoomCommand"
  let make = (
    ~roomName,
    ~tags=?,
    ~clientRequestToken=?,
    ~providerCalendarId=?,
    ~profileArn=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      clientRequestToken: clientRequestToken,
      providerCalendarId: providerCalendarId,
      profileArn: profileArn,
      description: description,
      roomName: roomName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNetworkProfile = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The tags to be added to the specified resource. Do not provide system tags. </p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>The root certificates of your authentication server that is installed on your devices
         and used to trust your authentication server during EAP negotiation. </p>")
    @as("TrustAnchors")
    trustAnchors: option<trustAnchorList>,
    @ocaml.doc("<p>The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager
         (ACM). This is used to issue certificates to the devices. </p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: option<arn>,
    @ocaml.doc("<p>The next, or subsequent, password of the Wi-Fi network. This password is asynchronously
         transmitted to the device and is used when the password of the network changes to
         NextPassword. </p>")
    @as("NextPassword")
    nextPassword: option<nextWiFiPassword>,
    @ocaml.doc("<p>The current password of the Wi-Fi network.</p>") @as("CurrentPassword")
    currentPassword: option<currentWiFiPassword>,
    @ocaml.doc("<p>The authentication standard that is used in the EAP framework. Currently, EAP_TLS is
         supported.</p>")
    @as("EapMethod")
    eapMethod: option<networkEapMethod>,
    @ocaml.doc("<p>The security type of the Wi-Fi network. This can be WPA2_ENTERPRISE, WPA2_PSK, WPA_PSK,
         WEP, or OPEN.</p>")
    @as("SecurityType")
    securityType: networkSecurityType,
    @ocaml.doc("<p>The SSID of the Wi-Fi network.</p>") @as("Ssid") ssid: networkSsid,
    @ocaml.doc("<p>Detailed information about a device's network profile.</p>") @as("Description")
    description: option<networkProfileDescription>,
    @ocaml.doc("<p>The name of the network profile associated with a device.</p>")
    @as("NetworkProfileName")
    networkProfileName: networkProfileName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the network profile associated with a device.</p>")
    @as("NetworkProfileArn")
    networkProfileArn: option<arn>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateNetworkProfileCommand"
  let make = (
    ~clientRequestToken,
    ~securityType,
    ~ssid,
    ~networkProfileName,
    ~tags=?,
    ~trustAnchors=?,
    ~certificateAuthorityArn=?,
    ~nextPassword=?,
    ~currentPassword=?,
    ~eapMethod=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      clientRequestToken: clientRequestToken,
      trustAnchors: trustAnchors,
      certificateAuthorityArn: certificateAuthorityArn,
      nextPassword: nextPassword,
      currentPassword: currentPassword,
      eapMethod: eapMethod,
      securityType: securityType,
      ssid: ssid,
      description: description,
      networkProfileName: networkProfileName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGatewayGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be added to the specified resource. Do not provide system tags.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p> A unique, user-specified identifier for the request that ensures idempotency.</p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>The description of the gateway group.</p>") @as("Description")
    description: option<gatewayGroupDescription>,
    @ocaml.doc("<p>The name of the gateway group.</p>") @as("Name") name: gatewayGroupName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the created gateway group.</p>") @as("GatewayGroupArn")
    gatewayGroupArn: option<arn>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateGatewayGroupCommand"
  let make = (~clientRequestToken, ~name, ~tags=?, ~description=?, ()) =>
    new({tags: tags, clientRequestToken: clientRequestToken, description: description, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateContact = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be added to the specified resource. Do not provide system tags.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A unique, user-specified identifier for this request that ensures
         idempotency.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The list of SIP addresses for the contact.</p>") @as("SipAddresses")
    sipAddresses: option<sipAddressList>,
    @ocaml.doc("<p>The list of phone numbers for the contact.</p>") @as("PhoneNumbers")
    phoneNumbers: option<phoneNumberList>,
    @ocaml.doc("<p>The phone number of the contact in E.164 format. The phone number type defaults to
         WORK. You can specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers,
         which lets you specify the phone number type and multiple numbers.</p>")
    @as("PhoneNumber")
    phoneNumber: option<rawPhoneNumber>,
    @ocaml.doc("<p>The last name of the contact that is used to call the contact on the
         device.</p>")
    @as("LastName")
    lastName: option<contactName>,
    @ocaml.doc("<p>The first name of the contact that is used to call the contact on the
         device.</p>")
    @as("FirstName")
    firstName: contactName,
    @ocaml.doc("<p>The name of the contact to display on the console.</p>") @as("DisplayName")
    displayName: option<contactName>,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the newly created address book.</p>") @as("ContactArn")
    contactArn: option<arn>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateContactCommand"
  let make = (
    ~firstName,
    ~tags=?,
    ~clientRequestToken=?,
    ~sipAddresses=?,
    ~phoneNumbers=?,
    ~phoneNumber=?,
    ~lastName=?,
    ~displayName=?,
    (),
  ) =>
    new({
      tags: tags,
      clientRequestToken: clientRequestToken,
      sipAddresses: sipAddresses,
      phoneNumbers: phoneNumbers,
      phoneNumber: phoneNumber,
      lastName: lastName,
      firstName: firstName,
      displayName: displayName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConferenceProvider = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be added to the specified resource. Do not provide system tags.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The request token of the client.</p>") @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The meeting settings for the conference provider.</p>") @as("MeetingSetting")
    meetingSetting: meetingSetting,
    @ocaml.doc("<p>The information for PSTN conferencing.</p>") @as("PSTNDialIn")
    pstndialIn: option<pstndialIn>,
    @ocaml.doc("<p>The IP endpoint and protocol for calling.</p>") @as("IPDialIn")
    ipdialIn: option<ipdialIn>,
    @ocaml.doc("<p>Represents a type within a list of predefined types.</p>")
    @as("ConferenceProviderType")
    conferenceProviderType: conferenceProviderType,
    @ocaml.doc("<p>The name of the conference provider.</p>") @as("ConferenceProviderName")
    conferenceProviderName: conferenceProviderName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the newly-created conference provider.</p>")
    @as("ConferenceProviderArn")
    conferenceProviderArn: option<arn>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateConferenceProviderCommand"
  let make = (
    ~meetingSetting,
    ~conferenceProviderType,
    ~conferenceProviderName,
    ~tags=?,
    ~clientRequestToken=?,
    ~pstndialIn=?,
    ~ipdialIn=?,
    (),
  ) =>
    new({
      tags: tags,
      clientRequestToken: clientRequestToken,
      meetingSetting: meetingSetting,
      pstndialIn: pstndialIn,
      ipdialIn: ipdialIn,
      conferenceProviderType: conferenceProviderType,
      conferenceProviderName: conferenceProviderName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBusinessReportSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>The tags for the business report schedule.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The client request token.</p>") @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The recurrence of the reports. If this isn't specified, the report will only be
         delivered one time when the API is called. </p>")
    @as("Recurrence")
    recurrence: option<businessReportRecurrence>,
    @ocaml.doc("<p>The content range of the reports.</p>") @as("ContentRange")
    contentRange: businessReportContentRange,
    @ocaml.doc("<p>The format of the generated report (individual CSV files or zipped files of
         individual files).</p>")
    @as("Format")
    format: businessReportFormat,
    @ocaml.doc("<p>The S3 key where the report is delivered.</p>") @as("S3KeyPrefix")
    s3KeyPrefix: option<s3KeyPrefix>,
    @ocaml.doc("<p>The S3 bucket name of the output reports. If this isn't specified, the report can be
         retrieved from a download link by calling ListBusinessReportSchedule. </p>")
    @as("S3BucketName")
    s3BucketName: option<customerS3BucketName>,
    @ocaml.doc("<p>The name identifier of the schedule.</p>") @as("ScheduleName")
    scheduleName: option<businessReportScheduleName>,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the business report schedule.</p>") @as("ScheduleArn")
    scheduleArn: option<arn>,
  }
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "CreateBusinessReportScheduleCommand"
  let make = (
    ~contentRange,
    ~format,
    ~tags=?,
    ~clientRequestToken=?,
    ~recurrence=?,
    ~s3KeyPrefix=?,
    ~s3BucketName=?,
    ~scheduleName=?,
    (),
  ) =>
    new({
      tags: tags,
      clientRequestToken: clientRequestToken,
      recurrence: recurrence,
      contentRange: contentRange,
      format: format,
      s3KeyPrefix: s3KeyPrefix,
      s3BucketName: s3BucketName,
      scheduleName: scheduleName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAddressBook = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be added to the specified resource. Do not provide system tags.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A unique, user-specified identifier for the request that ensures
         idempotency.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The description of the address book.</p>") @as("Description")
    description: option<addressBookDescription>,
    @ocaml.doc("<p>The name of the address book.</p>") @as("Name") name: addressBookName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the newly created address book.</p>") @as("AddressBookArn")
    addressBookArn: option<arn>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateAddressBookCommand"
  let make = (~name, ~tags=?, ~clientRequestToken=?, ~description=?, ()) =>
    new({tags: tags, clientRequestToken: clientRequestToken, description: description, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The updated meeting room settings of a room profile.</p>")
    @as("MeetingRoomConfiguration")
    meetingRoomConfiguration: option<updateMeetingRoomConfiguration>,
    @ocaml.doc("<p>Whether data retention of the profile is enabled.</p>") @as("DataRetentionOptIn")
    dataRetentionOptIn: option<boolean_>,
    @ocaml.doc("<p>Whether the PSTN setting of the room profile is enabled.</p>") @as("PSTNEnabled")
    pstnenabled: option<boolean_>,
    @ocaml.doc("<p>The updated maximum volume limit for the room profile.</p>")
    @as("MaxVolumeLimit")
    maxVolumeLimit: option<maxVolumeLimit>,
    @ocaml.doc("<p>Whether the setup mode of the profile is enabled.</p>") @as("SetupModeDisabled")
    setupModeDisabled: option<boolean_>,
    @ocaml.doc(
      "<p>The updated locale for the room profile. (This is currently only available to a limited preview audience.)</p>"
    )
    @as("Locale")
    locale: option<deviceLocale>,
    @ocaml.doc("<p>The updated wake word for the room profile.</p>") @as("WakeWord")
    wakeWord: option<wakeWord>,
    @ocaml.doc("<p>The updated temperature unit for the room profile.</p>") @as("TemperatureUnit")
    temperatureUnit: option<temperatureUnit>,
    @ocaml.doc("<p>The updated distance unit for the room profile.</p>") @as("DistanceUnit")
    distanceUnit: option<distanceUnit>,
    @ocaml.doc("<p>The updated address for the room profile.</p>") @as("Address")
    address: option<address>,
    @ocaml.doc("<p>The updated timezone for the room profile.</p>") @as("Timezone")
    timezone: option<timezone>,
    @ocaml.doc("<p>Sets the profile as default if selected. If this is missing, no update is done to the
         default status.</p>")
    @as("IsDefault")
    isDefault: option<boolean_>,
    @ocaml.doc("<p>The updated name for the room profile.</p>") @as("ProfileName")
    profileName: option<profileName>,
    @ocaml.doc("<p>The ARN of the room profile to update. Required.</p>") @as("ProfileArn")
    profileArn: option<arn>,
  }
  type response = {.}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateProfileCommand"
  let make = (
    ~meetingRoomConfiguration=?,
    ~dataRetentionOptIn=?,
    ~pstnenabled=?,
    ~maxVolumeLimit=?,
    ~setupModeDisabled=?,
    ~locale=?,
    ~wakeWord=?,
    ~temperatureUnit=?,
    ~distanceUnit=?,
    ~address=?,
    ~timezone=?,
    ~isDefault=?,
    ~profileName=?,
    ~profileArn=?,
    (),
  ) =>
    new({
      meetingRoomConfiguration: meetingRoomConfiguration,
      dataRetentionOptIn: dataRetentionOptIn,
      pstnenabled: pstnenabled,
      maxVolumeLimit: maxVolumeLimit,
      setupModeDisabled: setupModeDisabled,
      locale: locale,
      wakeWord: wakeWord,
      temperatureUnit: temperatureUnit,
      distanceUnit: distanceUnit,
      address: address,
      timezone: timezone,
      isDefault: isDefault,
      profileName: profileName,
      profileArn: profileArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SendAnnouncement = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique, user-specified identifier for the request that ensures idempotency.</p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>The time to live for an announcement. Default is 300. If delivery doesn't occur within this time, the
         announcement is not delivered.</p>")
    @as("TimeToLiveInSeconds")
    timeToLiveInSeconds: option<timeToLiveInSeconds>,
    @ocaml.doc(
      "<p>The announcement content. This can contain only one of the three possible announcement types (text, SSML or audio).</p>"
    )
    @as("Content")
    content: content,
    @ocaml.doc(
      "<p>The filters to use to send an announcement to a specified list of rooms. The supported filter keys are RoomName, ProfileName, RoomArn, and ProfileArn. To send to all rooms, specify an empty RoomFilters list.</p>"
    )
    @as("RoomFilters")
    roomFilters: filterList,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the announcement.</p>") @as("AnnouncementArn")
    announcementArn: option<arn>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SendAnnouncementCommand"
  let make = (~clientRequestToken, ~content, ~roomFilters, ~timeToLiveInSeconds=?, ()) =>
    new({
      clientRequestToken: clientRequestToken,
      timeToLiveInSeconds: timeToLiveInSeconds,
      content: content,
      roomFilters: roomFilters,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchUsers = {
  type t
  type request = {
    @ocaml.doc("<p>The sort order to use in listing the filtered set of users. Required. Supported sort
         keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.</p>")
    @as("SortCriteria")
    sortCriteria: option<sortList>,
    @ocaml.doc("<p>The filters to use for listing a specific set of users. Required. Supported filter
         keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.</p>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than
         the specified <code>MaxResults</code> value, a token is included in the response so that
         the remaining results can be retrieved. Required.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
         results from this action. If this parameter is specified, the response includes only
         results beyond the token, up to the value specified by <code>MaxResults</code>.
         Required.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The total number of users returned.</p>") @as("TotalCount")
    totalCount: option<totalCount>,
    @ocaml.doc("<p>The token returned to indicate that there is more data available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The users that meet the specified set of filter criteria, in sort order.</p>")
    @as("Users")
    users: option<userDataList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SearchUsersCommand"
  let make = (~sortCriteria=?, ~filters=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      sortCriteria: sortCriteria,
      filters: filters,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchSkillGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The sort order to use in listing the specified set of skill groups. The supported
         sort key is SkillGroupName. </p>")
    @as("SortCriteria")
    sortCriteria: option<sortList>,
    @ocaml.doc("<p>The filters to use to list a specified set of skill groups. The supported filter key
         is SkillGroupName. </p>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than
         the specified <code>MaxResults</code> value, a token is included in the response so that
         the remaining results can be retrieved. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
         results from this action. If this parameter is specified, the response includes only
         results beyond the token, up to the value specified by <code>MaxResults</code>.
         Required.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The total number of skill groups returned.</p>") @as("TotalCount")
    totalCount: option<totalCount>,
    @ocaml.doc("<p>The token returned to indicate that there is more data available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The skill groups that meet the filter criteria, in sort order.</p>")
    @as("SkillGroups")
    skillGroups: option<skillGroupDataList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SearchSkillGroupsCommand"
  let make = (~sortCriteria=?, ~filters=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      sortCriteria: sortCriteria,
      filters: filters,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchRooms = {
  type t
  type request = {
    @ocaml.doc("<p>The sort order to use in listing the specified set of rooms. The supported sort keys
         are RoomName and ProfileName.</p>")
    @as("SortCriteria")
    sortCriteria: option<sortList>,
    @ocaml.doc("<p>The filters to use to list a specified set of rooms. The supported filter keys are
         RoomName and ProfileName.</p>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than
         the specified <code>MaxResults</code> value, a token is included in the response so that
         the remaining results can be retrieved. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
         results from this action. If this parameter is specified, the response includes only
         results beyond the token, up to the value specified by <code>MaxResults</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The total number of rooms returned.</p>") @as("TotalCount")
    totalCount: option<totalCount>,
    @ocaml.doc("<p>The token returned to indicate that there is more data available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The rooms that meet the specified set of filter criteria, in sort order.</p>")
    @as("Rooms")
    rooms: option<roomDataList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SearchRoomsCommand"
  let make = (~sortCriteria=?, ~filters=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      sortCriteria: sortCriteria,
      filters: filters,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>The sort order to use in listing the specified set of room profiles. Supported sort
         keys are ProfileName and Address.</p>")
    @as("SortCriteria")
    sortCriteria: option<sortList>,
    @ocaml.doc("<p>The filters to use to list a specified set of room profiles. Supported filter keys
         are ProfileName and Address. Required. </p>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than
         the specified <code>MaxResults</code> value, a token is included in the response so that
         the remaining results can be retrieved.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
         results from this action. If this parameter is specified, the response includes only
         results beyond the token, up to the value specified by <code>MaxResults</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The total number of room profiles returned.</p>") @as("TotalCount")
    totalCount: option<totalCount>,
    @ocaml.doc("<p>The token returned to indicate that there is more data available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The profiles that meet the specified set of filter criteria, in sort order.</p>")
    @as("Profiles")
    profiles: option<profileDataList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SearchProfilesCommand"
  let make = (~sortCriteria=?, ~filters=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      sortCriteria: sortCriteria,
      filters: filters,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchNetworkProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>The sort order to use to list the specified set of network profiles. Valid sort criteria
         includes NetworkProfileName, Ssid, and SecurityType.</p>")
    @as("SortCriteria")
    sortCriteria: option<sortList>,
    @ocaml.doc("<p>The filters to use to list a specified set of network profiles. Valid filters are
         NetworkProfileName, Ssid, and SecurityType.</p>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than the
         specified MaxResults value, a token is included in the response so that the remaining
         results can be retrieved. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
         results from this action. If this parameter is specified, the response includes only
         results beyond the token, up to the value specified by MaxResults. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The total number of network profiles returned.</p>") @as("TotalCount")
    totalCount: option<totalCount>,
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
         results from this action. If this parameter is specified, the response includes only
         results beyond the token, up to the value specified by MaxResults.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The network profiles that meet the specified set of filter criteria, in sort order. It
         is a list of NetworkProfileData objects. </p>")
    @as("NetworkProfiles")
    networkProfiles: option<networkProfileDataList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SearchNetworkProfilesCommand"
  let make = (~sortCriteria=?, ~filters=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      sortCriteria: sortCriteria,
      filters: filters,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchAddressBooks = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than
         the specified MaxResults value, a token is included in the response so that the remaining
         results can be retrieved.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
         results from this action. If this parameter is specified, the response only includes
         results beyond the token, up to the value specified by MaxResults.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The sort order to use in listing the specified set of address books. The supported
         sort key is AddressBookName.</p>")
    @as("SortCriteria")
    sortCriteria: option<sortList>,
    @ocaml.doc("<p>The filters to use to list a specified set of address books. The supported filter key
         is AddressBookName.</p>")
    @as("Filters")
    filters: option<filterList>,
  }
  type response = {
    @ocaml.doc("<p>The total number of address books returned.</p>") @as("TotalCount")
    totalCount: option<totalCount>,
    @ocaml.doc("<p>The token returned to indicate that there is more data available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The address books that meet the specified set of filter criteria, in sort
         order.</p>")
    @as("AddressBooks")
    addressBooks: option<addressBookDataList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SearchAddressBooksCommand"
  let make = (~maxResults=?, ~nextToken=?, ~sortCriteria=?, ~filters=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      sortCriteria: sortCriteria,
      filters: filters,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListConferenceProviders = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of conference providers to be returned, per paginated
         calls.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The tokens used for pagination.</p>") @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The tokens used for pagination.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The conference providers.</p>") @as("ConferenceProviders")
    conferenceProviders: option<conferenceProvidersList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ListConferenceProvidersCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContact = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the contact for which to request details.</p>") @as("ContactArn")
    contactArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The details of the requested contact.</p>") @as("Contact")
    contact: option<contact>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetContactCommand"
  let make = (~contactArn, ()) => new({contactArn: contactArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The tags for the profile.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The meeting room settings of a room profile.</p>")
    @as("MeetingRoomConfiguration")
    meetingRoomConfiguration: option<createMeetingRoomConfiguration>,
    @ocaml.doc("<p>Whether data retention of the profile is enabled.</p>") @as("DataRetentionOptIn")
    dataRetentionOptIn: option<boolean_>,
    @ocaml.doc("<p>Whether PSTN calling is enabled.</p>") @as("PSTNEnabled")
    pstnenabled: option<boolean_>,
    @ocaml.doc("<p>The maximum volume limit for a room profile.</p>") @as("MaxVolumeLimit")
    maxVolumeLimit: option<maxVolumeLimit>,
    @ocaml.doc("<p>Whether room profile setup is enabled.</p>") @as("SetupModeDisabled")
    setupModeDisabled: option<boolean_>,
    @ocaml.doc("<p>The user-specified token that is used during the creation of a profile.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc(
      "<p>The locale of the room profile. (This is currently only available to a limited preview audience.)</p>"
    )
    @as("Locale")
    locale: option<deviceLocale>,
    @ocaml.doc("<p>A wake word for Alexa, Echo, Amazon, or a computer.</p>") @as("WakeWord")
    wakeWord: wakeWord,
    @ocaml.doc("<p>The temperature unit to be used by devices in the profile.</p>")
    @as("TemperatureUnit")
    temperatureUnit: temperatureUnit,
    @ocaml.doc("<p>The distance unit to be used by devices in the profile.</p>") @as("DistanceUnit")
    distanceUnit: distanceUnit,
    @ocaml.doc("<p>The valid address for the room.</p>") @as("Address") address: address,
    @ocaml.doc("<p>The time zone used by a room profile.</p>") @as("Timezone") timezone: timezone,
    @ocaml.doc("<p>The name of a room profile.</p>") @as("ProfileName") profileName: profileName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the newly created room profile in the response.</p>")
    @as("ProfileArn")
    profileArn: option<arn>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateProfileCommand"
  let make = (
    ~wakeWord,
    ~temperatureUnit,
    ~distanceUnit,
    ~address,
    ~timezone,
    ~profileName,
    ~tags=?,
    ~meetingRoomConfiguration=?,
    ~dataRetentionOptIn=?,
    ~pstnenabled=?,
    ~maxVolumeLimit=?,
    ~setupModeDisabled=?,
    ~clientRequestToken=?,
    ~locale=?,
    (),
  ) =>
    new({
      tags: tags,
      meetingRoomConfiguration: meetingRoomConfiguration,
      dataRetentionOptIn: dataRetentionOptIn,
      pstnenabled: pstnenabled,
      maxVolumeLimit: maxVolumeLimit,
      setupModeDisabled: setupModeDisabled,
      clientRequestToken: clientRequestToken,
      locale: locale,
      wakeWord: wakeWord,
      temperatureUnit: temperatureUnit,
      distanceUnit: distanceUnit,
      address: address,
      timezone: timezone,
      profileName: profileName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchContacts = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than
         the specified MaxResults value, a token is included in the response so that the remaining
         results can be retrieved.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
         results from this action. If this parameter is specified, the response only includes
         results beyond the token, up to the value specified by MaxResults.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The sort order to use in listing the specified set of contacts. The supported sort
         keys are DisplayName, FirstName, and LastName.</p>")
    @as("SortCriteria")
    sortCriteria: option<sortList>,
    @ocaml.doc("<p>The filters to use to list a specified set of address books. The supported filter
         keys are DisplayName, FirstName, LastName, and AddressBookArns.</p>")
    @as("Filters")
    filters: option<filterList>,
  }
  type response = {
    @ocaml.doc("<p>The total number of contacts returned.</p>") @as("TotalCount")
    totalCount: option<totalCount>,
    @ocaml.doc("<p>The token returned to indicate that there is more data available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The contacts that meet the specified set of filter criteria, in sort order.</p>")
    @as("Contacts")
    contacts: option<contactDataList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SearchContactsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~sortCriteria=?, ~filters=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      sortCriteria: sortCriteria,
      filters: filters,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSkillsStoreSkillsByCategory = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of skills returned per paginated calls.</p>")
    @as("MaxResults")
    maxResults: option<skillListMaxResults>,
    @ocaml.doc("<p>The tokens used for pagination.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The category ID for which the skills are being retrieved from the skill
         store.</p>")
    @as("CategoryId")
    categoryId: categoryId,
  }
  type response = {
    @ocaml.doc("<p>The tokens used for pagination.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The skill store skills.</p>") @as("SkillsStoreSkills")
    skillsStoreSkills: option<skillsStoreSkillList>,
  }
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "ListSkillsStoreSkillsByCategoryCommand"
  let make = (~categoryId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, categoryId: categoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBusinessReportSchedules = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of schedules listed in the call.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token used to list the remaining schedules from the previous API call.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The token used to list the remaining schedules from the previous API call.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The schedule of the reports.</p>") @as("BusinessReportSchedules")
    businessReportSchedules: option<businessReportScheduleList>,
  }
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "ListBusinessReportSchedulesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the room profile for which to request details. Required.</p>")
    @as("ProfileArn")
    profileArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>The details of the room profile requested. Required.</p>") @as("Profile")
    profile: option<profile>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetProfileCommand"
  let make = (~profileArn=?, ()) => new({profileArn: profileArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the device for which to request details. Required.</p>")
    @as("DeviceArn")
    deviceArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>The details of the device requested. Required.</p>") @as("Device")
    device: option<device>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetDeviceCommand"
  let make = (~deviceArn=?, ()) => new({deviceArn: deviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchDevices = {
  type t
  type request = {
    @ocaml.doc("<p>The sort order to use in listing the specified set of devices. Supported sort keys
         are DeviceName, DeviceStatus, RoomName, DeviceType, DeviceSerialNumber, ConnectionStatus,
         NetworkProfileName, NetworkProfileArn, Feature, and FailureCode.</p>")
    @as("SortCriteria")
    sortCriteria: option<sortList>,
    @ocaml.doc("<p>The filters to use to list a specified set of devices. Supported filter keys are
         DeviceName, DeviceStatus, DeviceStatusDetailCode, RoomName, DeviceType, DeviceSerialNumber,
         UnassociatedOnly, ConnectionStatus (ONLINE and OFFLINE), NetworkProfileName,
         NetworkProfileArn, Feature, and FailureCode.</p>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than
         the specified <code>MaxResults</code> value, a token is included in the response so that
         the remaining results can be retrieved.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An optional token returned from a prior request. Use this token for pagination of
         results from this action. If this parameter is specified, the response includes only
         results beyond the token, up to the value specified by <code>MaxResults</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The total number of devices returned.</p>") @as("TotalCount")
    totalCount: option<totalCount>,
    @ocaml.doc("<p>The token returned to indicate that there is more data available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The devices that meet the specified set of filter criteria, in sort order.</p>")
    @as("Devices")
    devices: option<deviceDataList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SearchDevicesCommand"
  let make = (~sortCriteria=?, ~filters=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      sortCriteria: sortCriteria,
      filters: filters,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
