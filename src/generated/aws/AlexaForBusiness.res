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
type userData = {
  @as("EnrollmentId") enrollmentId: option<enrollmentId>,
  @as("EnrollmentStatus") enrollmentStatus: option<enrollmentStatus>,
  @as("Email") email: option<email>,
  @as("LastName") lastName: option<user_LastName>,
  @as("FirstName") firstName: option<user_FirstName>,
  @as("UserArn") userArn: option<arn>,
}
type updateRequireCheckIn = {
  @as("Enabled") enabled: option<boolean_>,
  @as("ReleaseAfterMinutes") releaseAfterMinutes: option<minutes>,
}
type updateInstantBooking = {
  @as("Enabled") enabled: option<boolean_>,
  @as("DurationInMinutes") durationInMinutes: option<minutes>,
}
type trustAnchorList = array<trustAnchor>
type text = {
  @as("Value") value: textValue,
  @as("Locale") locale: locale,
}
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type ssml = {
  @as("Value") value: ssmlValue,
  @as("Locale") locale: locale,
}
type sort = {
  @as("Value") value: sortValue,
  @as("Key") key: sortKey,
}
type smartHomeAppliance = {
  @as("ManufacturerName") manufacturerName: option<applianceManufacturerName>,
  @as("Description") description: option<applianceDescription>,
  @as("FriendlyName") friendlyName: option<applianceFriendlyName>,
}
type skillTypes = array<skillStoreType>
type skillSummary = {
  @as("SkillType") skillType: option<skillType>,
  @as("EnablementType") enablementType: option<enablementType>,
  @as("SupportsLinking") supportsLinking: option<boolean2>,
  @as("SkillName") skillName: option<skillName>,
  @as("SkillId") skillId: option<skillId>,
}
type skillGroupData = {
  @as("Description") description: option<skillGroupDescription>,
  @as("SkillGroupName") skillGroupName: option<skillGroupName>,
  @as("SkillGroupArn") skillGroupArn: option<arn>,
}
type skillGroup = {
  @as("Description") description: option<skillGroupDescription>,
  @as("SkillGroupName") skillGroupName: option<skillGroupName>,
  @as("SkillGroupArn") skillGroupArn: option<arn>,
}
type sipAddress = {
  @as("Type") type_: sipType,
  @as("Uri") uri: sipUri,
}
type shortSkillIdList = array<skillId>
type sampleUtterances = array<utterance>
type roomSkillParameter = {
  @as("ParameterValue") parameterValue: roomSkillParameterValue,
  @as("ParameterKey") parameterKey: roomSkillParameterKey,
}
type roomData = {
  @as("ProfileName") profileName: option<profileName>,
  @as("ProfileArn") profileArn: option<arn>,
  @as("ProviderCalendarId") providerCalendarId: option<providerCalendarId>,
  @as("Description") description: option<roomDescription>,
  @as("RoomName") roomName: option<roomName>,
  @as("RoomArn") roomArn: option<arn>,
}
type room = {
  @as("ProfileArn") profileArn: option<arn>,
  @as("ProviderCalendarId") providerCalendarId: option<providerCalendarId>,
  @as("Description") description: option<roomDescription>,
  @as("RoomName") roomName: option<roomName>,
  @as("RoomArn") roomArn: option<arn>,
}
type reviews = Js.Dict.t<reviewValue>
type requireCheckIn = {
  @as("Enabled") enabled: option<boolean_>,
  @as("ReleaseAfterMinutes") releaseAfterMinutes: option<minutes>,
}
type profileData = {
  @as("Locale") locale: option<deviceLocale>,
  @as("WakeWord") wakeWord: option<wakeWord>,
  @as("TemperatureUnit") temperatureUnit: option<temperatureUnit>,
  @as("DistanceUnit") distanceUnit: option<distanceUnit>,
  @as("Timezone") timezone: option<timezone>,
  @as("Address") address: option<address>,
  @as("IsDefault") isDefault: option<boolean_>,
  @as("ProfileName") profileName: option<profileName>,
  @as("ProfileArn") profileArn: option<arn>,
}
type phoneNumber = {
  @as("Type") type_: phoneNumberType,
  @as("Number") number: rawPhoneNumber,
}
type pstndialIn = {
  @as("OneClickPinDelay") oneClickPinDelay: oneClickPinDelay,
  @as("OneClickIdDelay") oneClickIdDelay: oneClickIdDelay,
  @as("PhoneNumber") phoneNumber: outboundPhoneNumber,
  @as("CountryCode") countryCode: countryCode,
}
type newInThisVersionBulletPoints = array<bulletPoint>
type networkProfileData = {
  @as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>,
  @as("EapMethod") eapMethod: option<networkEapMethod>,
  @as("SecurityType") securityType: option<networkSecurityType>,
  @as("Ssid") ssid: option<networkSsid>,
  @as("Description") description: option<networkProfileDescription>,
  @as("NetworkProfileName") networkProfileName: option<networkProfileName>,
  @as("NetworkProfileArn") networkProfileArn: option<arn>,
}
type meetingSetting = {@as("RequirePin") requirePin: requirePin}
type instantBooking = {
  @as("Enabled") enabled: option<boolean_>,
  @as("DurationInMinutes") durationInMinutes: option<minutes>,
}
type ipdialIn = {
  @as("CommsProtocol") commsProtocol: commsProtocol,
  @as("Endpoint") endpoint: endpoint,
}
type genericKeywords = array<genericKeyword>
type gatewaySummary = {
  @as("SoftwareVersion") softwareVersion: option<gatewayVersion>,
  @as("GatewayGroupArn") gatewayGroupArn: option<arn>,
  @as("Description") description: option<gatewayDescription>,
  @as("Name") name: option<gatewayName>,
  @as("Arn") arn: option<arn>,
}
type gatewayGroupSummary = {
  @as("Description") description: option<gatewayGroupDescription>,
  @as("Name") name: option<gatewayGroupName>,
  @as("Arn") arn: option<arn>,
}
type gatewayGroup = {
  @as("Description") description: option<gatewayGroupDescription>,
  @as("Name") name: option<gatewayGroupName>,
  @as("Arn") arn: option<arn>,
}
type gateway = {
  @as("SoftwareVersion") softwareVersion: option<gatewayVersion>,
  @as("GatewayGroupArn") gatewayGroupArn: option<arn>,
  @as("Description") description: option<gatewayDescription>,
  @as("Name") name: option<gatewayName>,
  @as("Arn") arn: option<arn>,
}
type filterValueList = array<filterValue>
type features = array<feature>
type endOfMeetingReminderMinutesList = array<minutes>
type deviceStatusDetail = {
  @as("Code") code: option<deviceStatusDetailCode>,
  @as("Feature") feature: option<feature>,
}
type deviceNetworkProfileInfo = {
  @as("CertificateExpirationTime") certificateExpirationTime: option<certificateTime>,
  @as("CertificateArn") certificateArn: option<arn>,
  @as("NetworkProfileArn") networkProfileArn: option<arn>,
}
type deviceEvent = {
  @as("Timestamp") timestamp_: option<deviceEventTime>,
  @as("Value") value: option<deviceEventValue>,
  @as("Type") type_: option<deviceEventType>,
}
type developerInfo = {
  @as("Url") url: option<url>,
  @as("Email") email: option<email>,
  @as("PrivacyPolicy") privacyPolicy: option<privacyPolicy>,
  @as("DeveloperName") developerName: option<developerName>,
}
type createRequireCheckIn = {
  @as("Enabled") enabled: boolean_,
  @as("ReleaseAfterMinutes") releaseAfterMinutes: minutes,
}
type createInstantBooking = {
  @as("Enabled") enabled: boolean_,
  @as("DurationInMinutes") durationInMinutes: minutes,
}
type conferencePreference = {
  @as("DefaultConferenceProviderArn") defaultConferenceProviderArn: option<arn>,
}
type category = {
  @as("CategoryName") categoryName: option<categoryName>,
  @as("CategoryId") categoryId: option<categoryId>,
}
type businessReportS3Location = {
  @as("BucketName") bucketName: option<customerS3BucketName>,
  @as("Path") path: option<businessReportS3Path>,
}
type businessReportRecurrence = {@as("StartDate") startDate: option<date>}
type businessReportContentRange = {@as("Interval") interval: businessReportInterval}
type bulletPoints = array<bulletPoint>
type authorizationResult = Js.Dict.t<value>
type audio = {
  @as("Location") location: audioLocation,
  @as("Locale") locale: locale,
}
type addressBookData = {
  @as("Description") description: option<addressBookDescription>,
  @as("Name") name: option<addressBookName>,
  @as("AddressBookArn") addressBookArn: option<arn>,
}
type addressBook = {
  @as("Description") description: option<addressBookDescription>,
  @as("Name") name: option<addressBookName>,
  @as("AddressBookArn") addressBookArn: option<arn>,
}
type userDataList = array<userData>
type updateEndOfMeetingReminder = {
  @as("Enabled") enabled: option<boolean_>,
  @as("ReminderType") reminderType: option<endOfMeetingReminderType>,
  @as("ReminderAtMinutes") reminderAtMinutes: option<endOfMeetingReminderMinutesList>,
}
type textList = array<text>
type tagList_ = array<tag>
type ssmlList = array<ssml>
type sortList = array<sort>
type smartHomeApplianceList = array<smartHomeAppliance>
type skillSummaryList = array<skillSummary>
type skillGroupDataList = array<skillGroupData>
type skillDetails = {
  @as("DeveloperInfo") developerInfo: option<developerInfo>,
  @as("Reviews") reviews: option<reviews>,
  @as("SkillTypes") skillTypes: option<skillTypes>,
  @as("NewInThisVersionBulletPoints")
  newInThisVersionBulletPoints: option<newInThisVersionBulletPoints>,
  @as("BulletPoints") bulletPoints: option<bulletPoints>,
  @as("GenericKeywords") genericKeywords: option<genericKeywords>,
  @as("EndUserLicenseAgreement") endUserLicenseAgreement: option<endUserLicenseAgreement>,
  @as("ReleaseDate") releaseDate: option<releaseDate>,
  @as("InvocationPhrase") invocationPhrase: option<invocationPhrase>,
  @as("ProductDescription") productDescription: option<productDescription>,
}
type sipAddressList = array<sipAddress>
type roomSkillParameters = array<roomSkillParameter>
type roomDataList = array<roomData>
type profileDataList = array<profileData>
type phoneNumberList = array<phoneNumber>
type networkProfileDataList = array<networkProfileData>
type networkProfile = {
  @as("TrustAnchors") trustAnchors: option<trustAnchorList>,
  @as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>,
  @as("NextPassword") nextPassword: option<nextWiFiPassword>,
  @as("CurrentPassword") currentPassword: option<currentWiFiPassword>,
  @as("EapMethod") eapMethod: option<networkEapMethod>,
  @as("SecurityType") securityType: option<networkSecurityType>,
  @as("Ssid") ssid: option<networkSsid>,
  @as("Description") description: option<networkProfileDescription>,
  @as("NetworkProfileName") networkProfileName: option<networkProfileName>,
  @as("NetworkProfileArn") networkProfileArn: option<arn>,
}
type gatewaySummaries = array<gatewaySummary>
type gatewayGroupSummaries = array<gatewayGroupSummary>
type filter = {
  @as("Values") values: filterValueList,
  @as("Key") key: filterKey,
}
type endOfMeetingReminder = {
  @as("Enabled") enabled: option<boolean_>,
  @as("ReminderType") reminderType: option<endOfMeetingReminderType>,
  @as("ReminderAtMinutes") reminderAtMinutes: option<endOfMeetingReminderMinutesList>,
}
type deviceStatusDetails = array<deviceStatusDetail>
type deviceEventList = array<deviceEvent>
type createEndOfMeetingReminder = {
  @as("Enabled") enabled: boolean_,
  @as("ReminderType") reminderType: endOfMeetingReminderType,
  @as("ReminderAtMinutes") reminderAtMinutes: endOfMeetingReminderMinutesList,
}
type conferenceProvider = {
  @as("MeetingSetting") meetingSetting: option<meetingSetting>,
  @as("PSTNDialIn") pstndialIn: option<pstndialIn>,
  @as("IPDialIn") ipdialIn: option<ipdialIn>,
  @as("Type") type_: option<conferenceProviderType>,
  @as("Name") name: option<conferenceProviderName>,
  @as("Arn") arn: option<arn>,
}
type categoryList = array<category>
type businessReport = {
  @as("DownloadUrl") downloadUrl: option<businessReportDownloadUrl>,
  @as("DeliveryTime") deliveryTime: option<businessReportDeliveryTime>,
  @as("S3Location") s3Location: option<businessReportS3Location>,
  @as("FailureCode") failureCode: option<businessReportFailureCode>,
  @as("Status") status: option<businessReportStatus>,
}
type audioList = array<audio>
type addressBookDataList = array<addressBookData>
type updateMeetingRoomConfiguration = {
  @as("RequireCheckIn") requireCheckIn: option<updateRequireCheckIn>,
  @as("InstantBooking") instantBooking: option<updateInstantBooking>,
  @as("EndOfMeetingReminder") endOfMeetingReminder: option<updateEndOfMeetingReminder>,
  @as("RoomUtilizationMetricsEnabled") roomUtilizationMetricsEnabled: option<boolean_>,
}
type skillsStoreSkill = {
  @as("SupportsLinking") supportsLinking: option<boolean2>,
  @as("SkillDetails") skillDetails: option<skillDetails>,
  @as("SampleUtterances") sampleUtterances: option<sampleUtterances>,
  @as("IconUrl") iconUrl: option<iconUrl>,
  @as("ShortDescription") shortDescription: option<shortDescription>,
  @as("SkillName") skillName: option<skillName>,
  @as("SkillId") skillId: option<skillId>,
}
type meetingRoomConfiguration = {
  @as("RequireCheckIn") requireCheckIn: option<requireCheckIn>,
  @as("InstantBooking") instantBooking: option<instantBooking>,
  @as("EndOfMeetingReminder") endOfMeetingReminder: option<endOfMeetingReminder>,
  @as("RoomUtilizationMetricsEnabled") roomUtilizationMetricsEnabled: option<boolean_>,
}
type filterList = array<filter>
type deviceStatusInfo = {
  @as("ConnectionStatusUpdatedTime")
  connectionStatusUpdatedTime: option<connectionStatusUpdatedTime>,
  @as("ConnectionStatus") connectionStatus: option<connectionStatus>,
  @as("DeviceStatusDetails") deviceStatusDetails: option<deviceStatusDetails>,
}
type createMeetingRoomConfiguration = {
  @as("RequireCheckIn") requireCheckIn: option<createRequireCheckIn>,
  @as("InstantBooking") instantBooking: option<createInstantBooking>,
  @as("EndOfMeetingReminder") endOfMeetingReminder: option<createEndOfMeetingReminder>,
  @as("RoomUtilizationMetricsEnabled") roomUtilizationMetricsEnabled: option<boolean_>,
}
type content = {
  @as("AudioList") audioList: option<audioList>,
  @as("SsmlList") ssmlList: option<ssmlList>,
  @as("TextList") textList: option<textList>,
}
type contactData = {
  @as("SipAddresses") sipAddresses: option<sipAddressList>,
  @as("PhoneNumbers") phoneNumbers: option<phoneNumberList>,
  @as("PhoneNumber") phoneNumber: option<rawPhoneNumber>,
  @as("LastName") lastName: option<contactName>,
  @as("FirstName") firstName: option<contactName>,
  @as("DisplayName") displayName: option<contactName>,
  @as("ContactArn") contactArn: option<arn>,
}
type contact = {
  @as("SipAddresses") sipAddresses: option<sipAddressList>,
  @as("PhoneNumbers") phoneNumbers: option<phoneNumberList>,
  @as("PhoneNumber") phoneNumber: option<rawPhoneNumber>,
  @as("LastName") lastName: option<contactName>,
  @as("FirstName") firstName: option<contactName>,
  @as("DisplayName") displayName: option<contactName>,
  @as("ContactArn") contactArn: option<arn>,
}
type conferenceProvidersList = array<conferenceProvider>
type businessReportSchedule = {
  @as("LastBusinessReport") lastBusinessReport: option<businessReport>,
  @as("Recurrence") recurrence: option<businessReportRecurrence>,
  @as("ContentRange") contentRange: option<businessReportContentRange>,
  @as("Format") format: option<businessReportFormat>,
  @as("S3KeyPrefix") s3KeyPrefix: option<s3KeyPrefix>,
  @as("S3BucketName") s3BucketName: option<customerS3BucketName>,
  @as("ScheduleName") scheduleName: option<businessReportScheduleName>,
  @as("ScheduleArn") scheduleArn: option<arn>,
}
type skillsStoreSkillList = array<skillsStoreSkill>
type profile = {
  @as("MeetingRoomConfiguration") meetingRoomConfiguration: option<meetingRoomConfiguration>,
  @as("AddressBookArn") addressBookArn: option<arn>,
  @as("DataRetentionOptIn") dataRetentionOptIn: option<boolean_>,
  @as("PSTNEnabled") pstnenabled: option<boolean_>,
  @as("MaxVolumeLimit") maxVolumeLimit: option<maxVolumeLimit>,
  @as("SetupModeDisabled") setupModeDisabled: option<boolean_>,
  @as("Locale") locale: option<deviceLocale>,
  @as("WakeWord") wakeWord: option<wakeWord>,
  @as("TemperatureUnit") temperatureUnit: option<temperatureUnit>,
  @as("DistanceUnit") distanceUnit: option<distanceUnit>,
  @as("Timezone") timezone: option<timezone>,
  @as("Address") address: option<address>,
  @as("IsDefault") isDefault: option<boolean_>,
  @as("ProfileName") profileName: option<profileName>,
  @as("ProfileArn") profileArn: option<arn>,
}
type deviceData = {
  @as("CreatedTime") createdTime: option<deviceDataCreatedTime>,
  @as("DeviceStatusInfo") deviceStatusInfo: option<deviceStatusInfo>,
  @as("RoomName") roomName: option<deviceRoomName>,
  @as("RoomArn") roomArn: option<arn>,
  @as("NetworkProfileName") networkProfileName: option<networkProfileName>,
  @as("NetworkProfileArn") networkProfileArn: option<arn>,
  @as("DeviceStatus") deviceStatus: option<deviceStatus>,
  @as("MacAddress") macAddress: option<macAddress>,
  @as("SoftwareVersion") softwareVersion: option<softwareVersion>,
  @as("DeviceName") deviceName: option<deviceName>,
  @as("DeviceType") deviceType: option<deviceType>,
  @as("DeviceSerialNumber") deviceSerialNumber: option<deviceSerialNumber>,
  @as("DeviceArn") deviceArn: option<arn>,
}
type device = {
  @as("NetworkProfileInfo") networkProfileInfo: option<deviceNetworkProfileInfo>,
  @as("DeviceStatusInfo") deviceStatusInfo: option<deviceStatusInfo>,
  @as("DeviceStatus") deviceStatus: option<deviceStatus>,
  @as("RoomArn") roomArn: option<arn>,
  @as("MacAddress") macAddress: option<macAddress>,
  @as("SoftwareVersion") softwareVersion: option<softwareVersion>,
  @as("DeviceName") deviceName: option<deviceName>,
  @as("DeviceType") deviceType: option<deviceType>,
  @as("DeviceSerialNumber") deviceSerialNumber: option<deviceSerialNumber>,
  @as("DeviceArn") deviceArn: option<arn>,
}
type contactDataList = array<contactData>
type businessReportScheduleList = array<businessReportSchedule>
type deviceDataList = array<deviceData>

