type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-chime") @new
external createClient: unit => awsServiceClient = "ChimeSDKMeetingsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type transcribeVocabularyFilterMethod = [
  | @as("tag") #Tag
  | @as("mask") #Mask
  | @as("remove") #Remove
]
type transcribeRegion = [
  | @as("auto") #Auto
  | @as("sa-east-1") #Sa_East_1
  | @as("eu-west-2") #Eu_West_2
  | @as("eu-west-1") #Eu_West_1
  | @as("eu-central-1") #Eu_Central_1
  | @as("ca-central-1") #Ca_Central_1
  | @as("ap-northeast-1") #Ap_Northeast_1
  | @as("ap-southeast-2") #Ap_Southeast_2
  | @as("ap-northeast-2") #Ap_Northeast_2
  | @as("us-west-2") #Us_West_2
  | @as("us-east-1") #Us_East_1
  | @as("us-east-2") #Us_East_2
]
type transcribePiiEntityTypes = string
type transcribePartialResultsStability = [
  | @as("high") #High
  | @as("medium") #Medium
  | @as("low") #Low
]
type transcribeMedicalType = [@as("DICTATION") #DICTATION | @as("CONVERSATION") #CONVERSATION]
type transcribeMedicalSpecialty = [
  | @as("UROLOGY") #UROLOGY
  | @as("RADIOLOGY") #RADIOLOGY
  | @as("ONCOLOGY") #ONCOLOGY
  | @as("NEUROLOGY") #NEUROLOGY
  | @as("CARDIOLOGY") #CARDIOLOGY
  | @as("PRIMARYCARE") #PRIMARYCARE
]
type transcribeMedicalRegion = [
  | @as("auto") #Auto
  | @as("eu-west-1") #Eu_West_1
  | @as("ca-central-1") #Ca_Central_1
  | @as("ap-southeast-2") #Ap_Southeast_2
  | @as("us-west-2") #Us_West_2
  | @as("us-east-2") #Us_East_2
  | @as("us-east-1") #Us_East_1
]
type transcribeMedicalLanguageCode = [@as("en-US") #En_US]
type transcribeMedicalContentIdentificationType = [@as("PHI") #PHI]
type transcribeLanguageOptions = string
type transcribeLanguageModelName = string
type transcribeLanguageCode = [
  | @as("zh-CN") #Zh_CN
  | @as("ko-KR") #Ko_KR
  | @as("ja-JP") #Ja_JP
  | @as("pt-BR") #Pt_BR
  | @as("de-DE") #De_DE
  | @as("it-IT") #It_IT
  | @as("en-AU") #En_AU
  | @as("fr-FR") #Fr_FR
  | @as("fr-CA") #Fr_CA
  | @as("es-US") #Es_US
  | @as("en-GB") #En_GB
  | @as("en-US") #En_US
]
type transcribeContentRedactionType = [@as("PII") #PII]
type transcribeContentIdentificationType = [@as("PII") #PII]
type string_ = string
type retryAfterSeconds = string
type resultMax = int
type primaryMeetingId = string
type meetingFeatureStatus = [@as("UNAVAILABLE") #UNAVAILABLE | @as("AVAILABLE") #AVAILABLE]
type mediaRegion = string
type joinTokenString = string
type guidString = string
type externalUserId = string
type externalMeetingId = string
type clientRequestToken = string
type boolean_ = bool
type arn = string
@ocaml.doc(
  "<p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>"
)
type notificationsConfiguration = {
  @ocaml.doc("<p>The ARN of the SQS queue.</p>") @as("SqsQueueArn") sqsQueueArn: option<arn>,
  @ocaml.doc("<p>The ARN of the SNS topic.</p>") @as("SnsTopicArn") snsTopicArn: option<arn>,
  @ocaml.doc("<p>The ARN of the AWS Lambda function in the notifications configuration.</p>")
  @as("LambdaFunctionArn")
  lambdaFunctionArn: option<arn>,
}
@ocaml.doc(
  "<p>A set of endpoints used by clients to connect to the media service group for an Amazon Chime SDK meeting.</p>"
)
type mediaPlacement = {
  @ocaml.doc("<p>The event ingestion URL.</p>") @as("EventIngestionUrl")
  eventIngestionUrl: option<string_>,
  @ocaml.doc("<p>The screen sharing URL.</p>") @as("ScreenSharingUrl")
  screenSharingUrl: option<string_>,
  @ocaml.doc("<p>The screen viewing URL.</p>") @as("ScreenViewingUrl")
  screenViewingUrl: option<string_>,
  @ocaml.doc("<p>The screen data URL.</p>") @as("ScreenDataUrl") screenDataUrl: option<string_>,
  @ocaml.doc("<p>The turn control URL.</p>") @as("TurnControlUrl") turnControlUrl: option<string_>,
  @ocaml.doc("<p>The signaling URL.</p>") @as("SignalingUrl") signalingUrl: option<string_>,
  @ocaml.doc("<p>The audio fallback URL.</p>") @as("AudioFallbackUrl")
  audioFallbackUrl: option<string_>,
  @ocaml.doc("<p>The audio host URL.</p>") @as("AudioHostUrl") audioHostUrl: option<string_>,
}
@ocaml.doc("<p>Settings specific to the Amazon Transcribe engine.</p>")
type engineTranscribeSettings = {
  @ocaml.doc("<p>Language code for the preferred language.</p>") @as("PreferredLanguage")
  preferredLanguage: option<transcribeLanguageCode>,
  @ocaml.doc(
    "<p>Language codes for the languages that you want to identify. You must provide at least 2 codes.</p>"
  )
  @as("LanguageOptions")
  languageOptions: option<transcribeLanguageOptions>,
  @ocaml.doc("<p>Automatically identifies the language spoken in media files.</p>")
  @as("IdentifyLanguage")
  identifyLanguage: option<boolean_>,
  @ocaml.doc("<p>The name of the language model used during transcription.</p>")
  @as("LanguageModelName")
  languageModelName: option<transcribeLanguageModelName>,
  @ocaml.doc("<p>Lists the PII entity types you want to identify or redact. To specify entity types, you must enable <code>ContentIdentificationType</code> or <code>ContentRedactionType</code>.</p>
        
        <p>
            <code>PIIEntityTypes</code> must be comma-separated. The available values are: 
            <code>BANK_ACCOUNT_NUMBER</code>, <code>BANK_ROUTING, CREDIT_DEBIT_NUMBER</code>, <code>CREDIT_DEBIT_CVV</code>, <code>CREDIT_DEBIT_EXPIRY</code>, <code>PIN</code>, <code>EMAIL</code>, 
            <code>ADDRESS</code>, <code>NAME</code>, <code>PHONE</code>, <code>SSN</code>, and <code>ALL</code>.</p>
        
        <p>
            <code>PiiEntityTypes</code> is an optional parameter with a default value of <code>ALL</code>.</p>")
  @as("PiiEntityTypes")
  piiEntityTypes: option<transcribePiiEntityTypes>,
  @ocaml.doc("<p>Set this field to <code>PII</code> to redact personally identifiable information in the transcription output. Content redaction is performed only upon complete transcription of the audio segments.</p>
            
            <p>You can’t set <code>ContentRedactionType</code> and <code>ContentIdentificationType</code> in the same request. If you set both, your request returns a <code>BadRequestException</code>.</p>")
  @as("ContentRedactionType")
  contentRedactionType: option<transcribeContentRedactionType>,
  @ocaml.doc(
    "<p>Set this field to <code>PII</code> to identify personally identifiable information in the transcription output.</p>"
  )
  @as("ContentIdentificationType")
  contentIdentificationType: option<transcribeContentIdentificationType>,
  @ocaml.doc(
    "<p>The stabity level of a partial results transcription. Determines how stable you want the transcription results to be. A higher level means the transcription results are less likely to change.</p>"
  )
  @as("PartialResultsStability")
  partialResultsStability: option<transcribePartialResultsStability>,
  @ocaml.doc(
    "<p>Generates partial transcription results that are less likely to change as meeting attendees speak. It does so by only allowing the last few words from the partial results to change.</p>"
  )
  @as("EnablePartialResultsStabilization")
  enablePartialResultsStabilization: option<boolean_>,
  @ocaml.doc(
    "<p>The AWS Region passed to Amazon Transcribe. If you don't specify a Region, Amazon Chime uses the meeting's Region.</p>"
  )
  @as("Region")
  region: option<transcribeRegion>,
  @ocaml.doc("<p>The name of the vocabulary passed to Amazon Transcribe.</p>") @as("VocabularyName")
  vocabularyName: option<string_>,
  @ocaml.doc("<p>The name of the vocabulary filter passed to Amazon Transcribe.</p>")
  @as("VocabularyFilterName")
  vocabularyFilterName: option<string_>,
  @ocaml.doc("<p>The filtering method passed to Amazon Transcribe.</p>")
  @as("VocabularyFilterMethod")
  vocabularyFilterMethod: option<transcribeVocabularyFilterMethod>,
  @ocaml.doc("<p>The language code specified for the Amazon Transcribe engine.</p>")
  @as("LanguageCode")
  languageCode: option<transcribeLanguageCode>,
}
@ocaml.doc("<p>Settings specific to the Amazon Transcribe Medical engine.</p>")
type engineTranscribeMedicalSettings = {
  @ocaml.doc(
    "<p>Set this field to <code>PHI</code> to identify personal health information in the transcription output.</p>"
  )
  @as("ContentIdentificationType")
  contentIdentificationType: option<transcribeMedicalContentIdentificationType>,
  @ocaml.doc(
    "<p>The AWS Region passed to Amazon Transcribe Medical. If you don't specify a Region, Amazon Chime uses the meeting's Region.</p>"
  )
  @as("Region")
  region: option<transcribeMedicalRegion>,
  @ocaml.doc("<p>The name of the vocabulary passed to Amazon Transcribe Medical.</p>")
  @as("VocabularyName")
  vocabularyName: option<string_>,
  @ocaml.doc("<p>The type of transcription.</p>") @as("Type") type_: transcribeMedicalType,
  @ocaml.doc("<p>The specialty specified for the Amazon Transcribe Medical engine.</p>")
  @as("Specialty")
  specialty: transcribeMedicalSpecialty,
  @ocaml.doc("<p>The language code specified for the Amazon Transcribe Medical engine.</p>")
  @as("LanguageCode")
  languageCode: transcribeMedicalLanguageCode,
}
@ocaml.doc(
  "<p>The Amazon Chime SDK attendee fields to create, used with the BatchCreateAttendee action.</p>"
)
type createAttendeeRequestItem = {
  @ocaml.doc(
    "<p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>"
  )
  @as("ExternalUserId")
  externalUserId: externalUserId,
}
@ocaml.doc(
  "<p>The list of errors returned when errors are encountered during the BatchCreateAttendee and CreateAttendee actions. This includes external user IDs, error codes, and error messages.</p>"
)
type createAttendeeError = {
  @ocaml.doc("<p>The error message.</p>") @as("ErrorMessage") errorMessage: option<string_>,
  @ocaml.doc("<p>The error code.</p>") @as("ErrorCode") errorCode: option<string_>,
  @ocaml.doc(
    "<p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>"
  )
  @as("ExternalUserId")
  externalUserId: option<externalUserId>,
}
@ocaml.doc(
  "<p>An optional category of meeting features that contains audio-specific configurations, such as operating parameters for Amazon Voice Focus. </p>"
)
type audioFeatures = {
  @ocaml.doc("<p>Makes echo reduction available to clients who connect to the meeting.</p>")
  @as("EchoReduction")
  echoReduction: option<meetingFeatureStatus>,
}
@ocaml.doc("<p>An Amazon Chime SDK meeting attendee. Includes a unique 
           <code>AttendeeId</code> and <code>JoinToken</code>. The 
           <code>JoinToken</code>
           allows a client to authenticate and join as the specified attendee. The 
           <code>JoinToken</code>
           expires when the meeting ends, or when 
           <a>DeleteAttendee</a>
           is called. After that, the attendee is unable to join the meeting.
       </p>
       
         <p>We recommend securely transferring each <code>JoinToken</code> from your server application
           to the client so that no other client has access to the token except for the one
           authorized to represent the attendee.</p>")
type attendee = {
  @ocaml.doc("<p>The join token used by the Amazon Chime SDK attendee.</p>") @as("JoinToken")
  joinToken: option<joinTokenString>,
  @ocaml.doc("<p>The Amazon Chime SDK attendee ID.</p>") @as("AttendeeId")
  attendeeId: option<guidString>,
  @ocaml.doc(
    "<p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>"
  )
  @as("ExternalUserId")
  externalUserId: option<externalUserId>,
}
@ocaml.doc(
  "<p>The configuration for the current transcription operation. Must contain <code>EngineTranscribeSettings</code> or <code>EngineTranscribeMedicalSettings</code>.</p>"
)
type transcriptionConfiguration = {
  @ocaml.doc("<p>The transcription configuration settings passed to Amazon Transcribe Medical.</p>")
  @as("EngineTranscribeMedicalSettings")
  engineTranscribeMedicalSettings: option<engineTranscribeMedicalSettings>,
  @ocaml.doc("<p>The transcription configuration settings passed to Amazon Transcribe.</p>")
  @as("EngineTranscribeSettings")
  engineTranscribeSettings: option<engineTranscribeSettings>,
}
@ocaml.doc("<p>The configuration settings of the features available to a meeting.></p>")
type meetingFeaturesConfiguration = {
  @ocaml.doc("<p>The configuration settings for the audio features available to a meeting. </p>")
  @as("Audio")
  audio: option<audioFeatures>,
}
type createMeetingWithAttendeesRequestItemList = array<createAttendeeRequestItem>
type createAttendeeRequestItemList = array<createAttendeeRequestItem>
type batchCreateAttendeeErrorList = array<createAttendeeError>
type attendeeList = array<attendee>
@ocaml.doc("<p>A meeting created using the Amazon Chime SDK.</p>")
type meeting = {
  @ocaml.doc(
    "<p>When specified, replicates the media from the primary meeting to this meeting.</p>"
  )
  @as("PrimaryMeetingId")
  primaryMeetingId: option<primaryMeetingId>,
  @ocaml.doc("<p>The features available to a meeting, such as Amazon Voice Focus.</p>")
  @as("MeetingFeatures")
  meetingFeatures: option<meetingFeaturesConfiguration>,
  @ocaml.doc("<p>The media placement for the meeting.</p>") @as("MediaPlacement")
  mediaPlacement: option<mediaPlacement>,
  @ocaml.doc("<p>The Region in which you create the meeting. Available values: <code>af-south-1</code>, <code>ap-northeast-1</code>, 
            <code>ap-northeast-2</code>, <code>ap-south-1</code>, <code>ap-southeast-1</code>, <code>ap-southeast-2</code>, <code>ca-central-1</code>, 
            <code>eu-central-1</code>, <code>eu-north-1</code>, <code>eu-south-1</code>,
            <code>eu-west-1</code>, <code>eu-west-2</code>, <code>eu-west-3</code>,
            <code>sa-east-1</code>, <code>us-east-1</code>, <code>us-east-2</code>,
            <code>us-west-1</code>, <code>us-west-2</code>.</p>
        <p>Available values in AWS GovCloud (US) Regions: <code>us-gov-east-1</code>, <code>us-gov-west-1</code>.</p>")
  @as("MediaRegion")
  mediaRegion: option<mediaRegion>,
  @ocaml.doc("<p>The external meeting ID.</p>") @as("ExternalMeetingId")
  externalMeetingId: option<externalMeetingId>,
  @ocaml.doc("<p>Reserved.</p>") @as("MeetingHostId") meetingHostId: option<externalUserId>,
  @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId")
  meetingId: option<guidString>,
}
@ocaml.doc("<p>The Amazon Chime SDK meetings APIs in this section allow software developers to create Amazon Chime SDK meetings, set the AWS Regions for meetings, create and manage users, and send and 
            receive meeting notifications. For more information about the meeting APIs, see <a href=\"https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Meetings.html\">Amazon Chime SDK meetings</a>.</p>")
module StopMeetingTranscription = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the meeting for which you stop transcription.</p>")
    @as("MeetingId")
    meetingId: guidString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "StopMeetingTranscriptionCommand"
  let make = (~meetingId, ()) => new({meetingId: meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMeeting = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteMeetingCommand"
  let make = (~meetingId, ()) => new({meetingId: meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAttendee = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime SDK attendee ID.</p>") @as("AttendeeId") attendeeId: guidString,
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteAttendeeCommand"
  let make = (~attendeeId, ~meetingId, ()) => new({attendeeId: attendeeId, meetingId: meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetAttendee = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime SDK attendee ID.</p>") @as("AttendeeId") attendeeId: guidString,
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Chime SDK attendee information.</p>") @as("Attendee")
    attendee: option<attendee>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetAttendeeCommand"
  let make = (~attendeeId, ~meetingId, ()) => new({attendeeId: attendeeId, meetingId: meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAttendee = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>"
    )
    @as("ExternalUserId")
    externalUserId: externalUserId,
    @ocaml.doc("<p>The unique ID of the meeting.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {
    @ocaml.doc("<p>The attendee information, including attendee ID and join token.</p>")
    @as("Attendee")
    attendee: option<attendee>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateAttendeeCommand"
  let make = (~externalUserId, ~meetingId, ()) =>
    new({externalUserId: externalUserId, meetingId: meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartMeetingTranscription = {
  type t
  type request = {
    @ocaml.doc("<p>The configuration for the current transcription operation. Must contain <code>EngineTranscribeSettings</code> or 
            <code>EngineTranscribeMedicalSettings</code>.</p>")
    @as("TranscriptionConfiguration")
    transcriptionConfiguration: transcriptionConfiguration,
    @ocaml.doc("<p>The unique ID of the meeting being transcribed.</p>") @as("MeetingId")
    meetingId: guidString,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "StartMeetingTranscriptionCommand"
  let make = (~transcriptionConfiguration, ~meetingId, ()) =>
    new({transcriptionConfiguration: transcriptionConfiguration, meetingId: meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListAttendees = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<resultMax>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The Amazon Chime SDK attendee information.</p>") @as("Attendees")
    attendees: option<attendeeList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListAttendeesCommand"
  let make = (~meetingId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, meetingId: meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchCreateAttendee = {
  type t
  type request = {
    @ocaml.doc("<p>The attendee information, including attendees' IDs and join tokens.</p>")
    @as("Attendees")
    attendees: createAttendeeRequestItemList,
    @ocaml.doc("<p>The Amazon Chime SDK ID of the meeting to which you're adding attendees.</p>")
    @as("MeetingId")
    meetingId: guidString,
  }
  type response = {
    @ocaml.doc(
      "<p>If the action fails for one or more of the attendees in the request, a list of the attendees is returned, along with error codes and error messages.</p>"
    )
    @as("Errors")
    errors: option<batchCreateAttendeeErrorList>,
    @ocaml.doc("<p>The attendee information, including attendees' IDs and join tokens.</p>")
    @as("Attendees")
    attendees: option<attendeeList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "BatchCreateAttendeeCommand"
  let make = (~attendees, ~meetingId, ()) => new({attendees: attendees, meetingId: meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMeeting = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Chime SDK meeting ID.</p>") @as("MeetingId") meetingId: guidString,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Chime SDK meeting information.</p>") @as("Meeting")
    meeting: option<meeting>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "GetMeetingCommand"
  let make = (~meetingId, ()) => new({meetingId: meetingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMeetingWithAttendees = {
  type t
  type request = {
    @ocaml.doc(
      "<p>When specified, replicates the media from the primary meeting to the new meeting.</p>"
    )
    @as("PrimaryMeetingId")
    primaryMeetingId: option<primaryMeetingId>,
    @ocaml.doc("<p>The attendee information, including attendees' IDs and join tokens.</p>")
    @as("Attendees")
    attendees: createMeetingWithAttendeesRequestItemList,
    @ocaml.doc(
      "<p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>"
    )
    @as("NotificationsConfiguration")
    notificationsConfiguration: option<notificationsConfiguration>,
    @ocaml.doc(
      "<p>Lists the audio and video features enabled for a meeting, such as echo reduction.</p>"
    )
    @as("MeetingFeatures")
    meetingFeatures: option<meetingFeaturesConfiguration>,
    @ocaml.doc("<p>The external meeting ID.</p>") @as("ExternalMeetingId")
    externalMeetingId: externalMeetingId,
    @ocaml.doc("<p>Reserved.</p>") @as("MeetingHostId") meetingHostId: option<externalUserId>,
    @ocaml.doc("<p>The Region in which to create the meeting.</p>
       
         <p>
           Available values: 
           <code>af-south-1</code>, 
           <code>ap-northeast-1</code>, 
           <code>ap-northeast-2</code>, 
           <code>ap-south-1</code>, 
           <code>ap-southeast-1</code>, 
           <code>ap-southeast-2</code>,           
           <code>ca-central-1</code>, 
           <code>eu-central-1</code>, 
           <code>eu-north-1</code>, 
           <code>eu-south-1</code>, 
           <code>eu-west-1</code>, 
           <code>eu-west-2</code>, 
           <code>eu-west-3</code>,            
           <code>sa-east-1</code>, 
           <code>us-east-1</code>, 
           <code>us-east-2</code>, 
           <code>us-west-1</code>, 
           <code>us-west-2</code>.
       </p>
         <p>Available values in AWS GovCloud (US) Regions: <code>us-gov-east-1</code>, <code>us-gov-west-1</code>.</p>")
    @as("MediaRegion")
    mediaRegion: mediaRegion,
    @ocaml.doc(
      "<p>The unique identifier for the client request. Use a different token for different meetings.</p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: clientRequestToken,
  }
  type response = {
    @ocaml.doc(
      "<p>If the action fails for one or more of the attendees in the request, a list of the attendees is returned, along with error codes and error messages.</p>"
    )
    @as("Errors")
    errors: option<batchCreateAttendeeErrorList>,
    @ocaml.doc("<p>The attendee information, including attendees' IDs and join tokens.</p>")
    @as("Attendees")
    attendees: option<attendeeList>,
    @ocaml.doc("<p>The meeting information, including the meeting ID and 
           <code>MediaPlacement</code>.</p>")
    @as("Meeting")
    meeting: option<meeting>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "CreateMeetingWithAttendeesCommand"
  let make = (
    ~attendees,
    ~externalMeetingId,
    ~mediaRegion,
    ~clientRequestToken,
    ~primaryMeetingId=?,
    ~notificationsConfiguration=?,
    ~meetingFeatures=?,
    ~meetingHostId=?,
    (),
  ) =>
    new({
      primaryMeetingId: primaryMeetingId,
      attendees: attendees,
      notificationsConfiguration: notificationsConfiguration,
      meetingFeatures: meetingFeatures,
      externalMeetingId: externalMeetingId,
      meetingHostId: meetingHostId,
      mediaRegion: mediaRegion,
      clientRequestToken: clientRequestToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMeeting = {
  type t
  type request = {
    @ocaml.doc(
      "<p>When specified, replicates the media from the primary meeting to the new meeting.</p>"
    )
    @as("PrimaryMeetingId")
    primaryMeetingId: option<primaryMeetingId>,
    @ocaml.doc(
      "<p>Lists the audio and video features enabled for a meeting, such as echo reduction.</p>"
    )
    @as("MeetingFeatures")
    meetingFeatures: option<meetingFeaturesConfiguration>,
    @ocaml.doc(
      "<p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>"
    )
    @as("NotificationsConfiguration")
    notificationsConfiguration: option<notificationsConfiguration>,
    @ocaml.doc("<p>The external meeting ID.</p>") @as("ExternalMeetingId")
    externalMeetingId: externalMeetingId,
    @ocaml.doc("<p>Reserved.</p>") @as("MeetingHostId") meetingHostId: option<externalUserId>,
    @ocaml.doc("<p>The Region in which to create the meeting.</p>
       
         <p>
           Available values: 
           <code>af-south-1</code>, 
           <code>ap-northeast-1</code>, 
           <code>ap-northeast-2</code>, 
           <code>ap-south-1</code>, 
           <code>ap-southeast-1</code>, 
           <code>ap-southeast-2</code>,           
           <code>ca-central-1</code>, 
           <code>eu-central-1</code>, 
           <code>eu-north-1</code>, 
           <code>eu-south-1</code>, 
           <code>eu-west-1</code>, 
           <code>eu-west-2</code>, 
           <code>eu-west-3</code>,            
           <code>sa-east-1</code>, 
           <code>us-east-1</code>, 
           <code>us-east-2</code>, 
           <code>us-west-1</code>, 
           <code>us-west-2</code>.
       </p>
         <p>Available values in AWS GovCloud (US) Regions: <code>us-gov-east-1</code>, <code>us-gov-west-1</code>.</p>")
    @as("MediaRegion")
    mediaRegion: mediaRegion,
    @ocaml.doc(
      "<p>The unique identifier for the client request. Use a different token for different meetings.</p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: clientRequestToken,
  }
  type response = {
    @ocaml.doc("<p>The meeting information, including the meeting ID and 
           <code>MediaPlacement</code>.</p>")
    @as("Meeting")
    meeting: option<meeting>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateMeetingCommand"
  let make = (
    ~externalMeetingId,
    ~mediaRegion,
    ~clientRequestToken,
    ~primaryMeetingId=?,
    ~meetingFeatures=?,
    ~notificationsConfiguration=?,
    ~meetingHostId=?,
    (),
  ) =>
    new({
      primaryMeetingId: primaryMeetingId,
      meetingFeatures: meetingFeatures,
      notificationsConfiguration: notificationsConfiguration,
      externalMeetingId: externalMeetingId,
      meetingHostId: meetingHostId,
      mediaRegion: mediaRegion,
      clientRequestToken: clientRequestToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
