type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __timestampIso8601 = Js.Date.t;
type __string = string
type __integer = int;
type __double = float;
type __boolean = bool;
type __blob = NodeJs.Buffer.t;
type __EndpointTypesElement = [@as("CUSTOM") #CUSTOM | @as("BAIDU") #BAIDU | @as("EMAIL") #EMAIL | @as("VOICE") #VOICE | @as("SMS") #SMS | @as("ADM") #ADM | @as("APNS_VOIP_SANDBOX") #APNS_VOIP_SANDBOX | @as("APNS_VOIP") #APNS_VOIP | @as("APNS_SANDBOX") #APNS_SANDBOX | @as("APNS") #APNS | @as("GCM") #GCM | @as("PUSH") #PUSH]
type type_ = [@as("NONE") #NONE | @as("ANY") #ANY | @as("ALL") #ALL]
type templateType = [@as("PUSH") #PUSH | @as("VOICE") #VOICE | @as("SMS") #SMS | @as("EMAIL") #EMAIL]
type state = [@as("PAUSED") #PAUSED | @as("CLOSED") #CLOSED | @as("CANCELLED") #CANCELLED | @as("COMPLETED") #COMPLETED | @as("ACTIVE") #ACTIVE | @as("DRAFT") #DRAFT]
type sourceType = [@as("NONE") #NONE | @as("ANY") #ANY | @as("ALL") #ALL]
type segmentType = [@as("IMPORT") #IMPORT | @as("DIMENSIONAL") #DIMENSIONAL]
type recencyType = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type operator = [@as("ANY") #ANY | @as("ALL") #ALL]
type mode = [@as("FILTER") #FILTER | @as("DELIVERY") #DELIVERY]
type messageType = [@as("PROMOTIONAL") #PROMOTIONAL | @as("TRANSACTIONAL") #TRANSACTIONAL]
type jobStatus = [@as("FAILED") #FAILED | @as("FAILING") #FAILING | @as("COMPLETED") #COMPLETED | @as("COMPLETING") #COMPLETING | @as("PENDING_JOB") #PENDING_JOB | @as("PROCESSING") #PROCESSING | @as("INITIALIZING") #INITIALIZING | @as("PREPARING_FOR_INITIALIZATION") #PREPARING_FOR_INITIALIZATION | @as("CREATED") #CREATED]
type include = [@as("NONE") #NONE | @as("ANY") #ANY | @as("ALL") #ALL]
type frequency = [@as("EVENT") #EVENT | @as("MONTHLY") #MONTHLY | @as("WEEKLY") #WEEKLY | @as("DAILY") #DAILY | @as("HOURLY") #HOURLY | @as("ONCE") #ONCE]
type format = [@as("JSON") #JSON | @as("CSV") #CSV]
type filterType = [@as("ENDPOINT") #ENDPOINT | @as("SYSTEM") #SYSTEM]
type duration = [@as("DAY_30") #DAY_30 | @as("DAY_14") #DAY_14 | @as("DAY_7") #DAY_7 | @as("HR_24") #HR_24]
type dimensionType = [@as("EXCLUSIVE") #EXCLUSIVE | @as("INCLUSIVE") #INCLUSIVE]
type deliveryStatus = [@as("DUPLICATE") #DUPLICATE | @as("OPT_OUT") #OPT_OUT | @as("UNKNOWN_FAILURE") #UNKNOWN_FAILURE | @as("PERMANENT_FAILURE") #PERMANENT_FAILURE | @as("TEMPORARY_FAILURE") #TEMPORARY_FAILURE | @as("THROTTLED") #THROTTLED | @as("SUCCESSFUL") #SUCCESSFUL]
type channelType = [@as("CUSTOM") #CUSTOM | @as("BAIDU") #BAIDU | @as("EMAIL") #EMAIL | @as("VOICE") #VOICE | @as("SMS") #SMS | @as("ADM") #ADM | @as("APNS_VOIP_SANDBOX") #APNS_VOIP_SANDBOX | @as("APNS_VOIP") #APNS_VOIP | @as("APNS_SANDBOX") #APNS_SANDBOX | @as("APNS") #APNS | @as("GCM") #GCM | @as("PUSH") #PUSH]
type campaignStatus = [@as("INVALID") #INVALID | @as("DELETED") #DELETED | @as("PAUSED") #PAUSED | @as("COMPLETED") #COMPLETED | @as("PENDING_NEXT_RUN") #PENDING_NEXT_RUN | @as("EXECUTING") #EXECUTING | @as("SCHEDULED") #SCHEDULED]
type attributeType = [@as("BETWEEN") #BETWEEN | @as("ON") #ON | @as("AFTER") #AFTER | @as("BEFORE") #BEFORE | @as("CONTAINS") #CONTAINS | @as("EXCLUSIVE") #EXCLUSIVE | @as("INCLUSIVE") #INCLUSIVE]
type action = [@as("URL") #URL | @as("DEEP_LINK") #DEEP_LINK | @as("OPEN_APP") #OPEN_APP]
type writeEventStream = {
@as("RoleArn") roleArn: option<__string>,
@as("DestinationStreamArn") destinationStreamArn: option<__string>
}
type waitTime = {
@as("WaitUntil") waitUntil: __string,
@as("WaitFor") waitFor: __string
}
type voiceChannelResponse = {
@as("Version") version: __integer,
@as("Platform") platform: option<__string>,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("LastModifiedBy") lastModifiedBy: __string,
@as("IsArchived") isArchived: __boolean,
@as("Id") id: __string,
@as("HasCredential") hasCredential: __boolean,
@as("Enabled") enabled: __boolean,
@as("CreationDate") creationDate: __string,
@as("ApplicationId") applicationId: __string
}
type voiceChannelRequest = {
@as("Enabled") enabled: __boolean
}
type templateVersionResponse = {
@as("Version") version: __string,
@as("TemplateType") templateType: option<__string>,
@as("TemplateName") templateName: option<__string>,
@as("TemplateDescription") templateDescription: __string,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("DefaultSubstitutions") defaultSubstitutions: __string,
@as("CreationDate") creationDate: option<__string>
}
type templateActiveVersionRequest = {
@as("Version") version: __string
}
type template = {
@as("Version") version: __string,
@as("Name") name: __string
}
type simpleEmailPart = {
@as("Data") data: __string,
@as("Charset") charset: __string
}
type session = {
@as("StopTimestamp") stopTimestamp: __string,
@as("StartTimestamp") startTimestamp: option<__string>,
@as("Id") id: option<__string>,
@as("Duration") duration: __integer
}
type segmentReference = {
@as("Version") version: __integer,
@as("Id") id: option<__string>
}
type segmentCondition = {
@as("SegmentId") segmentId: option<__string>
}
type sMSChannelResponse = {
@as("Version") version: __integer,
@as("TransactionalMessagesPerSecond") transactionalMessagesPerSecond: __integer,
@as("ShortCode") shortCode: __string,
@as("SenderId") senderId: __string,
@as("PromotionalMessagesPerSecond") promotionalMessagesPerSecond: __integer,
@as("Platform") platform: option<__string>,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("LastModifiedBy") lastModifiedBy: __string,
@as("IsArchived") isArchived: __boolean,
@as("Id") id: __string,
@as("HasCredential") hasCredential: __boolean,
@as("Enabled") enabled: __boolean,
@as("CreationDate") creationDate: __string,
@as("ApplicationId") applicationId: __string
}
type sMSChannelRequest = {
@as("ShortCode") shortCode: __string,
@as("SenderId") senderId: __string,
@as("Enabled") enabled: __boolean
}
type resultRowValue = {
@as("Value") value: option<__string>,
@as("Type") type_: option<__string>,
@as("Key") key: option<__string>
}
type recencyDimension = {
@as("RecencyType") recencyType: option<recencyType>,
@as("Duration") duration: option<duration>
}
type rawEmail = {
@as("Data") data: __blob
}
type randomSplitEntry = {
@as("Percentage") percentage: __integer,
@as("NextActivity") nextActivity: __string
}
type quietTime = {
@as("Start") start: __string,
@as("End") end: __string
}
type numberValidateResponse = {
@as("ZipCode") zipCode: __string,
@as("Timezone") timezone: __string,
@as("PhoneTypeCode") phoneTypeCode: __integer,
@as("PhoneType") phoneType: __string,
@as("OriginalPhoneNumber") originalPhoneNumber: __string,
@as("OriginalCountryCodeIso2") originalCountryCodeIso2: __string,
@as("County") county: __string,
@as("CountryCodeNumeric") countryCodeNumeric: __string,
@as("CountryCodeIso2") countryCodeIso2: __string,
@as("Country") country: __string,
@as("CleansedPhoneNumberNational") cleansedPhoneNumberNational: __string,
@as("CleansedPhoneNumberE164") cleansedPhoneNumberE164: __string,
@as("City") city: __string,
@as("Carrier") carrier: __string
}
type numberValidateRequest = {
@as("PhoneNumber") phoneNumber: __string,
@as("IsoCountryCode") isoCountryCode: __string
}
type metricDimension = {
@as("Value") value: option<__double>,
@as("ComparisonOperator") comparisonOperator: option<__string>
}
type messageResult = {
@as("UpdatedToken") updatedToken: __string,
@as("StatusMessage") statusMessage: __string,
@as("StatusCode") statusCode: option<__integer>,
@as("MessageId") messageId: __string,
@as("DeliveryStatus") deliveryStatus: option<deliveryStatus>
}
type messageBody = {
@as("RequestID") requestID: __string,
@as("Message") message: __string
}
type message = {
@as("Url") url: __string,
@as("Title") title: __string,
@as("TimeToLive") timeToLive: __integer,
@as("SilentPush") silentPush: __boolean,
@as("RawContent") rawContent: __string,
@as("MediaUrl") mediaUrl: __string,
@as("JsonBody") jsonBody: __string,
@as("ImageUrl") imageUrl: __string,
@as("ImageSmallIconUrl") imageSmallIconUrl: __string,
@as("ImageIconUrl") imageIconUrl: __string,
@as("Body") body: __string,
@as("Action") action: action
}
type mapOf__string = Js.Dict.t< __string>
type mapOf__integer = Js.Dict.t< __integer>
type mapOf__double = Js.Dict.t< __double>
type listOf__string = array<__string>
type listOf__EndpointTypesElement = array<__EndpointTypesElement>
type journeyStateRequest = {
@as("State") state: state
}
type journeySchedule = {
@as("Timezone") timezone: __string,
@as("StartTime") startTime: __timestampIso8601,
@as("EndTime") endTime: __timestampIso8601
}
type journeySMSMessage = {
@as("TemplateId") templateId: __string,
@as("EntityId") entityId: __string,
@as("SenderId") senderId: __string,
@as("OriginationNumber") originationNumber: __string,
@as("MessageType") messageType: messageType
}
type journeyPushMessage = {
@as("TimeToLive") timeToLive: __string
}
type journeyLimits = {
@as("EndpointReentryInterval") endpointReentryInterval: __string,
@as("MessagesPerSecond") messagesPerSecond: __integer,
@as("EndpointReentryCap") endpointReentryCap: __integer,
@as("DailyCap") dailyCap: __integer
}
type journeyEmailMessage = {
@as("FromAddress") fromAddress: __string
}
type journeyCustomMessage = {
@as("Data") data: __string
}
type importJobResource = {
@as("SegmentName") segmentName: __string,
@as("SegmentId") segmentId: __string,
@as("S3Url") s3Url: option<__string>,
@as("RoleArn") roleArn: option<__string>,
@as("RegisterEndpoints") registerEndpoints: __boolean,
@as("Format") format: option<format>,
@as("ExternalId") externalId: __string,
@as("DefineSegment") defineSegment: __boolean
}
type importJobRequest = {
@as("SegmentName") segmentName: __string,
@as("SegmentId") segmentId: __string,
@as("S3Url") s3Url: option<__string>,
@as("RoleArn") roleArn: option<__string>,
@as("RegisterEndpoints") registerEndpoints: __boolean,
@as("Format") format: option<format>,
@as("ExternalId") externalId: __string,
@as("DefineSegment") defineSegment: __boolean
}
type holdoutActivity = {
@as("Percentage") percentage: option<__integer>,
@as("NextActivity") nextActivity: __string
}
type gPSCoordinates = {
@as("Longitude") longitude: option<__double>,
@as("Latitude") latitude: option<__double>
}
type gCMChannelResponse = {
@as("Version") version: __integer,
@as("Platform") platform: option<__string>,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("LastModifiedBy") lastModifiedBy: __string,
@as("IsArchived") isArchived: __boolean,
@as("Id") id: __string,
@as("HasCredential") hasCredential: __boolean,
@as("Enabled") enabled: __boolean,
@as("Credential") credential: option<__string>,
@as("CreationDate") creationDate: __string,
@as("ApplicationId") applicationId: __string
}
type gCMChannelRequest = {
@as("Enabled") enabled: __boolean,
@as("ApiKey") apiKey: option<__string>
}
type exportJobResource = {
@as("SegmentVersion") segmentVersion: __integer,
@as("SegmentId") segmentId: __string,
@as("S3UrlPrefix") s3UrlPrefix: option<__string>,
@as("RoleArn") roleArn: option<__string>
}
type exportJobRequest = {
@as("SegmentVersion") segmentVersion: __integer,
@as("SegmentId") segmentId: __string,
@as("S3UrlPrefix") s3UrlPrefix: option<__string>,
@as("RoleArn") roleArn: option<__string>
}
type eventStream = {
@as("RoleArn") roleArn: option<__string>,
@as("LastUpdatedBy") lastUpdatedBy: __string,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("ExternalId") externalId: __string,
@as("DestinationStreamArn") destinationStreamArn: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type eventItemResponse = {
@as("StatusCode") statusCode: __integer,
@as("Message") message: __string
}
type endpointMessageResult = {
@as("UpdatedToken") updatedToken: __string,
@as("StatusMessage") statusMessage: __string,
@as("StatusCode") statusCode: option<__integer>,
@as("MessageId") messageId: __string,
@as("DeliveryStatus") deliveryStatus: option<deliveryStatus>,
@as("Address") address: __string
}
type endpointLocation = {
@as("Region") region: __string,
@as("PostalCode") postalCode: __string,
@as("Longitude") longitude: __double,
@as("Latitude") latitude: __double,
@as("Country") country: __string,
@as("City") city: __string
}
type endpointItemResponse = {
@as("StatusCode") statusCode: __integer,
@as("Message") message: __string
}
type endpointDemographic = {
@as("Timezone") timezone: __string,
@as("PlatformVersion") platformVersion: __string,
@as("Platform") platform: __string,
@as("ModelVersion") modelVersion: __string,
@as("Model") model: __string,
@as("Make") make: __string,
@as("Locale") locale: __string,
@as("AppVersion") appVersion: __string
}
type emailChannelResponse = {
@as("Version") version: __integer,
@as("RoleArn") roleArn: __string,
@as("Platform") platform: option<__string>,
@as("MessagesPerSecond") messagesPerSecond: __integer,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("LastModifiedBy") lastModifiedBy: __string,
@as("IsArchived") isArchived: __boolean,
@as("Identity") identity: __string,
@as("Id") id: __string,
@as("HasCredential") hasCredential: __boolean,
@as("FromAddress") fromAddress: __string,
@as("Enabled") enabled: __boolean,
@as("CreationDate") creationDate: __string,
@as("ConfigurationSet") configurationSet: __string,
@as("ApplicationId") applicationId: __string
}
type emailChannelRequest = {
@as("RoleArn") roleArn: __string,
@as("Identity") identity: option<__string>,
@as("FromAddress") fromAddress: option<__string>,
@as("Enabled") enabled: __boolean,
@as("ConfigurationSet") configurationSet: __string
}
type defaultPushNotificationTemplate = {
@as("Url") url: __string,
@as("Title") title: __string,
@as("Sound") sound: __string,
@as("Body") body: __string,
@as("Action") action: action
}
type createTemplateMessageBody = {
@as("RequestID") requestID: __string,
@as("Message") message: __string,
@as("Arn") arn: __string
}
type channelResponse = {
@as("Version") version: __integer,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("LastModifiedBy") lastModifiedBy: __string,
@as("IsArchived") isArchived: __boolean,
@as("Id") id: __string,
@as("HasCredential") hasCredential: __boolean,
@as("Enabled") enabled: __boolean,
@as("CreationDate") creationDate: __string,
@as("ApplicationId") applicationId: __string
}
type campaignState = {
@as("CampaignStatus") campaignStatus: campaignStatus
}
type campaignSmsMessage = {
@as("TemplateId") templateId: __string,
@as("EntityId") entityId: __string,
@as("SenderId") senderId: __string,
@as("OriginationNumber") originationNumber: __string,
@as("MessageType") messageType: messageType,
@as("Body") body: __string
}
type campaignLimits = {
@as("Total") total: __integer,
@as("MessagesPerSecond") messagesPerSecond: __integer,
@as("MaximumDuration") maximumDuration: __integer,
@as("Daily") daily: __integer
}
type campaignHook = {
@as("WebUrl") webUrl: __string,
@as("Mode") mode: mode,
@as("LambdaFunctionName") lambdaFunctionName: __string
}
type campaignEmailMessage = {
@as("Title") title: __string,
@as("HtmlBody") htmlBody: __string,
@as("FromAddress") fromAddress: __string,
@as("Body") body: __string
}
type campaignCustomMessage = {
@as("Data") data: __string
}
type baiduChannelResponse = {
@as("Version") version: __integer,
@as("Platform") platform: option<__string>,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("LastModifiedBy") lastModifiedBy: __string,
@as("IsArchived") isArchived: __boolean,
@as("Id") id: __string,
@as("HasCredential") hasCredential: __boolean,
@as("Enabled") enabled: __boolean,
@as("Credential") credential: option<__string>,
@as("CreationDate") creationDate: __string,
@as("ApplicationId") applicationId: __string
}
type baiduChannelRequest = {
@as("SecretKey") secretKey: option<__string>,
@as("Enabled") enabled: __boolean,
@as("ApiKey") apiKey: option<__string>
}
type androidPushNotificationTemplate = {
@as("Url") url: __string,
@as("Title") title: __string,
@as("Sound") sound: __string,
@as("SmallImageIconUrl") smallImageIconUrl: __string,
@as("RawContent") rawContent: __string,
@as("ImageUrl") imageUrl: __string,
@as("ImageIconUrl") imageIconUrl: __string,
@as("Body") body: __string,
@as("Action") action: action
}
type activityResponse = {
@as("TreatmentId") treatmentId: __string,
@as("TotalEndpointCount") totalEndpointCount: __integer,
@as("TimezonesTotalCount") timezonesTotalCount: __integer,
@as("TimezonesCompletedCount") timezonesCompletedCount: __integer,
@as("SuccessfulEndpointCount") successfulEndpointCount: __integer,
@as("State") state: __string,
@as("Start") start: __string,
@as("ScheduledStart") scheduledStart: __string,
@as("Result") result: __string,
@as("Id") id: option<__string>,
@as("End") end: __string,
@as("CampaignId") campaignId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type aPNSVoipSandboxChannelResponse = {
@as("Version") version: __integer,
@as("Platform") platform: option<__string>,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("LastModifiedBy") lastModifiedBy: __string,
@as("IsArchived") isArchived: __boolean,
@as("Id") id: __string,
@as("HasTokenKey") hasTokenKey: __boolean,
@as("HasCredential") hasCredential: __boolean,
@as("Enabled") enabled: __boolean,
@as("DefaultAuthenticationMethod") defaultAuthenticationMethod: __string,
@as("CreationDate") creationDate: __string,
@as("ApplicationId") applicationId: __string
}
type aPNSVoipSandboxChannelRequest = {
@as("TokenKeyId") tokenKeyId: __string,
@as("TokenKey") tokenKey: __string,
@as("TeamId") teamId: __string,
@as("PrivateKey") privateKey: __string,
@as("Enabled") enabled: __boolean,
@as("DefaultAuthenticationMethod") defaultAuthenticationMethod: __string,
@as("Certificate") certificate: __string,
@as("BundleId") bundleId: __string
}
type aPNSVoipChannelResponse = {
@as("Version") version: __integer,
@as("Platform") platform: option<__string>,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("LastModifiedBy") lastModifiedBy: __string,
@as("IsArchived") isArchived: __boolean,
@as("Id") id: __string,
@as("HasTokenKey") hasTokenKey: __boolean,
@as("HasCredential") hasCredential: __boolean,
@as("Enabled") enabled: __boolean,
@as("DefaultAuthenticationMethod") defaultAuthenticationMethod: __string,
@as("CreationDate") creationDate: __string,
@as("ApplicationId") applicationId: __string
}
type aPNSVoipChannelRequest = {
@as("TokenKeyId") tokenKeyId: __string,
@as("TokenKey") tokenKey: __string,
@as("TeamId") teamId: __string,
@as("PrivateKey") privateKey: __string,
@as("Enabled") enabled: __boolean,
@as("DefaultAuthenticationMethod") defaultAuthenticationMethod: __string,
@as("Certificate") certificate: __string,
@as("BundleId") bundleId: __string
}
type aPNSSandboxChannelResponse = {
@as("Version") version: __integer,
@as("Platform") platform: option<__string>,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("LastModifiedBy") lastModifiedBy: __string,
@as("IsArchived") isArchived: __boolean,
@as("Id") id: __string,
@as("HasTokenKey") hasTokenKey: __boolean,
@as("HasCredential") hasCredential: __boolean,
@as("Enabled") enabled: __boolean,
@as("DefaultAuthenticationMethod") defaultAuthenticationMethod: __string,
@as("CreationDate") creationDate: __string,
@as("ApplicationId") applicationId: __string
}
type aPNSSandboxChannelRequest = {
@as("TokenKeyId") tokenKeyId: __string,
@as("TokenKey") tokenKey: __string,
@as("TeamId") teamId: __string,
@as("PrivateKey") privateKey: __string,
@as("Enabled") enabled: __boolean,
@as("DefaultAuthenticationMethod") defaultAuthenticationMethod: __string,
@as("Certificate") certificate: __string,
@as("BundleId") bundleId: __string
}
type aPNSPushNotificationTemplate = {
@as("Url") url: __string,
@as("Title") title: __string,
@as("Sound") sound: __string,
@as("RawContent") rawContent: __string,
@as("MediaUrl") mediaUrl: __string,
@as("Body") body: __string,
@as("Action") action: action
}
type aPNSChannelResponse = {
@as("Version") version: __integer,
@as("Platform") platform: option<__string>,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("LastModifiedBy") lastModifiedBy: __string,
@as("IsArchived") isArchived: __boolean,
@as("Id") id: __string,
@as("HasTokenKey") hasTokenKey: __boolean,
@as("HasCredential") hasCredential: __boolean,
@as("Enabled") enabled: __boolean,
@as("DefaultAuthenticationMethod") defaultAuthenticationMethod: __string,
@as("CreationDate") creationDate: __string,
@as("ApplicationId") applicationId: __string
}
type aPNSChannelRequest = {
@as("TokenKeyId") tokenKeyId: __string,
@as("TokenKey") tokenKey: __string,
@as("TeamId") teamId: __string,
@as("PrivateKey") privateKey: __string,
@as("Enabled") enabled: __boolean,
@as("DefaultAuthenticationMethod") defaultAuthenticationMethod: __string,
@as("Certificate") certificate: __string,
@as("BundleId") bundleId: __string
}
type aDMChannelResponse = {
@as("Version") version: __integer,
@as("Platform") platform: option<__string>,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("LastModifiedBy") lastModifiedBy: __string,
@as("IsArchived") isArchived: __boolean,
@as("Id") id: __string,
@as("HasCredential") hasCredential: __boolean,
@as("Enabled") enabled: __boolean,
@as("CreationDate") creationDate: __string,
@as("ApplicationId") applicationId: __string
}
type aDMChannelRequest = {
@as("Enabled") enabled: __boolean,
@as("ClientSecret") clientSecret: option<__string>,
@as("ClientId") clientId: option<__string>
}
type writeApplicationSettingsRequest = {
@as("QuietTime") quietTime: quietTime,
@as("Limits") limits: campaignLimits,
@as("EventTaggingEnabled") eventTaggingEnabled: __boolean,
@as("CloudWatchMetricsEnabled") cloudWatchMetricsEnabled: __boolean,
@as("CampaignHook") campaignHook: campaignHook
}
type waitActivity = {
@as("WaitTime") waitTime: waitTime,
@as("NextActivity") nextActivity: __string
}
type voiceTemplateResponse = {
@as("VoiceId") voiceId: __string,
@as("Version") version: __string,
@as("TemplateType") templateType: option<templateType>,
@as("TemplateName") templateName: option<__string>,
@as("TemplateDescription") templateDescription: __string,
@as("tags") tags: mapOf__string,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("LanguageCode") languageCode: __string,
@as("DefaultSubstitutions") defaultSubstitutions: __string,
@as("CreationDate") creationDate: option<__string>,
@as("Body") body: __string,
@as("Arn") arn: __string
}
type voiceTemplateRequest = {
@as("VoiceId") voiceId: __string,
@as("TemplateDescription") templateDescription: __string,
@as("tags") tags: mapOf__string,
@as("LanguageCode") languageCode: __string,
@as("DefaultSubstitutions") defaultSubstitutions: __string,
@as("Body") body: __string
}
type updateRecommenderConfigurationShape = {
@as("RecommendationsPerMessage") recommendationsPerMessage: __integer,
@as("RecommendationsDisplayName") recommendationsDisplayName: __string,
@as("RecommendationTransformerUri") recommendationTransformerUri: __string,
@as("RecommendationProviderUri") recommendationProviderUri: option<__string>,
@as("RecommendationProviderRoleArn") recommendationProviderRoleArn: option<__string>,
@as("RecommendationProviderIdType") recommendationProviderIdType: __string,
@as("Name") name: __string,
@as("Description") description: __string,
@as("Attributes") attributes: mapOf__string
}
type updateAttributesRequest = {
@as("Blacklist") blacklist: listOf__string
}
type templateResponse = {
@as("Version") version: __string,
@as("TemplateType") templateType: option<templateType>,
@as("TemplateName") templateName: option<__string>,
@as("TemplateDescription") templateDescription: __string,
@as("tags") tags: mapOf__string,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("DefaultSubstitutions") defaultSubstitutions: __string,
@as("CreationDate") creationDate: option<__string>,
@as("Arn") arn: __string
}
type templateConfiguration = {
@as("VoiceTemplate") voiceTemplate: template,
@as("SMSTemplate") sMSTemplate: template,
@as("PushTemplate") pushTemplate: template,
@as("EmailTemplate") emailTemplate: template
}
type tagsModel = {
@as("tags") tags: option<mapOf__string>
}
type simpleEmail = {
@as("TextPart") textPart: simpleEmailPart,
@as("Subject") subject: simpleEmailPart,
@as("HtmlPart") htmlPart: simpleEmailPart
}
type setDimension = {
@as("Values") values: option<listOf__string>,
@as("DimensionType") dimensionType: dimensionType
}
type segmentImportResource = {
@as("Size") size: option<__integer>,
@as("S3Url") s3Url: option<__string>,
@as("RoleArn") roleArn: option<__string>,
@as("Format") format: option<format>,
@as("ExternalId") externalId: option<__string>,
@as("ChannelCounts") channelCounts: mapOf__integer
}
type segmentBehaviors = {
@as("Recency") recency: recencyDimension
}
type sMSTemplateResponse = {
@as("Version") version: __string,
@as("TemplateType") templateType: option<templateType>,
@as("TemplateName") templateName: option<__string>,
@as("TemplateDescription") templateDescription: __string,
@as("tags") tags: mapOf__string,
@as("RecommenderId") recommenderId: __string,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("DefaultSubstitutions") defaultSubstitutions: __string,
@as("CreationDate") creationDate: option<__string>,
@as("Body") body: __string,
@as("Arn") arn: __string
}
type sMSTemplateRequest = {
@as("TemplateDescription") templateDescription: __string,
@as("tags") tags: mapOf__string,
@as("RecommenderId") recommenderId: __string,
@as("DefaultSubstitutions") defaultSubstitutions: __string,
@as("Body") body: __string
}
type sMSMessageActivity = {
@as("TemplateVersion") templateVersion: __string,
@as("TemplateName") templateName: __string,
@as("NextActivity") nextActivity: __string,
@as("MessageConfig") messageConfig: journeySMSMessage
}
type recommenderConfigurationResponse = {
@as("RecommendationsPerMessage") recommendationsPerMessage: __integer,
@as("RecommendationsDisplayName") recommendationsDisplayName: __string,
@as("RecommendationTransformerUri") recommendationTransformerUri: __string,
@as("RecommendationProviderUri") recommendationProviderUri: option<__string>,
@as("RecommendationProviderRoleArn") recommendationProviderRoleArn: option<__string>,
@as("RecommendationProviderIdType") recommendationProviderIdType: __string,
@as("Name") name: __string,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("Id") id: option<__string>,
@as("Description") description: __string,
@as("CreationDate") creationDate: option<__string>,
@as("Attributes") attributes: mapOf__string
}
type pushNotificationTemplateResponse = {
@as("Version") version: __string,
@as("TemplateType") templateType: option<templateType>,
@as("TemplateName") templateName: option<__string>,
@as("TemplateDescription") templateDescription: __string,
@as("tags") tags: mapOf__string,
@as("RecommenderId") recommenderId: __string,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("GCM") gCM: androidPushNotificationTemplate,
@as("DefaultSubstitutions") defaultSubstitutions: __string,
@as("Default") default: defaultPushNotificationTemplate,
@as("CreationDate") creationDate: option<__string>,
@as("Baidu") baidu: androidPushNotificationTemplate,
@as("Arn") arn: __string,
@as("APNS") aPNS: aPNSPushNotificationTemplate,
@as("ADM") aDM: androidPushNotificationTemplate
}
type pushNotificationTemplateRequest = {
@as("TemplateDescription") templateDescription: __string,
@as("tags") tags: mapOf__string,
@as("RecommenderId") recommenderId: __string,
@as("GCM") gCM: androidPushNotificationTemplate,
@as("DefaultSubstitutions") defaultSubstitutions: __string,
@as("Default") default: defaultPushNotificationTemplate,
@as("Baidu") baidu: androidPushNotificationTemplate,
@as("APNS") aPNS: aPNSPushNotificationTemplate,
@as("ADM") aDM: androidPushNotificationTemplate
}
type pushMessageActivity = {
@as("TemplateVersion") templateVersion: __string,
@as("TemplateName") templateName: __string,
@as("NextActivity") nextActivity: __string,
@as("MessageConfig") messageConfig: journeyPushMessage
}
type messageConfiguration = {
@as("SMSMessage") sMSMessage: campaignSmsMessage,
@as("GCMMessage") gCMMessage: message,
@as("EmailMessage") emailMessage: campaignEmailMessage,
@as("DefaultMessage") defaultMessage: message,
@as("CustomMessage") customMessage: campaignCustomMessage,
@as("BaiduMessage") baiduMessage: message,
@as("APNSMessage") aPNSMessage: message,
@as("ADMMessage") aDMMessage: message
}
type mapOfMetricDimension = Js.Dict.t< metricDimension>
type mapOfMessageResult = Js.Dict.t< messageResult>
type mapOfListOf__string = Js.Dict.t< listOf__string>
type mapOfEventItemResponse = Js.Dict.t< eventItemResponse>
type mapOfEndpointMessageResult = Js.Dict.t< endpointMessageResult>
type mapOfChannelResponse = Js.Dict.t< channelResponse>
type listOfTemplateVersionResponse = array<templateVersionResponse>
type listOfSegmentReference = array<segmentReference>
type listOfResultRowValue = array<resultRowValue>
type listOfRandomSplitEntry = array<randomSplitEntry>
type listOfActivityResponse = array<activityResponse>
type journeyExecutionMetricsResponse = {
@as("Metrics") metrics: option<mapOf__string>,
@as("LastEvaluatedTime") lastEvaluatedTime: option<__string>,
@as("JourneyId") journeyId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type journeyExecutionActivityMetricsResponse = {
@as("Metrics") metrics: option<mapOf__string>,
@as("LastEvaluatedTime") lastEvaluatedTime: option<__string>,
@as("JourneyId") journeyId: option<__string>,
@as("JourneyActivityId") journeyActivityId: option<__string>,
@as("ApplicationId") applicationId: option<__string>,
@as("ActivityType") activityType: option<__string>
}
type importJobResponse = {
@as("Type") type_: option<__string>,
@as("TotalProcessed") totalProcessed: __integer,
@as("TotalPieces") totalPieces: __integer,
@as("TotalFailures") totalFailures: __integer,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("Id") id: option<__string>,
@as("Failures") failures: listOf__string,
@as("FailedPieces") failedPieces: __integer,
@as("Definition") definition: option<importJobResource>,
@as("CreationDate") creationDate: option<__string>,
@as("CompletionDate") completionDate: __string,
@as("CompletedPieces") completedPieces: __integer,
@as("ApplicationId") applicationId: option<__string>
}
type gPSPointDimension = {
@as("RangeInKilometers") rangeInKilometers: __double,
@as("Coordinates") coordinates: option<gPSCoordinates>
}
type exportJobResponse = {
@as("Type") type_: option<__string>,
@as("TotalProcessed") totalProcessed: __integer,
@as("TotalPieces") totalPieces: __integer,
@as("TotalFailures") totalFailures: __integer,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("Id") id: option<__string>,
@as("Failures") failures: listOf__string,
@as("FailedPieces") failedPieces: __integer,
@as("Definition") definition: option<exportJobResource>,
@as("CreationDate") creationDate: option<__string>,
@as("CompletionDate") completionDate: __string,
@as("CompletedPieces") completedPieces: __integer,
@as("ApplicationId") applicationId: option<__string>
}
type event = {
@as("Timestamp") timestamp: option<__string>,
@as("Session") session: session,
@as("SdkName") sdkName: __string,
@as("Metrics") metrics: mapOf__double,
@as("EventType") eventType: option<__string>,
@as("ClientSdkVersion") clientSdkVersion: __string,
@as("Attributes") attributes: mapOf__string,
@as("AppVersionCode") appVersionCode: __string,
@as("AppTitle") appTitle: __string,
@as("AppPackageName") appPackageName: __string
}
type emailTemplateResponse = {
@as("Version") version: __string,
@as("TextPart") textPart: __string,
@as("TemplateType") templateType: option<templateType>,
@as("TemplateName") templateName: option<__string>,
@as("TemplateDescription") templateDescription: __string,
@as("tags") tags: mapOf__string,
@as("Subject") subject: __string,
@as("RecommenderId") recommenderId: __string,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("HtmlPart") htmlPart: __string,
@as("DefaultSubstitutions") defaultSubstitutions: __string,
@as("CreationDate") creationDate: option<__string>,
@as("Arn") arn: __string
}
type emailTemplateRequest = {
@as("TextPart") textPart: __string,
@as("TemplateDescription") templateDescription: __string,
@as("tags") tags: mapOf__string,
@as("Subject") subject: __string,
@as("RecommenderId") recommenderId: __string,
@as("HtmlPart") htmlPart: __string,
@as("DefaultSubstitutions") defaultSubstitutions: __string
}
type emailMessageActivity = {
@as("TemplateVersion") templateVersion: __string,
@as("TemplateName") templateName: __string,
@as("NextActivity") nextActivity: __string,
@as("MessageConfig") messageConfig: journeyEmailMessage
}
type customMessageActivity = {
@as("TemplateVersion") templateVersion: __string,
@as("TemplateName") templateName: __string,
@as("NextActivity") nextActivity: __string,
@as("MessageConfig") messageConfig: journeyCustomMessage,
@as("EndpointTypes") endpointTypes: listOf__EndpointTypesElement,
@as("DeliveryUri") deliveryUri: __string
}
type customDeliveryConfiguration = {
@as("EndpointTypes") endpointTypes: listOf__EndpointTypesElement,
@as("DeliveryUri") deliveryUri: option<__string>
}
type createRecommenderConfigurationShape = {
@as("RecommendationsPerMessage") recommendationsPerMessage: __integer,
@as("RecommendationsDisplayName") recommendationsDisplayName: __string,
@as("RecommendationTransformerUri") recommendationTransformerUri: __string,
@as("RecommendationProviderUri") recommendationProviderUri: option<__string>,
@as("RecommendationProviderRoleArn") recommendationProviderRoleArn: option<__string>,
@as("RecommendationProviderIdType") recommendationProviderIdType: __string,
@as("Name") name: __string,
@as("Description") description: __string,
@as("Attributes") attributes: mapOf__string
}
type createApplicationRequest = {
@as("tags") tags: mapOf__string,
@as("Name") name: option<__string>
}
type attributesResource = {
@as("Attributes") attributes: listOf__string,
@as("AttributeType") attributeType: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type attributeDimension = {
@as("Values") values: option<listOf__string>,
@as("AttributeType") attributeType: attributeType
}
type applicationSettingsResource = {
@as("QuietTime") quietTime: quietTime,
@as("Limits") limits: campaignLimits,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("CampaignHook") campaignHook: campaignHook,
@as("ApplicationId") applicationId: option<__string>
}
type applicationResponse = {
@as("tags") tags: mapOf__string,
@as("Name") name: option<__string>,
@as("Id") id: option<__string>,
@as("Arn") arn: option<__string>
}
type voiceMessage = {
@as("VoiceId") voiceId: __string,
@as("Substitutions") substitutions: mapOfListOf__string,
@as("OriginationNumber") originationNumber: __string,
@as("LanguageCode") languageCode: __string,
@as("Body") body: __string
}
type templateVersionsResponse = {
@as("RequestID") requestID: __string,
@as("NextToken") nextToken: __string,
@as("Message") message: __string,
@as("Item") item: option<listOfTemplateVersionResponse>
}
type segmentLocation = {
@as("GPSPoint") gPSPoint: gPSPointDimension,
@as("Country") country: setDimension
}
type segmentDemographics = {
@as("Platform") platform: setDimension,
@as("Model") model: setDimension,
@as("Make") make: setDimension,
@as("DeviceType") deviceType: setDimension,
@as("Channel") channel: setDimension,
@as("AppVersion") appVersion: setDimension
}
type sMSMessage = {
@as("TemplateId") templateId: __string,
@as("EntityId") entityId: __string,
@as("Substitutions") substitutions: mapOfListOf__string,
@as("SenderId") senderId: __string,
@as("OriginationNumber") originationNumber: __string,
@as("MessageType") messageType: messageType,
@as("MediaUrl") mediaUrl: __string,
@as("Keyword") keyword: __string,
@as("Body") body: __string
}
type resultRow = {
@as("Values") values: option<listOfResultRowValue>,
@as("GroupedBys") groupedBys: option<listOfResultRowValue>
}
type randomSplitActivity = {
@as("Branches") branches: listOfRandomSplitEntry
}
type messageResponse = {
@as("Result") result: mapOfMessageResult,
@as("RequestId") requestId: __string,
@as("EndpointResult") endpointResult: mapOfEndpointMessageResult,
@as("ApplicationId") applicationId: option<__string>
}
type mapOfMapOfEndpointMessageResult = Js.Dict.t< mapOfEndpointMessageResult>
type mapOfEvent = Js.Dict.t< event>
type mapOfAttributeDimension = Js.Dict.t< attributeDimension>
type listOfTemplateResponse = array<templateResponse>
type listOfRecommenderConfigurationResponse = array<recommenderConfigurationResponse>
type listOfImportJobResponse = array<importJobResponse>
type listOfExportJobResponse = array<exportJobResponse>
type listOfApplicationResponse = array<applicationResponse>
type itemResponse = {
@as("EventsItemResponse") eventsItemResponse: mapOfEventItemResponse,
@as("EndpointItemResponse") endpointItemResponse: endpointItemResponse
}
type gCMMessage = {
@as("Url") url: __string,
@as("Title") title: __string,
@as("TimeToLive") timeToLive: __integer,
@as("Substitutions") substitutions: mapOfListOf__string,
@as("Sound") sound: __string,
@as("SmallImageIconUrl") smallImageIconUrl: __string,
@as("SilentPush") silentPush: __boolean,
@as("RestrictedPackageName") restrictedPackageName: __string,
@as("RawContent") rawContent: __string,
@as("Priority") priority: __string,
@as("ImageUrl") imageUrl: __string,
@as("ImageIconUrl") imageIconUrl: __string,
@as("IconReference") iconReference: __string,
@as("Data") data: mapOf__string,
@as("CollapseKey") collapseKey: __string,
@as("Body") body: __string,
@as("Action") action: action
}
type endpointUser = {
@as("UserId") userId: __string,
@as("UserAttributes") userAttributes: mapOfListOf__string
}
type endpointSendConfiguration = {
@as("TitleOverride") titleOverride: __string,
@as("Substitutions") substitutions: mapOfListOf__string,
@as("RawContent") rawContent: __string,
@as("Context") context: mapOf__string,
@as("BodyOverride") bodyOverride: __string
}
type emailMessage = {
@as("Substitutions") substitutions: mapOfListOf__string,
@as("SimpleEmail") simpleEmail: simpleEmail,
@as("ReplyToAddresses") replyToAddresses: listOf__string,
@as("RawEmail") rawEmail: rawEmail,
@as("FromAddress") fromAddress: __string,
@as("FeedbackForwardingAddress") feedbackForwardingAddress: __string,
@as("Body") body: __string
}
type defaultPushNotificationMessage = {
@as("Url") url: __string,
@as("Title") title: __string,
@as("Substitutions") substitutions: mapOfListOf__string,
@as("SilentPush") silentPush: __boolean,
@as("Data") data: mapOf__string,
@as("Body") body: __string,
@as("Action") action: action
}
type defaultMessage = {
@as("Substitutions") substitutions: mapOfListOf__string,
@as("Body") body: __string
}
type channelsResponse = {
@as("Channels") channels: option<mapOfChannelResponse>
}
type baiduMessage = {
@as("Url") url: __string,
@as("Title") title: __string,
@as("TimeToLive") timeToLive: __integer,
@as("Substitutions") substitutions: mapOfListOf__string,
@as("Sound") sound: __string,
@as("SmallImageIconUrl") smallImageIconUrl: __string,
@as("SilentPush") silentPush: __boolean,
@as("RawContent") rawContent: __string,
@as("ImageUrl") imageUrl: __string,
@as("ImageIconUrl") imageIconUrl: __string,
@as("IconReference") iconReference: __string,
@as("Data") data: mapOf__string,
@as("Body") body: __string,
@as("Action") action: action
}
type addressConfiguration = {
@as("TitleOverride") titleOverride: __string,
@as("Substitutions") substitutions: mapOfListOf__string,
@as("RawContent") rawContent: __string,
@as("Context") context: mapOf__string,
@as("ChannelType") channelType: channelType,
@as("BodyOverride") bodyOverride: __string
}
type activitiesResponse = {
@as("NextToken") nextToken: __string,
@as("Item") item: option<listOfActivityResponse>
}
type aPNSMessage = {
@as("Url") url: __string,
@as("Title") title: __string,
@as("TimeToLive") timeToLive: __integer,
@as("ThreadId") threadId: __string,
@as("Substitutions") substitutions: mapOfListOf__string,
@as("Sound") sound: __string,
@as("SilentPush") silentPush: __boolean,
@as("RawContent") rawContent: __string,
@as("Priority") priority: __string,
@as("PreferredAuthenticationMethod") preferredAuthenticationMethod: __string,
@as("MediaUrl") mediaUrl: __string,
@as("Data") data: mapOf__string,
@as("CollapseId") collapseId: __string,
@as("Category") category: __string,
@as("Body") body: __string,
@as("Badge") badge: __integer,
@as("Action") action: action,
@as("APNSPushType") aPNSPushType: __string
}
type aDMMessage = {
@as("Url") url: __string,
@as("Title") title: __string,
@as("Substitutions") substitutions: mapOfListOf__string,
@as("Sound") sound: __string,
@as("SmallImageIconUrl") smallImageIconUrl: __string,
@as("SilentPush") silentPush: __boolean,
@as("RawContent") rawContent: __string,
@as("MD5") mD5: __string,
@as("ImageUrl") imageUrl: __string,
@as("ImageIconUrl") imageIconUrl: __string,
@as("IconReference") iconReference: __string,
@as("ExpiresAfter") expiresAfter: __string,
@as("Data") data: mapOf__string,
@as("ConsolidationKey") consolidationKey: __string,
@as("Body") body: __string,
@as("Action") action: action
}
type templatesResponse = {
@as("NextToken") nextToken: __string,
@as("Item") item: option<listOfTemplateResponse>
}
type sendUsersMessageResponse = {
@as("Result") result: mapOfMapOfEndpointMessageResult,
@as("RequestId") requestId: __string,
@as("ApplicationId") applicationId: option<__string>
}
type segmentDimensions = {
@as("UserAttributes") userAttributes: mapOfAttributeDimension,
@as("Metrics") metrics: mapOfMetricDimension,
@as("Location") location: segmentLocation,
@as("Demographic") demographic: segmentDemographics,
@as("Behavior") behavior: segmentBehaviors,
@as("Attributes") attributes: mapOfAttributeDimension
}
type publicEndpoint = {
@as("User") user: endpointUser,
@as("RequestId") requestId: __string,
@as("OptOut") optOut: __string,
@as("Metrics") metrics: mapOf__double,
@as("Location") location: endpointLocation,
@as("EndpointStatus") endpointStatus: __string,
@as("EffectiveDate") effectiveDate: __string,
@as("Demographic") demographic: endpointDemographic,
@as("ChannelType") channelType: channelType,
@as("Attributes") attributes: mapOfListOf__string,
@as("Address") address: __string
}
type mapOfItemResponse = Js.Dict.t< itemResponse>
type mapOfEndpointSendConfiguration = Js.Dict.t< endpointSendConfiguration>
type mapOfAddressConfiguration = Js.Dict.t< addressConfiguration>
type listRecommenderConfigurationsResponse = {
@as("NextToken") nextToken: __string,
@as("Item") item: option<listOfRecommenderConfigurationResponse>
}
type listOfResultRow = array<resultRow>
type importJobsResponse = {
@as("NextToken") nextToken: __string,
@as("Item") item: option<listOfImportJobResponse>
}
type exportJobsResponse = {
@as("NextToken") nextToken: __string,
@as("Item") item: option<listOfExportJobResponse>
}
type eventDimensions = {
@as("Metrics") metrics: mapOfMetricDimension,
@as("EventType") eventType: setDimension,
@as("Attributes") attributes: mapOfAttributeDimension
}
type endpointResponse = {
@as("User") user: endpointUser,
@as("RequestId") requestId: __string,
@as("OptOut") optOut: __string,
@as("Metrics") metrics: mapOf__double,
@as("Location") location: endpointLocation,
@as("Id") id: __string,
@as("EndpointStatus") endpointStatus: __string,
@as("EffectiveDate") effectiveDate: __string,
@as("Demographic") demographic: endpointDemographic,
@as("CreationDate") creationDate: __string,
@as("CohortId") cohortId: __string,
@as("ChannelType") channelType: channelType,
@as("Attributes") attributes: mapOfListOf__string,
@as("ApplicationId") applicationId: __string,
@as("Address") address: __string
}
type endpointRequest = {
@as("User") user: endpointUser,
@as("RequestId") requestId: __string,
@as("OptOut") optOut: __string,
@as("Metrics") metrics: mapOf__double,
@as("Location") location: endpointLocation,
@as("EndpointStatus") endpointStatus: __string,
@as("EffectiveDate") effectiveDate: __string,
@as("Demographic") demographic: endpointDemographic,
@as("ChannelType") channelType: channelType,
@as("Attributes") attributes: mapOfListOf__string,
@as("Address") address: __string
}
type endpointBatchItem = {
@as("User") user: endpointUser,
@as("RequestId") requestId: __string,
@as("OptOut") optOut: __string,
@as("Metrics") metrics: mapOf__double,
@as("Location") location: endpointLocation,
@as("Id") id: __string,
@as("EndpointStatus") endpointStatus: __string,
@as("EffectiveDate") effectiveDate: __string,
@as("Demographic") demographic: endpointDemographic,
@as("ChannelType") channelType: channelType,
@as("Attributes") attributes: mapOfListOf__string,
@as("Address") address: __string
}
type directMessageConfiguration = {
@as("VoiceMessage") voiceMessage: voiceMessage,
@as("SMSMessage") sMSMessage: sMSMessage,
@as("GCMMessage") gCMMessage: gCMMessage,
@as("EmailMessage") emailMessage: emailMessage,
@as("DefaultPushNotificationMessage") defaultPushNotificationMessage: defaultPushNotificationMessage,
@as("DefaultMessage") defaultMessage: defaultMessage,
@as("BaiduMessage") baiduMessage: baiduMessage,
@as("APNSMessage") aPNSMessage: aPNSMessage,
@as("ADMMessage") aDMMessage: aDMMessage
}
type applicationsResponse = {
@as("NextToken") nextToken: __string,
@as("Item") item: listOfApplicationResponse
}
type sendUsersMessageRequest = {
@as("Users") users: option<mapOfEndpointSendConfiguration>,
@as("TraceId") traceId: __string,
@as("TemplateConfiguration") templateConfiguration: templateConfiguration,
@as("MessageConfiguration") messageConfiguration: option<directMessageConfiguration>,
@as("Context") context: mapOf__string
}
type messageRequest = {
@as("TraceId") traceId: __string,
@as("TemplateConfiguration") templateConfiguration: templateConfiguration,
@as("MessageConfiguration") messageConfiguration: option<directMessageConfiguration>,
@as("Endpoints") endpoints: mapOfEndpointSendConfiguration,
@as("Context") context: mapOf__string,
@as("Addresses") addresses: mapOfAddressConfiguration
}
type listOfSegmentDimensions = array<segmentDimensions>
type listOfEndpointResponse = array<endpointResponse>
type listOfEndpointBatchItem = array<endpointBatchItem>
type eventsResponse = {
@as("Results") results: mapOfItemResponse
}
type eventsBatch = {
@as("Events") events: option<mapOfEvent>,
@as("Endpoint") endpoint: option<publicEndpoint>
}
type eventFilter = {
@as("FilterType") filterType: option<filterType>,
@as("Dimensions") dimensions: option<eventDimensions>
}
type eventCondition = {
@as("MessageActivity") messageActivity: __string,
@as("Dimensions") dimensions: eventDimensions
}
type campaignEventFilter = {
@as("FilterType") filterType: option<filterType>,
@as("Dimensions") dimensions: option<eventDimensions>
}
type baseKpiResult = {
@as("Rows") rows: option<listOfResultRow>
}
type simpleCondition = {
@as("SegmentDimensions") segmentDimensions: segmentDimensions,
@as("SegmentCondition") segmentCondition: segmentCondition,
@as("EventCondition") eventCondition: eventCondition
}
type segmentGroup = {
@as("Type") type_: type_,
@as("SourceType") sourceType: sourceType,
@as("SourceSegments") sourceSegments: listOfSegmentReference,
@as("Dimensions") dimensions: listOfSegmentDimensions
}
type schedule = {
@as("Timezone") timezone: __string,
@as("StartTime") startTime: option<__string>,
@as("QuietTime") quietTime: quietTime,
@as("IsLocalTime") isLocalTime: __boolean,
@as("Frequency") frequency: frequency,
@as("EventFilter") eventFilter: campaignEventFilter,
@as("EndTime") endTime: __string
}
type mapOfEventsBatch = Js.Dict.t< eventsBatch>
type journeyDateRangeKpiResponse = {
@as("StartTime") startTime: option<__timestampIso8601>,
@as("NextToken") nextToken: __string,
@as("KpiResult") kpiResult: option<baseKpiResult>,
@as("KpiName") kpiName: option<__string>,
@as("JourneyId") journeyId: option<__string>,
@as("EndTime") endTime: option<__timestampIso8601>,
@as("ApplicationId") applicationId: option<__string>
}
type eventStartCondition = {
@as("SegmentId") segmentId: __string,
@as("EventFilter") eventFilter: eventFilter
}
type endpointsResponse = {
@as("Item") item: option<listOfEndpointResponse>
}
type endpointBatchRequest = {
@as("Item") item: option<listOfEndpointBatchItem>
}
type campaignDateRangeKpiResponse = {
@as("StartTime") startTime: option<__timestampIso8601>,
@as("NextToken") nextToken: __string,
@as("KpiResult") kpiResult: option<baseKpiResult>,
@as("KpiName") kpiName: option<__string>,
@as("EndTime") endTime: option<__timestampIso8601>,
@as("CampaignId") campaignId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type applicationDateRangeKpiResponse = {
@as("StartTime") startTime: option<__timestampIso8601>,
@as("NextToken") nextToken: __string,
@as("KpiResult") kpiResult: option<baseKpiResult>,
@as("KpiName") kpiName: option<__string>,
@as("EndTime") endTime: option<__timestampIso8601>,
@as("ApplicationId") applicationId: option<__string>
}
type writeTreatmentResource = {
@as("TreatmentName") treatmentName: __string,
@as("TreatmentDescription") treatmentDescription: __string,
@as("TemplateConfiguration") templateConfiguration: templateConfiguration,
@as("SizePercent") sizePercent: option<__integer>,
@as("Schedule") schedule: schedule,
@as("MessageConfiguration") messageConfiguration: messageConfiguration,
@as("CustomDeliveryConfiguration") customDeliveryConfiguration: customDeliveryConfiguration
}
type treatmentResource = {
@as("TreatmentName") treatmentName: __string,
@as("TreatmentDescription") treatmentDescription: __string,
@as("TemplateConfiguration") templateConfiguration: templateConfiguration,
@as("State") state: campaignState,
@as("SizePercent") sizePercent: option<__integer>,
@as("Schedule") schedule: schedule,
@as("MessageConfiguration") messageConfiguration: messageConfiguration,
@as("Id") id: option<__string>,
@as("CustomDeliveryConfiguration") customDeliveryConfiguration: customDeliveryConfiguration
}
type startCondition = {
@as("SegmentStartCondition") segmentStartCondition: segmentCondition,
@as("EventStartCondition") eventStartCondition: eventStartCondition,
@as("Description") description: __string
}
type multiConditionalBranch = {
@as("NextActivity") nextActivity: __string,
@as("Condition") condition: simpleCondition
}
type listOfSimpleCondition = array<simpleCondition>
type listOfSegmentGroup = array<segmentGroup>
type eventsRequest = {
@as("BatchItem") batchItem: option<mapOfEventsBatch>
}
type segmentGroupList = {
@as("Include") include: include,
@as("Groups") groups: listOfSegmentGroup
}
type listOfWriteTreatmentResource = array<writeTreatmentResource>
type listOfTreatmentResource = array<treatmentResource>
type listOfMultiConditionalBranch = array<multiConditionalBranch>
type condition = {
@as("Operator") operator: operator,
@as("Conditions") conditions: listOfSimpleCondition
}
type writeSegmentRequest = {
@as("tags") tags: mapOf__string,
@as("SegmentGroups") segmentGroups: segmentGroupList,
@as("Name") name: __string,
@as("Dimensions") dimensions: segmentDimensions
}
type writeCampaignRequest = {
@as("TreatmentName") treatmentName: __string,
@as("TreatmentDescription") treatmentDescription: __string,
@as("TemplateConfiguration") templateConfiguration: templateConfiguration,
@as("tags") tags: mapOf__string,
@as("SegmentVersion") segmentVersion: __integer,
@as("SegmentId") segmentId: __string,
@as("Schedule") schedule: schedule,
@as("Name") name: __string,
@as("MessageConfiguration") messageConfiguration: messageConfiguration,
@as("Limits") limits: campaignLimits,
@as("IsPaused") isPaused: __boolean,
@as("Hook") hook: campaignHook,
@as("HoldoutPercent") holdoutPercent: __integer,
@as("Description") description: __string,
@as("CustomDeliveryConfiguration") customDeliveryConfiguration: customDeliveryConfiguration,
@as("AdditionalTreatments") additionalTreatments: listOfWriteTreatmentResource
}
type segmentResponse = {
@as("Version") version: __integer,
@as("tags") tags: mapOf__string,
@as("SegmentType") segmentType: option<segmentType>,
@as("SegmentGroups") segmentGroups: segmentGroupList,
@as("Name") name: __string,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("ImportDefinition") importDefinition: segmentImportResource,
@as("Id") id: option<__string>,
@as("Dimensions") dimensions: segmentDimensions,
@as("CreationDate") creationDate: option<__string>,
@as("Arn") arn: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type multiConditionalSplitActivity = {
@as("EvaluationWaitTime") evaluationWaitTime: waitTime,
@as("DefaultActivity") defaultActivity: __string,
@as("Branches") branches: listOfMultiConditionalBranch
}
type conditionalSplitActivity = {
@as("TrueActivity") trueActivity: __string,
@as("FalseActivity") falseActivity: __string,
@as("EvaluationWaitTime") evaluationWaitTime: waitTime,
@as("Condition") condition: condition
}
type campaignResponse = {
@as("Version") version: __integer,
@as("TreatmentName") treatmentName: __string,
@as("TreatmentDescription") treatmentDescription: __string,
@as("TemplateConfiguration") templateConfiguration: templateConfiguration,
@as("tags") tags: mapOf__string,
@as("State") state: campaignState,
@as("SegmentVersion") segmentVersion: option<__integer>,
@as("SegmentId") segmentId: option<__string>,
@as("Schedule") schedule: schedule,
@as("Name") name: __string,
@as("MessageConfiguration") messageConfiguration: messageConfiguration,
@as("Limits") limits: campaignLimits,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("IsPaused") isPaused: __boolean,
@as("Id") id: option<__string>,
@as("Hook") hook: campaignHook,
@as("HoldoutPercent") holdoutPercent: __integer,
@as("Description") description: __string,
@as("DefaultState") defaultState: campaignState,
@as("CustomDeliveryConfiguration") customDeliveryConfiguration: customDeliveryConfiguration,
@as("CreationDate") creationDate: option<__string>,
@as("Arn") arn: option<__string>,
@as("ApplicationId") applicationId: option<__string>,
@as("AdditionalTreatments") additionalTreatments: listOfTreatmentResource
}
type listOfSegmentResponse = array<segmentResponse>
type listOfCampaignResponse = array<campaignResponse>
type activity = {
@as("Wait") wait: waitActivity,
@as("SMS") sMS: sMSMessageActivity,
@as("RandomSplit") randomSplit: randomSplitActivity,
@as("PUSH") pUSH: pushMessageActivity,
@as("MultiCondition") multiCondition: multiConditionalSplitActivity,
@as("Holdout") holdout: holdoutActivity,
@as("EMAIL") eMAIL: emailMessageActivity,
@as("Description") description: __string,
@as("ConditionalSplit") conditionalSplit: conditionalSplitActivity,
@as("CUSTOM") cUSTOM: customMessageActivity
}
type segmentsResponse = {
@as("NextToken") nextToken: __string,
@as("Item") item: option<listOfSegmentResponse>
}
type mapOfActivity = Js.Dict.t< activity>
type campaignsResponse = {
@as("NextToken") nextToken: __string,
@as("Item") item: option<listOfCampaignResponse>
}
type writeJourneyRequest = {
@as("RefreshOnSegmentUpdate") refreshOnSegmentUpdate: __boolean,
@as("WaitForQuietTime") waitForQuietTime: __boolean,
@as("State") state: state,
@as("StartCondition") startCondition: startCondition,
@as("StartActivity") startActivity: __string,
@as("Schedule") schedule: journeySchedule,
@as("RefreshFrequency") refreshFrequency: __string,
@as("QuietTime") quietTime: quietTime,
@as("Name") name: option<__string>,
@as("LocalTime") localTime: __boolean,
@as("Limits") limits: journeyLimits,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("CreationDate") creationDate: __string,
@as("Activities") activities: mapOfActivity
}
type journeyResponse = {
@as("RefreshOnSegmentUpdate") refreshOnSegmentUpdate: __boolean,
@as("WaitForQuietTime") waitForQuietTime: __boolean,
@as("tags") tags: mapOf__string,
@as("State") state: state,
@as("StartCondition") startCondition: startCondition,
@as("StartActivity") startActivity: __string,
@as("Schedule") schedule: journeySchedule,
@as("RefreshFrequency") refreshFrequency: __string,
@as("QuietTime") quietTime: quietTime,
@as("Name") name: option<__string>,
@as("LocalTime") localTime: __boolean,
@as("Limits") limits: journeyLimits,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("Id") id: option<__string>,
@as("CreationDate") creationDate: __string,
@as("ApplicationId") applicationId: option<__string>,
@as("Activities") activities: mapOfActivity
}
type listOfJourneyResponse = array<journeyResponse>
type journeysResponse = {
@as("NextToken") nextToken: __string,
@as("Item") item: option<listOfJourneyResponse>
}
type clientType;
@module("@aws-sdk/client-mobiletargeting") @new external createClient: unit => clientType = "PinpointClient";
module UpdateVoiceChannel = {
  type t;
  type request = {
@as("VoiceChannelRequest") voiceChannelRequest: option<voiceChannelRequest>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("VoiceChannelResponse") voiceChannelResponse: option<voiceChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateVoiceChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTemplateActiveVersion = {
  type t;
  type request = {
@as("TemplateType") templateType: option<__string>,
@as("TemplateName") templateName: option<__string>,
@as("TemplateActiveVersionRequest") templateActiveVersionRequest: option<templateActiveVersionRequest>
}
  type response = {
@as("MessageBody") messageBody: option<messageBody>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateTemplateActiveVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSmsChannel = {
  type t;
  type request = {
@as("SMSChannelRequest") sMSChannelRequest: option<sMSChannelRequest>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("SMSChannelResponse") sMSChannelResponse: option<sMSChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateSmsChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGcmChannel = {
  type t;
  type request = {
@as("GCMChannelRequest") gCMChannelRequest: option<gCMChannelRequest>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("GCMChannelResponse") gCMChannelResponse: option<gCMChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateGcmChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateEmailChannel = {
  type t;
  type request = {
@as("EmailChannelRequest") emailChannelRequest: option<emailChannelRequest>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("EmailChannelResponse") emailChannelResponse: option<emailChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateEmailChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBaiduChannel = {
  type t;
  type request = {
@as("BaiduChannelRequest") baiduChannelRequest: option<baiduChannelRequest>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("BaiduChannelResponse") baiduChannelResponse: option<baiduChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateBaiduChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApnsVoipSandboxChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>,
@as("APNSVoipSandboxChannelRequest") aPNSVoipSandboxChannelRequest: option<aPNSVoipSandboxChannelRequest>
}
  type response = {
@as("APNSVoipSandboxChannelResponse") aPNSVoipSandboxChannelResponse: option<aPNSVoipSandboxChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateApnsVoipSandboxChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApnsVoipChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>,
@as("APNSVoipChannelRequest") aPNSVoipChannelRequest: option<aPNSVoipChannelRequest>
}
  type response = {
@as("APNSVoipChannelResponse") aPNSVoipChannelResponse: option<aPNSVoipChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateApnsVoipChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApnsSandboxChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>,
@as("APNSSandboxChannelRequest") aPNSSandboxChannelRequest: option<aPNSSandboxChannelRequest>
}
  type response = {
@as("APNSSandboxChannelResponse") aPNSSandboxChannelResponse: option<aPNSSandboxChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateApnsSandboxChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApnsChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>,
@as("APNSChannelRequest") aPNSChannelRequest: option<aPNSChannelRequest>
}
  type response = {
@as("APNSChannelResponse") aPNSChannelResponse: option<aPNSChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateApnsChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAdmChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>,
@as("ADMChannelRequest") aDMChannelRequest: option<aDMChannelRequest>
}
  type response = {
@as("ADMChannelResponse") aDMChannelResponse: option<aDMChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateAdmChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<listOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutEventStream = {
  type t;
  type request = {
@as("WriteEventStream") writeEventStream: option<writeEventStream>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("EventStream") eventStream: option<eventStream>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "PutEventStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PhoneNumberValidate = {
  type t;
  type request = {
@as("NumberValidateRequest") numberValidateRequest: option<numberValidateRequest>
}
  type response = {
@as("NumberValidateResponse") numberValidateResponse: option<numberValidateResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "PhoneNumberValidateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVoiceChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("VoiceChannelResponse") voiceChannelResponse: option<voiceChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetVoiceChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSmsChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("SMSChannelResponse") sMSChannelResponse: option<sMSChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetSmsChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGcmChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("GCMChannelResponse") gCMChannelResponse: option<gCMChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetGcmChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEventStream = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("EventStream") eventStream: option<eventStream>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetEventStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEmailChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("EmailChannelResponse") emailChannelResponse: option<emailChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetEmailChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBaiduChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("BaiduChannelResponse") baiduChannelResponse: option<baiduChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetBaiduChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApnsVoipSandboxChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("APNSVoipSandboxChannelResponse") aPNSVoipSandboxChannelResponse: option<aPNSVoipSandboxChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetApnsVoipSandboxChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApnsVoipChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("APNSVoipChannelResponse") aPNSVoipChannelResponse: option<aPNSVoipChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetApnsVoipChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApnsSandboxChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("APNSSandboxChannelResponse") aPNSSandboxChannelResponse: option<aPNSSandboxChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetApnsSandboxChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApnsChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("APNSChannelResponse") aPNSChannelResponse: option<aPNSChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetApnsChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAdmChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("ADMChannelResponse") aDMChannelResponse: option<aDMChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetAdmChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVoiceTemplate = {
  type t;
  type request = {
@as("Version") version: __string,
@as("TemplateName") templateName: option<__string>
}
  type response = {
@as("MessageBody") messageBody: option<messageBody>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteVoiceTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVoiceChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("VoiceChannelResponse") voiceChannelResponse: option<voiceChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteVoiceChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSmsTemplate = {
  type t;
  type request = {
@as("Version") version: __string,
@as("TemplateName") templateName: option<__string>
}
  type response = {
@as("MessageBody") messageBody: option<messageBody>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteSmsTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSmsChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("SMSChannelResponse") sMSChannelResponse: option<sMSChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteSmsChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePushTemplate = {
  type t;
  type request = {
@as("Version") version: __string,
@as("TemplateName") templateName: option<__string>
}
  type response = {
@as("MessageBody") messageBody: option<messageBody>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeletePushTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGcmChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("GCMChannelResponse") gCMChannelResponse: option<gCMChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteGcmChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEventStream = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("EventStream") eventStream: option<eventStream>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteEventStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEmailTemplate = {
  type t;
  type request = {
@as("Version") version: __string,
@as("TemplateName") templateName: option<__string>
}
  type response = {
@as("MessageBody") messageBody: option<messageBody>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteEmailTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEmailChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("EmailChannelResponse") emailChannelResponse: option<emailChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteEmailChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBaiduChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("BaiduChannelResponse") baiduChannelResponse: option<baiduChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteBaiduChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApnsVoipSandboxChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("APNSVoipSandboxChannelResponse") aPNSVoipSandboxChannelResponse: option<aPNSVoipSandboxChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteApnsVoipSandboxChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApnsVoipChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("APNSVoipChannelResponse") aPNSVoipChannelResponse: option<aPNSVoipChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteApnsVoipChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApnsSandboxChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("APNSSandboxChannelResponse") aPNSSandboxChannelResponse: option<aPNSSandboxChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteApnsSandboxChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApnsChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("APNSChannelResponse") aPNSChannelResponse: option<aPNSChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteApnsChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAdmChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("ADMChannelResponse") aDMChannelResponse: option<aDMChannelResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteAdmChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateVoiceTemplate = {
  type t;
  type request = {
@as("VoiceTemplateRequest") voiceTemplateRequest: option<voiceTemplateRequest>,
@as("Version") version: __string,
@as("TemplateName") templateName: option<__string>,
@as("CreateNewVersion") createNewVersion: __boolean
}
  type response = {
@as("MessageBody") messageBody: option<messageBody>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateVoiceTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSmsTemplate = {
  type t;
  type request = {
@as("Version") version: __string,
@as("TemplateName") templateName: option<__string>,
@as("SMSTemplateRequest") sMSTemplateRequest: option<sMSTemplateRequest>,
@as("CreateNewVersion") createNewVersion: __boolean
}
  type response = {
@as("MessageBody") messageBody: option<messageBody>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateSmsTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRecommenderConfiguration = {
  type t;
  type request = {
@as("UpdateRecommenderConfiguration") updateRecommenderConfiguration: option<updateRecommenderConfigurationShape>,
@as("RecommenderId") recommenderId: option<__string>
}
  type response = {
@as("RecommenderConfigurationResponse") recommenderConfigurationResponse: option<recommenderConfigurationResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateRecommenderConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePushTemplate = {
  type t;
  type request = {
@as("Version") version: __string,
@as("TemplateName") templateName: option<__string>,
@as("PushNotificationTemplateRequest") pushNotificationTemplateRequest: option<pushNotificationTemplateRequest>,
@as("CreateNewVersion") createNewVersion: __boolean
}
  type response = {
@as("MessageBody") messageBody: option<messageBody>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdatePushTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateEmailTemplate = {
  type t;
  type request = {
@as("Version") version: __string,
@as("TemplateName") templateName: option<__string>,
@as("EmailTemplateRequest") emailTemplateRequest: option<emailTemplateRequest>,
@as("CreateNewVersion") createNewVersion: __boolean
}
  type response = {
@as("MessageBody") messageBody: option<messageBody>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateEmailTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApplicationSettings = {
  type t;
  type request = {
@as("WriteApplicationSettingsRequest") writeApplicationSettingsRequest: option<writeApplicationSettingsRequest>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("ApplicationSettingsResource") applicationSettingsResource: option<applicationSettingsResource>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateApplicationSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("TagsModel") tagsModel: option<tagsModel>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RemoveAttributes = {
  type t;
  type request = {
@as("UpdateAttributesRequest") updateAttributesRequest: option<updateAttributesRequest>,
@as("AttributeType") attributeType: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("AttributesResource") attributesResource: option<attributesResource>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "RemoveAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<__string>
}
  type response = {
@as("TagsModel") tagsModel: option<tagsModel>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVoiceTemplate = {
  type t;
  type request = {
@as("Version") version: __string,
@as("TemplateName") templateName: option<__string>
}
  type response = {
@as("VoiceTemplateResponse") voiceTemplateResponse: option<voiceTemplateResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetVoiceTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSmsTemplate = {
  type t;
  type request = {
@as("Version") version: __string,
@as("TemplateName") templateName: option<__string>
}
  type response = {
@as("SMSTemplateResponse") sMSTemplateResponse: option<sMSTemplateResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetSmsTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRecommenderConfiguration = {
  type t;
  type request = {
@as("RecommenderId") recommenderId: option<__string>
}
  type response = {
@as("RecommenderConfigurationResponse") recommenderConfigurationResponse: option<recommenderConfigurationResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetRecommenderConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPushTemplate = {
  type t;
  type request = {
@as("Version") version: __string,
@as("TemplateName") templateName: option<__string>
}
  type response = {
@as("PushNotificationTemplateResponse") pushNotificationTemplateResponse: option<pushNotificationTemplateResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetPushTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJourneyExecutionMetrics = {
  type t;
  type request = {
@as("PageSize") pageSize: __string,
@as("NextToken") nextToken: __string,
@as("JourneyId") journeyId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("JourneyExecutionMetricsResponse") journeyExecutionMetricsResponse: option<journeyExecutionMetricsResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetJourneyExecutionMetricsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJourneyExecutionActivityMetrics = {
  type t;
  type request = {
@as("PageSize") pageSize: __string,
@as("NextToken") nextToken: __string,
@as("JourneyId") journeyId: option<__string>,
@as("JourneyActivityId") journeyActivityId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("JourneyExecutionActivityMetricsResponse") journeyExecutionActivityMetricsResponse: option<journeyExecutionActivityMetricsResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetJourneyExecutionActivityMetricsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetImportJob = {
  type t;
  type request = {
@as("JobId") jobId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("ImportJobResponse") importJobResponse: option<importJobResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetImportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetExportJob = {
  type t;
  type request = {
@as("JobId") jobId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("ExportJobResponse") exportJobResponse: option<exportJobResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEmailTemplate = {
  type t;
  type request = {
@as("Version") version: __string,
@as("TemplateName") templateName: option<__string>
}
  type response = {
@as("EmailTemplateResponse") emailTemplateResponse: option<emailTemplateResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetEmailTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApplicationSettings = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("ApplicationSettingsResource") applicationSettingsResource: option<applicationSettingsResource>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetApplicationSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApp = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("ApplicationResponse") applicationResponse: option<applicationResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetAppCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRecommenderConfiguration = {
  type t;
  type request = {
@as("RecommenderId") recommenderId: option<__string>
}
  type response = {
@as("RecommenderConfigurationResponse") recommenderConfigurationResponse: option<recommenderConfigurationResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteRecommenderConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApp = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("ApplicationResponse") applicationResponse: option<applicationResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteAppCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVoiceTemplate = {
  type t;
  type request = {
@as("VoiceTemplateRequest") voiceTemplateRequest: option<voiceTemplateRequest>,
@as("TemplateName") templateName: option<__string>
}
  type response = {
@as("CreateTemplateMessageBody") createTemplateMessageBody: option<createTemplateMessageBody>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateVoiceTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSmsTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: option<__string>,
@as("SMSTemplateRequest") sMSTemplateRequest: option<sMSTemplateRequest>
}
  type response = {
@as("CreateTemplateMessageBody") createTemplateMessageBody: option<createTemplateMessageBody>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateSmsTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRecommenderConfiguration = {
  type t;
  type request = {
@as("CreateRecommenderConfiguration") createRecommenderConfiguration: option<createRecommenderConfigurationShape>
}
  type response = {
@as("RecommenderConfigurationResponse") recommenderConfigurationResponse: option<recommenderConfigurationResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateRecommenderConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePushTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: option<__string>,
@as("PushNotificationTemplateRequest") pushNotificationTemplateRequest: option<pushNotificationTemplateRequest>
}
  type response = {
@as("CreateTemplateMessageBody") createTemplateMessageBody: option<createTemplateMessageBody>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreatePushTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateImportJob = {
  type t;
  type request = {
@as("ImportJobRequest") importJobRequest: option<importJobRequest>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("ImportJobResponse") importJobResponse: option<importJobResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateImportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateExportJob = {
  type t;
  type request = {
@as("ExportJobRequest") exportJobRequest: option<exportJobRequest>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("ExportJobResponse") exportJobResponse: option<exportJobResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEmailTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: option<__string>,
@as("EmailTemplateRequest") emailTemplateRequest: option<emailTemplateRequest>
}
  type response = {
@as("CreateTemplateMessageBody") createTemplateMessageBody: option<createTemplateMessageBody>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateEmailTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApp = {
  type t;
  type request = {
@as("CreateApplicationRequest") createApplicationRequest: option<createApplicationRequest>
}
  type response = {
@as("ApplicationResponse") applicationResponse: option<applicationResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateAppCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTemplateVersions = {
  type t;
  type request = {
@as("TemplateType") templateType: option<__string>,
@as("TemplateName") templateName: option<__string>,
@as("PageSize") pageSize: __string,
@as("NextToken") nextToken: __string
}
  type response = {
@as("TemplateVersionsResponse") templateVersionsResponse: option<templateVersionsResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "ListTemplateVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetChannels = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("ChannelsResponse") channelsResponse: option<channelsResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetChannelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCampaignActivities = {
  type t;
  type request = {
@as("Token") token: __string,
@as("PageSize") pageSize: __string,
@as("CampaignId") campaignId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("ActivitiesResponse") activitiesResponse: option<activitiesResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetCampaignActivitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateEndpoint = {
  type t;
  type request = {
@as("EndpointRequest") endpointRequest: option<endpointRequest>,
@as("EndpointId") endpointId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("MessageBody") messageBody: option<messageBody>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTemplates = {
  type t;
  type request = {
@as("TemplateType") templateType: __string,
@as("Prefix") prefix: __string,
@as("PageSize") pageSize: __string,
@as("NextToken") nextToken: __string
}
  type response = {
@as("TemplatesResponse") templatesResponse: option<templatesResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "ListTemplatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSegmentImportJobs = {
  type t;
  type request = {
@as("Token") token: __string,
@as("SegmentId") segmentId: option<__string>,
@as("PageSize") pageSize: __string,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("ImportJobsResponse") importJobsResponse: option<importJobsResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetSegmentImportJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSegmentExportJobs = {
  type t;
  type request = {
@as("Token") token: __string,
@as("SegmentId") segmentId: option<__string>,
@as("PageSize") pageSize: __string,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("ExportJobsResponse") exportJobsResponse: option<exportJobsResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetSegmentExportJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRecommenderConfigurations = {
  type t;
  type request = {
@as("Token") token: __string,
@as("PageSize") pageSize: __string
}
  type response = {
@as("ListRecommenderConfigurationsResponse") listRecommenderConfigurationsResponse: option<listRecommenderConfigurationsResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetRecommenderConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetImportJobs = {
  type t;
  type request = {
@as("Token") token: __string,
@as("PageSize") pageSize: __string,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("ImportJobsResponse") importJobsResponse: option<importJobsResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetImportJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetExportJobs = {
  type t;
  type request = {
@as("Token") token: __string,
@as("PageSize") pageSize: __string,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("ExportJobsResponse") exportJobsResponse: option<exportJobsResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetExportJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEndpoint = {
  type t;
  type request = {
@as("EndpointId") endpointId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("EndpointResponse") endpointResponse: option<endpointResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApps = {
  type t;
  type request = {
@as("Token") token: __string,
@as("PageSize") pageSize: __string
}
  type response = {
@as("ApplicationsResponse") applicationsResponse: option<applicationsResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetAppsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEndpoint = {
  type t;
  type request = {
@as("EndpointId") endpointId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("EndpointResponse") endpointResponse: option<endpointResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendUsersMessages = {
  type t;
  type request = {
@as("SendUsersMessageRequest") sendUsersMessageRequest: option<sendUsersMessageRequest>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("SendUsersMessageResponse") sendUsersMessageResponse: option<sendUsersMessageResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "SendUsersMessagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendMessages = {
  type t;
  type request = {
@as("MessageRequest") messageRequest: option<messageRequest>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("MessageResponse") messageResponse: option<messageResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "SendMessagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateEndpointsBatch = {
  type t;
  type request = {
@as("EndpointBatchRequest") endpointBatchRequest: option<endpointBatchRequest>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("MessageBody") messageBody: option<messageBody>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateEndpointsBatchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUserEndpoints = {
  type t;
  type request = {
@as("UserId") userId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("EndpointsResponse") endpointsResponse: option<endpointsResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetUserEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJourneyDateRangeKpi = {
  type t;
  type request = {
@as("StartTime") startTime: __timestampIso8601,
@as("PageSize") pageSize: __string,
@as("NextToken") nextToken: __string,
@as("KpiName") kpiName: option<__string>,
@as("JourneyId") journeyId: option<__string>,
@as("EndTime") endTime: __timestampIso8601,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("JourneyDateRangeKpiResponse") journeyDateRangeKpiResponse: option<journeyDateRangeKpiResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetJourneyDateRangeKpiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCampaignDateRangeKpi = {
  type t;
  type request = {
@as("StartTime") startTime: __timestampIso8601,
@as("PageSize") pageSize: __string,
@as("NextToken") nextToken: __string,
@as("KpiName") kpiName: option<__string>,
@as("EndTime") endTime: __timestampIso8601,
@as("CampaignId") campaignId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("CampaignDateRangeKpiResponse") campaignDateRangeKpiResponse: option<campaignDateRangeKpiResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetCampaignDateRangeKpiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApplicationDateRangeKpi = {
  type t;
  type request = {
@as("StartTime") startTime: __timestampIso8601,
@as("PageSize") pageSize: __string,
@as("NextToken") nextToken: __string,
@as("KpiName") kpiName: option<__string>,
@as("EndTime") endTime: __timestampIso8601,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("ApplicationDateRangeKpiResponse") applicationDateRangeKpiResponse: option<applicationDateRangeKpiResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetApplicationDateRangeKpiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteUserEndpoints = {
  type t;
  type request = {
@as("UserId") userId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("EndpointsResponse") endpointsResponse: option<endpointsResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteUserEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutEvents = {
  type t;
  type request = {
@as("EventsRequest") eventsRequest: option<eventsRequest>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("EventsResponse") eventsResponse: option<eventsResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "PutEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSegment = {
  type t;
  type request = {
@as("WriteSegmentRequest") writeSegmentRequest: option<writeSegmentRequest>,
@as("SegmentId") segmentId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("SegmentResponse") segmentResponse: option<segmentResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateSegmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCampaign = {
  type t;
  type request = {
@as("WriteCampaignRequest") writeCampaignRequest: option<writeCampaignRequest>,
@as("CampaignId") campaignId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("CampaignResponse") campaignResponse: option<campaignResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateCampaignCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSegmentVersion = {
  type t;
  type request = {
@as("Version") version: option<__string>,
@as("SegmentId") segmentId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("SegmentResponse") segmentResponse: option<segmentResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetSegmentVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSegment = {
  type t;
  type request = {
@as("SegmentId") segmentId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("SegmentResponse") segmentResponse: option<segmentResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetSegmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCampaignVersion = {
  type t;
  type request = {
@as("Version") version: option<__string>,
@as("CampaignId") campaignId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("CampaignResponse") campaignResponse: option<campaignResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetCampaignVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCampaign = {
  type t;
  type request = {
@as("CampaignId") campaignId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("CampaignResponse") campaignResponse: option<campaignResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetCampaignCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSegment = {
  type t;
  type request = {
@as("SegmentId") segmentId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("SegmentResponse") segmentResponse: option<segmentResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteSegmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCampaign = {
  type t;
  type request = {
@as("CampaignId") campaignId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("CampaignResponse") campaignResponse: option<campaignResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteCampaignCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSegment = {
  type t;
  type request = {
@as("WriteSegmentRequest") writeSegmentRequest: option<writeSegmentRequest>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("SegmentResponse") segmentResponse: option<segmentResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateSegmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCampaign = {
  type t;
  type request = {
@as("WriteCampaignRequest") writeCampaignRequest: option<writeCampaignRequest>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("CampaignResponse") campaignResponse: option<campaignResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateCampaignCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSegments = {
  type t;
  type request = {
@as("Token") token: __string,
@as("PageSize") pageSize: __string,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("SegmentsResponse") segmentsResponse: option<segmentsResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetSegmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSegmentVersions = {
  type t;
  type request = {
@as("Token") token: __string,
@as("SegmentId") segmentId: option<__string>,
@as("PageSize") pageSize: __string,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("SegmentsResponse") segmentsResponse: option<segmentsResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetSegmentVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCampaigns = {
  type t;
  type request = {
@as("Token") token: __string,
@as("PageSize") pageSize: __string,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("CampaignsResponse") campaignsResponse: option<campaignsResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetCampaignsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCampaignVersions = {
  type t;
  type request = {
@as("Token") token: __string,
@as("PageSize") pageSize: __string,
@as("CampaignId") campaignId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("CampaignsResponse") campaignsResponse: option<campaignsResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetCampaignVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateJourneyState = {
  type t;
  type request = {
@as("JourneyStateRequest") journeyStateRequest: option<journeyStateRequest>,
@as("JourneyId") journeyId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("JourneyResponse") journeyResponse: option<journeyResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateJourneyStateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateJourney = {
  type t;
  type request = {
@as("WriteJourneyRequest") writeJourneyRequest: option<writeJourneyRequest>,
@as("JourneyId") journeyId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("JourneyResponse") journeyResponse: option<journeyResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateJourneyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJourney = {
  type t;
  type request = {
@as("JourneyId") journeyId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("JourneyResponse") journeyResponse: option<journeyResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetJourneyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteJourney = {
  type t;
  type request = {
@as("JourneyId") journeyId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("JourneyResponse") journeyResponse: option<journeyResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteJourneyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateJourney = {
  type t;
  type request = {
@as("WriteJourneyRequest") writeJourneyRequest: option<writeJourneyRequest>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("JourneyResponse") journeyResponse: option<journeyResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateJourneyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJourneys = {
  type t;
  type request = {
@as("Token") token: __string,
@as("PageSize") pageSize: __string,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("JourneysResponse") journeysResponse: option<journeysResponse>
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "ListJourneysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
