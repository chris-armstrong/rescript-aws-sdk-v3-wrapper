type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type __timestampIso8601 = Js.Date.t;
type __string = string
type __integer = int
type __double = float
type __boolean = bool
type __blob = NodeJs.Buffer.t
type __EndpointTypesElement = [@as("CUSTOM") #CUSTOM | @as("BAIDU") #BAIDU | @as("EMAIL") #EMAIL | @as("VOICE") #VOICE | @as("SMS") #SMS | @as("ADM") #ADM | @as("APNS_VOIP_SANDBOX") #APNSVOIPSANDBOX | @as("APNS_VOIP") #APNSVOIP | @as("APNS_SANDBOX") #APNSSANDBOX | @as("APNS") #APNS | @as("GCM") #GCM | @as("PUSH") #PUSH]
type type_ = [@as("NONE") #NONE | @as("ANY") #ANY | @as("ALL") #ALL]
type templateType = [@as("PUSH") #PUSH | @as("VOICE") #VOICE | @as("SMS") #SMS | @as("EMAIL") #EMAIL]
type state = [@as("PAUSED") #PAUSED | @as("CLOSED") #CLOSED | @as("CANCELLED") #CANCELLED | @as("COMPLETED") #COMPLETED | @as("ACTIVE") #ACTIVE | @as("DRAFT") #DRAFT]
type sourceType = [@as("NONE") #NONE | @as("ANY") #ANY | @as("ALL") #ALL]
type segmentType = [@as("IMPORT") #IMPORT | @as("DIMENSIONAL") #DIMENSIONAL]
type recencyType = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type operator = [@as("ANY") #ANY | @as("ALL") #ALL]
type mode = [@as("FILTER") #FILTER | @as("DELIVERY") #DELIVERY]
type messageType = [@as("PROMOTIONAL") #PROMOTIONAL | @as("TRANSACTIONAL") #TRANSACTIONAL]
type jobStatus = [@as("FAILED") #FAILED | @as("FAILING") #FAILING | @as("COMPLETED") #COMPLETED | @as("COMPLETING") #COMPLETING | @as("PENDING_JOB") #PENDINGJOB | @as("PROCESSING") #PROCESSING | @as("INITIALIZING") #INITIALIZING | @as("PREPARING_FOR_INITIALIZATION") #PREPARINGFORINITIALIZATION | @as("CREATED") #CREATED]
type include_ = [@as("NONE") #NONE | @as("ANY") #ANY | @as("ALL") #ALL]
type frequency = [@as("EVENT") #EVENT | @as("MONTHLY") #MONTHLY | @as("WEEKLY") #WEEKLY | @as("DAILY") #DAILY | @as("HOURLY") #HOURLY | @as("ONCE") #ONCE]
type format = [@as("JSON") #JSON | @as("CSV") #CSV]
type filterType = [@as("ENDPOINT") #ENDPOINT | @as("SYSTEM") #SYSTEM]
type duration = [@as("DAY_30") #DAY30 | @as("DAY_14") #DAY14 | @as("DAY_7") #DAY7 | @as("HR_24") #HR24]
type dimensionType = [@as("EXCLUSIVE") #EXCLUSIVE | @as("INCLUSIVE") #INCLUSIVE]
type deliveryStatus = [@as("DUPLICATE") #DUPLICATE | @as("OPT_OUT") #OPTOUT | @as("UNKNOWN_FAILURE") #UNKNOWNFAILURE | @as("PERMANENT_FAILURE") #PERMANENTFAILURE | @as("TEMPORARY_FAILURE") #TEMPORARYFAILURE | @as("THROTTLED") #THROTTLED | @as("SUCCESSFUL") #SUCCESSFUL]
type channelType = [@as("CUSTOM") #CUSTOM | @as("BAIDU") #BAIDU | @as("EMAIL") #EMAIL | @as("VOICE") #VOICE | @as("SMS") #SMS | @as("ADM") #ADM | @as("APNS_VOIP_SANDBOX") #APNSVOIPSANDBOX | @as("APNS_VOIP") #APNSVOIP | @as("APNS_SANDBOX") #APNSSANDBOX | @as("APNS") #APNS | @as("GCM") #GCM | @as("PUSH") #PUSH]
type campaignStatus = [@as("INVALID") #INVALID | @as("DELETED") #DELETED | @as("PAUSED") #PAUSED | @as("COMPLETED") #COMPLETED | @as("PENDING_NEXT_RUN") #PENDINGNEXTRUN | @as("EXECUTING") #EXECUTING | @as("SCHEDULED") #SCHEDULED]
type attributeType = [@as("BETWEEN") #BETWEEN | @as("ON") #ON | @as("AFTER") #AFTER | @as("BEFORE") #BEFORE | @as("CONTAINS") #CONTAINS | @as("EXCLUSIVE") #EXCLUSIVE | @as("INCLUSIVE") #INCLUSIVE]
type action = [@as("URL") #URL | @as("DEEP_LINK") #DEEPLINK | @as("OPEN_APP") #OPENAPP]
type writeEventStream = {
@as("RoleArn") roleArn: __string,
@as("DestinationStreamArn") destinationStreamArn: __string
}
type waitTime = {
@as("WaitUntil") waitUntil: option<__string>,
@as("WaitFor") waitFor: option<__string>
}
type voiceChannelResponse = {
@as("Version") version: option<__integer>,
@as("Platform") platform: __string,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("LastModifiedBy") lastModifiedBy: option<__string>,
@as("IsArchived") isArchived: option<__boolean>,
@as("Id") id: option<__string>,
@as("HasCredential") hasCredential: option<__boolean>,
@as("Enabled") enabled: option<__boolean>,
@as("CreationDate") creationDate: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type voiceChannelRequest = {
@as("Enabled") enabled: option<__boolean>
}
type templateVersionResponse = {
@as("Version") version: option<__string>,
@as("TemplateType") templateType: __string,
@as("TemplateName") templateName: __string,
@as("TemplateDescription") templateDescription: option<__string>,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("DefaultSubstitutions") defaultSubstitutions: option<__string>,
@as("CreationDate") creationDate: __string
}
type templateActiveVersionRequest = {
@as("Version") version: option<__string>
}
type template = {
@as("Version") version: option<__string>,
@as("Name") name: option<__string>
}
type simpleEmailPart = {
@as("Data") data: option<__string>,
@as("Charset") charset: option<__string>
}
type session = {
@as("StopTimestamp") stopTimestamp: option<__string>,
@as("StartTimestamp") startTimestamp: __string,
@as("Id") id: __string,
@as("Duration") duration: option<__integer>
}
type segmentReference = {
@as("Version") version: option<__integer>,
@as("Id") id: __string
}
type segmentCondition = {
@as("SegmentId") segmentId: __string
}
type smschannelResponse = {
@as("Version") version: option<__integer>,
@as("TransactionalMessagesPerSecond") transactionalMessagesPerSecond: option<__integer>,
@as("ShortCode") shortCode: option<__string>,
@as("SenderId") senderId: option<__string>,
@as("PromotionalMessagesPerSecond") promotionalMessagesPerSecond: option<__integer>,
@as("Platform") platform: __string,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("LastModifiedBy") lastModifiedBy: option<__string>,
@as("IsArchived") isArchived: option<__boolean>,
@as("Id") id: option<__string>,
@as("HasCredential") hasCredential: option<__boolean>,
@as("Enabled") enabled: option<__boolean>,
@as("CreationDate") creationDate: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type smschannelRequest = {
@as("ShortCode") shortCode: option<__string>,
@as("SenderId") senderId: option<__string>,
@as("Enabled") enabled: option<__boolean>
}
type resultRowValue = {
@as("Value") value: __string,
@as("Type") type_: __string,
@as("Key") key: __string
}
type recencyDimension = {
@as("RecencyType") recencyType: recencyType,
@as("Duration") duration: duration
}
type rawEmail = {
@as("Data") data: option<__blob>
}
type randomSplitEntry = {
@as("Percentage") percentage: option<__integer>,
@as("NextActivity") nextActivity: option<__string>
}
type quietTime = {
@as("Start") start: option<__string>,
@as("End") end: option<__string>
}
type numberValidateResponse = {
@as("ZipCode") zipCode: option<__string>,
@as("Timezone") timezone: option<__string>,
@as("PhoneTypeCode") phoneTypeCode: option<__integer>,
@as("PhoneType") phoneType: option<__string>,
@as("OriginalPhoneNumber") originalPhoneNumber: option<__string>,
@as("OriginalCountryCodeIso2") originalCountryCodeIso2: option<__string>,
@as("County") county: option<__string>,
@as("CountryCodeNumeric") countryCodeNumeric: option<__string>,
@as("CountryCodeIso2") countryCodeIso2: option<__string>,
@as("Country") country: option<__string>,
@as("CleansedPhoneNumberNational") cleansedPhoneNumberNational: option<__string>,
@as("CleansedPhoneNumberE164") cleansedPhoneNumberE164: option<__string>,
@as("City") city: option<__string>,
@as("Carrier") carrier: option<__string>
}
type numberValidateRequest = {
@as("PhoneNumber") phoneNumber: option<__string>,
@as("IsoCountryCode") isoCountryCode: option<__string>
}
type metricDimension = {
@as("Value") value: __double,
@as("ComparisonOperator") comparisonOperator: __string
}
type messageResult = {
@as("UpdatedToken") updatedToken: option<__string>,
@as("StatusMessage") statusMessage: option<__string>,
@as("StatusCode") statusCode: __integer,
@as("MessageId") messageId: option<__string>,
@as("DeliveryStatus") deliveryStatus: deliveryStatus
}
type messageBody = {
@as("RequestID") requestID: option<__string>,
@as("Message") message: option<__string>
}
type message = {
@as("Url") url: option<__string>,
@as("Title") title: option<__string>,
@as("TimeToLive") timeToLive: option<__integer>,
@as("SilentPush") silentPush: option<__boolean>,
@as("RawContent") rawContent: option<__string>,
@as("MediaUrl") mediaUrl: option<__string>,
@as("JsonBody") jsonBody: option<__string>,
@as("ImageUrl") imageUrl: option<__string>,
@as("ImageSmallIconUrl") imageSmallIconUrl: option<__string>,
@as("ImageIconUrl") imageIconUrl: option<__string>,
@as("Body") body: option<__string>,
@as("Action") action: option<action>
}
type mapOf__string = Js.Dict.t< __string>
type mapOf__integer = Js.Dict.t< __integer>
type mapOf__double = Js.Dict.t< __double>
type listOf__string = array<__string>
type listOf__EndpointTypesElement = array<__EndpointTypesElement>
type journeyStateRequest = {
@as("State") state: option<state>
}
type journeySchedule = {
@as("Timezone") timezone: option<__string>,
@as("StartTime") startTime: option<__timestampIso8601>,
@as("EndTime") endTime: option<__timestampIso8601>
}
type journeySMSMessage = {
@as("TemplateId") templateId: option<__string>,
@as("EntityId") entityId: option<__string>,
@as("SenderId") senderId: option<__string>,
@as("OriginationNumber") originationNumber: option<__string>,
@as("MessageType") messageType: option<messageType>
}
type journeyPushMessage = {
@as("TimeToLive") timeToLive: option<__string>
}
type journeyLimits = {
@as("EndpointReentryInterval") endpointReentryInterval: option<__string>,
@as("MessagesPerSecond") messagesPerSecond: option<__integer>,
@as("EndpointReentryCap") endpointReentryCap: option<__integer>,
@as("DailyCap") dailyCap: option<__integer>
}
type journeyEmailMessage = {
@as("FromAddress") fromAddress: option<__string>
}
type journeyCustomMessage = {
@as("Data") data: option<__string>
}
type importJobResource = {
@as("SegmentName") segmentName: option<__string>,
@as("SegmentId") segmentId: option<__string>,
@as("S3Url") s3Url: __string,
@as("RoleArn") roleArn: __string,
@as("RegisterEndpoints") registerEndpoints: option<__boolean>,
@as("Format") format: format,
@as("ExternalId") externalId: option<__string>,
@as("DefineSegment") defineSegment: option<__boolean>
}
type importJobRequest = {
@as("SegmentName") segmentName: option<__string>,
@as("SegmentId") segmentId: option<__string>,
@as("S3Url") s3Url: __string,
@as("RoleArn") roleArn: __string,
@as("RegisterEndpoints") registerEndpoints: option<__boolean>,
@as("Format") format: format,
@as("ExternalId") externalId: option<__string>,
@as("DefineSegment") defineSegment: option<__boolean>
}
type holdoutActivity = {
@as("Percentage") percentage: __integer,
@as("NextActivity") nextActivity: option<__string>
}
type gpscoordinates = {
@as("Longitude") longitude: __double,
@as("Latitude") latitude: __double
}
type gcmchannelResponse = {
@as("Version") version: option<__integer>,
@as("Platform") platform: __string,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("LastModifiedBy") lastModifiedBy: option<__string>,
@as("IsArchived") isArchived: option<__boolean>,
@as("Id") id: option<__string>,
@as("HasCredential") hasCredential: option<__boolean>,
@as("Enabled") enabled: option<__boolean>,
@as("Credential") credential: __string,
@as("CreationDate") creationDate: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type gcmchannelRequest = {
@as("Enabled") enabled: option<__boolean>,
@as("ApiKey") apiKey: __string
}
type exportJobResource = {
@as("SegmentVersion") segmentVersion: option<__integer>,
@as("SegmentId") segmentId: option<__string>,
@as("S3UrlPrefix") s3UrlPrefix: __string,
@as("RoleArn") roleArn: __string
}
type exportJobRequest = {
@as("SegmentVersion") segmentVersion: option<__integer>,
@as("SegmentId") segmentId: option<__string>,
@as("S3UrlPrefix") s3UrlPrefix: __string,
@as("RoleArn") roleArn: __string
}
type eventStream = {
@as("RoleArn") roleArn: __string,
@as("LastUpdatedBy") lastUpdatedBy: option<__string>,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("ExternalId") externalId: option<__string>,
@as("DestinationStreamArn") destinationStreamArn: __string,
@as("ApplicationId") applicationId: __string
}
type eventItemResponse = {
@as("StatusCode") statusCode: option<__integer>,
@as("Message") message: option<__string>
}
type endpointMessageResult = {
@as("UpdatedToken") updatedToken: option<__string>,
@as("StatusMessage") statusMessage: option<__string>,
@as("StatusCode") statusCode: __integer,
@as("MessageId") messageId: option<__string>,
@as("DeliveryStatus") deliveryStatus: deliveryStatus,
@as("Address") address: option<__string>
}
type endpointLocation = {
@as("Region") region: option<__string>,
@as("PostalCode") postalCode: option<__string>,
@as("Longitude") longitude: option<__double>,
@as("Latitude") latitude: option<__double>,
@as("Country") country: option<__string>,
@as("City") city: option<__string>
}
type endpointItemResponse = {
@as("StatusCode") statusCode: option<__integer>,
@as("Message") message: option<__string>
}
type endpointDemographic = {
@as("Timezone") timezone: option<__string>,
@as("PlatformVersion") platformVersion: option<__string>,
@as("Platform") platform: option<__string>,
@as("ModelVersion") modelVersion: option<__string>,
@as("Model") model: option<__string>,
@as("Make") make: option<__string>,
@as("Locale") locale: option<__string>,
@as("AppVersion") appVersion: option<__string>
}
type emailChannelResponse = {
@as("Version") version: option<__integer>,
@as("RoleArn") roleArn: option<__string>,
@as("Platform") platform: __string,
@as("MessagesPerSecond") messagesPerSecond: option<__integer>,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("LastModifiedBy") lastModifiedBy: option<__string>,
@as("IsArchived") isArchived: option<__boolean>,
@as("Identity") identity: option<__string>,
@as("Id") id: option<__string>,
@as("HasCredential") hasCredential: option<__boolean>,
@as("FromAddress") fromAddress: option<__string>,
@as("Enabled") enabled: option<__boolean>,
@as("CreationDate") creationDate: option<__string>,
@as("ConfigurationSet") configurationSet: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type emailChannelRequest = {
@as("RoleArn") roleArn: option<__string>,
@as("Identity") identity: __string,
@as("FromAddress") fromAddress: __string,
@as("Enabled") enabled: option<__boolean>,
@as("ConfigurationSet") configurationSet: option<__string>
}
type defaultPushNotificationTemplate = {
@as("Url") url: option<__string>,
@as("Title") title: option<__string>,
@as("Sound") sound: option<__string>,
@as("Body") body: option<__string>,
@as("Action") action: option<action>
}
type createTemplateMessageBody = {
@as("RequestID") requestID: option<__string>,
@as("Message") message: option<__string>,
@as("Arn") arn: option<__string>
}
type channelResponse = {
@as("Version") version: option<__integer>,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("LastModifiedBy") lastModifiedBy: option<__string>,
@as("IsArchived") isArchived: option<__boolean>,
@as("Id") id: option<__string>,
@as("HasCredential") hasCredential: option<__boolean>,
@as("Enabled") enabled: option<__boolean>,
@as("CreationDate") creationDate: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type campaignState = {
@as("CampaignStatus") campaignStatus: option<campaignStatus>
}
type campaignSmsMessage = {
@as("TemplateId") templateId: option<__string>,
@as("EntityId") entityId: option<__string>,
@as("SenderId") senderId: option<__string>,
@as("OriginationNumber") originationNumber: option<__string>,
@as("MessageType") messageType: option<messageType>,
@as("Body") body: option<__string>
}
type campaignLimits = {
@as("Total") total: option<__integer>,
@as("MessagesPerSecond") messagesPerSecond: option<__integer>,
@as("MaximumDuration") maximumDuration: option<__integer>,
@as("Daily") daily: option<__integer>
}
type campaignHook = {
@as("WebUrl") webUrl: option<__string>,
@as("Mode") mode: option<mode>,
@as("LambdaFunctionName") lambdaFunctionName: option<__string>
}
type campaignEmailMessage = {
@as("Title") title: option<__string>,
@as("HtmlBody") htmlBody: option<__string>,
@as("FromAddress") fromAddress: option<__string>,
@as("Body") body: option<__string>
}
type campaignCustomMessage = {
@as("Data") data: option<__string>
}
type baiduChannelResponse = {
@as("Version") version: option<__integer>,
@as("Platform") platform: __string,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("LastModifiedBy") lastModifiedBy: option<__string>,
@as("IsArchived") isArchived: option<__boolean>,
@as("Id") id: option<__string>,
@as("HasCredential") hasCredential: option<__boolean>,
@as("Enabled") enabled: option<__boolean>,
@as("Credential") credential: __string,
@as("CreationDate") creationDate: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type baiduChannelRequest = {
@as("SecretKey") secretKey: __string,
@as("Enabled") enabled: option<__boolean>,
@as("ApiKey") apiKey: __string
}
type androidPushNotificationTemplate = {
@as("Url") url: option<__string>,
@as("Title") title: option<__string>,
@as("Sound") sound: option<__string>,
@as("SmallImageIconUrl") smallImageIconUrl: option<__string>,
@as("RawContent") rawContent: option<__string>,
@as("ImageUrl") imageUrl: option<__string>,
@as("ImageIconUrl") imageIconUrl: option<__string>,
@as("Body") body: option<__string>,
@as("Action") action: option<action>
}
type activityResponse = {
@as("TreatmentId") treatmentId: option<__string>,
@as("TotalEndpointCount") totalEndpointCount: option<__integer>,
@as("TimezonesTotalCount") timezonesTotalCount: option<__integer>,
@as("TimezonesCompletedCount") timezonesCompletedCount: option<__integer>,
@as("SuccessfulEndpointCount") successfulEndpointCount: option<__integer>,
@as("State") state: option<__string>,
@as("Start") start: option<__string>,
@as("ScheduledStart") scheduledStart: option<__string>,
@as("Result") result: option<__string>,
@as("Id") id: __string,
@as("End") end: option<__string>,
@as("CampaignId") campaignId: __string,
@as("ApplicationId") applicationId: __string
}
type apnsvoipSandboxChannelResponse = {
@as("Version") version: option<__integer>,
@as("Platform") platform: __string,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("LastModifiedBy") lastModifiedBy: option<__string>,
@as("IsArchived") isArchived: option<__boolean>,
@as("Id") id: option<__string>,
@as("HasTokenKey") hasTokenKey: option<__boolean>,
@as("HasCredential") hasCredential: option<__boolean>,
@as("Enabled") enabled: option<__boolean>,
@as("DefaultAuthenticationMethod") defaultAuthenticationMethod: option<__string>,
@as("CreationDate") creationDate: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type apnsvoipSandboxChannelRequest = {
@as("TokenKeyId") tokenKeyId: option<__string>,
@as("TokenKey") tokenKey: option<__string>,
@as("TeamId") teamId: option<__string>,
@as("PrivateKey") privateKey: option<__string>,
@as("Enabled") enabled: option<__boolean>,
@as("DefaultAuthenticationMethod") defaultAuthenticationMethod: option<__string>,
@as("Certificate") certificate: option<__string>,
@as("BundleId") bundleId: option<__string>
}
type apnsvoipChannelResponse = {
@as("Version") version: option<__integer>,
@as("Platform") platform: __string,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("LastModifiedBy") lastModifiedBy: option<__string>,
@as("IsArchived") isArchived: option<__boolean>,
@as("Id") id: option<__string>,
@as("HasTokenKey") hasTokenKey: option<__boolean>,
@as("HasCredential") hasCredential: option<__boolean>,
@as("Enabled") enabled: option<__boolean>,
@as("DefaultAuthenticationMethod") defaultAuthenticationMethod: option<__string>,
@as("CreationDate") creationDate: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type apnsvoipChannelRequest = {
@as("TokenKeyId") tokenKeyId: option<__string>,
@as("TokenKey") tokenKey: option<__string>,
@as("TeamId") teamId: option<__string>,
@as("PrivateKey") privateKey: option<__string>,
@as("Enabled") enabled: option<__boolean>,
@as("DefaultAuthenticationMethod") defaultAuthenticationMethod: option<__string>,
@as("Certificate") certificate: option<__string>,
@as("BundleId") bundleId: option<__string>
}
type apnssandboxChannelResponse = {
@as("Version") version: option<__integer>,
@as("Platform") platform: __string,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("LastModifiedBy") lastModifiedBy: option<__string>,
@as("IsArchived") isArchived: option<__boolean>,
@as("Id") id: option<__string>,
@as("HasTokenKey") hasTokenKey: option<__boolean>,
@as("HasCredential") hasCredential: option<__boolean>,
@as("Enabled") enabled: option<__boolean>,
@as("DefaultAuthenticationMethod") defaultAuthenticationMethod: option<__string>,
@as("CreationDate") creationDate: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type apnssandboxChannelRequest = {
@as("TokenKeyId") tokenKeyId: option<__string>,
@as("TokenKey") tokenKey: option<__string>,
@as("TeamId") teamId: option<__string>,
@as("PrivateKey") privateKey: option<__string>,
@as("Enabled") enabled: option<__boolean>,
@as("DefaultAuthenticationMethod") defaultAuthenticationMethod: option<__string>,
@as("Certificate") certificate: option<__string>,
@as("BundleId") bundleId: option<__string>
}
type apnspushNotificationTemplate = {
@as("Url") url: option<__string>,
@as("Title") title: option<__string>,
@as("Sound") sound: option<__string>,
@as("RawContent") rawContent: option<__string>,
@as("MediaUrl") mediaUrl: option<__string>,
@as("Body") body: option<__string>,
@as("Action") action: option<action>
}
type apnschannelResponse = {
@as("Version") version: option<__integer>,
@as("Platform") platform: __string,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("LastModifiedBy") lastModifiedBy: option<__string>,
@as("IsArchived") isArchived: option<__boolean>,
@as("Id") id: option<__string>,
@as("HasTokenKey") hasTokenKey: option<__boolean>,
@as("HasCredential") hasCredential: option<__boolean>,
@as("Enabled") enabled: option<__boolean>,
@as("DefaultAuthenticationMethod") defaultAuthenticationMethod: option<__string>,
@as("CreationDate") creationDate: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type apnschannelRequest = {
@as("TokenKeyId") tokenKeyId: option<__string>,
@as("TokenKey") tokenKey: option<__string>,
@as("TeamId") teamId: option<__string>,
@as("PrivateKey") privateKey: option<__string>,
@as("Enabled") enabled: option<__boolean>,
@as("DefaultAuthenticationMethod") defaultAuthenticationMethod: option<__string>,
@as("Certificate") certificate: option<__string>,
@as("BundleId") bundleId: option<__string>
}
type admchannelResponse = {
@as("Version") version: option<__integer>,
@as("Platform") platform: __string,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("LastModifiedBy") lastModifiedBy: option<__string>,
@as("IsArchived") isArchived: option<__boolean>,
@as("Id") id: option<__string>,
@as("HasCredential") hasCredential: option<__boolean>,
@as("Enabled") enabled: option<__boolean>,
@as("CreationDate") creationDate: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type admchannelRequest = {
@as("Enabled") enabled: option<__boolean>,
@as("ClientSecret") clientSecret: __string,
@as("ClientId") clientId: __string
}
type writeApplicationSettingsRequest = {
@as("QuietTime") quietTime: option<quietTime>,
@as("Limits") limits: option<campaignLimits>,
@as("EventTaggingEnabled") eventTaggingEnabled: option<__boolean>,
@as("CloudWatchMetricsEnabled") cloudWatchMetricsEnabled: option<__boolean>,
@as("CampaignHook") campaignHook: option<campaignHook>
}
type waitActivity = {
@as("WaitTime") waitTime: option<waitTime>,
@as("NextActivity") nextActivity: option<__string>
}
type voiceTemplateResponse = {
@as("VoiceId") voiceId: option<__string>,
@as("Version") version: option<__string>,
@as("TemplateType") templateType: templateType,
@as("TemplateName") templateName: __string,
@as("TemplateDescription") templateDescription: option<__string>,
tags: option<mapOf__string>,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("LanguageCode") languageCode: option<__string>,
@as("DefaultSubstitutions") defaultSubstitutions: option<__string>,
@as("CreationDate") creationDate: __string,
@as("Body") body: option<__string>,
@as("Arn") arn: option<__string>
}
type voiceTemplateRequest = {
@as("VoiceId") voiceId: option<__string>,
@as("TemplateDescription") templateDescription: option<__string>,
tags: option<mapOf__string>,
@as("LanguageCode") languageCode: option<__string>,
@as("DefaultSubstitutions") defaultSubstitutions: option<__string>,
@as("Body") body: option<__string>
}
type updateRecommenderConfigurationShape = {
@as("RecommendationsPerMessage") recommendationsPerMessage: option<__integer>,
@as("RecommendationsDisplayName") recommendationsDisplayName: option<__string>,
@as("RecommendationTransformerUri") recommendationTransformerUri: option<__string>,
@as("RecommendationProviderUri") recommendationProviderUri: __string,
@as("RecommendationProviderRoleArn") recommendationProviderRoleArn: __string,
@as("RecommendationProviderIdType") recommendationProviderIdType: option<__string>,
@as("Name") name: option<__string>,
@as("Description") description: option<__string>,
@as("Attributes") attributes: option<mapOf__string>
}
type updateAttributesRequest = {
@as("Blacklist") blacklist: option<listOf__string>
}
type templateResponse = {
@as("Version") version: option<__string>,
@as("TemplateType") templateType: templateType,
@as("TemplateName") templateName: __string,
@as("TemplateDescription") templateDescription: option<__string>,
tags: option<mapOf__string>,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("DefaultSubstitutions") defaultSubstitutions: option<__string>,
@as("CreationDate") creationDate: __string,
@as("Arn") arn: option<__string>
}
type templateConfiguration = {
@as("VoiceTemplate") voiceTemplate: option<template>,
@as("SMSTemplate") smstemplate: option<template>,
@as("PushTemplate") pushTemplate: option<template>,
@as("EmailTemplate") emailTemplate: option<template>
}
type tagsModel = {
tags: mapOf__string
}
type simpleEmail = {
@as("TextPart") textPart: option<simpleEmailPart>,
@as("Subject") subject: option<simpleEmailPart>,
@as("HtmlPart") htmlPart: option<simpleEmailPart>
}
type setDimension = {
@as("Values") values: listOf__string,
@as("DimensionType") dimensionType: option<dimensionType>
}
type segmentImportResource = {
@as("Size") size: __integer,
@as("S3Url") s3Url: __string,
@as("RoleArn") roleArn: __string,
@as("Format") format: format,
@as("ExternalId") externalId: __string,
@as("ChannelCounts") channelCounts: option<mapOf__integer>
}
type segmentBehaviors = {
@as("Recency") recency: option<recencyDimension>
}
type smstemplateResponse = {
@as("Version") version: option<__string>,
@as("TemplateType") templateType: templateType,
@as("TemplateName") templateName: __string,
@as("TemplateDescription") templateDescription: option<__string>,
tags: option<mapOf__string>,
@as("RecommenderId") recommenderId: option<__string>,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("DefaultSubstitutions") defaultSubstitutions: option<__string>,
@as("CreationDate") creationDate: __string,
@as("Body") body: option<__string>,
@as("Arn") arn: option<__string>
}
type smstemplateRequest = {
@as("TemplateDescription") templateDescription: option<__string>,
tags: option<mapOf__string>,
@as("RecommenderId") recommenderId: option<__string>,
@as("DefaultSubstitutions") defaultSubstitutions: option<__string>,
@as("Body") body: option<__string>
}
type smsmessageActivity = {
@as("TemplateVersion") templateVersion: option<__string>,
@as("TemplateName") templateName: option<__string>,
@as("NextActivity") nextActivity: option<__string>,
@as("MessageConfig") messageConfig: option<journeySMSMessage>
}
type recommenderConfigurationResponse = {
@as("RecommendationsPerMessage") recommendationsPerMessage: option<__integer>,
@as("RecommendationsDisplayName") recommendationsDisplayName: option<__string>,
@as("RecommendationTransformerUri") recommendationTransformerUri: option<__string>,
@as("RecommendationProviderUri") recommendationProviderUri: __string,
@as("RecommendationProviderRoleArn") recommendationProviderRoleArn: __string,
@as("RecommendationProviderIdType") recommendationProviderIdType: option<__string>,
@as("Name") name: option<__string>,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("Id") id: __string,
@as("Description") description: option<__string>,
@as("CreationDate") creationDate: __string,
@as("Attributes") attributes: option<mapOf__string>
}
type pushNotificationTemplateResponse = {
@as("Version") version: option<__string>,
@as("TemplateType") templateType: templateType,
@as("TemplateName") templateName: __string,
@as("TemplateDescription") templateDescription: option<__string>,
tags: option<mapOf__string>,
@as("RecommenderId") recommenderId: option<__string>,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("GCM") gcm: option<androidPushNotificationTemplate>,
@as("DefaultSubstitutions") defaultSubstitutions: option<__string>,
@as("Default") default: option<defaultPushNotificationTemplate>,
@as("CreationDate") creationDate: __string,
@as("Baidu") baidu: option<androidPushNotificationTemplate>,
@as("Arn") arn: option<__string>,
@as("APNS") apns: option<apnspushNotificationTemplate>,
@as("ADM") adm: option<androidPushNotificationTemplate>
}
type pushNotificationTemplateRequest = {
@as("TemplateDescription") templateDescription: option<__string>,
tags: option<mapOf__string>,
@as("RecommenderId") recommenderId: option<__string>,
@as("GCM") gcm: option<androidPushNotificationTemplate>,
@as("DefaultSubstitutions") defaultSubstitutions: option<__string>,
@as("Default") default: option<defaultPushNotificationTemplate>,
@as("Baidu") baidu: option<androidPushNotificationTemplate>,
@as("APNS") apns: option<apnspushNotificationTemplate>,
@as("ADM") adm: option<androidPushNotificationTemplate>
}
type pushMessageActivity = {
@as("TemplateVersion") templateVersion: option<__string>,
@as("TemplateName") templateName: option<__string>,
@as("NextActivity") nextActivity: option<__string>,
@as("MessageConfig") messageConfig: option<journeyPushMessage>
}
type messageConfiguration = {
@as("SMSMessage") smsmessage: option<campaignSmsMessage>,
@as("GCMMessage") gcmmessage: option<message>,
@as("EmailMessage") emailMessage: option<campaignEmailMessage>,
@as("DefaultMessage") defaultMessage: option<message>,
@as("CustomMessage") customMessage: option<campaignCustomMessage>,
@as("BaiduMessage") baiduMessage: option<message>,
@as("APNSMessage") apnsmessage: option<message>,
@as("ADMMessage") admmessage: option<message>
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
@as("Metrics") metrics: mapOf__string,
@as("LastEvaluatedTime") lastEvaluatedTime: __string,
@as("JourneyId") journeyId: __string,
@as("ApplicationId") applicationId: __string
}
type journeyExecutionActivityMetricsResponse = {
@as("Metrics") metrics: mapOf__string,
@as("LastEvaluatedTime") lastEvaluatedTime: __string,
@as("JourneyId") journeyId: __string,
@as("JourneyActivityId") journeyActivityId: __string,
@as("ApplicationId") applicationId: __string,
@as("ActivityType") activityType: __string
}
type importJobResponse = {
@as("Type") type_: __string,
@as("TotalProcessed") totalProcessed: option<__integer>,
@as("TotalPieces") totalPieces: option<__integer>,
@as("TotalFailures") totalFailures: option<__integer>,
@as("JobStatus") jobStatus: jobStatus,
@as("Id") id: __string,
@as("Failures") failures: option<listOf__string>,
@as("FailedPieces") failedPieces: option<__integer>,
@as("Definition") definition: importJobResource,
@as("CreationDate") creationDate: __string,
@as("CompletionDate") completionDate: option<__string>,
@as("CompletedPieces") completedPieces: option<__integer>,
@as("ApplicationId") applicationId: __string
}
type gpspointDimension = {
@as("RangeInKilometers") rangeInKilometers: option<__double>,
@as("Coordinates") coordinates: gpscoordinates
}
type exportJobResponse = {
@as("Type") type_: __string,
@as("TotalProcessed") totalProcessed: option<__integer>,
@as("TotalPieces") totalPieces: option<__integer>,
@as("TotalFailures") totalFailures: option<__integer>,
@as("JobStatus") jobStatus: jobStatus,
@as("Id") id: __string,
@as("Failures") failures: option<listOf__string>,
@as("FailedPieces") failedPieces: option<__integer>,
@as("Definition") definition: exportJobResource,
@as("CreationDate") creationDate: __string,
@as("CompletionDate") completionDate: option<__string>,
@as("CompletedPieces") completedPieces: option<__integer>,
@as("ApplicationId") applicationId: __string
}
type event = {
@as("Timestamp") timestamp_: __string,
@as("Session") session: option<session>,
@as("SdkName") sdkName: option<__string>,
@as("Metrics") metrics: option<mapOf__double>,
@as("EventType") eventType: __string,
@as("ClientSdkVersion") clientSdkVersion: option<__string>,
@as("Attributes") attributes: option<mapOf__string>,
@as("AppVersionCode") appVersionCode: option<__string>,
@as("AppTitle") appTitle: option<__string>,
@as("AppPackageName") appPackageName: option<__string>
}
type emailTemplateResponse = {
@as("Version") version: option<__string>,
@as("TextPart") textPart: option<__string>,
@as("TemplateType") templateType: templateType,
@as("TemplateName") templateName: __string,
@as("TemplateDescription") templateDescription: option<__string>,
tags: option<mapOf__string>,
@as("Subject") subject: option<__string>,
@as("RecommenderId") recommenderId: option<__string>,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("HtmlPart") htmlPart: option<__string>,
@as("DefaultSubstitutions") defaultSubstitutions: option<__string>,
@as("CreationDate") creationDate: __string,
@as("Arn") arn: option<__string>
}
type emailTemplateRequest = {
@as("TextPart") textPart: option<__string>,
@as("TemplateDescription") templateDescription: option<__string>,
tags: option<mapOf__string>,
@as("Subject") subject: option<__string>,
@as("RecommenderId") recommenderId: option<__string>,
@as("HtmlPart") htmlPart: option<__string>,
@as("DefaultSubstitutions") defaultSubstitutions: option<__string>
}
type emailMessageActivity = {
@as("TemplateVersion") templateVersion: option<__string>,
@as("TemplateName") templateName: option<__string>,
@as("NextActivity") nextActivity: option<__string>,
@as("MessageConfig") messageConfig: option<journeyEmailMessage>
}
type customMessageActivity = {
@as("TemplateVersion") templateVersion: option<__string>,
@as("TemplateName") templateName: option<__string>,
@as("NextActivity") nextActivity: option<__string>,
@as("MessageConfig") messageConfig: option<journeyCustomMessage>,
@as("EndpointTypes") endpointTypes: option<listOf__EndpointTypesElement>,
@as("DeliveryUri") deliveryUri: option<__string>
}
type customDeliveryConfiguration = {
@as("EndpointTypes") endpointTypes: option<listOf__EndpointTypesElement>,
@as("DeliveryUri") deliveryUri: __string
}
type createRecommenderConfigurationShape = {
@as("RecommendationsPerMessage") recommendationsPerMessage: option<__integer>,
@as("RecommendationsDisplayName") recommendationsDisplayName: option<__string>,
@as("RecommendationTransformerUri") recommendationTransformerUri: option<__string>,
@as("RecommendationProviderUri") recommendationProviderUri: __string,
@as("RecommendationProviderRoleArn") recommendationProviderRoleArn: __string,
@as("RecommendationProviderIdType") recommendationProviderIdType: option<__string>,
@as("Name") name: option<__string>,
@as("Description") description: option<__string>,
@as("Attributes") attributes: option<mapOf__string>
}
type createApplicationRequest = {
tags: option<mapOf__string>,
@as("Name") name: __string
}
type attributesResource = {
@as("Attributes") attributes: option<listOf__string>,
@as("AttributeType") attributeType: __string,
@as("ApplicationId") applicationId: __string
}
type attributeDimension = {
@as("Values") values: listOf__string,
@as("AttributeType") attributeType: option<attributeType>
}
type applicationSettingsResource = {
@as("QuietTime") quietTime: option<quietTime>,
@as("Limits") limits: option<campaignLimits>,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("CampaignHook") campaignHook: option<campaignHook>,
@as("ApplicationId") applicationId: __string
}
type applicationResponse = {
tags: option<mapOf__string>,
@as("Name") name: __string,
@as("Id") id: __string,
@as("Arn") arn: __string
}
type voiceMessage = {
@as("VoiceId") voiceId: option<__string>,
@as("Substitutions") substitutions: option<mapOfListOf__string>,
@as("OriginationNumber") originationNumber: option<__string>,
@as("LanguageCode") languageCode: option<__string>,
@as("Body") body: option<__string>
}
type templateVersionsResponse = {
@as("RequestID") requestID: option<__string>,
@as("NextToken") nextToken: option<__string>,
@as("Message") message: option<__string>,
@as("Item") item: listOfTemplateVersionResponse
}
type segmentLocation = {
@as("GPSPoint") gpspoint: option<gpspointDimension>,
@as("Country") country: option<setDimension>
}
type segmentDemographics = {
@as("Platform") platform: option<setDimension>,
@as("Model") model: option<setDimension>,
@as("Make") make: option<setDimension>,
@as("DeviceType") deviceType: option<setDimension>,
@as("Channel") channel: option<setDimension>,
@as("AppVersion") appVersion: option<setDimension>
}
type smsmessage = {
@as("TemplateId") templateId: option<__string>,
@as("EntityId") entityId: option<__string>,
@as("Substitutions") substitutions: option<mapOfListOf__string>,
@as("SenderId") senderId: option<__string>,
@as("OriginationNumber") originationNumber: option<__string>,
@as("MessageType") messageType: option<messageType>,
@as("MediaUrl") mediaUrl: option<__string>,
@as("Keyword") keyword: option<__string>,
@as("Body") body: option<__string>
}
type resultRow = {
@as("Values") values: listOfResultRowValue,
@as("GroupedBys") groupedBys: listOfResultRowValue
}
type randomSplitActivity = {
@as("Branches") branches: option<listOfRandomSplitEntry>
}
type messageResponse = {
@as("Result") result: option<mapOfMessageResult>,
@as("RequestId") requestId: option<__string>,
@as("EndpointResult") endpointResult: option<mapOfEndpointMessageResult>,
@as("ApplicationId") applicationId: __string
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
@as("EventsItemResponse") eventsItemResponse: option<mapOfEventItemResponse>,
@as("EndpointItemResponse") endpointItemResponse: option<endpointItemResponse>
}
type gcmmessage = {
@as("Url") url: option<__string>,
@as("Title") title: option<__string>,
@as("TimeToLive") timeToLive: option<__integer>,
@as("Substitutions") substitutions: option<mapOfListOf__string>,
@as("Sound") sound: option<__string>,
@as("SmallImageIconUrl") smallImageIconUrl: option<__string>,
@as("SilentPush") silentPush: option<__boolean>,
@as("RestrictedPackageName") restrictedPackageName: option<__string>,
@as("RawContent") rawContent: option<__string>,
@as("Priority") priority: option<__string>,
@as("ImageUrl") imageUrl: option<__string>,
@as("ImageIconUrl") imageIconUrl: option<__string>,
@as("IconReference") iconReference: option<__string>,
@as("Data") data: option<mapOf__string>,
@as("CollapseKey") collapseKey: option<__string>,
@as("Body") body: option<__string>,
@as("Action") action: option<action>
}
type endpointUser = {
@as("UserId") userId: option<__string>,
@as("UserAttributes") userAttributes: option<mapOfListOf__string>
}
type endpointSendConfiguration = {
@as("TitleOverride") titleOverride: option<__string>,
@as("Substitutions") substitutions: option<mapOfListOf__string>,
@as("RawContent") rawContent: option<__string>,
@as("Context") context: option<mapOf__string>,
@as("BodyOverride") bodyOverride: option<__string>
}
type emailMessage = {
@as("Substitutions") substitutions: option<mapOfListOf__string>,
@as("SimpleEmail") simpleEmail: option<simpleEmail>,
@as("ReplyToAddresses") replyToAddresses: option<listOf__string>,
@as("RawEmail") rawEmail: option<rawEmail>,
@as("FromAddress") fromAddress: option<__string>,
@as("FeedbackForwardingAddress") feedbackForwardingAddress: option<__string>,
@as("Body") body: option<__string>
}
type defaultPushNotificationMessage = {
@as("Url") url: option<__string>,
@as("Title") title: option<__string>,
@as("Substitutions") substitutions: option<mapOfListOf__string>,
@as("SilentPush") silentPush: option<__boolean>,
@as("Data") data: option<mapOf__string>,
@as("Body") body: option<__string>,
@as("Action") action: option<action>
}
type defaultMessage = {
@as("Substitutions") substitutions: option<mapOfListOf__string>,
@as("Body") body: option<__string>
}
type channelsResponse = {
@as("Channels") channels: mapOfChannelResponse
}
type baiduMessage = {
@as("Url") url: option<__string>,
@as("Title") title: option<__string>,
@as("TimeToLive") timeToLive: option<__integer>,
@as("Substitutions") substitutions: option<mapOfListOf__string>,
@as("Sound") sound: option<__string>,
@as("SmallImageIconUrl") smallImageIconUrl: option<__string>,
@as("SilentPush") silentPush: option<__boolean>,
@as("RawContent") rawContent: option<__string>,
@as("ImageUrl") imageUrl: option<__string>,
@as("ImageIconUrl") imageIconUrl: option<__string>,
@as("IconReference") iconReference: option<__string>,
@as("Data") data: option<mapOf__string>,
@as("Body") body: option<__string>,
@as("Action") action: option<action>
}
type addressConfiguration = {
@as("TitleOverride") titleOverride: option<__string>,
@as("Substitutions") substitutions: option<mapOfListOf__string>,
@as("RawContent") rawContent: option<__string>,
@as("Context") context: option<mapOf__string>,
@as("ChannelType") channelType: option<channelType>,
@as("BodyOverride") bodyOverride: option<__string>
}
type activitiesResponse = {
@as("NextToken") nextToken: option<__string>,
@as("Item") item: listOfActivityResponse
}
type apnsmessage = {
@as("Url") url: option<__string>,
@as("Title") title: option<__string>,
@as("TimeToLive") timeToLive: option<__integer>,
@as("ThreadId") threadId: option<__string>,
@as("Substitutions") substitutions: option<mapOfListOf__string>,
@as("Sound") sound: option<__string>,
@as("SilentPush") silentPush: option<__boolean>,
@as("RawContent") rawContent: option<__string>,
@as("Priority") priority: option<__string>,
@as("PreferredAuthenticationMethod") preferredAuthenticationMethod: option<__string>,
@as("MediaUrl") mediaUrl: option<__string>,
@as("Data") data: option<mapOf__string>,
@as("CollapseId") collapseId: option<__string>,
@as("Category") category: option<__string>,
@as("Body") body: option<__string>,
@as("Badge") badge: option<__integer>,
@as("Action") action: option<action>,
@as("APNSPushType") apnspushType: option<__string>
}
type admmessage = {
@as("Url") url: option<__string>,
@as("Title") title: option<__string>,
@as("Substitutions") substitutions: option<mapOfListOf__string>,
@as("Sound") sound: option<__string>,
@as("SmallImageIconUrl") smallImageIconUrl: option<__string>,
@as("SilentPush") silentPush: option<__boolean>,
@as("RawContent") rawContent: option<__string>,
@as("MD5") md5: option<__string>,
@as("ImageUrl") imageUrl: option<__string>,
@as("ImageIconUrl") imageIconUrl: option<__string>,
@as("IconReference") iconReference: option<__string>,
@as("ExpiresAfter") expiresAfter: option<__string>,
@as("Data") data: option<mapOf__string>,
@as("ConsolidationKey") consolidationKey: option<__string>,
@as("Body") body: option<__string>,
@as("Action") action: option<action>
}
type templatesResponse = {
@as("NextToken") nextToken: option<__string>,
@as("Item") item: listOfTemplateResponse
}
type sendUsersMessageResponse = {
@as("Result") result: option<mapOfMapOfEndpointMessageResult>,
@as("RequestId") requestId: option<__string>,
@as("ApplicationId") applicationId: __string
}
type segmentDimensions = {
@as("UserAttributes") userAttributes: option<mapOfAttributeDimension>,
@as("Metrics") metrics: option<mapOfMetricDimension>,
@as("Location") location: option<segmentLocation>,
@as("Demographic") demographic: option<segmentDemographics>,
@as("Behavior") behavior: option<segmentBehaviors>,
@as("Attributes") attributes: option<mapOfAttributeDimension>
}
type publicEndpoint = {
@as("User") user: option<endpointUser>,
@as("RequestId") requestId: option<__string>,
@as("OptOut") optOut: option<__string>,
@as("Metrics") metrics: option<mapOf__double>,
@as("Location") location: option<endpointLocation>,
@as("EndpointStatus") endpointStatus: option<__string>,
@as("EffectiveDate") effectiveDate: option<__string>,
@as("Demographic") demographic: option<endpointDemographic>,
@as("ChannelType") channelType: option<channelType>,
@as("Attributes") attributes: option<mapOfListOf__string>,
@as("Address") address: option<__string>
}
type mapOfItemResponse = Js.Dict.t< itemResponse>
type mapOfEndpointSendConfiguration = Js.Dict.t< endpointSendConfiguration>
type mapOfAddressConfiguration = Js.Dict.t< addressConfiguration>
type listRecommenderConfigurationsResponse = {
@as("NextToken") nextToken: option<__string>,
@as("Item") item: listOfRecommenderConfigurationResponse
}
type listOfResultRow = array<resultRow>
type importJobsResponse = {
@as("NextToken") nextToken: option<__string>,
@as("Item") item: listOfImportJobResponse
}
type exportJobsResponse = {
@as("NextToken") nextToken: option<__string>,
@as("Item") item: listOfExportJobResponse
}
type eventDimensions = {
@as("Metrics") metrics: option<mapOfMetricDimension>,
@as("EventType") eventType: option<setDimension>,
@as("Attributes") attributes: option<mapOfAttributeDimension>
}
type endpointResponse = {
@as("User") user: option<endpointUser>,
@as("RequestId") requestId: option<__string>,
@as("OptOut") optOut: option<__string>,
@as("Metrics") metrics: option<mapOf__double>,
@as("Location") location: option<endpointLocation>,
@as("Id") id: option<__string>,
@as("EndpointStatus") endpointStatus: option<__string>,
@as("EffectiveDate") effectiveDate: option<__string>,
@as("Demographic") demographic: option<endpointDemographic>,
@as("CreationDate") creationDate: option<__string>,
@as("CohortId") cohortId: option<__string>,
@as("ChannelType") channelType: option<channelType>,
@as("Attributes") attributes: option<mapOfListOf__string>,
@as("ApplicationId") applicationId: option<__string>,
@as("Address") address: option<__string>
}
type endpointRequest = {
@as("User") user: option<endpointUser>,
@as("RequestId") requestId: option<__string>,
@as("OptOut") optOut: option<__string>,
@as("Metrics") metrics: option<mapOf__double>,
@as("Location") location: option<endpointLocation>,
@as("EndpointStatus") endpointStatus: option<__string>,
@as("EffectiveDate") effectiveDate: option<__string>,
@as("Demographic") demographic: option<endpointDemographic>,
@as("ChannelType") channelType: option<channelType>,
@as("Attributes") attributes: option<mapOfListOf__string>,
@as("Address") address: option<__string>
}
type endpointBatchItem = {
@as("User") user: option<endpointUser>,
@as("RequestId") requestId: option<__string>,
@as("OptOut") optOut: option<__string>,
@as("Metrics") metrics: option<mapOf__double>,
@as("Location") location: option<endpointLocation>,
@as("Id") id: option<__string>,
@as("EndpointStatus") endpointStatus: option<__string>,
@as("EffectiveDate") effectiveDate: option<__string>,
@as("Demographic") demographic: option<endpointDemographic>,
@as("ChannelType") channelType: option<channelType>,
@as("Attributes") attributes: option<mapOfListOf__string>,
@as("Address") address: option<__string>
}
type directMessageConfiguration = {
@as("VoiceMessage") voiceMessage: option<voiceMessage>,
@as("SMSMessage") smsmessage: option<smsmessage>,
@as("GCMMessage") gcmmessage: option<gcmmessage>,
@as("EmailMessage") emailMessage: option<emailMessage>,
@as("DefaultPushNotificationMessage") defaultPushNotificationMessage: option<defaultPushNotificationMessage>,
@as("DefaultMessage") defaultMessage: option<defaultMessage>,
@as("BaiduMessage") baiduMessage: option<baiduMessage>,
@as("APNSMessage") apnsmessage: option<apnsmessage>,
@as("ADMMessage") admmessage: option<admmessage>
}
type applicationsResponse = {
@as("NextToken") nextToken: option<__string>,
@as("Item") item: option<listOfApplicationResponse>
}
type sendUsersMessageRequest = {
@as("Users") users: mapOfEndpointSendConfiguration,
@as("TraceId") traceId: option<__string>,
@as("TemplateConfiguration") templateConfiguration: option<templateConfiguration>,
@as("MessageConfiguration") messageConfiguration: directMessageConfiguration,
@as("Context") context: option<mapOf__string>
}
type messageRequest = {
@as("TraceId") traceId: option<__string>,
@as("TemplateConfiguration") templateConfiguration: option<templateConfiguration>,
@as("MessageConfiguration") messageConfiguration: directMessageConfiguration,
@as("Endpoints") endpoints: option<mapOfEndpointSendConfiguration>,
@as("Context") context: option<mapOf__string>,
@as("Addresses") addresses: option<mapOfAddressConfiguration>
}
type listOfSegmentDimensions = array<segmentDimensions>
type listOfEndpointResponse = array<endpointResponse>
type listOfEndpointBatchItem = array<endpointBatchItem>
type eventsResponse = {
@as("Results") results: option<mapOfItemResponse>
}
type eventsBatch = {
@as("Events") events: mapOfEvent,
@as("Endpoint") endpoint: publicEndpoint
}
type eventFilter = {
@as("FilterType") filterType: filterType,
@as("Dimensions") dimensions: eventDimensions
}
type eventCondition = {
@as("MessageActivity") messageActivity: option<__string>,
@as("Dimensions") dimensions: option<eventDimensions>
}
type campaignEventFilter = {
@as("FilterType") filterType: filterType,
@as("Dimensions") dimensions: eventDimensions
}
type baseKpiResult = {
@as("Rows") rows: listOfResultRow
}
type simpleCondition = {
@as("SegmentDimensions") segmentDimensions: option<segmentDimensions>,
@as("SegmentCondition") segmentCondition: option<segmentCondition>,
@as("EventCondition") eventCondition: option<eventCondition>
}
type segmentGroup = {
@as("Type") type_: option<type_>,
@as("SourceType") sourceType: option<sourceType>,
@as("SourceSegments") sourceSegments: option<listOfSegmentReference>,
@as("Dimensions") dimensions: option<listOfSegmentDimensions>
}
type schedule = {
@as("Timezone") timezone: option<__string>,
@as("StartTime") startTime: __string,
@as("QuietTime") quietTime: option<quietTime>,
@as("IsLocalTime") isLocalTime: option<__boolean>,
@as("Frequency") frequency: option<frequency>,
@as("EventFilter") eventFilter: option<campaignEventFilter>,
@as("EndTime") endTime: option<__string>
}
type mapOfEventsBatch = Js.Dict.t< eventsBatch>
type journeyDateRangeKpiResponse = {
@as("StartTime") startTime: __timestampIso8601,
@as("NextToken") nextToken: option<__string>,
@as("KpiResult") kpiResult: baseKpiResult,
@as("KpiName") kpiName: __string,
@as("JourneyId") journeyId: __string,
@as("EndTime") endTime: __timestampIso8601,
@as("ApplicationId") applicationId: __string
}
type eventStartCondition = {
@as("SegmentId") segmentId: option<__string>,
@as("EventFilter") eventFilter: option<eventFilter>
}
type endpointsResponse = {
@as("Item") item: listOfEndpointResponse
}
type endpointBatchRequest = {
@as("Item") item: listOfEndpointBatchItem
}
type campaignDateRangeKpiResponse = {
@as("StartTime") startTime: __timestampIso8601,
@as("NextToken") nextToken: option<__string>,
@as("KpiResult") kpiResult: baseKpiResult,
@as("KpiName") kpiName: __string,
@as("EndTime") endTime: __timestampIso8601,
@as("CampaignId") campaignId: __string,
@as("ApplicationId") applicationId: __string
}
type applicationDateRangeKpiResponse = {
@as("StartTime") startTime: __timestampIso8601,
@as("NextToken") nextToken: option<__string>,
@as("KpiResult") kpiResult: baseKpiResult,
@as("KpiName") kpiName: __string,
@as("EndTime") endTime: __timestampIso8601,
@as("ApplicationId") applicationId: __string
}
type writeTreatmentResource = {
@as("TreatmentName") treatmentName: option<__string>,
@as("TreatmentDescription") treatmentDescription: option<__string>,
@as("TemplateConfiguration") templateConfiguration: option<templateConfiguration>,
@as("SizePercent") sizePercent: __integer,
@as("Schedule") schedule: option<schedule>,
@as("MessageConfiguration") messageConfiguration: option<messageConfiguration>,
@as("CustomDeliveryConfiguration") customDeliveryConfiguration: option<customDeliveryConfiguration>
}
type treatmentResource = {
@as("TreatmentName") treatmentName: option<__string>,
@as("TreatmentDescription") treatmentDescription: option<__string>,
@as("TemplateConfiguration") templateConfiguration: option<templateConfiguration>,
@as("State") state: option<campaignState>,
@as("SizePercent") sizePercent: __integer,
@as("Schedule") schedule: option<schedule>,
@as("MessageConfiguration") messageConfiguration: option<messageConfiguration>,
@as("Id") id: __string,
@as("CustomDeliveryConfiguration") customDeliveryConfiguration: option<customDeliveryConfiguration>
}
type startCondition = {
@as("SegmentStartCondition") segmentStartCondition: option<segmentCondition>,
@as("EventStartCondition") eventStartCondition: option<eventStartCondition>,
@as("Description") description: option<__string>
}
type multiConditionalBranch = {
@as("NextActivity") nextActivity: option<__string>,
@as("Condition") condition: option<simpleCondition>
}
type listOfSimpleCondition = array<simpleCondition>
type listOfSegmentGroup = array<segmentGroup>
type eventsRequest = {
@as("BatchItem") batchItem: mapOfEventsBatch
}
type segmentGroupList = {
@as("Include") include_: option<include_>,
@as("Groups") groups: option<listOfSegmentGroup>
}
type listOfWriteTreatmentResource = array<writeTreatmentResource>
type listOfTreatmentResource = array<treatmentResource>
type listOfMultiConditionalBranch = array<multiConditionalBranch>
type condition = {
@as("Operator") operator: option<operator>,
@as("Conditions") conditions: option<listOfSimpleCondition>
}
type writeSegmentRequest = {
tags: option<mapOf__string>,
@as("SegmentGroups") segmentGroups: option<segmentGroupList>,
@as("Name") name: option<__string>,
@as("Dimensions") dimensions: option<segmentDimensions>
}
type writeCampaignRequest = {
@as("TreatmentName") treatmentName: option<__string>,
@as("TreatmentDescription") treatmentDescription: option<__string>,
@as("TemplateConfiguration") templateConfiguration: option<templateConfiguration>,
tags: option<mapOf__string>,
@as("SegmentVersion") segmentVersion: option<__integer>,
@as("SegmentId") segmentId: option<__string>,
@as("Schedule") schedule: option<schedule>,
@as("Name") name: option<__string>,
@as("MessageConfiguration") messageConfiguration: option<messageConfiguration>,
@as("Limits") limits: option<campaignLimits>,
@as("IsPaused") isPaused: option<__boolean>,
@as("Hook") hook: option<campaignHook>,
@as("HoldoutPercent") holdoutPercent: option<__integer>,
@as("Description") description: option<__string>,
@as("CustomDeliveryConfiguration") customDeliveryConfiguration: option<customDeliveryConfiguration>,
@as("AdditionalTreatments") additionalTreatments: option<listOfWriteTreatmentResource>
}
type segmentResponse = {
@as("Version") version: option<__integer>,
tags: option<mapOf__string>,
@as("SegmentType") segmentType: segmentType,
@as("SegmentGroups") segmentGroups: option<segmentGroupList>,
@as("Name") name: option<__string>,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("ImportDefinition") importDefinition: option<segmentImportResource>,
@as("Id") id: __string,
@as("Dimensions") dimensions: option<segmentDimensions>,
@as("CreationDate") creationDate: __string,
@as("Arn") arn: __string,
@as("ApplicationId") applicationId: __string
}
type multiConditionalSplitActivity = {
@as("EvaluationWaitTime") evaluationWaitTime: option<waitTime>,
@as("DefaultActivity") defaultActivity: option<__string>,
@as("Branches") branches: option<listOfMultiConditionalBranch>
}
type conditionalSplitActivity = {
@as("TrueActivity") trueActivity: option<__string>,
@as("FalseActivity") falseActivity: option<__string>,
@as("EvaluationWaitTime") evaluationWaitTime: option<waitTime>,
@as("Condition") condition: option<condition>
}
type campaignResponse = {
@as("Version") version: option<__integer>,
@as("TreatmentName") treatmentName: option<__string>,
@as("TreatmentDescription") treatmentDescription: option<__string>,
@as("TemplateConfiguration") templateConfiguration: option<templateConfiguration>,
tags: option<mapOf__string>,
@as("State") state: option<campaignState>,
@as("SegmentVersion") segmentVersion: __integer,
@as("SegmentId") segmentId: __string,
@as("Schedule") schedule: option<schedule>,
@as("Name") name: option<__string>,
@as("MessageConfiguration") messageConfiguration: option<messageConfiguration>,
@as("Limits") limits: option<campaignLimits>,
@as("LastModifiedDate") lastModifiedDate: __string,
@as("IsPaused") isPaused: option<__boolean>,
@as("Id") id: __string,
@as("Hook") hook: option<campaignHook>,
@as("HoldoutPercent") holdoutPercent: option<__integer>,
@as("Description") description: option<__string>,
@as("DefaultState") defaultState: option<campaignState>,
@as("CustomDeliveryConfiguration") customDeliveryConfiguration: option<customDeliveryConfiguration>,
@as("CreationDate") creationDate: __string,
@as("Arn") arn: __string,
@as("ApplicationId") applicationId: __string,
@as("AdditionalTreatments") additionalTreatments: option<listOfTreatmentResource>
}
type listOfSegmentResponse = array<segmentResponse>
type listOfCampaignResponse = array<campaignResponse>
type activity = {
@as("Wait") wait: option<waitActivity>,
@as("SMS") sms: option<smsmessageActivity>,
@as("RandomSplit") randomSplit: option<randomSplitActivity>,
@as("PUSH") push: option<pushMessageActivity>,
@as("MultiCondition") multiCondition: option<multiConditionalSplitActivity>,
@as("Holdout") holdout: option<holdoutActivity>,
@as("EMAIL") email: option<emailMessageActivity>,
@as("Description") description: option<__string>,
@as("ConditionalSplit") conditionalSplit: option<conditionalSplitActivity>,
@as("CUSTOM") custom: option<customMessageActivity>
}
type segmentsResponse = {
@as("NextToken") nextToken: option<__string>,
@as("Item") item: listOfSegmentResponse
}
type mapOfActivity = Js.Dict.t< activity>
type campaignsResponse = {
@as("NextToken") nextToken: option<__string>,
@as("Item") item: listOfCampaignResponse
}
type writeJourneyRequest = {
@as("RefreshOnSegmentUpdate") refreshOnSegmentUpdate: option<__boolean>,
@as("WaitForQuietTime") waitForQuietTime: option<__boolean>,
@as("State") state: option<state>,
@as("StartCondition") startCondition: option<startCondition>,
@as("StartActivity") startActivity: option<__string>,
@as("Schedule") schedule: option<journeySchedule>,
@as("RefreshFrequency") refreshFrequency: option<__string>,
@as("QuietTime") quietTime: option<quietTime>,
@as("Name") name: __string,
@as("LocalTime") localTime: option<__boolean>,
@as("Limits") limits: option<journeyLimits>,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("CreationDate") creationDate: option<__string>,
@as("Activities") activities: option<mapOfActivity>
}
type journeyResponse = {
@as("RefreshOnSegmentUpdate") refreshOnSegmentUpdate: option<__boolean>,
@as("WaitForQuietTime") waitForQuietTime: option<__boolean>,
tags: option<mapOf__string>,
@as("State") state: option<state>,
@as("StartCondition") startCondition: option<startCondition>,
@as("StartActivity") startActivity: option<__string>,
@as("Schedule") schedule: option<journeySchedule>,
@as("RefreshFrequency") refreshFrequency: option<__string>,
@as("QuietTime") quietTime: option<quietTime>,
@as("Name") name: __string,
@as("LocalTime") localTime: option<__boolean>,
@as("Limits") limits: option<journeyLimits>,
@as("LastModifiedDate") lastModifiedDate: option<__string>,
@as("Id") id: __string,
@as("CreationDate") creationDate: option<__string>,
@as("ApplicationId") applicationId: __string,
@as("Activities") activities: option<mapOfActivity>
}
type listOfJourneyResponse = array<journeyResponse>
type journeysResponse = {
@as("NextToken") nextToken: option<__string>,
@as("Item") item: listOfJourneyResponse
}
type awsServiceClient;
@module("@aws-sdk/client-mobiletargeting") @new external createClient: unit => awsServiceClient = "PinpointClient";
module UpdateVoiceChannel = {
  type t;
  type request = {
@as("VoiceChannelRequest") voiceChannelRequest: voiceChannelRequest,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("VoiceChannelResponse") voiceChannelResponse: voiceChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateVoiceChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateTemplateActiveVersion = {
  type t;
  type request = {
@as("TemplateType") templateType: __string,
@as("TemplateName") templateName: __string,
@as("TemplateActiveVersionRequest") templateActiveVersionRequest: templateActiveVersionRequest
}
  type response = {
@as("MessageBody") messageBody: messageBody
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateTemplateActiveVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSmsChannel = {
  type t;
  type request = {
@as("SMSChannelRequest") smschannelRequest: smschannelRequest,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("SMSChannelResponse") smschannelResponse: smschannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateSmsChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateGcmChannel = {
  type t;
  type request = {
@as("GCMChannelRequest") gcmchannelRequest: gcmchannelRequest,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("GCMChannelResponse") gcmchannelResponse: gcmchannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateGcmChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateEmailChannel = {
  type t;
  type request = {
@as("EmailChannelRequest") emailChannelRequest: emailChannelRequest,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("EmailChannelResponse") emailChannelResponse: emailChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateEmailChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateBaiduChannel = {
  type t;
  type request = {
@as("BaiduChannelRequest") baiduChannelRequest: baiduChannelRequest,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("BaiduChannelResponse") baiduChannelResponse: baiduChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateBaiduChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApnsVoipSandboxChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string,
@as("APNSVoipSandboxChannelRequest") apnsvoipSandboxChannelRequest: apnsvoipSandboxChannelRequest
}
  type response = {
@as("APNSVoipSandboxChannelResponse") apnsvoipSandboxChannelResponse: apnsvoipSandboxChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateApnsVoipSandboxChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApnsVoipChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string,
@as("APNSVoipChannelRequest") apnsvoipChannelRequest: apnsvoipChannelRequest
}
  type response = {
@as("APNSVoipChannelResponse") apnsvoipChannelResponse: apnsvoipChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateApnsVoipChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApnsSandboxChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string,
@as("APNSSandboxChannelRequest") apnssandboxChannelRequest: apnssandboxChannelRequest
}
  type response = {
@as("APNSSandboxChannelResponse") apnssandboxChannelResponse: apnssandboxChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateApnsSandboxChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApnsChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string,
@as("APNSChannelRequest") apnschannelRequest: apnschannelRequest
}
  type response = {
@as("APNSChannelResponse") apnschannelResponse: apnschannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateApnsChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAdmChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string,
@as("ADMChannelRequest") admchannelRequest: admchannelRequest
}
  type response = {
@as("ADMChannelResponse") admchannelResponse: admchannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateAdmChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: listOf__string,
@as("ResourceArn") resourceArn: __string
}
  
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PutEventStream = {
  type t;
  type request = {
@as("WriteEventStream") writeEventStream: writeEventStream,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("EventStream") eventStream: eventStream
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "PutEventStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PhoneNumberValidate = {
  type t;
  type request = {
@as("NumberValidateRequest") numberValidateRequest: numberValidateRequest
}
  type response = {
@as("NumberValidateResponse") numberValidateResponse: numberValidateResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "PhoneNumberValidateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetVoiceChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("VoiceChannelResponse") voiceChannelResponse: voiceChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetVoiceChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSmsChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("SMSChannelResponse") smschannelResponse: smschannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetSmsChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetGcmChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("GCMChannelResponse") gcmchannelResponse: gcmchannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetGcmChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEventStream = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("EventStream") eventStream: eventStream
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetEventStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEmailChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("EmailChannelResponse") emailChannelResponse: emailChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetEmailChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBaiduChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("BaiduChannelResponse") baiduChannelResponse: baiduChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetBaiduChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetApnsVoipSandboxChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("APNSVoipSandboxChannelResponse") apnsvoipSandboxChannelResponse: apnsvoipSandboxChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetApnsVoipSandboxChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetApnsVoipChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("APNSVoipChannelResponse") apnsvoipChannelResponse: apnsvoipChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetApnsVoipChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetApnsSandboxChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("APNSSandboxChannelResponse") apnssandboxChannelResponse: apnssandboxChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetApnsSandboxChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetApnsChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("APNSChannelResponse") apnschannelResponse: apnschannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetApnsChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAdmChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("ADMChannelResponse") admchannelResponse: admchannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetAdmChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteVoiceTemplate = {
  type t;
  type request = {
@as("Version") version: option<__string>,
@as("TemplateName") templateName: __string
}
  type response = {
@as("MessageBody") messageBody: messageBody
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteVoiceTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteVoiceChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("VoiceChannelResponse") voiceChannelResponse: voiceChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteVoiceChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSmsTemplate = {
  type t;
  type request = {
@as("Version") version: option<__string>,
@as("TemplateName") templateName: __string
}
  type response = {
@as("MessageBody") messageBody: messageBody
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteSmsTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSmsChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("SMSChannelResponse") smschannelResponse: smschannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteSmsChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeletePushTemplate = {
  type t;
  type request = {
@as("Version") version: option<__string>,
@as("TemplateName") templateName: __string
}
  type response = {
@as("MessageBody") messageBody: messageBody
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeletePushTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteGcmChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("GCMChannelResponse") gcmchannelResponse: gcmchannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteGcmChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteEventStream = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("EventStream") eventStream: eventStream
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteEventStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteEmailTemplate = {
  type t;
  type request = {
@as("Version") version: option<__string>,
@as("TemplateName") templateName: __string
}
  type response = {
@as("MessageBody") messageBody: messageBody
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteEmailTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteEmailChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("EmailChannelResponse") emailChannelResponse: emailChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteEmailChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteBaiduChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("BaiduChannelResponse") baiduChannelResponse: baiduChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteBaiduChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApnsVoipSandboxChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("APNSVoipSandboxChannelResponse") apnsvoipSandboxChannelResponse: apnsvoipSandboxChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteApnsVoipSandboxChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApnsVoipChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("APNSVoipChannelResponse") apnsvoipChannelResponse: apnsvoipChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteApnsVoipChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApnsSandboxChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("APNSSandboxChannelResponse") apnssandboxChannelResponse: apnssandboxChannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteApnsSandboxChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApnsChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("APNSChannelResponse") apnschannelResponse: apnschannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteApnsChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAdmChannel = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("ADMChannelResponse") admchannelResponse: admchannelResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteAdmChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateVoiceTemplate = {
  type t;
  type request = {
@as("VoiceTemplateRequest") voiceTemplateRequest: voiceTemplateRequest,
@as("Version") version: option<__string>,
@as("TemplateName") templateName: __string,
@as("CreateNewVersion") createNewVersion: option<__boolean>
}
  type response = {
@as("MessageBody") messageBody: messageBody
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateVoiceTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSmsTemplate = {
  type t;
  type request = {
@as("Version") version: option<__string>,
@as("TemplateName") templateName: __string,
@as("SMSTemplateRequest") smstemplateRequest: smstemplateRequest,
@as("CreateNewVersion") createNewVersion: option<__boolean>
}
  type response = {
@as("MessageBody") messageBody: messageBody
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateSmsTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateRecommenderConfiguration = {
  type t;
  type request = {
@as("UpdateRecommenderConfiguration") updateRecommenderConfiguration: updateRecommenderConfigurationShape,
@as("RecommenderId") recommenderId: __string
}
  type response = {
@as("RecommenderConfigurationResponse") recommenderConfigurationResponse: recommenderConfigurationResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateRecommenderConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdatePushTemplate = {
  type t;
  type request = {
@as("Version") version: option<__string>,
@as("TemplateName") templateName: __string,
@as("PushNotificationTemplateRequest") pushNotificationTemplateRequest: pushNotificationTemplateRequest,
@as("CreateNewVersion") createNewVersion: option<__boolean>
}
  type response = {
@as("MessageBody") messageBody: messageBody
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdatePushTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateEmailTemplate = {
  type t;
  type request = {
@as("Version") version: option<__string>,
@as("TemplateName") templateName: __string,
@as("EmailTemplateRequest") emailTemplateRequest: emailTemplateRequest,
@as("CreateNewVersion") createNewVersion: option<__boolean>
}
  type response = {
@as("MessageBody") messageBody: messageBody
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateEmailTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApplicationSettings = {
  type t;
  type request = {
@as("WriteApplicationSettingsRequest") writeApplicationSettingsRequest: writeApplicationSettingsRequest,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("ApplicationSettingsResource") applicationSettingsResource: applicationSettingsResource
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateApplicationSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("TagsModel") tagsModel: tagsModel,
@as("ResourceArn") resourceArn: __string
}
  
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RemoveAttributes = {
  type t;
  type request = {
@as("UpdateAttributesRequest") updateAttributesRequest: updateAttributesRequest,
@as("AttributeType") attributeType: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("AttributesResource") attributesResource: attributesResource
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "RemoveAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: __string
}
  type response = {
@as("TagsModel") tagsModel: tagsModel
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetVoiceTemplate = {
  type t;
  type request = {
@as("Version") version: option<__string>,
@as("TemplateName") templateName: __string
}
  type response = {
@as("VoiceTemplateResponse") voiceTemplateResponse: voiceTemplateResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetVoiceTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSmsTemplate = {
  type t;
  type request = {
@as("Version") version: option<__string>,
@as("TemplateName") templateName: __string
}
  type response = {
@as("SMSTemplateResponse") smstemplateResponse: smstemplateResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetSmsTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRecommenderConfiguration = {
  type t;
  type request = {
@as("RecommenderId") recommenderId: __string
}
  type response = {
@as("RecommenderConfigurationResponse") recommenderConfigurationResponse: recommenderConfigurationResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetRecommenderConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetPushTemplate = {
  type t;
  type request = {
@as("Version") version: option<__string>,
@as("TemplateName") templateName: __string
}
  type response = {
@as("PushNotificationTemplateResponse") pushNotificationTemplateResponse: pushNotificationTemplateResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetPushTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetJourneyExecutionMetrics = {
  type t;
  type request = {
@as("PageSize") pageSize: option<__string>,
@as("NextToken") nextToken: option<__string>,
@as("JourneyId") journeyId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("JourneyExecutionMetricsResponse") journeyExecutionMetricsResponse: journeyExecutionMetricsResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetJourneyExecutionMetricsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetJourneyExecutionActivityMetrics = {
  type t;
  type request = {
@as("PageSize") pageSize: option<__string>,
@as("NextToken") nextToken: option<__string>,
@as("JourneyId") journeyId: __string,
@as("JourneyActivityId") journeyActivityId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("JourneyExecutionActivityMetricsResponse") journeyExecutionActivityMetricsResponse: journeyExecutionActivityMetricsResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetJourneyExecutionActivityMetricsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetImportJob = {
  type t;
  type request = {
@as("JobId") jobId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("ImportJobResponse") importJobResponse: importJobResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetImportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetExportJob = {
  type t;
  type request = {
@as("JobId") jobId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("ExportJobResponse") exportJobResponse: exportJobResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetExportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEmailTemplate = {
  type t;
  type request = {
@as("Version") version: option<__string>,
@as("TemplateName") templateName: __string
}
  type response = {
@as("EmailTemplateResponse") emailTemplateResponse: emailTemplateResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetEmailTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetApplicationSettings = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("ApplicationSettingsResource") applicationSettingsResource: applicationSettingsResource
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetApplicationSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetApp = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("ApplicationResponse") applicationResponse: applicationResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetAppCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRecommenderConfiguration = {
  type t;
  type request = {
@as("RecommenderId") recommenderId: __string
}
  type response = {
@as("RecommenderConfigurationResponse") recommenderConfigurationResponse: recommenderConfigurationResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteRecommenderConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApp = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("ApplicationResponse") applicationResponse: applicationResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteAppCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateVoiceTemplate = {
  type t;
  type request = {
@as("VoiceTemplateRequest") voiceTemplateRequest: voiceTemplateRequest,
@as("TemplateName") templateName: __string
}
  type response = {
@as("CreateTemplateMessageBody") createTemplateMessageBody: createTemplateMessageBody
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateVoiceTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSmsTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: __string,
@as("SMSTemplateRequest") smstemplateRequest: smstemplateRequest
}
  type response = {
@as("CreateTemplateMessageBody") createTemplateMessageBody: createTemplateMessageBody
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateSmsTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRecommenderConfiguration = {
  type t;
  type request = {
@as("CreateRecommenderConfiguration") createRecommenderConfiguration: createRecommenderConfigurationShape
}
  type response = {
@as("RecommenderConfigurationResponse") recommenderConfigurationResponse: recommenderConfigurationResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateRecommenderConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePushTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: __string,
@as("PushNotificationTemplateRequest") pushNotificationTemplateRequest: pushNotificationTemplateRequest
}
  type response = {
@as("CreateTemplateMessageBody") createTemplateMessageBody: createTemplateMessageBody
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreatePushTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateImportJob = {
  type t;
  type request = {
@as("ImportJobRequest") importJobRequest: importJobRequest,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("ImportJobResponse") importJobResponse: importJobResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateImportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateExportJob = {
  type t;
  type request = {
@as("ExportJobRequest") exportJobRequest: exportJobRequest,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("ExportJobResponse") exportJobResponse: exportJobResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateExportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateEmailTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: __string,
@as("EmailTemplateRequest") emailTemplateRequest: emailTemplateRequest
}
  type response = {
@as("CreateTemplateMessageBody") createTemplateMessageBody: createTemplateMessageBody
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateEmailTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateApp = {
  type t;
  type request = {
@as("CreateApplicationRequest") createApplicationRequest: createApplicationRequest
}
  type response = {
@as("ApplicationResponse") applicationResponse: applicationResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateAppCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTemplateVersions = {
  type t;
  type request = {
@as("TemplateType") templateType: __string,
@as("TemplateName") templateName: __string,
@as("PageSize") pageSize: option<__string>,
@as("NextToken") nextToken: option<__string>
}
  type response = {
@as("TemplateVersionsResponse") templateVersionsResponse: templateVersionsResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "ListTemplateVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetChannels = {
  type t;
  type request = {
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("ChannelsResponse") channelsResponse: channelsResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetChannelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCampaignActivities = {
  type t;
  type request = {
@as("Token") token: option<__string>,
@as("PageSize") pageSize: option<__string>,
@as("CampaignId") campaignId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("ActivitiesResponse") activitiesResponse: activitiesResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetCampaignActivitiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateEndpoint = {
  type t;
  type request = {
@as("EndpointRequest") endpointRequest: endpointRequest,
@as("EndpointId") endpointId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("MessageBody") messageBody: messageBody
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTemplates = {
  type t;
  type request = {
@as("TemplateType") templateType: option<__string>,
@as("Prefix") prefix: option<__string>,
@as("PageSize") pageSize: option<__string>,
@as("NextToken") nextToken: option<__string>
}
  type response = {
@as("TemplatesResponse") templatesResponse: templatesResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "ListTemplatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSegmentImportJobs = {
  type t;
  type request = {
@as("Token") token: option<__string>,
@as("SegmentId") segmentId: __string,
@as("PageSize") pageSize: option<__string>,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("ImportJobsResponse") importJobsResponse: importJobsResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetSegmentImportJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSegmentExportJobs = {
  type t;
  type request = {
@as("Token") token: option<__string>,
@as("SegmentId") segmentId: __string,
@as("PageSize") pageSize: option<__string>,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("ExportJobsResponse") exportJobsResponse: exportJobsResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetSegmentExportJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRecommenderConfigurations = {
  type t;
  type request = {
@as("Token") token: option<__string>,
@as("PageSize") pageSize: option<__string>
}
  type response = {
@as("ListRecommenderConfigurationsResponse") listRecommenderConfigurationsResponse: listRecommenderConfigurationsResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetRecommenderConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetImportJobs = {
  type t;
  type request = {
@as("Token") token: option<__string>,
@as("PageSize") pageSize: option<__string>,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("ImportJobsResponse") importJobsResponse: importJobsResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetImportJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetExportJobs = {
  type t;
  type request = {
@as("Token") token: option<__string>,
@as("PageSize") pageSize: option<__string>,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("ExportJobsResponse") exportJobsResponse: exportJobsResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetExportJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEndpoint = {
  type t;
  type request = {
@as("EndpointId") endpointId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("EndpointResponse") endpointResponse: endpointResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetApps = {
  type t;
  type request = {
@as("Token") token: option<__string>,
@as("PageSize") pageSize: option<__string>
}
  type response = {
@as("ApplicationsResponse") applicationsResponse: applicationsResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetAppsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteEndpoint = {
  type t;
  type request = {
@as("EndpointId") endpointId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("EndpointResponse") endpointResponse: endpointResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendUsersMessages = {
  type t;
  type request = {
@as("SendUsersMessageRequest") sendUsersMessageRequest: sendUsersMessageRequest,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("SendUsersMessageResponse") sendUsersMessageResponse: sendUsersMessageResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "SendUsersMessagesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendMessages = {
  type t;
  type request = {
@as("MessageRequest") messageRequest: messageRequest,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("MessageResponse") messageResponse: messageResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "SendMessagesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateEndpointsBatch = {
  type t;
  type request = {
@as("EndpointBatchRequest") endpointBatchRequest: endpointBatchRequest,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("MessageBody") messageBody: messageBody
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateEndpointsBatchCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetUserEndpoints = {
  type t;
  type request = {
@as("UserId") userId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("EndpointsResponse") endpointsResponse: endpointsResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetUserEndpointsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetJourneyDateRangeKpi = {
  type t;
  type request = {
@as("StartTime") startTime: option<__timestampIso8601>,
@as("PageSize") pageSize: option<__string>,
@as("NextToken") nextToken: option<__string>,
@as("KpiName") kpiName: __string,
@as("JourneyId") journeyId: __string,
@as("EndTime") endTime: option<__timestampIso8601>,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("JourneyDateRangeKpiResponse") journeyDateRangeKpiResponse: journeyDateRangeKpiResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetJourneyDateRangeKpiCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCampaignDateRangeKpi = {
  type t;
  type request = {
@as("StartTime") startTime: option<__timestampIso8601>,
@as("PageSize") pageSize: option<__string>,
@as("NextToken") nextToken: option<__string>,
@as("KpiName") kpiName: __string,
@as("EndTime") endTime: option<__timestampIso8601>,
@as("CampaignId") campaignId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("CampaignDateRangeKpiResponse") campaignDateRangeKpiResponse: campaignDateRangeKpiResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetCampaignDateRangeKpiCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetApplicationDateRangeKpi = {
  type t;
  type request = {
@as("StartTime") startTime: option<__timestampIso8601>,
@as("PageSize") pageSize: option<__string>,
@as("NextToken") nextToken: option<__string>,
@as("KpiName") kpiName: __string,
@as("EndTime") endTime: option<__timestampIso8601>,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("ApplicationDateRangeKpiResponse") applicationDateRangeKpiResponse: applicationDateRangeKpiResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetApplicationDateRangeKpiCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteUserEndpoints = {
  type t;
  type request = {
@as("UserId") userId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("EndpointsResponse") endpointsResponse: endpointsResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteUserEndpointsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutEvents = {
  type t;
  type request = {
@as("EventsRequest") eventsRequest: eventsRequest,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("EventsResponse") eventsResponse: eventsResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "PutEventsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSegment = {
  type t;
  type request = {
@as("WriteSegmentRequest") writeSegmentRequest: writeSegmentRequest,
@as("SegmentId") segmentId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("SegmentResponse") segmentResponse: segmentResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateSegmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateCampaign = {
  type t;
  type request = {
@as("WriteCampaignRequest") writeCampaignRequest: writeCampaignRequest,
@as("CampaignId") campaignId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("CampaignResponse") campaignResponse: campaignResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateCampaignCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSegmentVersion = {
  type t;
  type request = {
@as("Version") version: __string,
@as("SegmentId") segmentId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("SegmentResponse") segmentResponse: segmentResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetSegmentVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSegment = {
  type t;
  type request = {
@as("SegmentId") segmentId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("SegmentResponse") segmentResponse: segmentResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetSegmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCampaignVersion = {
  type t;
  type request = {
@as("Version") version: __string,
@as("CampaignId") campaignId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("CampaignResponse") campaignResponse: campaignResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetCampaignVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCampaign = {
  type t;
  type request = {
@as("CampaignId") campaignId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("CampaignResponse") campaignResponse: campaignResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetCampaignCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSegment = {
  type t;
  type request = {
@as("SegmentId") segmentId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("SegmentResponse") segmentResponse: segmentResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteSegmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteCampaign = {
  type t;
  type request = {
@as("CampaignId") campaignId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("CampaignResponse") campaignResponse: campaignResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteCampaignCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSegment = {
  type t;
  type request = {
@as("WriteSegmentRequest") writeSegmentRequest: writeSegmentRequest,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("SegmentResponse") segmentResponse: segmentResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateSegmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCampaign = {
  type t;
  type request = {
@as("WriteCampaignRequest") writeCampaignRequest: writeCampaignRequest,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("CampaignResponse") campaignResponse: campaignResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateCampaignCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSegments = {
  type t;
  type request = {
@as("Token") token: option<__string>,
@as("PageSize") pageSize: option<__string>,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("SegmentsResponse") segmentsResponse: segmentsResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetSegmentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSegmentVersions = {
  type t;
  type request = {
@as("Token") token: option<__string>,
@as("SegmentId") segmentId: __string,
@as("PageSize") pageSize: option<__string>,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("SegmentsResponse") segmentsResponse: segmentsResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetSegmentVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCampaigns = {
  type t;
  type request = {
@as("Token") token: option<__string>,
@as("PageSize") pageSize: option<__string>,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("CampaignsResponse") campaignsResponse: campaignsResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetCampaignsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCampaignVersions = {
  type t;
  type request = {
@as("Token") token: option<__string>,
@as("PageSize") pageSize: option<__string>,
@as("CampaignId") campaignId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("CampaignsResponse") campaignsResponse: campaignsResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetCampaignVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateJourneyState = {
  type t;
  type request = {
@as("JourneyStateRequest") journeyStateRequest: journeyStateRequest,
@as("JourneyId") journeyId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("JourneyResponse") journeyResponse: journeyResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateJourneyStateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateJourney = {
  type t;
  type request = {
@as("WriteJourneyRequest") writeJourneyRequest: writeJourneyRequest,
@as("JourneyId") journeyId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("JourneyResponse") journeyResponse: journeyResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "UpdateJourneyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetJourney = {
  type t;
  type request = {
@as("JourneyId") journeyId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("JourneyResponse") journeyResponse: journeyResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "GetJourneyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteJourney = {
  type t;
  type request = {
@as("JourneyId") journeyId: __string,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("JourneyResponse") journeyResponse: journeyResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "DeleteJourneyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateJourney = {
  type t;
  type request = {
@as("WriteJourneyRequest") writeJourneyRequest: writeJourneyRequest,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("JourneyResponse") journeyResponse: journeyResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "CreateJourneyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListJourneys = {
  type t;
  type request = {
@as("Token") token: option<__string>,
@as("PageSize") pageSize: option<__string>,
@as("ApplicationId") applicationId: __string
}
  type response = {
@as("JourneysResponse") journeysResponse: journeysResponse
}
  @module("@aws-sdk/client-mobiletargeting") @new external new_: (request) => t = "ListJourneysCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
