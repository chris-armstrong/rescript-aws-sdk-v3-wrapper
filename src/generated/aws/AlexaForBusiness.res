type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type user_UserId = string
type user_LastName = string
type user_FirstName = string
type wakeWord = [@as("COMPUTER") #COMPUTER | @as("ECHO") #ECHO | @as("AMAZON") #AMAZON | @as("ALEXA") #ALEXA]
type value = string
type utterance = string
type userId = string
type userCode = string
type url = string
type trustAnchor = string
type totalCount = int;
type timezone = string
type timeToLiveInSeconds = int;
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
type skillListMaxResults = int;
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
type networkSecurityType = [@as("WPA2_ENTERPRISE") #WPA2_ENTERPRISE | @as("WPA2_PSK") #WPA2_PSK | @as("WPA_PSK") #WPA_PSK | @as("WEP") #WEP | @as("OPEN") #OPEN]
type networkProfileName = string
type networkProfileDescription = string
type networkEapMethod = [@as("EAP_TLS") #EAP_TLS]
type minutes = int;
type maxVolumeLimit = int;
type maxResults = int;
type macAddress = string
type locale = [@as("en-US") #en_US]
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
type feature = [@as("ALL") #ALL | @as("SETTINGS") #SETTINGS | @as("NETWORK_PROFILE") #NETWORK_PROFILE | @as("SKILLS") #SKILLS | @as("LISTS") #LISTS | @as("NOTIFICATIONS") #NOTIFICATIONS | @as("VOLUME") #VOLUME | @as("BLUETOOTH") #BLUETOOTH]
type errorMessage = string
type enrollmentStatus = [@as("DEREGISTERING") #DEREGISTERING | @as("DISASSOCIATING") #DISASSOCIATING | @as("REGISTERED") #REGISTERED | @as("PENDING") #PENDING | @as("INITIALIZED") #INITIALIZED]
type enrollmentId = string
type endpoint = string
type endUserLicenseAgreement = string
type endOfMeetingReminderType = [@as("KNOCK") #KNOCK | @as("CHIME") #CHIME | @as("ANNOUNCEMENT_VARIABLE_TIME_LEFT") #ANNOUNCEMENT_VARIABLE_TIME_LEFT | @as("ANNOUNCEMENT_TIME_CHECK") #ANNOUNCEMENT_TIME_CHECK]
type enablementTypeFilter = [@as("PENDING") #PENDING | @as("ENABLED") #ENABLED]
type enablementType = [@as("PENDING") #PENDING | @as("ENABLED") #ENABLED]
type email = string
type distanceUnit = [@as("IMPERIAL") #IMPERIAL | @as("METRIC") #METRIC]
type deviceUsageType = [@as("VOICE") #VOICE]
type deviceType = string
type deviceStatusDetailCode = [@as("CERTIFICATE_AUTHORITY_ACCESS_DENIED") #CERTIFICATE_AUTHORITY_ACCESS_DENIED | @as("PASSWORD_MANAGER_ACCESS_DENIED") #PASSWORD_MANAGER_ACCESS_DENIED | @as("PASSWORD_NOT_FOUND") #PASSWORD_NOT_FOUND | @as("INVALID_PASSWORD_STATE") #INVALID_PASSWORD_STATE | @as("NETWORK_PROFILE_NOT_FOUND") #NETWORK_PROFILE_NOT_FOUND | @as("INVALID_CERTIFICATE_AUTHORITY") #INVALID_CERTIFICATE_AUTHORITY | @as("CERTIFICATE_ISSUING_LIMIT_EXCEEDED") #CERTIFICATE_ISSUING_LIMIT_EXCEEDED | @as("UNKNOWN_FAILURE") #UNKNOWN_FAILURE | @as("DNS_FAILURE") #DNS_FAILURE | @as("INTERNET_UNAVAILABLE") #INTERNET_UNAVAILABLE | @as("DHCP_FAILURE") #DHCP_FAILURE | @as("AUTHENTICATION_FAILURE") #AUTHENTICATION_FAILURE | @as("ASSOCIATION_REJECTION") #ASSOCIATION_REJECTION | @as("TLS_VERSION_MISMATCH") #TLS_VERSION_MISMATCH | @as("CREDENTIALS_ACCESS_FAILURE") #CREDENTIALS_ACCESS_FAILURE | @as("DEVICE_WAS_OFFLINE") #DEVICE_WAS_OFFLINE | @as("DEVICE_SOFTWARE_UPDATE_NEEDED") #DEVICE_SOFTWARE_UPDATE_NEEDED]
type deviceStatus = [@as("FAILED") #FAILED | @as("DEREGISTERED") #DEREGISTERED | @as("WAS_OFFLINE") #WAS_OFFLINE | @as("PENDING") #PENDING | @as("READY") #READY]
type deviceSerialNumberForAVS = string
type deviceSerialNumber = string
type deviceRoomName = string
type deviceName = string
type deviceLocale = string
type deviceEventValue = string
type deviceEventType = [@as("DEVICE_STATUS") #DEVICE_STATUS | @as("CONNECTION_STATUS") #CONNECTION_STATUS]
type deviceEventTime = Js.Date.t;
type deviceDataCreatedTime = Js.Date.t;
type developerName = string
type date = string
type customerS3BucketName = string
type currentWiFiPassword = string
type countryCode = string
type contactName = string
type connectionStatusUpdatedTime = Js.Date.t;
type connectionStatus = [@as("OFFLINE") #OFFLINE | @as("ONLINE") #ONLINE]
type conferenceProviderType = [@as("CUSTOM") #CUSTOM | @as("ZOOM") #ZOOM | @as("WEBEX") #WEBEX | @as("SKYPE_FOR_BUSINESS") #SKYPE_FOR_BUSINESS | @as("RINGCENTRAL") #RINGCENTRAL | @as("POLYCOM") #POLYCOM | @as("GOOGLE_HANGOUTS") #GOOGLE_HANGOUTS | @as("FUZE") #FUZE | @as("BLUEJEANS") #BLUEJEANS | @as("CHIME") #CHIME]
type conferenceProviderName = string
type commsProtocol = [@as("H323") #H323 | @as("SIPS") #SIPS | @as("SIP") #SIP]
type clientRequestToken = string
type clientId = string
type certificateTime = Js.Date.t;
type categoryName = string
type categoryId = float;
type businessReportStatus = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("RUNNING") #RUNNING]
type businessReportScheduleName = string
type businessReportS3Path = string
type businessReportInterval = [@as("THIRTY_DAYS") #THIRTY_DAYS | @as("ONE_WEEK") #ONE_WEEK | @as("ONE_DAY") #ONE_DAY]
type businessReportFormat = [@as("CSV_ZIP") #CSV_ZIP | @as("CSV") #CSV]
type businessReportFailureCode = [@as("INTERNAL_FAILURE") #INTERNAL_FAILURE | @as("NO_SUCH_BUCKET") #NO_SUCH_BUCKET | @as("ACCESS_DENIED") #ACCESS_DENIED]
type businessReportDownloadUrl = string
type businessReportDeliveryTime = Js.Date.t;
type bulletPoint = string
type boolean2 = bool;
type amazonawsBoolean = bool;
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
@as("EnrollmentId") enrollmentId: enrollmentId,
@as("EnrollmentStatus") enrollmentStatus: enrollmentStatus,
@as("Email") email: email,
@as("LastName") lastName: user_LastName,
@as("FirstName") firstName: user_FirstName,
@as("UserArn") userArn: arn
}
type updateRequireCheckIn = {
@as("Enabled") enabled: amazonawsBoolean,
@as("ReleaseAfterMinutes") releaseAfterMinutes: minutes
}
type updateInstantBooking = {
@as("Enabled") enabled: amazonawsBoolean,
@as("DurationInMinutes") durationInMinutes: minutes
}
exception UnauthorizedException;
type trustAnchorList = array<trustAnchor>
type text = {
@as("Value") value: option<textValue>,
@as("Locale") locale: option<locale>
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type ssml = {
@as("Value") value: option<ssmlValue>,
@as("Locale") locale: option<locale>
}
type sort = {
@as("Value") value: option<sortValue>,
@as("Key") key: option<sortKey>
}
type smartHomeAppliance = {
@as("ManufacturerName") manufacturerName: applianceManufacturerName,
@as("Description") description: applianceDescription,
@as("FriendlyName") friendlyName: applianceFriendlyName
}
type skillTypes = array<skillStoreType>
type skillSummary = {
@as("SkillType") skillType: skillType,
@as("EnablementType") enablementType: enablementType,
@as("SupportsLinking") supportsLinking: boolean2,
@as("SkillName") skillName: skillName,
@as("SkillId") skillId: skillId
}
exception SkillNotLinkedException;
type skillGroupData = {
@as("Description") description: skillGroupDescription,
@as("SkillGroupName") skillGroupName: skillGroupName,
@as("SkillGroupArn") skillGroupArn: arn
}
type skillGroup = {
@as("Description") description: skillGroupDescription,
@as("SkillGroupName") skillGroupName: skillGroupName,
@as("SkillGroupArn") skillGroupArn: arn
}
type sipAddress = {
@as("Type") type_: option<sipType>,
@as("Uri") uri: option<sipUri>
}
type shortSkillIdList = array<skillId>
type sampleUtterances = array<utterance>
type roomSkillParameter = {
@as("ParameterValue") parameterValue: option<roomSkillParameterValue>,
@as("ParameterKey") parameterKey: option<roomSkillParameterKey>
}
type roomData = {
@as("ProfileName") profileName: profileName,
@as("ProfileArn") profileArn: arn,
@as("ProviderCalendarId") providerCalendarId: providerCalendarId,
@as("Description") description: roomDescription,
@as("RoomName") roomName: roomName,
@as("RoomArn") roomArn: arn
}
type room = {
@as("ProfileArn") profileArn: arn,
@as("ProviderCalendarId") providerCalendarId: providerCalendarId,
@as("Description") description: roomDescription,
@as("RoomName") roomName: roomName,
@as("RoomArn") roomArn: arn
}
type reviews = Js.Dict.t< reviewValue>
exception ResourceInUseException;
exception ResourceAssociatedException;
type requireCheckIn = {
@as("Enabled") enabled: amazonawsBoolean,
@as("ReleaseAfterMinutes") releaseAfterMinutes: minutes
}
type profileData = {
@as("Locale") locale: deviceLocale,
@as("WakeWord") wakeWord: wakeWord,
@as("TemperatureUnit") temperatureUnit: temperatureUnit,
@as("DistanceUnit") distanceUnit: distanceUnit,
@as("Timezone") timezone: timezone,
@as("Address") address: address,
@as("IsDefault") isDefault: amazonawsBoolean,
@as("ProfileName") profileName: profileName,
@as("ProfileArn") profileArn: arn
}
type phoneNumber = {
@as("Type") type_: option<phoneNumberType>,
@as("Number") number: option<rawPhoneNumber>
}
type pSTNDialIn = {
@as("OneClickPinDelay") oneClickPinDelay: option<oneClickPinDelay>,
@as("OneClickIdDelay") oneClickIdDelay: option<oneClickIdDelay>,
@as("PhoneNumber") phoneNumber: option<outboundPhoneNumber>,
@as("CountryCode") countryCode: option<countryCode>
}
exception NotFoundException;
type newInThisVersionBulletPoints = array<bulletPoint>
type networkProfileData = {
@as("CertificateAuthorityArn") certificateAuthorityArn: arn,
@as("EapMethod") eapMethod: networkEapMethod,
@as("SecurityType") securityType: networkSecurityType,
@as("Ssid") ssid: networkSsid,
@as("Description") description: networkProfileDescription,
@as("NetworkProfileName") networkProfileName: networkProfileName,
@as("NetworkProfileArn") networkProfileArn: arn
}
exception NameInUseException;
type meetingSetting = {
@as("RequirePin") requirePin: option<requirePin>
}
exception LimitExceededException;
exception InvalidUserStatusException;
exception InvalidServiceLinkedRoleStateException;
exception InvalidSecretsManagerResourceException;
exception InvalidDeviceException;
exception InvalidCertificateAuthorityException;
type instantBooking = {
@as("Enabled") enabled: amazonawsBoolean,
@as("DurationInMinutes") durationInMinutes: minutes
}
type iPDialIn = {
@as("CommsProtocol") commsProtocol: option<commsProtocol>,
@as("Endpoint") endpoint: option<endpoint>
}
type genericKeywords = array<genericKeyword>
type gatewaySummary = {
@as("SoftwareVersion") softwareVersion: gatewayVersion,
@as("GatewayGroupArn") gatewayGroupArn: arn,
@as("Description") description: gatewayDescription,
@as("Name") name: gatewayName,
@as("Arn") arn: arn
}
type gatewayGroupSummary = {
@as("Description") description: gatewayGroupDescription,
@as("Name") name: gatewayGroupName,
@as("Arn") arn: arn
}
type gatewayGroup = {
@as("Description") description: gatewayGroupDescription,
@as("Name") name: gatewayGroupName,
@as("Arn") arn: arn
}
type gateway = {
@as("SoftwareVersion") softwareVersion: gatewayVersion,
@as("GatewayGroupArn") gatewayGroupArn: arn,
@as("Description") description: gatewayDescription,
@as("Name") name: gatewayName,
@as("Arn") arn: arn
}
type filterValueList = array<filterValue>
type features = array<feature>
type endOfMeetingReminderMinutesList = array<minutes>
type deviceStatusDetail = {
@as("Code") code: deviceStatusDetailCode,
@as("Feature") feature: feature
}
exception DeviceNotRegisteredException;
type deviceNetworkProfileInfo = {
@as("CertificateExpirationTime") certificateExpirationTime: certificateTime,
@as("CertificateArn") certificateArn: arn,
@as("NetworkProfileArn") networkProfileArn: arn
}
type deviceEvent = {
@as("Timestamp") timestamp: deviceEventTime,
@as("Value") value: deviceEventValue,
@as("Type") type_: deviceEventType
}
type developerInfo = {
@as("Url") url: url,
@as("Email") email: email,
@as("PrivacyPolicy") privacyPolicy: privacyPolicy,
@as("DeveloperName") developerName: developerName
}
type createRequireCheckIn = {
@as("Enabled") enabled: option<amazonawsBoolean>,
@as("ReleaseAfterMinutes") releaseAfterMinutes: option<minutes>
}
type createInstantBooking = {
@as("Enabled") enabled: option<amazonawsBoolean>,
@as("DurationInMinutes") durationInMinutes: option<minutes>
}
type conferencePreference = {
@as("DefaultConferenceProviderArn") defaultConferenceProviderArn: arn
}
exception ConcurrentModificationException;
type category = {
@as("CategoryName") categoryName: categoryName,
@as("CategoryId") categoryId: categoryId
}
type businessReportS3Location = {
@as("BucketName") bucketName: customerS3BucketName,
@as("Path") path: businessReportS3Path
}
type businessReportRecurrence = {
@as("StartDate") startDate: date
}
type businessReportContentRange = {
@as("Interval") interval: option<businessReportInterval>
}
type bulletPoints = array<bulletPoint>
type authorizationResult = Js.Dict.t< value>
type audio = {
@as("Location") location: option<audioLocation>,
@as("Locale") locale: option<locale>
}
exception AlreadyExistsException;
type addressBookData = {
@as("Description") description: addressBookDescription,
@as("Name") name: addressBookName,
@as("AddressBookArn") addressBookArn: arn
}
type addressBook = {
@as("Description") description: addressBookDescription,
@as("Name") name: addressBookName,
@as("AddressBookArn") addressBookArn: arn
}
type userDataList = array<userData>
type updateEndOfMeetingReminder = {
@as("Enabled") enabled: amazonawsBoolean,
@as("ReminderType") reminderType: endOfMeetingReminderType,
@as("ReminderAtMinutes") reminderAtMinutes: endOfMeetingReminderMinutesList
}
type textList = array<text>
type tagList = array<tag>
type ssmlList = array<ssml>
type sortList = array<sort>
type smartHomeApplianceList = array<smartHomeAppliance>
type skillSummaryList = array<skillSummary>
type skillGroupDataList = array<skillGroupData>
type skillDetails = {
@as("DeveloperInfo") developerInfo: developerInfo,
@as("Reviews") reviews: reviews,
@as("SkillTypes") skillTypes: skillTypes,
@as("NewInThisVersionBulletPoints") newInThisVersionBulletPoints: newInThisVersionBulletPoints,
@as("BulletPoints") bulletPoints: bulletPoints,
@as("GenericKeywords") genericKeywords: genericKeywords,
@as("EndUserLicenseAgreement") endUserLicenseAgreement: endUserLicenseAgreement,
@as("ReleaseDate") releaseDate: releaseDate,
@as("InvocationPhrase") invocationPhrase: invocationPhrase,
@as("ProductDescription") productDescription: productDescription
}
type sipAddressList = array<sipAddress>
type roomSkillParameters = array<roomSkillParameter>
type roomDataList = array<roomData>
type profileDataList = array<profileData>
type phoneNumberList = array<phoneNumber>
type networkProfileDataList = array<networkProfileData>
type networkProfile = {
@as("TrustAnchors") trustAnchors: trustAnchorList,
@as("CertificateAuthorityArn") certificateAuthorityArn: arn,
@as("NextPassword") nextPassword: nextWiFiPassword,
@as("CurrentPassword") currentPassword: currentWiFiPassword,
@as("EapMethod") eapMethod: networkEapMethod,
@as("SecurityType") securityType: networkSecurityType,
@as("Ssid") ssid: networkSsid,
@as("Description") description: networkProfileDescription,
@as("NetworkProfileName") networkProfileName: networkProfileName,
@as("NetworkProfileArn") networkProfileArn: arn
}
type gatewaySummaries = array<gatewaySummary>
type gatewayGroupSummaries = array<gatewayGroupSummary>
type filter = {
@as("Values") values: option<filterValueList>,
@as("Key") key: option<filterKey>
}
type endOfMeetingReminder = {
@as("Enabled") enabled: amazonawsBoolean,
@as("ReminderType") reminderType: endOfMeetingReminderType,
@as("ReminderAtMinutes") reminderAtMinutes: endOfMeetingReminderMinutesList
}
type deviceStatusDetails = array<deviceStatusDetail>
type deviceEventList = array<deviceEvent>
type createEndOfMeetingReminder = {
@as("Enabled") enabled: option<amazonawsBoolean>,
@as("ReminderType") reminderType: option<endOfMeetingReminderType>,
@as("ReminderAtMinutes") reminderAtMinutes: option<endOfMeetingReminderMinutesList>
}
type conferenceProvider = {
@as("MeetingSetting") meetingSetting: meetingSetting,
@as("PSTNDialIn") pSTNDialIn: pSTNDialIn,
@as("IPDialIn") iPDialIn: iPDialIn,
@as("Type") type_: conferenceProviderType,
@as("Name") name: conferenceProviderName,
@as("Arn") arn: arn
}
type categoryList = array<category>
type businessReport = {
@as("DownloadUrl") downloadUrl: businessReportDownloadUrl,
@as("DeliveryTime") deliveryTime: businessReportDeliveryTime,
@as("S3Location") s3Location: businessReportS3Location,
@as("FailureCode") failureCode: businessReportFailureCode,
@as("Status") status: businessReportStatus
}
type audioList = array<audio>
type addressBookDataList = array<addressBookData>
type updateMeetingRoomConfiguration = {
@as("RequireCheckIn") requireCheckIn: updateRequireCheckIn,
@as("InstantBooking") instantBooking: updateInstantBooking,
@as("EndOfMeetingReminder") endOfMeetingReminder: updateEndOfMeetingReminder,
@as("RoomUtilizationMetricsEnabled") roomUtilizationMetricsEnabled: amazonawsBoolean
}
type skillsStoreSkill = {
@as("SupportsLinking") supportsLinking: boolean2,
@as("SkillDetails") skillDetails: skillDetails,
@as("SampleUtterances") sampleUtterances: sampleUtterances,
@as("IconUrl") iconUrl: iconUrl,
@as("ShortDescription") shortDescription: shortDescription,
@as("SkillName") skillName: skillName,
@as("SkillId") skillId: skillId
}
type meetingRoomConfiguration = {
@as("RequireCheckIn") requireCheckIn: requireCheckIn,
@as("InstantBooking") instantBooking: instantBooking,
@as("EndOfMeetingReminder") endOfMeetingReminder: endOfMeetingReminder,
@as("RoomUtilizationMetricsEnabled") roomUtilizationMetricsEnabled: amazonawsBoolean
}
type filterList = array<filter>
type deviceStatusInfo = {
@as("ConnectionStatusUpdatedTime") connectionStatusUpdatedTime: connectionStatusUpdatedTime,
@as("ConnectionStatus") connectionStatus: connectionStatus,
@as("DeviceStatusDetails") deviceStatusDetails: deviceStatusDetails
}
type createMeetingRoomConfiguration = {
@as("RequireCheckIn") requireCheckIn: createRequireCheckIn,
@as("InstantBooking") instantBooking: createInstantBooking,
@as("EndOfMeetingReminder") endOfMeetingReminder: createEndOfMeetingReminder,
@as("RoomUtilizationMetricsEnabled") roomUtilizationMetricsEnabled: amazonawsBoolean
}
type content = {
@as("AudioList") audioList: audioList,
@as("SsmlList") ssmlList: ssmlList,
@as("TextList") textList: textList
}
type contactData = {
@as("SipAddresses") sipAddresses: sipAddressList,
@as("PhoneNumbers") phoneNumbers: phoneNumberList,
@as("PhoneNumber") phoneNumber: rawPhoneNumber,
@as("LastName") lastName: contactName,
@as("FirstName") firstName: contactName,
@as("DisplayName") displayName: contactName,
@as("ContactArn") contactArn: arn
}
type contact = {
@as("SipAddresses") sipAddresses: sipAddressList,
@as("PhoneNumbers") phoneNumbers: phoneNumberList,
@as("PhoneNumber") phoneNumber: rawPhoneNumber,
@as("LastName") lastName: contactName,
@as("FirstName") firstName: contactName,
@as("DisplayName") displayName: contactName,
@as("ContactArn") contactArn: arn
}
type conferenceProvidersList = array<conferenceProvider>
type businessReportSchedule = {
@as("LastBusinessReport") lastBusinessReport: businessReport,
@as("Recurrence") recurrence: businessReportRecurrence,
@as("ContentRange") contentRange: businessReportContentRange,
@as("Format") format: businessReportFormat,
@as("S3KeyPrefix") s3KeyPrefix: s3KeyPrefix,
@as("S3BucketName") s3BucketName: customerS3BucketName,
@as("ScheduleName") scheduleName: businessReportScheduleName,
@as("ScheduleArn") scheduleArn: arn
}
type skillsStoreSkillList = array<skillsStoreSkill>
type profile = {
@as("MeetingRoomConfiguration") meetingRoomConfiguration: meetingRoomConfiguration,
@as("AddressBookArn") addressBookArn: arn,
@as("DataRetentionOptIn") dataRetentionOptIn: amazonawsBoolean,
@as("PSTNEnabled") pSTNEnabled: amazonawsBoolean,
@as("MaxVolumeLimit") maxVolumeLimit: maxVolumeLimit,
@as("SetupModeDisabled") setupModeDisabled: amazonawsBoolean,
@as("Locale") locale: deviceLocale,
@as("WakeWord") wakeWord: wakeWord,
@as("TemperatureUnit") temperatureUnit: temperatureUnit,
@as("DistanceUnit") distanceUnit: distanceUnit,
@as("Timezone") timezone: timezone,
@as("Address") address: address,
@as("IsDefault") isDefault: amazonawsBoolean,
@as("ProfileName") profileName: profileName,
@as("ProfileArn") profileArn: arn
}
type deviceData = {
@as("CreatedTime") createdTime: deviceDataCreatedTime,
@as("DeviceStatusInfo") deviceStatusInfo: deviceStatusInfo,
@as("RoomName") roomName: deviceRoomName,
@as("RoomArn") roomArn: arn,
@as("NetworkProfileName") networkProfileName: networkProfileName,
@as("NetworkProfileArn") networkProfileArn: arn,
@as("DeviceStatus") deviceStatus: deviceStatus,
@as("MacAddress") macAddress: macAddress,
@as("SoftwareVersion") softwareVersion: softwareVersion,
@as("DeviceName") deviceName: deviceName,
@as("DeviceType") deviceType: deviceType,
@as("DeviceSerialNumber") deviceSerialNumber: deviceSerialNumber,
@as("DeviceArn") deviceArn: arn
}
type device = {
@as("NetworkProfileInfo") networkProfileInfo: deviceNetworkProfileInfo,
@as("DeviceStatusInfo") deviceStatusInfo: deviceStatusInfo,
@as("DeviceStatus") deviceStatus: deviceStatus,
@as("RoomArn") roomArn: arn,
@as("MacAddress") macAddress: macAddress,
@as("SoftwareVersion") softwareVersion: softwareVersion,
@as("DeviceName") deviceName: deviceName,
@as("DeviceType") deviceType: deviceType,
@as("DeviceSerialNumber") deviceSerialNumber: deviceSerialNumber,
@as("DeviceArn") deviceArn: arn
}
type contactDataList = array<contactData>
type businessReportScheduleList = array<businessReportSchedule>
type deviceDataList = array<deviceData>
type clientType;
@module("@aws-sdk/client-a4b") @new external createClient: unit => clientType = "AlexaForBusinessClient";
module UpdateSkillGroup = {
  type t;
  type response = unit
type request = {
@as("Description") description: skillGroupDescription,
@as("SkillGroupName") skillGroupName: skillGroupName,
@as("SkillGroupArn") skillGroupArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "UpdateSkillGroupCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRoom = {
  type t;
  type response = unit
type request = {
@as("ProfileArn") profileArn: arn,
@as("ProviderCalendarId") providerCalendarId: providerCalendarId,
@as("Description") description: roomDescription,
@as("RoomName") roomName: roomName,
@as("RoomArn") roomArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "UpdateRoomCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGatewayGroup = {
  type t;
  type response = unit
type request = {
@as("Description") description: gatewayGroupDescription,
@as("Name") name: gatewayGroupName,
@as("GatewayGroupArn") gatewayGroupArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "UpdateGatewayGroupCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGateway = {
  type t;
  type response = unit
type request = {
@as("SoftwareVersion") softwareVersion: gatewayVersion,
@as("Description") description: gatewayDescription,
@as("Name") name: gatewayName,
@as("GatewayArn") gatewayArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "UpdateGatewayCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDevice = {
  type t;
  type response = unit
type request = {
@as("DeviceName") deviceName: deviceName,
@as("DeviceArn") deviceArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "UpdateDeviceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAddressBook = {
  type t;
  type response = unit
type request = {
@as("Description") description: addressBookDescription,
@as("Name") name: addressBookName,
@as("AddressBookArn") addressBookArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "UpdateAddressBookCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartSmartHomeApplianceDiscovery = {
  type t;
  type response = unit
type request = {
@as("RoomArn") roomArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "StartSmartHomeApplianceDiscoveryCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendInvitation = {
  type t;
  type response = unit
type request = {
@as("UserArn") userArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "SendInvitationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module RevokeInvitation = {
  type t;
  type response = unit
type request = {
@as("EnrollmentId") enrollmentId: enrollmentId,
@as("UserArn") userArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "RevokeInvitationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module RejectSkill = {
  type t;
  type response = unit
type request = {
@as("SkillId") skillId: option<skillId>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "RejectSkillCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ForgetSmartHomeAppliances = {
  type t;
  type response = unit
type request = {
@as("RoomArn") roomArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "ForgetSmartHomeAppliancesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateSkillGroupFromRoom = {
  type t;
  type response = unit
type request = {
@as("RoomArn") roomArn: arn,
@as("SkillGroupArn") skillGroupArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DisassociateSkillGroupFromRoomCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateSkillFromUsers = {
  type t;
  type response = unit
type request = {
@as("SkillId") skillId: option<skillId>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DisassociateSkillFromUsersCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateSkillFromSkillGroup = {
  type t;
  type response = unit
type request = {
@as("SkillId") skillId: option<skillId>,
@as("SkillGroupArn") skillGroupArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DisassociateSkillFromSkillGroupCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateDeviceFromRoom = {
  type t;
  type response = unit
type request = {
@as("DeviceArn") deviceArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DisassociateDeviceFromRoomCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateContactFromAddressBook = {
  type t;
  type response = unit
type request = {
@as("AddressBookArn") addressBookArn: option<arn>,
@as("ContactArn") contactArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DisassociateContactFromAddressBookCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteUser = {
  type t;
  type response = unit
type request = {
@as("EnrollmentId") enrollmentId: option<enrollmentId>,
@as("UserArn") userArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DeleteUserCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSkillGroup = {
  type t;
  type response = unit
type request = {
@as("SkillGroupArn") skillGroupArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DeleteSkillGroupCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSkillAuthorization = {
  type t;
  type response = unit
type request = {
@as("RoomArn") roomArn: arn,
@as("SkillId") skillId: option<skillId>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DeleteSkillAuthorizationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRoomSkillParameter = {
  type t;
  type response = unit
type request = {
@as("ParameterKey") parameterKey: option<roomSkillParameterKey>,
@as("SkillId") skillId: option<skillId>,
@as("RoomArn") roomArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DeleteRoomSkillParameterCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRoom = {
  type t;
  type response = unit
type request = {
@as("RoomArn") roomArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DeleteRoomCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProfile = {
  type t;
  type response = unit
type request = {
@as("ProfileArn") profileArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DeleteProfileCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteNetworkProfile = {
  type t;
  type response = unit
type request = {
@as("NetworkProfileArn") networkProfileArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DeleteNetworkProfileCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGatewayGroup = {
  type t;
  type response = unit
type request = {
@as("GatewayGroupArn") gatewayGroupArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DeleteGatewayGroupCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDeviceUsageData = {
  type t;
  type response = unit
type request = {
@as("DeviceUsageType") deviceUsageType: option<deviceUsageType>,
@as("DeviceArn") deviceArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DeleteDeviceUsageDataCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDevice = {
  type t;
  type response = unit
type request = {
@as("DeviceArn") deviceArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DeleteDeviceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteContact = {
  type t;
  type response = unit
type request = {
@as("ContactArn") contactArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DeleteContactCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConferenceProvider = {
  type t;
  type response = unit
type request = {
@as("ConferenceProviderArn") conferenceProviderArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DeleteConferenceProviderCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBusinessReportSchedule = {
  type t;
  type response = unit
type request = {
@as("ScheduleArn") scheduleArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DeleteBusinessReportScheduleCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAddressBook = {
  type t;
  type response = unit
type request = {
@as("AddressBookArn") addressBookArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "DeleteAddressBookCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateSkillWithUsers = {
  type t;
  type response = unit
type request = {
@as("SkillId") skillId: option<skillId>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "AssociateSkillWithUsersCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateSkillWithSkillGroup = {
  type t;
  type response = unit
type request = {
@as("SkillId") skillId: option<skillId>,
@as("SkillGroupArn") skillGroupArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "AssociateSkillWithSkillGroupCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateSkillGroupWithRoom = {
  type t;
  type response = unit
type request = {
@as("RoomArn") roomArn: arn,
@as("SkillGroupArn") skillGroupArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "AssociateSkillGroupWithRoomCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateDeviceWithRoom = {
  type t;
  type response = unit
type request = {
@as("RoomArn") roomArn: arn,
@as("DeviceArn") deviceArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "AssociateDeviceWithRoomCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateDeviceWithNetworkProfile = {
  type t;
  type response = unit
type request = {
@as("NetworkProfileArn") networkProfileArn: option<arn>,
@as("DeviceArn") deviceArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "AssociateDeviceWithNetworkProfileCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateContactWithAddressBook = {
  type t;
  type response = unit
type request = {
@as("AddressBookArn") addressBookArn: option<arn>,
@as("ContactArn") contactArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "AssociateContactWithAddressBookCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ApproveSkill = {
  type t;
  type response = unit
type request = {
@as("SkillId") skillId: option<skillId>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "ApproveSkillCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateNetworkProfile = {
  type t;
  type response = unit
type request = {
@as("TrustAnchors") trustAnchors: trustAnchorList,
@as("CertificateAuthorityArn") certificateAuthorityArn: arn,
@as("NextPassword") nextPassword: nextWiFiPassword,
@as("CurrentPassword") currentPassword: currentWiFiPassword,
@as("Description") description: networkProfileDescription,
@as("NetworkProfileName") networkProfileName: networkProfileName,
@as("NetworkProfileArn") networkProfileArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "UpdateNetworkProfileCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConferenceProvider = {
  type t;
  type response = unit
type request = {
@as("MeetingSetting") meetingSetting: option<meetingSetting>,
@as("PSTNDialIn") pSTNDialIn: pSTNDialIn,
@as("IPDialIn") iPDialIn: iPDialIn,
@as("ConferenceProviderType") conferenceProviderType: option<conferenceProviderType>,
@as("ConferenceProviderArn") conferenceProviderArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "UpdateConferenceProviderCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBusinessReportSchedule = {
  type t;
  type response = unit
type request = {
@as("Recurrence") recurrence: businessReportRecurrence,
@as("ScheduleName") scheduleName: businessReportScheduleName,
@as("Format") format: businessReportFormat,
@as("S3KeyPrefix") s3KeyPrefix: s3KeyPrefix,
@as("S3BucketName") s3BucketName: customerS3BucketName,
@as("ScheduleArn") scheduleArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "UpdateBusinessReportScheduleCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type response = unit
type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartDeviceSync = {
  type t;
  type response = unit
type request = {
@as("Features") features: option<features>,
@as("DeviceArn") deviceArn: arn,
@as("RoomArn") roomArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "StartDeviceSyncCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutSkillAuthorization = {
  type t;
  type response = unit
type request = {
@as("RoomArn") roomArn: arn,
@as("SkillId") skillId: option<skillId>,
@as("AuthorizationResult") authorizationResult: option<authorizationResult>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "PutSkillAuthorizationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutRoomSkillParameter = {
  type t;
  type response = unit
type request = {
@as("RoomSkillParameter") roomSkillParameter: option<roomSkillParameter>,
@as("SkillId") skillId: option<skillId>,
@as("RoomArn") roomArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "PutRoomSkillParameterCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutInvitationConfiguration = {
  type t;
  type response = unit
type request = {
@as("PrivateSkillIds") privateSkillIds: shortSkillIdList,
@as("ContactEmail") contactEmail: email,
@as("OrganizationName") organizationName: option<organizationName>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "PutInvitationConfigurationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutConferencePreference = {
  type t;
  type response = unit
type request = {
@as("ConferencePreference") conferencePreference: option<conferencePreference>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "PutConferencePreferenceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSkillGroup = {
  type t;
  type request = {
@as("SkillGroupArn") skillGroupArn: arn
}
type response = {
@as("SkillGroup") skillGroup: skillGroup
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "GetSkillGroupCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRoomSkillParameter = {
  type t;
  type request = {
@as("ParameterKey") parameterKey: option<roomSkillParameterKey>,
@as("SkillId") skillId: option<skillId>,
@as("RoomArn") roomArn: arn
}
type response = {
@as("RoomSkillParameter") roomSkillParameter: roomSkillParameter
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "GetRoomSkillParameterCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRoom = {
  type t;
  type request = {
@as("RoomArn") roomArn: arn
}
type response = {
@as("Room") room: room
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "GetRoomCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInvitationConfiguration = {
  type t;
  type request = unit
type response = {
@as("PrivateSkillIds") privateSkillIds: shortSkillIdList,
@as("ContactEmail") contactEmail: email,
@as("OrganizationName") organizationName: organizationName
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "GetInvitationConfigurationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGatewayGroup = {
  type t;
  type request = {
@as("GatewayGroupArn") gatewayGroupArn: option<arn>
}
type response = {
@as("GatewayGroup") gatewayGroup: gatewayGroup
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "GetGatewayGroupCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGateway = {
  type t;
  type request = {
@as("GatewayArn") gatewayArn: option<arn>
}
type response = {
@as("Gateway") gateway: gateway
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "GetGatewayCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConferencePreference = {
  type t;
  type request = unit
type response = {
@as("Preference") preference: conferencePreference
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "GetConferencePreferenceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAddressBook = {
  type t;
  type request = {
@as("AddressBookArn") addressBookArn: option<arn>
}
type response = {
@as("AddressBook") addressBook: addressBook
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "GetAddressBookCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateContact = {
  type t;
  type response = unit
type request = {
@as("SipAddresses") sipAddresses: sipAddressList,
@as("PhoneNumbers") phoneNumbers: phoneNumberList,
@as("PhoneNumber") phoneNumber: rawPhoneNumber,
@as("LastName") lastName: contactName,
@as("FirstName") firstName: contactName,
@as("DisplayName") displayName: contactName,
@as("ContactArn") contactArn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "UpdateContactCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type response = unit
type request = {
@as("Tags") tags: option<tagList>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResolveRoom = {
  type t;
  type request = {
@as("SkillId") skillId: option<skillId>,
@as("UserId") userId: option<userId>
}
type response = {
@as("RoomSkillParameters") roomSkillParameters: roomSkillParameters,
@as("RoomName") roomName: roomName,
@as("RoomArn") roomArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "ResolveRoomCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterAVSDevice = {
  type t;
  type response = {
@as("DeviceArn") deviceArn: arn
}
type request = {
@as("Tags") tags: tagList,
@as("RoomArn") roomArn: arn,
@as("AmazonId") amazonId: option<amazonId>,
@as("DeviceSerialNumber") deviceSerialNumber: deviceSerialNumberForAVS,
@as("ProductId") productId: option<productId>,
@as("UserCode") userCode: option<userCode>,
@as("ClientId") clientId: option<clientId>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "RegisterAVSDeviceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTags = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("Arn") arn: option<arn>
}
type response = {
@as("NextToken") nextToken: nextToken,
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "ListTagsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSmartHomeAppliances = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("RoomArn") roomArn: option<arn>
}
type response = {
@as("NextToken") nextToken: nextToken,
@as("SmartHomeAppliances") smartHomeAppliances: smartHomeApplianceList
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "ListSmartHomeAppliancesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSkillsStoreCategories = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
type response = {
@as("NextToken") nextToken: nextToken,
@as("CategoryList") categoryList: categoryList
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "ListSkillsStoreCategoriesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSkills = {
  type t;
  type request = {
@as("MaxResults") maxResults: skillListMaxResults,
@as("NextToken") nextToken: nextToken,
@as("SkillType") skillType: skillTypeFilter,
@as("EnablementType") enablementType: enablementTypeFilter,
@as("SkillGroupArn") skillGroupArn: arn
}
type response = {
@as("NextToken") nextToken: nextToken,
@as("SkillSummaries") skillSummaries: skillSummaryList
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "ListSkillsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGateways = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("GatewayGroupArn") gatewayGroupArn: arn
}
type response = {
@as("NextToken") nextToken: nextToken,
@as("Gateways") gateways: gatewaySummaries
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "ListGatewaysCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGatewayGroups = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
type response = {
@as("NextToken") nextToken: nextToken,
@as("GatewayGroups") gatewayGroups: gatewayGroupSummaries
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "ListGatewayGroupsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeviceEvents = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("EventType") eventType: deviceEventType,
@as("DeviceArn") deviceArn: option<arn>
}
type response = {
@as("NextToken") nextToken: nextToken,
@as("DeviceEvents") deviceEvents: deviceEventList
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "ListDeviceEventsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetNetworkProfile = {
  type t;
  type request = {
@as("NetworkProfileArn") networkProfileArn: option<arn>
}
type response = {
@as("NetworkProfile") networkProfile: networkProfile
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "GetNetworkProfileCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConferenceProvider = {
  type t;
  type request = {
@as("ConferenceProviderArn") conferenceProviderArn: option<arn>
}
type response = {
@as("ConferenceProvider") conferenceProvider: conferenceProvider
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "GetConferenceProviderCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUser = {
  type t;
  type response = {
@as("UserArn") userArn: arn
}
type request = {
@as("Tags") tags: tagList,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Email") email: email,
@as("LastName") lastName: user_LastName,
@as("FirstName") firstName: user_FirstName,
@as("UserId") userId: option<user_UserId>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "CreateUserCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSkillGroup = {
  type t;
  type response = {
@as("SkillGroupArn") skillGroupArn: arn
}
type request = {
@as("Tags") tags: tagList,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Description") description: skillGroupDescription,
@as("SkillGroupName") skillGroupName: option<skillGroupName>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "CreateSkillGroupCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRoom = {
  type t;
  type response = {
@as("RoomArn") roomArn: arn
}
type request = {
@as("Tags") tags: tagList,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("ProviderCalendarId") providerCalendarId: providerCalendarId,
@as("ProfileArn") profileArn: arn,
@as("Description") description: roomDescription,
@as("RoomName") roomName: option<roomName>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "CreateRoomCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateNetworkProfile = {
  type t;
  type response = {
@as("NetworkProfileArn") networkProfileArn: arn
}
type request = {
@as("Tags") tags: tagList,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("TrustAnchors") trustAnchors: trustAnchorList,
@as("CertificateAuthorityArn") certificateAuthorityArn: arn,
@as("NextPassword") nextPassword: nextWiFiPassword,
@as("CurrentPassword") currentPassword: currentWiFiPassword,
@as("EapMethod") eapMethod: networkEapMethod,
@as("SecurityType") securityType: option<networkSecurityType>,
@as("Ssid") ssid: option<networkSsid>,
@as("Description") description: networkProfileDescription,
@as("NetworkProfileName") networkProfileName: option<networkProfileName>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "CreateNetworkProfileCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGatewayGroup = {
  type t;
  type response = {
@as("GatewayGroupArn") gatewayGroupArn: arn
}
type request = {
@as("Tags") tags: tagList,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("Description") description: gatewayGroupDescription,
@as("Name") name: option<gatewayGroupName>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "CreateGatewayGroupCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateContact = {
  type t;
  type response = {
@as("ContactArn") contactArn: arn
}
type request = {
@as("Tags") tags: tagList,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("SipAddresses") sipAddresses: sipAddressList,
@as("PhoneNumbers") phoneNumbers: phoneNumberList,
@as("PhoneNumber") phoneNumber: rawPhoneNumber,
@as("LastName") lastName: contactName,
@as("FirstName") firstName: option<contactName>,
@as("DisplayName") displayName: contactName
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "CreateContactCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConferenceProvider = {
  type t;
  type response = {
@as("ConferenceProviderArn") conferenceProviderArn: arn
}
type request = {
@as("Tags") tags: tagList,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("MeetingSetting") meetingSetting: option<meetingSetting>,
@as("PSTNDialIn") pSTNDialIn: pSTNDialIn,
@as("IPDialIn") iPDialIn: iPDialIn,
@as("ConferenceProviderType") conferenceProviderType: option<conferenceProviderType>,
@as("ConferenceProviderName") conferenceProviderName: option<conferenceProviderName>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "CreateConferenceProviderCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBusinessReportSchedule = {
  type t;
  type response = {
@as("ScheduleArn") scheduleArn: arn
}
type request = {
@as("Tags") tags: tagList,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Recurrence") recurrence: businessReportRecurrence,
@as("ContentRange") contentRange: option<businessReportContentRange>,
@as("Format") format: option<businessReportFormat>,
@as("S3KeyPrefix") s3KeyPrefix: s3KeyPrefix,
@as("S3BucketName") s3BucketName: customerS3BucketName,
@as("ScheduleName") scheduleName: businessReportScheduleName
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "CreateBusinessReportScheduleCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAddressBook = {
  type t;
  type response = {
@as("AddressBookArn") addressBookArn: arn
}
type request = {
@as("Tags") tags: tagList,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Description") description: addressBookDescription,
@as("Name") name: option<addressBookName>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "CreateAddressBookCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateProfile = {
  type t;
  type response = unit
type request = {
@as("MeetingRoomConfiguration") meetingRoomConfiguration: updateMeetingRoomConfiguration,
@as("DataRetentionOptIn") dataRetentionOptIn: amazonawsBoolean,
@as("PSTNEnabled") pSTNEnabled: amazonawsBoolean,
@as("MaxVolumeLimit") maxVolumeLimit: maxVolumeLimit,
@as("SetupModeDisabled") setupModeDisabled: amazonawsBoolean,
@as("Locale") locale: deviceLocale,
@as("WakeWord") wakeWord: wakeWord,
@as("TemperatureUnit") temperatureUnit: temperatureUnit,
@as("DistanceUnit") distanceUnit: distanceUnit,
@as("Address") address: address,
@as("Timezone") timezone: timezone,
@as("IsDefault") isDefault: amazonawsBoolean,
@as("ProfileName") profileName: profileName,
@as("ProfileArn") profileArn: arn
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "UpdateProfileCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendAnnouncement = {
  type t;
  type response = {
@as("AnnouncementArn") announcementArn: arn
}
type request = {
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("TimeToLiveInSeconds") timeToLiveInSeconds: timeToLiveInSeconds,
@as("Content") content: option<content>,
@as("RoomFilters") roomFilters: option<filterList>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "SendAnnouncementCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchUsers = {
  type t;
  type response = {
@as("TotalCount") totalCount: totalCount,
@as("NextToken") nextToken: nextToken,
@as("Users") users: userDataList
}
type request = {
@as("SortCriteria") sortCriteria: sortList,
@as("Filters") filters: filterList,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "SearchUsersCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchSkillGroups = {
  type t;
  type response = {
@as("TotalCount") totalCount: totalCount,
@as("NextToken") nextToken: nextToken,
@as("SkillGroups") skillGroups: skillGroupDataList
}
type request = {
@as("SortCriteria") sortCriteria: sortList,
@as("Filters") filters: filterList,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "SearchSkillGroupsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchRooms = {
  type t;
  type response = {
@as("TotalCount") totalCount: totalCount,
@as("NextToken") nextToken: nextToken,
@as("Rooms") rooms: roomDataList
}
type request = {
@as("SortCriteria") sortCriteria: sortList,
@as("Filters") filters: filterList,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "SearchRoomsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchProfiles = {
  type t;
  type response = {
@as("TotalCount") totalCount: totalCount,
@as("NextToken") nextToken: nextToken,
@as("Profiles") profiles: profileDataList
}
type request = {
@as("SortCriteria") sortCriteria: sortList,
@as("Filters") filters: filterList,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "SearchProfilesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchNetworkProfiles = {
  type t;
  type response = {
@as("TotalCount") totalCount: totalCount,
@as("NextToken") nextToken: nextToken,
@as("NetworkProfiles") networkProfiles: networkProfileDataList
}
type request = {
@as("SortCriteria") sortCriteria: sortList,
@as("Filters") filters: filterList,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "SearchNetworkProfilesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchAddressBooks = {
  type t;
  type response = {
@as("TotalCount") totalCount: totalCount,
@as("NextToken") nextToken: nextToken,
@as("AddressBooks") addressBooks: addressBookDataList
}
type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("SortCriteria") sortCriteria: sortList,
@as("Filters") filters: filterList
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "SearchAddressBooksCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConferenceProviders = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
type response = {
@as("NextToken") nextToken: nextToken,
@as("ConferenceProviders") conferenceProviders: conferenceProvidersList
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "ListConferenceProvidersCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContact = {
  type t;
  type request = {
@as("ContactArn") contactArn: option<arn>
}
type response = {
@as("Contact") contact: contact
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "GetContactCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProfile = {
  type t;
  type response = {
@as("ProfileArn") profileArn: arn
}
type request = {
@as("Tags") tags: tagList,
@as("MeetingRoomConfiguration") meetingRoomConfiguration: createMeetingRoomConfiguration,
@as("DataRetentionOptIn") dataRetentionOptIn: amazonawsBoolean,
@as("PSTNEnabled") pSTNEnabled: amazonawsBoolean,
@as("MaxVolumeLimit") maxVolumeLimit: maxVolumeLimit,
@as("SetupModeDisabled") setupModeDisabled: amazonawsBoolean,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Locale") locale: deviceLocale,
@as("WakeWord") wakeWord: option<wakeWord>,
@as("TemperatureUnit") temperatureUnit: option<temperatureUnit>,
@as("DistanceUnit") distanceUnit: option<distanceUnit>,
@as("Address") address: option<address>,
@as("Timezone") timezone: option<timezone>,
@as("ProfileName") profileName: option<profileName>
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "CreateProfileCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchContacts = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("SortCriteria") sortCriteria: sortList,
@as("Filters") filters: filterList
}
type response = {
@as("TotalCount") totalCount: totalCount,
@as("NextToken") nextToken: nextToken,
@as("Contacts") contacts: contactDataList
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "SearchContactsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSkillsStoreSkillsByCategory = {
  type t;
  type request = {
@as("MaxResults") maxResults: skillListMaxResults,
@as("NextToken") nextToken: nextToken,
@as("CategoryId") categoryId: option<categoryId>
}
type response = {
@as("NextToken") nextToken: nextToken,
@as("SkillsStoreSkills") skillsStoreSkills: skillsStoreSkillList
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "ListSkillsStoreSkillsByCategoryCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBusinessReportSchedules = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
type response = {
@as("NextToken") nextToken: nextToken,
@as("BusinessReportSchedules") businessReportSchedules: businessReportScheduleList
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "ListBusinessReportSchedulesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetProfile = {
  type t;
  type request = {
@as("ProfileArn") profileArn: arn
}
type response = {
@as("Profile") profile: profile
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "GetProfileCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDevice = {
  type t;
  type request = {
@as("DeviceArn") deviceArn: arn
}
type response = {
@as("Device") device: device
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "GetDeviceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchDevices = {
  type t;
  type request = {
@as("SortCriteria") sortCriteria: sortList,
@as("Filters") filters: filterList,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
type response = {
@as("TotalCount") totalCount: totalCount,
@as("NextToken") nextToken: nextToken,
@as("Devices") devices: deviceDataList
}
  @module("@aws-sdk/client-a4b") @new external new_: (Js.Promise.t<request>) => t = "SearchDevicesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}
