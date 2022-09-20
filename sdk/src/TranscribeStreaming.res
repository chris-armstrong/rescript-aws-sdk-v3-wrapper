type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-transcribe") @new
external createClient: unit => awsServiceClient = "TranscribeStreamingClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vocabularyNames = string
type vocabularyName = string
type vocabularyFilterNames = string
type vocabularyFilterName = string
type vocabularyFilterMethod = [@as("tag") #Tag | @as("mask") #Mask | @as("remove") #Remove]
type type_ = [@as("DICTATION") #DICTATION | @as("CONVERSATION") #CONVERSATION]
type string_ = string
type stable = bool
type specialty = [
  | @as("UROLOGY") #UROLOGY
  | @as("RADIOLOGY") #RADIOLOGY
  | @as("ONCOLOGY") #ONCOLOGY
  | @as("NEUROLOGY") #NEUROLOGY
  | @as("CARDIOLOGY") #CARDIOLOGY
  | @as("PRIMARYCARE") #PRIMARYCARE
]
type sessionId = string
type requestId = string
type piiEntityTypes = string
type partialResultsStability = [@as("low") #Low | @as("medium") #Medium | @as("high") #High]
type numberOfChannels = int
type modelName = string
type medicalContentIdentificationType = [@as("PHI") #PHI]
type mediaSampleRateHertz = int
type mediaEncoding = [@as("flac") #Flac | @as("ogg-opus") #Ogg_Opus | @as("pcm") #Pcm]
type languageOptions = string
type languageCode = [
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
type itemType = [@as("punctuation") #Punctuation | @as("pronunciation") #Pronunciation]
type double = float
type contentRedactionType = [@as("PII") #PII]
type contentIdentificationType = [@as("PII") #PII]
type confidence = float
type boolean_ = bool
type audioChunk = NodeJs.Buffer.t
@ocaml.doc("<p>Service is currently unavailable. Try your request later.</p>")
type serviceUnavailableException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @as("Message") message: option<string_>,
}
@ocaml.doc("<p>A word, phrase, or punctuation mark that is transcribed from the input audio.</p>")
type medicalItem = {
  @ocaml.doc("<p>If speaker identification is enabled, shows the integer values that correspond to the
            different speakers identified in the stream. For example, if the value of
                <code>Speaker</code> in the stream is either a <code>0</code> or a <code>1</code>,
            that indicates that Amazon Transcribe Medical has identified two speakers in the stream. The value of
                <code>0</code> corresponds to one speaker and the value of <code>1</code>
            corresponds to the other speaker.</p>")
  @as("Speaker")
  speaker: option<string_>,
  @ocaml.doc("<p>A value between 0 and 1 for an item that is a confidence score that Amazon Transcribe Medical assigns to
            each word that it transcribes.</p>")
  @as("Confidence")
  confidence: option<confidence>,
  @ocaml.doc("<p>The word or punctuation mark that was recognized in the input audio.</p>")
  @as("Content")
  content: option<string_>,
  @ocaml.doc("<p>The type of the item. <code>PRONUNCIATION</code> indicates that the item is a word
            that was recognized in the input audio. <code>PUNCTUATION</code> indicates that the item
            was interpreted as a pause in the input audio, such as a period to indicate the end of a
            sentence.</p>")
  @as("Type")
  type_: option<itemType>,
  @ocaml.doc("<p>The number of seconds into an audio stream that indicates the creation time of an
            item.</p>")
  @as("EndTime")
  endTime: option<double>,
  @ocaml.doc("<p>The number of seconds into an audio stream that indicates the creation time of an
            item.</p>")
  @as("StartTime")
  startTime: option<double>,
}
@ocaml.doc("<p>The medical entity identified as personal health information.</p>")
type medicalEntity = {
  @ocaml.doc("<p>A value between zero and one that Amazon Transcribe Medical assigned to the personal health information
            that it identified in the source audio. Larger values indicate that Amazon Transcribe Medical has higher
            confidence in the personal health information that it identified.</p>")
  @as("Confidence")
  confidence: option<confidence>,
  @ocaml.doc("<p>The word or words in the transcription output that have been identified as a
            medical entity.</p>")
  @as("Content")
  content: option<string_>,
  @ocaml.doc("<p>The type of personal health information of the medical entity.</p>")
  @as("Category")
  category: option<string_>,
  @ocaml.doc("<p>The end time of the speech that was identified as a medical entity.</p>")
  @as("EndTime")
  endTime: option<double>,
  @ocaml.doc("<p>The start time of the speech that was identified as a medical entity.</p>")
  @as("StartTime")
  startTime: option<double>,
}
@ocaml.doc("<p>You have exceeded the maximum number of concurrent transcription streams, are starting
      transcription streams too quickly, or the maximum audio length of 4 hours. Wait until a stream
      has finished processing, or break your audio stream into smaller chunks and try your request
      again.</p>")
type limitExceededException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @as("Message") message: option<string_>,
}
@ocaml.doc("<p>The language codes of the identified languages and their associated confidence scores. 
      The confidence score is a value between zero and one; a larger value indicates a higher 
      confidence in the identified language.</p>")
type languageWithScore = {
  @ocaml.doc("<p>The confidence score for the associated language code. Confidence scores are values
      between zero and one; larger values indicate a higher confidence in the identified language.
     </p>")
  @as("Score")
  score: option<double>,
  @ocaml.doc("<p>The language code of the language identified by Amazon Transcribe.</p>")
  @as("LanguageCode")
  languageCode: option<languageCode>,
}
@ocaml.doc("<p>A word, phrase, or punctuation mark that is transcribed from the input audio.</p>")
type item = {
  @ocaml.doc("<p>If partial result stabilization has been enabled, indicates whether the word or phrase in
      the item is stable. If <code>Stable</code> is <code>true</code>, the result is stable.</p>")
  @as("Stable")
  stable: option<stable>,
  @ocaml.doc("<p>A value between zero and one for an item that is a confidence score that Amazon Transcribe assigns to each
      word or phrase that it transcribes.</p>")
  @as("Confidence")
  confidence: option<confidence>,
  @ocaml.doc("<p>If speaker identification is enabled, shows the speakers identified in the media
      stream.</p>")
  @as("Speaker")
  speaker: option<string_>,
  @ocaml.doc("<p>Indicates whether a word in the item matches a word in the vocabulary filter you've chosen
      for your media stream. If <code>true</code> then a word in the item matches your
      vocabulary filter.</p>")
  @as("VocabularyFilterMatch")
  vocabularyFilterMatch: option<boolean_>,
  @ocaml.doc("<p>The word or punctuation that was recognized in the input audio.</p>")
  @as("Content")
  content: option<string_>,
  @ocaml.doc("<p>The type of the item. <code>PRONUNCIATION</code> indicates that the item is a word
      that was recognized in the input audio. <code>PUNCTUATION</code> indicates that the item
      was interpreted as a pause in the input audio.</p>")
  @as("Type")
  type_: option<itemType>,
  @ocaml.doc("<p>The offset from the beginning of the audio stream to the end of the audio that resulted in
      the item.</p>")
  @as("EndTime")
  endTime: option<double>,
  @ocaml.doc("<p>The offset from the beginning of the audio stream to the beginning of the audio that
      resulted in the item.</p>")
  @as("StartTime")
  startTime: option<double>,
}
@ocaml.doc("<p>A problem occurred while processing the audio. Amazon Transcribe or Amazon Transcribe Medical terminated processing. Try
      your request again.</p>")
type internalFailureException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @as("Message") message: option<string_>,
}
@ocaml.doc("<p>The entity identified as personally identifiable information (PII).</p>")
type entity = {
  @ocaml.doc(
    "<p>A value between zero and one that Amazon Transcribe assigns to PII identified in the source audio. Larger values indicate a higher confidence in PII identification.</p>"
  )
  @as("Confidence")
  confidence: option<confidence>,
  @ocaml.doc(
    "<p>The words in the transcription output that have been identified as a PII entity.</p>"
  )
  @as("Content")
  content: option<string_>,
  @ocaml.doc(
    "<p>The type of PII identified in this entity; for example, name or credit card number.</p>"
  )
  @as("Type")
  type_: option<string_>,
  @ocaml.doc("<p>The category of information identified in this entity; for example, PII.</p>")
  @as("Category")
  category: option<string_>,
  @ocaml.doc("<p>The end time of speech that was identified as PII.</p>") @as("EndTime")
  endTime: option<double>,
  @ocaml.doc("<p>The start time of speech that was identified as PII.</p>") @as("StartTime")
  startTime: option<double>,
}
@ocaml.doc("<p>A new stream started with the same session ID. The current stream has been
      terminated.</p>")
type conflictException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @as("Message") message: option<string_>,
}
@ocaml.doc("<p>One or more arguments to the <code>StartStreamTranscription</code> or
        <code>StartMedicalStreamTranscription</code> operation was invalid. For example,
        <code>MediaEncoding</code> was not set to a valid encoding, or <code>LanguageCode</code> was
      not set to a valid code. Check the parameters and try your request again.</p>")
type badRequestException = {
  name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @as("Message") message: option<string_>,
}
@ocaml.doc("<p>Provides a wrapper for the audio chunks that you are sending.</p>
         <p>For information on audio encoding in Amazon Transcribe, see 
      <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/input.html\">Speech input</a>. For information
      on audio encoding formats in Amazon Transcribe Medical, see 
      <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/input-med.html\">Speech input</a>.</p>")
type audioEvent = {
  @ocaml.doc("<p>An audio blob that contains the next part of the audio that you want to transcribe. The
      maximum audio chunk size is 32 KB.</p>")
  @as("AudioChunk")
  audioChunk: option<audioChunk>,
}
type medicalItemList = array<medicalItem>
type medicalEntityList = array<medicalEntity>
type languageIdentification = array<languageWithScore>
type itemList = array<item>
type entityList = array<entity>
@ocaml.doc("<p>Represents the audio stream from your application to Amazon Transcribe.</p>")
type audioStream = {
  @ocaml.doc("<p>A blob of audio from your application. You audio stream consists of one or more audio
      events.</p>
         <p>For information on audio encoding formats in Amazon Transcribe, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/input.html\">Speech input</a>. For
      information on audio encoding formats in Amazon Transcribe Medical, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/input-med.html\">Speech input</a>.</p>
         <p>For more information on stream encoding in Amazon Transcribe, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/event-stream.html\">Event stream encoding</a>. For
      information on stream encoding in Amazon Transcribe Medical, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/event-stream-med.html\">Event stream encoding</a>.</p>")
  @as("AudioEvent")
  audioEvent: option<audioEvent>,
}
module AudioStream = {
  type t = AudioEvent(audioEvent)
  exception AudioStreamUnspecified
  let classify = value =>
    switch value {
    | {audioEvent: Some(x)} => AudioEvent(x)
    | _ => raise(AudioStreamUnspecified)
    }

  let make = value =>
    switch value {
    | AudioEvent(x) => {audioEvent: Some(x)}
    }
}
@ocaml.doc("<p>A list of possible transcriptions for the audio.</p>")
type medicalAlternative = {
  @ocaml.doc(
    "<p>Contains the medical entities identified as personal health information in the transcription output.</p>"
  )
  @as("Entities")
  entities: option<medicalEntityList>,
  @ocaml.doc("<p>A list of objects that contains words and punctuation marks that represents one or
            more interpretations of the input audio.</p>")
  @as("Items")
  items: option<medicalItemList>,
  @ocaml.doc("<p>The text that was transcribed from the audio.</p>") @as("Transcript")
  transcript: option<string_>,
}
@ocaml.doc("<p>A list of possible transcriptions for the audio.</p>")
type alternative = {
  @ocaml.doc(
    "<p>Contains the entities identified as personally identifiable information (PII) in the transcription output.</p>"
  )
  @as("Entities")
  entities: option<entityList>,
  @ocaml.doc("<p>One or more alternative interpretations of the input audio. </p>") @as("Items")
  items: option<itemList>,
  @ocaml.doc("<p>The text that was transcribed from the audio.</p>") @as("Transcript")
  transcript: option<string_>,
}
type medicalAlternativeList = array<medicalAlternative>
type alternativeList = array<alternative>
@ocaml.doc("<p>The result of transcribing a portion of the input audio stream. </p>")
type result = {
  @ocaml.doc("<p>The language code of the dominant language identified in your media.</p>")
  @as("LanguageIdentification")
  languageIdentification: option<languageIdentification>,
  @ocaml.doc("<p>The language code of the identified language in your media stream.</p>")
  @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>When channel identification is enabled, Amazon Transcribe transcribes the speech from each audio
      channel separately.</p>
         <p>You can use <code>ChannelId</code> to retrieve the transcription results for a single
      channel in your audio stream.</p>")
  @as("ChannelId")
  channelId: option<string_>,
  @ocaml.doc("<p>A list of possible transcriptions for the audio. Each alternative typically contains one
      <code>item</code> that contains the result of the transcription.</p>")
  @as("Alternatives")
  alternatives: option<alternativeList>,
  @ocaml.doc("<p>Amazon Transcribe divides the incoming audio stream into segments at natural points in the audio.
      Transcription results are returned based on these segments. </p>
         <p>The <code>IsPartial</code> field is <code>true</code> to indicate that Amazon Transcribe has
      additional transcription data to send, <code>false</code> to indicate that this is the last
      transcription result for the segment.</p>")
  @as("IsPartial")
  isPartial: option<boolean_>,
  @ocaml.doc("<p>The offset in seconds from the beginning of the audio stream to the end of the
      result.</p>")
  @as("EndTime")
  endTime: option<double>,
  @ocaml.doc("<p>The offset in seconds from the beginning of the audio stream to the beginning of the
      result.</p>")
  @as("StartTime")
  startTime: option<double>,
  @ocaml.doc("<p>A unique identifier for the result. </p>") @as("ResultId")
  resultId: option<string_>,
}
@ocaml.doc("<p>The results of transcribing a portion of the input audio stream.</p>")
type medicalResult = {
  @ocaml.doc("<p>When channel identification is enabled, Amazon Transcribe Medical transcribes the speech from each audio
            channel separately.</p>
        <p>You can use <code>ChannelId</code> to retrieve the transcription results for a single
            channel in your audio stream.</p>")
  @as("ChannelId")
  channelId: option<string_>,
  @ocaml.doc("<p>A list of possible transcriptions of the audio. Each alternative typically contains
            one <code>Item</code> that contains the result of the transcription.</p>")
  @as("Alternatives")
  alternatives: option<medicalAlternativeList>,
  @ocaml.doc("<p>Amazon Transcribe Medical divides the incoming audio stream into segments at natural points in the audio.
            Transcription results are returned based on these segments.</p>
        <p>The <code>IsPartial</code> field is <code>true</code> to indicate that Amazon Transcribe Medical has
            additional transcription data to send. The <code>IsPartial</code> field is
                <code>false</code> to indicate that this is the last transcription result for the
            segment.</p>")
  @as("IsPartial")
  isPartial: option<boolean_>,
  @ocaml.doc("<p>The time, in seconds, from the beginning of the audio stream to the end of the
            result.</p>")
  @as("EndTime")
  endTime: option<double>,
  @ocaml.doc("<p>The time, in seconds, from the beginning of the audio stream to the beginning of the
            result.</p>")
  @as("StartTime")
  startTime: option<double>,
  @ocaml.doc("<p>A unique identifier for the result.</p>") @as("ResultId")
  resultId: option<string_>,
}
type resultList = array<result>
type medicalResultList = array<medicalResult>
@ocaml.doc("<p>The transcription in a <a>TranscriptEvent</a>.</p>")
type transcript = {
  @ocaml.doc("<p>
            <a>Result</a> objects that contain the results of transcribing a portion of the
      input audio stream. The array can be empty.</p>")
  @as("Results")
  results: option<resultList>,
}
@ocaml.doc("<p>The medical transcript in a <a>MedicalTranscriptEvent</a>.</p>")
type medicalTranscript = {
  @ocaml.doc("<p>
            <a>MedicalResult</a> objects that contain the results of transcribing a
            portion of the input audio stream. The array can be empty.</p>")
  @as("Results")
  results: option<medicalResultList>,
}
@ocaml.doc("<p>Represents a set of transcription results from the server to the client. It contains one
      or more segments of the transcription.</p>")
type transcriptEvent = {
  @ocaml.doc("<p>The transcription of the audio stream. The transcription is composed of all of the items
      in the results list.</p>")
  @as("Transcript")
  transcript: option<transcript>,
}
@ocaml.doc("<p>Represents a set of transcription results from the server to the client. It contains
            one or more segments of the transcription.</p>")
type medicalTranscriptEvent = {
  @ocaml.doc("<p>The transcription of the audio stream. The transcription is composed of all of the
            items in the results list.</p>")
  @as("Transcript")
  transcript: option<medicalTranscript>,
}
@ocaml.doc(
  "<p>Represents the transcription result stream from Amazon Transcribe to your application.</p>"
)
type transcriptResultStream = {
  @ocaml.doc("<p>Service is currently unavailable. Try your request later.</p>")
  @as("ServiceUnavailableException")
  serviceUnavailableException: option<serviceUnavailableException>,
  @ocaml.doc("<p>A new stream started with the same session ID. The current stream has been
      terminated.</p>")
  @as("ConflictException")
  conflictException: option<conflictException>,
  @ocaml.doc(
    "<p>A problem occurred while processing the audio. Amazon Transcribe terminated processing.</p>"
  )
  @as("InternalFailureException")
  internalFailureException: option<internalFailureException>,
  @ocaml.doc("<p>Your client has exceeded one of the Amazon Transcribe limits, typically the limit on audio length.
      Break your audio stream into smaller chunks and try your request again.</p>")
  @as("LimitExceededException")
  limitExceededException: option<limitExceededException>,
  @ocaml.doc("<p>A client error occurred when the stream was created. Check the parameters of the request
      and try your request again.</p>")
  @as("BadRequestException")
  badRequestException: option<badRequestException>,
  @ocaml.doc("<p>A portion of the transcription of the audio stream. Events are sent periodically from
      Amazon Transcribe to your application. The event can be a partial transcription of a section of the audio
      stream, or it can be the entire transcription of that portion of the audio stream. </p>")
  @as("TranscriptEvent")
  transcriptEvent: option<transcriptEvent>,
}
module TranscriptResultStream = {
  type t =
    | ServiceUnavailableException(serviceUnavailableException)
    | ConflictException(conflictException)
    | InternalFailureException(internalFailureException)
    | LimitExceededException(limitExceededException)
    | BadRequestException(badRequestException)
    | TranscriptEvent(transcriptEvent)
  exception TranscriptResultStreamUnspecified
  let classify = value =>
    switch value {
    | {serviceUnavailableException: Some(x)} => ServiceUnavailableException(x)
    | {conflictException: Some(x)} => ConflictException(x)
    | {internalFailureException: Some(x)} => InternalFailureException(x)
    | {limitExceededException: Some(x)} => LimitExceededException(x)
    | {badRequestException: Some(x)} => BadRequestException(x)
    | {transcriptEvent: Some(x)} => TranscriptEvent(x)
    | _ => raise(TranscriptResultStreamUnspecified)
    }

  let make = value =>
    switch value {
    | ServiceUnavailableException(x) => {
        serviceUnavailableException: Some(x),
        conflictException: None,
        internalFailureException: None,
        limitExceededException: None,
        badRequestException: None,
        transcriptEvent: None,
      }
    | ConflictException(x) => {
        conflictException: Some(x),
        serviceUnavailableException: None,
        internalFailureException: None,
        limitExceededException: None,
        badRequestException: None,
        transcriptEvent: None,
      }
    | InternalFailureException(x) => {
        internalFailureException: Some(x),
        serviceUnavailableException: None,
        conflictException: None,
        limitExceededException: None,
        badRequestException: None,
        transcriptEvent: None,
      }
    | LimitExceededException(x) => {
        limitExceededException: Some(x),
        serviceUnavailableException: None,
        conflictException: None,
        internalFailureException: None,
        badRequestException: None,
        transcriptEvent: None,
      }
    | BadRequestException(x) => {
        badRequestException: Some(x),
        serviceUnavailableException: None,
        conflictException: None,
        internalFailureException: None,
        limitExceededException: None,
        transcriptEvent: None,
      }
    | TranscriptEvent(x) => {
        transcriptEvent: Some(x),
        serviceUnavailableException: None,
        conflictException: None,
        internalFailureException: None,
        limitExceededException: None,
        badRequestException: None,
      }
    }
}
@ocaml.doc(
  "<p>Represents the transcription result stream from Amazon Transcribe Medical to your application.</p>"
)
type medicalTranscriptResultStream = {
  @as("ServiceUnavailableException")
  serviceUnavailableException: option<serviceUnavailableException>,
  @as("ConflictException") conflictException: option<conflictException>,
  @as("InternalFailureException") internalFailureException: option<internalFailureException>,
  @as("LimitExceededException") limitExceededException: option<limitExceededException>,
  @as("BadRequestException") badRequestException: option<badRequestException>,
  @ocaml.doc("<p>A portion of the transcription of the audio stream. Events are sent periodically from
            Amazon Transcribe Medical to your application. The event can be a partial transcription of a section of the
            audio stream, or it can be the entire transcription of that portion of the audio
            stream.</p>")
  @as("TranscriptEvent")
  transcriptEvent: option<medicalTranscriptEvent>,
}
module MedicalTranscriptResultStream = {
  type t =
    | ServiceUnavailableException(serviceUnavailableException)
    | ConflictException(conflictException)
    | InternalFailureException(internalFailureException)
    | LimitExceededException(limitExceededException)
    | BadRequestException(badRequestException)
    | TranscriptEvent(medicalTranscriptEvent)
  exception MedicalTranscriptResultStreamUnspecified
  let classify = value =>
    switch value {
    | {serviceUnavailableException: Some(x)} => ServiceUnavailableException(x)
    | {conflictException: Some(x)} => ConflictException(x)
    | {internalFailureException: Some(x)} => InternalFailureException(x)
    | {limitExceededException: Some(x)} => LimitExceededException(x)
    | {badRequestException: Some(x)} => BadRequestException(x)
    | {transcriptEvent: Some(x)} => TranscriptEvent(x)
    | _ => raise(MedicalTranscriptResultStreamUnspecified)
    }

  let make = value =>
    switch value {
    | ServiceUnavailableException(x) => {
        serviceUnavailableException: Some(x),
        conflictException: None,
        internalFailureException: None,
        limitExceededException: None,
        badRequestException: None,
        transcriptEvent: None,
      }
    | ConflictException(x) => {
        conflictException: Some(x),
        serviceUnavailableException: None,
        internalFailureException: None,
        limitExceededException: None,
        badRequestException: None,
        transcriptEvent: None,
      }
    | InternalFailureException(x) => {
        internalFailureException: Some(x),
        serviceUnavailableException: None,
        conflictException: None,
        limitExceededException: None,
        badRequestException: None,
        transcriptEvent: None,
      }
    | LimitExceededException(x) => {
        limitExceededException: Some(x),
        serviceUnavailableException: None,
        conflictException: None,
        internalFailureException: None,
        badRequestException: None,
        transcriptEvent: None,
      }
    | BadRequestException(x) => {
        badRequestException: Some(x),
        serviceUnavailableException: None,
        conflictException: None,
        internalFailureException: None,
        limitExceededException: None,
        transcriptEvent: None,
      }
    | TranscriptEvent(x) => {
        transcriptEvent: Some(x),
        serviceUnavailableException: None,
        conflictException: None,
        internalFailureException: None,
        limitExceededException: None,
        badRequestException: None,
      }
    }
}
@ocaml.doc("<p>Operations and objects for transcribing streaming speech to text.</p>")
module StartStreamTranscription = {
  type t
  type request = {
    @ocaml.doc("<p>The names of the vocabulary filters you want to use with your transcription.</p>
         <p>Note that if the vocabulary filters you specify are in languages that don't match the 
       language identified in your media, your job fails.</p>
         <p>This operation is only intended for use in conjunction with the 
       <code>IdentifyLanguage</code> operation. If you're not using <code>IdentifyLanguage</code>
       in your request and want to use a vocabulary filter with your transcription, use the 
       <code>VocabularyFilterName</code> operation instead.</p>")
    @as("VocabularyFilterNames")
    vocabularyFilterNames: option<vocabularyFilterNames>,
    @ocaml.doc("<p>The names of the custom vocabularies you want to use with your transcription.</p>
         <p>Note that if the custom vocabularies you specify are in languages that don't match the 
      language identified in your media, your job fails.</p>
         <p>This operation is only intended for use in conjunction with the 
      <code>IdentifyLanguage</code> operation. If you're not using <code>IdentifyLanguage</code>
      in your request and want to use a custom vocabulary with your transcription, use the 
      <code>VocabularyName</code> operation instead.</p>")
    @as("VocabularyNames")
    vocabularyNames: option<vocabularyNames>,
    @ocaml.doc("<p>Optional. From the subset of languages codes you provided for 
      <code>LanguageOptions</code>, you can select one preferred language for your 
      transcription.</p>
         <p>You can only use this parameter if you've set <code>IdentifyLanguage</code> to
      <code>true</code>in your request.</p>")
    @as("PreferredLanguage")
    preferredLanguage: option<languageCode>,
    @ocaml.doc("<p>An object containing a list of languages that might be present in your audio.</p>
         <p>You must provide two or more language codes to help Amazon Transcribe identify the correct 
      language of your media stream with the highest possible accuracy. You can only select one
      variant per language; for example, you can't include both <code>en-US</code> and
      <code>en-UK</code> in the same request.</p>
         <p>You can only use this parameter if you've set <code>IdentifyLanguage</code> to
      <code>true</code>in your request.</p>")
    @as("LanguageOptions")
    languageOptions: option<languageOptions>,
    @ocaml.doc("<p>Optional. Set this value to <code>true</code> to enable language identification for 
      your media stream.</p>")
    @as("IdentifyLanguage")
    identifyLanguage: option<boolean_>,
    @ocaml.doc("<p>The name of the language model you want to use.</p>") @as("LanguageModelName")
    languageModelName: option<modelName>,
    @ocaml.doc("<p>List the PII entity types you want to identify or redact. In order to specify entity types,
      you must have either <code>ContentIdentificationType</code> or
      <code>ContentRedactionType</code> enabled.</p>
         <p> 
            <code>PIIEntityTypes</code> must be comma-separated; the available values are:
      <code>BANK_ACCOUNT_NUMBER</code>, <code>BANK_ROUTING</code>,
      <code>CREDIT_DEBIT_NUMBER</code>, <code>CREDIT_DEBIT_CVV</code>, 
      <code>CREDIT_DEBIT_EXPIRY</code>, <code>PIN</code>, <code>EMAIL</code>, 
      <code>ADDRESS</code>, <code>NAME</code>, <code>PHONE</code>, 
      <code>SSN</code>, and <code>ALL</code>.</p>
         <p>
            <code>PiiEntityTypes</code> is an optional parameter with a default value of
      <code>ALL</code>.</p>")
    @as("PiiEntityTypes")
    piiEntityTypes: option<piiEntityTypes>,
    @ocaml.doc("<p>Set this field to PII to redact personally identifiable information (PII) in the transcription
      output. Content redaction is performed only upon complete transcription of the audio
      segments.</p> 
         <p>You can’t set both <code>ContentRedactionType</code> and
      <code>ContentIdentificationType</code> in the same request. If you set both, your request
      returns a <code>BadRequestException</code>.</p>")
    @as("ContentRedactionType")
    contentRedactionType: option<contentRedactionType>,
    @ocaml.doc("<p>Set this field to PII to identify personally identifiable information (PII) in the transcription
      output. Content identification is performed only upon complete transcription of the audio
      segments.</p> 
         <p>You can’t set both <code>ContentIdentificationType</code> and
      <code>ContentRedactionType</code> in the same request. If you set both, your request 
      returns a <code>BadRequestException</code>.</p>")
    @as("ContentIdentificationType")
    contentIdentificationType: option<contentIdentificationType>,
    @ocaml.doc("<p>You can use this field to set the stability level of the transcription results. A higher
      stability level means that the transcription results are less likely to change. Higher
      stability levels can come with lower overall transcription accuracy.</p>")
    @as("PartialResultsStability")
    partialResultsStability: option<partialResultsStability>,
    @ocaml.doc("<p>When <code>true</code>, instructs Amazon Transcribe to present transcription results that have the
      partial results stabilized. Normally, any word or phrase from one partial result can change in
      a subsequent partial result. With partial results stabilization enabled, only the last few
      words of one partial result can change in another partial result.</p>")
    @as("EnablePartialResultsStabilization")
    enablePartialResultsStabilization: option<boolean_>,
    @ocaml.doc("<p>The number of channels that are in your audio stream.</p>")
    @as("NumberOfChannels")
    numberOfChannels: option<numberOfChannels>,
    @ocaml.doc("<p>When <code>true</code>, instructs Amazon Transcribe to process each audio channel separately,
      then merges the transcription output of each channel into a single transcription.</p>
         <p>Amazon Transcribe also produces a transcription of each item. An item includes the start time, end
      time, and any alternative transcriptions.</p>")
    @as("EnableChannelIdentification")
    enableChannelIdentification: option<boolean_>,
    @ocaml.doc(
      "<p>When <code>true</code>, enables speaker identification in your media stream.</p>"
    )
    @as("ShowSpeakerLabel")
    showSpeakerLabel: option<boolean_>,
    @ocaml.doc("<p>The manner in which you use your vocabulary filter to filter words in your transcript.
      <code>Remove</code> removes filtered words from your transcription results.
      <code>Mask</code> masks filtered words with a <code>***</code> in your transcription
      results. <code>Tag</code> keeps the filtered words in your transcription results and tags 
      them. The tag appears as <code>VocabularyFilterMatch</code> equal to 
      <code>True</code>.</p>")
    @as("VocabularyFilterMethod")
    vocabularyFilterMethod: option<vocabularyFilterMethod>,
    @ocaml.doc("<p>The name of the vocabulary filter you want to use with your transcription.</p>
         <p>This operation is not intended for use in conjunction with the 
      <code>IdentifyLanguage</code> operation. If you're using <code>IdentifyLanguage</code>
      in your request and want to use one or more vocabulary filters with your transcription, use the 
      <code>VocabularyFilterNames</code> operation instead.</p>")
    @as("VocabularyFilterName")
    vocabularyFilterName: option<vocabularyFilterName>,
    @ocaml.doc("<p>PCM-encoded stream of audio blobs. The audio stream is encoded as an HTTP/2 data
      frame.</p>")
    @as("AudioStream")
    audioStream: audioStream,
    @ocaml.doc("<p>A identifier for the transcription session. Use this parameter when you want to retry a
      session. If you don't provide a session ID, Amazon Transcribe will generate one for you and return it in
      the response.</p>")
    @as("SessionId")
    sessionId: option<sessionId>,
    @ocaml.doc("<p>The name of the custom vocabulary you want to use with your transcription.</p>
         <p>This operation is not intended for use in conjunction with the 
      <code>IdentifyLanguage</code> operation. If you're using <code>IdentifyLanguage</code>
      in your request and want to use one or more custom vocabularies with your transcription, use the 
      <code>VocabularyNames</code> operation instead.</p>")
    @as("VocabularyName")
    vocabularyName: option<vocabularyName>,
    @ocaml.doc("<p>The encoding used for the input audio.</p>") @as("MediaEncoding")
    mediaEncoding: mediaEncoding,
    @ocaml.doc("<p>The sample rate of the input audio (in Hertz). Low-quality audio, such as telephone 
      audio, is typically around 8,000 Hz. High-quality audio typically ranges from 16,000 Hz to 
      48,000 Hz. Note that the sample rate you specify must match that of your audio.</p>")
    @as("MediaSampleRateHertz")
    mediaSampleRateHertz: mediaSampleRateHertz,
    @ocaml.doc("<p>The language code of the input audio stream.</p>") @as("LanguageCode")
    languageCode: option<languageCode>,
  }
  type response = {
    @ocaml.doc("<p>The name of the vocabulary filter used when processing the stream.</p>")
    @as("VocabularyFilterNames")
    vocabularyFilterNames: option<vocabularyFilterNames>,
    @ocaml.doc("<p>The name of the custom vocabulary used when processing the stream.</p>")
    @as("VocabularyNames")
    vocabularyNames: option<vocabularyNames>,
    @ocaml.doc("<p>The preferred language you specified in your request.</p>")
    @as("PreferredLanguage")
    preferredLanguage: option<languageCode>,
    @ocaml.doc("<p>The language codes used in the identification of your media stream's predominant 
      language.</p>")
    @as("LanguageOptions")
    languageOptions: option<languageOptions>,
    @ocaml.doc("<p>The language code of the language identified in your media stream.</p>")
    @as("IdentifyLanguage")
    identifyLanguage: option<boolean_>,
    @ocaml.doc("<p>The name of the custom language model used in the transcription.</p>")
    @as("LanguageModelName")
    languageModelName: option<modelName>,
    @ocaml.doc("<p>Lists the PII entity types you specified in your request.</p>")
    @as("PiiEntityTypes")
    piiEntityTypes: option<piiEntityTypes>,
    @ocaml.doc("<p>Shows whether content redaction was enabled in this stream.</p>")
    @as("ContentRedactionType")
    contentRedactionType: option<contentRedactionType>,
    @ocaml.doc("<p>Shows whether content identification was enabled in this stream.</p>")
    @as("ContentIdentificationType")
    contentIdentificationType: option<contentIdentificationType>,
    @ocaml.doc("<p>If partial results stabilization has been enabled in the stream, shows the stability
      level.</p>")
    @as("PartialResultsStability")
    partialResultsStability: option<partialResultsStability>,
    @ocaml.doc(
      "<p>Shows whether partial results stabilization was enabled in the transcription.</p>"
    )
    @as("EnablePartialResultsStabilization")
    enablePartialResultsStabilization: option<boolean_>,
    @ocaml.doc("<p>The number of channels identified in the stream.</p>") @as("NumberOfChannels")
    numberOfChannels: option<numberOfChannels>,
    @ocaml.doc("<p>Shows whether channel identification was enabled in the stream.</p>")
    @as("EnableChannelIdentification")
    enableChannelIdentification: option<boolean_>,
    @ocaml.doc("<p>Shows whether speaker identification was enabled in the transcription.</p>")
    @as("ShowSpeakerLabel")
    showSpeakerLabel: option<boolean_>,
    @ocaml.doc("<p>The vocabulary filtering method used when processing the stream.</p>")
    @as("VocabularyFilterMethod")
    vocabularyFilterMethod: option<vocabularyFilterMethod>,
    @ocaml.doc("<p>The name of the vocabulary filter used when processing the stream.</p>")
    @as("VocabularyFilterName")
    vocabularyFilterName: option<vocabularyFilterName>,
    @ocaml.doc(
      "<p>Represents the stream of transcription events from Amazon Transcribe to your application.</p>"
    )
    @as("TranscriptResultStream")
    transcriptResultStream: option<transcriptResultStream>,
    @ocaml.doc("<p>An identifier for a specific transcription session.</p>") @as("SessionId")
    sessionId: option<sessionId>,
    @ocaml.doc("<p>The name of the custom vocabulary used when processing the stream.</p>")
    @as("VocabularyName")
    vocabularyName: option<vocabularyName>,
    @ocaml.doc("<p>The encoding used for the input audio stream.</p>") @as("MediaEncoding")
    mediaEncoding: option<mediaEncoding>,
    @ocaml.doc("<p>The sample rate, in Hertz (Hz), for the input audio stream.</p>")
    @as("MediaSampleRateHertz")
    mediaSampleRateHertz: option<mediaSampleRateHertz>,
    @ocaml.doc("<p>The language code of the input audio stream.</p>") @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>An identifier for the transcription.</p>") @as("RequestId")
    requestId: option<requestId>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "StartStreamTranscriptionCommand"
  let make = (
    ~audioStream,
    ~mediaEncoding,
    ~mediaSampleRateHertz,
    ~vocabularyFilterNames=?,
    ~vocabularyNames=?,
    ~preferredLanguage=?,
    ~languageOptions=?,
    ~identifyLanguage=?,
    ~languageModelName=?,
    ~piiEntityTypes=?,
    ~contentRedactionType=?,
    ~contentIdentificationType=?,
    ~partialResultsStability=?,
    ~enablePartialResultsStabilization=?,
    ~numberOfChannels=?,
    ~enableChannelIdentification=?,
    ~showSpeakerLabel=?,
    ~vocabularyFilterMethod=?,
    ~vocabularyFilterName=?,
    ~sessionId=?,
    ~vocabularyName=?,
    ~languageCode=?,
    (),
  ) =>
    new({
      vocabularyFilterNames,
      vocabularyNames,
      preferredLanguage,
      languageOptions,
      identifyLanguage,
      languageModelName,
      piiEntityTypes,
      contentRedactionType,
      contentIdentificationType,
      partialResultsStability,
      enablePartialResultsStabilization,
      numberOfChannels,
      enableChannelIdentification,
      showSpeakerLabel,
      vocabularyFilterMethod,
      vocabularyFilterName,
      audioStream,
      sessionId,
      vocabularyName,
      mediaEncoding,
      mediaSampleRateHertz,
      languageCode,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartMedicalStreamTranscription = {
  type t
  type request = {
    @ocaml.doc("<p>Set this field to <code>PHI</code> to identify personal health information in the
            transcription output.</p>")
    @as("ContentIdentificationType")
    contentIdentificationType: option<medicalContentIdentificationType>,
    @ocaml.doc("<p>The number of channels that are in your audio stream.</p>")
    @as("NumberOfChannels")
    numberOfChannels: option<numberOfChannels>,
    @ocaml.doc("<p>When <code>true</code>, instructs Amazon Transcribe Medical to process each audio channel separately and
            then merge the transcription output of each channel into a single transcription.</p>
        <p>Amazon Transcribe Medical also produces a transcription of each item. An item includes the start time,
            end time, and any alternative transcriptions.</p>
        <p>You can't set both <code>ShowSpeakerLabel</code> and
                <code>EnableChannelIdentification</code> in the same request. If you set both, your
            request returns a <code>BadRequestException</code>.</p>")
    @as("EnableChannelIdentification")
    enableChannelIdentification: option<boolean_>,
    @as("AudioStream") audioStream: audioStream,
    @ocaml.doc("<p> Optional. An identifier for the transcription session. If you don't provide a session
            ID, Amazon Transcribe generates one for you and returns it in the response. </p>")
    @as("SessionId")
    sessionId: option<sessionId>,
    @ocaml.doc("<p>When <code>true</code>, enables speaker identification in your real-time
            stream.</p>")
    @as("ShowSpeakerLabel")
    showSpeakerLabel: option<boolean_>,
    @ocaml.doc("<p>The type of input audio. Choose <code>DICTATION</code> for a provider dictating
            patient notes. Choose <code>CONVERSATION</code> for a dialogue between a patient and one
            or more medical professionanls.</p>")
    @as("Type")
    type_: type_,
    @ocaml.doc("<p>The medical specialty of the clinician or provider.</p>") @as("Specialty")
    specialty: specialty,
    @ocaml.doc("<p>The name of the medical custom vocabulary to use when processing the real-time
            stream.</p>")
    @as("VocabularyName")
    vocabularyName: option<vocabularyName>,
    @ocaml.doc("<p>The encoding used for the input audio.</p>") @as("MediaEncoding")
    mediaEncoding: mediaEncoding,
    @ocaml.doc("<p>The sample rate of the input audio (in Hertz). Amazon Transcribe medical supports a range from 
            16,000 Hz to 48,000 Hz. Note that the sample rate you specify must match that of your
            audio.</p>")
    @as("MediaSampleRateHertz")
    mediaSampleRateHertz: mediaSampleRateHertz,
    @ocaml.doc("<p> Indicates the source language used in the input audio stream. For Amazon Transcribe Medical, this is US
            English (en-US). </p>")
    @as("LanguageCode")
    languageCode: languageCode,
  }
  type response = {
    @ocaml.doc("<p>If the value is <code>PHI</code>, indicates that you've configured your stream to
            identify personal health information.</p>")
    @as("ContentIdentificationType")
    contentIdentificationType: option<medicalContentIdentificationType>,
    @ocaml.doc("<p>The number of channels identified in the stream.</p>") @as("NumberOfChannels")
    numberOfChannels: option<numberOfChannels>,
    @ocaml.doc("<p>Shows whether channel identification has been enabled in the stream.</p>")
    @as("EnableChannelIdentification")
    enableChannelIdentification: option<boolean_>,
    @ocaml.doc(
      "<p>Represents the stream of transcription events from Amazon Transcribe Medical to your application. </p>"
    )
    @as("TranscriptResultStream")
    transcriptResultStream: option<medicalTranscriptResultStream>,
    @ocaml.doc("<p>Optional. An identifier for the transcription session. If you don't provide a session
            ID, Amazon Transcribe generates one for you and returns it in the response.</p>")
    @as("SessionId")
    sessionId: option<sessionId>,
    @ocaml.doc("<p>Shows whether speaker identification was enabled in the stream.</p>")
    @as("ShowSpeakerLabel")
    showSpeakerLabel: option<boolean_>,
    @ocaml.doc("<p>The type of audio that was transcribed. </p>") @as("Type") type_: option<type_>,
    @ocaml.doc("<p>The specialty in the medical domain.</p>") @as("Specialty")
    specialty: option<specialty>,
    @ocaml.doc("<p>The name of the vocabulary used when processing the stream.</p>")
    @as("VocabularyName")
    vocabularyName: option<vocabularyName>,
    @ocaml.doc("<p>The encoding used for the input audio stream.</p>") @as("MediaEncoding")
    mediaEncoding: option<mediaEncoding>,
    @ocaml.doc("<p>The sample rate of the input audio, in Hertz (Hz).</p>")
    @as("MediaSampleRateHertz")
    mediaSampleRateHertz: option<mediaSampleRateHertz>,
    @ocaml.doc("<p>The language code for the response transcript. For Amazon Transcribe Medical, this is US English
            (en-US).</p>")
    @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>An identifier for the streaming transcription.</p>") @as("RequestId")
    requestId: option<requestId>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "StartMedicalStreamTranscriptionCommand"
  let make = (
    ~audioStream,
    ~type_,
    ~specialty,
    ~mediaEncoding,
    ~mediaSampleRateHertz,
    ~languageCode,
    ~contentIdentificationType=?,
    ~numberOfChannels=?,
    ~enableChannelIdentification=?,
    ~sessionId=?,
    ~showSpeakerLabel=?,
    ~vocabularyName=?,
    (),
  ) =>
    new({
      contentIdentificationType,
      numberOfChannels,
      enableChannelIdentification,
      audioStream,
      sessionId,
      showSpeakerLabel,
      type_,
      specialty,
      vocabularyName,
      mediaEncoding,
      mediaSampleRateHertz,
      languageCode,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