module UpdateSkillGroup = {
  type t
  type request = {
    @as("Description") description: option<skillGroupDescription>,
    @as("SkillGroupName") skillGroupName: option<skillGroupName>,
    @as("SkillGroupArn") skillGroupArn: option<arn>,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateSkillGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRoom = {
  type t
  type request = {
    @as("ProfileArn") profileArn: option<arn>,
    @as("ProviderCalendarId") providerCalendarId: option<providerCalendarId>,
    @as("Description") description: option<roomDescription>,
    @as("RoomName") roomName: option<roomName>,
    @as("RoomArn") roomArn: option<arn>,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateRoomCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGatewayGroup = {
  type t
  type request = {
    @as("Description") description: option<gatewayGroupDescription>,
    @as("Name") name: option<gatewayGroupName>,
    @as("GatewayGroupArn") gatewayGroupArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateGatewayGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGateway = {
  type t
  type request = {
    @as("SoftwareVersion") softwareVersion: option<gatewayVersion>,
    @as("Description") description: option<gatewayDescription>,
    @as("Name") name: option<gatewayName>,
    @as("GatewayArn") gatewayArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateGatewayCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDevice = {
  type t
  type request = {
    @as("DeviceName") deviceName: option<deviceName>,
    @as("DeviceArn") deviceArn: option<arn>,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateDeviceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAddressBook = {
  type t
  type request = {
    @as("Description") description: option<addressBookDescription>,
    @as("Name") name: option<addressBookName>,
    @as("AddressBookArn") addressBookArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateAddressBookCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartSmartHomeApplianceDiscovery = {
  type t
  type request = {@as("RoomArn") roomArn: arn}
  type response = unit
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "StartSmartHomeApplianceDiscoveryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendInvitation = {
  type t
  type request = {@as("UserArn") userArn: option<arn>}
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SendInvitationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokeInvitation = {
  type t
  type request = {
    @as("EnrollmentId") enrollmentId: option<enrollmentId>,
    @as("UserArn") userArn: option<arn>,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "RevokeInvitationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RejectSkill = {
  type t
  type request = {@as("SkillId") skillId: skillId}
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "RejectSkillCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ForgetSmartHomeAppliances = {
  type t
  type request = {@as("RoomArn") roomArn: arn}
  type response = unit
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "ForgetSmartHomeAppliancesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateSkillGroupFromRoom = {
  type t
  type request = {
    @as("RoomArn") roomArn: option<arn>,
    @as("SkillGroupArn") skillGroupArn: option<arn>,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "DisassociateSkillGroupFromRoomCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateSkillFromUsers = {
  type t
  type request = {@as("SkillId") skillId: skillId}
  type response = unit
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "DisassociateSkillFromUsersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateSkillFromSkillGroup = {
  type t
  type request = {
    @as("SkillId") skillId: skillId,
    @as("SkillGroupArn") skillGroupArn: option<arn>,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "DisassociateSkillFromSkillGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateDeviceFromRoom = {
  type t
  type request = {@as("DeviceArn") deviceArn: option<arn>}
  type response = unit
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "DisassociateDeviceFromRoomCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateContactFromAddressBook = {
  type t
  type request = {
    @as("AddressBookArn") addressBookArn: arn,
    @as("ContactArn") contactArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "DisassociateContactFromAddressBookCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUser = {
  type t
  type request = {
    @as("EnrollmentId") enrollmentId: enrollmentId,
    @as("UserArn") userArn: option<arn>,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteUserCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSkillGroup = {
  type t
  type request = {@as("SkillGroupArn") skillGroupArn: option<arn>}
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteSkillGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSkillAuthorization = {
  type t
  type request = {
    @as("RoomArn") roomArn: option<arn>,
    @as("SkillId") skillId: skillId,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteSkillAuthorizationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRoomSkillParameter = {
  type t
  type request = {
    @as("ParameterKey") parameterKey: roomSkillParameterKey,
    @as("SkillId") skillId: skillId,
    @as("RoomArn") roomArn: option<arn>,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteRoomSkillParameterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRoom = {
  type t
  type request = {@as("RoomArn") roomArn: option<arn>}
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteRoomCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProfile = {
  type t
  type request = {@as("ProfileArn") profileArn: option<arn>}
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteNetworkProfile = {
  type t
  type request = {@as("NetworkProfileArn") networkProfileArn: arn}
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteNetworkProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGatewayGroup = {
  type t
  type request = {@as("GatewayGroupArn") gatewayGroupArn: arn}
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteGatewayGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDeviceUsageData = {
  type t
  type request = {
    @as("DeviceUsageType") deviceUsageType: deviceUsageType,
    @as("DeviceArn") deviceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteDeviceUsageDataCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDevice = {
  type t
  type request = {@as("DeviceArn") deviceArn: arn}
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteDeviceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteContact = {
  type t
  type request = {@as("ContactArn") contactArn: arn}
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteContactCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteConferenceProvider = {
  type t
  type request = {@as("ConferenceProviderArn") conferenceProviderArn: arn}
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteConferenceProviderCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBusinessReportSchedule = {
  type t
  type request = {@as("ScheduleArn") scheduleArn: arn}
  type response = unit
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "DeleteBusinessReportScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAddressBook = {
  type t
  type request = {@as("AddressBookArn") addressBookArn: arn}
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "DeleteAddressBookCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateSkillWithUsers = {
  type t
  type request = {@as("SkillId") skillId: skillId}
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "AssociateSkillWithUsersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateSkillWithSkillGroup = {
  type t
  type request = {
    @as("SkillId") skillId: skillId,
    @as("SkillGroupArn") skillGroupArn: option<arn>,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "AssociateSkillWithSkillGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateSkillGroupWithRoom = {
  type t
  type request = {
    @as("RoomArn") roomArn: option<arn>,
    @as("SkillGroupArn") skillGroupArn: option<arn>,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "AssociateSkillGroupWithRoomCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateDeviceWithRoom = {
  type t
  type request = {
    @as("RoomArn") roomArn: option<arn>,
    @as("DeviceArn") deviceArn: option<arn>,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "AssociateDeviceWithRoomCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateDeviceWithNetworkProfile = {
  type t
  type request = {
    @as("NetworkProfileArn") networkProfileArn: arn,
    @as("DeviceArn") deviceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "AssociateDeviceWithNetworkProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateContactWithAddressBook = {
  type t
  type request = {
    @as("AddressBookArn") addressBookArn: arn,
    @as("ContactArn") contactArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "AssociateContactWithAddressBookCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ApproveSkill = {
  type t
  type request = {@as("SkillId") skillId: skillId}
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ApproveSkillCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateNetworkProfile = {
  type t
  type request = {
    @as("TrustAnchors") trustAnchors: option<trustAnchorList>,
    @as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>,
    @as("NextPassword") nextPassword: option<nextWiFiPassword>,
    @as("CurrentPassword") currentPassword: option<currentWiFiPassword>,
    @as("Description") description: option<networkProfileDescription>,
    @as("NetworkProfileName") networkProfileName: option<networkProfileName>,
    @as("NetworkProfileArn") networkProfileArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateNetworkProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateConferenceProvider = {
  type t
  type request = {
    @as("MeetingSetting") meetingSetting: meetingSetting,
    @as("PSTNDialIn") pstndialIn: option<pstndialIn>,
    @as("IPDialIn") ipdialIn: option<ipdialIn>,
    @as("ConferenceProviderType") conferenceProviderType: conferenceProviderType,
    @as("ConferenceProviderArn") conferenceProviderArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateConferenceProviderCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBusinessReportSchedule = {
  type t
  type request = {
    @as("Recurrence") recurrence: option<businessReportRecurrence>,
    @as("ScheduleName") scheduleName: option<businessReportScheduleName>,
    @as("Format") format: option<businessReportFormat>,
    @as("S3KeyPrefix") s3KeyPrefix: option<s3KeyPrefix>,
    @as("S3BucketName") s3BucketName: option<customerS3BucketName>,
    @as("ScheduleArn") scheduleArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "UpdateBusinessReportScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("Arn") arn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDeviceSync = {
  type t
  type request = {
    @as("Features") features: features,
    @as("DeviceArn") deviceArn: option<arn>,
    @as("RoomArn") roomArn: option<arn>,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "StartDeviceSyncCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutSkillAuthorization = {
  type t
  type request = {
    @as("RoomArn") roomArn: option<arn>,
    @as("SkillId") skillId: skillId,
    @as("AuthorizationResult") authorizationResult: authorizationResult,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "PutSkillAuthorizationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutRoomSkillParameter = {
  type t
  type request = {
    @as("RoomSkillParameter") roomSkillParameter: roomSkillParameter,
    @as("SkillId") skillId: skillId,
    @as("RoomArn") roomArn: option<arn>,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "PutRoomSkillParameterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutInvitationConfiguration = {
  type t
  type request = {
    @as("PrivateSkillIds") privateSkillIds: option<shortSkillIdList>,
    @as("ContactEmail") contactEmail: option<email>,
    @as("OrganizationName") organizationName: organizationName,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "PutInvitationConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutConferencePreference = {
  type t
  type request = {@as("ConferencePreference") conferencePreference: conferencePreference}
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "PutConferencePreferenceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSkillGroup = {
  type t
  type request = {@as("SkillGroupArn") skillGroupArn: option<arn>}
  type response = {@as("SkillGroup") skillGroup: option<skillGroup>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetSkillGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRoomSkillParameter = {
  type t
  type request = {
    @as("ParameterKey") parameterKey: roomSkillParameterKey,
    @as("SkillId") skillId: skillId,
    @as("RoomArn") roomArn: option<arn>,
  }
  type response = {@as("RoomSkillParameter") roomSkillParameter: option<roomSkillParameter>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetRoomSkillParameterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRoom = {
  type t
  type request = {@as("RoomArn") roomArn: option<arn>}
  type response = {@as("Room") room: option<room>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetRoomCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInvitationConfiguration = {
  type t
  type request = unit
  type response = {
    @as("PrivateSkillIds") privateSkillIds: option<shortSkillIdList>,
    @as("ContactEmail") contactEmail: option<email>,
    @as("OrganizationName") organizationName: option<organizationName>,
  }
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "GetInvitationConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGatewayGroup = {
  type t
  type request = {@as("GatewayGroupArn") gatewayGroupArn: arn}
  type response = {@as("GatewayGroup") gatewayGroup: option<gatewayGroup>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetGatewayGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGateway = {
  type t
  type request = {@as("GatewayArn") gatewayArn: arn}
  type response = {@as("Gateway") gateway: option<gateway>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetGatewayCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConferencePreference = {
  type t
  type request = unit
  type response = {@as("Preference") preference: option<conferencePreference>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetConferencePreferenceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAddressBook = {
  type t
  type request = {@as("AddressBookArn") addressBookArn: arn}
  type response = {@as("AddressBook") addressBook: option<addressBook>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetAddressBookCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateContact = {
  type t
  type request = {
    @as("SipAddresses") sipAddresses: option<sipAddressList>,
    @as("PhoneNumbers") phoneNumbers: option<phoneNumberList>,
    @as("PhoneNumber") phoneNumber: option<rawPhoneNumber>,
    @as("LastName") lastName: option<contactName>,
    @as("FirstName") firstName: option<contactName>,
    @as("DisplayName") displayName: option<contactName>,
    @as("ContactArn") contactArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateContactCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("Arn") arn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResolveRoom = {
  type t
  type request = {
    @as("SkillId") skillId: skillId,
    @as("UserId") userId: userId,
  }
  type response = {
    @as("RoomSkillParameters") roomSkillParameters: option<roomSkillParameters>,
    @as("RoomName") roomName: option<roomName>,
    @as("RoomArn") roomArn: option<arn>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ResolveRoomCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterAVSDevice = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("RoomArn") roomArn: option<arn>,
    @as("AmazonId") amazonId: amazonId,
    @as("DeviceSerialNumber") deviceSerialNumber: option<deviceSerialNumberForAVS>,
    @as("ProductId") productId: productId,
    @as("UserCode") userCode: userCode,
    @as("ClientId") clientId: clientId,
  }
  type response = {@as("DeviceArn") deviceArn: option<arn>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "RegisterAVSDeviceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTags = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Arn") arn: arn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Tags") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ListTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSmartHomeAppliances = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("RoomArn") roomArn: arn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("SmartHomeAppliances") smartHomeAppliances: option<smartHomeApplianceList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ListSmartHomeAppliancesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSkillsStoreCategories = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("CategoryList") categoryList: option<categoryList>,
  }
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "ListSkillsStoreCategoriesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSkills = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<skillListMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SkillType") skillType: option<skillTypeFilter>,
    @as("EnablementType") enablementType: option<enablementTypeFilter>,
    @as("SkillGroupArn") skillGroupArn: option<arn>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("SkillSummaries") skillSummaries: option<skillSummaryList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ListSkillsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGateways = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("GatewayGroupArn") gatewayGroupArn: option<arn>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Gateways") gateways: option<gatewaySummaries>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ListGatewaysCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGatewayGroups = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("GatewayGroups") gatewayGroups: option<gatewayGroupSummaries>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ListGatewayGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeviceEvents = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("EventType") eventType: option<deviceEventType>,
    @as("DeviceArn") deviceArn: arn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("DeviceEvents") deviceEvents: option<deviceEventList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ListDeviceEventsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetNetworkProfile = {
  type t
  type request = {@as("NetworkProfileArn") networkProfileArn: arn}
  type response = {@as("NetworkProfile") networkProfile: option<networkProfile>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetNetworkProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConferenceProvider = {
  type t
  type request = {@as("ConferenceProviderArn") conferenceProviderArn: arn}
  type response = {@as("ConferenceProvider") conferenceProvider: option<conferenceProvider>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetConferenceProviderCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUser = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("Email") email: option<email>,
    @as("LastName") lastName: option<user_LastName>,
    @as("FirstName") firstName: option<user_FirstName>,
    @as("UserId") userId: user_UserId,
  }
  type response = {@as("UserArn") userArn: option<arn>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateUserCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSkillGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("Description") description: option<skillGroupDescription>,
    @as("SkillGroupName") skillGroupName: skillGroupName,
  }
  type response = {@as("SkillGroupArn") skillGroupArn: option<arn>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateSkillGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRoom = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("ProviderCalendarId") providerCalendarId: option<providerCalendarId>,
    @as("ProfileArn") profileArn: option<arn>,
    @as("Description") description: option<roomDescription>,
    @as("RoomName") roomName: roomName,
  }
  type response = {@as("RoomArn") roomArn: option<arn>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateRoomCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNetworkProfile = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("TrustAnchors") trustAnchors: option<trustAnchorList>,
    @as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>,
    @as("NextPassword") nextPassword: option<nextWiFiPassword>,
    @as("CurrentPassword") currentPassword: option<currentWiFiPassword>,
    @as("EapMethod") eapMethod: option<networkEapMethod>,
    @as("SecurityType") securityType: networkSecurityType,
    @as("Ssid") ssid: networkSsid,
    @as("Description") description: option<networkProfileDescription>,
    @as("NetworkProfileName") networkProfileName: networkProfileName,
  }
  type response = {@as("NetworkProfileArn") networkProfileArn: option<arn>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateNetworkProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGatewayGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("Description") description: option<gatewayGroupDescription>,
    @as("Name") name: gatewayGroupName,
  }
  type response = {@as("GatewayGroupArn") gatewayGroupArn: option<arn>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateGatewayGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateContact = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("SipAddresses") sipAddresses: option<sipAddressList>,
    @as("PhoneNumbers") phoneNumbers: option<phoneNumberList>,
    @as("PhoneNumber") phoneNumber: option<rawPhoneNumber>,
    @as("LastName") lastName: option<contactName>,
    @as("FirstName") firstName: contactName,
    @as("DisplayName") displayName: option<contactName>,
  }
  type response = {@as("ContactArn") contactArn: option<arn>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateContactCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConferenceProvider = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("MeetingSetting") meetingSetting: meetingSetting,
    @as("PSTNDialIn") pstndialIn: option<pstndialIn>,
    @as("IPDialIn") ipdialIn: option<ipdialIn>,
    @as("ConferenceProviderType") conferenceProviderType: conferenceProviderType,
    @as("ConferenceProviderName") conferenceProviderName: conferenceProviderName,
  }
  type response = {@as("ConferenceProviderArn") conferenceProviderArn: option<arn>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateConferenceProviderCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBusinessReportSchedule = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("Recurrence") recurrence: option<businessReportRecurrence>,
    @as("ContentRange") contentRange: businessReportContentRange,
    @as("Format") format: businessReportFormat,
    @as("S3KeyPrefix") s3KeyPrefix: option<s3KeyPrefix>,
    @as("S3BucketName") s3BucketName: option<customerS3BucketName>,
    @as("ScheduleName") scheduleName: option<businessReportScheduleName>,
  }
  type response = {@as("ScheduleArn") scheduleArn: option<arn>}
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "CreateBusinessReportScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAddressBook = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("Description") description: option<addressBookDescription>,
    @as("Name") name: addressBookName,
  }
  type response = {@as("AddressBookArn") addressBookArn: option<arn>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateAddressBookCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProfile = {
  type t
  type request = {
    @as("MeetingRoomConfiguration")
    meetingRoomConfiguration: option<updateMeetingRoomConfiguration>,
    @as("DataRetentionOptIn") dataRetentionOptIn: option<boolean_>,
    @as("PSTNEnabled") pstnenabled: option<boolean_>,
    @as("MaxVolumeLimit") maxVolumeLimit: option<maxVolumeLimit>,
    @as("SetupModeDisabled") setupModeDisabled: option<boolean_>,
    @as("Locale") locale: option<deviceLocale>,
    @as("WakeWord") wakeWord: option<wakeWord>,
    @as("TemperatureUnit") temperatureUnit: option<temperatureUnit>,
    @as("DistanceUnit") distanceUnit: option<distanceUnit>,
    @as("Address") address: option<address>,
    @as("Timezone") timezone: option<timezone>,
    @as("IsDefault") isDefault: option<boolean_>,
    @as("ProfileName") profileName: option<profileName>,
    @as("ProfileArn") profileArn: option<arn>,
  }
  type response = unit
  @module("@aws-sdk/client-a4b") @new external new: request => t = "UpdateProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendAnnouncement = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("TimeToLiveInSeconds") timeToLiveInSeconds: option<timeToLiveInSeconds>,
    @as("Content") content: content,
    @as("RoomFilters") roomFilters: filterList,
  }
  type response = {@as("AnnouncementArn") announcementArn: option<arn>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SendAnnouncementCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchUsers = {
  type t
  type request = {
    @as("SortCriteria") sortCriteria: option<sortList>,
    @as("Filters") filters: option<filterList>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("TotalCount") totalCount: option<totalCount>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Users") users: option<userDataList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SearchUsersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchSkillGroups = {
  type t
  type request = {
    @as("SortCriteria") sortCriteria: option<sortList>,
    @as("Filters") filters: option<filterList>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("TotalCount") totalCount: option<totalCount>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SkillGroups") skillGroups: option<skillGroupDataList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SearchSkillGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchRooms = {
  type t
  type request = {
    @as("SortCriteria") sortCriteria: option<sortList>,
    @as("Filters") filters: option<filterList>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("TotalCount") totalCount: option<totalCount>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Rooms") rooms: option<roomDataList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SearchRoomsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchProfiles = {
  type t
  type request = {
    @as("SortCriteria") sortCriteria: option<sortList>,
    @as("Filters") filters: option<filterList>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("TotalCount") totalCount: option<totalCount>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Profiles") profiles: option<profileDataList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SearchProfilesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchNetworkProfiles = {
  type t
  type request = {
    @as("SortCriteria") sortCriteria: option<sortList>,
    @as("Filters") filters: option<filterList>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("TotalCount") totalCount: option<totalCount>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("NetworkProfiles") networkProfiles: option<networkProfileDataList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SearchNetworkProfilesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchAddressBooks = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortCriteria") sortCriteria: option<sortList>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("TotalCount") totalCount: option<totalCount>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("AddressBooks") addressBooks: option<addressBookDataList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SearchAddressBooksCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListConferenceProviders = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ConferenceProviders") conferenceProviders: option<conferenceProvidersList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "ListConferenceProvidersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContact = {
  type t
  type request = {@as("ContactArn") contactArn: arn}
  type response = {@as("Contact") contact: option<contact>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetContactCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProfile = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("MeetingRoomConfiguration")
    meetingRoomConfiguration: option<createMeetingRoomConfiguration>,
    @as("DataRetentionOptIn") dataRetentionOptIn: option<boolean_>,
    @as("PSTNEnabled") pstnenabled: option<boolean_>,
    @as("MaxVolumeLimit") maxVolumeLimit: option<maxVolumeLimit>,
    @as("SetupModeDisabled") setupModeDisabled: option<boolean_>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("Locale") locale: option<deviceLocale>,
    @as("WakeWord") wakeWord: wakeWord,
    @as("TemperatureUnit") temperatureUnit: temperatureUnit,
    @as("DistanceUnit") distanceUnit: distanceUnit,
    @as("Address") address: address,
    @as("Timezone") timezone: timezone,
    @as("ProfileName") profileName: profileName,
  }
  type response = {@as("ProfileArn") profileArn: option<arn>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "CreateProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchContacts = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortCriteria") sortCriteria: option<sortList>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("TotalCount") totalCount: option<totalCount>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Contacts") contacts: option<contactDataList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SearchContactsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSkillsStoreSkillsByCategory = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<skillListMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("CategoryId") categoryId: categoryId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("SkillsStoreSkills") skillsStoreSkills: option<skillsStoreSkillList>,
  }
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "ListSkillsStoreSkillsByCategoryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBusinessReportSchedules = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("BusinessReportSchedules") businessReportSchedules: option<businessReportScheduleList>,
  }
  @module("@aws-sdk/client-a4b") @new
  external new: request => t = "ListBusinessReportSchedulesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetProfile = {
  type t
  type request = {@as("ProfileArn") profileArn: option<arn>}
  type response = {@as("Profile") profile: option<profile>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDevice = {
  type t
  type request = {@as("DeviceArn") deviceArn: option<arn>}
  type response = {@as("Device") device: option<device>}
  @module("@aws-sdk/client-a4b") @new external new: request => t = "GetDeviceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchDevices = {
  type t
  type request = {
    @as("SortCriteria") sortCriteria: option<sortList>,
    @as("Filters") filters: option<filterList>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("TotalCount") totalCount: option<totalCount>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Devices") devices: option<deviceDataList>,
  }
  @module("@aws-sdk/client-a4b") @new external new: request => t = "SearchDevicesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
