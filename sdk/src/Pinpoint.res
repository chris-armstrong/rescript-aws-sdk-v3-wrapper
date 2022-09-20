type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-mobiletargeting") @new
external createClient: unit => awsServiceClient = "PinpointClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __timestampIso8601 = Js.Date.t
type __string = string
type __integer = int
type __double = float
type __boolean = bool
type __blob = NodeJs.Buffer.t
type __EndpointTypesElement = [
  | @as("IN_APP") #IN_APP
  | @as("CUSTOM") #CUSTOM
  | @as("BAIDU") #BAIDU
  | @as("EMAIL") #EMAIL
  | @as("VOICE") #VOICE
  | @as("SMS") #SMS
  | @as("ADM") #ADM
  | @as("APNS_VOIP_SANDBOX") #APNS_VOIP_SANDBOX
  | @as("APNS_VOIP") #APNS_VOIP
  | @as("APNS_SANDBOX") #APNS_SANDBOX
  | @as("APNS") #APNS
  | @as("GCM") #GCM
  | @as("PUSH") #PUSH
]
type type_ = [@as("NONE") #NONE | @as("ANY") #ANY | @as("ALL") #ALL]
type templateType = [
  | @as("INAPP") #INAPP
  | @as("PUSH") #PUSH
  | @as("VOICE") #VOICE
  | @as("SMS") #SMS
  | @as("EMAIL") #EMAIL
]
type state = [
  | @as("PAUSED") #PAUSED
  | @as("CLOSED") #CLOSED
  | @as("CANCELLED") #CANCELLED
  | @as("COMPLETED") #COMPLETED
  | @as("ACTIVE") #ACTIVE
  | @as("DRAFT") #DRAFT
]
type sourceType = [@as("NONE") #NONE | @as("ANY") #ANY | @as("ALL") #ALL]
type segmentType = [@as("IMPORT") #IMPORT | @as("DIMENSIONAL") #DIMENSIONAL]
type recencyType = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type operator = [@as("ANY") #ANY | @as("ALL") #ALL]
type mode = [@as("FILTER") #FILTER | @as("DELIVERY") #DELIVERY]
type messageType = [@as("PROMOTIONAL") #PROMOTIONAL | @as("TRANSACTIONAL") #TRANSACTIONAL]
type layout = [
  | @as("CAROUSEL") #CAROUSEL
  | @as("MIDDLE_BANNER") #MIDDLE_BANNER
  | @as("MOBILE_FEED") #MOBILE_FEED
  | @as("OVERLAYS") #OVERLAYS
  | @as("TOP_BANNER") #TOP_BANNER
  | @as("BOTTOM_BANNER") #BOTTOM_BANNER
]
type jobStatus = [
  | @as("FAILED") #FAILED
  | @as("FAILING") #FAILING
  | @as("COMPLETED") #COMPLETED
  | @as("COMPLETING") #COMPLETING
  | @as("PENDING_JOB") #PENDING_JOB
  | @as("PROCESSING") #PROCESSING
  | @as("INITIALIZING") #INITIALIZING
  | @as("PREPARING_FOR_INITIALIZATION") #PREPARING_FOR_INITIALIZATION
  | @as("CREATED") #CREATED
]
type include_ = [@as("NONE") #NONE | @as("ANY") #ANY | @as("ALL") #ALL]
type frequency = [
  | @as("IN_APP_EVENT") #IN_APP_EVENT
  | @as("EVENT") #EVENT
  | @as("MONTHLY") #MONTHLY
  | @as("WEEKLY") #WEEKLY
  | @as("DAILY") #DAILY
  | @as("HOURLY") #HOURLY
  | @as("ONCE") #ONCE
]
type format = [@as("JSON") #JSON | @as("CSV") #CSV]
type filterType = [@as("ENDPOINT") #ENDPOINT | @as("SYSTEM") #SYSTEM]
type duration = [
  | @as("DAY_30") #DAY_30
  | @as("DAY_14") #DAY_14
  | @as("DAY_7") #DAY_7
  | @as("HR_24") #HR_24
]
type dimensionType = [@as("EXCLUSIVE") #EXCLUSIVE | @as("INCLUSIVE") #INCLUSIVE]
type deliveryStatus = [
  | @as("DUPLICATE") #DUPLICATE
  | @as("OPT_OUT") #OPT_OUT
  | @as("UNKNOWN_FAILURE") #UNKNOWN_FAILURE
  | @as("PERMANENT_FAILURE") #PERMANENT_FAILURE
  | @as("TEMPORARY_FAILURE") #TEMPORARY_FAILURE
  | @as("THROTTLED") #THROTTLED
  | @as("SUCCESSFUL") #SUCCESSFUL
]
type channelType = [
  | @as("IN_APP") #IN_APP
  | @as("CUSTOM") #CUSTOM
  | @as("BAIDU") #BAIDU
  | @as("EMAIL") #EMAIL
  | @as("VOICE") #VOICE
  | @as("SMS") #SMS
  | @as("ADM") #ADM
  | @as("APNS_VOIP_SANDBOX") #APNS_VOIP_SANDBOX
  | @as("APNS_VOIP") #APNS_VOIP
  | @as("APNS_SANDBOX") #APNS_SANDBOX
  | @as("APNS") #APNS
  | @as("GCM") #GCM
  | @as("PUSH") #PUSH
]
type campaignStatus = [
  | @as("INVALID") #INVALID
  | @as("DELETED") #DELETED
  | @as("PAUSED") #PAUSED
  | @as("COMPLETED") #COMPLETED
  | @as("PENDING_NEXT_RUN") #PENDING_NEXT_RUN
  | @as("EXECUTING") #EXECUTING
  | @as("SCHEDULED") #SCHEDULED
]
type buttonAction = [@as("CLOSE") #CLOSE | @as("DEEP_LINK") #DEEP_LINK | @as("LINK") #LINK]
type attributeType = [
  | @as("BETWEEN") #BETWEEN
  | @as("ON") #ON
  | @as("AFTER") #AFTER
  | @as("BEFORE") #BEFORE
  | @as("CONTAINS") #CONTAINS
  | @as("EXCLUSIVE") #EXCLUSIVE
  | @as("INCLUSIVE") #INCLUSIVE
]
type alignment = [@as("RIGHT") #RIGHT | @as("CENTER") #CENTER | @as("LEFT") #LEFT]
type action = [@as("URL") #URL | @as("DEEP_LINK") #DEEP_LINK | @as("OPEN_APP") #OPEN_APP]
@ocaml.doc(
  "<p>Specifies the Amazon Resource Name (ARN) of an event stream to publish events to and the AWS Identity and Access Management (IAM) role to use when publishing those events.</p>"
)
type writeEventStream = {
  @ocaml.doc(
    "<p>The AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to publish event data to the stream in your AWS account.</p>"
  )
  @as("RoleArn")
  roleArn: __string,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Kinesis data stream or Amazon Kinesis Data Firehose delivery stream that you want to publish event data to.</p> <p>For a Kinesis data stream, the ARN format is: arn:aws:kinesis:<replaceable>region</replaceable>:<replaceable>account-id</replaceable>:stream/<replaceable>stream_name</replaceable>
               </p> <p>For a Kinesis Data Firehose delivery stream, the ARN format is: arn:aws:firehose:<replaceable>region</replaceable>:<replaceable>account-id</replaceable>:deliverystream/<replaceable>stream_name</replaceable>
               </p>")
  @as("DestinationStreamArn")
  destinationStreamArn: __string,
}
@ocaml.doc(
  "<p>Specifies a duration or a date and time that indicates when Amazon Pinpoint determines whether an activity's conditions have been met or an activity moves participants to the next activity in a journey.</p>"
)
type waitTime = {
  @ocaml.doc(
    "<p>The date and time, in ISO 8601 format, when Amazon Pinpoint determines whether the activity's conditions have been met or the activity moves participants to the next activity in the journey.</p>"
  )
  @as("WaitUntil")
  waitUntil: option<__string>,
  @ocaml.doc(
    "<p>The amount of time to wait, as a duration in ISO 8601 format, before determining whether the activity's conditions have been met or moving participants to the next activity in the journey.</p>"
  )
  @as("WaitFor")
  waitFor: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about the status and settings of the voice channel for an application.</p>"
)
type voiceChannelResponse = {
  @ocaml.doc("<p>The current version of the voice channel.</p>") @as("Version")
  version: option<__integer>,
  @ocaml.doc(
    "<p>The type of messaging or notification platform for the channel. For the voice channel, this value is VOICE.</p>"
  )
  @as("Platform")
  platform: __string,
  @ocaml.doc(
    "<p>The date and time, in ISO 8601 format, when the voice channel was last modified.</p>"
  )
  @as("LastModifiedDate")
  lastModifiedDate: option<__string>,
  @ocaml.doc("<p>The user who last modified the voice channel.</p>") @as("LastModifiedBy")
  lastModifiedBy: option<__string>,
  @ocaml.doc("<p>Specifies whether the voice channel is archived.</p>") @as("IsArchived")
  isArchived: option<__boolean>,
  @ocaml.doc(
    "<p>(Deprecated) An identifier for the voice channel. This property is retained only for backward compatibility.</p>"
  )
  @as("Id")
  id: option<__string>,
  @ocaml.doc("<p>(Not used) This property is retained only for backward compatibility.</p>")
  @as("HasCredential")
  hasCredential: option<__boolean>,
  @ocaml.doc("<p>Specifies whether the voice channel is enabled for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc("<p>The date and time, in ISO 8601 format, when the voice channel was enabled.</p>")
  @as("CreationDate")
  creationDate: option<__string>,
  @ocaml.doc("<p>The unique identifier for the application that the voice channel applies to.</p>")
  @as("ApplicationId")
  applicationId: option<__string>,
}
@ocaml.doc("<p>Specifies the status and settings of the voice channel for an application.</p>")
type voiceChannelRequest = {
  @ocaml.doc("<p>Specifies whether to enable the voice channel for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
}
@ocaml.doc("<p>Verify OTP message request.</p>")
type verifyOTPMessageRequestParameters = {
  @ocaml.doc("<p>The reference identifier provided when the OTP was previously sent.</p>")
  @as("ReferenceId")
  referenceId: __string,
  @ocaml.doc("<p>The OTP the end user provided for verification.</p>") @as("Otp") otp: __string,
  @ocaml.doc("<p>The destination identity to send OTP to.</p>") @as("DestinationIdentity")
  destinationIdentity: __string,
}
@ocaml.doc("<p>Verify OTP Message Response.</p>")
type verificationResponse = {
  @ocaml.doc("<p>Specifies whether the OTP is valid or not.</p>") @as("Valid")
  valid: option<__boolean>,
}
@ocaml.doc("<p>Provides information about a specific version of a message template.</p>")
type templateVersionResponse = {
  @ocaml.doc(
    "<p>The unique identifier for the version of the message template. This value is an integer that Amazon Pinpoint automatically increments and assigns to each new version of a template.</p>"
  )
  @as("Version")
  version: option<__string>,
  @ocaml.doc(
    "<p>The type of channel that the message template is designed for. Possible values are: EMAIL, PUSH, SMS, and VOICE.</p>"
  )
  @as("TemplateType")
  templateType: __string,
  @ocaml.doc("<p>The name of the message template.</p>") @as("TemplateName") templateName: __string,
  @ocaml.doc("<p>The custom description of the version of the message template.</p>")
  @as("TemplateDescription")
  templateDescription: option<__string>,
  @ocaml.doc(
    "<p>The date, in ISO 8601 format, when the version of the message template was last modified.</p>"
  )
  @as("LastModifiedDate")
  lastModifiedDate: __string,
  @ocaml.doc(
    "<p>A JSON object that specifies the default values that are used for message variables in the version of the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.</p>"
  )
  @as("DefaultSubstitutions")
  defaultSubstitutions: option<__string>,
  @ocaml.doc(
    "<p>The date, in ISO 8601 format, when the version of the message template was created.</p>"
  )
  @as("CreationDate")
  creationDate: __string,
}
@ocaml.doc("<p>Provides information about a request to create a message template.</p>")
type templateCreateMessageBody = {
  @ocaml.doc("<p>The unique identifier for the request to create the message template.</p>")
  @as("RequestID")
  requestID: option<__string>,
  @ocaml.doc(
    "<p>The message that's returned from the API for the request to create the message template.</p>"
  )
  @as("Message")
  message: option<__string>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the message template that was created.</p>")
  @as("Arn")
  arn: option<__string>,
}
@ocaml.doc(
  "<p>Specifies which version of a message template to use as the active version of the template.</p>"
)
type templateActiveVersionRequest = {
  @ocaml.doc(
    "<p>The version of the message template to use as the active version of the template. Valid values are: latest, for the most recent version of the template; or, the unique identifier for any existing version of the template. If you specify an identifier, the value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p>"
  )
  @as("Version")
  version: option<__string>,
}
@ocaml.doc("<p>Specifies the name and version of the message template to use for the message.</p>")
type template = {
  @ocaml.doc(
    "<p>The unique identifier for the version of the message template to use for the message. If specified, this value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If you don't specify a value for this property, Amazon Pinpoint uses the <i>active version</i> of the template. The <i>active version</i> is typically the version of a template that's been most recently reviewed and approved for use, depending on your workflow. It isn't necessarily the latest version of a template.</p>"
  )
  @as("Version")
  version: option<__string>,
  @ocaml.doc(
    "<p>The name of the message template to use for the message. If specified, this value must match the name of an existing message template.</p>"
  )
  @as("Name")
  name: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the subject or body of an email message, represented as textual email data and the applicable character set.</p>"
)
type simpleEmailPart = {
  @ocaml.doc("<p>The textual data of the message content.</p>") @as("Data") data: option<__string>,
  @ocaml.doc("<p>The applicable character set for the message content.</p>") @as("Charset")
  charset: option<__string>,
}
@ocaml.doc("<p>Provides information about a session.</p>")
type session = {
  @ocaml.doc("<p>The date and time when the session ended.</p>") @as("StopTimestamp")
  stopTimestamp: option<__string>,
  @ocaml.doc("<p>The date and time when the session began.</p>") @as("StartTimestamp")
  startTimestamp: __string,
  @ocaml.doc("<p>The unique identifier for the session.</p>") @as("Id") id: __string,
  @ocaml.doc("<p>The duration of the session, in milliseconds.</p>") @as("Duration")
  duration: option<__integer>,
}
@ocaml.doc("<p>Send OTP message request parameters.</p>")
type sendOTPMessageRequestParameters = {
  @ocaml.doc("<p>The time in minutes before the OTP is no longer valid.</p>") @as("ValidityPeriod")
  validityPeriod: option<__integer>,
  @ocaml.doc("<p>A unique Template ID received from DLT after entity registration is approved.</p>")
  @as("TemplateId")
  templateId: option<__string>,
  @ocaml.doc(
    "<p>Developer-specified reference identifier. Required to match during OTP verification.</p>"
  )
  @as("ReferenceId")
  referenceId: __string,
  @ocaml.doc("<p>The origination identity used to send OTP from.</p>") @as("OriginationIdentity")
  originationIdentity: __string,
  @ocaml.doc("<p>The language to be used for the outgoing message body containing the OTP.</p>")
  @as("Language")
  language: option<__string>,
  @ocaml.doc("<p>A unique Entity ID received from DLT after entity registration is approved.</p>")
  @as("EntityId")
  entityId: option<__string>,
  @ocaml.doc("<p>The destination identity to send OTP to.</p>") @as("DestinationIdentity")
  destinationIdentity: __string,
  @ocaml.doc("<p>The number of characters in the generated OTP.</p>") @as("CodeLength")
  codeLength: option<__integer>,
  @ocaml.doc("<p>Channel type for the OTP message. Supported values: [SMS].</p>") @as("Channel")
  channel: __string,
  @ocaml.doc(
    "<p>The brand name that will be substituted into the OTP message body. Should be owned by calling AWS account.</p>"
  )
  @as("BrandName")
  brandName: __string,
  @ocaml.doc("<p>The attempts allowed to validate an OTP.</p>") @as("AllowedAttempts")
  allowedAttempts: option<__integer>,
}
@ocaml.doc("<p>Specifies the segment identifier and version of a segment.</p>")
type segmentReference = {
  @ocaml.doc("<p>The version number of the segment.</p>") @as("Version") version: option<__integer>,
  @ocaml.doc("<p>The unique identifier for the segment.</p>") @as("Id") id: __string,
}
@ocaml.doc("<p>Specifies a segment to associate with an activity in a journey.</p>")
type segmentCondition = {
  @ocaml.doc("<p>The unique identifier for the segment to associate with the activity.</p>")
  @as("SegmentId")
  segmentId: __string,
}
@ocaml.doc(
  "<p>Provides information about the status and settings of the SMS channel for an application.</p>"
)
type smschannelResponse = {
  @ocaml.doc("<p>The current version of the SMS channel.</p>") @as("Version")
  version: option<__integer>,
  @ocaml.doc(
    "<p>The maximum number of transactional messages that you can send through the SMS channel each second.</p>"
  )
  @as("TransactionalMessagesPerSecond")
  transactionalMessagesPerSecond: option<__integer>,
  @ocaml.doc(
    "<p>The registered short code to use when you send messages through the SMS channel.</p>"
  )
  @as("ShortCode")
  shortCode: option<__string>,
  @ocaml.doc(
    "<p>The identity that displays on recipients' devices when they receive messages from the SMS channel.</p>"
  )
  @as("SenderId")
  senderId: option<__string>,
  @ocaml.doc(
    "<p>The maximum number of promotional messages that you can send through the SMS channel each second.</p>"
  )
  @as("PromotionalMessagesPerSecond")
  promotionalMessagesPerSecond: option<__integer>,
  @ocaml.doc(
    "<p>The type of messaging or notification platform for the channel. For the SMS channel, this value is SMS.</p>"
  )
  @as("Platform")
  platform: __string,
  @ocaml.doc(
    "<p>The date and time, in ISO 8601 format, when the SMS channel was last modified.</p>"
  )
  @as("LastModifiedDate")
  lastModifiedDate: option<__string>,
  @ocaml.doc("<p>The user who last modified the SMS channel.</p>") @as("LastModifiedBy")
  lastModifiedBy: option<__string>,
  @ocaml.doc("<p>Specifies whether the SMS channel is archived.</p>") @as("IsArchived")
  isArchived: option<__boolean>,
  @ocaml.doc(
    "<p>(Deprecated) An identifier for the SMS channel. This property is retained only for backward compatibility.</p>"
  )
  @as("Id")
  id: option<__string>,
  @ocaml.doc("<p>(Not used) This property is retained only for backward compatibility.</p>")
  @as("HasCredential")
  hasCredential: option<__boolean>,
  @ocaml.doc("<p>Specifies whether the SMS channel is enabled for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc("<p>The date and time, in ISO 8601 format, when the SMS channel was enabled.</p>")
  @as("CreationDate")
  creationDate: option<__string>,
  @ocaml.doc("<p>The unique identifier for the application that the SMS channel applies to.</p>")
  @as("ApplicationId")
  applicationId: option<__string>,
}
@ocaml.doc("<p>Specifies the status and settings of the SMS channel for an application.</p>")
type smschannelRequest = {
  @ocaml.doc(
    "<p>The registered short code that you want to use when you send messages through the SMS channel.</p>"
  )
  @as("ShortCode")
  shortCode: option<__string>,
  @ocaml.doc(
    "<p>The identity that you want to display on recipients' devices when they receive messages from the SMS channel.</p>"
  )
  @as("SenderId")
  senderId: option<__string>,
  @ocaml.doc("<p>Specifies whether to enable the SMS channel for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
}
@ocaml.doc(
  "<p>Provides a single value and metadata about that value as part of an array of query results for a standard metric that applies to an application, campaign, or journey.</p>"
)
type resultRowValue = {
  @ocaml.doc(
    "<p>In a Values object, the value for the metric that the query retrieved data for. In a GroupedBys object, the value for the field that was used to group data in a result set that contains multiple results (Values objects).</p>"
  )
  @as("Value")
  value: __string,
  @ocaml.doc("<p>The data type of the value specified by the Value property.</p>") @as("Type")
  type_: __string,
  @ocaml.doc(
    "<p>The friendly name of the metric whose value is specified by the Value property.</p>"
  )
  @as("Key")
  key: __string,
}
@ocaml.doc(
  "<p>Specifies criteria for including or excluding endpoints from a segment based on how recently an endpoint was active.</p>"
)
type recencyDimension = {
  @ocaml.doc(
    "<p>The type of recency dimension to use for the segment. Valid values are: ACTIVE, endpoints that were active within the specified duration are included in the segment; and, INACTIVE, endpoints that weren't active within the specified duration are included in the segment.</p>"
  )
  @as("RecencyType")
  recencyType: recencyType,
  @ocaml.doc(
    "<p>The duration to use when determining whether an endpoint is active or inactive.</p>"
  )
  @as("Duration")
  duration: duration,
}
@ocaml.doc("<p>Specifies the contents of an email message, represented as a raw MIME message.</p>")
type rawEmail = {
  @ocaml.doc(
    "<p>The email message, represented as a raw MIME message. The entire message must be base64 encoded.</p>"
  )
  @as("Data")
  data: option<__blob>,
}
@ocaml.doc("<p>Specifies the settings for a path in a random split activity in a journey.</p>")
type randomSplitEntry = {
  @ocaml.doc(
    "<p>The percentage of participants to send down the activity path.</p> <p>To determine which participants are sent down each path, Amazon Pinpoint applies a probability-based algorithm to the percentages that you specify for the paths. Therefore, the actual percentage of participants who are sent down a path may not be equal to the percentage that you specify.</p>"
  )
  @as("Percentage")
  percentage: option<__integer>,
  @ocaml.doc(
    "<p>The unique identifier for the next activity to perform, after completing the activity for the path.</p>"
  )
  @as("NextActivity")
  nextActivity: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the start and end times that define a time range when messages aren't sent to endpoints.</p>"
)
type quietTime = {
  @ocaml.doc(
    "<p>The specific time when quiet time begins. This value has to use 24-hour notation and be in HH:MM format, where HH is the hour (with a leading zero, if applicable) and MM is the minutes. For example, use 02:30 to represent 2:30 AM, or 14:30 to represent 2:30 PM.</p>"
  )
  @as("Start")
  start: option<__string>,
  @ocaml.doc(
    "<p>The specific time when quiet time ends. This value has to use 24-hour notation and be in HH:MM format, where HH is the hour (with a leading zero, if applicable) and MM is the minutes. For example, use 02:30 to represent 2:30 AM, or 14:30 to represent 2:30 PM.</p>"
  )
  @as("End")
  end: option<__string>,
}
@ocaml.doc("<p>Override button configuration.</p>")
type overrideButtonConfiguration = {
  @ocaml.doc("<p>Button destination.</p>") @as("Link") link: option<__string>,
  @ocaml.doc("<p>Action triggered by the button.</p>") @as("ButtonAction")
  buttonAction: buttonAction,
}
@ocaml.doc("<p>Provides information about a phone number.</p>")
type numberValidateResponse = {
  @ocaml.doc(
    "<p>The postal or ZIP code for the location where the phone number was originally registered.</p>"
  )
  @as("ZipCode")
  zipCode: option<__string>,
  @ocaml.doc(
    "<p>The time zone for the location where the phone number was originally registered.</p>"
  )
  @as("Timezone")
  timezone: option<__string>,
  @ocaml.doc(
    "<p>The phone type, represented by an integer. Valid values are: 0 (mobile), 1 (landline), 2 (VoIP), 3 (invalid), 4 (other), and 5 (prepaid).</p>"
  )
  @as("PhoneTypeCode")
  phoneTypeCode: option<__integer>,
  @ocaml.doc("<p>The description of the phone type. Valid values are: MOBILE, LANDLINE, VOIP,
                  INVALID, PREPAID, and OTHER.</p>")
  @as("PhoneType")
  phoneType: option<__string>,
  @ocaml.doc("<p>The phone number that was sent in the request body.</p>")
  @as("OriginalPhoneNumber")
  originalPhoneNumber: option<__string>,
  @ocaml.doc(
    "<p>The two-character code, in ISO 3166-1 alpha-2 format, that was sent in the request body.</p>"
  )
  @as("OriginalCountryCodeIso2")
  originalCountryCodeIso2: option<__string>,
  @ocaml.doc("<p>The name of the county where the phone number was originally registered.</p>")
  @as("County")
  county: option<__string>,
  @ocaml.doc(
    "<p>The numeric code for the country or region where the phone number was originally registered.</p>"
  )
  @as("CountryCodeNumeric")
  countryCodeNumeric: option<__string>,
  @ocaml.doc(
    "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region where the phone number was originally registered.</p>"
  )
  @as("CountryCodeIso2")
  countryCodeIso2: option<__string>,
  @ocaml.doc(
    "<p>The name of the country or region where the phone number was originally registered.</p>"
  )
  @as("Country")
  country: option<__string>,
  @ocaml.doc(
    "<p>The cleansed phone number, in the format for the location where the phone number was originally registered.</p>"
  )
  @as("CleansedPhoneNumberNational")
  cleansedPhoneNumberNational: option<__string>,
  @ocaml.doc(
    "<p>The cleansed phone number, in E.164 format, for the location where the phone number was originally registered.</p>"
  )
  @as("CleansedPhoneNumberE164")
  cleansedPhoneNumberE164: option<__string>,
  @ocaml.doc("<p>The name of the city where the phone number was originally registered.</p>")
  @as("City")
  city: option<__string>,
  @ocaml.doc(
    "<p>The carrier or service provider that the phone number is currently registered with. In some countries and regions, this value may be the carrier or service provider that the phone number was originally registered with.</p>"
  )
  @as("Carrier")
  carrier: option<__string>,
}
@ocaml.doc("<p>Specifies a phone number to validate and retrieve information about.</p>")
type numberValidateRequest = {
  @ocaml.doc(
    "<p>The phone number to retrieve information about. The phone number that you provide should include a valid numeric country code. Otherwise, the operation might result in an error.</p>"
  )
  @as("PhoneNumber")
  phoneNumber: option<__string>,
  @ocaml.doc(
    "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region where the phone number was originally registered.</p>"
  )
  @as("IsoCountryCode")
  isoCountryCode: option<__string>,
}
@ocaml.doc(
  "<p>Specifies metric-based criteria for including or excluding endpoints from a segment. These criteria derive from custom metrics that you define for endpoints.</p>"
)
type metricDimension = {
  @ocaml.doc("<p>The value to compare.</p>") @as("Value") value: __double,
  @ocaml.doc(
    "<p>The operator to use when comparing metric values. Valid values are: GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, and EQUAL.</p>"
  )
  @as("ComparisonOperator")
  comparisonOperator: __string,
}
@ocaml.doc(
  "<p>Provides information about the results of sending a message directly to an endpoint address.</p>"
)
type messageResult = {
  @ocaml.doc(
    "<p>For push notifications that are sent through the GCM channel, specifies whether the endpoint's device registration token was updated as part of delivering the message.</p>"
  )
  @as("UpdatedToken")
  updatedToken: option<__string>,
  @ocaml.doc("<p>The status message for delivering the message.</p>") @as("StatusMessage")
  statusMessage: option<__string>,
  @ocaml.doc("<p>The downstream service status code for delivering the message.</p>")
  @as("StatusCode")
  statusCode: __integer,
  @ocaml.doc("<p>The unique identifier for the message that was sent.</p>") @as("MessageId")
  messageId: option<__string>,
  @ocaml.doc(
    "<p>The delivery status of the message. Possible values are:</p> <ul> <li><p>DUPLICATE - The endpoint address is a duplicate of another endpoint address. Amazon Pinpoint won't attempt to send the message again.</p></li>   <li><p>OPT_OUT - The user who's associated with the endpoint address has opted out of receiving messages from you. Amazon Pinpoint won't attempt to send the message again.</p></li> <li><p>PERMANENT_FAILURE - An error occurred when delivering the message to the endpoint address. Amazon Pinpoint won't attempt to send the message again.</p></li>   <li><p>SUCCESSFUL - The message was successfully delivered to the endpoint address.</p></li> <li><p>TEMPORARY_FAILURE - A temporary error occurred. Amazon Pinpoint won't attempt to send the message again.</p></li> <li><p>THROTTLED - Amazon Pinpoint throttled the operation to send the message to the endpoint address.</p></li> <li><p>TIMEOUT - The message couldn't be sent within the timeout period.</p></li> <li><p>UNKNOWN_FAILURE - An unknown error occurred.</p></li></ul>"
  )
  @as("DeliveryStatus")
  deliveryStatus: deliveryStatus,
}
@ocaml.doc("<p>Provides information about an API request or response.</p>")
type messageBody = {
  @ocaml.doc("<p>The unique identifier for the request or response.</p>") @as("RequestID")
  requestID: option<__string>,
  @ocaml.doc("<p>The message that's returned from the API.</p>") @as("Message")
  message: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the content and settings for a push notification that's sent to recipients of a campaign.</p>"
)
type message = {
  @ocaml.doc(
    "<p>The URL to open in a recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>"
  )
  @as("Url")
  url: option<__string>,
  @ocaml.doc("<p>The title to display above the notification message on a recipient's device.</p>")
  @as("Title")
  title: option<__string>,
  @ocaml.doc(
    "<p>The number of seconds that the push-notification service should keep the message, if the service is unable to deliver the notification the first time. This value is converted to an expiration value when it's sent to a push-notification service. If this value is 0, the service treats the notification as if it expires immediately and the service doesn't store or try to deliver the notification again.</p> <p>This value doesn't apply to messages that are sent through the Amazon Device Messaging (ADM) service.</p>"
  )
  @as("TimeToLive")
  timeToLive: option<__integer>,
  @ocaml.doc(
    "<p>Specifies whether the notification is a silent push notification, which is a push notification that doesn't display on a recipient's device. Silent push notifications can be used for cases such as updating an app's configuration, displaying messages in an in-app message center, or supporting phone home functionality.</p>"
  )
  @as("SilentPush")
  silentPush: option<__boolean>,
  @ocaml.doc(
    "<p>The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.</p>"
  )
  @as("RawContent")
  rawContent: option<__string>,
  @ocaml.doc("<p>The URL of the image or video to display in the push notification.</p>")
  @as("MediaUrl")
  mediaUrl: option<__string>,
  @ocaml.doc("<p>The JSON payload to use for a silent push notification.</p>") @as("JsonBody")
  jsonBody: option<__string>,
  @ocaml.doc("<p>The URL of an image to display in the push notification.</p>") @as("ImageUrl")
  imageUrl: option<__string>,
  @ocaml.doc(
    "<p>The URL of the image to display as the small, push-notification icon, such as a small version of the icon for the app.</p>"
  )
  @as("ImageSmallIconUrl")
  imageSmallIconUrl: option<__string>,
  @ocaml.doc(
    "<p>The URL of the image to display as the push-notification icon, such as the icon for the app.</p>"
  )
  @as("ImageIconUrl")
  imageIconUrl: option<__string>,
  @ocaml.doc(
    "<p>The body of the notification message. The maximum number of characters is 200.</p>"
  )
  @as("Body")
  body: option<__string>,
  @ocaml.doc(
    "<p>The action to occur if a recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of iOS and Android.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"
  )
  @as("Action")
  action: option<action>,
}
type mapOf__string = Js.Dict.t<__string>
type mapOf__integer = Js.Dict.t<__integer>
type mapOf__double = Js.Dict.t<__double>
type listOf__string = array<__string>
type listOf__EndpointTypesElement = array<__EndpointTypesElement>
@ocaml.doc("<p>Changes the status of a journey.</p>")
type journeyStateRequest = {
  @ocaml.doc(
    "<p>The status of the journey. Currently, Supported values are ACTIVE, PAUSED, and CANCELLED</p> <p>If you cancel a journey, Amazon Pinpoint continues to perform activities that are currently in progress, until those activities are complete. Amazon Pinpoint also continues to collect and aggregate analytics data for those activities, until they are complete, and any activities that were complete when you cancelled the journey.</p> <p>After you cancel a journey, you can't add, change, or remove any activities from the journey. In addition, Amazon Pinpoint stops evaluating the journey and doesn't perform any activities that haven't started.</p> <p>When the journey is paused, Amazon Pinpoint continues to perform activities that are currently in progress, until those activities are complete. Endpoints will stop entering journeys when the journey is paused and will resume entering the journey after the journey is resumed. For wait activities, wait time is paused when the journey is paused. Currently, PAUSED only supports journeys with a segment refresh interval.</p>"
  )
  @as("State")
  state: option<state>,
}
@ocaml.doc("<p>Specifies the schedule settings for a journey.</p>")
type journeySchedule = {
  @ocaml.doc("<p>The starting UTC offset for the journey schedule, if the value of the journey's LocalTime property is true. Valid values are: UTC,
                  UTC+01, UTC+02, UTC+03, UTC+03:30, UTC+04, UTC+04:30, UTC+05, UTC+05:30,
                  UTC+05:45, UTC+06, UTC+06:30, UTC+07, UTC+08, UTC+08:45, UTC+09, UTC+09:30,
                  UTC+10, UTC+10:30, UTC+11, UTC+12, UTC+12:45, UTC+13, UTC+13:45, UTC-02,
                  UTC-02:30, UTC-03, UTC-03:30, UTC-04, UTC-05, UTC-06, UTC-07, UTC-08, UTC-09,
                  UTC-09:30, UTC-10, and UTC-11.</p>")
  @as("Timezone")
  timezone: option<__string>,
  @ocaml.doc("<p>The scheduled time, in ISO 8601 format, when the journey began or will begin.</p>")
  @as("StartTime")
  startTime: option<__timestampIso8601>,
  @ocaml.doc("<p>The scheduled time, in ISO 8601 format, when the journey ended or will end.</p>")
  @as("EndTime")
  endTime: option<__timestampIso8601>,
}
@ocaml.doc(
  "<p>Specifies the sender ID and message type for an SMS message that's sent to participants in a journey.</p>"
)
type journeySMSMessage = {
  @ocaml.doc(
    "<p>The template ID received from the regulatory body for sending SMS in your country.</p>"
  )
  @as("TemplateId")
  templateId: option<__string>,
  @ocaml.doc(
    "<p>The entity ID or Principal Entity (PE) id received from the regulatory body for sending SMS in your country.</p>"
  )
  @as("EntityId")
  entityId: option<__string>,
  @ocaml.doc(
    "<p>The sender ID to display as the sender of the message on a recipient's device. Support for sender IDs varies by country or region. For more information, see <a href=\"https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-countries.html\">Supported Countries and Regions</a> in the Amazon Pinpoint User Guide.</p>"
  )
  @as("SenderId")
  senderId: option<__string>,
  @ocaml.doc(
    "<p>The long code to send the SMS message from. This value should be one of the dedicated long codes that's assigned to your AWS account. Although it isn't required, we recommend that you specify the long code using an E.164 format to ensure prompt and accurate delivery of the message. For example, +12065550100.</p>"
  )
  @as("OriginationNumber")
  originationNumber: option<__string>,
  @ocaml.doc(
    "<p>The SMS message type. Valid values are TRANSACTIONAL (for messages that are critical or time-sensitive, such as a one-time passwords) and PROMOTIONAL (for messsages that aren't critical or time-sensitive, such as marketing messages).</p>"
  )
  @as("MessageType")
  messageType: option<messageType>,
}
@ocaml.doc(
  "<p>Specifies the message configuration for a push notification that's sent to participants in a journey.</p>"
)
type journeyPushMessage = {
  @ocaml.doc(
    "<p>The number of seconds that the push notification service should keep the message, if the service is unable to deliver the notification the first time. This value is converted to an expiration value when it's sent to a push-notification service. If this value is 0, the service treats the notification as if it expires immediately and the service doesn't store or try to deliver the notification again.</p> <p>This value doesn't apply to messages that are sent through the Amazon Device Messaging (ADM) service.</p>"
  )
  @as("TimeToLive")
  timeToLive: option<__string>,
}
@ocaml.doc(
  "<p>Specifies limits on the messages that a journey can send and the number of times participants can enter a journey.</p>"
)
type journeyLimits = {
  @ocaml.doc(
    "<p>Minimum time that must pass before an endpoint can re-enter a given journey. The duration should use an ISO 8601 format, such as PT1H. </p>"
  )
  @as("EndpointReentryInterval")
  endpointReentryInterval: option<__string>,
  @ocaml.doc("<p>The maximum number of messages that the journey can send each second.</p>")
  @as("MessagesPerSecond")
  messagesPerSecond: option<__integer>,
  @ocaml.doc(
    "<p>The maximum number of times that a participant can enter the journey. The maximum value is 100. To allow participants to enter the journey an unlimited number of times, set this value to 0.</p>"
  )
  @as("EndpointReentryCap")
  endpointReentryCap: option<__integer>,
  @ocaml.doc(
    "<p>The maximum number of messages that the journey can send to a single participant during a 24-hour period. The maximum value is 100.</p>"
  )
  @as("DailyCap")
  dailyCap: option<__integer>,
}
@ocaml.doc(
  "<p>Specifies the \"From\" address for an email message that's sent to participants in a journey.</p>"
)
type journeyEmailMessage = {
  @ocaml.doc(
    "<p>The verified email address to send the email message from. The default address is the FromAddress specified for the email channel for the application.</p>"
  )
  @as("FromAddress")
  fromAddress: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the message content for a custom channel message that's sent to participants in a journey.</p>"
)
type journeyCustomMessage = {
  @ocaml.doc("<p>The message content that's passed to an AWS Lambda function or to a web hook.</p>")
  @as("Data")
  data: option<__string>,
}
@ocaml.doc("<p>The channel-specific configurations for the journey.</p>")
type journeyChannelSettings = {
  @ocaml.doc(
    "<p>IAM role ARN to be assumed when invoking Connect campaign execution APIs for dialing.</p>"
  )
  @as("ConnectCampaignExecutionRoleArn")
  connectCampaignExecutionRoleArn: option<__string>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the Connect Campaign.</p>") @as("ConnectCampaignArn")
  connectCampaignArn: option<__string>,
}
@ocaml.doc("<p>Text config for Message Header.</p>")
type inAppMessageHeaderConfig = {
  @ocaml.doc("<p>The text color.</p>") @as("TextColor") textColor: __string,
  @ocaml.doc("<p>Message Header.</p>") @as("Header") header: __string,
  @ocaml.doc("<p>The alignment of the text. Valid values: LEFT, CENTER, RIGHT.</p>")
  @as("Alignment")
  alignment: alignment,
}
@ocaml.doc("<p>Text config for Message Body.</p>")
type inAppMessageBodyConfig = {
  @ocaml.doc("<p>The text color.</p>") @as("TextColor") textColor: __string,
  @ocaml.doc("<p>Message Body.</p>") @as("Body") body: __string,
  @ocaml.doc("<p>The alignment of the text. Valid values: LEFT, CENTER, RIGHT.</p>")
  @as("Alignment")
  alignment: alignment,
}
@ocaml.doc(
  "<p>Provides information about the resource settings for a job that imports endpoint definitions from one or more files. The files can be stored in an Amazon Simple Storage Service (Amazon S3) bucket or uploaded directly from a computer by using the Amazon Pinpoint console.</p>"
)
type importJobResource = {
  @ocaml.doc(
    "<p>The custom name for the segment that's created by the import job, if the value of the DefineSegment property is true.</p>"
  )
  @as("SegmentName")
  segmentName: option<__string>,
  @ocaml.doc(
    "<p>The identifier for the segment that the import job updates or adds endpoint definitions to, if the import job updates an existing segment.</p>"
  )
  @as("SegmentId")
  segmentId: option<__string>,
  @ocaml.doc(
    "<p>The URL of the Amazon Simple Storage Service (Amazon S3) bucket that contains the endpoint definitions to import. This location can be a folder or a single file. If the location is a folder, Amazon Pinpoint imports endpoint definitions from the files in this location, including any subfolders that the folder contains.</p> <p>The URL should be in the following format: s3://<replaceable>bucket-name</replaceable>/<replaceable>folder-name</replaceable>/<replaceable>file-name</replaceable>. The location can end with the key for an individual object or a prefix that qualifies multiple objects.</p>"
  )
  @as("S3Url")
  s3Url: __string,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to access the Amazon S3 location to import endpoint definitions from.</p>"
  )
  @as("RoleArn")
  roleArn: __string,
  @ocaml.doc(
    "<p>Specifies whether the import job registers the endpoints with Amazon Pinpoint, when the endpoint definitions are imported.</p>"
  )
  @as("RegisterEndpoints")
  registerEndpoints: option<__boolean>,
  @ocaml.doc(
    "<p>The format of the files that contain the endpoint definitions to import. Valid values are: CSV, for comma-separated values format; and, JSON, for newline-delimited JSON format.</p> <p>If the files are stored in an Amazon S3 location and that location contains multiple files that use different formats, Amazon Pinpoint imports data only from the files that use the specified format.</p>"
  )
  @as("Format")
  format: format,
  @ocaml.doc(
    "<p>(Deprecated) Your AWS account ID, which you assigned to an external ID key in an IAM trust policy. Amazon Pinpoint previously used this value to assume an IAM role when importing endpoint definitions, but we removed this requirement. We don't recommend use of external IDs for IAM roles that are assumed by Amazon Pinpoint.</p>"
  )
  @as("ExternalId")
  externalId: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the import job creates a segment that contains the endpoints, when the endpoint definitions are imported.</p>"
  )
  @as("DefineSegment")
  defineSegment: option<__boolean>,
}
@ocaml.doc(
  "<p>Specifies the settings for a job that imports endpoint definitions from an Amazon Simple Storage Service (Amazon S3) bucket.</p>"
)
type importJobRequest = {
  @ocaml.doc(
    "<p>A custom name for the segment that's created by the import job, if the value of the DefineSegment property is true.</p>"
  )
  @as("SegmentName")
  segmentName: option<__string>,
  @ocaml.doc(
    "<p>The identifier for the segment to update or add the imported endpoint definitions to, if the import job is meant to update an existing segment.</p>"
  )
  @as("SegmentId")
  segmentId: option<__string>,
  @ocaml.doc(
    "<p>The URL of the Amazon Simple Storage Service (Amazon S3) bucket that contains the endpoint definitions to import. This location can be a folder or a single file. If the location is a folder, Amazon Pinpoint imports endpoint definitions from the files in this location, including any subfolders that the folder contains.</p> <p>The URL should be in the following format: s3://<replaceable>bucket-name</replaceable>/<replaceable>folder-name</replaceable>/<replaceable>file-name</replaceable>. The location can end with the key for an individual object or a prefix that qualifies multiple objects.</p>"
  )
  @as("S3Url")
  s3Url: __string,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to access the Amazon S3 location to import endpoint definitions from.</p>"
  )
  @as("RoleArn")
  roleArn: __string,
  @ocaml.doc(
    "<p>Specifies whether to register the endpoints with Amazon Pinpoint, when the endpoint definitions are imported.</p>"
  )
  @as("RegisterEndpoints")
  registerEndpoints: option<__boolean>,
  @ocaml.doc(
    "<p>The format of the files that contain the endpoint definitions to import. Valid values are: CSV, for comma-separated values format; and, JSON, for newline-delimited JSON format. If the Amazon S3 location stores multiple files that use different formats, Amazon Pinpoint imports data only from the files that use the specified format.</p>"
  )
  @as("Format")
  format: format,
  @ocaml.doc(
    "<p>(Deprecated) Your AWS account ID, which you assigned to an external ID key in an IAM trust policy. Amazon Pinpoint previously used this value to assume an IAM role when importing endpoint definitions, but we removed this requirement. We don't recommend use of external IDs for IAM roles that are assumed by Amazon Pinpoint.</p>"
  )
  @as("ExternalId")
  externalId: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether to create a segment that contains the endpoints, when the endpoint definitions are imported.</p>"
  )
  @as("DefineSegment")
  defineSegment: option<__boolean>,
}
@ocaml.doc(
  "<p>Specifies the settings for a holdout activity in a journey. This type of activity stops a journey for a specified percentage of participants.</p>"
)
type holdoutActivity = {
  @ocaml.doc(
    "<p>The percentage of participants who shouldn't continue the journey.</p> <p>To determine which participants are held out, Amazon Pinpoint applies a probability-based algorithm to the percentage that you specify. Therefore, the actual percentage of participants who are held out may not be equal to the percentage that you specify.</p>"
  )
  @as("Percentage")
  percentage: __integer,
  @ocaml.doc(
    "<p>The unique identifier for the next activity to perform, after performing the holdout activity.</p>"
  )
  @as("NextActivity")
  nextActivity: option<__string>,
}
@ocaml.doc("<p>Specifies the GPS coordinates of a location.</p>")
type gpscoordinates = {
  @ocaml.doc("<p>The longitude coordinate of the location.</p>") @as("Longitude")
  longitude: __double,
  @ocaml.doc("<p>The latitude coordinate of the location.</p>") @as("Latitude") latitude: __double,
}
@ocaml.doc(
  "<p>Provides information about the status and settings of the GCM channel for an application. The GCM channel enables Amazon Pinpoint to send push notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service.</p>"
)
type gcmchannelResponse = {
  @ocaml.doc("<p>The current version of the GCM channel.</p>") @as("Version")
  version: option<__integer>,
  @ocaml.doc(
    "<p>The type of messaging or notification platform for the channel. For the GCM channel, this value is GCM.</p>"
  )
  @as("Platform")
  platform: __string,
  @ocaml.doc("<p>The date and time when the GCM channel was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: option<__string>,
  @ocaml.doc("<p>The user who last modified the GCM channel.</p>") @as("LastModifiedBy")
  lastModifiedBy: option<__string>,
  @ocaml.doc("<p>Specifies whether the GCM channel is archived.</p>") @as("IsArchived")
  isArchived: option<__boolean>,
  @ocaml.doc(
    "<p>(Deprecated) An identifier for the GCM channel. This property is retained only for backward compatibility.</p>"
  )
  @as("Id")
  id: option<__string>,
  @ocaml.doc("<p>(Not used) This property is retained only for backward compatibility.</p>")
  @as("HasCredential")
  hasCredential: option<__boolean>,
  @ocaml.doc("<p>Specifies whether the GCM channel is enabled for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc(
    "<p>The Web API Key, also referred to as an <i>API_KEY</i> or <i>server key</i>, that you received from Google to communicate with Google services.</p>"
  )
  @as("Credential")
  credential: __string,
  @ocaml.doc("<p>The date and time when the GCM channel was enabled.</p>") @as("CreationDate")
  creationDate: option<__string>,
  @ocaml.doc("<p>The unique identifier for the application that the GCM channel applies to.</p>")
  @as("ApplicationId")
  applicationId: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the status and settings of the GCM channel for an application. This channel enables Amazon Pinpoint to send push notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service.</p>"
)
type gcmchannelRequest = {
  @ocaml.doc("<p>Specifies whether to enable the GCM channel for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc(
    "<p>The Web API Key, also referred to as an <i>API_KEY</i> or <i>server key</i>, that you received from Google to communicate with Google services.</p>"
  )
  @as("ApiKey")
  apiKey: __string,
}
@ocaml.doc(
  "<p>Provides information about the resource settings for a job that exports endpoint definitions to a file. The file can be added directly to an Amazon Simple Storage Service (Amazon S3) bucket by using the Amazon Pinpoint API or downloaded directly to a computer by using the Amazon Pinpoint console.</p>"
)
type exportJobResource = {
  @ocaml.doc("<p>The version of the segment that the endpoint definitions were exported from.</p>")
  @as("SegmentVersion")
  segmentVersion: option<__integer>,
  @ocaml.doc(
    "<p>The identifier for the segment that the endpoint definitions were exported from. If this value isn't present, Amazon Pinpoint exported definitions for all the endpoints that are associated with the application.</p>"
  )
  @as("SegmentId")
  segmentId: option<__string>,
  @ocaml.doc(
    "<p>The URL of the location in an Amazon Simple Storage Service (Amazon S3) bucket where the endpoint definitions were exported to. This location is typically a folder that contains multiple files. The URL should be in the following format: s3://<replaceable>bucket-name</replaceable>/<replaceable>folder-name</replaceable>/.</p>"
  )
  @as("S3UrlPrefix")
  s3UrlPrefix: __string,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorized Amazon Pinpoint to access the Amazon S3 location where the endpoint definitions were exported to.</p>"
  )
  @as("RoleArn")
  roleArn: __string,
}
@ocaml.doc(
  "<p>Specifies the settings for a job that exports endpoint definitions to an Amazon Simple Storage Service (Amazon S3) bucket.</p>"
)
type exportJobRequest = {
  @ocaml.doc("<p>The version of the segment to export endpoint definitions from, if specified.</p>")
  @as("SegmentVersion")
  segmentVersion: option<__integer>,
  @ocaml.doc(
    "<p>The identifier for the segment to export endpoint definitions from. If you don't specify this value, Amazon Pinpoint exports definitions for all the endpoints that are associated with the application.</p>"
  )
  @as("SegmentId")
  segmentId: option<__string>,
  @ocaml.doc(
    "<p>The URL of the location in an Amazon Simple Storage Service (Amazon S3) bucket where you want to export endpoint definitions to. This location is typically a folder that contains multiple files. The URL should be in the following format: s3://<replaceable>bucket-name</replaceable>/<replaceable>folder-name</replaceable>/.</p>"
  )
  @as("S3UrlPrefix")
  s3UrlPrefix: __string,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to access the Amazon S3 location where you want to export endpoint definitions to.</p>"
  )
  @as("RoleArn")
  roleArn: __string,
}
@ocaml.doc(
  "<p>Specifies settings for publishing event data to an Amazon Kinesis data stream or an Amazon Kinesis Data Firehose delivery stream.</p>"
)
type eventStream = {
  @ocaml.doc(
    "<p>The AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to publish event data to the stream in your AWS account.</p>"
  )
  @as("RoleArn")
  roleArn: __string,
  @ocaml.doc("<p>The IAM user who last modified the event stream.</p>") @as("LastUpdatedBy")
  lastUpdatedBy: option<__string>,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the event stream was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: option<__string>,
  @ocaml.doc(
    "<p>(Deprecated) Your AWS account ID, which you assigned to an external ID key in an IAM trust policy. Amazon Pinpoint previously used this value to assume an IAM role when publishing event data, but we removed this requirement. We don't recommend use of external IDs for IAM roles that are assumed by Amazon Pinpoint.</p>"
  )
  @as("ExternalId")
  externalId: option<__string>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Kinesis data stream or Amazon Kinesis Data Firehose delivery stream to publish event data to.</p> <p>For a Kinesis data stream, the ARN format is: arn:aws:kinesis:<replaceable>region</replaceable>:<replaceable>account-id</replaceable>:stream/<replaceable>stream_name</replaceable>
               </p> <p>For a Kinesis Data Firehose delivery stream, the ARN format is: arn:aws:firehose:<replaceable>region</replaceable>:<replaceable>account-id</replaceable>:deliverystream/<replaceable>stream_name</replaceable>
               </p>")
  @as("DestinationStreamArn")
  destinationStreamArn: __string,
  @ocaml.doc("<p>The unique identifier for the application to publish event data for.</p>")
  @as("ApplicationId")
  applicationId: __string,
}
@ocaml.doc("<p>Provides the status code and message that result from processing an event.</p>")
type eventItemResponse = {
  @ocaml.doc(
    "<p>The status code that's returned in the response as a result of processing the event. Possible values are: 202, for events that were accepted; and, 400, for events that weren't valid.</p>"
  )
  @as("StatusCode")
  statusCode: option<__integer>,
  @ocaml.doc(
    "<p>A custom message that's returned in the response as a result of processing the event.</p>"
  )
  @as("Message")
  message: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about the delivery status and results of sending a message directly to an endpoint.</p>"
)
type endpointMessageResult = {
  @ocaml.doc(
    "<p>For push notifications that are sent through the GCM channel, specifies whether the endpoint's device registration token was updated as part of delivering the message.</p>"
  )
  @as("UpdatedToken")
  updatedToken: option<__string>,
  @ocaml.doc("<p>The status message for delivering the message.</p>") @as("StatusMessage")
  statusMessage: option<__string>,
  @ocaml.doc("<p>The downstream service status code for delivering the message.</p>")
  @as("StatusCode")
  statusCode: __integer,
  @ocaml.doc("<p>The unique identifier for the message that was sent.</p>") @as("MessageId")
  messageId: option<__string>,
  @ocaml.doc(
    "<p>The delivery status of the message. Possible values are:</p> <ul> <li><p>DUPLICATE - The endpoint address is a duplicate of another endpoint address. Amazon Pinpoint won't attempt to send the message again.</p></li> <li><p>OPT_OUT - The user who's associated with the endpoint has opted out of receiving messages from you. Amazon Pinpoint won't attempt to send the message again.</p></li> <li><p>PERMANENT_FAILURE - An error occurred when delivering the message to the endpoint. Amazon Pinpoint won't attempt to send the message again.</p></li>    <li><p>SUCCESSFUL - The message was successfully delivered to the endpoint.</p></li> <li><p>TEMPORARY_FAILURE - A temporary error occurred. Amazon Pinpoint won't attempt to send the message again.</p></li> <li><p>THROTTLED - Amazon Pinpoint throttled the operation to send the message to the endpoint.</p></li> <li><p>TIMEOUT - The message couldn't be sent within the timeout period.</p></li> <li><p>UNKNOWN_FAILURE - An unknown error occurred.</p></li></ul>"
  )
  @as("DeliveryStatus")
  deliveryStatus: deliveryStatus,
  @ocaml.doc("<p>The endpoint address that the message was delivered to.</p>") @as("Address")
  address: option<__string>,
}
@ocaml.doc("<p>Specifies geographic information about an endpoint.</p>")
type endpointLocation = {
  @ocaml.doc(
    "<p>The name of the region where the endpoint is located. For locations in the United States, this value is the name of a state.</p>"
  )
  @as("Region")
  region: option<__string>,
  @ocaml.doc("<p>The postal or ZIP code for the area where the endpoint is located.</p>")
  @as("PostalCode")
  postalCode: option<__string>,
  @ocaml.doc(
    "<p>The longitude coordinate of the endpoint location, rounded to one decimal place.</p>"
  )
  @as("Longitude")
  longitude: option<__double>,
  @ocaml.doc(
    "<p>The latitude coordinate of the endpoint location, rounded to one decimal place.</p>"
  )
  @as("Latitude")
  latitude: option<__double>,
  @ocaml.doc(
    "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region where the endpoint is located. For example, US for the United States.</p>"
  )
  @as("Country")
  country: option<__string>,
  @ocaml.doc("<p>The name of the city where the endpoint is located.</p>") @as("City")
  city: option<__string>,
}
@ocaml.doc(
  "<p>Provides the status code and message that result from processing data for an endpoint.</p>"
)
type endpointItemResponse = {
  @ocaml.doc(
    "<p>The status code that's returned in the response as a result of processing the endpoint data.</p>"
  )
  @as("StatusCode")
  statusCode: option<__integer>,
  @ocaml.doc(
    "<p>The custom message that's returned in the response as a result of processing the endpoint data.</p>"
  )
  @as("Message")
  message: option<__string>,
}
@ocaml.doc(
  "<p>Specifies demographic information about an endpoint, such as the applicable time zone and platform.</p>"
)
type endpointDemographic = {
  @ocaml.doc(
    "<p>The time zone of the endpoint, specified as a tz database name value, such as America/Los_Angeles.</p>"
  )
  @as("Timezone")
  timezone: option<__string>,
  @ocaml.doc("<p>The platform version of the endpoint device.</p>") @as("PlatformVersion")
  platformVersion: option<__string>,
  @ocaml.doc("<p>The platform of the endpoint device, such as ios.</p>") @as("Platform")
  platform: option<__string>,
  @ocaml.doc("<p>The model version of the endpoint device.</p>") @as("ModelVersion")
  modelVersion: option<__string>,
  @ocaml.doc("<p>The model name or number of the endpoint device, such as iPhone or SM-G900F.</p>")
  @as("Model")
  model: option<__string>,
  @ocaml.doc("<p>The manufacturer of the endpoint device, such as apple or samsung.</p>")
  @as("Make")
  make: option<__string>,
  @ocaml.doc(
    "<p>The locale of the endpoint, in the following format: the ISO 639-1 alpha-2 code, followed by an underscore (_), followed by an ISO 3166-1 alpha-2 value.</p>"
  )
  @as("Locale")
  locale: option<__string>,
  @ocaml.doc("<p>The version of the app that's associated with the endpoint.</p>") @as("AppVersion")
  appVersion: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about the status and settings of the email channel for an application.</p>"
)
type emailChannelResponse = {
  @ocaml.doc("<p>The current version of the email channel.</p>") @as("Version")
  version: option<__integer>,
  @ocaml.doc(
    "<p>The ARN of the AWS Identity and Access Management (IAM) role that Amazon Pinpoint uses to submit email-related event data for the channel.</p>"
  )
  @as("RoleArn")
  roleArn: option<__string>,
  @ocaml.doc(
    "<p>The type of messaging or notification platform for the channel. For the email channel, this value is EMAIL.</p>"
  )
  @as("Platform")
  platform: __string,
  @ocaml.doc(
    "<p>The maximum number of emails that can be sent through the channel each second.</p>"
  )
  @as("MessagesPerSecond")
  messagesPerSecond: option<__integer>,
  @ocaml.doc(
    "<p>The date and time, in ISO 8601 format, when the email channel was last modified.</p>"
  )
  @as("LastModifiedDate")
  lastModifiedDate: option<__string>,
  @ocaml.doc("<p>The user who last modified the email channel.</p>") @as("LastModifiedBy")
  lastModifiedBy: option<__string>,
  @ocaml.doc("<p>Specifies whether the email channel is archived.</p>") @as("IsArchived")
  isArchived: option<__boolean>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the identity, verified with Amazon Simple Email Service (Amazon SES), that's used when you send email through the channel.</p>"
  )
  @as("Identity")
  identity: option<__string>,
  @ocaml.doc(
    "<p>(Deprecated) An identifier for the email channel. This property is retained only for backward compatibility.</p>"
  )
  @as("Id")
  id: option<__string>,
  @ocaml.doc("<p>(Not used) This property is retained only for backward compatibility.</p>")
  @as("HasCredential")
  hasCredential: option<__boolean>,
  @ocaml.doc(
    "<p>The verified email address that email is sent from when you send email through the channel.</p>"
  )
  @as("FromAddress")
  fromAddress: option<__string>,
  @ocaml.doc("<p>Specifies whether the email channel is enabled for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc("<p>The date and time, in ISO 8601 format, when the email channel was enabled.</p>")
  @as("CreationDate")
  creationDate: option<__string>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/ses/latest/APIReference/API_ConfigurationSet.html\">Amazon SES configuration set</a> that's applied to messages that are sent through the channel.</p>"
  )
  @as("ConfigurationSet")
  configurationSet: option<__string>,
  @ocaml.doc("<p>The unique identifier for the application that the email channel applies to.</p>")
  @as("ApplicationId")
  applicationId: option<__string>,
}
@ocaml.doc("<p>Specifies the status and settings of the email channel for an application.</p>")
type emailChannelRequest = {
  @ocaml.doc(
    "<p>The ARN of the AWS Identity and Access Management (IAM) role that you want Amazon Pinpoint to use when it submits email-related event data for the channel.</p>"
  )
  @as("RoleArn")
  roleArn: option<__string>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the identity, verified with Amazon Simple Email Service (Amazon SES), that you want to use when you send email through the channel.</p>"
  )
  @as("Identity")
  identity: __string,
  @ocaml.doc(
    "<p>The verified email address that you want to send email from when you send email through the channel.</p>"
  )
  @as("FromAddress")
  fromAddress: __string,
  @ocaml.doc("<p>Specifies whether to enable the email channel for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/ses/latest/APIReference/API_ConfigurationSet.html\">Amazon SES configuration set</a> that you want to apply to messages that you send through the channel.</p>"
  )
  @as("ConfigurationSet")
  configurationSet: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the default settings and content for a message template that can be used in messages that are sent through a push notification channel.</p>"
)
type defaultPushNotificationTemplate = {
  @ocaml.doc(
    "<p>The URL to open in a recipient's default mobile browser, if a recipient taps a push notification that's based on the message template and the value of the Action property is URL.</p>"
  )
  @as("Url")
  url: option<__string>,
  @ocaml.doc(
    "<p>The title to use in push notifications that are based on the message template. This title appears above the notification message on a recipient's device.</p>"
  )
  @as("Title")
  title: option<__string>,
  @ocaml.doc(
    "<p>The sound to play when a recipient receives a push notification that's based on the message template. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.</p> <p>For an iOS platform, this value is the key for the name of a sound file in your app's main bundle or the Library/Sounds folder in your app's data container. If the sound file can't be found or you specify default for the value, the system plays the default alert sound.</p>"
  )
  @as("Sound")
  sound: option<__string>,
  @ocaml.doc(
    "<p>The message body to use in push notifications that are based on the message template.</p>"
  )
  @as("Body")
  body: option<__string>,
  @ocaml.doc(
    "<p>The action to occur if a recipient taps a push notification that's based on the message template. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of the iOS and Android platforms.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"
  )
  @as("Action")
  action: option<action>,
}
@ocaml.doc("<p>Default button configuration.</p>")
type defaultButtonConfiguration = {
  @ocaml.doc("<p>The text color of the button.</p>") @as("TextColor") textColor: option<__string>,
  @ocaml.doc("<p>Button text.</p>") @as("Text") text: __string,
  @ocaml.doc("<p>Button destination.</p>") @as("Link") link: option<__string>,
  @ocaml.doc("<p>Action triggered by the button.</p>") @as("ButtonAction")
  buttonAction: buttonAction,
  @ocaml.doc("<p>The border radius of the button.</p>") @as("BorderRadius")
  borderRadius: option<__integer>,
  @ocaml.doc("<p>The background color of the button.</p>") @as("BackgroundColor")
  backgroundColor: option<__string>,
}
@ocaml.doc("<p>Provides information about a request to create a message template.</p>")
type createTemplateMessageBody = {
  @ocaml.doc("<p>The unique identifier for the request to create the message template.</p>")
  @as("RequestID")
  requestID: option<__string>,
  @ocaml.doc(
    "<p>The message that's returned from the API for the request to create the message template.</p>"
  )
  @as("Message")
  message: option<__string>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the message template that was created.</p>")
  @as("Arn")
  arn: option<__string>,
}
type contactCenterActivity = {
  @ocaml.doc(
    "<p>The unique identifier for the next activity to perform after the this activity.</p>"
  )
  @as("NextActivity")
  nextActivity: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about the general settings and status of a channel for an application.</p>"
)
type channelResponse = {
  @ocaml.doc("<p>The current version of the channel.</p>") @as("Version")
  version: option<__integer>,
  @ocaml.doc("<p>The date and time, in ISO 8601 format, when the channel was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: option<__string>,
  @ocaml.doc("<p>The user who last modified the channel.</p>") @as("LastModifiedBy")
  lastModifiedBy: option<__string>,
  @ocaml.doc("<p>Specifies whether the channel is archived.</p>") @as("IsArchived")
  isArchived: option<__boolean>,
  @ocaml.doc(
    "<p>(Deprecated) An identifier for the channel. This property is retained only for backward compatibility.</p>"
  )
  @as("Id")
  id: option<__string>,
  @ocaml.doc("<p>(Not used) This property is retained only for backward compatibility.</p>")
  @as("HasCredential")
  hasCredential: option<__boolean>,
  @ocaml.doc("<p>Specifies whether the channel is enabled for the application.</p>") @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc("<p>The date and time, in ISO 8601 format, when the channel was enabled.</p>")
  @as("CreationDate")
  creationDate: option<__string>,
  @ocaml.doc("<p>The unique identifier for the application.</p>") @as("ApplicationId")
  applicationId: option<__string>,
}
@ocaml.doc("<p>Provides information about the status of a campaign.</p>")
type campaignState = {
  @ocaml.doc(
    "<p>The current status of the campaign, or the current status of a treatment that belongs to an A/B test campaign.</p> <p>If a campaign uses A/B testing, the campaign has a status of COMPLETED only if all campaign treatments have a status of COMPLETED. If you delete the segment that's associated with a campaign, the campaign fails and has a status of DELETED.</p>"
  )
  @as("CampaignStatus")
  campaignStatus: option<campaignStatus>,
}
@ocaml.doc(
  "<p>Specifies the content and settings for an SMS message that's sent to recipients of a campaign.</p>"
)
type campaignSmsMessage = {
  @ocaml.doc(
    "<p>The template ID received from the regulatory body for sending SMS in your country.</p>"
  )
  @as("TemplateId")
  templateId: option<__string>,
  @ocaml.doc(
    "<p>The entity ID or Principal Entity (PE) id received from the regulatory body for sending SMS in your country.</p>"
  )
  @as("EntityId")
  entityId: option<__string>,
  @ocaml.doc(
    "<p>The sender ID to display on recipients' devices when they receive the SMS message.</p>"
  )
  @as("SenderId")
  senderId: option<__string>,
  @ocaml.doc(
    "<p>The long code to send the SMS message from. This value should be one of the dedicated long codes that's assigned to your AWS account. Although it isn't required, we recommend that you specify the long code using an E.164 format to ensure prompt and accurate delivery of the message. For example, +12065550100.</p>"
  )
  @as("OriginationNumber")
  originationNumber: option<__string>,
  @ocaml.doc(
    "<p>The SMS message type. Valid values are TRANSACTIONAL (for messages that are critical or time-sensitive, such as a one-time passwords) and PROMOTIONAL (for messsages that aren't critical or time-sensitive, such as marketing messages).</p>"
  )
  @as("MessageType")
  messageType: option<messageType>,
  @ocaml.doc("<p>The body of the SMS message.</p>") @as("Body") body: option<__string>,
}
@ocaml.doc(
  "<p>For a campaign, specifies limits on the messages that the campaign can send. For an application, specifies the default limits for messages that campaigns in the application can send.</p>"
)
type campaignLimits = {
  @ocaml.doc(
    "<p>The maximum total number of messages that the campaign can send per user session.</p>"
  )
  @as("Session")
  session: option<__integer>,
  @ocaml.doc(
    "<p>The maximum number of messages that a campaign can send to a single endpoint during the course of the campaign. If a campaign recurs, this setting applies to all runs of the campaign. The maximum value is 100.</p>"
  )
  @as("Total")
  total: option<__integer>,
  @ocaml.doc(
    "<p>The maximum number of messages that a campaign can send each second. For an application, this value specifies the default limit for the number of messages that campaigns can send each second. The minimum value is 50. The maximum value is 20,000.</p>"
  )
  @as("MessagesPerSecond")
  messagesPerSecond: option<__integer>,
  @ocaml.doc(
    "<p>The maximum amount of time, in seconds, that a campaign can attempt to deliver a message after the scheduled start time for the campaign. The minimum value is 60 seconds.</p>"
  )
  @as("MaximumDuration")
  maximumDuration: option<__integer>,
  @ocaml.doc(
    "<p>The maximum number of messages that a campaign can send to a single endpoint during a 24-hour period. For an application, this value specifies the default limit for the number of messages that campaigns and journeys can send to a single endpoint during a 24-hour period. The maximum value is 100.</p>"
  )
  @as("Daily")
  daily: option<__integer>,
}
@ocaml.doc(
  "<p>Specifies settings for invoking an AWS Lambda function that customizes a segment for a campaign.</p>"
)
type campaignHook = {
  @ocaml.doc(
    "<p>The web URL that Amazon Pinpoint calls to invoke the AWS Lambda function over HTTPS.</p>"
  )
  @as("WebUrl")
  webUrl: option<__string>,
  @ocaml.doc(
    "<p>The mode that Amazon Pinpoint uses to invoke the AWS Lambda function. Possible values are:</p> <ul><li><p>FILTER - Invoke the function to customize the segment that's used by a campaign.</p></li> <li><p>DELIVERY - (Deprecated) Previously, invoked the function to send a campaign through a custom channel. This functionality is not supported anymore. To send a campaign through a custom channel, use the CustomDeliveryConfiguration and CampaignCustomMessage objects of the campaign.</p></li></ul>"
  )
  @as("Mode")
  mode: option<mode>,
  @ocaml.doc(
    "<p>The name or Amazon Resource Name (ARN) of the AWS Lambda function that Amazon Pinpoint invokes to customize a segment for a campaign.</p>"
  )
  @as("LambdaFunctionName")
  lambdaFunctionName: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the content and \"From\" address for an email message that's sent to recipients of a campaign.</p>"
)
type campaignEmailMessage = {
  @ocaml.doc("<p>The subject line, or title, of the email.</p>") @as("Title")
  title: option<__string>,
  @ocaml.doc(
    "<p>The body of the email, in HTML format, for recipients whose email clients render HTML content.</p>"
  )
  @as("HtmlBody")
  htmlBody: option<__string>,
  @ocaml.doc(
    "<p>The verified email address to send the email from. The default address is the FromAddress specified for the email channel for the application.</p>"
  )
  @as("FromAddress")
  fromAddress: option<__string>,
  @ocaml.doc(
    "<p>The body of the email for recipients whose email clients don't render HTML content.</p>"
  )
  @as("Body")
  body: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the contents of a message that's sent through a custom channel to recipients of a campaign.</p>"
)
type campaignCustomMessage = {
  @ocaml.doc(
    "<p>The raw, JSON-formatted string to use as the payload for the message. The maximum size is 5 KB.</p>"
  )
  @as("Data")
  data: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about the status and settings of the Baidu (Baidu Cloud Push) channel for an application.</p>"
)
type baiduChannelResponse = {
  @ocaml.doc("<p>The current version of the Baidu channel.</p>") @as("Version")
  version: option<__integer>,
  @ocaml.doc(
    "<p>The type of messaging or notification platform for the channel. For the Baidu channel, this value is BAIDU.</p>"
  )
  @as("Platform")
  platform: __string,
  @ocaml.doc("<p>The date and time when the Baidu channel was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: option<__string>,
  @ocaml.doc("<p>The user who last modified the Baidu channel.</p>") @as("LastModifiedBy")
  lastModifiedBy: option<__string>,
  @ocaml.doc("<p>Specifies whether the Baidu channel is archived.</p>") @as("IsArchived")
  isArchived: option<__boolean>,
  @ocaml.doc(
    "<p>(Deprecated) An identifier for the Baidu channel. This property is retained only for backward compatibility.</p>"
  )
  @as("Id")
  id: option<__string>,
  @ocaml.doc("<p>(Not used) This property is retained only for backward compatibility.</p>")
  @as("HasCredential")
  hasCredential: option<__boolean>,
  @ocaml.doc("<p>Specifies whether the Baidu channel is enabled for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc(
    "<p>The API key that you received from the Baidu Cloud Push service to communicate with the service.</p>"
  )
  @as("Credential")
  credential: __string,
  @ocaml.doc("<p>The date and time when the Baidu channel was enabled.</p>") @as("CreationDate")
  creationDate: option<__string>,
  @ocaml.doc("<p>The unique identifier for the application that the Baidu channel applies to.</p>")
  @as("ApplicationId")
  applicationId: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the status and settings of the Baidu (Baidu Cloud Push) channel for an application.</p>"
)
type baiduChannelRequest = {
  @ocaml.doc(
    "<p>The secret key that you received from the Baidu Cloud Push service to communicate with the service.</p>"
  )
  @as("SecretKey")
  secretKey: __string,
  @ocaml.doc("<p>Specifies whether to enable the Baidu channel for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc(
    "<p>The API key that you received from the Baidu Cloud Push service to communicate with the service.</p>"
  )
  @as("ApiKey")
  apiKey: __string,
}
@ocaml.doc(
  "<p>Specifies channel-specific content and settings for a message template that can be used in push notifications that are sent through the ADM (Amazon Device Messaging), Baidu (Baidu Cloud Push), or GCM (Firebase Cloud Messaging, formerly Google Cloud Messaging) channel.</p>"
)
type androidPushNotificationTemplate = {
  @ocaml.doc(
    "<p>The URL to open in a recipient's default mobile browser, if a recipient taps a push notification that's based on the message template and the value of the Action property is URL.</p>"
  )
  @as("Url")
  url: option<__string>,
  @ocaml.doc(
    "<p>The title to use in a push notification that's based on the message template. This title appears above the notification message on a recipient's device.</p>"
  )
  @as("Title")
  title: option<__string>,
  @ocaml.doc(
    "<p>The sound to play when a recipient receives a push notification that's based on the message template. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.</p>"
  )
  @as("Sound")
  sound: option<__string>,
  @ocaml.doc(
    "<p>The URL of the small icon image to display in the status bar and the content view of a push notification that's based on the message template.</p>"
  )
  @as("SmallImageIconUrl")
  smallImageIconUrl: option<__string>,
  @ocaml.doc(
    "<p>The raw, JSON-formatted string to use as the payload for a push notification that's based on the message template. If specified, this value overrides all other content for the message template.</p>"
  )
  @as("RawContent")
  rawContent: option<__string>,
  @ocaml.doc(
    "<p>The URL of an image to display in a push notification that's based on the message template.</p>"
  )
  @as("ImageUrl")
  imageUrl: option<__string>,
  @ocaml.doc(
    "<p>The URL of the large icon image to display in the content view of a push notification that's based on the message template.</p>"
  )
  @as("ImageIconUrl")
  imageIconUrl: option<__string>,
  @ocaml.doc(
    "<p>The message body to use in a push notification that's based on the message template.</p>"
  )
  @as("Body")
  body: option<__string>,
  @ocaml.doc(
    "<p>The action to occur if a recipient taps a push notification that's based on the message template. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This action uses the deep-linking features of the Android platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"
  )
  @as("Action")
  action: option<action>,
}
@ocaml.doc("<p>Provides information about an activity that was performed by a campaign.</p>")
type activityResponse = {
  @ocaml.doc(
    "<p>The unique identifier for the campaign treatment that the activity applies to. A treatment is a variation of a campaign that's used for A/B testing of a campaign.</p>"
  )
  @as("TreatmentId")
  treatmentId: option<__string>,
  @ocaml.doc(
    "<p>The total number of endpoints that the campaign attempted to deliver messages to.</p>"
  )
  @as("TotalEndpointCount")
  totalEndpointCount: option<__integer>,
  @ocaml.doc(
    "<p>The total number of unique time zones that are in the segment for the campaign.</p>"
  )
  @as("TimezonesTotalCount")
  timezonesTotalCount: option<__integer>,
  @ocaml.doc("<p>The total number of time zones that were completed.</p>")
  @as("TimezonesCompletedCount")
  timezonesCompletedCount: option<__integer>,
  @ocaml.doc(
    "<p>The total number of endpoints that the campaign successfully delivered messages to.</p>"
  )
  @as("SuccessfulEndpointCount")
  successfulEndpointCount: option<__integer>,
  @ocaml.doc(
    "<p>The current status of the activity. Possible values are: PENDING, INITIALIZING, RUNNING, PAUSED, CANCELLED, and COMPLETED.</p>"
  )
  @as("State")
  state: option<__string>,
  @ocaml.doc("<p>The actual start time, in ISO 8601 format, of the activity.</p>") @as("Start")
  start: option<__string>,
  @ocaml.doc("<p>The scheduled start time, in ISO 8601 format, for the activity.</p>")
  @as("ScheduledStart")
  scheduledStart: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the activity succeeded. Possible values are SUCCESS and FAIL.</p>"
  )
  @as("Result")
  result: option<__string>,
  @ocaml.doc("<p>The unique identifier for the activity.</p>") @as("Id") id: __string,
  @ocaml.doc(
    "<p>The actual time, in ISO 8601 format, when the activity was marked CANCELLED or COMPLETED.</p>"
  )
  @as("End")
  end: option<__string>,
  @ocaml.doc("<p>The unique identifier for the campaign that the activity applies to.</p>")
  @as("CampaignId")
  campaignId: __string,
  @ocaml.doc("<p>The unique identifier for the application that the campaign applies to.</p>")
  @as("ApplicationId")
  applicationId: __string,
}
@ocaml.doc(
  "<p>Provides information about the status and settings of the APNs (Apple Push Notification service) VoIP sandbox channel for an application.</p>"
)
type apnsvoipSandboxChannelResponse = {
  @ocaml.doc("<p>The current version of the APNs VoIP sandbox channel.</p>") @as("Version")
  version: option<__integer>,
  @ocaml.doc(
    "<p>The type of messaging or notification platform for the channel. For the APNs VoIP sandbox channel, this value is APNS_VOIP_SANDBOX.</p>"
  )
  @as("Platform")
  platform: __string,
  @ocaml.doc("<p>The date and time when the APNs VoIP sandbox channel was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: option<__string>,
  @ocaml.doc("<p>The user who last modified the APNs VoIP sandbox channel.</p>")
  @as("LastModifiedBy")
  lastModifiedBy: option<__string>,
  @ocaml.doc("<p>Specifies whether the APNs VoIP sandbox channel is archived.</p>")
  @as("IsArchived")
  isArchived: option<__boolean>,
  @ocaml.doc(
    "<p>(Deprecated) An identifier for the APNs VoIP sandbox channel. This property is retained only for backward compatibility.</p>"
  )
  @as("Id")
  id: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the APNs VoIP sandbox channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.</p>"
  )
  @as("HasTokenKey")
  hasTokenKey: option<__boolean>,
  @ocaml.doc("<p>(Not used) This property is retained only for backward compatibility.</p>")
  @as("HasCredential")
  hasCredential: option<__boolean>,
  @ocaml.doc(
    "<p>Specifies whether the APNs VoIP sandbox channel is enabled for the application.</p>"
  )
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc(
    "<p>The default authentication method that Amazon Pinpoint uses to authenticate with the APNs sandbox environment for this channel, key or certificate.</p>"
  )
  @as("DefaultAuthenticationMethod")
  defaultAuthenticationMethod: option<__string>,
  @ocaml.doc("<p>The date and time when the APNs VoIP sandbox channel was enabled.</p>")
  @as("CreationDate")
  creationDate: option<__string>,
  @ocaml.doc(
    "<p>The unique identifier for the application that the APNs VoIP sandbox channel applies to.</p>"
  )
  @as("ApplicationId")
  applicationId: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the status and settings of the APNs (Apple Push Notification service) VoIP sandbox channel for an application.</p>"
)
type apnsvoipSandboxChannelRequest = {
  @ocaml.doc(
    "<p>The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using APNs tokens.</p>"
  )
  @as("TokenKeyId")
  tokenKeyId: option<__string>,
  @ocaml.doc("<p>The authentication key to use for APNs tokens.</p>") @as("TokenKey")
  tokenKey: option<__string>,
  @ocaml.doc(
    "<p>The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.</p>"
  )
  @as("TeamId")
  teamId: option<__string>,
  @ocaml.doc(
    "<p>The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with the APNs sandbox environment.</p>"
  )
  @as("PrivateKey")
  privateKey: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the APNs VoIP sandbox channel is enabled for the application.</p>"
  )
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc(
    "<p>The default authentication method that you want Amazon Pinpoint to use when authenticating with the APNs sandbox environment for this channel, key or certificate.</p>"
  )
  @as("DefaultAuthenticationMethod")
  defaultAuthenticationMethod: option<__string>,
  @ocaml.doc(
    "<p>The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using an APNs certificate.</p>"
  )
  @as("Certificate")
  certificate: option<__string>,
  @ocaml.doc(
    "<p>The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.</p>"
  )
  @as("BundleId")
  bundleId: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about the status and settings of the APNs (Apple Push Notification service) VoIP channel for an application.</p>"
)
type apnsvoipChannelResponse = {
  @ocaml.doc("<p>The current version of the APNs VoIP channel.</p>") @as("Version")
  version: option<__integer>,
  @ocaml.doc(
    "<p>The type of messaging or notification platform for the channel. For the APNs VoIP channel, this value is APNS_VOIP.</p>"
  )
  @as("Platform")
  platform: __string,
  @ocaml.doc("<p>The date and time when the APNs VoIP channel was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: option<__string>,
  @ocaml.doc("<p>The user who last modified the APNs VoIP channel.</p>") @as("LastModifiedBy")
  lastModifiedBy: option<__string>,
  @ocaml.doc("<p>Specifies whether the APNs VoIP channel is archived.</p>") @as("IsArchived")
  isArchived: option<__boolean>,
  @ocaml.doc(
    "<p>(Deprecated) An identifier for the APNs VoIP channel. This property is retained only for backward compatibility.</p>"
  )
  @as("Id")
  id: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the APNs VoIP channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.</p>"
  )
  @as("HasTokenKey")
  hasTokenKey: option<__boolean>,
  @ocaml.doc("<p>(Not used) This property is retained only for backward compatibility.</p>")
  @as("HasCredential")
  hasCredential: option<__boolean>,
  @ocaml.doc("<p>Specifies whether the APNs VoIP channel is enabled for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc(
    "<p>The default authentication method that Amazon Pinpoint uses to authenticate with APNs for this channel, key or certificate.</p>"
  )
  @as("DefaultAuthenticationMethod")
  defaultAuthenticationMethod: option<__string>,
  @ocaml.doc("<p>The date and time when the APNs VoIP channel was enabled.</p>") @as("CreationDate")
  creationDate: option<__string>,
  @ocaml.doc(
    "<p>The unique identifier for the application that the APNs VoIP channel applies to.</p>"
  )
  @as("ApplicationId")
  applicationId: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the status and settings of the APNs (Apple Push Notification service) VoIP channel for an application.</p>"
)
type apnsvoipChannelRequest = {
  @ocaml.doc(
    "<p>The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with APNs by using APNs tokens.</p>"
  )
  @as("TokenKeyId")
  tokenKeyId: option<__string>,
  @ocaml.doc("<p>The authentication key to use for APNs tokens.</p>") @as("TokenKey")
  tokenKey: option<__string>,
  @ocaml.doc(
    "<p>The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.</p>"
  )
  @as("TeamId")
  teamId: option<__string>,
  @ocaml.doc(
    "<p>The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with APNs.</p>"
  )
  @as("PrivateKey")
  privateKey: option<__string>,
  @ocaml.doc("<p>Specifies whether to enable the APNs VoIP channel for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc(
    "<p>The default authentication method that you want Amazon Pinpoint to use when authenticating with APNs, key or certificate.</p>"
  )
  @as("DefaultAuthenticationMethod")
  defaultAuthenticationMethod: option<__string>,
  @ocaml.doc(
    "<p>The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with APNs by using an APNs certificate.</p>"
  )
  @as("Certificate")
  certificate: option<__string>,
  @ocaml.doc(
    "<p>The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.</p>"
  )
  @as("BundleId")
  bundleId: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about the status and settings of the APNs (Apple Push Notification service) sandbox channel for an application.</p>"
)
type apnssandboxChannelResponse = {
  @ocaml.doc("<p>The current version of the APNs sandbox channel.</p>") @as("Version")
  version: option<__integer>,
  @ocaml.doc(
    "<p>The type of messaging or notification platform for the channel. For the APNs sandbox channel, this value is APNS_SANDBOX.</p>"
  )
  @as("Platform")
  platform: __string,
  @ocaml.doc("<p>The date and time when the APNs sandbox channel was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: option<__string>,
  @ocaml.doc("<p>The user who last modified the APNs sandbox channel.</p>") @as("LastModifiedBy")
  lastModifiedBy: option<__string>,
  @ocaml.doc("<p>Specifies whether the APNs sandbox channel is archived.</p>") @as("IsArchived")
  isArchived: option<__boolean>,
  @ocaml.doc(
    "<p>(Deprecated) An identifier for the APNs sandbox channel. This property is retained only for backward compatibility.</p>"
  )
  @as("Id")
  id: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the APNs sandbox channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.</p>"
  )
  @as("HasTokenKey")
  hasTokenKey: option<__boolean>,
  @ocaml.doc("<p>(Not used) This property is retained only for backward compatibility.</p>")
  @as("HasCredential")
  hasCredential: option<__boolean>,
  @ocaml.doc("<p>Specifies whether the APNs sandbox channel is enabled for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc(
    "<p>The default authentication method that Amazon Pinpoint uses to authenticate with the APNs sandbox environment for this channel, key or certificate.</p>"
  )
  @as("DefaultAuthenticationMethod")
  defaultAuthenticationMethod: option<__string>,
  @ocaml.doc("<p>The date and time when the APNs sandbox channel was enabled.</p>")
  @as("CreationDate")
  creationDate: option<__string>,
  @ocaml.doc(
    "<p>The unique identifier for the application that the APNs sandbox channel applies to.</p>"
  )
  @as("ApplicationId")
  applicationId: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the status and settings of the APNs (Apple Push Notification service) sandbox channel for an application.</p>"
)
type apnssandboxChannelRequest = {
  @ocaml.doc(
    "<p>The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using APNs tokens.</p>"
  )
  @as("TokenKeyId")
  tokenKeyId: option<__string>,
  @ocaml.doc("<p>The authentication key to use for APNs tokens.</p>") @as("TokenKey")
  tokenKey: option<__string>,
  @ocaml.doc(
    "<p>The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.</p>"
  )
  @as("TeamId")
  teamId: option<__string>,
  @ocaml.doc(
    "<p>The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with the APNs sandbox environment.</p>"
  )
  @as("PrivateKey")
  privateKey: option<__string>,
  @ocaml.doc("<p>Specifies whether to enable the APNs sandbox channel for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc(
    "<p>The default authentication method that you want Amazon Pinpoint to use when authenticating with the APNs sandbox environment, key or certificate.</p>"
  )
  @as("DefaultAuthenticationMethod")
  defaultAuthenticationMethod: option<__string>,
  @ocaml.doc(
    "<p>The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using an APNs certificate.</p>"
  )
  @as("Certificate")
  certificate: option<__string>,
  @ocaml.doc(
    "<p>The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.</p>"
  )
  @as("BundleId")
  bundleId: option<__string>,
}
@ocaml.doc(
  "<p>Specifies channel-specific content and settings for a message template that can be used in push notifications that are sent through the APNs (Apple Push Notification service) channel.</p>"
)
type apnspushNotificationTemplate = {
  @ocaml.doc(
    "<p>The URL to open in the recipient's default mobile browser, if a recipient taps a push notification that's based on the message template and the value of the Action property is URL.</p>"
  )
  @as("Url")
  url: option<__string>,
  @ocaml.doc(
    "<p>The title to use in push notifications that are based on the message template. This title appears above the notification message on a recipient's device.</p>"
  )
  @as("Title")
  title: option<__string>,
  @ocaml.doc(
    "<p>The key for the sound to play when the recipient receives a push notification that's based on the message template. The value for this key is the name of a sound file in your app's main bundle or the Library/Sounds folder in your app's data container. If the sound file can't be found or you specify default for the value, the system plays the default alert sound.</p>"
  )
  @as("Sound")
  sound: option<__string>,
  @ocaml.doc(
    "<p>The raw, JSON-formatted string to use as the payload for push notifications that are based on the message template. If specified, this value overrides all other content for the message template.</p>"
  )
  @as("RawContent")
  rawContent: option<__string>,
  @ocaml.doc(
    "<p>The URL of an image or video to display in push notifications that are based on the message template.</p>"
  )
  @as("MediaUrl")
  mediaUrl: option<__string>,
  @ocaml.doc(
    "<p>The message body to use in push notifications that are based on the message template.</p>"
  )
  @as("Body")
  body: option<__string>,
  @ocaml.doc(
    "<p>The action to occur if a recipient taps a push notification that's based on the message template. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of the iOS platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"
  )
  @as("Action")
  action: option<action>,
}
@ocaml.doc(
  "<p>Provides information about the status and settings of the APNs (Apple Push Notification service) channel for an application.</p>"
)
type apnschannelResponse = {
  @ocaml.doc("<p>The current version of the APNs channel.</p>") @as("Version")
  version: option<__integer>,
  @ocaml.doc(
    "<p>The type of messaging or notification platform for the channel. For the APNs channel, this value is APNS.</p>"
  )
  @as("Platform")
  platform: __string,
  @ocaml.doc("<p>The date and time when the APNs channel was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: option<__string>,
  @ocaml.doc("<p>The user who last modified the APNs channel.</p>") @as("LastModifiedBy")
  lastModifiedBy: option<__string>,
  @ocaml.doc("<p>Specifies whether the APNs channel is archived.</p>") @as("IsArchived")
  isArchived: option<__boolean>,
  @ocaml.doc(
    "<p>(Deprecated) An identifier for the APNs channel. This property is retained only for backward compatibility.</p>"
  )
  @as("Id")
  id: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the APNs channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.</p>"
  )
  @as("HasTokenKey")
  hasTokenKey: option<__boolean>,
  @ocaml.doc("<p>(Not used) This property is retained only for backward compatibility.</p>")
  @as("HasCredential")
  hasCredential: option<__boolean>,
  @ocaml.doc("<p>Specifies whether the APNs channel is enabled for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc(
    "<p>The default authentication method that Amazon Pinpoint uses to authenticate with APNs for this channel, key or certificate.</p>"
  )
  @as("DefaultAuthenticationMethod")
  defaultAuthenticationMethod: option<__string>,
  @ocaml.doc("<p>The date and time when the APNs channel was enabled.</p>") @as("CreationDate")
  creationDate: option<__string>,
  @ocaml.doc("<p>The unique identifier for the application that the APNs channel applies to.</p>")
  @as("ApplicationId")
  applicationId: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the status and settings of the APNs (Apple Push Notification service) channel for an application.</p>"
)
type apnschannelRequest = {
  @ocaml.doc(
    "<p>The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with APNs by using APNs tokens.</p>"
  )
  @as("TokenKeyId")
  tokenKeyId: option<__string>,
  @ocaml.doc("<p>The authentication key to use for APNs tokens.</p>") @as("TokenKey")
  tokenKey: option<__string>,
  @ocaml.doc(
    "<p>The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.</p>"
  )
  @as("TeamId")
  teamId: option<__string>,
  @ocaml.doc(
    "<p>The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with APNs.</p>"
  )
  @as("PrivateKey")
  privateKey: option<__string>,
  @ocaml.doc("<p>Specifies whether to enable the APNs channel for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc(
    "<p>The default authentication method that you want Amazon Pinpoint to use when authenticating with APNs, key or certificate.</p>"
  )
  @as("DefaultAuthenticationMethod")
  defaultAuthenticationMethod: option<__string>,
  @ocaml.doc(
    "<p>The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with APNs by using an APNs certificate.</p>"
  )
  @as("Certificate")
  certificate: option<__string>,
  @ocaml.doc(
    "<p>The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.</p>"
  )
  @as("BundleId")
  bundleId: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about the status and settings of the ADM (Amazon Device Messaging) channel for an application.</p>"
)
type admchannelResponse = {
  @ocaml.doc("<p>The current version of the ADM channel.</p>") @as("Version")
  version: option<__integer>,
  @ocaml.doc(
    "<p>The type of messaging or notification platform for the channel. For the ADM channel, this value is ADM.</p>"
  )
  @as("Platform")
  platform: __string,
  @ocaml.doc("<p>The date and time when the ADM channel was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: option<__string>,
  @ocaml.doc("<p>The user who last modified the ADM channel.</p>") @as("LastModifiedBy")
  lastModifiedBy: option<__string>,
  @ocaml.doc("<p>Specifies whether the ADM channel is archived.</p>") @as("IsArchived")
  isArchived: option<__boolean>,
  @ocaml.doc(
    "<p>(Deprecated) An identifier for the ADM channel. This property is retained only for backward compatibility.</p>"
  )
  @as("Id")
  id: option<__string>,
  @ocaml.doc("<p>(Not used) This property is retained only for backward compatibility.</p>")
  @as("HasCredential")
  hasCredential: option<__boolean>,
  @ocaml.doc("<p>Specifies whether the ADM channel is enabled for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc("<p>The date and time when the ADM channel was enabled.</p>") @as("CreationDate")
  creationDate: option<__string>,
  @ocaml.doc("<p>The unique identifier for the application that the ADM channel applies to.</p>")
  @as("ApplicationId")
  applicationId: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the status and settings of the ADM (Amazon Device Messaging) channel for an application.</p>"
)
type admchannelRequest = {
  @ocaml.doc("<p>Specifies whether to enable the ADM channel for the application.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc(
    "<p>The Client Secret that you received from Amazon to send messages by using ADM.</p>"
  )
  @as("ClientSecret")
  clientSecret: __string,
  @ocaml.doc("<p>The Client ID that you received from Amazon to send messages by using ADM.</p>")
  @as("ClientId")
  clientId: __string,
}
@ocaml.doc("<p>Specifies the default settings for an application.</p>")
type writeApplicationSettingsRequest = {
  @ocaml.doc(
    "<p>The default quiet time for campaigns in the application. Quiet time is a specific time range when messages aren't sent to endpoints, if all the following conditions are met:</p> <ul><li><p>The EndpointDemographic.Timezone property of the endpoint is set to a valid value.</p></li> <li><p>The current time in the endpoint's time zone is later than or equal to the time specified by the QuietTime.Start property for the application (or a campaign or journey that has custom quiet time settings).</p></li> <li><p>The current time in the endpoint's time zone is earlier than or equal to the time specified by the QuietTime.End property for the application (or a campaign or journey that has custom quiet time settings).</p></li></ul> <p>If any of the preceding conditions isn't met, the endpoint will receive messages from a campaign or journey, even if quiet time is enabled.</p> <p>To override the default quiet time settings for a specific campaign or journey, use the <link  linkend=\"apps-application-id-campaigns-campaign-id\">Campaign</link> resource or the <link  linkend=\"apps-application-id-journeys-journey-id\">Journey</link> resource to define a custom quiet time for the campaign or journey.</p>"
  )
  @as("QuietTime")
  quietTime: option<quietTime>,
  @ocaml.doc(
    "<p>The default sending limits for campaigns in the application. To override these limits and define custom limits for a specific campaign or journey, use the <link  linkend=\"apps-application-id-campaigns-campaign-id\">Campaign</link> resource or the <link  linkend=\"apps-application-id-journeys-journey-id\">Journey</link> resource, respectively.</p>"
  )
  @as("Limits")
  limits: option<campaignLimits>,
  @as("EventTaggingEnabled") eventTaggingEnabled: option<__boolean>,
  @ocaml.doc("<p>Specifies whether to enable application-related alarms in Amazon CloudWatch.</p>")
  @as("CloudWatchMetricsEnabled")
  cloudWatchMetricsEnabled: option<__boolean>,
  @ocaml.doc(
    "<p>The settings for the AWS Lambda function to invoke by default as a code hook for campaigns in the application. You can use this hook to customize segments that are used by campaigns in the application.</p> <p>To override these settings and define custom settings for a specific campaign, use the CampaignHook object of the <link  linkend=\"apps-application-id-campaigns-campaign-id\">Campaign</link> resource.</p>"
  )
  @as("CampaignHook")
  campaignHook: option<campaignHook>,
}
@ocaml.doc(
  "<p>Specifies the settings for a wait activity in a journey. This type of activity waits for a certain amount of time or until a specific date and time before moving participants to the next activity in a journey.</p>"
)
type waitActivity = {
  @ocaml.doc(
    "<p>The amount of time to wait or the date and time when the activity moves participants to the next activity in the journey.</p>"
  )
  @as("WaitTime")
  waitTime: option<waitTime>,
  @ocaml.doc(
    "<p>The unique identifier for the next activity to perform, after performing the wait activity.</p>"
  )
  @as("NextActivity")
  nextActivity: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about the content and settings for a message template that can be used in messages that are sent through the voice channel.</p>"
)
type voiceTemplateResponse = {
  @ocaml.doc(
    "<p>The name of the voice that's used when delivering messages that are based on the message template. For a list of supported voices, see the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/what-is.html\">Amazon Polly Developer Guide</a>.</p>"
  )
  @as("VoiceId")
  voiceId: option<__string>,
  @ocaml.doc(
    "<p>The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.</p>"
  )
  @as("Version")
  version: option<__string>,
  @ocaml.doc(
    "<p>The type of channel that the message template is designed for. For a voice template, this value is VOICE.</p>"
  )
  @as("TemplateType")
  templateType: templateType,
  @ocaml.doc("<p>The name of the message template.</p>") @as("TemplateName") templateName: __string,
  @ocaml.doc("<p>The custom description of the message template.</p>") @as("TemplateDescription")
  templateDescription: option<__string>,
  @ocaml.doc(
    "<p>A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.</p>"
  )
  tags: option<mapOf__string>,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the message template was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: __string,
  @ocaml.doc(
    "<p>The code for the language that's used when synthesizing the text of the script in messages that are based on the message template. For a list of supported languages and the code for each one, see the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/what-is.html\">Amazon Polly Developer Guide</a>.</p>"
  )
  @as("LanguageCode")
  languageCode: option<__string>,
  @ocaml.doc(
    "<p>The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.</p>"
  )
  @as("DefaultSubstitutions")
  defaultSubstitutions: option<__string>,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the message template was created.</p>")
  @as("CreationDate")
  creationDate: __string,
  @ocaml.doc(
    "<p>The text of the script that's used in messages that are based on the message template, in plain text format.</p>"
  )
  @as("Body")
  body: option<__string>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the message template.</p>") @as("Arn")
  arn: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the content and settings for a message template that can be used in messages that are sent through the voice channel.</p>"
)
type voiceTemplateRequest = {
  @ocaml.doc(
    "<p>The name of the voice to use when delivering messages that are based on the message template. For a list of supported voices, see the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/what-is.html\">Amazon Polly Developer Guide</a>.</p>"
  )
  @as("VoiceId")
  voiceId: option<__string>,
  @ocaml.doc("<p>A custom description of the message template.</p>") @as("TemplateDescription")
  templateDescription: option<__string>,
  @ocaml.doc(
    "<p>A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>"
  )
  tags: option<mapOf__string>,
  @ocaml.doc(
    "<p>The code for the language to use when synthesizing the text of the script in messages that are based on the message template. For a list of supported languages and the code for each one, see the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/what-is.html\">Amazon Polly Developer Guide</a>.</p>"
  )
  @as("LanguageCode")
  languageCode: option<__string>,
  @ocaml.doc(
    "<p>A JSON object that specifies the default values to use for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable. When you create a message that's based on the template, you can override these defaults with message-specific and address-specific variables and values.</p>"
  )
  @as("DefaultSubstitutions")
  defaultSubstitutions: option<__string>,
  @ocaml.doc(
    "<p>The text of the script to use in messages that are based on the message template, in plain text format.</p>"
  )
  @as("Body")
  body: option<__string>,
}
@ocaml.doc(
  "<p>Specifies Amazon Pinpoint configuration settings for retrieving and processing recommendation data from a recommender model.</p>"
)
type updateRecommenderConfigurationShape = {
  @ocaml.doc(
    "<p>The number of recommended items to retrieve from the model for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This number determines how many recommended items are available for use in message variables. The minimum value is 1. The maximum value is 5. The default value is 5.</p> <p>To use multiple recommended items and custom attributes with message variables, you have to use an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p>"
  )
  @as("RecommendationsPerMessage")
  recommendationsPerMessage: option<__integer>,
  @ocaml.doc(
    "<p>A custom display name for the standard endpoint or user attribute (RecommendationItems) that temporarily stores recommended items for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This value is required if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p> <p>This name appears in the <b>Attribute finder</b> of the template editor on the Amazon Pinpoint console. The name can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-). These restrictions don't apply to attribute values.</p>"
  )
  @as("RecommendationsDisplayName")
  recommendationsDisplayName: option<__string>,
  @ocaml.doc(
    "<p>The name or Amazon Resource Name (ARN) of the AWS Lambda function to invoke for additional processing of recommendation data that's retrieved from the recommender model.</p>"
  )
  @as("RecommendationTransformerUri")
  recommendationTransformerUri: option<__string>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the recommender model to retrieve recommendation data from. This value must match the ARN of an Amazon Personalize campaign.</p>"
  )
  @as("RecommendationProviderUri")
  recommendationProviderUri: __string,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to retrieve recommendation data from the recommender model.</p>"
  )
  @as("RecommendationProviderRoleArn")
  recommendationProviderRoleArn: __string,
  @ocaml.doc(
    "<p>The type of Amazon Pinpoint ID to associate with unique user IDs in the recommender model. This value enables the model to use attribute and event data that’s specific to a particular endpoint or user in an Amazon Pinpoint application. Valid values are:</p> <ul><li><p>PINPOINT_ENDPOINT_ID - Associate each user in the model with a particular endpoint in Amazon Pinpoint. The data is correlated based on endpoint IDs in Amazon Pinpoint. This is the default value.</p></li> <li><p>PINPOINT_USER_ID - Associate each user in the model with a particular user and endpoint in Amazon Pinpoint. The data is correlated based on user IDs in Amazon Pinpoint. If you specify this value, an endpoint definition in Amazon Pinpoint has to specify both a user ID (UserId) and an endpoint ID. Otherwise, messages won’t be sent to the user's endpoint.</p></li></ul>"
  )
  @as("RecommendationProviderIdType")
  recommendationProviderIdType: option<__string>,
  @ocaml.doc(
    "<p>A custom name of the configuration for the recommender model. The name must start with a letter or number and it can contain up to 128 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-).</p>"
  )
  @as("Name")
  name: option<__string>,
  @ocaml.doc(
    "<p>A custom description of the configuration for the recommender model. The description can contain up to 128 characters. The characters can be letters, numbers, spaces, or the following symbols: _ ; () , ‐.</p>"
  )
  @as("Description")
  description: option<__string>,
  @ocaml.doc(
    "<p>A map of key-value pairs that defines 1-10 custom endpoint or user attributes, depending on the value for the RecommendationProviderIdType property. Each of these attributes temporarily stores a recommended item that's retrieved from the recommender model and sent to an AWS Lambda function for additional processing. Each attribute can be used as a message variable in a message template.</p> <p>In the map, the key is the name of a custom attribute and the value is a custom display name for that attribute. The display name appears in the <b>Attribute finder</b> of the template editor on the Amazon Pinpoint console. The following restrictions apply to these names:</p> <ul><li><p>An attribute name must start with a letter or number and it can contain up to 50 characters. The characters can be letters, numbers, underscores (_), or hyphens (-). Attribute names are case sensitive and must be unique.</p></li> <li><p>An attribute display name must start with a letter or number and it can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-).</p></li></ul> <p>This object is required if the configuration invokes an AWS Lambda function (RecommendationTransformerUri) to process recommendation data. Otherwise, don't include this object in your request.</p>"
  )
  @as("Attributes")
  attributes: option<mapOf__string>,
}
@ocaml.doc(
  "<p>Specifies one or more attributes to remove from all the endpoints that are associated with an application.</p>"
)
type updateAttributesRequest = {
  @ocaml.doc(
    "<p>An array of the attributes to remove from all the endpoints that are associated with the application. The array can specify the complete, exact name of each attribute to remove or it can specify a glob pattern that an attribute name must match in order for the attribute to be removed.</p>"
  )
  @as("Blacklist")
  blacklist: option<listOf__string>,
}
@ocaml.doc(
  "<p>Provides information about a message template that's associated with your Amazon Pinpoint account.</p>"
)
type templateResponse = {
  @ocaml.doc(
    "<p>The unique identifier, as an integer, for the active version of the message template.</p>"
  )
  @as("Version")
  version: option<__string>,
  @ocaml.doc(
    "<p>The type of channel that the message template is designed for. Possible values are: EMAIL, PUSH, SMS, and VOICE.</p>"
  )
  @as("TemplateType")
  templateType: templateType,
  @ocaml.doc("<p>The name of the message template.</p>") @as("TemplateName") templateName: __string,
  @ocaml.doc(
    "<p>The custom description of the message template. This value isn't included in a TemplateResponse object. To retrieve the description of a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the description for.</p>"
  )
  @as("TemplateDescription")
  templateDescription: option<__string>,
  @ocaml.doc(
    "<p>A map of key-value pairs that identifies the tags that are associated with the message template. This object isn't included in a TemplateResponse object. To retrieve this object for a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the object for.</p>"
  )
  tags: option<mapOf__string>,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the message template was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: __string,
  @ocaml.doc(
    "<p>The JSON object that specifies the default values that are used for message variables in the message template. This object isn't included in a TemplateResponse object. To retrieve this object for a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the object for.</p>"
  )
  @as("DefaultSubstitutions")
  defaultSubstitutions: option<__string>,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the message template was created.</p>")
  @as("CreationDate")
  creationDate: __string,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the message template. This value isn't included in a TemplateResponse object. To retrieve the ARN of a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the ARN for.</p>"
  )
  @as("Arn")
  arn: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the message template to use for the message, for each type of channel.</p>"
)
type templateConfiguration = {
  @ocaml.doc(
    "<p>The voice template to use for the message. This object isn't supported for campaigns.</p>"
  )
  @as("VoiceTemplate")
  voiceTemplate: option<template>,
  @ocaml.doc("<p>The SMS template to use for the message.</p>") @as("SMSTemplate")
  smstemplate: option<template>,
  @ocaml.doc("<p>The push notification template to use for the message.</p>") @as("PushTemplate")
  pushTemplate: option<template>,
  @ocaml.doc("<p>The email template to use for the message.</p>") @as("EmailTemplate")
  emailTemplate: option<template>,
}
@ocaml.doc(
  "<p>Specifies the tags (keys and values) for an application, campaign, message template, or segment.</p>"
)
type tagsModel = {
  @ocaml.doc(
    "<p>A string-to-string map of key-value pairs that defines the tags for an application, campaign, message template, or segment. Each of these resources can have a maximum of 50 tags.</p> <p>Each tag consists of a required tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>"
  )
  tags: mapOf__string,
}
@ocaml.doc(
  "<p>Specifies the contents of an email message, composed of a subject, a text part, and an HTML part.</p>"
)
type simpleEmail = {
  @ocaml.doc(
    "<p>The body of the email message, in plain text format. We recommend using plain text format for email clients that don't render HTML content and clients that are connected to high-latency networks, such as mobile devices.</p>"
  )
  @as("TextPart")
  textPart: option<simpleEmailPart>,
  @ocaml.doc("<p>The subject line, or title, of the email.</p>") @as("Subject")
  subject: option<simpleEmailPart>,
  @ocaml.doc(
    "<p>The body of the email message, in HTML format. We recommend using HTML format for email clients that render HTML content. You can include links, formatted text, and more in an HTML message.</p>"
  )
  @as("HtmlPart")
  htmlPart: option<simpleEmailPart>,
}
@ocaml.doc("<p>Specifies the dimension type and values for a segment dimension.</p>")
type setDimension = {
  @ocaml.doc(
    "<p>The criteria values to use for the segment dimension. Depending on the value of the DimensionType property, endpoints are included or excluded from the segment if their values match the criteria values.</p>"
  )
  @as("Values")
  values: listOf__string,
  @ocaml.doc(
    "<p>The type of segment dimension to use. Valid values are: INCLUSIVE, endpoints that match the criteria are included in the segment; and, EXCLUSIVE, endpoints that match the criteria are excluded from the segment.</p>"
  )
  @as("DimensionType")
  dimensionType: option<dimensionType>,
}
@ocaml.doc(
  "<p>Provides information about the import job that created a segment. An import job is a job that creates a user segment by importing endpoint definitions.</p>"
)
type segmentImportResource = {
  @ocaml.doc(
    "<p>The number of endpoint definitions that were imported successfully to create the segment.</p>"
  )
  @as("Size")
  size: __integer,
  @ocaml.doc(
    "<p>The URL of the Amazon Simple Storage Service (Amazon S3) bucket that the endpoint definitions were imported from to create the segment.</p>"
  )
  @as("S3Url")
  s3Url: __string,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorized Amazon Pinpoint to access the Amazon S3 location to import endpoint definitions from.</p>"
  )
  @as("RoleArn")
  roleArn: __string,
  @ocaml.doc(
    "<p>The format of the files that were imported to create the segment. Valid values are: CSV, for comma-separated values format; and, JSON, for newline-delimited JSON format.</p>"
  )
  @as("Format")
  format: format,
  @ocaml.doc(
    "<p>(Deprecated) Your AWS account ID, which you assigned to an external ID key in an IAM trust policy. Amazon Pinpoint previously used this value to assume an IAM role when importing endpoint definitions, but we removed this requirement. We don't recommend use of external IDs for IAM roles that are assumed by Amazon Pinpoint.</p>"
  )
  @as("ExternalId")
  externalId: __string,
  @ocaml.doc(
    "<p>The number of channel types in the endpoint definitions that were imported to create the segment.</p>"
  )
  @as("ChannelCounts")
  channelCounts: option<mapOf__integer>,
}
@ocaml.doc(
  "<p>Specifies dimension settings for including or excluding endpoints from a segment based on how recently an endpoint was active.</p>"
)
type segmentBehaviors = {
  @ocaml.doc("<p>The dimension settings that are based on how recently an endpoint was active.</p>")
  @as("Recency")
  recency: option<recencyDimension>,
}
@ocaml.doc(
  "<p>Provides information about the content and settings for a message template that can be used in text messages that are sent through the SMS channel.</p>"
)
type smstemplateResponse = {
  @ocaml.doc(
    "<p>The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.</p>"
  )
  @as("Version")
  version: option<__string>,
  @ocaml.doc(
    "<p>The type of channel that the message template is designed for. For an SMS template, this value is SMS.</p>"
  )
  @as("TemplateType")
  templateType: templateType,
  @ocaml.doc("<p>The name of the message template.</p>") @as("TemplateName") templateName: __string,
  @ocaml.doc("<p>The custom description of the message template.</p>") @as("TemplateDescription")
  templateDescription: option<__string>,
  @ocaml.doc(
    "<p>A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.</p>"
  )
  tags: option<mapOf__string>,
  @ocaml.doc(
    "<p>The unique identifier for the recommender model that's used by the message template.</p>"
  )
  @as("RecommenderId")
  recommenderId: option<__string>,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the message template was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: __string,
  @ocaml.doc(
    "<p>The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.</p>"
  )
  @as("DefaultSubstitutions")
  defaultSubstitutions: option<__string>,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the message template was created.</p>")
  @as("CreationDate")
  creationDate: __string,
  @ocaml.doc(
    "<p>The message body that's used in text messages that are based on the message template.</p>"
  )
  @as("Body")
  body: option<__string>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the message template.</p>") @as("Arn")
  arn: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the content and settings for a message template that can be used in text messages that are sent through the SMS channel.</p>"
)
type smstemplateRequest = {
  @ocaml.doc("<p>A custom description of the message template.</p>") @as("TemplateDescription")
  templateDescription: option<__string>,
  @ocaml.doc(
    "<p>A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>"
  )
  tags: option<mapOf__string>,
  @ocaml.doc(
    "<p>The unique identifier for the recommender model to use for the message template. Amazon Pinpoint uses this value to determine how to retrieve and process data from a recommender model when it sends messages that use the template, if the template contains message variables for recommendation data.</p>"
  )
  @as("RecommenderId")
  recommenderId: option<__string>,
  @ocaml.doc(
    "<p>A JSON object that specifies the default values to use for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable. When you create a message that's based on the template, you can override these defaults with message-specific and address-specific variables and values.</p>"
  )
  @as("DefaultSubstitutions")
  defaultSubstitutions: option<__string>,
  @ocaml.doc(
    "<p>The message body to use in text messages that are based on the message template.</p>"
  )
  @as("Body")
  body: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the settings for an SMS activity in a journey. This type of activity sends a text message to participants.</p>"
)
type smsmessageActivity = {
  @ocaml.doc(
    "<p>The unique identifier for the version of the SMS template to use for the message. If specified, this value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If you don't specify a value for this property, Amazon Pinpoint uses the <i>active version</i> of the template. The <i>active version</i> is typically the version of a template that's been most recently reviewed and approved for use, depending on your workflow. It isn't necessarily the latest version of a template.</p>"
  )
  @as("TemplateVersion")
  templateVersion: option<__string>,
  @ocaml.doc(
    "<p>The name of the SMS message template to use for the message. If specified, this value must match the name of an existing message template.</p>"
  )
  @as("TemplateName")
  templateName: option<__string>,
  @ocaml.doc(
    "<p>The unique identifier for the next activity to perform, after the message is sent.</p>"
  )
  @as("NextActivity")
  nextActivity: option<__string>,
  @ocaml.doc(
    "<p>Specifies the sender ID and message type for an SMS message that's sent to participants in a journey.</p>"
  )
  @as("MessageConfig")
  messageConfig: option<journeySMSMessage>,
}
@ocaml.doc(
  "<p>Provides information about Amazon Pinpoint configuration settings for retrieving and processing data from a recommender model.</p>"
)
type recommenderConfigurationResponse = {
  @ocaml.doc(
    "<p>The number of recommended items that are retrieved from the model for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This number determines how many recommended items are available for use in message variables.</p>"
  )
  @as("RecommendationsPerMessage")
  recommendationsPerMessage: option<__integer>,
  @ocaml.doc(
    "<p>The custom display name for the standard endpoint or user attribute (RecommendationItems) that temporarily stores recommended items for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This name appears in the <b>Attribute finder</b> of the template editor on the Amazon Pinpoint console.</p> <p>This value is null if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p>"
  )
  @as("RecommendationsDisplayName")
  recommendationsDisplayName: option<__string>,
  @ocaml.doc(
    "<p>The name or Amazon Resource Name (ARN) of the AWS Lambda function that Amazon Pinpoint invokes to perform additional processing of recommendation data that it retrieves from the recommender model.</p>"
  )
  @as("RecommendationTransformerUri")
  recommendationTransformerUri: option<__string>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the recommender model that Amazon Pinpoint retrieves the recommendation data from. This value is the ARN of an Amazon Personalize campaign.</p>"
  )
  @as("RecommendationProviderUri")
  recommendationProviderUri: __string,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to retrieve recommendation data from the recommender model.</p>"
  )
  @as("RecommendationProviderRoleArn")
  recommendationProviderRoleArn: __string,
  @ocaml.doc(
    "<p>The type of Amazon Pinpoint ID that's associated with unique user IDs in the recommender model. This value enables the model to use attribute and event data that’s specific to a particular endpoint or user in an Amazon Pinpoint application. Possible values are:</p> <ul><li><p>PINPOINT_ENDPOINT_ID - Each user in the model is associated with a particular endpoint in Amazon Pinpoint. The data is correlated based on endpoint IDs in Amazon Pinpoint. This is the default value.</p></li> <li><p>PINPOINT_USER_ID - Each user in the model is associated with a particular user and endpoint in Amazon Pinpoint. The data is correlated based on user IDs in Amazon Pinpoint. If this value is specified, an endpoint definition in Amazon Pinpoint has to specify both a user ID (UserId) and an endpoint ID. Otherwise, messages won’t be sent to the user's endpoint.</p></li></ul>"
  )
  @as("RecommendationProviderIdType")
  recommendationProviderIdType: option<__string>,
  @ocaml.doc("<p>The custom name of the configuration for the recommender model.</p>") @as("Name")
  name: option<__string>,
  @ocaml.doc(
    "<p>The date, in extended ISO 8601 format, when the configuration for the recommender model was last modified.</p>"
  )
  @as("LastModifiedDate")
  lastModifiedDate: __string,
  @ocaml.doc("<p>The unique identifier for the recommender model configuration.</p>") @as("Id")
  id: __string,
  @ocaml.doc("<p>The custom description of the configuration for the recommender model.</p>")
  @as("Description")
  description: option<__string>,
  @ocaml.doc(
    "<p>The date, in extended ISO 8601 format, when the configuration was created for the recommender model.</p>"
  )
  @as("CreationDate")
  creationDate: __string,
  @ocaml.doc(
    "<p>A map that defines 1-10 custom endpoint or user attributes, depending on the value for the RecommendationProviderIdType property. Each of these attributes temporarily stores a recommended item that's retrieved from the recommender model and sent to an AWS Lambda function for additional processing. Each attribute can be used as a message variable in a message template.</p> <p>This value is null if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p>"
  )
  @as("Attributes")
  attributes: option<mapOf__string>,
}
@ocaml.doc(
  "<p>Provides information about the content and settings for a message template that can be used in messages that are sent through a push notification channel.</p>"
)
type pushNotificationTemplateResponse = {
  @ocaml.doc(
    "<p>The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.</p>"
  )
  @as("Version")
  version: option<__string>,
  @ocaml.doc(
    "<p>The type of channel that the message template is designed for. For a push notification template, this value is PUSH.</p>"
  )
  @as("TemplateType")
  templateType: templateType,
  @ocaml.doc("<p>The name of the message template.</p>") @as("TemplateName") templateName: __string,
  @ocaml.doc("<p>The custom description of the message template.</p>") @as("TemplateDescription")
  templateDescription: option<__string>,
  @ocaml.doc(
    "<p>A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.</p>"
  )
  tags: option<mapOf__string>,
  @ocaml.doc(
    "<p>The unique identifier for the recommender model that's used by the message template.</p>"
  )
  @as("RecommenderId")
  recommenderId: option<__string>,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the message template was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: __string,
  @ocaml.doc(
    "<p>The message template that's used for the GCM channel, which is used to send notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>"
  )
  @as("GCM")
  gcm: option<androidPushNotificationTemplate>,
  @ocaml.doc(
    "<p>The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.</p>"
  )
  @as("DefaultSubstitutions")
  defaultSubstitutions: option<__string>,
  @ocaml.doc("<p>The default message template that's used for push notification channels.</p>")
  @as("Default")
  default: option<defaultPushNotificationTemplate>,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the message template was created.</p>")
  @as("CreationDate")
  creationDate: __string,
  @ocaml.doc(
    "<p>The message template that's used for the Baidu (Baidu Cloud Push) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>"
  )
  @as("Baidu")
  baidu: option<androidPushNotificationTemplate>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the message template.</p>") @as("Arn")
  arn: option<__string>,
  @ocaml.doc(
    "<p>The message template that's used for the APNs (Apple Push Notification service) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>"
  )
  @as("APNS")
  apns: option<apnspushNotificationTemplate>,
  @ocaml.doc(
    "<p>The message template that's used for the ADM (Amazon Device Messaging) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>"
  )
  @as("ADM")
  adm: option<androidPushNotificationTemplate>,
}
@ocaml.doc(
  "<p>Specifies the content and settings for a message template that can be used in messages that are sent through a push notification channel.</p>"
)
type pushNotificationTemplateRequest = {
  @ocaml.doc("<p>A custom description of the message template.</p>") @as("TemplateDescription")
  templateDescription: option<__string>,
  @ocaml.doc(
    "<p>A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>"
  )
  tags: option<mapOf__string>,
  @ocaml.doc(
    "<p>The unique identifier for the recommender model to use for the message template. Amazon Pinpoint uses this value to determine how to retrieve and process data from a recommender model when it sends messages that use the template, if the template contains message variables for recommendation data.</p>"
  )
  @as("RecommenderId")
  recommenderId: option<__string>,
  @ocaml.doc(
    "<p>The message template to use for the GCM channel, which is used to send notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>"
  )
  @as("GCM")
  gcm: option<androidPushNotificationTemplate>,
  @ocaml.doc(
    "<p>A JSON object that specifies the default values to use for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable. When you create a message that's based on the template, you can override these defaults with message-specific and address-specific variables and values.</p>"
  )
  @as("DefaultSubstitutions")
  defaultSubstitutions: option<__string>,
  @ocaml.doc("<p>The default message template to use for push notification channels.</p>")
  @as("Default")
  default: option<defaultPushNotificationTemplate>,
  @ocaml.doc(
    "<p>The message template to use for the Baidu (Baidu Cloud Push) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>"
  )
  @as("Baidu")
  baidu: option<androidPushNotificationTemplate>,
  @ocaml.doc(
    "<p>The message template to use for the APNs (Apple Push Notification service) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>"
  )
  @as("APNS")
  apns: option<apnspushNotificationTemplate>,
  @ocaml.doc(
    "<p>The message template to use for the ADM (Amazon Device Messaging) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>"
  )
  @as("ADM")
  adm: option<androidPushNotificationTemplate>,
}
@ocaml.doc(
  "<p>Specifies the settings for a push notification activity in a journey. This type of activity sends a push notification to participants.</p>"
)
type pushMessageActivity = {
  @ocaml.doc(
    "<p>The unique identifier for the version of the push notification template to use for the message. If specified, this value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If you don't specify a value for this property, Amazon Pinpoint uses the <i>active version</i> of the template. The <i>active version</i> is typically the version of a template that's been most recently reviewed and approved for use, depending on your workflow. It isn't necessarily the latest version of a template.</p>"
  )
  @as("TemplateVersion")
  templateVersion: option<__string>,
  @ocaml.doc(
    "<p>The name of the push notification template to use for the message. If specified, this value must match the name of an existing message template.</p>"
  )
  @as("TemplateName")
  templateName: option<__string>,
  @ocaml.doc(
    "<p>The unique identifier for the next activity to perform, after the message is sent.</p>"
  )
  @as("NextActivity")
  nextActivity: option<__string>,
  @ocaml.doc(
    "<p>Specifies the time to live (TTL) value for push notifications that are sent to participants in a journey.</p>"
  )
  @as("MessageConfig")
  messageConfig: option<journeyPushMessage>,
}
type mapOfMetricDimension = Js.Dict.t<metricDimension>
type mapOfMessageResult = Js.Dict.t<messageResult>
type mapOfListOf__string = Js.Dict.t<listOf__string>
type mapOfEventItemResponse = Js.Dict.t<eventItemResponse>
type mapOfEndpointMessageResult = Js.Dict.t<endpointMessageResult>
type mapOfChannelResponse = Js.Dict.t<channelResponse>
type listOfTemplateVersionResponse = array<templateVersionResponse>
type listOfSegmentReference = array<segmentReference>
type listOfResultRowValue = array<resultRowValue>
type listOfRandomSplitEntry = array<randomSplitEntry>
type listOfActivityResponse = array<activityResponse>
@ocaml.doc(
  "<p>Provides the results of a query that retrieved the data for a standard execution metric that applies to a journey, and provides information about that query.</p>"
)
type journeyExecutionMetricsResponse = {
  @ocaml.doc(
    "<p>A JSON object that contains the results of the query. For information about the structure and contents of the results, see the <a href=\"https://docs.aws.amazon.com//pinpoint/latest/developerguide/analytics-standard-metrics.html\">Amazon Pinpoint Developer Guide</a>.</p>"
  )
  @as("Metrics")
  metrics: mapOf__string,
  @ocaml.doc(
    "<p>The date and time, in ISO 8601 format, when Amazon Pinpoint last evaluated the journey and updated the data for the metric.</p>"
  )
  @as("LastEvaluatedTime")
  lastEvaluatedTime: __string,
  @ocaml.doc("<p>The unique identifier for the journey that the metric applies to.</p>")
  @as("JourneyId")
  journeyId: __string,
  @ocaml.doc("<p>The unique identifier for the application that the metric applies to.</p>")
  @as("ApplicationId")
  applicationId: __string,
}
@ocaml.doc(
  "<p>Provides the results of a query that retrieved the data for a standard execution metric that applies to a journey activity, and provides information about that query.</p>"
)
type journeyExecutionActivityMetricsResponse = {
  @ocaml.doc(
    "<p>A JSON object that contains the results of the query. The results vary depending on the type of activity (ActivityType). For information about the structure and contents of the results, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html\">Amazon Pinpoint Developer Guide</a>.</p>"
  )
  @as("Metrics")
  metrics: mapOf__string,
  @ocaml.doc(
    "<p>The date and time, in ISO 8601 format, when Amazon Pinpoint last evaluated the execution status of the activity and updated the data for the metric.</p>"
  )
  @as("LastEvaluatedTime")
  lastEvaluatedTime: __string,
  @ocaml.doc("<p>The unique identifier for the journey that the metric applies to.</p>")
  @as("JourneyId")
  journeyId: __string,
  @ocaml.doc("<p>The unique identifier for the activity that the metric applies to.</p>")
  @as("JourneyActivityId")
  journeyActivityId: __string,
  @ocaml.doc("<p>The unique identifier for the application that the metric applies to.</p>")
  @as("ApplicationId")
  applicationId: __string,
  @ocaml.doc(
    "<p>The type of activity that the metric applies to. Possible values are:</p> <ul><li><p>CONDITIONAL_SPLIT - For a yes/no split activity, which is an activity that sends participants down one of two paths in a journey.</p></li> <li><p>HOLDOUT - For a holdout activity, which is an activity that stops a journey for a specified percentage of participants.</p></li> <li><p>MESSAGE - For an email activity, which is an activity that sends an email message to participants.</p></li> <li><p>MULTI_CONDITIONAL_SPLIT - For a multivariate split activity, which is an activity that sends participants down one of as many as five paths in a journey.</p></li> <li><p>RANDOM_SPLIT - For a random split activity, which is an activity that sends specified percentages of participants down one of as many as five paths in a journey.</p></li> <li><p>WAIT - For a wait activity, which is an activity that waits for a certain amount of time or until a specific date and time before moving participants to the next activity in a journey.</p></li></ul>"
  )
  @as("ActivityType")
  activityType: __string,
}
@ocaml.doc("<p>Button Config for an in-app message.</p>")
type inAppMessageButton = {
  @ocaml.doc("<p>Default button content.</p>") @as("Web") web: option<overrideButtonConfiguration>,
  @ocaml.doc("<p>Default button content.</p>") @as("IOS") ios: option<overrideButtonConfiguration>,
  @ocaml.doc("<p>Default button content.</p>") @as("DefaultConfig")
  defaultConfig: option<defaultButtonConfiguration>,
  @ocaml.doc("<p>Default button content.</p>") @as("Android")
  android: option<overrideButtonConfiguration>,
}
@ocaml.doc(
  "<p>Provides information about the status and settings of a job that imports endpoint definitions from one or more files. The files can be stored in an Amazon Simple Storage Service (Amazon S3) bucket or uploaded directly from a computer by using the Amazon Pinpoint console.</p>"
)
type importJobResponse = {
  @ocaml.doc("<p>The job type. This value is IMPORT for import jobs.</p>") @as("Type")
  type_: __string,
  @ocaml.doc(
    "<p>The total number of endpoint definitions that were processed by the import job.</p>"
  )
  @as("TotalProcessed")
  totalProcessed: option<__integer>,
  @ocaml.doc(
    "<p>The total number of pieces that must be processed to complete the import job. Each piece consists of an approximately equal portion of the endpoint definitions that are part of the import job.</p>"
  )
  @as("TotalPieces")
  totalPieces: option<__integer>,
  @ocaml.doc(
    "<p>The total number of endpoint definitions that weren't processed successfully (failed) by the import job, typically because an error, such as a syntax error, occurred.</p>"
  )
  @as("TotalFailures")
  totalFailures: option<__integer>,
  @ocaml.doc(
    "<p>The status of the import job. The job status is FAILED if Amazon Pinpoint wasn't able to process one or more pieces in the job.</p>"
  )
  @as("JobStatus")
  jobStatus: jobStatus,
  @ocaml.doc("<p>The unique identifier for the import job.</p>") @as("Id") id: __string,
  @ocaml.doc(
    "<p>An array of entries, one for each of the first 100 entries that weren't processed successfully (failed) by the import job, if any.</p>"
  )
  @as("Failures")
  failures: option<listOf__string>,
  @ocaml.doc(
    "<p>The number of pieces that weren't processed successfully (failed) by the import job, as of the time of the request.</p>"
  )
  @as("FailedPieces")
  failedPieces: option<__integer>,
  @ocaml.doc("<p>The resource settings that apply to the import job.</p>") @as("Definition")
  definition: importJobResource,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the import job was created.</p>")
  @as("CreationDate")
  creationDate: __string,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the import job was completed.</p>")
  @as("CompletionDate")
  completionDate: option<__string>,
  @ocaml.doc(
    "<p>The number of pieces that were processed successfully (completed) by the import job, as of the time of the request.</p>"
  )
  @as("CompletedPieces")
  completedPieces: option<__integer>,
  @ocaml.doc(
    "<p>The unique identifier for the application that's associated with the import job.</p>"
  )
  @as("ApplicationId")
  applicationId: __string,
}
@ocaml.doc(
  "<p>Specifies GPS-based criteria for including or excluding endpoints from a segment.</p>"
)
type gpspointDimension = {
  @ocaml.doc("<p>The range, in kilometers, from the GPS coordinates.</p>") @as("RangeInKilometers")
  rangeInKilometers: option<__double>,
  @ocaml.doc("<p>The GPS coordinates to measure distance from.</p>") @as("Coordinates")
  coordinates: gpscoordinates,
}
@ocaml.doc(
  "<p>Provides information about the status and settings of a job that exports endpoint definitions to a file. The file can be added directly to an Amazon Simple Storage Service (Amazon S3) bucket by using the Amazon Pinpoint API or downloaded directly to a computer by using the Amazon Pinpoint console.</p>"
)
type exportJobResponse = {
  @ocaml.doc("<p>The job type. This value is EXPORT for export jobs.</p>") @as("Type")
  type_: __string,
  @ocaml.doc(
    "<p>The total number of endpoint definitions that were processed by the export job.</p>"
  )
  @as("TotalProcessed")
  totalProcessed: option<__integer>,
  @ocaml.doc(
    "<p>The total number of pieces that must be processed to complete the export job. Each piece consists of an approximately equal portion of the endpoint definitions that are part of the export job.</p>"
  )
  @as("TotalPieces")
  totalPieces: option<__integer>,
  @ocaml.doc(
    "<p>The total number of endpoint definitions that weren't processed successfully (failed) by the export job, typically because an error, such as a syntax error, occurred.</p>"
  )
  @as("TotalFailures")
  totalFailures: option<__integer>,
  @ocaml.doc(
    "<p>The status of the export job. The job status is FAILED if Amazon Pinpoint wasn't able to process one or more pieces in the job.</p>"
  )
  @as("JobStatus")
  jobStatus: jobStatus,
  @ocaml.doc("<p>The unique identifier for the export job.</p>") @as("Id") id: __string,
  @ocaml.doc(
    "<p>An array of entries, one for each of the first 100 entries that weren't processed successfully (failed) by the export job, if any.</p>"
  )
  @as("Failures")
  failures: option<listOf__string>,
  @ocaml.doc(
    "<p>The number of pieces that weren't processed successfully (failed) by the export job, as of the time of the request.</p>"
  )
  @as("FailedPieces")
  failedPieces: option<__integer>,
  @ocaml.doc("<p>The resource settings that apply to the export job.</p>") @as("Definition")
  definition: exportJobResource,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the export job was created.</p>")
  @as("CreationDate")
  creationDate: __string,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the export job was completed.</p>")
  @as("CompletionDate")
  completionDate: option<__string>,
  @ocaml.doc(
    "<p>The number of pieces that were processed successfully (completed) by the export job, as of the time of the request.</p>"
  )
  @as("CompletedPieces")
  completedPieces: option<__integer>,
  @ocaml.doc(
    "<p>The unique identifier for the application that's associated with the export job.</p>"
  )
  @as("ApplicationId")
  applicationId: __string,
}
@ocaml.doc("<p>Specifies information about an event that reports data to Amazon Pinpoint.</p>")
type event = {
  @ocaml.doc("<p>The date and time, in ISO 8601 format, when the event occurred.</p>")
  @as("Timestamp")
  timestamp_: __string,
  @ocaml.doc("<p>Information about the session in which the event occurred.</p>") @as("Session")
  session: option<session>,
  @ocaml.doc("<p>The name of the SDK that's being used to record the event.</p>") @as("SdkName")
  sdkName: option<__string>,
  @ocaml.doc("<p>One or more custom metrics that are associated with the event.</p>") @as("Metrics")
  metrics: option<mapOf__double>,
  @ocaml.doc("<p>The name of the event.</p>") @as("EventType") eventType: __string,
  @ocaml.doc("<p>The version of the SDK that's running on the client device.</p>")
  @as("ClientSdkVersion")
  clientSdkVersion: option<__string>,
  @ocaml.doc("<p>One or more custom attributes that are associated with the event.</p>")
  @as("Attributes")
  attributes: option<mapOf__string>,
  @ocaml.doc("<p>The version number of the app that's recording the event.</p>")
  @as("AppVersionCode")
  appVersionCode: option<__string>,
  @ocaml.doc("<p>The title of the app that's recording the event.</p>") @as("AppTitle")
  appTitle: option<__string>,
  @ocaml.doc("<p>The package name of the app that's recording the event.</p>") @as("AppPackageName")
  appPackageName: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about the content and settings for a message template that can be used in messages that are sent through the email channel.</p>"
)
type emailTemplateResponse = {
  @ocaml.doc(
    "<p>The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.</p>"
  )
  @as("Version")
  version: option<__string>,
  @ocaml.doc(
    "<p>The message body, in plain text format, that's used in email messages that are based on the message template.</p>"
  )
  @as("TextPart")
  textPart: option<__string>,
  @ocaml.doc(
    "<p>The type of channel that the message template is designed for. For an email template, this value is EMAIL.</p>"
  )
  @as("TemplateType")
  templateType: templateType,
  @ocaml.doc("<p>The name of the message template.</p>") @as("TemplateName") templateName: __string,
  @ocaml.doc("<p>The custom description of the message template.</p>") @as("TemplateDescription")
  templateDescription: option<__string>,
  @ocaml.doc(
    "<p>A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.</p>"
  )
  tags: option<mapOf__string>,
  @ocaml.doc(
    "<p>The subject line, or title, that's used in email messages that are based on the message template.</p>"
  )
  @as("Subject")
  subject: option<__string>,
  @ocaml.doc(
    "<p>The unique identifier for the recommender model that's used by the message template.</p>"
  )
  @as("RecommenderId")
  recommenderId: option<__string>,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the message template was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: __string,
  @ocaml.doc(
    "<p>The message body, in HTML format, that's used in email messages that are based on the message template.</p>"
  )
  @as("HtmlPart")
  htmlPart: option<__string>,
  @ocaml.doc(
    "<p>The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.</p>"
  )
  @as("DefaultSubstitutions")
  defaultSubstitutions: option<__string>,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the message template was created.</p>")
  @as("CreationDate")
  creationDate: __string,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the message template.</p>") @as("Arn")
  arn: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the content and settings for a message template that can be used in messages that are sent through the email channel.</p>"
)
type emailTemplateRequest = {
  @ocaml.doc(
    "<p>The message body, in plain text format, to use in email messages that are based on the message template. We recommend using plain text format for email clients that don't render HTML content and clients that are connected to high-latency networks, such as mobile devices.</p>"
  )
  @as("TextPart")
  textPart: option<__string>,
  @ocaml.doc("<p>A custom description of the message template.</p>") @as("TemplateDescription")
  templateDescription: option<__string>,
  @ocaml.doc(
    "<p>A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>"
  )
  tags: option<mapOf__string>,
  @ocaml.doc(
    "<p>The subject line, or title, to use in email messages that are based on the message template.</p>"
  )
  @as("Subject")
  subject: option<__string>,
  @ocaml.doc(
    "<p>The unique identifier for the recommender model to use for the message template. Amazon Pinpoint uses this value to determine how to retrieve and process data from a recommender model when it sends messages that use the template, if the template contains message variables for recommendation data.</p>"
  )
  @as("RecommenderId")
  recommenderId: option<__string>,
  @ocaml.doc(
    "<p>The message body, in HTML format, to use in email messages that are based on the message template. We recommend using HTML format for email clients that render HTML content. You can include links, formatted text, and more in an HTML message.</p>"
  )
  @as("HtmlPart")
  htmlPart: option<__string>,
  @ocaml.doc(
    "<p>A JSON object that specifies the default values to use for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable. When you create a message that's based on the template, you can override these defaults with message-specific and address-specific variables and values.</p>"
  )
  @as("DefaultSubstitutions")
  defaultSubstitutions: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the settings for an email activity in a journey. This type of activity sends an email message to participants.</p>"
)
type emailMessageActivity = {
  @ocaml.doc(
    "<p>The unique identifier for the version of the email template to use for the message. If specified, this value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If you don't specify a value for this property, Amazon Pinpoint uses the <i>active version</i> of the template. The <i>active version</i> is typically the version of a template that's been most recently reviewed and approved for use, depending on your workflow. It isn't necessarily the latest version of a template.</p>"
  )
  @as("TemplateVersion")
  templateVersion: option<__string>,
  @ocaml.doc(
    "<p>The name of the email message template to use for the message. If specified, this value must match the name of an existing message template.</p>"
  )
  @as("TemplateName")
  templateName: option<__string>,
  @ocaml.doc(
    "<p>The unique identifier for the next activity to perform, after the message is sent.</p>"
  )
  @as("NextActivity")
  nextActivity: option<__string>,
  @ocaml.doc(
    "<p>Specifies the sender address for an email message that's sent to participants in the journey.</p>"
  )
  @as("MessageConfig")
  messageConfig: option<journeyEmailMessage>,
}
@ocaml.doc(
  "<p>The settings for a custom message activity. This type of activity calls an AWS Lambda function or web hook that sends messages to participants.</p>"
)
type customMessageActivity = {
  @ocaml.doc(
    "<p>The unique identifier for the version of the message template to use for the message. If specified, this value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If you don't specify a value for this property, Amazon Pinpoint uses the <i>active version</i> of the template. The <i>active version</i> is typically the version of a template that's been most recently reviewed and approved for use, depending on your workflow. It isn't necessarily the latest version of a template.</p>"
  )
  @as("TemplateVersion")
  templateVersion: option<__string>,
  @ocaml.doc(
    "<p>The name of the custom message template to use for the message. If specified, this value must match the name of an existing message template.</p>"
  )
  @as("TemplateName")
  templateName: option<__string>,
  @ocaml.doc(
    "<p>The unique identifier for the next activity to perform, after Amazon Pinpoint calls the AWS Lambda function or web hook.</p>"
  )
  @as("NextActivity")
  nextActivity: option<__string>,
  @ocaml.doc(
    "<p>Specifies the message data included in a custom channel message that's sent to participants in a journey.</p>"
  )
  @as("MessageConfig")
  messageConfig: option<journeyCustomMessage>,
  @ocaml.doc(
    "<p>The types of endpoints to send the custom message to. Each valid value maps to a type of channel that you can associate with an endpoint by using the ChannelType property of an endpoint.</p>"
  )
  @as("EndpointTypes")
  endpointTypes: option<listOf__EndpointTypesElement>,
  @ocaml.doc(
    "<p>The destination to send the campaign or treatment to. This value can be one of the following:</p> <ul><li><p>The name or Amazon Resource Name (ARN) of an AWS Lambda function to invoke to handle delivery of the campaign or treatment.</p></li> <li><p>The URL for a web application or service that supports HTTPS and can receive the message. The URL has to be a full URL, including the HTTPS protocol.</p></li></ul>"
  )
  @as("DeliveryUri")
  deliveryUri: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the delivery configuration settings for sending a campaign or campaign treatment through a custom channel. This object is required if you use the CampaignCustomMessage object to define the message to send for the campaign or campaign treatment.</p>"
)
type customDeliveryConfiguration = {
  @ocaml.doc(
    "<p>The types of endpoints to send the campaign or treatment to. Each valid value maps to a type of channel that you can associate with an endpoint by using the ChannelType property of an endpoint.</p>"
  )
  @as("EndpointTypes")
  endpointTypes: option<listOf__EndpointTypesElement>,
  @ocaml.doc(
    "<p>The destination to send the campaign or treatment to. This value can be one of the following:</p> <ul><li><p>The name or Amazon Resource Name (ARN) of an AWS Lambda function to invoke to handle delivery of the campaign or treatment.</p></li> <li><p>The URL for a web application or service that supports HTTPS and can receive the message. The URL has to be a full URL, including the HTTPS protocol.</p></li></ul>"
  )
  @as("DeliveryUri")
  deliveryUri: __string,
}
@ocaml.doc(
  "<p>Specifies Amazon Pinpoint configuration settings for retrieving and processing recommendation data from a recommender model.</p>"
)
type createRecommenderConfigurationShape = {
  @ocaml.doc(
    "<p>The number of recommended items to retrieve from the model for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This number determines how many recommended items are available for use in message variables. The minimum value is 1. The maximum value is 5. The default value is 5.</p> <p>To use multiple recommended items and custom attributes with message variables, you have to use an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p>"
  )
  @as("RecommendationsPerMessage")
  recommendationsPerMessage: option<__integer>,
  @ocaml.doc(
    "<p>A custom display name for the standard endpoint or user attribute (RecommendationItems) that temporarily stores recommended items for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This value is required if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p> <p>This name appears in the <b>Attribute finder</b> of the template editor on the Amazon Pinpoint console. The name can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-). These restrictions don't apply to attribute values.</p>"
  )
  @as("RecommendationsDisplayName")
  recommendationsDisplayName: option<__string>,
  @ocaml.doc(
    "<p>The name or Amazon Resource Name (ARN) of the AWS Lambda function to invoke for additional processing of recommendation data that's retrieved from the recommender model.</p>"
  )
  @as("RecommendationTransformerUri")
  recommendationTransformerUri: option<__string>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the recommender model to retrieve recommendation data from. This value must match the ARN of an Amazon Personalize campaign.</p>"
  )
  @as("RecommendationProviderUri")
  recommendationProviderUri: __string,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to retrieve recommendation data from the recommender model.</p>"
  )
  @as("RecommendationProviderRoleArn")
  recommendationProviderRoleArn: __string,
  @ocaml.doc(
    "<p>The type of Amazon Pinpoint ID to associate with unique user IDs in the recommender model. This value enables the model to use attribute and event data that’s specific to a particular endpoint or user in an Amazon Pinpoint application. Valid values are:</p> <ul><li><p>PINPOINT_ENDPOINT_ID - Associate each user in the model with a particular endpoint in Amazon Pinpoint. The data is correlated based on endpoint IDs in Amazon Pinpoint. This is the default value.</p></li> <li><p>PINPOINT_USER_ID - Associate each user in the model with a particular user and endpoint in Amazon Pinpoint. The data is correlated based on user IDs in Amazon Pinpoint. If you specify this value, an endpoint definition in Amazon Pinpoint has to specify both a user ID (UserId) and an endpoint ID. Otherwise, messages won’t be sent to the user's endpoint.</p></li></ul>"
  )
  @as("RecommendationProviderIdType")
  recommendationProviderIdType: option<__string>,
  @ocaml.doc(
    "<p>A custom name of the configuration for the recommender model. The name must start with a letter or number and it can contain up to 128 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-).</p>"
  )
  @as("Name")
  name: option<__string>,
  @ocaml.doc(
    "<p>A custom description of the configuration for the recommender model. The description can contain up to 128 characters. The characters can be letters, numbers, spaces, or the following symbols: _ ; () , ‐.</p>"
  )
  @as("Description")
  description: option<__string>,
  @ocaml.doc(
    "<p>A map of key-value pairs that defines 1-10 custom endpoint or user attributes, depending on the value for the RecommendationProviderIdType property. Each of these attributes temporarily stores a recommended item that's retrieved from the recommender model and sent to an AWS Lambda function for additional processing. Each attribute can be used as a message variable in a message template.</p> <p>In the map, the key is the name of a custom attribute and the value is a custom display name for that attribute. The display name appears in the <b>Attribute finder</b> of the template editor on the Amazon Pinpoint console. The following restrictions apply to these names:</p> <ul><li><p>An attribute name must start with a letter or number and it can contain up to 50 characters. The characters can be letters, numbers, underscores (_), or hyphens (-). Attribute names are case sensitive and must be unique.</p></li> <li><p>An attribute display name must start with a letter or number and it can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-).</p></li></ul> <p>This object is required if the configuration invokes an AWS Lambda function (RecommendationTransformerUri) to process recommendation data. Otherwise, don't include this object in your request.</p>"
  )
  @as("Attributes")
  attributes: option<mapOf__string>,
}
@ocaml.doc(
  "<p>Specifies the display name of an application and the tags to associate with the application.</p>"
)
type createApplicationRequest = {
  @ocaml.doc(
    "<p>A string-to-string map of key-value pairs that defines the tags to associate with the application. Each tag consists of a required tag key and an associated tag value.</p>"
  )
  tags: option<mapOf__string>,
  @ocaml.doc(
    "<p>The display name of the application. This name is displayed as the <b>Project name</b> on the Amazon Pinpoint console.</p>"
  )
  @as("Name")
  name: __string,
}
@ocaml.doc(
  "<p>Provides information about the type and the names of attributes that were removed from all the endpoints that are associated with an application.</p>"
)
type attributesResource = {
  @ocaml.doc(
    "<p>An array that specifies the names of the attributes that were removed from the endpoints.</p>"
  )
  @as("Attributes")
  attributes: option<listOf__string>,
  @ocaml.doc(
    "<p>The type of attribute or attributes that were removed from the endpoints. Valid values are:</p> <ul><li><p>endpoint-custom-attributes - Custom attributes that describe endpoints.</p></li> <li><p>endpoint-metric-attributes - Custom metrics that your app reports to Amazon Pinpoint for endpoints.</p></li> <li><p>endpoint-user-attributes - Custom attributes that describe users.</p></li></ul>"
  )
  @as("AttributeType")
  attributeType: __string,
  @ocaml.doc("<p>The unique identifier for the application.</p>") @as("ApplicationId")
  applicationId: __string,
}
@ocaml.doc(
  "<p>Specifies attribute-based criteria for including or excluding endpoints from a segment.</p>"
)
type attributeDimension = {
  @ocaml.doc(
    "<p>The criteria values to use for the segment dimension. Depending on the value of the AttributeType property, endpoints are included or excluded from the segment if their attribute values match the criteria values.</p>"
  )
  @as("Values")
  values: listOf__string,
  @ocaml.doc(
    "<p>The type of segment dimension to use. Valid values are: <ul><li>INCLUSIVE - endpoints that have attributes matching the values are included in the segment.</li><li>EXCLUSIVE - endpoints that have attributes matching the values are excluded in the segment.</li><li>CONTAINS - endpoints that have attributes' substrings match the values are included in the segment.</li><li>BEFORE - endpoints with attributes read as ISO_INSTANT datetimes before the value are included in the segment.</li><li>AFTER - endpoints with attributes read as ISO_INSTANT datetimes after the value are included in the segment.</li><li>ON - endpoints with attributes read as ISO_INSTANT dates on the value are included in the segment. Time is ignored in this comparison.</li><li>BETWEEN - endpoints with attributes read as ISO_INSTANT datetimes between the values are included in the segment.</li></p>"
  )
  @as("AttributeType")
  attributeType: option<attributeType>,
}
@ocaml.doc(
  "<p>Provides information about an application, including the default settings for an application.</p>"
)
type applicationSettingsResource = {
  @ocaml.doc(
    "<p>The default quiet time for campaigns in the application. Quiet time is a specific time range when messages aren't sent to endpoints, if all the following conditions are met:</p> <ul><li><p>The EndpointDemographic.Timezone property of the endpoint is set to a valid value.</p></li> <li><p>The current time in the endpoint's time zone is later than or equal to the time specified by the QuietTime.Start property for the application (or a campaign or journey that has custom quiet time settings).</p></li> <li><p>The current time in the endpoint's time zone is earlier than or equal to the time specified by the QuietTime.End property for the application (or a campaign or journey that has custom quiet time settings).</p></li></ul> <p>If any of the preceding conditions isn't met, the endpoint will receive messages from a campaign or journey, even if quiet time is enabled.</p>"
  )
  @as("QuietTime")
  quietTime: option<quietTime>,
  @ocaml.doc("<p>The default sending limits for campaigns in the application.</p>") @as("Limits")
  limits: option<campaignLimits>,
  @ocaml.doc(
    "<p>The date and time, in ISO 8601 format, when the application's settings were last modified.</p>"
  )
  @as("LastModifiedDate")
  lastModifiedDate: option<__string>,
  @ocaml.doc(
    "<p>The settings for the AWS Lambda function to invoke by default as a code hook for campaigns in the application. You can use this hook to customize segments that are used by campaigns in the application.</p>"
  )
  @as("CampaignHook")
  campaignHook: option<campaignHook>,
  @ocaml.doc(
    "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
  )
  @as("ApplicationId")
  applicationId: __string,
}
@ocaml.doc("<p>Provides information about an application.</p>")
type applicationResponse = {
  @ocaml.doc("<p>The date and time when the Application was created.</p>") @as("CreationDate")
  creationDate: option<__string>,
  @ocaml.doc(
    "<p>A string-to-string map of key-value pairs that identifies the tags that are associated with the application. Each tag consists of a required tag key and an associated tag value.</p>"
  )
  tags: option<mapOf__string>,
  @ocaml.doc(
    "<p>The display name of the application. This name is displayed as the <b>Project name</b> on the Amazon Pinpoint console.</p>"
  )
  @as("Name")
  name: __string,
  @ocaml.doc(
    "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
  )
  @as("Id")
  id: __string,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("Arn") arn: __string,
}
@ocaml.doc(
  "<p>Specifies the settings for a one-time voice message that's sent directly to an endpoint through the voice channel.</p>"
)
type voiceMessage = {
  @ocaml.doc(
    "<p>The name of the voice to use when delivering the message. For a list of supported voices, see the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/what-is.html\">Amazon Polly Developer Guide</a>.</p>"
  )
  @as("VoiceId")
  voiceId: option<__string>,
  @ocaml.doc(
    "<p>The default message variables to use in the voice message. You can override the default variables with individual address variables.</p>"
  )
  @as("Substitutions")
  substitutions: option<mapOfListOf__string>,
  @ocaml.doc(
    "<p>The long code to send the voice message from. This value should be one of the dedicated long codes that's assigned to your AWS account. Although it isn't required, we recommend that you specify the long code in E.164 format, for example +12065550100, to ensure prompt and accurate delivery of the message.</p>"
  )
  @as("OriginationNumber")
  originationNumber: option<__string>,
  @ocaml.doc(
    "<p>The code for the language to use when synthesizing the text of the message script. For a list of supported languages and the code for each one, see the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/what-is.html\">Amazon Polly Developer Guide</a>.</p>"
  )
  @as("LanguageCode")
  languageCode: option<__string>,
  @ocaml.doc("<p>The text of the script to use for the voice message.</p>") @as("Body")
  body: option<__string>,
}
@ocaml.doc("<p>Provides information about all the versions of a specific message template.</p>")
type templateVersionsResponse = {
  @ocaml.doc(
    "<p>The unique identifier for the request to retrieve information about all the versions of the message template.</p>"
  )
  @as("RequestID")
  requestID: option<__string>,
  @ocaml.doc(
    "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
  )
  @as("NextToken")
  nextToken: option<__string>,
  @ocaml.doc(
    "<p>The message that's returned from the API for the request to retrieve information about all the versions of the message template.</p>"
  )
  @as("Message")
  message: option<__string>,
  @ocaml.doc("<p>An array of responses, one for each version of the message template.</p>")
  @as("Item")
  item: listOfTemplateVersionResponse,
}
@ocaml.doc("<p>Specifies geographical dimension settings for a segment.</p>")
type segmentLocation = {
  @ocaml.doc("<p>The GPS location and range for the segment.</p>") @as("GPSPoint")
  gpspoint: option<gpspointDimension>,
  @ocaml.doc("<p>The country or region code, in ISO 3166-1 alpha-2 format, for the segment.</p>")
  @as("Country")
  country: option<setDimension>,
}
@ocaml.doc(
  "<p>Specifies demographic-based dimension settings for including or excluding endpoints from a segment. These settings derive from characteristics of endpoint devices, such as platform, make, and model.</p>"
)
type segmentDemographics = {
  @ocaml.doc("<p>The device platform criteria for the segment.</p>") @as("Platform")
  platform: option<setDimension>,
  @ocaml.doc("<p>The device model criteria for the segment.</p>") @as("Model")
  model: option<setDimension>,
  @ocaml.doc("<p>The device make criteria for the segment.</p>") @as("Make")
  make: option<setDimension>,
  @ocaml.doc("<p>The device type criteria for the segment.</p>") @as("DeviceType")
  deviceType: option<setDimension>,
  @ocaml.doc("<p>The channel criteria for the segment.</p>") @as("Channel")
  channel: option<setDimension>,
  @ocaml.doc("<p>The app version criteria for the segment.</p>") @as("AppVersion")
  appVersion: option<setDimension>,
}
@ocaml.doc(
  "<p>Specifies the default settings for a one-time SMS message that's sent directly to an endpoint.</p>"
)
type smsmessage = {
  @ocaml.doc(
    "<p>The template ID received from the regulatory body for sending SMS in your country.</p>"
  )
  @as("TemplateId")
  templateId: option<__string>,
  @ocaml.doc(
    "<p>The entity ID or Principal Entity (PE) id received from the regulatory body for sending SMS in your country.</p>"
  )
  @as("EntityId")
  entityId: option<__string>,
  @ocaml.doc(
    "<p>The message variables to use in the SMS message. You can override the default variables with individual address variables.</p>"
  )
  @as("Substitutions")
  substitutions: option<mapOfListOf__string>,
  @ocaml.doc(
    "<p>The sender ID to display as the sender of the message on a recipient's device. Support for sender IDs varies by country or region.</p>"
  )
  @as("SenderId")
  senderId: option<__string>,
  @ocaml.doc(
    "<p>The number to send the SMS message from. This value should be one of the dedicated long or short codes that's assigned to your AWS account. If you don't specify a long or short code, Amazon Pinpoint assigns a random long code to the SMS message and sends the message from that code.</p>"
  )
  @as("OriginationNumber")
  originationNumber: option<__string>,
  @ocaml.doc(
    "<p>The SMS message type. Valid values are TRANSACTIONAL (for messages that are critical or time-sensitive, such as a one-time passwords) and PROMOTIONAL (for messsages that aren't critical or time-sensitive, such as marketing messages).</p>"
  )
  @as("MessageType")
  messageType: option<messageType>,
  @ocaml.doc("<p>This field is reserved for future use.</p>") @as("MediaUrl")
  mediaUrl: option<__string>,
  @ocaml.doc(
    "<p>The SMS program name that you provided to AWS Support when you requested your dedicated number.</p>"
  )
  @as("Keyword")
  keyword: option<__string>,
  @ocaml.doc("<p>The body of the SMS message.</p>") @as("Body") body: option<__string>,
}
@ocaml.doc(
  "<p>Provides the results of a query that retrieved the data for a standard metric that applies to an application, campaign, or journey.</p>"
)
type resultRow = {
  @ocaml.doc(
    "<p>An array of objects that provides pre-aggregated values for a standard metric that applies to an application, campaign, or journey.</p>"
  )
  @as("Values")
  values: listOfResultRowValue,
  @ocaml.doc(
    "<p>An array of objects that defines the field and field values that were used to group data in a result set that contains multiple results. This value is null if the data in a result set isn’t grouped.</p>"
  )
  @as("GroupedBys")
  groupedBys: listOfResultRowValue,
}
@ocaml.doc(
  "<p>Specifies the settings for a random split activity in a journey. This type of activity randomly sends specified percentages of participants down one of as many as five paths in a journey, based on conditions that you specify.</p>"
)
type randomSplitActivity = {
  @ocaml.doc(
    "<p>The paths for the activity, including the percentage of participants to enter each path and the activity to perform for each path.</p>"
  )
  @as("Branches")
  branches: option<listOfRandomSplitEntry>,
}
@ocaml.doc(
  "<p>Provides information about the results of a request to send a message to an endpoint address.</p>"
)
type messageResponse = {
  @ocaml.doc(
    "<p>A map that contains a multipart response for each address (email address, phone number, or push notification token) that the message was sent to. In the map, the address is the key and the result is the value.</p>"
  )
  @as("Result")
  result: option<mapOfMessageResult>,
  @ocaml.doc("<p>The identifier for the original request that the message was delivered for.</p>")
  @as("RequestId")
  requestId: option<__string>,
  @ocaml.doc(
    "<p>A map that contains a multipart response for each address that the message was sent to. In the map, the endpoint ID is the key and the result is the value.</p>"
  )
  @as("EndpointResult")
  endpointResult: option<mapOfEndpointMessageResult>,
  @ocaml.doc("<p>The unique identifier for the application that was used to send the message.</p>")
  @as("ApplicationId")
  applicationId: __string,
}
type mapOfMapOfEndpointMessageResult = Js.Dict.t<mapOfEndpointMessageResult>
type mapOfEvent = Js.Dict.t<event>
type mapOfAttributeDimension = Js.Dict.t<attributeDimension>
type listOfTemplateResponse = array<templateResponse>
type listOfRecommenderConfigurationResponse = array<recommenderConfigurationResponse>
type listOfImportJobResponse = array<importJobResponse>
type listOfExportJobResponse = array<exportJobResponse>
type listOfApplicationResponse = array<applicationResponse>
@ocaml.doc(
  "<p>Provides information about the results of a request to create or update an endpoint that's associated with an event.</p>"
)
type itemResponse = {
  @ocaml.doc(
    "<p>A multipart response object that contains a key and a value for each event in the request. In each object, the event ID is the key and an EventItemResponse object is the value.</p>"
  )
  @as("EventsItemResponse")
  eventsItemResponse: option<mapOfEventItemResponse>,
  @ocaml.doc("<p>The response that was received after the endpoint data was accepted.</p>")
  @as("EndpointItemResponse")
  endpointItemResponse: option<endpointItemResponse>,
}
@ocaml.doc("<p>The configuration for the message content.</p>")
type inAppMessageContent = {
  @ocaml.doc("<p>The second button inside message.</p>") @as("SecondaryBtn")
  secondaryBtn: option<inAppMessageButton>,
  @ocaml.doc("<p>The first button inside the message.</p>") @as("PrimaryBtn")
  primaryBtn: option<inAppMessageButton>,
  @ocaml.doc("<p>The image url for the background of message.</p>") @as("ImageUrl")
  imageUrl: option<__string>,
  @ocaml.doc("<p>The configuration for the message header.</p>") @as("HeaderConfig")
  headerConfig: option<inAppMessageHeaderConfig>,
  @ocaml.doc("<p>The configuration for the message body.</p>") @as("BodyConfig")
  bodyConfig: option<inAppMessageBodyConfig>,
  @ocaml.doc("<p>The background color for the message.</p>") @as("BackgroundColor")
  backgroundColor: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the settings for a one-time message that's sent directly to an endpoint through the GCM channel. The GCM channel enables Amazon Pinpoint to send messages to the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service.</p>"
)
type gcmmessage = {
  @ocaml.doc(
    "<p>The URL to open in the recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>"
  )
  @as("Url")
  url: option<__string>,
  @ocaml.doc(
    "<p>The title to display above the notification message on the recipient's device.</p>"
  )
  @as("Title")
  title: option<__string>,
  @ocaml.doc(
    "<p>The amount of time, in seconds, that FCM should store and attempt to deliver the push notification, if the service is unable to deliver the notification the first time. If you don't specify this value, FCM defaults to the maximum value, which is 2,419,200 seconds (28 days).</p> <p>Amazon Pinpoint specifies this value in the FCM time_to_live parameter when it sends the notification message to FCM.</p>"
  )
  @as("TimeToLive")
  timeToLive: option<__integer>,
  @ocaml.doc(
    "<p>The default message variables to use in the notification message. You can override the default variables with individual address variables.</p>"
  )
  @as("Substitutions")
  substitutions: option<mapOfListOf__string>,
  @ocaml.doc(
    "<p>The sound to play when the recipient receives the push notification. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.</p>"
  )
  @as("Sound")
  sound: option<__string>,
  @ocaml.doc(
    "<p>The URL of the small icon image to display in the status bar and the content view of the push notification.</p>"
  )
  @as("SmallImageIconUrl")
  smallImageIconUrl: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the notification is a silent push notification, which is a push notification that doesn't display on a recipient's device. Silent push notifications can be used for cases such as updating an app's configuration or supporting phone home functionality.</p>"
  )
  @as("SilentPush")
  silentPush: option<__boolean>,
  @ocaml.doc(
    "<p>The package name of the application where registration tokens must match in order for the recipient to receive the message.</p>"
  )
  @as("RestrictedPackageName")
  restrictedPackageName: option<__string>,
  @ocaml.doc(
    "<p>The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.</p>"
  )
  @as("RawContent")
  rawContent: option<__string>,
  @ocaml.doc(
    "<p>para>normal - The notification might be delayed. Delivery is optimized for battery usage on the recipient's device. Use this value unless immediate delivery is required.</p>/listitem> <li><p>high - The notification is sent immediately and might wake a sleeping device.</p></li>/para> <p>Amazon Pinpoint specifies this value in the FCM priority parameter when it sends the notification message to FCM.</p> <p>The equivalent values for Apple Push Notification service (APNs) are 5, for normal, and 10, for high. If you specify an APNs value for this property, Amazon Pinpoint accepts and converts the value to the corresponding FCM value.</p>"
  )
  @as("Priority")
  priority: option<__string>,
  @ocaml.doc("<p>The URL of an image to display in the push notification.</p>") @as("ImageUrl")
  imageUrl: option<__string>,
  @ocaml.doc(
    "<p>The URL of the large icon image to display in the content view of the push notification.</p>"
  )
  @as("ImageIconUrl")
  imageIconUrl: option<__string>,
  @ocaml.doc("<p>The icon image name of the asset saved in your app.</p>") @as("IconReference")
  iconReference: option<__string>,
  @ocaml.doc(
    "<p>The JSON data payload to use for the push notification, if the notification is a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.</p>"
  )
  @as("Data")
  data: option<mapOf__string>,
  @ocaml.doc(
    "<p>An arbitrary string that identifies a group of messages that can be collapsed to ensure that only the last message is sent when delivery can resume. This helps avoid sending too many instances of the same messages when the recipient's device comes online again or becomes active.</p> <p>Amazon Pinpoint specifies this value in the Firebase Cloud Messaging (FCM) collapse_key parameter when it sends the notification message to FCM.</p>"
  )
  @as("CollapseKey")
  collapseKey: option<__string>,
  @ocaml.doc("<p>The body of the notification message.</p>") @as("Body") body: option<__string>,
  @ocaml.doc(
    "<p>The action to occur if the recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This action uses the deep-linking features of the Android platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"
  )
  @as("Action")
  action: option<action>,
}
@ocaml.doc(
  "<p>Specifies data for one or more attributes that describe the user who's associated with an endpoint.</p>"
)
type endpointUser = {
  @ocaml.doc("<p>The unique identifier for the user.</p>") @as("UserId") userId: option<__string>,
  @ocaml.doc(
    "<p>One or more custom attributes that describe the user by associating a name with an array of values. For example, the value of an attribute named Interests might be: [\"Science\", \"Music\", \"Travel\"]. You can use these attributes as filter criteria when you create segments. Attribute names are case sensitive.</p> <p>An attribute name can contain up to 50 characters. An attribute value can contain up to 100 characters. When you define the name of a custom attribute, avoid using the following characters: number sign (#), colon (:), question mark (?), backslash (\\), and slash (/). The Amazon Pinpoint console can't display attribute names that contain these characters. This restriction doesn't apply to attribute values.</p>"
  )
  @as("UserAttributes")
  userAttributes: option<mapOfListOf__string>,
}
@ocaml.doc(
  "<p>Specifies the content, including message variables and attributes, to use in a message that's sent directly to an endpoint.</p>"
)
type endpointSendConfiguration = {
  @ocaml.doc(
    "<p>The title or subject line of the message. If specified, this value overrides the default message title or subject line.</p>"
  )
  @as("TitleOverride")
  titleOverride: option<__string>,
  @ocaml.doc(
    "<p>A map of the message variables to merge with the variables specified for the default message (DefaultMessage.Substitutions). The variables specified in this map take precedence over all other variables.</p>"
  )
  @as("Substitutions")
  substitutions: option<mapOfListOf__string>,
  @ocaml.doc(
    "<p>The raw, JSON-formatted string to use as the payload for the message. If specified, this value overrides all other values for the message.</p>"
  )
  @as("RawContent")
  rawContent: option<__string>,
  @ocaml.doc(
    "<p>A map of custom attributes to attach to the message for the address. Attribute names are case sensitive.</p> <p>For a push notification, this payload is added to the data.pinpoint object. For an email or text message, this payload is added to email/SMS delivery receipt event attributes.</p>"
  )
  @as("Context")
  context: option<mapOf__string>,
  @ocaml.doc(
    "<p>The body of the message. If specified, this value overrides the default message body.</p>"
  )
  @as("BodyOverride")
  bodyOverride: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the default settings and content for a one-time email message that's sent directly to an endpoint.</p>"
)
type emailMessage = {
  @ocaml.doc(
    "<p>The default message variables to use in the email message. You can override the default variables with individual address variables.</p>"
  )
  @as("Substitutions")
  substitutions: option<mapOfListOf__string>,
  @ocaml.doc("<p>The email message, composed of a subject, a text part, and an HTML part.</p>")
  @as("SimpleEmail")
  simpleEmail: option<simpleEmail>,
  @ocaml.doc(
    "<p>The reply-to email address(es) for the email message. If a recipient replies to the email, each reply-to address receives the reply.</p>"
  )
  @as("ReplyToAddresses")
  replyToAddresses: option<listOf__string>,
  @ocaml.doc("<p>The email message, represented as a raw MIME message.</p>") @as("RawEmail")
  rawEmail: option<rawEmail>,
  @ocaml.doc(
    "<p>The verified email address to send the email message from. The default value is the FromAddress specified for the email channel.</p>"
  )
  @as("FromAddress")
  fromAddress: option<__string>,
  @ocaml.doc(
    "<p>The email address to forward bounces and complaints to, if feedback forwarding is enabled.</p>"
  )
  @as("FeedbackForwardingAddress")
  feedbackForwardingAddress: option<__string>,
  @ocaml.doc("<p>The body of the email message.</p>") @as("Body") body: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the default settings and content for a push notification that's sent directly to an endpoint.</p>"
)
type defaultPushNotificationMessage = {
  @ocaml.doc(
    "<p>The default URL to open in a recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>"
  )
  @as("Url")
  url: option<__string>,
  @ocaml.doc(
    "<p>The default title to display above the notification message on a recipient's device.</p>"
  )
  @as("Title")
  title: option<__string>,
  @ocaml.doc(
    "<p>The default message variables to use in the notification message. You can override the default variables with individual address variables.</p>"
  )
  @as("Substitutions")
  substitutions: option<mapOfListOf__string>,
  @ocaml.doc(
    "<p>Specifies whether the default notification is a silent push notification, which is a push notification that doesn't display on a recipient's device. Silent push notifications can be used for cases such as updating an app's configuration or delivering messages to an in-app notification center.</p>"
  )
  @as("SilentPush")
  silentPush: option<__boolean>,
  @ocaml.doc(
    "<p>The JSON data payload to use for the default push notification, if the notification is a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.</p>"
  )
  @as("Data")
  data: option<mapOf__string>,
  @ocaml.doc("<p>The default body of the notification message.</p>") @as("Body")
  body: option<__string>,
  @ocaml.doc(
    "<p>The default action to occur if a recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of the iOS and Android platforms.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"
  )
  @as("Action")
  action: option<action>,
}
@ocaml.doc("<p>Specifies the default message for all channels.</p>")
type defaultMessage = {
  @ocaml.doc(
    "<p>The default message variables to use in the message. You can override these default variables with individual address variables.</p>"
  )
  @as("Substitutions")
  substitutions: option<mapOfListOf__string>,
  @ocaml.doc("<p>The default body of the message.</p>") @as("Body") body: option<__string>,
}
@ocaml.doc(
  "<p>Provides information about the general settings and status of all channels for an application, including channels that aren't enabled for the application.</p>"
)
type channelsResponse = {
  @ocaml.doc(
    "<p>A map that contains a multipart response for each channel. For each item in this object, the ChannelType is the key and the Channel is the value.</p>"
  )
  @as("Channels")
  channels: mapOfChannelResponse,
}
@ocaml.doc(
  "<p>Specifies the settings for a one-time message that's sent directly to an endpoint through the Baidu (Baidu Cloud Push) channel.</p>"
)
type baiduMessage = {
  @ocaml.doc(
    "<p>The URL to open in the recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>"
  )
  @as("Url")
  url: option<__string>,
  @ocaml.doc(
    "<p>The title to display above the notification message on the recipient's device.</p>"
  )
  @as("Title")
  title: option<__string>,
  @ocaml.doc(
    "<p>The amount of time, in seconds, that the Baidu Cloud Push service should store the message if the recipient's device is offline. The default value and maximum supported time is 604,800 seconds (7 days).</p>"
  )
  @as("TimeToLive")
  timeToLive: option<__integer>,
  @ocaml.doc(
    "<p>The default message variables to use in the notification message. You can override the default variables with individual address variables.</p>"
  )
  @as("Substitutions")
  substitutions: option<mapOfListOf__string>,
  @ocaml.doc(
    "<p>The sound to play when the recipient receives the push notification. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.</p>"
  )
  @as("Sound")
  sound: option<__string>,
  @ocaml.doc(
    "<p>The URL of the small icon image to display in the status bar and the content view of the push notification.</p>"
  )
  @as("SmallImageIconUrl")
  smallImageIconUrl: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the notification is a silent push notification, which is a push notification that doesn't display on a recipient's device. Silent push notifications can be used for cases such as updating an app's configuration or supporting phone home functionality.</p>"
  )
  @as("SilentPush")
  silentPush: option<__boolean>,
  @ocaml.doc(
    "<p>The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.</p>"
  )
  @as("RawContent")
  rawContent: option<__string>,
  @ocaml.doc("<p>The URL of an image to display in the push notification.</p>") @as("ImageUrl")
  imageUrl: option<__string>,
  @ocaml.doc(
    "<p>The URL of the large icon image to display in the content view of the push notification.</p>"
  )
  @as("ImageIconUrl")
  imageIconUrl: option<__string>,
  @ocaml.doc("<p>The icon image name of the asset saved in your app.</p>") @as("IconReference")
  iconReference: option<__string>,
  @ocaml.doc(
    "<p>The JSON data payload to use for the push notification, if the notification is a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.</p>"
  )
  @as("Data")
  data: option<mapOf__string>,
  @ocaml.doc("<p>The body of the notification message.</p>") @as("Body") body: option<__string>,
  @ocaml.doc(
    "<p>The action to occur if the recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This action uses the deep-linking features of the Android platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"
  )
  @as("Action")
  action: option<action>,
}
@ocaml.doc(
  "<p>Specifies address-based configuration settings for a message that's sent directly to an endpoint.</p>"
)
type addressConfiguration = {
  @ocaml.doc(
    "<p>The message title to use instead of the default message title. This value overrides the default message title.</p>"
  )
  @as("TitleOverride")
  titleOverride: option<__string>,
  @ocaml.doc(
    "<p>A map of the message variables to merge with the variables specified by properties of the DefaultMessage object. The variables specified in this map take precedence over all other variables.</p>"
  )
  @as("Substitutions")
  substitutions: option<mapOfListOf__string>,
  @ocaml.doc(
    "<p>The raw, JSON-formatted string to use as the payload for the message. If specified, this value overrides all other values for the message.</p>"
  )
  @as("RawContent")
  rawContent: option<__string>,
  @ocaml.doc(
    "<p>An object that maps custom attributes to attributes for the address and is attached to the message. Attribute names are case sensitive.</p> <p>For a push notification, this payload is added to the data.pinpoint object. For an email or text message, this payload is added to email/SMS delivery receipt event attributes.</p>"
  )
  @as("Context")
  context: option<mapOf__string>,
  @ocaml.doc("<p>The channel to use when sending the message.</p>") @as("ChannelType")
  channelType: option<channelType>,
  @ocaml.doc(
    "<p>The message body to use instead of the default message body. This value overrides the default message body.</p>"
  )
  @as("BodyOverride")
  bodyOverride: option<__string>,
}
@ocaml.doc("<p>Provides information about the activities that were performed by a campaign.</p>")
type activitiesResponse = {
  @ocaml.doc(
    "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
  )
  @as("NextToken")
  nextToken: option<__string>,
  @ocaml.doc(
    "<p>An array of responses, one for each activity that was performed by the campaign.</p>"
  )
  @as("Item")
  item: listOfActivityResponse,
}
@ocaml.doc(
  "<p>Specifies the settings for a one-time message that's sent directly to an endpoint through the APNs (Apple Push Notification service) channel.</p>"
)
type apnsmessage = {
  @ocaml.doc(
    "<p>The URL to open in the recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>"
  )
  @as("Url")
  url: option<__string>,
  @ocaml.doc(
    "<p>The title to display above the notification message on the recipient's device.</p>"
  )
  @as("Title")
  title: option<__string>,
  @ocaml.doc(
    "<p>The amount of time, in seconds, that APNs should store and attempt to deliver the push notification, if the service is unable to deliver the notification the first time. If this value is 0, APNs treats the notification as if it expires immediately and the service doesn't store or try to deliver the notification again.</p> <p>Amazon Pinpoint specifies this value in the apns-expiration request header when it sends the notification message to APNs.</p>"
  )
  @as("TimeToLive")
  timeToLive: option<__integer>,
  @ocaml.doc(
    "<p>The key that represents your app-specific identifier for grouping notifications. If you provide a Notification Content app extension, you can use this value to group your notifications together.</p>"
  )
  @as("ThreadId")
  threadId: option<__string>,
  @ocaml.doc(
    "<p>The default message variables to use in the notification message. You can override these default variables with individual address variables.</p>"
  )
  @as("Substitutions")
  substitutions: option<mapOfListOf__string>,
  @ocaml.doc(
    "<p>The key for the sound to play when the recipient receives the push notification. The value for this key is the name of a sound file in your app's main bundle or the Library/Sounds folder in your app's data container. If the sound file can't be found or you specify default for the value, the system plays the default alert sound.</p>"
  )
  @as("Sound")
  sound: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the notification is a silent push notification. A silent (or background) push notification isn't displayed on recipients' devices. You can use silent push notifications to make small updates to your app, or to display messages in an in-app message center.</p> <p>Amazon Pinpoint uses this property to determine the correct value for the apns-push-type request header when it sends the notification message to APNs. If you specify a value of true for this property, Amazon Pinpoint sets the value for the apns-push-type header field to background.</p> <note><p>If you specify the raw content of an APNs push notification, the message payload has to include the content-available key. For silent (background) notifications, set the value of content-available to 1. Additionally, the message payload for a silent notification can't include the alert, badge, or sound keys. For more information, see <a href=\"https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/generating_a_remote_notification\">Generating a Remote Notification</a> and <a href=\"https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/pushing_background_updates_to_your_app\">Pushing Background Updates to Your App</a> on the Apple Developer website.</p> <p>Apple has indicated that they will throttle \"excessive\" background notifications based on current traffic volumes. To prevent your notifications being throttled, Apple recommends that you send no more than 3 silent push notifications to each recipient per hour.</p></note>"
  )
  @as("SilentPush")
  silentPush: option<__boolean>,
  @ocaml.doc(
    "<p>The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.</p> <note><p>If you specify the raw content of an APNs push notification, the message payload has to include the content-available key. The value of the content-available key has to be an integer, and can only be 0 or 1. If you're sending a standard notification, set the value of content-available to 0. If you're sending a silent (background) notification, set the value of content-available to 1. Additionally, silent notification payloads can't include the alert, badge, or sound keys. For more information, see <a href=\"https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/generating_a_remote_notification\">Generating a Remote Notification</a> and <a href=\"https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/pushing_background_updates_to_your_app\">Pushing Background Updates to Your App</a> on the Apple Developer website.</p></note>"
  )
  @as("RawContent")
  rawContent: option<__string>,
  @ocaml.doc(
    "<p>para>5 - Low priority, the notification might be delayed, delivered as part of a group, or throttled.</p>/listitem> <li><p>10 - High priority, the notification is sent immediately. This is the default value. A high priority notification should trigger an alert, play a sound, or badge your app's icon on the recipient's device.</p></li>/para> <p>Amazon Pinpoint specifies this value in the apns-priority request header when it sends the notification message to APNs.</p> <p>The equivalent values for Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), are normal, for 5, and high, for 10. If you specify an FCM value for this property, Amazon Pinpoint accepts and converts the value to the corresponding APNs value.</p>"
  )
  @as("Priority")
  priority: option<__string>,
  @ocaml.doc(
    "<p>The authentication method that you want Amazon Pinpoint to use when authenticating with APNs, CERTIFICATE or TOKEN.</p>"
  )
  @as("PreferredAuthenticationMethod")
  preferredAuthenticationMethod: option<__string>,
  @ocaml.doc("<p>The URL of an image or video to display in the push notification.</p>")
  @as("MediaUrl")
  mediaUrl: option<__string>,
  @ocaml.doc(
    "<p>The JSON payload to use for a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.</p>"
  )
  @as("Data")
  data: option<mapOf__string>,
  @ocaml.doc(
    "<p>An arbitrary identifier that, if assigned to multiple messages, APNs uses to coalesce the messages into a single push notification instead of delivering each message individually. This value can't exceed 64 bytes.</p> <p>Amazon Pinpoint specifies this value in the apns-collapse-id request header when it sends the notification message to APNs.</p>"
  )
  @as("CollapseId")
  collapseId: option<__string>,
  @ocaml.doc(
    "<p>The key that indicates the notification type for the push notification. This key is a value that's defined by the identifier property of one of your app's registered categories.</p>"
  )
  @as("Category")
  category: option<__string>,
  @ocaml.doc("<p>The body of the notification message.</p>") @as("Body") body: option<__string>,
  @ocaml.doc(
    "<p>The key that indicates whether and how to modify the badge of your app's icon when the recipient receives the push notification. If this key isn't included in the dictionary, the badge doesn't change. To remove the badge, set this value to 0.</p>"
  )
  @as("Badge")
  badge: option<__integer>,
  @ocaml.doc(
    "<p>The action to occur if the recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of the iOS platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"
  )
  @as("Action")
  action: option<action>,
  @ocaml.doc(
    "<p>The type of push notification to send. Valid values are:</p> <ul><li><p>alert - For a standard notification that's displayed on recipients' devices and prompts a recipient to interact with the notification.</p></li> <li><p>background - For a silent notification that delivers content in the background and isn't displayed on recipients' devices.</p></li> <li><p>complication - For a notification that contains update information for an app’s complication timeline.</p></li> <li><p>fileprovider - For a notification that signals changes to a File Provider extension.</p></li> <li><p>mdm - For a notification that tells managed devices to contact the MDM server.</p></li> <li><p>voip - For a notification that provides information about an incoming VoIP call.</p></li></ul> <p>Amazon Pinpoint specifies this value in the apns-push-type request header when it sends the notification message to APNs. If you don't specify a value for this property, Amazon Pinpoint sets the value to alert or background automatically, based on the value that you specify for the SilentPush or RawContent property of the message.</p> <p>For more information about the apns-push-type request header, see <a href=\"https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/sending_notification_requests_to_apns\">Sending Notification Requests to APNs</a> on the Apple Developer website.</p>"
  )
  @as("APNSPushType")
  apnspushType: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the settings for a one-time message that's sent directly to an endpoint through the ADM (Amazon Device Messaging) channel.</p>"
)
type admmessage = {
  @ocaml.doc(
    "<p>The URL to open in the recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>"
  )
  @as("Url")
  url: option<__string>,
  @ocaml.doc(
    "<p>The title to display above the notification message on the recipient's device.</p>"
  )
  @as("Title")
  title: option<__string>,
  @ocaml.doc(
    "<p>The default message variables to use in the notification message. You can override the default variables with individual address variables.</p>"
  )
  @as("Substitutions")
  substitutions: option<mapOfListOf__string>,
  @ocaml.doc(
    "<p>The sound to play when the recipient receives the push notification. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.</p>"
  )
  @as("Sound")
  sound: option<__string>,
  @ocaml.doc(
    "<p>The URL of the small icon image to display in the status bar and the content view of the push notification.</p>"
  )
  @as("SmallImageIconUrl")
  smallImageIconUrl: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the notification is a silent push notification, which is a push notification that doesn't display on a recipient's device. Silent push notifications can be used for cases such as updating an app's configuration or supporting phone home functionality.</p>"
  )
  @as("SilentPush")
  silentPush: option<__boolean>,
  @ocaml.doc(
    "<p>The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.</p>"
  )
  @as("RawContent")
  rawContent: option<__string>,
  @ocaml.doc(
    "<p>The base64-encoded, MD5 checksum of the value specified by the Data property. ADM uses the MD5 value to verify the integrity of the data.</p>"
  )
  @as("MD5")
  md5: option<__string>,
  @ocaml.doc("<p>The URL of an image to display in the push notification.</p>") @as("ImageUrl")
  imageUrl: option<__string>,
  @ocaml.doc(
    "<p>The URL of the large icon image to display in the content view of the push notification.</p>"
  )
  @as("ImageIconUrl")
  imageIconUrl: option<__string>,
  @ocaml.doc("<p>The icon image name of the asset saved in your app.</p>") @as("IconReference")
  iconReference: option<__string>,
  @ocaml.doc(
    "<p>The amount of time, in seconds, that ADM should store the message if the recipient's device is offline. Amazon Pinpoint specifies this value in the expiresAfter parameter when it sends the notification message to ADM.</p>"
  )
  @as("ExpiresAfter")
  expiresAfter: option<__string>,
  @ocaml.doc(
    "<p>The JSON data payload to use for the push notification, if the notification is a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.</p>"
  )
  @as("Data")
  data: option<mapOf__string>,
  @ocaml.doc(
    "<p>An arbitrary string that indicates that multiple messages are logically the same and that Amazon Device Messaging (ADM) can drop previously enqueued messages in favor of this message.</p>"
  )
  @as("ConsolidationKey")
  consolidationKey: option<__string>,
  @ocaml.doc("<p>The body of the notification message.</p>") @as("Body") body: option<__string>,
  @ocaml.doc(
    "<p>The action to occur if the recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This action uses the deep-linking features of the Android platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>"
  )
  @as("Action")
  action: option<action>,
}
@ocaml.doc(
  "<p>Provides information about all the message templates that are associated with your Amazon Pinpoint account.</p>"
)
type templatesResponse = {
  @ocaml.doc(
    "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
  )
  @as("NextToken")
  nextToken: option<__string>,
  @ocaml.doc(
    "<p>An array of responses, one for each message template that's associated with your Amazon Pinpoint account and meets any filter criteria that you specified in the request.</p>"
  )
  @as("Item")
  item: listOfTemplateResponse,
}
@ocaml.doc("<p>Provides information about which users and endpoints a message was sent to.</p>")
type sendUsersMessageResponse = {
  @ocaml.doc(
    "<p>An object that indicates which endpoints the message was sent to, for each user. The object lists user IDs and, for each user ID, provides the endpoint IDs that the message was sent to. For each endpoint ID, it provides an EndpointMessageResult object.</p>"
  )
  @as("Result")
  result: option<mapOfMapOfEndpointMessageResult>,
  @ocaml.doc("<p>The unique identifier that was assigned to the message request.</p>")
  @as("RequestId")
  requestId: option<__string>,
  @ocaml.doc("<p>The unique identifier for the application that was used to send the message.</p>")
  @as("ApplicationId")
  applicationId: __string,
}
@ocaml.doc("<p>Specifies the dimension settings for a segment.</p>")
type segmentDimensions = {
  @ocaml.doc("<p>One or more custom user attributes to use as criteria for the segment.</p>")
  @as("UserAttributes")
  userAttributes: option<mapOfAttributeDimension>,
  @ocaml.doc("<p>One or more custom metrics to use as criteria for the segment.</p>") @as("Metrics")
  metrics: option<mapOfMetricDimension>,
  @ocaml.doc(
    "<p>The location-based criteria, such as region or GPS coordinates, for the segment.</p>"
  )
  @as("Location")
  location: option<segmentLocation>,
  @ocaml.doc("<p>The demographic-based criteria, such as device platform, for the segment.</p>")
  @as("Demographic")
  demographic: option<segmentDemographics>,
  @ocaml.doc(
    "<p>The behavior-based criteria, such as how recently users have used your app, for the segment.</p>"
  )
  @as("Behavior")
  behavior: option<segmentBehaviors>,
  @ocaml.doc("<p>One or more custom attributes to use as criteria for the segment.</p>")
  @as("Attributes")
  attributes: option<mapOfAttributeDimension>,
}
@ocaml.doc(
  "<p>Specifies the properties and attributes of an endpoint that's associated with an event.</p>"
)
type publicEndpoint = {
  @ocaml.doc(
    "<p>One or more custom user attributes that your app reports to Amazon Pinpoint for the user who's associated with the endpoint.</p>"
  )
  @as("User")
  user: option<endpointUser>,
  @ocaml.doc("<p>A unique identifier that's generated each time the endpoint is updated.</p>")
  @as("RequestId")
  requestId: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.</p>"
  )
  @as("OptOut")
  optOut: option<__string>,
  @ocaml.doc(
    "<p>One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.</p>"
  )
  @as("Metrics")
  metrics: option<mapOf__double>,
  @ocaml.doc("<p>The geographic information for the endpoint.</p>") @as("Location")
  location: option<endpointLocation>,
  @ocaml.doc(
    "<p>Specifies whether to send messages or push notifications to the endpoint. Valid values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint.</p> <p>Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.</p>"
  )
  @as("EndpointStatus")
  endpointStatus: option<__string>,
  @ocaml.doc("<p>The date and time, in ISO 8601 format, when the endpoint was last updated.</p>")
  @as("EffectiveDate")
  effectiveDate: option<__string>,
  @ocaml.doc(
    "<p>The demographic information for the endpoint, such as the time zone and platform.</p>"
  )
  @as("Demographic")
  demographic: option<endpointDemographic>,
  @ocaml.doc(
    "<p>The channel that's used when sending messages or push notifications to the endpoint.</p>"
  )
  @as("ChannelType")
  channelType: option<channelType>,
  @ocaml.doc(
    "<p>One or more custom attributes that describe the endpoint by associating a name with an array of values. You can use these attributes as filter criteria when you create segments.</p>"
  )
  @as("Attributes")
  attributes: option<mapOfListOf__string>,
  @ocaml.doc(
    "<p>The unique identifier for the recipient, such as a device token, email address, or mobile phone number.</p>"
  )
  @as("Address")
  address: option<__string>,
}
type mapOfItemResponse = Js.Dict.t<itemResponse>
type mapOfEndpointSendConfiguration = Js.Dict.t<endpointSendConfiguration>
type mapOfAddressConfiguration = Js.Dict.t<addressConfiguration>
@ocaml.doc(
  "<p>Provides information about all the recommender model configurations that are associated with your Amazon Pinpoint account.</p>"
)
type listRecommenderConfigurationsResponse = {
  @ocaml.doc(
    "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
  )
  @as("NextToken")
  nextToken: option<__string>,
  @ocaml.doc(
    "<p>An array of responses, one for each recommender model configuration that's associated with your Amazon Pinpoint account.</p>"
  )
  @as("Item")
  item: listOfRecommenderConfigurationResponse,
}
type listOfResultRow = array<resultRow>
type listOfInAppMessageContent = array<inAppMessageContent>
@ocaml.doc(
  "<p>Provides information about the status and settings of all the import jobs that are associated with an application or segment. An import job is a job that imports endpoint definitions from one or more files.</p>"
)
type importJobsResponse = {
  @ocaml.doc(
    "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
  )
  @as("NextToken")
  nextToken: option<__string>,
  @ocaml.doc(
    "<p>An array of responses, one for each import job that's associated with the application (Import Jobs resource) or segment (Segment Import Jobs resource).</p>"
  )
  @as("Item")
  item: listOfImportJobResponse,
}
@ocaml.doc(
  "<p>Provides information about all the export jobs that are associated with an application or segment. An export job is a job that exports endpoint definitions to a file.</p>"
)
type exportJobsResponse = {
  @ocaml.doc(
    "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
  )
  @as("NextToken")
  nextToken: option<__string>,
  @ocaml.doc(
    "<p>An array of responses, one for each export job that's associated with the application (Export Jobs resource) or segment (Segment Export Jobs resource).</p>"
  )
  @as("Item")
  item: listOfExportJobResponse,
}
@ocaml.doc(
  "<p>Specifies the dimensions for an event filter that determines when a campaign is sent or a journey activity is performed.</p>"
)
type eventDimensions = {
  @ocaml.doc(
    "<p>One or more custom metrics that your application reports to Amazon Pinpoint. You can use these metrics as selection criteria when you create an event filter.</p>"
  )
  @as("Metrics")
  metrics: option<mapOfMetricDimension>,
  @ocaml.doc(
    "<p>The name of the event that causes the campaign to be sent or the journey activity to be performed. This can be a standard event that Amazon Pinpoint generates, such as _email.delivered. For campaigns, this can also be a custom event that's specific to your application. For information about standard events, see <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/event-streams.html\">Streaming Amazon Pinpoint Events</a> in the <i>Amazon Pinpoint Developer Guide</i>.</p>"
  )
  @as("EventType")
  eventType: option<setDimension>,
  @ocaml.doc(
    "<p>One or more custom attributes that your application reports to Amazon Pinpoint. You can use these attributes as selection criteria when you create an event filter.</p>"
  )
  @as("Attributes")
  attributes: option<mapOfAttributeDimension>,
}
@ocaml.doc("<p>Provides information about the channel type and other settings for an endpoint.</p>")
type endpointResponse = {
  @ocaml.doc(
    "<p>One or more custom user attributes that your app reports to Amazon Pinpoint for the user who's associated with the endpoint.</p>"
  )
  @as("User")
  user: option<endpointUser>,
  @ocaml.doc("<p>The unique identifier for the most recent request to update the endpoint.</p>")
  @as("RequestId")
  requestId: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.</p>"
  )
  @as("OptOut")
  optOut: option<__string>,
  @ocaml.doc(
    "<p>One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.</p>"
  )
  @as("Metrics")
  metrics: option<mapOf__double>,
  @ocaml.doc("<p>The geographic information for the endpoint.</p>") @as("Location")
  location: option<endpointLocation>,
  @ocaml.doc(
    "<p>The unique identifier that you assigned to the endpoint. The identifier should be a globally unique identifier (GUID) to ensure that it doesn't conflict with other endpoint identifiers that are associated with the application.</p>"
  )
  @as("Id")
  id: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether messages or push notifications are sent to the endpoint. Possible values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint.</p> <p>Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.</p>"
  )
  @as("EndpointStatus")
  endpointStatus: option<__string>,
  @ocaml.doc("<p>The date and time, in ISO 8601 format, when the endpoint was last updated.</p>")
  @as("EffectiveDate")
  effectiveDate: option<__string>,
  @ocaml.doc(
    "<p>The demographic information for the endpoint, such as the time zone and platform.</p>"
  )
  @as("Demographic")
  demographic: option<endpointDemographic>,
  @ocaml.doc("<p>The date and time, in ISO 8601 format, when the endpoint was created.</p>")
  @as("CreationDate")
  creationDate: option<__string>,
  @ocaml.doc(
    "<p>A number from 0-99 that represents the cohort that the endpoint is assigned to. Endpoints are grouped into cohorts randomly, and each cohort contains approximately 1 percent of the endpoints for an application. Amazon Pinpoint assigns cohorts to the holdout or treatment allocations for campaigns.</p>"
  )
  @as("CohortId")
  cohortId: option<__string>,
  @ocaml.doc(
    "<p>The channel that's used when sending messages or push notifications to the endpoint.</p>"
  )
  @as("ChannelType")
  channelType: option<channelType>,
  @ocaml.doc(
    "<p>One or more custom attributes that describe the endpoint by associating a name with an array of values. For example, the value of a custom attribute named Interests might be: [\"Science\", \"Music\", \"Travel\"]. You can use these attributes as filter criteria when you create segments.</p>"
  )
  @as("Attributes")
  attributes: option<mapOfListOf__string>,
  @ocaml.doc(
    "<p>The unique identifier for the application that's associated with the endpoint.</p>"
  )
  @as("ApplicationId")
  applicationId: option<__string>,
  @ocaml.doc(
    "<p>The destination address for messages or push notifications that you send to the endpoint. The address varies by channel. For example, the address for a push-notification channel is typically the token provided by a push notification service, such as an Apple Push Notification service (APNs) device token or a Firebase Cloud Messaging (FCM) registration token. The address for the SMS channel is a phone number in E.164 format, such as +12065550100. The address for the email channel is an email address.</p>"
  )
  @as("Address")
  address: option<__string>,
}
@ocaml.doc("<p>Specifies the channel type and other settings for an endpoint.</p>")
type endpointRequest = {
  @ocaml.doc(
    "<p>One or more custom attributes that describe the user who's associated with the endpoint.</p>"
  )
  @as("User")
  user: option<endpointUser>,
  @ocaml.doc("<p>The unique identifier for the most recent request to update the endpoint.</p>")
  @as("RequestId")
  requestId: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.</p>"
  )
  @as("OptOut")
  optOut: option<__string>,
  @ocaml.doc(
    "<p>One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.</p>"
  )
  @as("Metrics")
  metrics: option<mapOf__double>,
  @ocaml.doc("<p>The geographic information for the endpoint.</p>") @as("Location")
  location: option<endpointLocation>,
  @ocaml.doc(
    "<p>Specifies whether to send messages or push notifications to the endpoint. Valid values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint.</p> <p>Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.</p>"
  )
  @as("EndpointStatus")
  endpointStatus: option<__string>,
  @ocaml.doc("<p>The date and time, in ISO 8601 format, when the endpoint is updated.</p>")
  @as("EffectiveDate")
  effectiveDate: option<__string>,
  @ocaml.doc(
    "<p>The demographic information for the endpoint, such as the time zone and platform.</p>"
  )
  @as("Demographic")
  demographic: option<endpointDemographic>,
  @ocaml.doc(
    "<p>The channel to use when sending messages or push notifications to the endpoint.</p>"
  )
  @as("ChannelType")
  channelType: option<channelType>,
  @ocaml.doc(
    "<p>One or more custom attributes that describe the endpoint by associating a name with an array of values. For example, the value of a custom attribute named Interests might be: [\"Science\", \"Music\", \"Travel\"]. You can use these attributes as filter criteria when you create segments. Attribute names are case sensitive.</p> <p>An attribute name can contain up to 50 characters. An attribute value can contain up to 100 characters. When you define the name of a custom attribute, avoid using the following characters: number sign (#), colon (:), question mark (?), backslash (\\), and slash (/). The Amazon Pinpoint console can't display attribute names that contain these characters. This restriction doesn't apply to attribute values.</p>"
  )
  @as("Attributes")
  attributes: option<mapOfListOf__string>,
  @ocaml.doc(
    "<p>The destination address for messages or push notifications that you send to the endpoint. The address varies by channel. For a push-notification channel, use the token provided by the push notification service, such as an Apple Push Notification service (APNs) device token or a Firebase Cloud Messaging (FCM) registration token. For the SMS channel, use a phone number in E.164 format, such as +12065550100. For the email channel, use an email address.</p>"
  )
  @as("Address")
  address: option<__string>,
}
@ocaml.doc(
  "<p>Specifies an endpoint to create or update and the settings and attributes to set or change for the endpoint.</p>"
)
type endpointBatchItem = {
  @ocaml.doc(
    "<p>One or more custom attributes that describe the user who's associated with the endpoint.</p>"
  )
  @as("User")
  user: option<endpointUser>,
  @ocaml.doc("<p>The unique identifier for the request to create or update the endpoint.</p>")
  @as("RequestId")
  requestId: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.</p>"
  )
  @as("OptOut")
  optOut: option<__string>,
  @ocaml.doc(
    "<p>One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.</p>"
  )
  @as("Metrics")
  metrics: option<mapOf__double>,
  @ocaml.doc("<p>The geographic information for the endpoint.</p>") @as("Location")
  location: option<endpointLocation>,
  @ocaml.doc("<p>The unique identifier for the endpoint in the context of the batch.</p>") @as("Id")
  id: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether to send messages or push notifications to the endpoint. Valid values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint.</p> <p>Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.</p>"
  )
  @as("EndpointStatus")
  endpointStatus: option<__string>,
  @ocaml.doc(
    "<p>The date and time, in ISO 8601 format, when the endpoint was created or updated.</p>"
  )
  @as("EffectiveDate")
  effectiveDate: option<__string>,
  @ocaml.doc(
    "<p>The demographic information for the endpoint, such as the time zone and platform.</p>"
  )
  @as("Demographic")
  demographic: option<endpointDemographic>,
  @ocaml.doc(
    "<p>The channel to use when sending messages or push notifications to the endpoint.</p>"
  )
  @as("ChannelType")
  channelType: option<channelType>,
  @ocaml.doc(
    "<p>One or more custom attributes that describe the endpoint by associating a name with an array of values. For example, the value of a custom attribute named Interests might be: [\"Science\", \"Music\", \"Travel\"]. You can use these attributes as filter criteria when you create segments. Attribute names are case sensitive.</p> <p>An attribute name can contain up to 50 characters. An attribute value can contain up to 100 characters. When you define the name of a custom attribute, avoid using the following characters: number sign (#), colon (:), question mark (?), backslash (\\), and slash (/). The Amazon Pinpoint console can't display attribute names that contain these characters. This restriction doesn't apply to attribute values.</p>"
  )
  @as("Attributes")
  attributes: option<mapOfListOf__string>,
  @ocaml.doc(
    "<p>The destination address for messages or push notifications that you send to the endpoint. The address varies by channel. For a push-notification channel, use the token provided by the push notification service, such as an Apple Push Notification service (APNs) device token or a Firebase Cloud Messaging (FCM) registration token. For the SMS channel, use a phone number in E.164 format, such as +12065550100. For the email channel, use an email address.</p>"
  )
  @as("Address")
  address: option<__string>,
}
@ocaml.doc(
  "<p>Specifies the settings and content for the default message and any default messages that you tailored for specific channels.</p>"
)
type directMessageConfiguration = {
  @ocaml.doc(
    "<p>The default message for the voice channel. This message overrides the default message (DefaultMessage).</p>"
  )
  @as("VoiceMessage")
  voiceMessage: option<voiceMessage>,
  @ocaml.doc(
    "<p>The default message for the SMS channel. This message overrides the default message (DefaultMessage).</p>"
  )
  @as("SMSMessage")
  smsmessage: option<smsmessage>,
  @ocaml.doc(
    "<p>The default push notification message for the GCM channel, which is used to send notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. This message overrides the default push notification message (DefaultPushNotificationMessage).</p>"
  )
  @as("GCMMessage")
  gcmmessage: option<gcmmessage>,
  @ocaml.doc(
    "<p>The default message for the email channel. This message overrides the default message (DefaultMessage).</p>"
  )
  @as("EmailMessage")
  emailMessage: option<emailMessage>,
  @ocaml.doc("<p>The default push notification message for all push notification channels.</p>")
  @as("DefaultPushNotificationMessage")
  defaultPushNotificationMessage: option<defaultPushNotificationMessage>,
  @ocaml.doc("<p>The default message for all channels.</p>") @as("DefaultMessage")
  defaultMessage: option<defaultMessage>,
  @ocaml.doc(
    "<p>The default push notification message for the Baidu (Baidu Cloud Push) channel. This message overrides the default push notification message (DefaultPushNotificationMessage).</p>"
  )
  @as("BaiduMessage")
  baiduMessage: option<baiduMessage>,
  @ocaml.doc(
    "<p>The default push notification message for the APNs (Apple Push Notification service) channel. This message overrides the default push notification message (DefaultPushNotificationMessage).</p>"
  )
  @as("APNSMessage")
  apnsmessage: option<apnsmessage>,
  @ocaml.doc(
    "<p>The default push notification message for the ADM (Amazon Device Messaging) channel. This message overrides the default push notification message (DefaultPushNotificationMessage).</p>"
  )
  @as("ADMMessage")
  admmessage: option<admmessage>,
}
@ocaml.doc("<p>Provides information about all of your applications.</p>")
type applicationsResponse = {
  @ocaml.doc(
    "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
  )
  @as("NextToken")
  nextToken: option<__string>,
  @ocaml.doc("<p>An array of responses, one for each application that was returned.</p>")
  @as("Item")
  item: option<listOfApplicationResponse>,
}
@ocaml.doc(
  "<p>Specifies the configuration and other settings for a message to send to all the endpoints that are associated with a list of users.</p>"
)
type sendUsersMessageRequest = {
  @ocaml.doc(
    "<p>A map that associates user IDs with <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-endpointsendconfiguration\">EndpointSendConfiguration</a> objects. You can use an <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-endpointsendconfiguration\">EndpointSendConfiguration</a> object to tailor the message for a user by specifying settings such as content overrides and message variables.</p>"
  )
  @as("Users")
  users: mapOfEndpointSendConfiguration,
  @ocaml.doc(
    "<p>The unique identifier for tracing the message. This identifier is visible to message recipients.</p>"
  )
  @as("TraceId")
  traceId: option<__string>,
  @ocaml.doc("<p>The message template to use for the message.</p>") @as("TemplateConfiguration")
  templateConfiguration: option<templateConfiguration>,
  @ocaml.doc(
    "<p>The settings and content for the default message and any default messages that you defined for specific channels.</p>"
  )
  @as("MessageConfiguration")
  messageConfiguration: directMessageConfiguration,
  @ocaml.doc(
    "<p>A map of custom attribute-value pairs. For a push notification, Amazon Pinpoint adds these attributes to the data.pinpoint object in the body of the notification payload. Amazon Pinpoint also provides these attributes in the events that it generates for users-messages deliveries.</p>"
  )
  @as("Context")
  context: option<mapOf__string>,
}
@ocaml.doc("<p>Specifies the configuration and other settings for a message.</p>")
type messageRequest = {
  @ocaml.doc(
    "<p>The unique identifier for tracing the message. This identifier is visible to message recipients.</p>"
  )
  @as("TraceId")
  traceId: option<__string>,
  @ocaml.doc("<p>The message template to use for the message.</p>") @as("TemplateConfiguration")
  templateConfiguration: option<templateConfiguration>,
  @ocaml.doc(
    "<p>The settings and content for the default message and any default messages that you defined for specific channels.</p>"
  )
  @as("MessageConfiguration")
  messageConfiguration: directMessageConfiguration,
  @ocaml.doc(
    "<p>A map of key-value pairs, where each key is an endpoint ID and each value is an <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-endpointsendconfiguration\">EndpointSendConfiguration</a> object. You can use an <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-endpointsendconfiguration\">EndpointSendConfiguration</a> object to tailor the message for an endpoint by specifying settings such as content overrides and message variables.</p>"
  )
  @as("Endpoints")
  endpoints: option<mapOfEndpointSendConfiguration>,
  @ocaml.doc(
    "<p>A map of custom attributes to attach to the message. For a push notification, this payload is added to the data.pinpoint object. For an email or text message, this payload is added to email/SMS delivery receipt event attributes.</p>"
  )
  @as("Context")
  context: option<mapOf__string>,
  @ocaml.doc(
    "<p>A map of key-value pairs, where each key is an address and each value is an <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-addressconfiguration\">AddressConfiguration</a> object. An address can be a push notification token, a phone number, or an email address. You can use an <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-addressconfiguration\">AddressConfiguration</a> object to tailor the message for an address by specifying settings such as content overrides and message variables.</p>"
  )
  @as("Addresses")
  addresses: option<mapOfAddressConfiguration>,
}
type listOfSegmentDimensions = array<segmentDimensions>
type listOfEndpointResponse = array<endpointResponse>
type listOfEndpointBatchItem = array<endpointBatchItem>
@ocaml.doc("<p>In-App Template Response.</p>")
type inAppTemplateResponse = {
  @ocaml.doc("<p>The version id of the template.</p>") @as("Version") version: option<__string>,
  @ocaml.doc("<p>The type of the template.</p>") @as("TemplateType") templateType: templateType,
  @ocaml.doc("<p>The name of the template.</p>") @as("TemplateName") templateName: __string,
  @ocaml.doc("<p>The description of the template.</p>") @as("TemplateDescription")
  templateDescription: option<__string>,
  @ocaml.doc(
    "<p>A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>"
  )
  tags: option<mapOf__string>,
  @ocaml.doc("<p>The layout of the message.</p>") @as("Layout") layout: option<layout>,
  @ocaml.doc("<p>The last modified date of the template.</p>") @as("LastModifiedDate")
  lastModifiedDate: __string,
  @ocaml.doc("<p>Custom config to be sent to client.</p>") @as("CustomConfig")
  customConfig: option<mapOf__string>,
  @ocaml.doc("<p>The creation date of the template.</p>") @as("CreationDate")
  creationDate: __string,
  @ocaml.doc(
    "<p>The content of the message, can include up to 5 modals. Each modal must contain a message, a header, and background color. ImageUrl and buttons are optional.</p>"
  )
  @as("Content")
  content: option<listOfInAppMessageContent>,
  @ocaml.doc("<p>The resource arn of the template.</p>") @as("Arn") arn: option<__string>,
}
@ocaml.doc("<p>InApp Template Request.</p>")
type inAppTemplateRequest = {
  @ocaml.doc("<p>The description of the template.</p>") @as("TemplateDescription")
  templateDescription: option<__string>,
  @ocaml.doc(
    "<p>A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>"
  )
  tags: option<mapOf__string>,
  @ocaml.doc("<p>The layout of the message.</p>") @as("Layout") layout: option<layout>,
  @ocaml.doc("<p>Custom config to be sent to client.</p>") @as("CustomConfig")
  customConfig: option<mapOf__string>,
  @ocaml.doc(
    "<p>The content of the message, can include up to 5 modals. Each modal must contain a message, a header, and background color. ImageUrl and buttons are optional.</p>"
  )
  @as("Content")
  content: option<listOfInAppMessageContent>,
}
@ocaml.doc("<p>Provides all fields required for building an in-app message.</p>")
type inAppMessage = {
  @ocaml.doc("<p>The layout of the message.</p>") @as("Layout") layout: option<layout>,
  @ocaml.doc("<p>Custom config to be sent to SDK.</p>") @as("CustomConfig")
  customConfig: option<mapOf__string>,
  @ocaml.doc("<p>In-app message content.</p>") @as("Content")
  content: option<listOfInAppMessageContent>,
}
@ocaml.doc(
  "<p>Provides information about endpoints and the events that they're associated with.</p>"
)
type eventsResponse = {
  @ocaml.doc(
    "<p>A map that contains a multipart response for each endpoint. For each item in this object, the endpoint ID is the key and the item response is the value. If no item response exists, the value can also be one of the following: 202, the request was processed successfully; or 400, the payload wasn't valid or required fields were missing.</p>"
  )
  @as("Results")
  results: option<mapOfItemResponse>,
}
@ocaml.doc("<p>Specifies a batch of endpoints and events to process.</p>")
type eventsBatch = {
  @ocaml.doc("<p>A set of properties that are associated with the event.</p>") @as("Events")
  events: mapOfEvent,
  @ocaml.doc("<p>A set of properties and attributes that are associated with the endpoint.</p>")
  @as("Endpoint")
  endpoint: publicEndpoint,
}
@ocaml.doc(
  "<p>Specifies the settings for an event that causes a campaign to be sent or a journey activity to be performed.</p>"
)
type eventFilter = {
  @ocaml.doc(
    "<p>The type of event that causes the campaign to be sent or the journey activity to be performed. Valid values are: SYSTEM, sends the campaign or performs the activity when a system event occurs; and, ENDPOINT, sends the campaign or performs the activity when an endpoint event (<link  linkend=\"apps-application-id-events\">Events resource</link>) occurs.</p>"
  )
  @as("FilterType")
  filterType: filterType,
  @ocaml.doc(
    "<p>The dimensions for the event filter to use for the campaign or the journey activity.</p>"
  )
  @as("Dimensions")
  dimensions: eventDimensions,
}
@ocaml.doc(
  "<p>Specifies the conditions to evaluate for an event that applies to an activity in a journey.</p>"
)
type eventCondition = {
  @ocaml.doc(
    "<p>The message identifier (message_id) for the message to use when determining whether message events meet the condition.</p>"
  )
  @as("MessageActivity")
  messageActivity: option<__string>,
  @ocaml.doc("<p>The dimensions for the event filter to use for the activity.</p>")
  @as("Dimensions")
  dimensions: option<eventDimensions>,
}
@ocaml.doc("<p>In-app message configuration.</p>")
type campaignInAppMessage = {
  @ocaml.doc("<p>In-app message layout.</p>") @as("Layout") layout: option<layout>,
  @ocaml.doc("<p>Custom config to be sent to client.</p>") @as("CustomConfig")
  customConfig: option<mapOf__string>,
  @ocaml.doc("<p>In-app message content.</p>") @as("Content")
  content: option<listOfInAppMessageContent>,
  @ocaml.doc("<p>The message body of the notification, the email body or the text message.</p>")
  @as("Body")
  body: option<__string>,
}
@ocaml.doc("<p>Specifies the settings for events that cause a campaign to be sent.</p>")
type campaignEventFilter = {
  @ocaml.doc(
    "<p>The type of event that causes the campaign to be sent. Valid values are: SYSTEM, sends the campaign when a system event occurs; and, ENDPOINT, sends the campaign when an endpoint event (<link  linkend=\"apps-application-id-events\">Events</link> resource) occurs.</p>"
  )
  @as("FilterType")
  filterType: filterType,
  @ocaml.doc("<p>The dimension settings of the event filter for the campaign.</p>")
  @as("Dimensions")
  dimensions: eventDimensions,
}
@ocaml.doc(
  "<p>Provides the results of a query that retrieved the data for a standard metric that applies to an application, campaign, or journey.</p>"
)
type baseKpiResult = {
  @ocaml.doc(
    "<p>An array of objects that provides the results of a query that retrieved the data for a standard metric that applies to an application, campaign, or journey.</p>"
  )
  @as("Rows")
  rows: listOfResultRow,
}
@ocaml.doc("<p>Specifies a condition to evaluate for an activity in a journey.</p>")
type simpleCondition = {
  @ocaml.doc("<p>The dimension settings for the segment that's associated with the activity.</p>")
  @as("SegmentDimensions")
  segmentDimensions: option<segmentDimensions>,
  @ocaml.doc("<p>The segment that's associated with the activity.</p>") @as("SegmentCondition")
  segmentCondition: option<segmentCondition>,
  @ocaml.doc("<p>The dimension settings for the event that's associated with the activity.</p>")
  @as("EventCondition")
  eventCondition: option<eventCondition>,
}
@ocaml.doc(
  "<p>Specifies the base segments and dimensions for a segment, and the relationships between these base segments and dimensions.</p>"
)
type segmentGroup = {
  @ocaml.doc(
    "<p>Specifies how to handle multiple dimensions for the segment. For example, if you specify three dimensions for the segment, whether the resulting segment includes endpoints that match all, any, or none of the dimensions.</p>"
  )
  @as("Type")
  type_: option<type_>,
  @ocaml.doc(
    "<p>Specifies how to handle multiple base segments for the segment. For example, if you specify three base segments for the segment, whether the resulting segment is based on all, any, or none of the base segments.</p>"
  )
  @as("SourceType")
  sourceType: option<sourceType>,
  @ocaml.doc(
    "<p>The base segment to build the segment on. A base segment, also referred to as a <i>source segment</i>, defines the initial population of endpoints for a segment. When you add dimensions to a segment, Amazon Pinpoint filters the base segment by using the dimensions that you specify.</p> <p>You can specify more than one dimensional segment or only one imported segment. If you specify an imported segment, the Amazon Pinpoint console displays a segment size estimate that indicates the size of the imported segment without any filters applied to it.</p>"
  )
  @as("SourceSegments")
  sourceSegments: option<listOfSegmentReference>,
  @ocaml.doc("<p>An array that defines the dimensions for the segment.</p>") @as("Dimensions")
  dimensions: option<listOfSegmentDimensions>,
}
@ocaml.doc("<p>Specifies the schedule settings for a campaign.</p>")
type schedule = {
  @ocaml.doc("<p>The starting UTC offset for the campaign schedule, if the value of the IsLocalTime property is true. Valid values are: UTC, UTC+01, UTC+02, UTC+03, UTC+03:30, UTC+04, UTC+04:30, UTC+05,
                  UTC+05:30, UTC+05:45, UTC+06, UTC+06:30, UTC+07, UTC+08, UTC+09, UTC+09:30,
                  UTC+10, UTC+10:30, UTC+11, UTC+12, UTC+13, UTC-02, UTC-03, UTC-04, UTC-05, UTC-06,
                  UTC-07, UTC-08, UTC-09, UTC-10, and UTC-11.</p>")
  @as("Timezone")
  timezone: option<__string>,
  @ocaml.doc(
    "<p>The scheduled time when the campaign began or will begin. Valid values are: IMMEDIATE, to start the campaign immediately; or, a specific time in ISO 8601 format.</p>"
  )
  @as("StartTime")
  startTime: __string,
  @ocaml.doc(
    "<p>The default quiet time for the campaign. Quiet time is a specific time range when a campaign doesn't send messages to endpoints, if all the following conditions are met:</p> <ul><li><p>The EndpointDemographic.Timezone property of the endpoint is set to a valid value.</p></li> <li><p>The current time in the endpoint's time zone is later than or equal to the time specified by the QuietTime.Start property for the campaign.</p></li> <li><p>The current time in the endpoint's time zone is earlier than or equal to the time specified by the QuietTime.End property for the campaign.</p></li></ul> <p>If any of the preceding conditions isn't met, the endpoint will receive messages from the campaign, even if quiet time is enabled.</p>"
  )
  @as("QuietTime")
  quietTime: option<quietTime>,
  @ocaml.doc(
    "<p>Specifies whether the start and end times for the campaign schedule use each recipient's local time. To base the schedule on each recipient's local time, set this value to true.</p>"
  )
  @as("IsLocalTime")
  isLocalTime: option<__boolean>,
  @ocaml.doc(
    "<p>Specifies how often the campaign is sent or whether the campaign is sent in response to a specific event.</p>"
  )
  @as("Frequency")
  frequency: option<frequency>,
  @ocaml.doc(
    "<p>The type of event that causes the campaign to be sent, if the value of the Frequency property is EVENT.</p>"
  )
  @as("EventFilter")
  eventFilter: option<campaignEventFilter>,
  @ocaml.doc("<p>The scheduled time, in ISO 8601 format, when the campaign ended or will end.</p>")
  @as("EndTime")
  endTime: option<__string>,
}
@ocaml.doc("<p>Specifies the message configuration settings for a campaign.</p>")
type messageConfiguration = {
  @ocaml.doc("<p>The in-app message configuration.</p>") @as("InAppMessage")
  inAppMessage: option<campaignInAppMessage>,
  @ocaml.doc(
    "<p>The message that the campaign sends through the SMS channel. If specified, this message overrides the default message.</p>"
  )
  @as("SMSMessage")
  smsmessage: option<campaignSmsMessage>,
  @ocaml.doc(
    "<p>The message that the campaign sends through the GCM channel, which enables Amazon Pinpoint to send push notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. If specified, this message overrides the default message.</p>"
  )
  @as("GCMMessage")
  gcmmessage: option<message>,
  @ocaml.doc(
    "<p>The message that the campaign sends through the email channel. If specified, this message overrides the default message.</p>"
  )
  @as("EmailMessage")
  emailMessage: option<campaignEmailMessage>,
  @ocaml.doc(
    "<p>The default message that the campaign sends through all the channels that are configured for the campaign.</p>"
  )
  @as("DefaultMessage")
  defaultMessage: option<message>,
  @ocaml.doc(
    "<p>The message that the campaign sends through a custom channel, as specified by the delivery configuration (CustomDeliveryConfiguration) settings for the campaign. If specified, this message overrides the default message.</p>"
  )
  @as("CustomMessage")
  customMessage: option<campaignCustomMessage>,
  @ocaml.doc(
    "<p>The message that the campaign sends through the Baidu (Baidu Cloud Push) channel. If specified, this message overrides the default message.</p>"
  )
  @as("BaiduMessage")
  baiduMessage: option<message>,
  @ocaml.doc(
    "<p>The message that the campaign sends through the APNs (Apple Push Notification service) channel. If specified, this message overrides the default message.</p>"
  )
  @as("APNSMessage")
  apnsmessage: option<message>,
  @ocaml.doc(
    "<p>The message that the campaign sends through the ADM (Amazon Device Messaging) channel. If specified, this message overrides the default message.</p>"
  )
  @as("ADMMessage")
  admmessage: option<message>,
}
type mapOfEventsBatch = Js.Dict.t<eventsBatch>
@ocaml.doc(
  "<p>Provides the results of a query that retrieved the data for a standard engagement metric that applies to a journey, and provides information about that query.</p>"
)
type journeyDateRangeKpiResponse = {
  @ocaml.doc(
    "<p>The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>"
  )
  @as("StartTime")
  startTime: __timestampIso8601,
  @ocaml.doc(
    "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Journey Engagement Metrics resource because the resource returns all results in a single page.</p>"
  )
  @as("NextToken")
  nextToken: option<__string>,
  @ocaml.doc(
    "<p>An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.</p>"
  )
  @as("KpiResult")
  kpiResult: baseKpiResult,
  @ocaml.doc(
    "<p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html\">Amazon Pinpoint Developer Guide</a>.</p>"
  )
  @as("KpiName")
  kpiName: __string,
  @ocaml.doc("<p>The unique identifier for the journey that the metric applies to.</p>")
  @as("JourneyId")
  journeyId: __string,
  @ocaml.doc(
    "<p>The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>"
  )
  @as("EndTime")
  endTime: __timestampIso8601,
  @ocaml.doc("<p>The unique identifier for the application that the metric applies to.</p>")
  @as("ApplicationId")
  applicationId: __string,
}
@ocaml.doc("<p>Schedule of the campaign.</p>")
type inAppCampaignSchedule = {
  @ocaml.doc("<p>Time during which the in-app message should not be shown to the user.</p>")
  @as("QuietTime")
  quietTime: option<quietTime>,
  @ocaml.doc(
    "<p>The event filter the SDK has to use to show the in-app message in the application.</p>"
  )
  @as("EventFilter")
  eventFilter: option<campaignEventFilter>,
  @ocaml.doc(
    "<p>The scheduled time after which the in-app message should not be shown. Timestamp is in ISO 8601 format.</p>"
  )
  @as("EndDate")
  endDate: option<__string>,
}
@ocaml.doc("<p>Specifies the settings for an event that causes a journey activity to start.</p>")
type eventStartCondition = {
  @as("SegmentId") segmentId: option<__string>,
  @as("EventFilter") eventFilter: option<eventFilter>,
}
@ocaml.doc(
  "<p>Provides information about all the endpoints that are associated with a user ID.</p>"
)
type endpointsResponse = {
  @ocaml.doc(
    "<p>An array of responses, one for each endpoint that's associated with the user ID.</p>"
  )
  @as("Item")
  item: listOfEndpointResponse,
}
@ocaml.doc(
  "<p>Specifies a batch of endpoints to create or update and the settings and attributes to set or change for each endpoint.</p>"
)
type endpointBatchRequest = {
  @ocaml.doc(
    "<p>An array that defines the endpoints to create or update and, for each endpoint, the property values to set or change. An array can contain a maximum of 100 items.</p>"
  )
  @as("Item")
  item: listOfEndpointBatchItem,
}
@ocaml.doc(
  "<p>Provides the results of a query that retrieved the data for a standard metric that applies to a campaign, and provides information about that query.</p>"
)
type campaignDateRangeKpiResponse = {
  @ocaml.doc(
    "<p>The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>"
  )
  @as("StartTime")
  startTime: __timestampIso8601,
  @ocaml.doc(
    "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Campaign Metrics resource because the resource returns all results in a single page.</p>"
  )
  @as("NextToken")
  nextToken: option<__string>,
  @ocaml.doc(
    "<p>An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.</p>"
  )
  @as("KpiResult")
  kpiResult: baseKpiResult,
  @ocaml.doc(
    "<p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html\">Amazon Pinpoint Developer Guide</a>.</p>"
  )
  @as("KpiName")
  kpiName: __string,
  @ocaml.doc(
    "<p>The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>"
  )
  @as("EndTime")
  endTime: __timestampIso8601,
  @ocaml.doc("<p>The unique identifier for the campaign that the metric applies to.</p>")
  @as("CampaignId")
  campaignId: __string,
  @ocaml.doc("<p>The unique identifier for the application that the metric applies to.</p>")
  @as("ApplicationId")
  applicationId: __string,
}
@ocaml.doc(
  "<p>Provides the results of a query that retrieved the data for a standard metric that applies to an application, and provides information about that query.</p>"
)
type applicationDateRangeKpiResponse = {
  @ocaml.doc(
    "<p>The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>"
  )
  @as("StartTime")
  startTime: __timestampIso8601,
  @ocaml.doc(
    "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Application Metrics resource because the resource returns all results in a single page.</p>"
  )
  @as("NextToken")
  nextToken: option<__string>,
  @ocaml.doc(
    "<p>An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.</p>"
  )
  @as("KpiResult")
  kpiResult: baseKpiResult,
  @ocaml.doc(
    "<p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html\">Amazon Pinpoint Developer Guide</a>.</p>"
  )
  @as("KpiName")
  kpiName: __string,
  @ocaml.doc(
    "<p>The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>"
  )
  @as("EndTime")
  endTime: __timestampIso8601,
  @ocaml.doc("<p>The unique identifier for the application that the metric applies to.</p>")
  @as("ApplicationId")
  applicationId: __string,
}
@ocaml.doc(
  "<p>Specifies the settings for a campaign treatment. A <i>treatment</i> is a variation of a campaign that's used for A/B testing of a campaign.</p>"
)
type writeTreatmentResource = {
  @ocaml.doc("<p>A custom name for the treatment.</p>") @as("TreatmentName")
  treatmentName: option<__string>,
  @ocaml.doc("<p>A custom description of the treatment.</p>") @as("TreatmentDescription")
  treatmentDescription: option<__string>,
  @ocaml.doc("<p>The message template to use for the treatment.</p>") @as("TemplateConfiguration")
  templateConfiguration: option<templateConfiguration>,
  @ocaml.doc("<p>The allocated percentage of users (segment members) to send the treatment to.</p>")
  @as("SizePercent")
  sizePercent: __integer,
  @ocaml.doc("<p>The schedule settings for the treatment.</p>") @as("Schedule")
  schedule: option<schedule>,
  @ocaml.doc("<p>The message configuration settings for the treatment.</p>")
  @as("MessageConfiguration")
  messageConfiguration: option<messageConfiguration>,
  @ocaml.doc(
    "<p>The delivery configuration settings for sending the treatment through a custom channel. This object is required if the MessageConfiguration object for the treatment specifies a CustomMessage object.</p>"
  )
  @as("CustomDeliveryConfiguration")
  customDeliveryConfiguration: option<customDeliveryConfiguration>,
}
@ocaml.doc(
  "<p>Specifies the settings for a campaign treatment. A <i>treatment</i> is a variation of a campaign that's used for A/B testing of a campaign.</p>"
)
type treatmentResource = {
  @ocaml.doc("<p>The custom name of the treatment.</p>") @as("TreatmentName")
  treatmentName: option<__string>,
  @ocaml.doc("<p>The custom description of the treatment.</p>") @as("TreatmentDescription")
  treatmentDescription: option<__string>,
  @ocaml.doc("<p>The message template to use for the treatment.</p>") @as("TemplateConfiguration")
  templateConfiguration: option<templateConfiguration>,
  @ocaml.doc("<p>The current status of the treatment.</p>") @as("State")
  state: option<campaignState>,
  @ocaml.doc(
    "<p>The allocated percentage of users (segment members) that the treatment is sent to.</p>"
  )
  @as("SizePercent")
  sizePercent: __integer,
  @ocaml.doc("<p>The schedule settings for the treatment.</p>") @as("Schedule")
  schedule: option<schedule>,
  @ocaml.doc("<p>The message configuration settings for the treatment.</p>")
  @as("MessageConfiguration")
  messageConfiguration: option<messageConfiguration>,
  @ocaml.doc("<p>The unique identifier for the treatment.</p>") @as("Id") id: __string,
  @ocaml.doc(
    "<p>The delivery configuration settings for sending the treatment through a custom channel. This object is required if the MessageConfiguration object for the treatment specifies a CustomMessage object.</p>"
  )
  @as("CustomDeliveryConfiguration")
  customDeliveryConfiguration: option<customDeliveryConfiguration>,
}
@ocaml.doc(
  "<p>Specifies the conditions for the first activity in a journey. This activity and its conditions determine which users are participants in a journey.</p>"
)
type startCondition = {
  @ocaml.doc(
    "<p>The segment that's associated with the first activity in the journey. This segment determines which users are participants in the journey.</p>"
  )
  @as("SegmentStartCondition")
  segmentStartCondition: option<segmentCondition>,
  @as("EventStartCondition") eventStartCondition: option<eventStartCondition>,
  @ocaml.doc("<p>The custom description of the condition.</p>") @as("Description")
  description: option<__string>,
}
@ocaml.doc("<p>Specifies a condition to evaluate for an activity path in a journey.</p>")
type multiConditionalBranch = {
  @ocaml.doc(
    "<p>The unique identifier for the next activity to perform, after completing the activity for the path.</p>"
  )
  @as("NextActivity")
  nextActivity: option<__string>,
  @ocaml.doc("<p>The condition to evaluate for the activity path.</p>") @as("Condition")
  condition: option<simpleCondition>,
}
type listOfSimpleCondition = array<simpleCondition>
type listOfSegmentGroup = array<segmentGroup>
@ocaml.doc("<p>Targeted in-app message campaign.</p>")
type inAppMessageCampaign = {
  @ocaml.doc("<p>Treatment id of the campaign.</p>") @as("TreatmentId")
  treatmentId: option<__string>,
  @ocaml.doc(
    "<p>Total cap which controls the number of times an in-app message can be shown to the endpoint.</p>"
  )
  @as("TotalCap")
  totalCap: option<__integer>,
  @ocaml.doc(
    "<p>Session cap which controls the number of times an in-app message can be shown to the endpoint during an application session.</p>"
  )
  @as("SessionCap")
  sessionCap: option<__integer>,
  @ocaml.doc("<p>Schedule of the campaign.</p>") @as("Schedule")
  schedule: option<inAppCampaignSchedule>,
  @ocaml.doc("<p>Priority of the in-app message.</p>") @as("Priority") priority: option<__integer>,
  @ocaml.doc(
    "<p>In-app message content with all fields required for rendering an in-app message.</p>"
  )
  @as("InAppMessage")
  inAppMessage: option<inAppMessage>,
  @ocaml.doc(
    "<p>Daily cap which controls the number of times any in-app messages can be shown to the endpoint during a day.</p>"
  )
  @as("DailyCap")
  dailyCap: option<__integer>,
  @ocaml.doc("<p>Campaign id of the corresponding campaign.</p>") @as("CampaignId")
  campaignId: option<__string>,
}
@ocaml.doc("<p>Specifies a batch of events to process.</p>")
type eventsRequest = {
  @ocaml.doc(
    "<p>The batch of events to process. For each item in a batch, the endpoint ID acts as a key that has an EventsBatch object as its value.</p>"
  )
  @as("BatchItem")
  batchItem: mapOfEventsBatch,
}
@ocaml.doc(
  "<p>Specifies the settings that define the relationships between segment groups for a segment.</p>"
)
type segmentGroupList = {
  @ocaml.doc(
    "<p>Specifies how to handle multiple segment groups for the segment. For example, if the segment includes three segment groups, whether the resulting segment includes endpoints that match all, any, or none of the segment groups.</p>"
  )
  @as("Include")
  include_: option<include_>,
  @ocaml.doc(
    "<p>An array that defines the set of segment criteria to evaluate when handling segment groups for the segment.</p>"
  )
  @as("Groups")
  groups: option<listOfSegmentGroup>,
}
type listOfWriteTreatmentResource = array<writeTreatmentResource>
type listOfTreatmentResource = array<treatmentResource>
type listOfMultiConditionalBranch = array<multiConditionalBranch>
type listOfInAppMessageCampaign = array<inAppMessageCampaign>
@ocaml.doc(
  "<p>Specifies the conditions to evaluate for an activity in a journey, and how to evaluate those conditions.</p>"
)
type condition = {
  @ocaml.doc(
    "<p>Specifies how to handle multiple conditions for the activity. For example, if you specify two conditions for an activity, whether both or only one of the conditions must be met for the activity to be performed.</p>"
  )
  @as("Operator")
  operator: option<operator>,
  @ocaml.doc("<p>The conditions to evaluate for the activity.</p>") @as("Conditions")
  conditions: option<listOfSimpleCondition>,
}
@ocaml.doc(
  "<p>Specifies the configuration, dimension, and other settings for a segment. A WriteSegmentRequest object can include a Dimensions object or a SegmentGroups object, but not both.</p>"
)
type writeSegmentRequest = {
  @ocaml.doc(
    "<p>A string-to-string map of key-value pairs that defines the tags to associate with the segment. Each tag consists of a required tag key and an associated tag value.</p>"
  )
  tags: option<mapOf__string>,
  @ocaml.doc(
    "<p>The segment group to use and the dimensions to apply to the group's base segments in order to build the segment. A segment group can consist of zero or more base segments. Your request can include only one segment group.</p>"
  )
  @as("SegmentGroups")
  segmentGroups: option<segmentGroupList>,
  @ocaml.doc("<p>The name of the segment.</p>") @as("Name") name: option<__string>,
  @ocaml.doc("<p>The criteria that define the dimensions for the segment.</p>") @as("Dimensions")
  dimensions: option<segmentDimensions>,
}
@ocaml.doc("<p>Specifies the configuration and other settings for a campaign.</p>")
type writeCampaignRequest = {
  @ocaml.doc(
    "<p>Defines the priority of the campaign, used to decide the order of messages displayed to user if there are multiple messages scheduled to be displayed at the same moment.</p>"
  )
  @as("Priority")
  priority: option<__integer>,
  @ocaml.doc(
    "<p>A custom name of the default treatment for the campaign, if the campaign has multiple treatments. A <i>treatment</i> is a variation of a campaign that's used for A/B testing.</p>"
  )
  @as("TreatmentName")
  treatmentName: option<__string>,
  @ocaml.doc("<p>A custom description of the default treatment for the campaign.</p>")
  @as("TreatmentDescription")
  treatmentDescription: option<__string>,
  @ocaml.doc("<p>The message template to use for the campaign.</p>") @as("TemplateConfiguration")
  templateConfiguration: option<templateConfiguration>,
  @ocaml.doc(
    "<p>A string-to-string map of key-value pairs that defines the tags to associate with the campaign. Each tag consists of a required tag key and an associated tag value.</p>"
  )
  tags: option<mapOf__string>,
  @ocaml.doc("<p>The version of the segment to associate with the campaign.</p>")
  @as("SegmentVersion")
  segmentVersion: option<__integer>,
  @ocaml.doc("<p>The unique identifier for the segment to associate with the campaign.</p>")
  @as("SegmentId")
  segmentId: option<__string>,
  @ocaml.doc("<p>The schedule settings for the campaign.</p>") @as("Schedule")
  schedule: option<schedule>,
  @ocaml.doc("<p>A custom name for the campaign.</p>") @as("Name") name: option<__string>,
  @ocaml.doc("<p>The message configuration settings for the campaign.</p>")
  @as("MessageConfiguration")
  messageConfiguration: option<messageConfiguration>,
  @ocaml.doc("<p>The messaging limits for the campaign.</p>") @as("Limits")
  limits: option<campaignLimits>,
  @ocaml.doc(
    "<p>Specifies whether to pause the campaign. A paused campaign doesn't run unless you resume it by changing this value to false.</p>"
  )
  @as("IsPaused")
  isPaused: option<__boolean>,
  @ocaml.doc(
    "<p>The settings for the AWS Lambda function to invoke as a code hook for the campaign. You can use this hook to customize the segment that's used by the campaign.</p>"
  )
  @as("Hook")
  hook: option<campaignHook>,
  @ocaml.doc(
    "<p>The allocated percentage of users (segment members) who shouldn't receive messages from the campaign.</p>"
  )
  @as("HoldoutPercent")
  holdoutPercent: option<__integer>,
  @ocaml.doc("<p>A custom description of the campaign.</p>") @as("Description")
  description: option<__string>,
  @ocaml.doc(
    "<p>The delivery configuration settings for sending the campaign through a custom channel. This object is required if the MessageConfiguration object for the campaign specifies a CustomMessage object.</p>"
  )
  @as("CustomDeliveryConfiguration")
  customDeliveryConfiguration: option<customDeliveryConfiguration>,
  @ocaml.doc(
    "<p>An array of requests that defines additional treatments for the campaign, in addition to the default treatment for the campaign.</p>"
  )
  @as("AdditionalTreatments")
  additionalTreatments: option<listOfWriteTreatmentResource>,
}
@ocaml.doc(
  "<p>Provides information about the configuration, dimension, and other settings for a segment.</p>"
)
type segmentResponse = {
  @ocaml.doc("<p>The version number of the segment.</p>") @as("Version") version: option<__integer>,
  @ocaml.doc(
    "<p>A string-to-string map of key-value pairs that identifies the tags that are associated with the segment. Each tag consists of a required tag key and an associated tag value.</p>"
  )
  tags: option<mapOf__string>,
  @ocaml.doc(
    "<p>The segment type. Valid values are:</p> <ul><li><p>DIMENSIONAL - A dynamic segment, which is a segment that uses selection criteria that you specify and is based on endpoint data that's reported by your app. Dynamic segments can change over time.</p></li> <li><p>IMPORT - A static segment, which is a segment that uses selection criteria that you specify and is based on endpoint definitions that you import from a file. Imported segments are static; they don't change over time.</p></li></ul>"
  )
  @as("SegmentType")
  segmentType: segmentType,
  @ocaml.doc(
    "<p>A list of one or more segment groups that apply to the segment. Each segment group consists of zero or more base segments and the dimensions that are applied to those base segments.</p>"
  )
  @as("SegmentGroups")
  segmentGroups: option<segmentGroupList>,
  @ocaml.doc("<p>The name of the segment.</p>") @as("Name") name: option<__string>,
  @ocaml.doc("<p>The date and time when the segment was last modified.</p>") @as("LastModifiedDate")
  lastModifiedDate: option<__string>,
  @ocaml.doc("<p>The settings for the import job that's associated with the segment.</p>")
  @as("ImportDefinition")
  importDefinition: option<segmentImportResource>,
  @ocaml.doc("<p>The unique identifier for the segment.</p>") @as("Id") id: __string,
  @ocaml.doc("<p>The dimension settings for the segment.</p>") @as("Dimensions")
  dimensions: option<segmentDimensions>,
  @ocaml.doc("<p>The date and time when the segment was created.</p>") @as("CreationDate")
  creationDate: __string,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the segment.</p>") @as("Arn") arn: __string,
  @ocaml.doc(
    "<p>The unique identifier for the application that the segment is associated with.</p>"
  )
  @as("ApplicationId")
  applicationId: __string,
}
@ocaml.doc(
  "<p>Specifies the settings for a multivariate split activity in a journey. This type of activity sends participants down one of as many as five paths (including a default <i>Else</i> path) in a journey, based on conditions that you specify.</p> <note><p>To create multivariate split activities that send participants down different paths based on push notification events (such as Open or Received events), your mobile app has to specify the User ID and Endpoint ID values. For more information, see <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/integrate.html\">Integrating Amazon Pinpoint with your application</a> in the <i>Amazon Pinpoint Developer Guide</i>.</p></note>"
)
type multiConditionalSplitActivity = {
  @ocaml.doc(
    "<p>The amount of time to wait or the date and time when Amazon Pinpoint determines whether the conditions are met.</p>"
  )
  @as("EvaluationWaitTime")
  evaluationWaitTime: option<waitTime>,
  @ocaml.doc(
    "<p>The unique identifier for the activity to perform for participants who don't meet any of the conditions specified for other paths in the activity.</p>"
  )
  @as("DefaultActivity")
  defaultActivity: option<__string>,
  @ocaml.doc(
    "<p>The paths for the activity, including the conditions for entering each path and the activity to perform for each path.</p>"
  )
  @as("Branches")
  branches: option<listOfMultiConditionalBranch>,
}
@ocaml.doc("<p>Get in-app messages response object.</p>")
type inAppMessagesResponse = {
  @ocaml.doc("<p>List of targeted in-app message campaigns.</p>") @as("InAppMessageCampaigns")
  inAppMessageCampaigns: option<listOfInAppMessageCampaign>,
}
@ocaml.doc(
  "<p>Specifies the settings for a yes/no split activity in a journey. This type of activity sends participants down one of two paths in a journey, based on conditions that you specify.</p> <note><p>To create yes/no split activities that send participants down different paths based on push notification events (such as Open or Received events), your mobile app has to specify the User ID and Endpoint ID values. For more information, see <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/integrate.html\">Integrating Amazon Pinpoint with your application</a> in the <i>Amazon Pinpoint Developer Guide</i>.</p></note>"
)
type conditionalSplitActivity = {
  @ocaml.doc("<p>The unique identifier for the activity to perform if the conditions are met.</p>")
  @as("TrueActivity")
  trueActivity: option<__string>,
  @ocaml.doc(
    "<p>The unique identifier for the activity to perform if the conditions aren't met.</p>"
  )
  @as("FalseActivity")
  falseActivity: option<__string>,
  @ocaml.doc(
    "<p>The amount of time to wait before determining whether the conditions are met, or the date and time when Amazon Pinpoint determines whether the conditions are met.</p>"
  )
  @as("EvaluationWaitTime")
  evaluationWaitTime: option<waitTime>,
  @ocaml.doc(
    "<p>The conditions that define the paths for the activity, and the relationship between the conditions.</p>"
  )
  @as("Condition")
  condition: option<condition>,
}
@ocaml.doc(
  "<p>Provides information about the status, configuration, and other settings for a campaign.</p>"
)
type campaignResponse = {
  @ocaml.doc(
    "<p>Defines the priority of the campaign, used to decide the order of messages displayed to user if there are multiple messages scheduled to be displayed at the same moment.</p>"
  )
  @as("Priority")
  priority: option<__integer>,
  @ocaml.doc("<p>The version number of the campaign.</p>") @as("Version")
  version: option<__integer>,
  @ocaml.doc(
    "<p>The custom name of the default treatment for the campaign, if the campaign has multiple treatments. A <i>treatment</i> is a variation of a campaign that's used for A/B testing.</p>"
  )
  @as("TreatmentName")
  treatmentName: option<__string>,
  @ocaml.doc("<p>The custom description of the default treatment for the campaign.</p>")
  @as("TreatmentDescription")
  treatmentDescription: option<__string>,
  @ocaml.doc("<p>The message template that’s used for the campaign.</p>")
  @as("TemplateConfiguration")
  templateConfiguration: option<templateConfiguration>,
  @ocaml.doc(
    "<p>A string-to-string map of key-value pairs that identifies the tags that are associated with the campaign. Each tag consists of a required tag key and an associated tag value.</p>"
  )
  tags: option<mapOf__string>,
  @ocaml.doc("<p>The current status of the campaign.</p>") @as("State")
  state: option<campaignState>,
  @ocaml.doc("<p>The version number of the segment that's associated with the campaign.</p>")
  @as("SegmentVersion")
  segmentVersion: __integer,
  @ocaml.doc("<p>The unique identifier for the segment that's associated with the campaign.</p>")
  @as("SegmentId")
  segmentId: __string,
  @ocaml.doc("<p>The schedule settings for the campaign.</p>") @as("Schedule")
  schedule: option<schedule>,
  @ocaml.doc("<p>The name of the campaign.</p>") @as("Name") name: option<__string>,
  @ocaml.doc("<p>The message configuration settings for the campaign.</p>")
  @as("MessageConfiguration")
  messageConfiguration: option<messageConfiguration>,
  @ocaml.doc("<p>The messaging limits for the campaign.</p>") @as("Limits")
  limits: option<campaignLimits>,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the campaign was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: __string,
  @ocaml.doc(
    "<p>Specifies whether the campaign is paused. A paused campaign doesn't run unless you resume it by changing this value to false.</p>"
  )
  @as("IsPaused")
  isPaused: option<__boolean>,
  @ocaml.doc("<p>The unique identifier for the campaign.</p>") @as("Id") id: __string,
  @ocaml.doc(
    "<p>The settings for the AWS Lambda function to use as a code hook for the campaign. You can use this hook to customize the segment that's used by the campaign.</p>"
  )
  @as("Hook")
  hook: option<campaignHook>,
  @ocaml.doc(
    "<p>The allocated percentage of users (segment members) who shouldn't receive messages from the campaign.</p>"
  )
  @as("HoldoutPercent")
  holdoutPercent: option<__integer>,
  @ocaml.doc("<p>The custom description of the campaign.</p>") @as("Description")
  description: option<__string>,
  @ocaml.doc(
    "<p>The current status of the campaign's default treatment. This value exists only for campaigns that have more than one treatment.</p>"
  )
  @as("DefaultState")
  defaultState: option<campaignState>,
  @ocaml.doc(
    "<p>The delivery configuration settings for sending the campaign through a custom channel.</p>"
  )
  @as("CustomDeliveryConfiguration")
  customDeliveryConfiguration: option<customDeliveryConfiguration>,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the campaign was created.</p>")
  @as("CreationDate")
  creationDate: __string,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the campaign.</p>") @as("Arn") arn: __string,
  @ocaml.doc("<p>The unique identifier for the application that the campaign applies to.</p>")
  @as("ApplicationId")
  applicationId: __string,
  @ocaml.doc(
    "<p>An array of responses, one for each treatment that you defined for the campaign, in addition to the default treatment.</p>"
  )
  @as("AdditionalTreatments")
  additionalTreatments: option<listOfTreatmentResource>,
}
type listOfSegmentResponse = array<segmentResponse>
type listOfCampaignResponse = array<campaignResponse>
@ocaml.doc("<p>Specifies the configuration and other settings for an activity in a journey.</p>")
type activity = {
  @ocaml.doc(
    "<p>The settings for a connect activity. This type of activity initiates a contact center call to participants.</p>"
  )
  @as("ContactCenter")
  contactCenter: option<contactCenterActivity>,
  @ocaml.doc(
    "<p>The settings for a wait activity. This type of activity waits for a certain amount of time or until a specific date and time before moving participants to the next activity in a journey.</p>"
  )
  @as("Wait")
  wait: option<waitActivity>,
  @ocaml.doc(
    "<p>The settings for an SMS activity. This type of activity sends a text message to participants.</p>"
  )
  @as("SMS")
  sms: option<smsmessageActivity>,
  @ocaml.doc(
    "<p>The settings for a random split activity. This type of activity randomly sends specified percentages of participants down one of as many as five paths in a journey, based on conditions that you specify.</p>"
  )
  @as("RandomSplit")
  randomSplit: option<randomSplitActivity>,
  @ocaml.doc(
    "<p>The settings for a push notification activity. This type of activity sends a push notification to participants.</p>"
  )
  @as("PUSH")
  push: option<pushMessageActivity>,
  @ocaml.doc(
    "<p>The settings for a multivariate split activity. This type of activity sends participants down one of as many as five paths (including a default <i>Else</i> path) in a journey, based on conditions that you specify.</p>"
  )
  @as("MultiCondition")
  multiCondition: option<multiConditionalSplitActivity>,
  @ocaml.doc(
    "<p>The settings for a holdout activity. This type of activity stops a journey for a specified percentage of participants.</p>"
  )
  @as("Holdout")
  holdout: option<holdoutActivity>,
  @ocaml.doc(
    "<p>The settings for an email activity. This type of activity sends an email message to participants.</p>"
  )
  @as("EMAIL")
  email: option<emailMessageActivity>,
  @ocaml.doc("<p>The custom description of the activity.</p>") @as("Description")
  description: option<__string>,
  @ocaml.doc(
    "<p>The settings for a yes/no split activity. This type of activity sends participants down one of two paths in a journey, based on conditions that you specify.</p>"
  )
  @as("ConditionalSplit")
  conditionalSplit: option<conditionalSplitActivity>,
  @ocaml.doc(
    "<p>The settings for a custom message activity. This type of activity calls an AWS Lambda function or web hook that sends messages to participants.</p>"
  )
  @as("CUSTOM")
  custom: option<customMessageActivity>,
}
@ocaml.doc(
  "<p>Provides information about all the segments that are associated with an application.</p>"
)
type segmentsResponse = {
  @ocaml.doc(
    "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
  )
  @as("NextToken")
  nextToken: option<__string>,
  @ocaml.doc(
    "<p>An array of responses, one for each segment that's associated with the application (Segments resource) or each version of a segment that's associated with the application (Segment Versions resource).</p>"
  )
  @as("Item")
  item: listOfSegmentResponse,
}
type mapOfActivity = Js.Dict.t<activity>
@ocaml.doc(
  "<p>Provides information about the configuration and other settings for all the campaigns that are associated with an application.</p>"
)
type campaignsResponse = {
  @ocaml.doc(
    "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
  )
  @as("NextToken")
  nextToken: option<__string>,
  @ocaml.doc(
    "<p>An array of responses, one for each campaign that's associated with the application.</p>"
  )
  @as("Item")
  item: listOfCampaignResponse,
}
@ocaml.doc("<p>Specifies the configuration and other settings for a journey.</p>")
type writeJourneyRequest = {
  @ocaml.doc("<p>The channel-specific configurations for the journey.</p>")
  @as("JourneyChannelSettings")
  journeyChannelSettings: option<journeyChannelSettings>,
  @ocaml.doc("<p>Specifies whether a journey should be refreshed on segment update.</p>")
  @as("RefreshOnSegmentUpdate")
  refreshOnSegmentUpdate: option<__boolean>,
  @ocaml.doc(
    "<p>Specifies whether endpoints in quiet hours should enter a wait till the end of their quiet hours.</p>"
  )
  @as("WaitForQuietTime")
  waitForQuietTime: option<__boolean>,
  @ocaml.doc(
    "<p>The status of the journey. Valid values are:</p> <ul><li><p>DRAFT - Saves the journey and doesn't publish it.</p></li> <li><p>ACTIVE - Saves and publishes the journey. Depending on the journey's schedule, the journey starts running immediately or at the scheduled start time. If a journey's status is ACTIVE, you can't add, change, or remove activities from it.</p></li></ul> <p>PAUSED, CANCELLED, COMPLETED, and CLOSED states are not supported in requests to create or update a journey. To cancel, pause, or resume a journey, use the <link  linkend=\"apps-application-id-journeys-journey-id-state\">Journey State</link> resource.</p>"
  )
  @as("State")
  state: option<state>,
  @ocaml.doc("<p>The segment that defines which users are participants in the journey.</p>")
  @as("StartCondition")
  startCondition: option<startCondition>,
  @ocaml.doc(
    "<p>The unique identifier for the first activity in the journey. The identifier for this activity can contain a maximum of 128 characters. The characters must be alphanumeric characters.</p>"
  )
  @as("StartActivity")
  startActivity: option<__string>,
  @ocaml.doc("<p>The schedule settings for the journey.</p>") @as("Schedule")
  schedule: option<journeySchedule>,
  @ocaml.doc(
    "<p>The frequency with which Amazon Pinpoint evaluates segment and event data for the journey, as a duration in ISO 8601 format.</p>"
  )
  @as("RefreshFrequency")
  refreshFrequency: option<__string>,
  @ocaml.doc(
    "<p>The quiet time settings for the journey. Quiet time is a specific time range when a journey doesn't send messages to participants, if all the following conditions are met:</p> <ul><li><p>The EndpointDemographic.Timezone property of the endpoint for the participant is set to a valid value.</p></li> <li><p>The current time in the participant's time zone is later than or equal to the time specified by the QuietTime.Start property for the journey.</p></li> <li><p>The current time in the participant's time zone is earlier than or equal to the time specified by the QuietTime.End property for the journey.</p></li></ul> <p>If any of the preceding conditions isn't met, the participant will receive messages from the journey, even if quiet time is enabled.</p>"
  )
  @as("QuietTime")
  quietTime: option<quietTime>,
  @ocaml.doc(
    "<p>The name of the journey. A journey name can contain a maximum of 150 characters. The characters can be alphanumeric characters or symbols, such as underscores (_) or hyphens (-). A journey name can't contain any spaces.</p>"
  )
  @as("Name")
  name: __string,
  @ocaml.doc(
    "<p>Specifies whether the journey's scheduled start and end times use each participant's local time. To base the schedule on each participant's local time, set this value to true.</p>"
  )
  @as("LocalTime")
  localTime: option<__boolean>,
  @ocaml.doc("<p>The messaging and entry limits for the journey.</p>") @as("Limits")
  limits: option<journeyLimits>,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the journey was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: option<__string>,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the journey was created.</p>")
  @as("CreationDate")
  creationDate: option<__string>,
  @ocaml.doc(
    "<p>A map that contains a set of Activity objects, one object for each activity in the journey. For each Activity object, the key is the unique identifier (string) for an activity and the value is the settings for the activity. An activity identifier can contain a maximum of 100 characters. The characters must be alphanumeric characters.</p>"
  )
  @as("Activities")
  activities: option<mapOfActivity>,
}
@ocaml.doc(
  "<p>Provides information about the status, configuration, and other settings for a journey.</p>"
)
type journeyResponse = {
  @ocaml.doc("<p>The channel-specific configurations for the journey.</p>")
  @as("JourneyChannelSettings")
  journeyChannelSettings: option<journeyChannelSettings>,
  @ocaml.doc("<p>Specifies whether a journey should be refreshed on segment update.</p>")
  @as("RefreshOnSegmentUpdate")
  refreshOnSegmentUpdate: option<__boolean>,
  @ocaml.doc(
    "<p>Specifies whether endpoints in quiet hours should enter a wait till the end of their quiet hours.</p>"
  )
  @as("WaitForQuietTime")
  waitForQuietTime: option<__boolean>,
  @ocaml.doc("<p>This object is not used or supported.</p>") tags: option<mapOf__string>,
  @ocaml.doc(
    "<p>The current status of the journey. Possible values are:</p> <ul><li><p>DRAFT - The journey is being developed and hasn't been published yet.</p></li> <li><p>ACTIVE - The journey has been developed and published. Depending on the journey's schedule, the journey may currently be running or scheduled to start running at a later time. If a journey's status is ACTIVE, you can't add, change, or remove activities from it.</p></li> <li><p>COMPLETED - The journey has been published and has finished running. All participants have entered the journey and no participants are waiting to complete the journey or any activities in the journey.</p></li> <li><p>CANCELLED - The journey has been stopped. If a journey's status is CANCELLED, you can't add, change, or remove activities or segment settings from the journey.</p></li> <li><p>CLOSED - The journey has been published and has started running. It may have also passed its scheduled end time, or passed its scheduled start time and a refresh frequency hasn't been specified for it. If a journey's status is CLOSED, you can't add participants to it, and no existing participants can enter the journey for the first time. However, any existing participants who are currently waiting to start an activity may continue the journey.</p></li></ul>"
  )
  @as("State")
  state: option<state>,
  @ocaml.doc("<p>The segment that defines which users are participants in the journey.</p>")
  @as("StartCondition")
  startCondition: option<startCondition>,
  @ocaml.doc("<p>The unique identifier for the first activity in the journey.</p>")
  @as("StartActivity")
  startActivity: option<__string>,
  @ocaml.doc("<p>The schedule settings for the journey.</p>") @as("Schedule")
  schedule: option<journeySchedule>,
  @ocaml.doc(
    "<p>The frequency with which Amazon Pinpoint evaluates segment and event data for the journey, as a duration in ISO 8601 format.</p>"
  )
  @as("RefreshFrequency")
  refreshFrequency: option<__string>,
  @ocaml.doc(
    "<p>The quiet time settings for the journey. Quiet time is a specific time range when a journey doesn't send messages to participants, if all the following conditions are met:</p> <ul><li><p>The EndpointDemographic.Timezone property of the endpoint for the participant is set to a valid value.</p></li> <li><p>The current time in the participant's time zone is later than or equal to the time specified by the QuietTime.Start property for the journey.</p></li> <li><p>The current time in the participant's time zone is earlier than or equal to the time specified by the QuietTime.End property for the journey.</p></li></ul> <p>If any of the preceding conditions isn't met, the participant will receive messages from the journey, even if quiet time is enabled.</p>"
  )
  @as("QuietTime")
  quietTime: option<quietTime>,
  @ocaml.doc("<p>The name of the journey.</p>") @as("Name") name: __string,
  @ocaml.doc(
    "<p>Specifies whether the journey's scheduled start and end times use each participant's local time. If this value is true, the schedule uses each participant's local time.</p>"
  )
  @as("LocalTime")
  localTime: option<__boolean>,
  @ocaml.doc("<p>The messaging and entry limits for the journey.</p>") @as("Limits")
  limits: option<journeyLimits>,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the journey was last modified.</p>")
  @as("LastModifiedDate")
  lastModifiedDate: option<__string>,
  @ocaml.doc("<p>The unique identifier for the journey.</p>") @as("Id") id: __string,
  @ocaml.doc("<p>The date, in ISO 8601 format, when the journey was created.</p>")
  @as("CreationDate")
  creationDate: option<__string>,
  @ocaml.doc("<p>The unique identifier for the application that the journey applies to.</p>")
  @as("ApplicationId")
  applicationId: __string,
  @ocaml.doc(
    "<p>A map that contains a set of Activity objects, one object for each activity in the journey. For each Activity object, the key is the unique identifier (string) for an activity and the value is the settings for the activity.</p>"
  )
  @as("Activities")
  activities: option<mapOfActivity>,
}
type listOfJourneyResponse = array<journeyResponse>
@ocaml.doc(
  "<p>Provides information about the status, configuration, and other settings for all the journeys that are associated with an application.</p>"
)
type journeysResponse = {
  @ocaml.doc(
    "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
  )
  @as("NextToken")
  nextToken: option<__string>,
  @ocaml.doc(
    "<p>An array of responses, one for each journey that's associated with the application.</p>"
  )
  @as("Item")
  item: listOfJourneyResponse,
}
@ocaml.doc("<p>Doc Engage API - Amazon Pinpoint API</p>")
module VerifyOTPMessage = {
  type t
  type request = {
    @as("VerifyOTPMessageRequestParameters")
    verifyOTPMessageRequestParameters: verifyOTPMessageRequestParameters,
    @ocaml.doc("<p>The unique ID of your Amazon Pinpoint application.</p>") @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("VerificationResponse") verificationResponse: verificationResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "VerifyOTPMessageCommand"
  let make = (~verifyOTPMessageRequestParameters, ~applicationId, ()) =>
    new({
      verifyOTPMessageRequestParameters: verifyOTPMessageRequestParameters,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVoiceChannel = {
  type t
  type request = {
    @as("VoiceChannelRequest") voiceChannelRequest: voiceChannelRequest,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("VoiceChannelResponse") voiceChannelResponse: voiceChannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateVoiceChannelCommand"
  let make = (~voiceChannelRequest, ~applicationId, ()) =>
    new({voiceChannelRequest: voiceChannelRequest, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTemplateActiveVersion = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The type of channel that the message template is designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.</p>"
    )
    @as("TemplateType")
    templateType: __string,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
    @as("TemplateActiveVersionRequest") templateActiveVersionRequest: templateActiveVersionRequest,
  }
  type response = {@as("MessageBody") messageBody: messageBody}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateTemplateActiveVersionCommand"
  let make = (~templateType, ~templateName, ~templateActiveVersionRequest, ()) =>
    new({
      templateType: templateType,
      templateName: templateName,
      templateActiveVersionRequest: templateActiveVersionRequest,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSmsChannel = {
  type t
  type request = {
    @as("SMSChannelRequest") smschannelRequest: smschannelRequest,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("SMSChannelResponse") smschannelResponse: smschannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateSmsChannelCommand"
  let make = (~smschannelRequest, ~applicationId, ()) =>
    new({smschannelRequest: smschannelRequest, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGcmChannel = {
  type t
  type request = {
    @as("GCMChannelRequest") gcmchannelRequest: gcmchannelRequest,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("GCMChannelResponse") gcmchannelResponse: gcmchannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateGcmChannelCommand"
  let make = (~gcmchannelRequest, ~applicationId, ()) =>
    new({gcmchannelRequest: gcmchannelRequest, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEmailChannel = {
  type t
  type request = {
    @as("EmailChannelRequest") emailChannelRequest: emailChannelRequest,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("EmailChannelResponse") emailChannelResponse: emailChannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateEmailChannelCommand"
  let make = (~emailChannelRequest, ~applicationId, ()) =>
    new({emailChannelRequest: emailChannelRequest, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBaiduChannel = {
  type t
  type request = {
    @as("BaiduChannelRequest") baiduChannelRequest: baiduChannelRequest,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("BaiduChannelResponse") baiduChannelResponse: baiduChannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateBaiduChannelCommand"
  let make = (~baiduChannelRequest, ~applicationId, ()) =>
    new({baiduChannelRequest: baiduChannelRequest, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApnsVoipSandboxChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
    @as("APNSVoipSandboxChannelRequest")
    apnsvoipSandboxChannelRequest: apnsvoipSandboxChannelRequest,
  }
  type response = {
    @as("APNSVoipSandboxChannelResponse")
    apnsvoipSandboxChannelResponse: apnsvoipSandboxChannelResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateApnsVoipSandboxChannelCommand"
  let make = (~applicationId, ~apnsvoipSandboxChannelRequest, ()) =>
    new({
      applicationId: applicationId,
      apnsvoipSandboxChannelRequest: apnsvoipSandboxChannelRequest,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApnsVoipChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
    @as("APNSVoipChannelRequest") apnsvoipChannelRequest: apnsvoipChannelRequest,
  }
  type response = {@as("APNSVoipChannelResponse") apnsvoipChannelResponse: apnsvoipChannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateApnsVoipChannelCommand"
  let make = (~applicationId, ~apnsvoipChannelRequest, ()) =>
    new({applicationId: applicationId, apnsvoipChannelRequest: apnsvoipChannelRequest})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApnsSandboxChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
    @as("APNSSandboxChannelRequest") apnssandboxChannelRequest: apnssandboxChannelRequest,
  }
  type response = {
    @as("APNSSandboxChannelResponse") apnssandboxChannelResponse: apnssandboxChannelResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateApnsSandboxChannelCommand"
  let make = (~applicationId, ~apnssandboxChannelRequest, ()) =>
    new({applicationId: applicationId, apnssandboxChannelRequest: apnssandboxChannelRequest})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApnsChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
    @as("APNSChannelRequest") apnschannelRequest: apnschannelRequest,
  }
  type response = {@as("APNSChannelResponse") apnschannelResponse: apnschannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateApnsChannelCommand"
  let make = (~applicationId, ~apnschannelRequest, ()) =>
    new({applicationId: applicationId, apnschannelRequest: apnschannelRequest})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAdmChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
    @as("ADMChannelRequest") admchannelRequest: admchannelRequest,
  }
  type response = {@as("ADMChannelResponse") admchannelResponse: admchannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateAdmChannelCommand"
  let make = (~applicationId, ~admchannelRequest, ()) =>
    new({applicationId: applicationId, admchannelRequest: admchannelRequest})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The key of the tag to remove from the resource. To remove multiple tags, append the tagKeys parameter and argument for each additional tag to remove, separated by an ampersand (&amp;).</p>"
    )
    @as("TagKeys")
    tagKeys: listOf__string,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutEventStream = {
  type t
  type request = {
    @as("WriteEventStream") writeEventStream: writeEventStream,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("EventStream") eventStream: eventStream}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "PutEventStreamCommand"
  let make = (~writeEventStream, ~applicationId, ()) =>
    new({writeEventStream: writeEventStream, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PhoneNumberValidate = {
  type t
  type request = {@as("NumberValidateRequest") numberValidateRequest: numberValidateRequest}
  type response = {@as("NumberValidateResponse") numberValidateResponse: numberValidateResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "PhoneNumberValidateCommand"
  let make = (~numberValidateRequest, ()) => new({numberValidateRequest: numberValidateRequest})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVoiceChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("VoiceChannelResponse") voiceChannelResponse: voiceChannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetVoiceChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSmsChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("SMSChannelResponse") smschannelResponse: smschannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetSmsChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGcmChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("GCMChannelResponse") gcmchannelResponse: gcmchannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetGcmChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEventStream = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("EventStream") eventStream: eventStream}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetEventStreamCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEmailChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("EmailChannelResponse") emailChannelResponse: emailChannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetEmailChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBaiduChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("BaiduChannelResponse") baiduChannelResponse: baiduChannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetBaiduChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApnsVoipSandboxChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @as("APNSVoipSandboxChannelResponse")
    apnsvoipSandboxChannelResponse: apnsvoipSandboxChannelResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetApnsVoipSandboxChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApnsVoipChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("APNSVoipChannelResponse") apnsvoipChannelResponse: apnsvoipChannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetApnsVoipChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApnsSandboxChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @as("APNSSandboxChannelResponse") apnssandboxChannelResponse: apnssandboxChannelResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetApnsSandboxChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApnsChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("APNSChannelResponse") apnschannelResponse: apnschannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetApnsChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAdmChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("ADMChannelResponse") admchannelResponse: admchannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetAdmChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVoiceTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>"
    )
    @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
  }
  type response = {@as("MessageBody") messageBody: messageBody}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteVoiceTemplateCommand"
  let make = (~templateName, ~version=?, ()) => new({version: version, templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVoiceChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("VoiceChannelResponse") voiceChannelResponse: voiceChannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteVoiceChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSmsTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>"
    )
    @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
  }
  type response = {@as("MessageBody") messageBody: messageBody}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteSmsTemplateCommand"
  let make = (~templateName, ~version=?, ()) => new({version: version, templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSmsChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("SMSChannelResponse") smschannelResponse: smschannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteSmsChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePushTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>"
    )
    @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
  }
  type response = {@as("MessageBody") messageBody: messageBody}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeletePushTemplateCommand"
  let make = (~templateName, ~version=?, ()) => new({version: version, templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInAppTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>"
    )
    @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
  }
  type response = {@as("MessageBody") messageBody: messageBody}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteInAppTemplateCommand"
  let make = (~templateName, ~version=?, ()) => new({version: version, templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGcmChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("GCMChannelResponse") gcmchannelResponse: gcmchannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteGcmChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEventStream = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("EventStream") eventStream: eventStream}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteEventStreamCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEmailTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>"
    )
    @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
  }
  type response = {@as("MessageBody") messageBody: messageBody}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteEmailTemplateCommand"
  let make = (~templateName, ~version=?, ()) => new({version: version, templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEmailChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("EmailChannelResponse") emailChannelResponse: emailChannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteEmailChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBaiduChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("BaiduChannelResponse") baiduChannelResponse: baiduChannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteBaiduChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteApnsVoipSandboxChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @as("APNSVoipSandboxChannelResponse")
    apnsvoipSandboxChannelResponse: apnsvoipSandboxChannelResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteApnsVoipSandboxChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteApnsVoipChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("APNSVoipChannelResponse") apnsvoipChannelResponse: apnsvoipChannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteApnsVoipChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteApnsSandboxChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @as("APNSSandboxChannelResponse") apnssandboxChannelResponse: apnssandboxChannelResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteApnsSandboxChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteApnsChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("APNSChannelResponse") apnschannelResponse: apnschannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteApnsChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAdmChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("ADMChannelResponse") admchannelResponse: admchannelResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteAdmChannelCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVoiceTemplate = {
  type t
  type request = {
    @as("VoiceTemplateRequest") voiceTemplateRequest: voiceTemplateRequest,
    @ocaml.doc(
      "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>"
    )
    @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
    @ocaml.doc(
      "<p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>"
    )
    @as("CreateNewVersion")
    createNewVersion: option<__boolean>,
  }
  type response = {@as("MessageBody") messageBody: messageBody}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateVoiceTemplateCommand"
  let make = (~voiceTemplateRequest, ~templateName, ~version=?, ~createNewVersion=?, ()) =>
    new({
      voiceTemplateRequest: voiceTemplateRequest,
      version: version,
      templateName: templateName,
      createNewVersion: createNewVersion,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSmsTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>"
    )
    @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
    @as("SMSTemplateRequest") smstemplateRequest: smstemplateRequest,
    @ocaml.doc(
      "<p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>"
    )
    @as("CreateNewVersion")
    createNewVersion: option<__boolean>,
  }
  type response = {@as("MessageBody") messageBody: messageBody}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateSmsTemplateCommand"
  let make = (~templateName, ~smstemplateRequest, ~version=?, ~createNewVersion=?, ()) =>
    new({
      version: version,
      templateName: templateName,
      smstemplateRequest: smstemplateRequest,
      createNewVersion: createNewVersion,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRecommenderConfiguration = {
  type t
  type request = {
    @as("UpdateRecommenderConfiguration")
    updateRecommenderConfiguration: updateRecommenderConfigurationShape,
    @ocaml.doc(
      "<p>The unique identifier for the recommender model configuration. This identifier is displayed as the <b>Recommender ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("RecommenderId")
    recommenderId: __string,
  }
  type response = {
    @as("RecommenderConfigurationResponse")
    recommenderConfigurationResponse: recommenderConfigurationResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateRecommenderConfigurationCommand"
  let make = (~updateRecommenderConfiguration, ~recommenderId, ()) =>
    new({
      updateRecommenderConfiguration: updateRecommenderConfiguration,
      recommenderId: recommenderId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePushTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>"
    )
    @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
    @as("PushNotificationTemplateRequest")
    pushNotificationTemplateRequest: pushNotificationTemplateRequest,
    @ocaml.doc(
      "<p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>"
    )
    @as("CreateNewVersion")
    createNewVersion: option<__boolean>,
  }
  type response = {@as("MessageBody") messageBody: messageBody}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdatePushTemplateCommand"
  let make = (
    ~templateName,
    ~pushNotificationTemplateRequest,
    ~version=?,
    ~createNewVersion=?,
    (),
  ) =>
    new({
      version: version,
      templateName: templateName,
      pushNotificationTemplateRequest: pushNotificationTemplateRequest,
      createNewVersion: createNewVersion,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEmailTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>"
    )
    @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
    @as("EmailTemplateRequest") emailTemplateRequest: emailTemplateRequest,
    @ocaml.doc(
      "<p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>"
    )
    @as("CreateNewVersion")
    createNewVersion: option<__boolean>,
  }
  type response = {@as("MessageBody") messageBody: messageBody}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateEmailTemplateCommand"
  let make = (~templateName, ~emailTemplateRequest, ~version=?, ~createNewVersion=?, ()) =>
    new({
      version: version,
      templateName: templateName,
      emailTemplateRequest: emailTemplateRequest,
      createNewVersion: createNewVersion,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApplicationSettings = {
  type t
  type request = {
    @as("WriteApplicationSettingsRequest")
    writeApplicationSettingsRequest: writeApplicationSettingsRequest,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @as("ApplicationSettingsResource") applicationSettingsResource: applicationSettingsResource,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateApplicationSettingsCommand"
  let make = (~writeApplicationSettingsRequest, ~applicationId, ()) =>
    new({
      writeApplicationSettingsRequest: writeApplicationSettingsRequest,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("TagsModel") tagsModel: tagsModel,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mobiletargeting") @new external new: request => t = "TagResourceCommand"
  let make = (~tagsModel, ~resourceArn, ()) => new({tagsModel: tagsModel, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveAttributes = {
  type t
  type request = {
    @as("UpdateAttributesRequest") updateAttributesRequest: updateAttributesRequest,
    @ocaml.doc(
      "<p>The type of attribute or attributes to remove. Valid values are:</p> <ul><li><p>endpoint-custom-attributes - Custom attributes that describe endpoints, such as the date when an associated user opted in or out of receiving communications from you through a specific type of channel.</p></li> <li><p>endpoint-metric-attributes - Custom metrics that your app reports to Amazon Pinpoint for endpoints, such as the number of app sessions or the number of items left in a cart.</p></li> <li><p>endpoint-user-attributes - Custom attributes that describe users, such as first name, last name, and age.</p></li></ul>"
    )
    @as("AttributeType")
    attributeType: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("AttributesResource") attributesResource: attributesResource}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "RemoveAttributesCommand"
  let make = (~updateAttributesRequest, ~attributeType, ~applicationId, ()) =>
    new({
      updateAttributesRequest: updateAttributesRequest,
      attributeType: attributeType,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {@as("TagsModel") tagsModel: tagsModel}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVoiceTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>"
    )
    @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
  }
  type response = {@as("VoiceTemplateResponse") voiceTemplateResponse: voiceTemplateResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetVoiceTemplateCommand"
  let make = (~templateName, ~version=?, ()) => new({version: version, templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSmsTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>"
    )
    @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
  }
  type response = {@as("SMSTemplateResponse") smstemplateResponse: smstemplateResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetSmsTemplateCommand"
  let make = (~templateName, ~version=?, ()) => new({version: version, templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRecommenderConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the recommender model configuration. This identifier is displayed as the <b>Recommender ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("RecommenderId")
    recommenderId: __string,
  }
  type response = {
    @as("RecommenderConfigurationResponse")
    recommenderConfigurationResponse: recommenderConfigurationResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetRecommenderConfigurationCommand"
  let make = (~recommenderId, ()) => new({recommenderId: recommenderId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPushTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>"
    )
    @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
  }
  type response = {
    @as("PushNotificationTemplateResponse")
    pushNotificationTemplateResponse: pushNotificationTemplateResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetPushTemplateCommand"
  let make = (~templateName, ~version=?, ()) => new({version: version, templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJourneyExecutionMetrics = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc(
      "<p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The unique identifier for the journey.</p>") @as("JourneyId")
    journeyId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @as("JourneyExecutionMetricsResponse")
    journeyExecutionMetricsResponse: journeyExecutionMetricsResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetJourneyExecutionMetricsCommand"
  let make = (~journeyId, ~applicationId, ~pageSize=?, ~nextToken=?, ()) =>
    new({
      pageSize: pageSize,
      nextToken: nextToken,
      journeyId: journeyId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJourneyExecutionActivityMetrics = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc(
      "<p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The unique identifier for the journey.</p>") @as("JourneyId")
    journeyId: __string,
    @ocaml.doc("<p>The unique identifier for the journey activity.</p>") @as("JourneyActivityId")
    journeyActivityId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @as("JourneyExecutionActivityMetricsResponse")
    journeyExecutionActivityMetricsResponse: journeyExecutionActivityMetricsResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetJourneyExecutionActivityMetricsCommand"
  let make = (~journeyId, ~journeyActivityId, ~applicationId, ~pageSize=?, ~nextToken=?, ()) =>
    new({
      pageSize: pageSize,
      nextToken: nextToken,
      journeyId: journeyId,
      journeyActivityId: journeyActivityId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetImportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the job.</p>") @as("JobId") jobId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("ImportJobResponse") importJobResponse: importJobResponse}
  @module("@aws-sdk/client-mobiletargeting") @new external new: request => t = "GetImportJobCommand"
  let make = (~jobId, ~applicationId, ()) => new({jobId: jobId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetExportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the job.</p>") @as("JobId") jobId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("ExportJobResponse") exportJobResponse: exportJobResponse}
  @module("@aws-sdk/client-mobiletargeting") @new external new: request => t = "GetExportJobCommand"
  let make = (~jobId, ~applicationId, ()) => new({jobId: jobId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEmailTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>"
    )
    @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
  }
  type response = {@as("EmailTemplateResponse") emailTemplateResponse: emailTemplateResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetEmailTemplateCommand"
  let make = (~templateName, ~version=?, ()) => new({version: version, templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApplicationSettings = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @as("ApplicationSettingsResource") applicationSettingsResource: applicationSettingsResource,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetApplicationSettingsCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApp = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("ApplicationResponse") applicationResponse: applicationResponse}
  @module("@aws-sdk/client-mobiletargeting") @new external new: request => t = "GetAppCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRecommenderConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the recommender model configuration. This identifier is displayed as the <b>Recommender ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("RecommenderId")
    recommenderId: __string,
  }
  type response = {
    @as("RecommenderConfigurationResponse")
    recommenderConfigurationResponse: recommenderConfigurationResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteRecommenderConfigurationCommand"
  let make = (~recommenderId, ()) => new({recommenderId: recommenderId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteApp = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("ApplicationResponse") applicationResponse: applicationResponse}
  @module("@aws-sdk/client-mobiletargeting") @new external new: request => t = "DeleteAppCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVoiceTemplate = {
  type t
  type request = {
    @as("VoiceTemplateRequest") voiceTemplateRequest: voiceTemplateRequest,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
  }
  type response = {
    @as("CreateTemplateMessageBody") createTemplateMessageBody: createTemplateMessageBody,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "CreateVoiceTemplateCommand"
  let make = (~voiceTemplateRequest, ~templateName, ()) =>
    new({voiceTemplateRequest: voiceTemplateRequest, templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSmsTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
    @as("SMSTemplateRequest") smstemplateRequest: smstemplateRequest,
  }
  type response = {
    @as("CreateTemplateMessageBody") createTemplateMessageBody: createTemplateMessageBody,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "CreateSmsTemplateCommand"
  let make = (~templateName, ~smstemplateRequest, ()) =>
    new({templateName: templateName, smstemplateRequest: smstemplateRequest})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRecommenderConfiguration = {
  type t
  type request = {
    @as("CreateRecommenderConfiguration")
    createRecommenderConfiguration: createRecommenderConfigurationShape,
  }
  type response = {
    @as("RecommenderConfigurationResponse")
    recommenderConfigurationResponse: recommenderConfigurationResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "CreateRecommenderConfigurationCommand"
  let make = (~createRecommenderConfiguration, ()) =>
    new({createRecommenderConfiguration: createRecommenderConfiguration})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePushTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
    @as("PushNotificationTemplateRequest")
    pushNotificationTemplateRequest: pushNotificationTemplateRequest,
  }
  type response = {
    @as("CreateTemplateMessageBody") createTemplateMessageBody: createTemplateMessageBody,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "CreatePushTemplateCommand"
  let make = (~templateName, ~pushNotificationTemplateRequest, ()) =>
    new({
      templateName: templateName,
      pushNotificationTemplateRequest: pushNotificationTemplateRequest,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateImportJob = {
  type t
  type request = {
    @as("ImportJobRequest") importJobRequest: importJobRequest,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("ImportJobResponse") importJobResponse: importJobResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "CreateImportJobCommand"
  let make = (~importJobRequest, ~applicationId, ()) =>
    new({importJobRequest: importJobRequest, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateExportJob = {
  type t
  type request = {
    @as("ExportJobRequest") exportJobRequest: exportJobRequest,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("ExportJobResponse") exportJobResponse: exportJobResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "CreateExportJobCommand"
  let make = (~exportJobRequest, ~applicationId, ()) =>
    new({exportJobRequest: exportJobRequest, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEmailTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
    @as("EmailTemplateRequest") emailTemplateRequest: emailTemplateRequest,
  }
  type response = {
    @as("CreateTemplateMessageBody") createTemplateMessageBody: createTemplateMessageBody,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "CreateEmailTemplateCommand"
  let make = (~templateName, ~emailTemplateRequest, ()) =>
    new({templateName: templateName, emailTemplateRequest: emailTemplateRequest})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApp = {
  type t
  type request = {
    @as("CreateApplicationRequest") createApplicationRequest: createApplicationRequest,
  }
  type response = {@as("ApplicationResponse") applicationResponse: applicationResponse}
  @module("@aws-sdk/client-mobiletargeting") @new external new: request => t = "CreateAppCommand"
  let make = (~createApplicationRequest, ()) =>
    new({createApplicationRequest: createApplicationRequest})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendOTPMessage = {
  type t
  type request = {
    @as("SendOTPMessageRequestParameters")
    sendOTPMessageRequestParameters: sendOTPMessageRequestParameters,
    @ocaml.doc("<p>The unique ID of your Amazon Pinpoint application.</p>") @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("MessageResponse") messageResponse: messageResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "SendOTPMessageCommand"
  let make = (~sendOTPMessageRequestParameters, ~applicationId, ()) =>
    new({
      sendOTPMessageRequestParameters: sendOTPMessageRequestParameters,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTemplateVersions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The type of channel that the message template is designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.</p>"
    )
    @as("TemplateType")
    templateType: __string,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc(
      "<p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  type response = {
    @as("TemplateVersionsResponse") templateVersionsResponse: templateVersionsResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "ListTemplateVersionsCommand"
  let make = (~templateType, ~templateName, ~pageSize=?, ~nextToken=?, ()) =>
    new({
      templateType: templateType,
      templateName: templateName,
      pageSize: pageSize,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetChannels = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("ChannelsResponse") channelsResponse: channelsResponse}
  @module("@aws-sdk/client-mobiletargeting") @new external new: request => t = "GetChannelsCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCampaignActivities = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    @as("Token")
    token: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc("<p>The unique identifier for the campaign.</p>") @as("CampaignId")
    campaignId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("ActivitiesResponse") activitiesResponse: activitiesResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetCampaignActivitiesCommand"
  let make = (~campaignId, ~applicationId, ~token=?, ~pageSize=?, ()) =>
    new({token: token, pageSize: pageSize, campaignId: campaignId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEndpoint = {
  type t
  type request = {
    @as("EndpointRequest") endpointRequest: endpointRequest,
    @ocaml.doc("<p>The unique identifier for the endpoint.</p>") @as("EndpointId")
    endpointId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("MessageBody") messageBody: messageBody}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateEndpointCommand"
  let make = (~endpointRequest, ~endpointId, ~applicationId, ()) =>
    new({endpointRequest: endpointRequest, endpointId: endpointId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTemplates = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The type of message template to include in the results. Valid values are: EMAIL, PUSH, SMS, and VOICE. To include all types of templates in the results, don't include this parameter in your request.</p>"
    )
    @as("TemplateType")
    templateType: option<__string>,
    @ocaml.doc(
      "<p>The substring to match in the names of the message templates to include in the results. If you specify this value, Amazon Pinpoint returns only those templates whose names begin with the value that you specify.</p>"
    )
    @as("Prefix")
    prefix: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc(
      "<p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  type response = {@as("TemplatesResponse") templatesResponse: templatesResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "ListTemplatesCommand"
  let make = (~templateType=?, ~prefix=?, ~pageSize=?, ~nextToken=?, ()) =>
    new({templateType: templateType, prefix: prefix, pageSize: pageSize, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSegmentImportJobs = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    @as("Token")
    token: option<__string>,
    @ocaml.doc("<p>The unique identifier for the segment.</p>") @as("SegmentId")
    segmentId: __string,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("ImportJobsResponse") importJobsResponse: importJobsResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetSegmentImportJobsCommand"
  let make = (~segmentId, ~applicationId, ~token=?, ~pageSize=?, ()) =>
    new({token: token, segmentId: segmentId, pageSize: pageSize, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSegmentExportJobs = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    @as("Token")
    token: option<__string>,
    @ocaml.doc("<p>The unique identifier for the segment.</p>") @as("SegmentId")
    segmentId: __string,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("ExportJobsResponse") exportJobsResponse: exportJobsResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetSegmentExportJobsCommand"
  let make = (~segmentId, ~applicationId, ~token=?, ~pageSize=?, ()) =>
    new({token: token, segmentId: segmentId, pageSize: pageSize, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRecommenderConfigurations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    @as("Token")
    token: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
  }
  type response = {
    @as("ListRecommenderConfigurationsResponse")
    listRecommenderConfigurationsResponse: listRecommenderConfigurationsResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetRecommenderConfigurationsCommand"
  let make = (~token=?, ~pageSize=?, ()) => new({token: token, pageSize: pageSize})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetImportJobs = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    @as("Token")
    token: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("ImportJobsResponse") importJobsResponse: importJobsResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetImportJobsCommand"
  let make = (~applicationId, ~token=?, ~pageSize=?, ()) =>
    new({token: token, pageSize: pageSize, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetExportJobs = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    @as("Token")
    token: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("ExportJobsResponse") exportJobsResponse: exportJobsResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetExportJobsCommand"
  let make = (~applicationId, ~token=?, ~pageSize=?, ()) =>
    new({token: token, pageSize: pageSize, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the endpoint.</p>") @as("EndpointId")
    endpointId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("EndpointResponse") endpointResponse: endpointResponse}
  @module("@aws-sdk/client-mobiletargeting") @new external new: request => t = "GetEndpointCommand"
  let make = (~endpointId, ~applicationId, ()) =>
    new({endpointId: endpointId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApps = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    @as("Token")
    token: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
  }
  type response = {@as("ApplicationsResponse") applicationsResponse: applicationsResponse}
  @module("@aws-sdk/client-mobiletargeting") @new external new: request => t = "GetAppsCommand"
  let make = (~token=?, ~pageSize=?, ()) => new({token: token, pageSize: pageSize})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the endpoint.</p>") @as("EndpointId")
    endpointId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("EndpointResponse") endpointResponse: endpointResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteEndpointCommand"
  let make = (~endpointId, ~applicationId, ()) =>
    new({endpointId: endpointId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateInAppTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>"
    )
    @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
    @as("InAppTemplateRequest") inAppTemplateRequest: inAppTemplateRequest,
    @ocaml.doc(
      "<p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>"
    )
    @as("CreateNewVersion")
    createNewVersion: option<__boolean>,
  }
  type response = {@as("MessageBody") messageBody: messageBody}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateInAppTemplateCommand"
  let make = (~templateName, ~inAppTemplateRequest, ~version=?, ~createNewVersion=?, ()) =>
    new({
      version: version,
      templateName: templateName,
      inAppTemplateRequest: inAppTemplateRequest,
      createNewVersion: createNewVersion,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendUsersMessages = {
  type t
  type request = {
    @as("SendUsersMessageRequest") sendUsersMessageRequest: sendUsersMessageRequest,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @as("SendUsersMessageResponse") sendUsersMessageResponse: sendUsersMessageResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "SendUsersMessagesCommand"
  let make = (~sendUsersMessageRequest, ~applicationId, ()) =>
    new({sendUsersMessageRequest: sendUsersMessageRequest, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendMessages = {
  type t
  type request = {
    @as("MessageRequest") messageRequest: messageRequest,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("MessageResponse") messageResponse: messageResponse}
  @module("@aws-sdk/client-mobiletargeting") @new external new: request => t = "SendMessagesCommand"
  let make = (~messageRequest, ~applicationId, ()) =>
    new({messageRequest: messageRequest, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInAppTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend=\"templates-template-name-template-type-versions\">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>"
    )
    @as("Version")
    version: option<__string>,
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
  }
  type response = {@as("InAppTemplateResponse") inAppTemplateResponse: inAppTemplateResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetInAppTemplateCommand"
  let make = (~templateName, ~version=?, ()) => new({version: version, templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInAppTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>"
    )
    @as("TemplateName")
    templateName: __string,
    @as("InAppTemplateRequest") inAppTemplateRequest: inAppTemplateRequest,
  }
  type response = {
    @as("TemplateCreateMessageBody") templateCreateMessageBody: templateCreateMessageBody,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "CreateInAppTemplateCommand"
  let make = (~templateName, ~inAppTemplateRequest, ()) =>
    new({templateName: templateName, inAppTemplateRequest: inAppTemplateRequest})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEndpointsBatch = {
  type t
  type request = {
    @as("EndpointBatchRequest") endpointBatchRequest: endpointBatchRequest,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("MessageBody") messageBody: messageBody}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateEndpointsBatchCommand"
  let make = (~endpointBatchRequest, ~applicationId, ()) =>
    new({endpointBatchRequest: endpointBatchRequest, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUserEndpoints = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the user.</p>") @as("UserId") userId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("EndpointsResponse") endpointsResponse: endpointsResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetUserEndpointsCommand"
  let make = (~userId, ~applicationId, ()) => new({userId: userId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJourneyDateRangeKpi = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.</p>"
    )
    @as("StartTime")
    startTime: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc(
      "<p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html\">Amazon Pinpoint Developer Guide</a>.</p>"
    )
    @as("KpiName")
    kpiName: __string,
    @ocaml.doc("<p>The unique identifier for the journey.</p>") @as("JourneyId")
    journeyId: __string,
    @ocaml.doc(
      "<p>The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.</p>"
    )
    @as("EndTime")
    endTime: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @as("JourneyDateRangeKpiResponse") journeyDateRangeKpiResponse: journeyDateRangeKpiResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetJourneyDateRangeKpiCommand"
  let make = (
    ~kpiName,
    ~journeyId,
    ~applicationId,
    ~startTime=?,
    ~pageSize=?,
    ~nextToken=?,
    ~endTime=?,
    (),
  ) =>
    new({
      startTime: startTime,
      pageSize: pageSize,
      nextToken: nextToken,
      kpiName: kpiName,
      journeyId: journeyId,
      endTime: endTime,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCampaignDateRangeKpi = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.</p>"
    )
    @as("StartTime")
    startTime: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc(
      "<p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html\">Amazon Pinpoint Developer Guide</a>.</p>"
    )
    @as("KpiName")
    kpiName: __string,
    @ocaml.doc(
      "<p>The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.</p>"
    )
    @as("EndTime")
    endTime: option<__timestampIso8601>,
    @ocaml.doc("<p>The unique identifier for the campaign.</p>") @as("CampaignId")
    campaignId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @as("CampaignDateRangeKpiResponse") campaignDateRangeKpiResponse: campaignDateRangeKpiResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetCampaignDateRangeKpiCommand"
  let make = (
    ~kpiName,
    ~campaignId,
    ~applicationId,
    ~startTime=?,
    ~pageSize=?,
    ~nextToken=?,
    ~endTime=?,
    (),
  ) =>
    new({
      startTime: startTime,
      pageSize: pageSize,
      nextToken: nextToken,
      kpiName: kpiName,
      endTime: endTime,
      campaignId: campaignId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApplicationDateRangeKpi = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.</p>"
    )
    @as("StartTime")
    startTime: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc(
      "<p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html\">Amazon Pinpoint Developer Guide</a>.</p>"
    )
    @as("KpiName")
    kpiName: __string,
    @ocaml.doc(
      "<p>The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.</p>"
    )
    @as("EndTime")
    endTime: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @as("ApplicationDateRangeKpiResponse")
    applicationDateRangeKpiResponse: applicationDateRangeKpiResponse,
  }
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetApplicationDateRangeKpiCommand"
  let make = (~kpiName, ~applicationId, ~startTime=?, ~pageSize=?, ~nextToken=?, ~endTime=?, ()) =>
    new({
      startTime: startTime,
      pageSize: pageSize,
      nextToken: nextToken,
      kpiName: kpiName,
      endTime: endTime,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUserEndpoints = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the user.</p>") @as("UserId") userId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("EndpointsResponse") endpointsResponse: endpointsResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteUserEndpointsCommand"
  let make = (~userId, ~applicationId, ()) => new({userId: userId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutEvents = {
  type t
  type request = {
    @as("EventsRequest") eventsRequest: eventsRequest,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("EventsResponse") eventsResponse: eventsResponse}
  @module("@aws-sdk/client-mobiletargeting") @new external new: request => t = "PutEventsCommand"
  let make = (~eventsRequest, ~applicationId, ()) =>
    new({eventsRequest: eventsRequest, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSegment = {
  type t
  type request = {
    @as("WriteSegmentRequest") writeSegmentRequest: writeSegmentRequest,
    @ocaml.doc("<p>The unique identifier for the segment.</p>") @as("SegmentId")
    segmentId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("SegmentResponse") segmentResponse: segmentResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateSegmentCommand"
  let make = (~writeSegmentRequest, ~segmentId, ~applicationId, ()) =>
    new({
      writeSegmentRequest: writeSegmentRequest,
      segmentId: segmentId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCampaign = {
  type t
  type request = {
    @as("WriteCampaignRequest") writeCampaignRequest: writeCampaignRequest,
    @ocaml.doc("<p>The unique identifier for the campaign.</p>") @as("CampaignId")
    campaignId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("CampaignResponse") campaignResponse: campaignResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateCampaignCommand"
  let make = (~writeCampaignRequest, ~campaignId, ~applicationId, ()) =>
    new({
      writeCampaignRequest: writeCampaignRequest,
      campaignId: campaignId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSegmentVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The unique version number (Version property) for the campaign version.</p>")
    @as("Version")
    version: __string,
    @ocaml.doc("<p>The unique identifier for the segment.</p>") @as("SegmentId")
    segmentId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("SegmentResponse") segmentResponse: segmentResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetSegmentVersionCommand"
  let make = (~version, ~segmentId, ~applicationId, ()) =>
    new({version: version, segmentId: segmentId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSegment = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the segment.</p>") @as("SegmentId")
    segmentId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("SegmentResponse") segmentResponse: segmentResponse}
  @module("@aws-sdk/client-mobiletargeting") @new external new: request => t = "GetSegmentCommand"
  let make = (~segmentId, ~applicationId, ()) =>
    new({segmentId: segmentId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInAppMessages = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the endpoint.</p>") @as("EndpointId")
    endpointId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("InAppMessagesResponse") inAppMessagesResponse: inAppMessagesResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetInAppMessagesCommand"
  let make = (~endpointId, ~applicationId, ()) =>
    new({endpointId: endpointId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCampaignVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The unique version number (Version property) for the campaign version.</p>")
    @as("Version")
    version: __string,
    @ocaml.doc("<p>The unique identifier for the campaign.</p>") @as("CampaignId")
    campaignId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("CampaignResponse") campaignResponse: campaignResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetCampaignVersionCommand"
  let make = (~version, ~campaignId, ~applicationId, ()) =>
    new({version: version, campaignId: campaignId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCampaign = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the campaign.</p>") @as("CampaignId")
    campaignId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("CampaignResponse") campaignResponse: campaignResponse}
  @module("@aws-sdk/client-mobiletargeting") @new external new: request => t = "GetCampaignCommand"
  let make = (~campaignId, ~applicationId, ()) =>
    new({campaignId: campaignId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSegment = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the segment.</p>") @as("SegmentId")
    segmentId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("SegmentResponse") segmentResponse: segmentResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteSegmentCommand"
  let make = (~segmentId, ~applicationId, ()) =>
    new({segmentId: segmentId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCampaign = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the campaign.</p>") @as("CampaignId")
    campaignId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("CampaignResponse") campaignResponse: campaignResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteCampaignCommand"
  let make = (~campaignId, ~applicationId, ()) =>
    new({campaignId: campaignId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSegment = {
  type t
  type request = {
    @as("WriteSegmentRequest") writeSegmentRequest: writeSegmentRequest,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("SegmentResponse") segmentResponse: segmentResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "CreateSegmentCommand"
  let make = (~writeSegmentRequest, ~applicationId, ()) =>
    new({writeSegmentRequest: writeSegmentRequest, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCampaign = {
  type t
  type request = {
    @as("WriteCampaignRequest") writeCampaignRequest: writeCampaignRequest,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("CampaignResponse") campaignResponse: campaignResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "CreateCampaignCommand"
  let make = (~writeCampaignRequest, ~applicationId, ()) =>
    new({writeCampaignRequest: writeCampaignRequest, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSegments = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    @as("Token")
    token: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("SegmentsResponse") segmentsResponse: segmentsResponse}
  @module("@aws-sdk/client-mobiletargeting") @new external new: request => t = "GetSegmentsCommand"
  let make = (~applicationId, ~token=?, ~pageSize=?, ()) =>
    new({token: token, pageSize: pageSize, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSegmentVersions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    @as("Token")
    token: option<__string>,
    @ocaml.doc("<p>The unique identifier for the segment.</p>") @as("SegmentId")
    segmentId: __string,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("SegmentsResponse") segmentsResponse: segmentsResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetSegmentVersionsCommand"
  let make = (~segmentId, ~applicationId, ~token=?, ~pageSize=?, ()) =>
    new({token: token, segmentId: segmentId, pageSize: pageSize, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCampaigns = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    @as("Token")
    token: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("CampaignsResponse") campaignsResponse: campaignsResponse}
  @module("@aws-sdk/client-mobiletargeting") @new external new: request => t = "GetCampaignsCommand"
  let make = (~applicationId, ~token=?, ~pageSize=?, ()) =>
    new({token: token, pageSize: pageSize, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCampaignVersions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    @as("Token")
    token: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc("<p>The unique identifier for the campaign.</p>") @as("CampaignId")
    campaignId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("CampaignsResponse") campaignsResponse: campaignsResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "GetCampaignVersionsCommand"
  let make = (~campaignId, ~applicationId, ~token=?, ~pageSize=?, ()) =>
    new({token: token, pageSize: pageSize, campaignId: campaignId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateJourneyState = {
  type t
  type request = {
    @as("JourneyStateRequest") journeyStateRequest: journeyStateRequest,
    @ocaml.doc("<p>The unique identifier for the journey.</p>") @as("JourneyId")
    journeyId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("JourneyResponse") journeyResponse: journeyResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateJourneyStateCommand"
  let make = (~journeyStateRequest, ~journeyId, ~applicationId, ()) =>
    new({
      journeyStateRequest: journeyStateRequest,
      journeyId: journeyId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateJourney = {
  type t
  type request = {
    @as("WriteJourneyRequest") writeJourneyRequest: writeJourneyRequest,
    @ocaml.doc("<p>The unique identifier for the journey.</p>") @as("JourneyId")
    journeyId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("JourneyResponse") journeyResponse: journeyResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "UpdateJourneyCommand"
  let make = (~writeJourneyRequest, ~journeyId, ~applicationId, ()) =>
    new({
      writeJourneyRequest: writeJourneyRequest,
      journeyId: journeyId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJourney = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the journey.</p>") @as("JourneyId")
    journeyId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("JourneyResponse") journeyResponse: journeyResponse}
  @module("@aws-sdk/client-mobiletargeting") @new external new: request => t = "GetJourneyCommand"
  let make = (~journeyId, ~applicationId, ()) =>
    new({journeyId: journeyId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteJourney = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the journey.</p>") @as("JourneyId")
    journeyId: __string,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("JourneyResponse") journeyResponse: journeyResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "DeleteJourneyCommand"
  let make = (~journeyId, ~applicationId, ()) =>
    new({journeyId: journeyId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateJourney = {
  type t
  type request = {
    @as("WriteJourneyRequest") writeJourneyRequest: writeJourneyRequest,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("JourneyResponse") journeyResponse: journeyResponse}
  @module("@aws-sdk/client-mobiletargeting") @new
  external new: request => t = "CreateJourneyCommand"
  let make = (~writeJourneyRequest, ~applicationId, ()) =>
    new({writeJourneyRequest: writeJourneyRequest, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJourneys = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The NextToken string that specifies which page of results to return in a paginated response.</p>"
    )
    @as("Token")
    token: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>"
    )
    @as("PageSize")
    pageSize: option<__string>,
    @ocaml.doc(
      "<p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>"
    )
    @as("ApplicationId")
    applicationId: __string,
  }
  type response = {@as("JourneysResponse") journeysResponse: journeysResponse}
  @module("@aws-sdk/client-mobiletargeting") @new external new: request => t = "ListJourneysCommand"
  let make = (~applicationId, ~token=?, ~pageSize=?, ()) =>
    new({token: token, pageSize: pageSize, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
