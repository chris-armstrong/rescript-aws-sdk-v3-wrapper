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
external createClient: unit => awsServiceClient = "TranscribeClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type word = string
type vocabularyState = [@as("FAILED") #FAILED | @as("READY") #READY | @as("PENDING") #PENDING]
type vocabularyName = string
type vocabularyFilterName = string
type vocabularyFilterMethod = [@as("tag") #Tag | @as("mask") #Mask | @as("remove") #Remove]
type uri = string
type type_ = [@as("DICTATION") #DICTATION | @as("CONVERSATION") #CONVERSATION]
type transcriptionJobStatus = [
  | @as("COMPLETED") #COMPLETED
  | @as("FAILED") #FAILED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("QUEUED") #QUEUED
]
type transcriptionJobName = string
type transcriptFilterType = [@as("EXACT") #EXACT]
type transcribeArn = string
type timestampMilliseconds = float
type tagValue = string
type tagKey = string
type subtitleOutputStartIndex = int
type subtitleFormat = [@as("srt") #Srt | @as("vtt") #Vtt]
type string_ = string
type specialty = [@as("PRIMARYCARE") #PRIMARYCARE]
type sentimentValue = [
  | @as("MIXED") #MIXED
  | @as("NEUTRAL") #NEUTRAL
  | @as("NEGATIVE") #NEGATIVE
  | @as("POSITIVE") #POSITIVE
]
type redactionType = [@as("PII") #PII]
type redactionOutput = [
  | @as("redacted_and_unredacted") #Redacted_And_Unredacted
  | @as("redacted") #Redacted
]
type piiEntityType = [
  | @as("ALL") #ALL
  | @as("SSN") #SSN
  | @as("PHONE") #PHONE
  | @as("NAME") #NAME
  | @as("ADDRESS") #ADDRESS
  | @as("EMAIL") #EMAIL
  | @as("PIN") #PIN
  | @as("CREDIT_DEBIT_EXPIRY") #CREDIT_DEBIT_EXPIRY
  | @as("CREDIT_DEBIT_CVV") #CREDIT_DEBIT_CVV
  | @as("CREDIT_DEBIT_NUMBER") #CREDIT_DEBIT_NUMBER
  | @as("BANK_ROUTING") #BANK_ROUTING
  | @as("BANK_ACCOUNT_NUMBER") #BANK_ACCOUNT_NUMBER
]
type phrase = string
type percentage = int
type participantRole = [@as("CUSTOMER") #CUSTOMER | @as("AGENT") #AGENT]
type outputLocationType = [
  | @as("SERVICE_BUCKET") #SERVICE_BUCKET
  | @as("CUSTOMER_BUCKET") #CUSTOMER_BUCKET
]
type outputKey = string
type outputBucketName = string
type nonEmptyString = string
type nextToken = string
type modelStatus = [
  | @as("COMPLETED") #COMPLETED
  | @as("FAILED") #FAILED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type modelName = string
type medicalMediaSampleRateHertz = int
type medicalContentIdentificationType = [@as("PHI") #PHI]
type mediaSampleRateHertz = int
type mediaFormat = [
  | @as("webm") #Webm
  | @as("amr") #Amr
  | @as("ogg") #Ogg
  | @as("flac") #Flac
  | @as("wav") #Wav
  | @as("mp4") #Mp4
  | @as("mp3") #Mp3
]
type maxSpeakers = int
type maxResults = int
type maxAlternatives = int
type languageCode = [
  | @as("en-NZ") #En_NZ
  | @as("en-ZA") #En_ZA
  | @as("th-TH") #Th_TH
  | @as("zh-TW") #Zh_TW
  | @as("zh-CN") #Zh_CN
  | @as("tr-TR") #Tr_TR
  | @as("te-IN") #Te_IN
  | @as("ta-IN") #Ta_IN
  | @as("ru-RU") #Ru_RU
  | @as("pt-PT") #Pt_PT
  | @as("pt-BR") #Pt_BR
  | @as("nl-NL") #Nl_NL
  | @as("ms-MY") #Ms_MY
  | @as("ko-KR") #Ko_KR
  | @as("ja-JP") #Ja_JP
  | @as("it-IT") #It_IT
  | @as("id-ID") #Id_ID
  | @as("hi-IN") #Hi_IN
  | @as("he-IL") #He_IL
  | @as("gd-GB") #Gd_GB
  | @as("ga-IE") #Ga_IE
  | @as("fr-FR") #Fr_FR
  | @as("fr-CA") #Fr_CA
  | @as("fa-IR") #Fa_IR
  | @as("es-US") #Es_US
  | @as("es-ES") #Es_ES
  | @as("en-WL") #En_WL
  | @as("en-US") #En_US
  | @as("en-IN") #En_IN
  | @as("en-IE") #En_IE
  | @as("en-GB") #En_GB
  | @as("en-AU") #En_AU
  | @as("en-AB") #En_AB
  | @as("de-DE") #De_DE
  | @as("de-CH") #De_CH
  | @as("da-DK") #Da_DK
  | @as("cy-GB") #Cy_GB
  | @as("ar-SA") #Ar_SA
  | @as("ar-AE") #Ar_AE
  | @as("af-ZA") #Af_ZA
]
type kmskeyId = string
type identifiedLanguageScore = float
type failureReason = string
type dateTime = Js.Date.t
type dataAccessRoleArn = string
type channelId = int
type categoryName = string
type callAnalyticsJobStatus = [
  | @as("COMPLETED") #COMPLETED
  | @as("FAILED") #FAILED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("QUEUED") #QUEUED
]
type callAnalyticsJobName = string
type clmlanguageCode = [
  | @as("en-AU") #En_AU
  | @as("en-GB") #En_GB
  | @as("es-US") #Es_US
  | @as("hi-IN") #Hi_IN
  | @as("en-US") #En_US
]
type boolean_ = bool
type baseModelName = [@as("WideBand") #WideBand | @as("NarrowBand") #NarrowBand]
type words = array<word>
@ocaml.doc("<p>Provides information about a custom vocabulary.</p>")
type vocabularyInfo = {
  @ocaml.doc("<p>The processing state of the vocabulary. If the state is <code>READY</code> you 
            can use the vocabulary in a <code>StartTranscriptionJob</code> request.</p>")
  @as("VocabularyState")
  vocabularyState: option<vocabularyState>,
  @ocaml.doc("<p>The date and time that the vocabulary was last modified.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: option<dateTime>,
  @ocaml.doc("<p>The language code of the vocabulary entries.</p>") @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>The name of the vocabulary.</p>") @as("VocabularyName")
  vocabularyName: option<vocabularyName>,
}
@ocaml.doc("<p>Provides information about a vocabulary filter.</p>")
type vocabularyFilterInfo = {
  @ocaml.doc("<p>The date and time that the vocabulary was last updated.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: option<dateTime>,
  @ocaml.doc("<p>The language code of the words in the vocabulary filter.</p>") @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>The name of the vocabulary filter. The name must be unique in the account that
            holds the filter.</p>")
  @as("VocabularyFilterName")
  vocabularyFilterName: option<vocabularyFilterName>,
}
@ocaml.doc("<p>Identifies the location of a transcription.</p>")
type transcript = {
  @ocaml.doc("<p>The S3 object location of the redacted transcript.</p>
        <p>Use this URI to access the redacted transcript. If you specified an S3 bucket in the 
            <code>OutputBucketName</code> field when you created the job, this is the URI of that 
            bucket. If you chose to store the transcript in Amazon Transcribe, this is a shareable URL that provides 
            secure access to that location.</p>")
  @as("RedactedTranscriptFileUri")
  redactedTranscriptFileUri: option<uri>,
  @ocaml.doc("<p>The S3 object location of the transcript.</p>
        <p>Use this URI to access the transcript. If you specified an S3 bucket in the
            <code>OutputBucketName</code> field when you created the job, this is the URI of that 
            bucket. If you chose to store the transcript in Amazon Transcribe, this is a shareable URL that provides 
            secure access to that location.</p>")
  @as("TranscriptFileUri")
  transcriptFileUri: option<uri>,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A key:value pair that adds metadata to a resource used by Amazon Transcribe. For example, a tag 
            with the key:value pair ‘Department’:’Sales’ might be added to a resource to indicate its use
            by your organization's sales department.</p>")
type tag = {
  @ocaml.doc("<p>The second part of a key:value pair that forms a tag associated with a given resource.
            For example, in the tag ‘Department’:’Sales’, the value is 'Sales'.</p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>The first part of a key:value pair that forms a tag associated with a given resource. For
            example, in the tag ‘Department’:’Sales’, the key is 'Department'.</p>")
  @as("Key")
  key: tagKey,
}
type subtitleFormats = array<subtitleFormat>
type subtitleFileUris = array<uri>
type stringTargetList = array<nonEmptyString>
@ocaml.doc(
  "<p>Provides optional settings for the <code>StartTranscriptionJob</code> operation.</p>"
)
type settings = {
  @ocaml.doc("<p>Set to <code>mask</code> to remove filtered text from the transcript and replace it 
            with three asterisks (\"***\") as placeholder text. Set to <code>remove</code> to remove 
            filtered text from the transcript without using placeholder text. Set to <code>tag</code> to
            mark the word in the transcription output that matches the vocabulary filter. When you set 
            the filter method to <code>tag</code>, the words matching your vocabulary filter are not
            masked or removed.</p>")
  @as("VocabularyFilterMethod")
  vocabularyFilterMethod: option<vocabularyFilterMethod>,
  @ocaml.doc("<p>The name of the vocabulary filter to use when transcribing the audio. The filter that you
            specify must have the same language code as the transcription job.</p>")
  @as("VocabularyFilterName")
  vocabularyFilterName: option<vocabularyFilterName>,
  @ocaml.doc("<p>The number of alternative transcriptions that the service should return. If you specify 
            the <code>MaxAlternatives</code> field, you must set the <code>ShowAlternatives</code> 
            field to true.</p>")
  @as("MaxAlternatives")
  maxAlternatives: option<maxAlternatives>,
  @ocaml.doc("<p>Determines whether the transcription contains alternative transcriptions. If you set the 
            <code>ShowAlternatives</code> field to true, you must also set the maximum number of
            alternatives to return in the <code>MaxAlternatives</code> field.</p>")
  @as("ShowAlternatives")
  showAlternatives: option<boolean_>,
  @ocaml.doc("<p>Instructs Amazon Transcribe to process each audio channel separately and then merge the 
            transcription output of each channel into a single transcription.</p>
        <p>Amazon Transcribe also produces a transcription of each item detected on an audio channel, 
            including the start time and end time of the item and alternative transcriptions of the item
            including the confidence that Amazon Transcribe has in the transcription.</p>
        <p>You can't set both <code>ShowSpeakerLabels</code> and 
            <code>ChannelIdentification</code> in the same request. If you set both, your request 
            returns a <code>BadRequestException</code>.</p>")
  @as("ChannelIdentification")
  channelIdentification: option<boolean_>,
  @ocaml.doc("<p>The maximum number of speakers to identify in the input audio. If there are more 
            speakers in the audio than this number, multiple speakers are identified as a single speaker. 
            If you specify the <code>MaxSpeakerLabels</code> field, you must set the
            <code>ShowSpeakerLabels</code> field to true.</p>")
  @as("MaxSpeakerLabels")
  maxSpeakerLabels: option<maxSpeakers>,
  @ocaml.doc("<p>Determines whether the transcription job uses speaker recognition to identify different 
            speakers in the input audio. Speaker recognition labels individual speakers in the audio file. 
            If you set the <code>ShowSpeakerLabels</code> field to true, you must also set the
            maximum number of speaker labels <code>MaxSpeakerLabels</code> field.</p>
        <p>You can't set both <code>ShowSpeakerLabels</code> and 
            <code>ChannelIdentification</code> in the same request. If you set both, your request returns
            a <code>BadRequestException</code>.</p>")
  @as("ShowSpeakerLabels")
  showSpeakerLabels: option<boolean_>,
  @ocaml.doc("<p>The name of a vocabulary to use when processing the transcription job.</p>")
  @as("VocabularyName")
  vocabularyName: option<vocabularyName>,
}
type sentimentValueList = array<sentimentValue>
@ocaml.doc("<p>An object that allows percentages to specify the proportion of the call where you 
            would like to apply a filter. For example, you can specify the first half of the call. You can
            also specify the period of time between halfway through to three-quarters of the way 
            through the call. Because the length of conversation can vary between calls, you can apply 
            relative time ranges across all calls. </p>")
type relativeTimeRange = {
  @ocaml.doc("<p>A range that takes the portion of the call from the time in milliseconds set by the
            value that you've specified to the end of the call. For example, if you specify 
            <code>120000</code>, the time range is set for the last 120,000 milliseconds of the 
            call.</p>")
  @as("Last")
  last: option<percentage>,
  @ocaml.doc("<p>A range that takes the portion of the call up to the time in milliseconds set by the 
            value that you've specified. For example, if you specify <code>120000</code>, the time 
            range is set for the first 120,000 milliseconds of the call.</p>")
  @as("First")
  first: option<percentage>,
  @ocaml.doc("<p>A value that indicates the percentage of the end of the time range. To set a relative
            time range, you must specify a start percentage and an end percentage. For example, if
            you specify the following values:</p>
        <ul>
            <li>
               <p>StartPercentage - 10</p>
            </li>
            <li>
               <p>EndPercentage - 50</p>
            </li>
         </ul>
        <p>This looks at the time range starting from 10% of the way into the call to 50% of the 
            way through the call. For a call that lasts 100,000 milliseconds, this example range would 
            apply from the 10,000 millisecond mark to the 50,000 millisecond mark.</p>")
  @as("EndPercentage")
  endPercentage: option<percentage>,
  @ocaml.doc("<p>A value that indicates the percentage of the beginning of the time range. To set a
            relative time range, you must specify a start percentage and an end percentage. For 
            example, if you specify the following values:</p>       
        <ul>
            <li>
               <p>StartPercentage - 10</p>
            </li>
            <li>
               <p>EndPercentage - 50</p>
            </li>
         </ul>
        <p>This looks at the time range starting from 10% of the way into the call to 50% of 
            the way through the call. For a call that lasts 100,000 milliseconds, this example range 
            would apply from the 10,000 millisecond mark to the 50,000 millisecond mark.</p>")
  @as("StartPercentage")
  startPercentage: option<percentage>,
}
type piiEntityTypes = array<piiEntityType>
type phrases = array<phrase>
@ocaml.doc("<p>The object used to call your custom language model to your transcription job.</p>")
type modelSettings = {
  @ocaml.doc("<p>The name of your custom language model.</p>") @as("LanguageModelName")
  languageModelName: option<modelName>,
}
@ocaml.doc("<p>Optional settings for the <a>StartMedicalTranscriptionJob</a> operation.</p>")
type medicalTranscriptionSetting = {
  @ocaml.doc(
    "<p>The name of the vocabulary to use when processing a medical transcription job.</p>"
  )
  @as("VocabularyName")
  vocabularyName: option<vocabularyName>,
  @ocaml.doc("<p>The maximum number of alternatives that you tell the service to return. If you specify
            the <code>MaxAlternatives</code> field, you must set the <code>ShowAlternatives</code> 
            field to true.</p>")
  @as("MaxAlternatives")
  maxAlternatives: option<maxAlternatives>,
  @ocaml.doc("<p>Determines whether alternative transcripts are generated along with the transcript that 
            has the highest confidence. If you set <code>ShowAlternatives</code> field to true, you must
            also set the maximum number of alternatives to return in the <code>MaxAlternatives</code>
            field.</p>")
  @as("ShowAlternatives")
  showAlternatives: option<boolean_>,
  @ocaml.doc("<p>Instructs Amazon Transcribe Medical to process each audio channel separately and then merge the 
            transcription output of each channel into a single transcription.</p>
        <p>Amazon Transcribe Medical also produces a transcription of each item detected on an audio channel,
            including the start time and end time of the item and alternative transcriptions of item. 
            The alternative transcriptions also come with confidence scores provided by Amazon Transcribe Medical.</p>
        <p>You can't set both <code>ShowSpeakerLabels</code> and 
            <code>ChannelIdentification</code> in the same request. If you set both, your request 
            returns a <code>BadRequestException</code>.</p>")
  @as("ChannelIdentification")
  channelIdentification: option<boolean_>,
  @ocaml.doc("<p>The maximum number of speakers to identify in the input audio. If there are more 
            speakers in the audio than this number, multiple speakers are identified as a single speaker. 
            If you specify the <code>MaxSpeakerLabels</code> field, you must set the
            <code>ShowSpeakerLabels</code> field to true.</p>")
  @as("MaxSpeakerLabels")
  maxSpeakerLabels: option<maxSpeakers>,
  @ocaml.doc("<p>Determines whether the transcription job uses speaker recognition to identify different 
            speakers in the input audio. Speaker recognition labels individual speakers in the audio file. 
            If you set the <code>ShowSpeakerLabels</code> field to true, you must also set the 
            maximum number of speaker labels in the <code>MaxSpeakerLabels</code> field.</p>
        <p>You can't set both <code>ShowSpeakerLabels</code> and 
            <code>ChannelIdentification</code> in the same request. If you set both, your request 
            returns a <code>BadRequestException</code>.</p>")
  @as("ShowSpeakerLabels")
  showSpeakerLabels: option<boolean_>,
}
@ocaml.doc("<p>Provides summary information about a transcription job.</p>")
type medicalTranscriptionJobSummary = {
  @ocaml.doc("<p>The speech of the clinician in the input audio.</p>") @as("Type")
  type_: option<type_>,
  @ocaml.doc("<p>Shows the type of information you've configured Amazon Transcribe Medical to identify in a transcription job.
            If the value is <code>PHI</code>, you've configured the transcription job to identify personal
            health information (PHI).</p>")
  @as("ContentIdentificationType")
  contentIdentificationType: option<medicalContentIdentificationType>,
  @ocaml.doc("<p>The medical specialty of the transcription job. Refer to <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-medical-conversation.html\">Transcribing a medical
            conversation</a>for a list of supported specialties.</p>")
  @as("Specialty")
  specialty: option<specialty>,
  @ocaml.doc("<p>Indicates the location of the transcription job's output. This field must be the path of an
            S3 bucket; if you don't already have an S3 bucket, one is created based on the path you 
            add.</p>")
  @as("OutputLocationType")
  outputLocationType: option<outputLocationType>,
  @ocaml.doc("<p>If the <code>TranscriptionJobStatus</code> field is <code>FAILED</code>, a description 
            of the error.</p>")
  @as("FailureReason")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>The status of the medical transcription job.</p>") @as("TranscriptionJobStatus")
  transcriptionJobStatus: option<transcriptionJobStatus>,
  @ocaml.doc("<p>The language of the transcript in the source audio file.</p>") @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>A timestamp that shows when the job was completed.</p>") @as("CompletionTime")
  completionTime: option<dateTime>,
  @ocaml.doc("<p>A timestamp that shows when the job began processing.</p>") @as("StartTime")
  startTime: option<dateTime>,
  @ocaml.doc("<p>A timestamp that shows when the medical transcription job was created.</p>")
  @as("CreationTime")
  creationTime: option<dateTime>,
  @ocaml.doc("<p>The name of a medical transcription job.</p>") @as("MedicalTranscriptionJobName")
  medicalTranscriptionJobName: option<transcriptionJobName>,
}
@ocaml.doc("<p>Identifies the location of a medical transcript.</p>")
type medicalTranscript = {
  @ocaml.doc("<p>The S3 object location of the medical transcript.</p>
        <p>Use this URI to access the medical transcript. This URI points to the S3 bucket you created 
            to store the medical transcript.</p>")
  @as("TranscriptFileUri")
  transcriptFileUri: option<uri>,
}
@ocaml.doc("<p>Describes the input media file in a transcription request.</p>")
type media = {
  @ocaml.doc("<p>The S3 object location for your redacted output media file. This is only supported for 
            call analytics jobs.</p>")
  @as("RedactedMediaFileUri")
  redactedMediaFileUri: option<uri>,
  @ocaml.doc("<p>The S3 object location of the input media file. The URI must be in the same region as 
            the API endpoint that you are calling. The general form is:</p>
        <p>
            <code>s3://DOC-EXAMPLE-BUCKET/keyprefix/objectkey</code>
         </p>
        <p>For example:</p>
        <p>
            <code>s3://DOC-EXAMPLE-BUCKET/example.flac</code>
         </p>
        <p>
            <code>s3://DOC-EXAMPLE-BUCKET/mediafiles/example.flac</code>
         </p>
        <p>For more information about S3 object names, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys\">Object Keys</a> in the
            <i>Amazon S3 Developer Guide</i>.</p>")
  @as("MediaFileUri")
  mediaFileUri: option<uri>,
}
type languageOptions = array<languageCode>
@ocaml.doc("<p>Language-specific settings that can be specified when language identification is 
            enabled.</p>")
type languageIdSettings = {
  @ocaml.doc("<p>The name of the language model you want to use when transcribing your audio. The 
            model you specify must have the same language codes as the transcription job; if the 
            languages don't match, the language model isn't be applied.</p>")
  @as("LanguageModelName")
  languageModelName: option<modelName>,
  @ocaml.doc("<p>The name of the vocabulary filter you want to use when transcribing your audio. The filter
            you specify must have the same language codes as the transcription job; if the languages 
            don't match, the vocabulary filter isn't be applied.</p>")
  @as("VocabularyFilterName")
  vocabularyFilterName: option<vocabularyFilterName>,
  @ocaml.doc("<p>The name of the vocabulary you want to use when processing your transcription job. The 
            vocabulary you specify must have the same language codes as the transcription job; if the
            languages don't match, the vocabulary isn't applied.</p>")
  @as("VocabularyName")
  vocabularyName: option<vocabularyName>,
}
type kmsencryptionContextMap = Js.Dict.t<nonEmptyString>
@ocaml.doc("<p>Provides information about when a transcription job should be executed.</p>")
type jobExecutionSettings = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN), in the form
            <code>arn:partition:service:region:account-id:resource-type/resource-id</code>, of a role 
            that has access to the S3 bucket that contains the input files. Amazon Transcribe assumes this role to 
            read queued media files. If you have specified an output S3 bucket for the transcription 
            results, this role should have access to the output bucket as well.</p>      
        <p>If you specify the <code>AllowDeferredExecution</code> field, you must specify the
            <code>DataAccessRoleArn</code> field.</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<dataAccessRoleArn>,
  @ocaml.doc("<p>Indicates whether a job should be queued by Amazon Transcribe when the concurrent execution limit 
            is exceeded. When the <code>AllowDeferredExecution</code> field is true, jobs are queued
            and executed when the number of executing jobs falls below the concurrent execution limit. If
            the field is false, Amazon Transcribe returns a <code>LimitExceededException</code> exception.</p>
        <p>Note that job queuing is enabled by default for call analytics jobs.</p>
        <p>If you specify the <code>AllowDeferredExecution</code> field, you must specify the 
            <code>DataAccessRoleArn</code> field.</p>")
  @as("AllowDeferredExecution")
  allowDeferredExecution: option<boolean_>,
}
@ocaml.doc("<p>The object that contains the Amazon S3 object location and access role required to train and 
            tune your custom language model.</p>")
type inputDataConfig = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the permissions you've given
            Amazon Transcribe to access your Amazon S3 buckets containing your media files or text data. ARNs have the
            format
            <code>arn:partition:service:region:account-id:resource-type/resource-id</code>.</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: dataAccessRoleArn,
  @ocaml.doc("<p>The Amazon S3 prefix you specify to access the plain text files that you use to tune your 
            custom language model.</p>")
  @as("TuningDataS3Uri")
  tuningDataS3Uri: option<uri>,
  @ocaml.doc("<p>The Amazon S3 prefix you specify to access the plain text files that you use to train your 
            custom language model.</p>")
  @as("S3Uri")
  s3Uri: uri,
}
@ocaml.doc("<p>For a call analytics job, an object that indicates the audio channel that belongs to the
            agent and the audio channel that belongs to the customer.</p>")
type channelDefinition = {
  @ocaml.doc("<p>Indicates whether the person speaking on the audio channel is the agent or 
            customer.</p>")
  @as("ParticipantRole")
  participantRole: option<participantRole>,
  @ocaml.doc("<p>A value that indicates the audio channel.</p>") @as("ChannelId")
  channelId: option<channelId>,
}
@ocaml.doc("<p>Provides summary information about a call analytics job.</p>")
type callAnalyticsJobSummary = {
  @ocaml.doc("<p>If the <code>CallAnalyticsJobStatus</code> is <code>FAILED</code>, a description of 
            the error.</p>")
  @as("FailureReason")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>The status of the call analytics job.</p>") @as("CallAnalyticsJobStatus")
  callAnalyticsJobStatus: option<callAnalyticsJobStatus>,
  @ocaml.doc("<p>The language of the transcript in the source audio file.</p>") @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>A timestamp that shows when the job was completed.</p>") @as("CompletionTime")
  completionTime: option<dateTime>,
  @ocaml.doc("<p>A timestamp that shows when the job began processing.</p>") @as("StartTime")
  startTime: option<dateTime>,
  @ocaml.doc("<p>A timestamp that shows when the call analytics job was created.</p>")
  @as("CreationTime")
  creationTime: option<dateTime>,
  @ocaml.doc("<p>The name of the call analytics job.</p>") @as("CallAnalyticsJobName")
  callAnalyticsJobName: option<callAnalyticsJobName>,
}
@ocaml.doc("<p>A time range, set in seconds, between two points in the call.</p>")
type absoluteTimeRange = {
  @ocaml.doc("<p>A time range from the value that you've specified to the end of the call. For example, if you
            specify <code>100000</code>, the time range is set to the last 100,000 milliseconds of the
            call.</p>")
  @as("Last")
  last: option<timestampMilliseconds>,
  @ocaml.doc("<p>A time range from the beginning of the call to the value that you've specified. For example, 
            if you specify <code>100000</code>, the time range is set to the first 100,000 milliseconds
            of the call.</p>")
  @as("First")
  first: option<timestampMilliseconds>,
  @ocaml.doc("<p>A value that indicates the end of the time range in milliseconds. To set absolute time 
            range, you must specify a start time and an end time. For example, if you specify the following
            values:</p>
        <ul>
            <li>
               <p>StartTime - 10000</p>
            </li>
            <li>
               <p>Endtime - 50000</p>
            </li>
         </ul>
        <p>The time range is set between 10,000 milliseconds and 50,000 milliseconds into the 
            call.</p>")
  @as("EndTime")
  endTime: option<timestampMilliseconds>,
  @ocaml.doc("<p>A value that indicates the beginning of the time range in seconds. To set absolute time
            range, you must specify a start time and an end time. For example, if you specify the following
            values:</p> 
        <ul>
            <li>
               <p>StartTime - 10000</p>
            </li>
            <li>
               <p>Endtime - 50000</p>
            </li>
         </ul>
        <p>The time range is set between 10,000 milliseconds and 50,000 milliseconds into the
            call.</p>")
  @as("StartTime")
  startTime: option<timestampMilliseconds>,
}
type vocabularyFilters = array<vocabularyFilterInfo>
type vocabularies = array<vocabularyInfo>
@ocaml.doc("<p>Matches the output of the transcription to either the specific phrases that you specify, 
            or the intent of the phrases that you specify.</p>")
type transcriptFilter = {
  @ocaml.doc("<p>The phrases that you're specifying for the transcript filter to match.</p>")
  @as("Targets")
  targets: stringTargetList,
  @ocaml.doc("<p>If <code>TRUE</code>, the rule that you specify is applied to everything except for the 
            phrases that you specify.</p>")
  @as("Negate")
  negate: option<boolean_>,
  @ocaml.doc("<p>Determines whether the customer or the agent is speaking the phrases that you've
            specified.</p>")
  @as("ParticipantRole")
  participantRole: option<participantRole>,
  @ocaml.doc("<p>An object that allows percentages to specify the proportion of the call where you would 
            like to apply a filter. For example, you can specify the first half of the call. You can also 
            specify the period of time between halfway through to three-quarters of the way through 
            the call. Because the length of conversation can vary between calls, you can apply relative
            time ranges across all calls.</p>")
  @as("RelativeTimeRange")
  relativeTimeRange: option<relativeTimeRange>,
  @ocaml.doc("<p>A time range, set in seconds, between two points in the call.</p>")
  @as("AbsoluteTimeRange")
  absoluteTimeRange: option<absoluteTimeRange>,
  @ocaml.doc("<p>Matches the phrase to the transcription output in a word
            for word fashion. For example, if you specify the phrase \"I want to speak to the manager.\"
            Amazon Transcribe attempts to match that specific phrase to the transcription.</p>")
  @as("TranscriptFilterType")
  transcriptFilterType: transcriptFilterType,
}
type tagList_ = array<tag>
@ocaml.doc("<p>The S3 location where your subtitle files are located. Note that your subtitle files are
            placed in the same location as your transcription output. Refer to
            <code>TranscriptFileUri</code> to download your files.</p>")
type subtitlesOutput = {
  @ocaml.doc("<p>Shows the output start index value for your subtitle files. If you did not specify a value
            in your request, the default value of <code>0</code> is used.</p>")
  @as("OutputStartIndex")
  outputStartIndex: option<subtitleOutputStartIndex>,
  @ocaml.doc("<p>Contains the output location for your subtitle file. This location must be an S3 
            bucket.</p>")
  @as("SubtitleFileUris")
  subtitleFileUris: option<subtitleFileUris>,
  @ocaml.doc("<p>The format of your subtitle files. If your request specified both <code>srt</code> and
            <code>vtt</code> formats, both formats are shown.</p>")
  @as("Formats")
  formats: option<subtitleFormats>,
}
@ocaml.doc("<p>Generate subtitles for your batch transcription job. Note that your subtitle files are
            placed in the same location as your transcription output.</p>")
type subtitles = {
  @ocaml.doc("<p>Defines the starting value that is assigned to the first subtitle segment.</p>
        <p>The default start index for Amazon Transcribe is <code>0</code>, which differs from
            the more widely used standard of <code>1</code>. If you're uncertain which value to use,
            we recommend choosing <code>1</code>, as this may improve compatibility with other
            services.</p>")
  @as("OutputStartIndex")
  outputStartIndex: option<subtitleOutputStartIndex>,
  @ocaml.doc("<p>Specify the output format for your subtitle file; if you select both <code>srt</code> and
            <code>vtt</code> formats, two output files are generated.</p>")
  @as("Formats")
  formats: option<subtitleFormats>,
}
@ocaml.doc("<p>An object that enables you to specify a particular customer or agent sentiment. If at 
            least 50 percent of the conversation turns (the back-and-forth between two speakers) in a 
            specified time period match the specified sentiment, Amazon Transcribe will consider the sentiment a
            match.</p>")
type sentimentFilter = {
  @ocaml.doc(
    "<p>Set to <code>TRUE</code> to look for sentiments that weren't specified in the request.</p>"
  )
  @as("Negate")
  negate: option<boolean_>,
  @ocaml.doc(
    "<p>A value that determines whether the sentiment belongs to the customer or the agent.</p>"
  )
  @as("ParticipantRole")
  participantRole: option<participantRole>,
  @ocaml.doc(
    "<p>The time range, set in percentages, that correspond to proportion of the call.</p>"
  )
  @as("RelativeTimeRange")
  relativeTimeRange: option<relativeTimeRange>,
  @ocaml.doc("<p>The time range, measured in seconds, of the sentiment.</p>")
  @as("AbsoluteTimeRange")
  absoluteTimeRange: option<absoluteTimeRange>,
  @ocaml.doc("<p>An array that enables you to specify sentiments for the customer or agent. You can 
            specify one or more values.</p>")
  @as("Sentiments")
  sentiments: sentimentValueList,
}
@ocaml.doc("<p>An object that enables you to configure your category to be applied to call analytics 
            jobs where either the customer or agent was interrupted.</p>")
type nonTalkTimeFilter = {
  @ocaml.doc("<p>Set to <code>TRUE</code> to look for a time period when people were talking.</p>")
  @as("Negate")
  negate: option<boolean_>,
  @ocaml.doc("<p>An object that allows percentages to specify the proportion of the call where there
            was silence. For example, you can specify the first half of the call. You can also specify 
            the period of time between halfway through to three-quarters of the way through the call. 
            Because the length of conversation can vary between calls, you can apply relative time
            ranges across all calls.</p>")
  @as("RelativeTimeRange")
  relativeTimeRange: option<relativeTimeRange>,
  @ocaml.doc("<p>An object you can use to specify a time range (in milliseconds) for when no one is
            talking. For example, you could specify a time period between the 30,000 millisecond mark
            and the 45,000 millisecond mark. You could also specify the time period as the first 15,000
            milliseconds or the last 15,000 milliseconds.</p>")
  @as("AbsoluteTimeRange")
  absoluteTimeRange: option<absoluteTimeRange>,
  @ocaml.doc("<p>The duration of the period when neither the customer nor agent was talking.</p>")
  @as("Threshold")
  threshold: option<timestampMilliseconds>,
}
type medicalTranscriptionJobSummaries = array<medicalTranscriptionJobSummary>
@ocaml.doc("<p>The structure used to describe a custom language model.</p>")
type languageModel = {
  @ocaml.doc("<p>The data access role and Amazon S3 prefixes for the input files used to train the custom
            language model.</p>")
  @as("InputDataConfig")
  inputDataConfig: option<inputDataConfig>,
  @ocaml.doc("<p>The reason why the custom language model couldn't be created.</p>")
  @as("FailureReason")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>Whether the base model used for the custom language model is up to date. If this field 
            is <code>false</code> then you are running the most up-to-date version of the base model 
            in your custom language model.</p>")
  @as("UpgradeAvailability")
  upgradeAvailability: option<boolean_>,
  @ocaml.doc("<p>The creation status of a custom language model. When the status is 
            <code>COMPLETED</code> the model is ready for use.</p>")
  @as("ModelStatus")
  modelStatus: option<modelStatus>,
  @ocaml.doc("<p>The Amazon Transcribe standard language model, or base model used to create the custom language
            model.</p>")
  @as("BaseModelName")
  baseModelName: option<baseModelName>,
  @ocaml.doc("<p>The language code you used to create your custom language model.</p>")
  @as("LanguageCode")
  languageCode: option<clmlanguageCode>,
  @ocaml.doc("<p>The most recent time the custom language model was modified.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: option<dateTime>,
  @ocaml.doc("<p>The time the custom language model was created.</p>") @as("CreateTime")
  createTime: option<dateTime>,
  @ocaml.doc("<p>The name of the custom language model.</p>") @as("ModelName")
  modelName: option<modelName>,
}
type languageIdSettingsMap = Js.Dict.t<languageIdSettings>
@ocaml.doc("<p>An object that enables you to configure your category to be applied to call analytics 
            jobs where either the customer or agent was interrupted.</p>")
type interruptionFilter = {
  @ocaml.doc(
    "<p>Set to <code>TRUE</code> to look for a time period where there was no interruption.</p>"
  )
  @as("Negate")
  negate: option<boolean_>,
  @ocaml.doc("<p>An object that allows percentages to specify the proportion of the call where there was
            a interruption. For example, you can specify the first half of the call. You can also specify the
            period of time between halfway through to three-quarters of the way through the call. 
            Because the length of conversation can vary between calls, you can apply relative time 
            ranges across all calls.</p>")
  @as("RelativeTimeRange")
  relativeTimeRange: option<relativeTimeRange>,
  @ocaml.doc("<p>An object you can use to specify a time range (in milliseconds) for when you'd want to 
            find the interruption. For example, you could search for an interruption between the 30,000 
            millisecond mark and the 45,000 millisecond mark. You could also specify the time period as 
            the first 15,000 milliseconds or the last 15,000 milliseconds.</p>")
  @as("AbsoluteTimeRange")
  absoluteTimeRange: option<absoluteTimeRange>,
  @ocaml.doc("<p>Indicates whether the caller or customer was interrupting.</p>")
  @as("ParticipantRole")
  participantRole: option<participantRole>,
  @ocaml.doc("<p>The duration of the interruption.</p>") @as("Threshold")
  threshold: option<timestampMilliseconds>,
}
@ocaml.doc("<p>Settings for content redaction within a transcription job.</p>")
type contentRedaction = {
  @ocaml.doc("<p>The types of personally identifiable information (PII) you want to redact in your
            transcript.</p>")
  @as("PiiEntityTypes")
  piiEntityTypes: option<piiEntityTypes>,
  @ocaml.doc("<p>The output transcript file stored in either the default S3 bucket or in a bucket you
            specify.</p>
        <p>When you choose <code>redacted</code> Amazon Transcribe outputs only the redacted 
            transcript.</p>
        <p>When you choose <code>redacted_and_unredacted</code> Amazon Transcribe outputs both the 
            redacted and unredacted transcripts.</p>")
  @as("RedactionOutput")
  redactionOutput: redactionOutput,
  @ocaml.doc("<p>Request parameter that defines the entities to be redacted. The only accepted value is
            <code>PII</code>.</p>")
  @as("RedactionType")
  redactionType: redactionType,
}
type channelDefinitions = array<channelDefinition>
type callAnalyticsJobSummaries = array<callAnalyticsJobSummary>
@ocaml.doc("<p>Provides a summary of information about a transcription job.</p>")
type transcriptionJobSummary = {
  @ocaml.doc("<p>A value between zero and one that Amazon Transcribe assigned to the language it identified in 
            the source audio. A higher score indicates that Amazon Transcribe is more confident in the language it
            identified.</p>")
  @as("IdentifiedLanguageScore")
  identifiedLanguageScore: option<identifiedLanguageScore>,
  @ocaml.doc(
    "<p>Whether automatic language identification was enabled for a transcription job.</p>"
  )
  @as("IdentifyLanguage")
  identifyLanguage: option<boolean_>,
  @as("ModelSettings") modelSettings: option<modelSettings>,
  @ocaml.doc("<p>The content redaction settings of the transcription job.</p>")
  @as("ContentRedaction")
  contentRedaction: option<contentRedaction>,
  @ocaml.doc("<p>Indicates the location of the output of the transcription job.</p>
        <p>If the value is <code>CUSTOMER_BUCKET</code> then the location is the S3 bucket
            specified in the <code>outputBucketName</code> field when the transcription job was 
            started with the <code>StartTranscriptionJob</code> operation.</p>
        <p>If the value is <code>SERVICE_BUCKET</code> then the output is stored by Amazon Transcribe and 
            can be retrieved using the URI in the <code>GetTranscriptionJob</code> response's
            <code>TranscriptFileUri</code> field.</p>")
  @as("OutputLocationType")
  outputLocationType: option<outputLocationType>,
  @ocaml.doc("<p>If the <code>TranscriptionJobStatus</code> field is <code>FAILED</code>, a 
            description of the error.</p>")
  @as("FailureReason")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>The status of the transcription job. When the status is <code>COMPLETED</code>,
            use the <code>GetTranscriptionJob</code> operation to get the results of the 
            transcription.</p>")
  @as("TranscriptionJobStatus")
  transcriptionJobStatus: option<transcriptionJobStatus>,
  @ocaml.doc("<p>The language code for the input speech.</p>") @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>A timestamp that shows when the job was completed.</p>") @as("CompletionTime")
  completionTime: option<dateTime>,
  @ocaml.doc("<p>A timestamp that shows when the job started processing.</p>") @as("StartTime")
  startTime: option<dateTime>,
  @ocaml.doc("<p>A timestamp that shows when the job was created.</p>") @as("CreationTime")
  creationTime: option<dateTime>,
  @ocaml.doc("<p>The name of the transcription job.</p>") @as("TranscriptionJobName")
  transcriptionJobName: option<transcriptionJobName>,
}
@ocaml.doc("<p>Describes an asynchronous transcription job that was created with the 
            <code>StartTranscriptionJob</code> operation. </p>")
type transcriptionJob = {
  @ocaml.doc("<p>Language-specific settings that can be specified when language identification is enabled
            for your transcription job. These settings include <code>VocabularyName</code>,
            <code>VocabularyFilterName</code>, and <code>LanguageModelName</code>.</p>")
  @as("LanguageIdSettings")
  languageIdSettings: option<languageIdSettingsMap>,
  @ocaml.doc("<p>Generate subtitles for your batch transcription job.</p>") @as("Subtitles")
  subtitles: option<subtitlesOutput>,
  @ocaml.doc("<p>A key:value pair assigned to a given transcription job.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>A value between zero and one that Amazon Transcribe assigned to the language that it identified in
            the source audio. Larger values indicate that Amazon Transcribe has higher confidence in the language it
            identified.</p>")
  @as("IdentifiedLanguageScore")
  identifiedLanguageScore: option<identifiedLanguageScore>,
  @ocaml.doc("<p>An object that shows the optional array of languages inputted for transcription jobs with
            automatic language identification enabled.</p>")
  @as("LanguageOptions")
  languageOptions: option<languageOptions>,
  @ocaml.doc("<p>A value that shows if automatic language identification was enabled for a transcription 
            job.</p>")
  @as("IdentifyLanguage")
  identifyLanguage: option<boolean_>,
  @ocaml.doc(
    "<p>An object that describes content redaction settings for the transcription job.</p>"
  )
  @as("ContentRedaction")
  contentRedaction: option<contentRedaction>,
  @ocaml.doc("<p>Provides information about how a transcription job is executed.</p>")
  @as("JobExecutionSettings")
  jobExecutionSettings: option<jobExecutionSettings>,
  @ocaml.doc("<p>An object containing the details of your custom language model.</p>")
  @as("ModelSettings")
  modelSettings: option<modelSettings>,
  @ocaml.doc("<p>Optional settings for the transcription job. Use these settings to turn on speaker 
            recognition, to set the maximum number of speakers that should be identified and to specify 
            a custom vocabulary to use when processing the transcription job.</p>")
  @as("Settings")
  settings: option<settings>,
  @ocaml.doc("<p>If the <code>TranscriptionJobStatus</code> field is <code>FAILED</code>, this field 
            contains information about why the job failed.</p>
        <p>The <code>FailureReason</code> field can contain one of the following values:</p>
        <ul>
            <li>
                <p>
                  <code>Unsupported media format</code> - The media format specified in the
                    <code>MediaFormat</code> field of the request isn't valid. See the description of the
                    <code>MediaFormat</code> field for a list of valid values.</p>
            </li>
            <li>
                <p>
                  <code>The media format provided does not match the detected media 
                    format</code> - The media format of the audio file doesn't match the format specified 
                    in the <code>MediaFormat</code> field in the request. Check the media format of 
                    your media file and make sure that the two values match.</p>
            </li>
            <li>
                <p>
                  <code>Invalid sample rate for audio file</code> - The sample rate specified in the 
                    <code>MediaSampleRateHertz</code> of the request isn't valid. The sample rate must 
                    be between 8,000 and 48,000 Hertz.</p>
            </li>
            <li>
                <p>
                  <code>The sample rate provided does not match the detected sample 
                    rate</code> - The sample rate in the audio file doesn't match the sample rate 
                    specified in the <code>MediaSampleRateHertz</code> field in the request. Check
                    the sample rate of your media file and make sure that the two values match.</p>
            </li>
            <li>
                <p>
                  <code>Invalid file size: file size too large</code> - The size of your audio file is 
                    larger than Amazon Transcribe can process. For more information, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html#limits\">Limits</a> in the
                    <i>Amazon Transcribe Developer Guide</i>.</p>
            </li>
            <li>
                <p>
                  <code>Invalid number of channels: number of channels too large</code> - Your 
                    audio contains more channels than Amazon Transcribe is configured to process. To request additional
                    channels, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits-amazon-transcribe\">Amazon
                        Transcribe Limits</a> in the <i>Amazon Web Services General
                        Reference</i>.</p>
            </li>
         </ul>")
  @as("FailureReason")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>A timestamp that shows when the job completed.</p>") @as("CompletionTime")
  completionTime: option<dateTime>,
  @ocaml.doc("<p>A timestamp that shows when the job was created.</p>") @as("CreationTime")
  creationTime: option<dateTime>,
  @ocaml.doc("<p>A timestamp that shows when the job started processing.</p>") @as("StartTime")
  startTime: option<dateTime>,
  @ocaml.doc("<p>An object that describes the output of the transcription job.</p>")
  @as("Transcript")
  transcript: option<transcript>,
  @ocaml.doc("<p>An object that describes the input media for the transcription job.</p>")
  @as("Media")
  media: option<media>,
  @ocaml.doc("<p>The format of the input media file.</p>") @as("MediaFormat")
  mediaFormat: option<mediaFormat>,
  @ocaml.doc("<p>The sample rate, in Hertz (Hz), of the audio track in the input media file.</p>")
  @as("MediaSampleRateHertz")
  mediaSampleRateHertz: option<mediaSampleRateHertz>,
  @ocaml.doc("<p>The language code for the input speech.</p>") @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>The status of the transcription job.</p>") @as("TranscriptionJobStatus")
  transcriptionJobStatus: option<transcriptionJobStatus>,
  @ocaml.doc("<p>The name of the transcription job.</p>") @as("TranscriptionJobName")
  transcriptionJobName: option<transcriptionJobName>,
}
@ocaml.doc("<p>A condition in the call between the customer and the agent that you want to filter 
            for.</p>")
type rule = {
  @ocaml.doc("<p>A condition that is applied to a particular customer sentiment.</p>")
  @as("SentimentFilter")
  sentimentFilter: option<sentimentFilter>,
  @ocaml.doc("<p>A condition that catches particular words or phrases based on a exact match. For 
            example, if you set the phrase \"I want to speak to the manager\", only that exact phrase will
            be returned.</p>")
  @as("TranscriptFilter")
  transcriptFilter: option<transcriptFilter>,
  @ocaml.doc("<p>A condition for a time period when either the customer or agent was interrupting the
            other person. </p>")
  @as("InterruptionFilter")
  interruptionFilter: option<interruptionFilter>,
  @ocaml.doc(
    "<p>A condition for a time period when neither the customer nor the agent was talking.</p>"
  )
  @as("NonTalkTimeFilter")
  nonTalkTimeFilter: option<nonTalkTimeFilter>,
}
module Rule = {
  type t =
    | SentimentFilter(sentimentFilter)
    | TranscriptFilter(transcriptFilter)
    | InterruptionFilter(interruptionFilter)
    | NonTalkTimeFilter(nonTalkTimeFilter)
  exception RuleUnspecified
  let classify = value =>
    switch value {
    | {sentimentFilter: Some(x)} => SentimentFilter(x)
    | {transcriptFilter: Some(x)} => TranscriptFilter(x)
    | {interruptionFilter: Some(x)} => InterruptionFilter(x)
    | {nonTalkTimeFilter: Some(x)} => NonTalkTimeFilter(x)
    | _ => raise(RuleUnspecified)
    }

  let make = value =>
    switch value {
    | SentimentFilter(x) => {
        sentimentFilter: Some(x),
        transcriptFilter: None,
        interruptionFilter: None,
        nonTalkTimeFilter: None,
      }
    | TranscriptFilter(x) => {
        transcriptFilter: Some(x),
        sentimentFilter: None,
        interruptionFilter: None,
        nonTalkTimeFilter: None,
      }
    | InterruptionFilter(x) => {
        interruptionFilter: Some(x),
        sentimentFilter: None,
        transcriptFilter: None,
        nonTalkTimeFilter: None,
      }
    | NonTalkTimeFilter(x) => {
        nonTalkTimeFilter: Some(x),
        sentimentFilter: None,
        transcriptFilter: None,
        interruptionFilter: None,
      }
    }
}
type models = array<languageModel>
@ocaml.doc(
  "<p>The data structure that contains the information for a medical transcription job.</p>"
)
type medicalTranscriptionJob = {
  @ocaml.doc("<p>A key:value pair assigned to a given medical transcription job.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The type of speech in the transcription job. <code>CONVERSATION</code> is generally
            used for patient-physician dialogues. <code>DICTATION</code> is the setting for physicians
            speaking their notes after seeing a patient. For more information, see 
            <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/what-is-transcribe-med.html\">What 
                is Amazon Transcribe Medical?</a>.</p>")
  @as("Type")
  type_: option<type_>,
  @ocaml.doc("<p>The medical specialty of any clinicians providing a dictation or having a conversation. 
            Refer to <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-medical-conversation.html\">Transcribing a medical
                conversation</a>for a list of supported specialties.</p>")
  @as("Specialty")
  specialty: option<specialty>,
  @ocaml.doc("<p>Shows the type of content that you've configured Amazon Transcribe Medical to identify in a transcription
            job. If the value is <code>PHI</code>, you've configured the job to identify personal health
            information (PHI) in the transcription output.</p>")
  @as("ContentIdentificationType")
  contentIdentificationType: option<medicalContentIdentificationType>,
  @ocaml.doc("<p>Object that contains  object.</p>") @as("Settings")
  settings: option<medicalTranscriptionSetting>,
  @ocaml.doc("<p>If the <code>TranscriptionJobStatus</code> field is <code>FAILED</code>, this field 
            contains information about why the job failed.</p>
        <p>The <code>FailureReason</code> field contains one of the following values:</p>
        <ul>
            <li>
                <p>
                  <code>Unsupported media format</code>- The media format specified in the
                    <code>MediaFormat</code> field of the request isn't valid. See the description of the 
                    <code>MediaFormat</code> field for a list of valid values.</p>
            </li>
            <li>
                <p>
                  <code>The media format provided does not match the detected media 
                    format</code>- The media format of the audio file doesn't match the format specified 
                    in the <code>MediaFormat</code> field in the request. Check the media format of 
                    your media file and make sure the two values match.</p>
            </li>
            <li>
                <p>
                  <code>Invalid sample rate for audio file</code>- The sample rate specified in the 
                    <code>MediaSampleRateHertz</code> of the request isn't valid. The sample rate must
                    be between 8,000 and 48,000 Hertz.</p>
            </li>
            <li>
                <p>
                  <code>The sample rate provided does not match the detected sample 
                    rate</code>- The sample rate in the audio file doesn't match the sample rate specified
                    in the <code>MediaSampleRateHertz</code> field in the request. Check the sample rate
                    of your media file and make sure that the two values match.</p>
            </li>
            <li>
                <p>
                  <code>Invalid file size: file size too large</code>- The size of your audio file is 
                    larger than what Amazon Transcribe Medical can process. For more information, see 
                    <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html#limits\">Guidelines
                        and Quotas</a> in the <i>Amazon Transcribe Medical Guide</i>.</p>
            </li>
            <li>
                <p>
                  <code>Invalid number of channels: number of channels too large</code>- Your 
                    audio contains more channels than Amazon Transcribe Medical is configured to process. To request
                    additional channels, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/transcribe-medical.html\">Amazon Transcribe Medical Endpoints and 
                        Quotas</a> in the <i>Amazon Web Services General
                        Reference</i>.</p>
            </li>
         </ul>")
  @as("FailureReason")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>A timestamp that shows when the job was completed.</p>") @as("CompletionTime")
  completionTime: option<dateTime>,
  @ocaml.doc("<p>A timestamp that shows when the job was created.</p>") @as("CreationTime")
  creationTime: option<dateTime>,
  @ocaml.doc("<p>A timestamp that shows when the job started processing.</p>") @as("StartTime")
  startTime: option<dateTime>,
  @ocaml.doc("<p>An object that contains the <code>MedicalTranscript</code>. The
            <code>MedicalTranscript</code> contains the <code>TranscriptFileUri</code>.</p>")
  @as("Transcript")
  transcript: option<medicalTranscript>,
  @as("Media") media: option<media>,
  @ocaml.doc("<p>The format of the input media file.</p>") @as("MediaFormat")
  mediaFormat: option<mediaFormat>,
  @ocaml.doc("<p>The sample rate, in Hertz, of the source audio containing medical information.</p>
        <p>If you don't specify the sample rate, Amazon Transcribe Medical determines it for you. If you choose to 
            specify the sample rate, it must match the rate detected by Amazon Transcribe Medical.</p>")
  @as("MediaSampleRateHertz")
  mediaSampleRateHertz: option<medicalMediaSampleRateHertz>,
  @ocaml.doc("<p>The language code for the language spoken in the source audio file. US English (en-US) 
            is the only supported language for medical transcriptions. Any other value you enter for 
            language code results in a <code>BadRequestException</code> error.</p>")
  @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>The completion status of a medical transcription job.</p>")
  @as("TranscriptionJobStatus")
  transcriptionJobStatus: option<transcriptionJobStatus>,
  @ocaml.doc("<p>The name for a given medical transcription job.</p>")
  @as("MedicalTranscriptionJobName")
  medicalTranscriptionJobName: option<transcriptionJobName>,
}
@ocaml.doc("<p>Provides optional settings for the <code>CallAnalyticsJob</code> operation. </p>")
type callAnalyticsJobSettings = {
  @ocaml.doc("<p>The language identification settings associated with your call analytics job. These settings 
            include <code>VocabularyName</code>, <code>VocabularyFilterName</code>, and
            <code>LanguageModelName</code>.</p>")
  @as("LanguageIdSettings")
  languageIdSettings: option<languageIdSettingsMap>,
  @ocaml.doc("<p>When you run a call analytics job, you can specify the language spoken in the audio, or
            you can have Amazon Transcribe identify the language for you.</p>
        <p>To specify a language, specify an array with one language code. If you don't know the 
            language, you can leave this field blank and Amazon Transcribe will use machine learning to identify the 
            language for you. To improve the ability of Amazon Transcribe to correctly identify the language, you can 
            provide an array of the languages that can be present in the audio. Refer to 
            <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html\">Supported languages</a> for
            additional information.</p>")
  @as("LanguageOptions")
  languageOptions: option<languageOptions>,
  @as("ContentRedaction") contentRedaction: option<contentRedaction>,
  @ocaml.doc("<p>The structure used to describe a custom language model.</p>")
  @as("LanguageModelName")
  languageModelName: option<modelName>,
  @ocaml.doc("<p>Set to mask to remove filtered text from the transcript and replace it with three 
            asterisks (\"***\") as placeholder text. Set to <code>remove</code> to remove filtered text 
            from the transcript without using placeholder text. Set to <code>tag</code> to mark the word 
            in the transcription output that matches the vocabulary filter. When you set the filter method
            to <code>tag</code>, the words matching your vocabulary filter are not masked or 
            removed.</p>")
  @as("VocabularyFilterMethod")
  vocabularyFilterMethod: option<vocabularyFilterMethod>,
  @ocaml.doc("<p>The name of the vocabulary filter to use when running a call analytics job. The filter that
            you specify must have the same language code as the analytics job.</p>")
  @as("VocabularyFilterName")
  vocabularyFilterName: option<vocabularyFilterName>,
  @ocaml.doc("<p>The name of a vocabulary to use when processing the call analytics job.</p>")
  @as("VocabularyName")
  vocabularyName: option<vocabularyName>,
}
type transcriptionJobSummaries = array<transcriptionJobSummary>
type ruleList = array<rule>
@ocaml.doc("<p>Describes an asynchronous analytics job that was created with the
            <code>StartAnalyticsJob</code> operation.</p>")
type callAnalyticsJob = {
  @ocaml.doc("<p>Shows numeric values to indicate the channel assigned to the agent's audio and the
            channel assigned to the customer's audio. </p>")
  @as("ChannelDefinitions")
  channelDefinitions: option<channelDefinitions>,
  @ocaml.doc("<p>Provides information about the settings used to run a transcription job.</p>")
  @as("Settings")
  settings: option<callAnalyticsJobSettings>,
  @ocaml.doc("<p>A value between zero and one that Amazon Transcribe assigned to the language that it identified in 
            the source audio. This value appears only when you don't provide a single language code. 
            Larger values indicate that Amazon Transcribe has higher confidence in the language that it
            identified.</p>")
  @as("IdentifiedLanguageScore")
  identifiedLanguageScore: option<identifiedLanguageScore>,
  @ocaml.doc("<p>The Amazon Resource Number (ARN) that you use to access the analytics job. ARNs 
            have the format
            <code>arn:partition:service:region:account-id:resource-type/resource-id</code>.</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<dataAccessRoleArn>,
  @ocaml.doc("<p>If the <code>AnalyticsJobStatus</code> is <code>FAILED</code>, this field contains 
            information about why the job failed.</p>
        <p>The <code>FailureReason</code> field can contain one of the following values:</p>
        <ul>
            <li>
                <p>
                  <code>Unsupported media format</code>: The media format specified in the
                <code>MediaFormat</code> field of the request isn't valid. See the description of the
                <code>MediaFormat</code> field for a list of valid values.</p>
            </li>
            <li>
                <p>
                  <code>The media format provided does not match the detected media 
                    format</code>: The media format of the audio file doesn't match the format specified 
                    in the <code>MediaFormat</code> field in the request. Check the media format of your
                    media file and make sure the two values match.</p>
            </li>
            <li>
                <p>
                  <code>Invalid sample rate for audio file</code>: The sample rate specified in the
                <code>MediaSampleRateHertz</code> of the request isn't valid. The sample rate must be
                    between 8,000 and 48,000 Hertz.</p>
            </li>
            <li>
               <p>
                  <code>The sample rate provided does not match the detected sample
                rate</code>: The sample rate in the audio file doesn't match the sample rate specified in 
                the <code>MediaSampleRateHertz</code> field in the request. Check the sample rate of 
                your media file and make sure that the two values match.</p>
            </li>
            <li>
                <p>
                  <code>Invalid file size: file size too large</code>: The size of your audio file is larger
                    than what Amazon Transcribe Medical can process. For more information, see <i>Guidelines and
                        Quotas</i> in the Amazon Transcribe Medical Guide.</p>
            </li>
            <li>
                <p>
                  <code>Invalid number of channels: number of channels too large</code>: Your 
                    audio contains more channels than Amazon Transcribe Medical is configured to process. To request additional
                    channels, see Amazon Transcribe Medical Endpoints and Quotas in the
                    <a href=\"https://docs.aws.amazon.com/general/latest/gr/Welcome.html\">Amazon Web 
                        Services General Reference</a>.</p>
            </li>
         </ul>")
  @as("FailureReason")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>A timestamp that shows when the analytics job was completed.</p>")
  @as("CompletionTime")
  completionTime: option<dateTime>,
  @ocaml.doc("<p>A timestamp that shows when the analytics job was created.</p>")
  @as("CreationTime")
  creationTime: option<dateTime>,
  @ocaml.doc("<p>A timestamp that shows when the analytics job started processing.</p>")
  @as("StartTime")
  startTime: option<dateTime>,
  @as("Transcript") transcript: option<transcript>,
  @as("Media") media: option<media>,
  @ocaml.doc("<p>The format of the input audio file. Note: for call analytics jobs, only the following media 
            formats are supported: MP3, MP4, WAV, FLAC, OGG, and WebM.</p>")
  @as("MediaFormat")
  mediaFormat: option<mediaFormat>,
  @ocaml.doc("<p>The sample rate, in Hertz, of the input audio.</p>") @as("MediaSampleRateHertz")
  mediaSampleRateHertz: option<mediaSampleRateHertz>,
  @ocaml.doc("<p>If you know the language spoken between the customer and the agent, specify a 
            language code for this field.</p>
        <p>If you don't know the language, you can leave this field blank, and Amazon Transcribe will use machine 
            learning to automatically identify the language. To improve the accuracy of language 
            identification, you can provide an array containing the possible language codes for the 
            language spoken in your audio. Refer to <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html\">Supported languages</a> for
            additional information.</p>")
  @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>The status of the analytics job.</p>") @as("CallAnalyticsJobStatus")
  callAnalyticsJobStatus: option<callAnalyticsJobStatus>,
  @ocaml.doc("<p>The name of the call analytics job.</p>") @as("CallAnalyticsJobName")
  callAnalyticsJobName: option<callAnalyticsJobName>,
}
@ocaml.doc("<p>An object that contains the rules and additional information about a call analytics 
            category.</p>")
type categoryProperties = {
  @ocaml.doc("<p>A timestamp that shows when the call analytics category was most recently 
            updated.</p>")
  @as("LastUpdateTime")
  lastUpdateTime: option<dateTime>,
  @ocaml.doc("<p>A timestamp that shows when the call analytics category was created.</p>")
  @as("CreateTime")
  createTime: option<dateTime>,
  @ocaml.doc("<p>The rules used to create a call analytics category.</p>") @as("Rules")
  rules: option<ruleList>,
  @ocaml.doc("<p>The name of the call analytics category.</p>") @as("CategoryName")
  categoryName: option<categoryName>,
}
type categoryPropertiesList = array<categoryProperties>
@ocaml.doc("<p>Operations and objects for transcribing speech to text.</p>")
module UpdateMedicalVocabulary = {
  type t
  type request = {
    @ocaml.doc("<p>The location in Amazon S3 of the text file that contains your custom vocabulary. The URI must
            be in the same Amazon Web Services Region as the resource that you are calling. The following
            is the format for a URI:</p>
        <p>
            <code>https://s3.aws-region.amazonaws.com/bucket-name/keyprefix/objectkey</code>
        </p>
        <p>For example:</p>
        <p>
            <code>https://s3.us-east-1.amazonaws.com/DOC-EXAMPLE-BUCKET/vocab.txt</code>
         </p>
        <p>For more information about Amazon S3 object names, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys\">Object Keys</a> in the
            <i>Amazon S3 Developer Guide</i>.</p>
        <p>For more information about custom vocabularies in Amazon Transcribe Medical, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-med.html\">Medical Custom
            Vocabularies</a>.</p>")
    @as("VocabularyFileUri")
    vocabularyFileUri: option<uri>,
    @ocaml.doc("<p>The language code of the language used for the entries in the updated vocabulary. 
            U.S. English (en-US) is the only valid language code in Amazon Transcribe Medical.</p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>The name of the vocabulary to update. The name is case sensitive. If you try to update
            a vocabulary with the same name as a vocabulary you've already made, you get a
            <code>ConflictException</code> error.</p>")
    @as("VocabularyName")
    vocabularyName: vocabularyName,
  }
  type response = {
    @ocaml.doc("<p>The processing state of the update to the vocabulary. When the 
            <code>VocabularyState</code> field is <code>READY</code>, the vocabulary is ready to 
            be used in a <code>StartMedicalTranscriptionJob</code> request.</p>")
    @as("VocabularyState")
    vocabularyState: option<vocabularyState>,
    @ocaml.doc("<p>The date and time that the vocabulary was updated.</p>") @as("LastModifiedTime")
    lastModifiedTime: option<dateTime>,
    @ocaml.doc("<p>The language code for the language of the text file used to update the custom 
            vocabulary. US English (en-US) is the only language supported in Amazon Transcribe Medical.</p>")
    @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>The name of the updated vocabulary.</p>") @as("VocabularyName")
    vocabularyName: option<vocabularyName>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "UpdateMedicalVocabularyCommand"
  let make = (~languageCode, ~vocabularyName, ~vocabularyFileUri=?, ()) =>
    new({
      vocabularyFileUri: vocabularyFileUri,
      languageCode: languageCode,
      vocabularyName: vocabularyName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVocabularyFilter = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the vocabulary filter for which to return information.</p>")
    @as("VocabularyFilterName")
    vocabularyFilterName: vocabularyFilterName,
  }
  type response = {
    @ocaml.doc(
      "<p>The URI of the list of words in the vocabulary filter. You can use this URI to get the list of words.</p>"
    )
    @as("DownloadUri")
    downloadUri: option<uri>,
    @ocaml.doc("<p>The date and time that the contents of the vocabulary filter were updated.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<dateTime>,
    @ocaml.doc("<p>The language code of the words in the vocabulary filter.</p>")
    @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>The name of the vocabulary filter.</p>") @as("VocabularyFilterName")
    vocabularyFilterName: option<vocabularyFilterName>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "GetVocabularyFilterCommand"
  let make = (~vocabularyFilterName, ()) => new({vocabularyFilterName: vocabularyFilterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVocabulary = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the vocabulary to return information about. The name is case
            sensitive.</p>")
    @as("VocabularyName")
    vocabularyName: vocabularyName,
  }
  type response = {
    @ocaml.doc("<p>The S3 location where the vocabulary is stored. Use this URI to get the contents of
            the vocabulary. The URI is available for a limited time.</p>")
    @as("DownloadUri")
    downloadUri: option<uri>,
    @ocaml.doc("<p>If the <code>VocabularyState</code> field is <code>FAILED</code>, this field contains
            information about why the job failed.</p>")
    @as("FailureReason")
    failureReason: option<failureReason>,
    @ocaml.doc("<p>The date and time that the vocabulary was last modified.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<dateTime>,
    @ocaml.doc("<p>The processing state of the vocabulary.</p>") @as("VocabularyState")
    vocabularyState: option<vocabularyState>,
    @ocaml.doc("<p>The language code of the vocabulary entries.</p>") @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>The name of the vocabulary to return.</p>") @as("VocabularyName")
    vocabularyName: option<vocabularyName>,
  }
  @module("@aws-sdk/client-transcribe") @new external new: request => t = "GetVocabularyCommand"
  let make = (~vocabularyName, ()) => new({vocabularyName: vocabularyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMedicalVocabulary = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the medical vocabulary you want information about. This value is case 
            sensitive.</p>")
    @as("VocabularyName")
    vocabularyName: vocabularyName,
  }
  type response = {
    @ocaml.doc("<p>The S3 location where the vocabulary is stored; use this URI to view or download the
            vocabulary.</p>")
    @as("DownloadUri")
    downloadUri: option<uri>,
    @ocaml.doc("<p>If your request returns a <code>VocabularyState</code> that is <code>FAILED</code>,
            the <code>FailureReason</code> field contains information about why the request 
            failed.</p>
        <p>For more information, refer to the <a href=\"https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html\">Common Errors</a>
            section.</p>")
    @as("FailureReason")
    failureReason: option<failureReason>,
    @ocaml.doc("<p>The date and time that the vocabulary was last modified with a text file different from the one that was 
            previously used.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<dateTime>,
    @ocaml.doc("<p>The processing state of the vocabulary. If the <code>VocabularyState</code> is <code>READY</code> 
            then you can use it in the <code>StartMedicalTranscriptionJob</code> operation.</p>")
    @as("VocabularyState")
    vocabularyState: option<vocabularyState>,
    @ocaml.doc("<p>The valid language code for your vocabulary entries.</p>") @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>The name of the vocabulary returned by Amazon Transcribe Medical.</p>")
    @as("VocabularyName")
    vocabularyName: option<vocabularyName>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "GetMedicalVocabularyCommand"
  let make = (~vocabularyName, ()) => new({vocabularyName: vocabularyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVocabularyFilter = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the vocabulary filter you want to delete. Vocabulary filter names are
            case-sensitive.</p>")
    @as("VocabularyFilterName")
    vocabularyFilterName: vocabularyFilterName,
  }
  type response = {.}
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "DeleteVocabularyFilterCommand"
  let make = (~vocabularyFilterName, ()) => new({vocabularyFilterName: vocabularyFilterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteVocabulary = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the vocabulary you want to delete. Vocabulary names are
            case-sensitive.</p>")
    @as("VocabularyName")
    vocabularyName: vocabularyName,
  }
  type response = {.}
  @module("@aws-sdk/client-transcribe") @new external new: request => t = "DeleteVocabularyCommand"
  let make = (~vocabularyName, ()) => new({vocabularyName: vocabularyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteTranscriptionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the transcription job you want to delete. Job names are
            case-sensitive.</p>")
    @as("TranscriptionJobName")
    transcriptionJobName: transcriptionJobName,
  }
  type response = {.}
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "DeleteTranscriptionJobCommand"
  let make = (~transcriptionJobName, ()) => new({transcriptionJobName: transcriptionJobName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMedicalVocabulary = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the vocabulary that you want to delete. Vocabulary names are
            case-sensitive.</p>")
    @as("VocabularyName")
    vocabularyName: vocabularyName,
  }
  type response = {.}
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "DeleteMedicalVocabularyCommand"
  let make = (~vocabularyName, ()) => new({vocabularyName: vocabularyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMedicalTranscriptionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the medical transcription job you want to delete. Job names are
            case-sensitive.</p>")
    @as("MedicalTranscriptionJobName")
    medicalTranscriptionJobName: transcriptionJobName,
  }
  type response = {.}
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "DeleteMedicalTranscriptionJobCommand"
  let make = (~medicalTranscriptionJobName, ()) =>
    new({medicalTranscriptionJobName: medicalTranscriptionJobName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLanguageModel = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the model you want to delete. Model names are case-sensitive.</p>")
    @as("ModelName")
    modelName: modelName,
  }
  type response = {.}
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "DeleteLanguageModelCommand"
  let make = (~modelName, ()) => new({modelName: modelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCallAnalyticsJob = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the call analytics job you want to delete. Job names are
            case-sensitive.</p>")
    @as("CallAnalyticsJobName")
    callAnalyticsJobName: callAnalyticsJobName,
  }
  type response = {.}
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "DeleteCallAnalyticsJobCommand"
  let make = (~callAnalyticsJobName, ()) => new({callAnalyticsJobName: callAnalyticsJobName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCallAnalyticsCategory = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the call analytics category you want to delete. Category names are
            case-sensitive.</p>")
    @as("CategoryName")
    categoryName: categoryName,
  }
  type response = {.}
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "DeleteCallAnalyticsCategoryCommand"
  let make = (~categoryName, ()) => new({categoryName: categoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateVocabularyFilter = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon S3 location of a text file used as input to create the vocabulary filter.
            Only use characters from the character set defined for custom vocabularies. For a list of 
            character sets, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html\">Character Sets for Custom
                Vocabularies</a>.</p>
        <p>The specified file must be less than 50 KB of UTF-8 characters.</p>
        <p>If you provide the location of a list of words in the <code>VocabularyFilterFileUri</code>
            parameter, you can't use the <code>Words</code> parameter.</p>")
    @as("VocabularyFilterFileUri")
    vocabularyFilterFileUri: option<uri>,
    @ocaml.doc("<p>The words to use in the vocabulary filter. Only use characters from the character 
            set defined for custom vocabularies. For a list of character sets, see 
            <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html\">Character
                Sets for Custom Vocabularies</a>.</p>
        <p>If you provide a list of words in the <code>Words</code> parameter, you can't use the 
            <code>VocabularyFilterFileUri</code> parameter.</p>")
    @as("Words")
    words: option<words>,
    @ocaml.doc("<p>The name of the vocabulary filter to update. If you try to update a vocabulary filter with
            the same name as another vocabulary filter, you get a <code>ConflictException</code> 
            error.</p>")
    @as("VocabularyFilterName")
    vocabularyFilterName: vocabularyFilterName,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the vocabulary filter was updated.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<dateTime>,
    @ocaml.doc("<p>The language code of the words in the vocabulary filter.</p>")
    @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>The name of the updated vocabulary filter.</p>") @as("VocabularyFilterName")
    vocabularyFilterName: option<vocabularyFilterName>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "UpdateVocabularyFilterCommand"
  let make = (~vocabularyFilterName, ~vocabularyFilterFileUri=?, ~words=?, ()) =>
    new({
      vocabularyFilterFileUri: vocabularyFilterFileUri,
      words: words,
      vocabularyFilterName: vocabularyFilterName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVocabulary = {
  type t
  type request = {
    @ocaml.doc("<p>The S3 location of the text file that contains the definition of the custom vocabulary. 
            The URI must be in the same region as the API endpoint that you are calling. The general form
            is:</p>
        <p>
            <code>https://s3.aws-region.amazonaws.com/bucket-name/keyprefix/objectkey</code>
         </p>
        <p>For example:</p>
        <p>
            <code>https://s3.us-east-1.amazonaws.com/DOC-EXAMPLE-BUCKET/vocab.txt</code>
         </p>
        <p>For more information about S3 object names, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys\">Object Keys</a> in the
            <i>Amazon S3 Developer Guide</i>.</p>
        <p>For more information about custom vocabularies, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html\">Custom 
            Vocabularies</a>.</p>")
    @as("VocabularyFileUri")
    vocabularyFileUri: option<uri>,
    @ocaml.doc("<p>An array of strings containing the vocabulary entries.</p>") @as("Phrases")
    phrases: option<phrases>,
    @ocaml.doc("<p>The language code of the vocabulary entries. For a list of languages and their 
            corresponding language codes, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html\">Supported languages</a>.</p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>The name of the vocabulary to update. The name is case sensitive. If you try to update
            a vocabulary with the same name as a previous vocabulary you will receive a
            <code>ConflictException</code> error.</p>")
    @as("VocabularyName")
    vocabularyName: vocabularyName,
  }
  type response = {
    @ocaml.doc("<p>The processing state of the vocabulary. When the <code>VocabularyState</code> 
            field contains <code>READY</code> the vocabulary is ready to be used in a
            <code>StartTranscriptionJob</code> request.</p>")
    @as("VocabularyState")
    vocabularyState: option<vocabularyState>,
    @ocaml.doc("<p>The date and time that the vocabulary was updated.</p>") @as("LastModifiedTime")
    lastModifiedTime: option<dateTime>,
    @ocaml.doc("<p>The language code of the vocabulary entries.</p>") @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>The name of the vocabulary that was updated.</p>") @as("VocabularyName")
    vocabularyName: option<vocabularyName>,
  }
  @module("@aws-sdk/client-transcribe") @new external new: request => t = "UpdateVocabularyCommand"
  let make = (~languageCode, ~vocabularyName, ~vocabularyFileUri=?, ~phrases=?, ()) =>
    new({
      vocabularyFileUri: vocabularyFileUri,
      phrases: phrases,
      languageCode: languageCode,
      vocabularyName: vocabularyName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of tag keys you want to remove from a specified Amazon Transcribe resource.</p>"
    )
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Transcribe resource you want to remove tags
            from. ARNs have the format
            <code>arn:partition:service:region:account-id:resource-type/resource-id</code> (for example,
            <code>arn:aws:transcribe:us-east-1:account-id:transcription-job/your-job-name</code>). 
            Valid values for <code>resource-type</code> are: <code>transcription-job</code>,
            <code>medical-transcription-job</code>, <code>vocabulary</code>, 
            <code>medical-vocabulary</code>, <code>vocabulary-filter</code>, and 
            <code>language-model</code>.</p>")
    @as("ResourceArn")
    resourceArn: transcribeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-transcribe") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags you are assigning to a given Amazon Transcribe resource.</p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Transcribe resource you want to tag. ARNs have 
            the format <code>arn:partition:service:region:account-id:resource-type/resource-id</code> 
            (for example, 
            <code>arn:aws:transcribe:us-east-1:account-id:transcription-job/your-job-name</code>). 
            Valid values for <code>resource-type</code> are: <code>transcription-job</code>,
            <code>medical-transcription-job</code>, <code>vocabulary</code>, 
            <code>medical-vocabulary</code>, <code>vocabulary-filter</code>, and 
            <code>language-model</code>.</p>")
    @as("ResourceArn")
    resourceArn: transcribeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-transcribe") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListVocabularyFilters = {
  type t
  type request = {
    @ocaml.doc("<p>Filters the response so that it only contains vocabulary filters whose name contains the 
            specified string.</p>")
    @as("NameContains")
    nameContains: option<vocabularyFilterName>,
    @ocaml.doc("<p>The maximum number of filters to return in each page of results. If there are fewer 
            results than the value you specify, only the actual results are returned. If you do not specify 
            a value, the default of 5 is used.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the result of the previous request to <code>ListVocabularyFilters</code> was truncated, 
            include the <code>NextToken</code> to fetch the next set of collections.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The list of vocabulary filters. It contains at most <code>MaxResults</code> number of 
            filters. If there are more filters, call the <code>ListVocabularyFilters</code> operation again 
            with the <code>NextToken</code> parameter in the request set to the value of the
            <code>NextToken</code> field in the response.</p>")
    @as("VocabularyFilters")
    vocabularyFilters: option<vocabularyFilters>,
    @ocaml.doc("<p>The <code>ListVocabularyFilters</code> operation returns a page of collections at a time.
            The maximum size of the page is set by the <code>MaxResults</code> parameter. If there 
            are more jobs in the list than the page size, Amazon Transcribe returns the <code>NextPage</code> token.
            Include the token in the next request to the <code>ListVocabularyFilters</code> operation to 
            return in the next page of jobs.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "ListVocabularyFiltersCommand"
  let make = (~nameContains=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({nameContains: nameContains, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVocabularies = {
  type t
  type request = {
    @ocaml.doc("<p>When specified, the vocabularies returned in the list are limited to vocabularies whose 
            name contains the specified string. The search is not case sensitive, 
            <code>ListVocabularies</code> returns both \"vocabularyname\" and \"VocabularyName\" in the
            response list.</p>")
    @as("NameContains")
    nameContains: option<vocabularyName>,
    @ocaml.doc("<p>When specified, only returns vocabularies with the <code>VocabularyState</code> field 
            equal to the specified state.</p>")
    @as("StateEquals")
    stateEquals: option<vocabularyState>,
    @ocaml.doc("<p>The maximum number of vocabularies to return in each page of results. If there are fewer 
            results than the value you specify, only the actual results are returned. If you do not specify a 
            value, the default of 5 is used.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the result of the previous request to <code>ListVocabularies</code> was truncated, 
            include the <code>NextToken</code> to fetch the next set of jobs.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A list of objects that describe the vocabularies that match the search criteria in the
            request.</p>")
    @as("Vocabularies")
    vocabularies: option<vocabularies>,
    @ocaml.doc("<p>The <code>ListVocabularies</code> operation returns a page of vocabularies at a time. 
            The maximum size of the page is set in the <code>MaxResults</code> parameter. If there are
            more jobs in the list than will fit on the page, Amazon Transcribe returns the <code>NextPage</code> token.
            To return in the next page of jobs, include the token in the next request to the
            <code>ListVocabularies</code> operation.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The requested vocabulary state.</p>") @as("Status")
    status: option<vocabularyState>,
  }
  @module("@aws-sdk/client-transcribe") @new external new: request => t = "ListVocabulariesCommand"
  let make = (~nameContains=?, ~stateEquals=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      nameContains: nameContains,
      stateEquals: stateEquals,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>Lists all tags associated with a given Amazon Resource Name (ARN). ARNs have the format
            <code>arn:partition:service:region:account-id:resource-type/resource-id</code> (for example,
            <code>arn:aws:transcribe:us-east-1:account-id:transcription-job/your-job-name</code>). Valid 
            values for <code>resource-type</code> are: <code>transcription-job</code>,
            <code>medical-transcription-job</code>, <code>vocabulary</code>, 
            <code>medical-vocabulary</code>, <code>vocabulary-filter</code>, and 
            <code>language-model</code>.</p>")
    @as("ResourceArn")
    resourceArn: transcribeArn,
  }
  type response = {
    @ocaml.doc(
      "<p>Lists all tags associated with the given transcription job, vocabulary, or resource.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Lists all tags associated with the given Amazon Resource Name (ARN). </p>")
    @as("ResourceArn")
    resourceArn: option<transcribeArn>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMedicalVocabularies = {
  type t
  type request = {
    @ocaml.doc("<p>Returns vocabularies whose names contain the specified string. The search is not case 
            sensitive. <code>ListMedicalVocabularies</code> returns both 
            \"<code>vocabularyname</code>\" and \"<code>VocabularyName</code>\".</p>")
    @as("NameContains")
    nameContains: option<vocabularyName>,
    @ocaml.doc("<p>When specified, returns only vocabularies with the <code>VocabularyState</code> equal
            to the specified vocabulary state. Use this field to see which vocabularies are ready for your
            medical transcription jobs.</p>")
    @as("StateEquals")
    stateEquals: option<vocabularyState>,
    @ocaml.doc("<p>The maximum number of vocabularies to return in each page of results. If there are
            fewer results than the value you specify, only the actual results are returned. If you do not
            specify a value, the default of 5 is used.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the result of your previous request to <code>ListMedicalVocabularies</code> was
            truncated, include the <code>NextToken</code> to fetch the next set of
            vocabularies.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>A list of objects that describe the vocabularies that match your search criteria.</p>"
    )
    @as("Vocabularies")
    vocabularies: option<vocabularies>,
    @ocaml.doc("<p>The <code>ListMedicalVocabularies</code> operation returns a page of vocabularies at 
            a time. You set the maximum number of vocabularies to return on a page with the
            <code>MaxResults</code> parameter. If there are more jobs in the list will fit on a page, 
            Amazon Transcribe Medical returns the <code>NextPage</code> token. To return the next page of vocabularies,
            include the token in the next request to the <code>ListMedicalVocabularies</code> 
            operation.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The requested vocabulary state.</p>") @as("Status")
    status: option<vocabularyState>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "ListMedicalVocabulariesCommand"
  let make = (~nameContains=?, ~stateEquals=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      nameContains: nameContains,
      stateEquals: stateEquals,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMedicalTranscriptionJobs = {
  type t
  type request = {
    @ocaml.doc("<p> The maximum number of medical transcription jobs to return in each page of results. If 
            there are fewer results than the value you specify, only the actual results are returned. If you 
            do not specify a value, the default of 5 is used.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If you a receive a truncated result in the previous request of
            <code>ListMedicalTranscriptionJobs</code>, include <code>NextToken</code> to fetch the 
            next set of jobs.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>When specified, the jobs returned in the list are limited to jobs whose name contains the 
            specified string.</p>")
    @as("JobNameContains")
    jobNameContains: option<transcriptionJobName>,
    @ocaml.doc("<p>When specified, returns only medical transcription jobs with the specified status. Jobs 
            are ordered by creation date, with the newest jobs returned first. If you don't specify a status,
            Amazon Transcribe Medical returns all transcription jobs ordered by creation date.</p>")
    @as("Status")
    status: option<transcriptionJobStatus>,
  }
  type response = {
    @ocaml.doc("<p>A list of objects containing summary information for a transcription job.</p>")
    @as("MedicalTranscriptionJobSummaries")
    medicalTranscriptionJobSummaries: option<medicalTranscriptionJobSummaries>,
    @ocaml.doc("<p>The <code>ListMedicalTranscriptionJobs</code> operation returns a page of jobs at a
            time. The maximum size of the page is set by the <code>MaxResults</code> parameter. If
            the number of jobs exceeds what can fit on a page, Amazon Transcribe Medical returns the 
            <code>NextPage</code> token. Include the token in the next request to the
            <code>ListMedicalTranscriptionJobs</code> operation to return in the next page of 
            jobs.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The requested status of the medical transcription jobs returned.</p>")
    @as("Status")
    status: option<transcriptionJobStatus>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "ListMedicalTranscriptionJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~jobNameContains=?, ~status=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      jobNameContains: jobNameContains,
      status: status,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCallAnalyticsJobs = {
  type t
  type request = {
    @ocaml.doc("<p>  The maximum number of call analytics jobs to return in each page of results. If there 
            are fewer results than the value you specify, only the actual results are returned. If you do 
            not specify a value, the default of 5 is used. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If you receive a truncated result in the previous request of 
            , include <code>NextToken</code> to fetch the 
            next set of jobs.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>When specified, the jobs returned in the list are limited to jobs whose name contains the
            specified string.</p>")
    @as("JobNameContains")
    jobNameContains: option<callAnalyticsJobName>,
    @ocaml.doc("<p>When specified, returns only call analytics jobs with the specified status. Jobs are ordered
            by creation date, with the most recent jobs returned first. If you don't specify a status, Amazon Transcribe 
            returns all analytics jobs ordered by creation date.</p>")
    @as("Status")
    status: option<callAnalyticsJobStatus>,
  }
  type response = {
    @ocaml.doc("<p>A list of objects containing summary information for a transcription job.</p>")
    @as("CallAnalyticsJobSummaries")
    callAnalyticsJobSummaries: option<callAnalyticsJobSummaries>,
    @ocaml.doc("<p>The  operation returns a page of jobs at a time.
            The maximum size of the page is set by the <code>MaxResults</code> parameter. If there are
            more jobs in the list than the page size, Amazon Transcribe returns the <code>NextPage</code> token. 
            Include the token in your next request to the  
            operation to return next page of jobs.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>When specified, returns only call analytics jobs with that status. Jobs are ordered
            by creation date, with the most recent jobs returned first. If you don't specify a status, Amazon Transcribe
            returns all transcription jobs ordered by creation date.</p>")
    @as("Status")
    status: option<callAnalyticsJobStatus>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "ListCallAnalyticsJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~jobNameContains=?, ~status=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      jobNameContains: jobNameContains,
      status: status,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLanguageModel = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the custom language model you want described. Model names are
            case-sensitive.</p>")
    @as("ModelName")
    modelName: modelName,
  }
  type response = {
    @ocaml.doc("<p>The name of the custom language model you requested more information about.</p>")
    @as("LanguageModel")
    languageModel: option<languageModel>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "DescribeLanguageModelCommand"
  let make = (~modelName, ()) => new({modelName: modelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVocabularyFilter = {
  type t
  type request = {
    @ocaml.doc("<p>Adds one or more tags, each in the form of a key:value pair, to a new vocabulary
            filter at the time you create this new vocabulary filter.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The Amazon S3 location of a text file used as input to create the vocabulary filter. Only 
            use characters from the character set defined for custom vocabularies. For a list of 
            character sets, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html\">Character Sets for Custom
                Vocabularies</a>.</p>
        <p>Your vocabulary filter file must be less than 50 KB in size.</p>
        <p>Note that if you include <code>VocabularyFilterFileUri</code> in your request, you 
            cannot use <code>Words</code>; you must choose one or the other.</p>")
    @as("VocabularyFilterFileUri")
    vocabularyFilterFileUri: option<uri>,
    @ocaml.doc("<p>The words you want in your vocabulary filter. Only use characters specified in the
            <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html\">Character
                sets</a> for the language you're transcribing.</p>
        <p>Note that if you include <code>Words</code> in your request, you cannot use
            <code>VocabularyFilterFileUri</code>; you must choose one or the other.</p>")
    @as("Words")
    words: option<words>,
    @ocaml.doc("<p>The language code of the words in the vocabulary filter. All words in the filter must be
            in the same language. The vocabulary filter can only be used with transcription jobs in the 
            specified language.</p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>The name of your new vocabulary filter.</p>
        <p>This name is case sensitive, cannot contain spaces, and must be unique within an        
            Amazon Web Services account. If you try to create a vocabulary filter with the same name 
            as a previous vocabulary filter, you get a <code>ConflictException</code> error.</p>")
    @as("VocabularyFilterName")
    vocabularyFilterName: vocabularyFilterName,
  }
  type response = {
    @ocaml.doc("<p>The date and time the vocabulary filter was modified.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<dateTime>,
    @ocaml.doc("<p>The language code associated with your vocabulary filter.</p>")
    @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>The name of the vocabulary filter.</p>") @as("VocabularyFilterName")
    vocabularyFilterName: option<vocabularyFilterName>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "CreateVocabularyFilterCommand"
  let make = (
    ~languageCode,
    ~vocabularyFilterName,
    ~tags=?,
    ~vocabularyFilterFileUri=?,
    ~words=?,
    (),
  ) =>
    new({
      tags: tags,
      vocabularyFilterFileUri: vocabularyFilterFileUri,
      words: words,
      languageCode: languageCode,
      vocabularyFilterName: vocabularyFilterName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVocabulary = {
  type t
  type request = {
    @ocaml.doc("<p>Adds one or more tags, each in the form of a key:value pair, to a new 
            custom vocabulary at the time you create this new vocabulary.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The S3 location of the text file that contains your custom vocabulary. The
            URI must be located in the same region as the API endpoint you're calling.</p>
        <p>Here's an example URI path:</p>        
         <p>
            <code>https://s3.us-east-1.amazonaws.com/my-s3-bucket/my-vocab-file.txt</code>
         </p>
        <p>Note that if you include <code>VocabularyFileUri</code> in your request, you 
            cannot use the <code>Phrases</code> flag; you must choose one or the other.</p>")
    @as("VocabularyFileUri")
    vocabularyFileUri: option<uri>,
    @ocaml.doc("<p>Use this flag to include a list of terms within your request.</p>
        <p>Note that if you include <code>Phrases</code> in your request, you cannot
            use <code>VocabularyFileUri</code>; you must choose one or the other.</p>")
    @as("Phrases")
    phrases: option<phrases>,
    @ocaml.doc("<p>The language code that represents the language of the entries in your custom
            vocabulary. Each vocabulary must contain terms in only one language. For a list of 
            languages and their corresponding language codes, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html\">Supported 
                languages</a>.</p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>The name of your new vocabulary.</p>
        <p>This name is case sensitive, cannot contain spaces, and must be unique within an 
            Amazon Web Services account. If you try to create a vocabulary with the same name as a
            previous vocabulary, you get a <code>ConflictException</code> error.</p>")
    @as("VocabularyName")
    vocabularyName: vocabularyName,
  }
  type response = {
    @ocaml.doc("<p>If the <code>VocabularyState</code> field is <code>FAILED</code>,
            <code>FailureReason</code> contains information about why the job failed.</p>")
    @as("FailureReason")
    failureReason: option<failureReason>,
    @ocaml.doc("<p>The date and time you created your custom vocabulary.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<dateTime>,
    @ocaml.doc("<p>The processing state of your vocabulary. If the state is <code>READY</code>, you can
            use the vocabulary in a <code>StartTranscriptionJob</code> request.</p>")
    @as("VocabularyState")
    vocabularyState: option<vocabularyState>,
    @ocaml.doc("<p>The language code you selected for your vocabulary.</p>") @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>The name you chose for your vocabulary.</p>") @as("VocabularyName")
    vocabularyName: option<vocabularyName>,
  }
  @module("@aws-sdk/client-transcribe") @new external new: request => t = "CreateVocabularyCommand"
  let make = (~languageCode, ~vocabularyName, ~tags=?, ~vocabularyFileUri=?, ~phrases=?, ()) =>
    new({
      tags: tags,
      vocabularyFileUri: vocabularyFileUri,
      phrases: phrases,
      languageCode: languageCode,
      vocabularyName: vocabularyName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMedicalVocabulary = {
  type t
  type request = {
    @ocaml.doc("<p>Adds one or more tags, each in the form of a key:value pair, to a new medical 
            vocabulary at the time you create the new vocabulary.</p>
        <p>To learn more about using tags with Amazon Transcribe, refer to <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html\">Tagging resources</a>.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The Amazon S3 location (URI) of the text file that contains your custom vocabulary. 
            The URI must be in the same Amazon Web Services Region as the resource that you're 
            calling.</p> 
        <p>Here's an example URI path:</p>        
         <p>
            <code>https://s3.us-east-1.amazonaws.com/my-s3-bucket/my-vocab-file.txt</code>
         </p>")
    @as("VocabularyFileUri")
    vocabularyFileUri: uri,
    @ocaml.doc("<p>The language code that represents the language of the entries in your custom
            vocabulary. Note that U.S. English (<code>en-US</code>) is the only language  
            supported with Amazon Transcribe Medical.</p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>The name of your new vocabulary.</p>
        <p>This name is case sensitive, cannot contain spaces, and must be unique within an 
            Amazon Web Services account. If you try to create a vocabulary with the same name as a
            previous vocabulary, you get a <code>ConflictException</code> error.</p>")
    @as("VocabularyName")
    vocabularyName: vocabularyName,
  }
  type response = {
    @ocaml.doc("<p>If the <code>VocabularyState</code> field is <code>FAILED</code>,
            <code>FailureReason</code> contains information about why the job failed.</p>")
    @as("FailureReason")
    failureReason: option<failureReason>,
    @ocaml.doc("<p>The date and time you created your custom medical vocabulary.</p>")
    @as("LastModifiedTime")
    lastModifiedTime: option<dateTime>,
    @ocaml.doc("<p>The processing state of your custom medical vocabulary. If the state is 
            <code>READY</code>, you can use the vocabulary in a 
            <code>StartMedicalTranscriptionJob</code> request.</p>")
    @as("VocabularyState")
    vocabularyState: option<vocabularyState>,
    @ocaml.doc("<p>The language code you selected for your medical vocabulary. Note that U.S. English
            (<code>en-US</code>) is the only language supported with Amazon Transcribe Medical.</p>")
    @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>The name you chose for your vocabulary.</p>") @as("VocabularyName")
    vocabularyName: option<vocabularyName>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "CreateMedicalVocabularyCommand"
  let make = (~vocabularyFileUri, ~languageCode, ~vocabularyName, ~tags=?, ()) =>
    new({
      tags: tags,
      vocabularyFileUri: vocabularyFileUri,
      languageCode: languageCode,
      vocabularyName: vocabularyName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLanguageModel = {
  type t
  type request = {
    @ocaml.doc("<p>Optionally add tags, each in the form of a key:value pair, to your new language
            model. See also: .</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Contains your data access role ARN (Amazon Resource Name) and the Amazon S3 
            locations of your training (<code>S3Uri</code>) and tuning 
            (<code>TuningDataS3Uri</code>) data.</p>")
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
    @ocaml.doc("<p>The name of your new custom language model.</p>
        <p>This name is case sensitive, cannot contain spaces, and must be unique within an 
            Amazon Web Services account. If you try to create a language model with the same name as a
            previous language model, you get a <code>ConflictException</code> error.</p>")
    @as("ModelName")
    modelName: modelName,
    @ocaml.doc("<p>The Amazon Transcribe standard language model, or base model, used to create your 
            custom language model. Amazon Transcribe offers two options for base models: Wideband and
            Narrowband.</p>
        <p>If the audio you want to transcribe has a sample rate of 16,000 Hz or greater, 
            choose <code>WideBand</code>. To transcribe audio with a sample rate less than
            16,000 Hz, choose <code>NarrowBand</code>.</p>")
    @as("BaseModelName")
    baseModelName: baseModelName,
    @ocaml.doc("<p>The language of your custom language model; note that the language code you
            select must match the language of your training and tuning data.</p>")
    @as("LanguageCode")
    languageCode: clmlanguageCode,
  }
  type response = {
    @ocaml.doc("<p>The status of your custom language model. When the status shows as 
            <code>COMPLETED</code>, your model is ready to use.</p>")
    @as("ModelStatus")
    modelStatus: option<modelStatus>,
    @ocaml.doc("<p>Lists your data access role ARN (Amazon Resource Name) and the Amazon S3 
            locations your provided for your training (<code>S3Uri</code>) and tuning 
            (<code>TuningDataS3Uri</code>) data.</p>")
    @as("InputDataConfig")
    inputDataConfig: option<inputDataConfig>,
    @ocaml.doc("<p>The unique name you chose for your custom language model.</p>") @as("ModelName")
    modelName: option<modelName>,
    @ocaml.doc("<p>The Amazon Transcribe standard language model, or base model, you used when creating your
            custom language model.</p>
        <p>If your audio has a sample rate of 16,000 Hz or greater, this value should be
            <code>WideBand</code>. If your audio has a sample rate of less than
            16,000 Hz, this value should be <code>NarrowBand</code>.</p>")
    @as("BaseModelName")
    baseModelName: option<baseModelName>,
    @ocaml.doc("<p>The language code you selected for your custom language model.</p>")
    @as("LanguageCode")
    languageCode: option<clmlanguageCode>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "CreateLanguageModelCommand"
  let make = (~inputDataConfig, ~modelName, ~baseModelName, ~languageCode, ~tags=?, ()) =>
    new({
      tags: tags,
      inputDataConfig: inputDataConfig,
      modelName: modelName,
      baseModelName: baseModelName,
      languageCode: languageCode,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartTranscriptionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The language identification settings associated with your transcription job. These 
            settings include <code>VocabularyName</code>, <code>VocabularyFilterName</code>, 
            and <code>LanguageModelName</code>.</p>")
    @as("LanguageIdSettings")
    languageIdSettings: option<languageIdSettingsMap>,
    @ocaml.doc("<p>Add tags to an Amazon Transcribe transcription job.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Add subtitles to your batch transcription job.</p>") @as("Subtitles")
    subtitles: option<subtitles>,
    @ocaml.doc("<p>An object containing a list of languages that might be present in your collection of 
            audio files. Automatic language identification chooses a language that best matches the 
            source audio from that list.</p>
        <p>To transcribe speech in Modern Standard Arabic (ar-SA), your audio or video file must 
            be encoded at a sample rate of 16,000 Hz or higher.</p>")
    @as("LanguageOptions")
    languageOptions: option<languageOptions>,
    @ocaml.doc("<p>Set this field to <code>true</code> to enable automatic language identification. 
            Automatic language identification is disabled by default. You receive a
            <code>BadRequestException</code> error if you enter a value for a
            <code>LanguageCode</code>.</p>
        <p>You must include either <code>LanguageCode</code> or 
            <code>IdentifyLanguage</code> in your request.</p>")
    @as("IdentifyLanguage")
    identifyLanguage: option<boolean_>,
    @ocaml.doc("<p>An object that contains the request parameters for content redaction.</p>")
    @as("ContentRedaction")
    contentRedaction: option<contentRedaction>,
    @ocaml.doc("<p>Provides information about how a transcription job is executed. Use this field to indicate
            that the job can be queued for deferred execution if the concurrency limit is reached and
            there are no slots available to immediately run the job.</p>")
    @as("JobExecutionSettings")
    jobExecutionSettings: option<jobExecutionSettings>,
    @ocaml.doc("<p>Choose the custom language model you use for your transcription job in this 
            parameter.</p>")
    @as("ModelSettings")
    modelSettings: option<modelSettings>,
    @ocaml.doc("<p>A <code>Settings</code> object that provides optional settings for a transcription 
            job.</p>")
    @as("Settings")
    settings: option<settings>,
    @ocaml.doc("<p>A map of plain text, non-secret key:value pairs, known as encryption context pairs, that 
           provide an added layer of security for your data.</p>")
    @as("KMSEncryptionContext")
    kmsencryptionContext: option<kmsencryptionContextMap>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Web Services Key Management 
            Service (KMS) key used to encrypt the output of the transcription job. The user calling the
            <code>StartTranscriptionJob</code> operation must have permission to use the specified
            KMS key.</p>
        <p>You can use either of the following to identify a KMS key in the current account:</p>
        <ul>
            <li>
                <p>KMS Key ID: \"1234abcd-12ab-34cd-56ef-1234567890ab\"</p>
            </li>
            <li>
                <p>KMS Key Alias: \"alias/ExampleAlias\"</p>
            </li>
         </ul>
        <p>You can use either of the following to identify a KMS key in the current account or 
            another account:</p>
        <ul>
            <li>
                <p>Amazon Resource Name (ARN) of a KMS Key: \"arn:aws:kms:region:account
                    ID:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</p>
            </li>
            <li>
                <p>ARN of a KMS Key Alias: \"arn:aws:kms:region:account-ID:alias/ExampleAlias\"</p>
            </li>
         </ul>
        <p>If you don't specify an encryption key, the output of the transcription job is encrypted 
            with the default Amazon S3 key (SSE-S3).</p>
        <p>If you specify a KMS key to encrypt your output, you must also specify an output location
            in the <code>OutputBucketName</code> parameter.</p>")
    @as("OutputEncryptionKMSKeyId")
    outputEncryptionKMSKeyId: option<kmskeyId>,
    @ocaml.doc("<p>You can specify a location in an Amazon S3 bucket to store the output of your transcription
            job.</p>
        <p>If you don't specify an output key, Amazon Transcribe stores the output of your transcription job in 
            the Amazon S3 bucket you specified. By default, the object key is
            \"your-transcription-job-name.json\".</p>
        <p>You can use output keys to specify the Amazon S3 prefix and file name of the transcription 
            output. For example, specifying the Amazon S3 prefix, \"folder1/folder2/\", as an output key would 
            lead to the output being stored as \"folder1/folder2/your-transcription-job-name.json\". If you 
            specify \"my-other-job-name.json\" as the output key, the object key is changed to
            \"my-other-job-name.json\". You can use an output key to change both the prefix and the file 
            name, for example \"folder/my-other-job-name.json\".</p>
        <p>If you specify an output key, you must also specify an S3 bucket in the
            <code>OutputBucketName</code> parameter.</p>")
    @as("OutputKey")
    outputKey: option<outputKey>,
    @ocaml.doc("<p>The location where the transcription is stored.</p>
        <p>If you set the <code>OutputBucketName</code>, Amazon Transcribe puts the transcript in the 
            specified S3 bucket. When you call the <a>GetTranscriptionJob</a> operation, the
            operation returns this location in the <code>TranscriptFileUri</code> field. If you enable 
            content redaction, the redacted transcript appears in
            <code>RedactedTranscriptFileUri</code>. If you enable content redaction and choose to 
            output an unredacted transcript, that transcript's location still appears in the
            <code>TranscriptFileUri</code>. The S3 bucket must have permissions that allow Amazon Transcribe to 
            put files in the bucket. For more information, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user\">Permissions
                Required for IAM User Roles</a>.</p>
        <p>You can specify an Amazon Web Services Key Management Service (KMS) key to encrypt 
            the output of your transcription using the <code>OutputEncryptionKMSKeyId</code> 
            parameter. If you don't specify a KMS key, Amazon Transcribe uses the default Amazon S3 key for 
            server-side encryption of transcripts that are placed in your S3 bucket.</p>
        <p>If you don't set the <code>OutputBucketName</code>, Amazon Transcribe generates a pre-signed URL,
            a shareable URL that provides secure access to your transcription, and returns it in the
            <code>TranscriptFileUri</code> field. Use this URL to download the transcription.</p>")
    @as("OutputBucketName")
    outputBucketName: option<outputBucketName>,
    @ocaml.doc("<p>An object that describes the input media for a transcription job.</p>")
    @as("Media")
    media: media,
    @ocaml.doc("<p>The format of the input media file.</p>") @as("MediaFormat")
    mediaFormat: option<mediaFormat>,
    @ocaml.doc("<p>The sample rate, in Hertz, of the audio track in the input media file. </p>
        <p>If you do not specify the media sample rate, Amazon Transcribe determines the sample rate. If you 
            specify the sample rate, it must match the sample rate detected by Amazon Transcribe. In most cases,
            you should leave the <code>MediaSampleRateHertz</code> field blank and let Amazon Transcribe 
            determine the sample rate.</p>")
    @as("MediaSampleRateHertz")
    mediaSampleRateHertz: option<mediaSampleRateHertz>,
    @ocaml.doc("<p>The language code for the language used in the input media file. You must include 
            either <code>LanguageCode</code> or <code>IdentifyLanguage</code> in your 
            request.</p>
        <p>To transcribe speech in Modern Standard Arabic (ar-SA), your audio or video file must 
            be encoded at a sample rate of 16,000 Hz or higher.</p>")
    @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>The name of the job. You can't use the strings \"<code>.</code>\" or \"<code>..</code>\"
            by themselves as the job name. The name must also be unique within an Amazon Web Services
            account. If you try to create a transcription job with the same name as a previous 
            transcription job, you get a <code>ConflictException</code> error.</p>")
    @as("TranscriptionJobName")
    transcriptionJobName: transcriptionJobName,
  }
  type response = {
    @ocaml.doc("<p>Provides information about your asynchronous transcription job.</p>")
    @as("TranscriptionJob")
    transcriptionJob: option<transcriptionJob>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "StartTranscriptionJobCommand"
  let make = (
    ~media,
    ~transcriptionJobName,
    ~languageIdSettings=?,
    ~tags=?,
    ~subtitles=?,
    ~languageOptions=?,
    ~identifyLanguage=?,
    ~contentRedaction=?,
    ~jobExecutionSettings=?,
    ~modelSettings=?,
    ~settings=?,
    ~kmsencryptionContext=?,
    ~outputEncryptionKMSKeyId=?,
    ~outputKey=?,
    ~outputBucketName=?,
    ~mediaFormat=?,
    ~mediaSampleRateHertz=?,
    ~languageCode=?,
    (),
  ) =>
    new({
      languageIdSettings: languageIdSettings,
      tags: tags,
      subtitles: subtitles,
      languageOptions: languageOptions,
      identifyLanguage: identifyLanguage,
      contentRedaction: contentRedaction,
      jobExecutionSettings: jobExecutionSettings,
      modelSettings: modelSettings,
      settings: settings,
      kmsencryptionContext: kmsencryptionContext,
      outputEncryptionKMSKeyId: outputEncryptionKMSKeyId,
      outputKey: outputKey,
      outputBucketName: outputBucketName,
      media: media,
      mediaFormat: mediaFormat,
      mediaSampleRateHertz: mediaSampleRateHertz,
      languageCode: languageCode,
      transcriptionJobName: transcriptionJobName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartMedicalTranscriptionJob = {
  type t
  type request = {
    @ocaml.doc("<p>Add tags to an Amazon Transcribe Medical transcription job.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The type of speech in the input audio. <code>CONVERSATION</code> refers to 
            conversations between two or more speakers, e.g., a conversations between doctors and 
            patients. <code>DICTATION</code> refers to single-speaker dictated speech, such as clinical
            notes.</p>")
    @as("Type")
    type_: type_,
    @ocaml.doc("<p>The medical specialty of any clinician speaking in the input media.</p>")
    @as("Specialty")
    specialty: specialty,
    @ocaml.doc("<p>You can configure Amazon Transcribe Medical to label content in the transcription output. If you specify
            <code>PHI</code>, Amazon Transcribe Medical labels the personal health information (PHI) that it identifies in the
            transcription output.</p>")
    @as("ContentIdentificationType")
    contentIdentificationType: option<medicalContentIdentificationType>,
    @ocaml.doc("<p>Optional settings for the medical transcription job.</p>") @as("Settings")
    settings: option<medicalTranscriptionSetting>,
    @ocaml.doc("<p>A map of plain text, non-secret key:value pairs, known as encryption context pairs, that 
            provide an added layer of security for your data.</p>")
    @as("KMSEncryptionContext")
    kmsencryptionContext: option<kmsencryptionContextMap>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Web Services Key Management Service
            (KMS) key used to encrypt the output of the transcription job. The user calling the 
            <a>StartMedicalTranscriptionJob</a> operation must have permission to use the 
            specified KMS key.</p>
        <p>You use either of the following to identify a KMS key in the current account:</p>
        <ul>
            <li>
                <p>KMS Key ID: \"1234abcd-12ab-34cd-56ef-1234567890ab\"</p>
            </li>
            <li>
                <p>KMS Key Alias: \"alias/ExampleAlias\"</p>
            </li>
         </ul>
        <p>You can use either of the following to identify a KMS key in the current account or 
            another account:</p>
        <ul>
            <li>
                <p>Amazon Resource Name (ARN) of a KMS key in the current account or another
                    account: \"arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</p>
            </li>
            <li>
                <p>ARN of a KMS Key Alias: \"arn:aws:kms:region:account ID:alias/ExampleAlias\"</p>
            </li>
         </ul>
        <p>If you don't specify an encryption key, the output of the medical transcription job is 
            encrypted with the default Amazon S3 key (SSE-S3).</p>
        <p>If you specify a KMS key to encrypt your output, you must also specify an output location 
            in the <code>OutputBucketName</code> parameter.</p>")
    @as("OutputEncryptionKMSKeyId")
    outputEncryptionKMSKeyId: option<kmskeyId>,
    @ocaml.doc("<p>You can specify a location in an Amazon S3 bucket to store the output of your medical 
            transcription job.</p>
        <p>If you don't specify an output key, Amazon Transcribe Medical stores the output of your transcription job in
            the Amazon S3 bucket you specified. By default, the object key is 
            \"your-transcription-job-name.json\".</p>
        <p>You can use output keys to specify the Amazon S3 prefix and file name of the transcription 
            output. For example, specifying the Amazon S3 prefix, \"folder1/folder2/\", as an output key would 
            lead to the output being stored as \"folder1/folder2/your-transcription-job-name.json\". If you 
            specify \"my-other-job-name.json\" as the output key, the object key is changed to
            \"my-other-job-name.json\". You can use an output key to change both the prefix and the file
            name, for example \"folder/my-other-job-name.json\".</p>
        <p>If you specify an output key, you must also specify an S3 bucket in the
            <code>OutputBucketName</code> parameter.</p>")
    @as("OutputKey")
    outputKey: option<outputKey>,
    @ocaml.doc("<p>The Amazon S3 location where the transcription is stored.</p>
        <p>You must set <code>OutputBucketName</code> for Amazon Transcribe Medical to store the transcription 
            results. Your transcript appears in the S3 location you specify. When you call the 
            <a>GetMedicalTranscriptionJob</a>, the operation returns this location in the
            <code>TranscriptFileUri</code> field. The S3 bucket must have permissions that allow
            Amazon Transcribe Medical to put files in the bucket. For more information, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user\">Permissions Required for IAM User Roles</a>.</p>
        <p>You can specify an Amazon Web Services Key Management Service (KMS) key to encrypt
            the output of your transcription using the <code>OutputEncryptionKMSKeyId</code> parameter. 
            If you don't specify a KMS key, Amazon Transcribe Medical uses the default Amazon S3 key for server-side 
            encryption of transcripts that are placed in your S3 bucket.</p>")
    @as("OutputBucketName")
    outputBucketName: outputBucketName,
    @as("Media") media: media,
    @ocaml.doc("<p>The audio format of the input media file.</p>") @as("MediaFormat")
    mediaFormat: option<mediaFormat>,
    @ocaml.doc("<p>The sample rate, in Hertz, of the audio track in the input media file.</p>
        <p>If you do not specify the media sample rate, Amazon Transcribe Medical determines the sample rate. If you 
            specify the sample rate, it must match the rate detected by Amazon Transcribe Medical. In most cases, you
            should leave the <code>MediaSampleRateHertz</code> field blank and let Amazon Transcribe Medical determine
            the sample rate.</p>")
    @as("MediaSampleRateHertz")
    mediaSampleRateHertz: option<medicalMediaSampleRateHertz>,
    @ocaml.doc("<p>The language code for the language spoken in the input media file. US English (en-US) is 
            the valid value for medical transcription jobs. Any other value you enter for language code 
            results in a <code>BadRequestException</code> error.</p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>The name of the medical transcription job. You can't use the strings \"<code>.</code>\" 
            or \"<code>..</code>\" by themselves as the job name. The name must also be unique within an
            Amazon Web Services account. If you try to create a medical transcription job with the same
            name as a previous medical transcription job, you get a <code>ConflictException</code> 
            error.</p>")
    @as("MedicalTranscriptionJobName")
    medicalTranscriptionJobName: transcriptionJobName,
  }
  type response = {
    @ocaml.doc("<p>A batch job submitted to transcribe medical speech to text.</p>")
    @as("MedicalTranscriptionJob")
    medicalTranscriptionJob: option<medicalTranscriptionJob>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "StartMedicalTranscriptionJobCommand"
  let make = (
    ~type_,
    ~specialty,
    ~outputBucketName,
    ~media,
    ~languageCode,
    ~medicalTranscriptionJobName,
    ~tags=?,
    ~contentIdentificationType=?,
    ~settings=?,
    ~kmsencryptionContext=?,
    ~outputEncryptionKMSKeyId=?,
    ~outputKey=?,
    ~mediaFormat=?,
    ~mediaSampleRateHertz=?,
    (),
  ) =>
    new({
      tags: tags,
      type_: type_,
      specialty: specialty,
      contentIdentificationType: contentIdentificationType,
      settings: settings,
      kmsencryptionContext: kmsencryptionContext,
      outputEncryptionKMSKeyId: outputEncryptionKMSKeyId,
      outputKey: outputKey,
      outputBucketName: outputBucketName,
      media: media,
      mediaFormat: mediaFormat,
      mediaSampleRateHertz: mediaSampleRateHertz,
      languageCode: languageCode,
      medicalTranscriptionJobName: medicalTranscriptionJobName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLanguageModels = {
  type t
  type request = {
    @ocaml.doc("<p> The maximum number of language models to return in each page of results. If there are
            fewer results than the value you specify, only the actual results are returned. If you do not 
            specify a value, the default of 5 is used.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>When included, fetches the next set of jobs if the result of the previous request was
            truncated.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>When specified, the custom language model names returned contain the substring you've
            specified.</p>")
    @as("NameContains")
    nameContains: option<modelName>,
    @ocaml.doc("<p>When specified, returns only custom language models with the specified status. Language
            models are ordered by creation date, with the newest models first. If you don't specify a 
            status, Amazon Transcribe returns all custom language models ordered by date.</p>")
    @as("StatusEquals")
    statusEquals: option<modelStatus>,
  }
  type response = {
    @ocaml.doc("<p>A list of objects containing information about custom language models.</p>")
    @as("Models")
    models: option<models>,
    @ocaml.doc("<p>The  operation returns a page of jobs at a 
            time. The maximum size of the list is set by the MaxResults parameter. If there are more 
            language models in the list than the page size, Amazon Transcribe returns the <code>NextPage</code> 
            token. Include the token in the next request to the 
             operation to return the next page of language 
            models.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "ListLanguageModelsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~nameContains=?, ~statusEquals=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      nameContains: nameContains,
      statusEquals: statusEquals,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTranscriptionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the job.</p>") @as("TranscriptionJobName")
    transcriptionJobName: transcriptionJobName,
  }
  type response = {
    @ocaml.doc("<p>An object that contains the results of the transcription job.</p>")
    @as("TranscriptionJob")
    transcriptionJob: option<transcriptionJob>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "GetTranscriptionJobCommand"
  let make = (~transcriptionJobName, ()) => new({transcriptionJobName: transcriptionJobName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMedicalTranscriptionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the medical transcription job you want information about. This value is case
            sensitive.</p>")
    @as("MedicalTranscriptionJobName")
    medicalTranscriptionJobName: transcriptionJobName,
  }
  type response = {
    @ocaml.doc("<p>An object that contains detailed information about your medical transcription job.
            Returned fields include: <code>CompletionTime</code>,
            <code>ContentIdentificationType</code>, <code>CreationTime</code>,
            <code>FailureReason</code>, <code>LanguageCode</code>, <code>Media</code>,
            <code>MediaFormat</code>, <code>MediaSampleRateHertz</code>, 
            <code>MedicalTranscriptionJobName</code>, <code>Settings</code>,
            <code>Specialty</code>, <code>StartTime</code>, <code>Tags</code>,
            <code>Transcript</code>, <code>TranscriptionJobStatus</code>, and
            <code>Type</code>.</p>")
    @as("MedicalTranscriptionJob")
    medicalTranscriptionJob: option<medicalTranscriptionJob>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "GetMedicalTranscriptionJobCommand"
  let make = (~medicalTranscriptionJobName, ()) =>
    new({medicalTranscriptionJobName: medicalTranscriptionJobName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartCallAnalyticsJob = {
  type t
  type request = {
    @ocaml.doc("<p>When you start a call analytics job, you must pass an array that maps the agent and the
            customer to specific audio channels. The values you can assign to a channel are 0 and 1. The 
            agent and the customer must each have their own channel. You can't assign more than one 
            channel to an agent or customer. </p>")
    @as("ChannelDefinitions")
    channelDefinitions: option<channelDefinitions>,
    @ocaml.doc("<p>A <code>Settings</code> object that provides optional settings for a call analytics 
            job.</p>")
    @as("Settings")
    settings: option<callAnalyticsJobSettings>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a role that has access to the S3 bucket that
            contains your input files. Amazon Transcribe assumes this role to read queued audio files. If you have 
            specified an output S3 bucket for your transcription results, this role should have access to 
            the output bucket as well.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: dataAccessRoleArn,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Web Services Key Management Service 
            key used to encrypt the output of the call analytics job. The user calling the 
             operation must have permission to use the 
            specified KMS key.</p>
        <p>You use either of the following to identify an Amazon Web Services KMS key in the current
            account:</p>
        <ul>
            <li>
               <p>KMS Key ID: \"1234abcd-12ab-34cd-56ef-1234567890ab\"</p>
            </li>
            <li>
               <p>KMS Key Alias: \"alias/ExampleAlias\"</p>
            </li>
         </ul>
        <p> You can use either of the following to identify a KMS key in the current account or 
            another account:</p>
        <ul>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS key in the current account or 
                another account: 
                \"arn:aws:kms:region:account ID:key/1234abcd-12ab-34cd-56ef1234567890ab\"</p>
            </li>
            <li>
               <p>ARN of a KMS Key Alias:
                \"arn:aws:kms:region:accountID:alias/ExampleAlias\"</p>
            </li>
         </ul>
        <p>If you don't specify an encryption key, the output of the call analytics job is encrypted 
            with the default Amazon S3 key (SSE-S3).</p> 
        <p>If you specify a KMS key to encrypt your output, you must also specify an output location 
            in the <code>OutputLocation</code> parameter. </p>")
    @as("OutputEncryptionKMSKeyId")
    outputEncryptionKMSKeyId: option<kmskeyId>,
    @ocaml.doc("<p>The Amazon S3 location where the output of the call analytics job is stored. You can 
            provide the following location types to store the output of call analytics job:</p>
        <ul>
            <li>
               <p>s3://DOC-EXAMPLE-BUCKET1</p>
                <p> If you specify a bucket, Amazon Transcribe saves the output of the analytics job as a JSON file 
                    at the root level of the bucket.</p>
            </li>
            <li>
               <p>s3://DOC-EXAMPLE-BUCKET1/folder/</p>
                <p>f you specify a path, Amazon Transcribe saves the output of the analytics job as
                    s3://DOC-EXAMPLE-BUCKET1/folder/your-transcription-job-name.json.</p>
                <p>If you specify a folder, you must provide a trailing slash.</p>
            </li>
            <li>
               <p>s3://DOC-EXAMPLE-BUCKET1/folder/filename.json.</p>
                <p> If you provide a path that has the filename specified, Amazon Transcribe saves the output of 
                    the analytics job as s3://DOC-EXAMPLEBUCKET1/folder/filename.json.</p>
            </li>
         </ul> 
        <p>You can specify an Amazon Web Services Key Management Service (KMS) key to encrypt 
            the output of our analytics job using the <code>OutputEncryptionKMSKeyId</code> parameter. 
            If you don't specify a KMS key, Amazon Transcribe uses the default Amazon S3 key for server-side encryption 
            of the analytics job output that is placed in your S3 bucket.</p>")
    @as("OutputLocation")
    outputLocation: option<uri>,
    @as("Media") media: media,
    @ocaml.doc("<p>The name of the call analytics job. You can't use the string \".\" or \"..\" by themselves as
            the job name. The name must also be unique within an Amazon Web Services account. If you 
            try to create a call analytics job with the same name as a previous call analytics job, you get
            a <code>ConflictException</code> error.</p>")
    @as("CallAnalyticsJobName")
    callAnalyticsJobName: callAnalyticsJobName,
  }
  type response = {
    @ocaml.doc("<p>An object containing the details of the asynchronous call analytics job.</p>")
    @as("CallAnalyticsJob")
    callAnalyticsJob: option<callAnalyticsJob>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "StartCallAnalyticsJobCommand"
  let make = (
    ~dataAccessRoleArn,
    ~media,
    ~callAnalyticsJobName,
    ~channelDefinitions=?,
    ~settings=?,
    ~outputEncryptionKMSKeyId=?,
    ~outputLocation=?,
    (),
  ) =>
    new({
      channelDefinitions: channelDefinitions,
      settings: settings,
      dataAccessRoleArn: dataAccessRoleArn,
      outputEncryptionKMSKeyId: outputEncryptionKMSKeyId,
      outputLocation: outputLocation,
      media: media,
      callAnalyticsJobName: callAnalyticsJobName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTranscriptionJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of jobs to return in each page of results. If there are fewer results
            than the value you specify, only the actual results are returned. If you do not specify a value,
            the default of 5 is used.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the result of the previous request to <code>ListTranscriptionJobs</code> is truncated, 
            include the <code>NextToken</code> to fetch the next set of jobs.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>When specified, the jobs returned in the list are limited to jobs whose name contains the
            specified string.</p>")
    @as("JobNameContains")
    jobNameContains: option<transcriptionJobName>,
    @ocaml.doc("<p>When specified, returns only transcription jobs with the specified status. Jobs are ordered
            by creation date, with the newest jobs returned first. If you don’t specify a status, Amazon Transcribe 
            returns all transcription jobs ordered by creation date.</p>")
    @as("Status")
    status: option<transcriptionJobStatus>,
  }
  type response = {
    @ocaml.doc("<p>A list of objects containing summary information for a transcription job.</p>")
    @as("TranscriptionJobSummaries")
    transcriptionJobSummaries: option<transcriptionJobSummaries>,
    @ocaml.doc("<p>The <code>ListTranscriptionJobs</code> operation returns a page of jobs at a time. The
            maximum size of the page is set by the <code>MaxResults</code> parameter. If there are
            more jobs in the list than the page size, Amazon Transcribe returns the <code>NextPage</code> token. 
            Include the token in the next request to the <code>ListTranscriptionJobs</code> operation to 
            return in the next page of jobs.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The requested status of the jobs returned.</p>") @as("Status")
    status: option<transcriptionJobStatus>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "ListTranscriptionJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~jobNameContains=?, ~status=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      jobNameContains: jobNameContains,
      status: status,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCallAnalyticsJob = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the analytics job you want information about. This value is case
            sensitive.</p>")
    @as("CallAnalyticsJobName")
    callAnalyticsJobName: callAnalyticsJobName,
  }
  type response = {
    @ocaml.doc("<p>An object that contains detailed information about your call analytics job. Returned fields
            include: <code>CallAnalyticsJobName</code>, <code>CallAnalyticsJobStatus</code>,
            <code>ChannelDefinitions</code>, <code>CompletionTime</code>,
            <code>CreationTime</code>, <code>DataAccessRoleArn</code>,
            <code>FailureReason</code>, <code>IdentifiedLanguageScore</code>, 
            <code>LanguageCode</code>, <code>Media</code>, <code>MediaFormat</code>,
            <code>MediaSampleRateHertz</code>, <code>Settings</code>, <code>StartTime</code>,
            and <code>Transcript</code>.</p>")
    @as("CallAnalyticsJob")
    callAnalyticsJob: option<callAnalyticsJob>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "GetCallAnalyticsJobCommand"
  let make = (~callAnalyticsJobName, ()) => new({callAnalyticsJobName: callAnalyticsJobName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCallAnalyticsCategory = {
  type t
  type request = {
    @ocaml.doc("<p>The rules used for the updated analytics category. The rules that you provide in this 
            field replace the ones that are currently being used.</p>")
    @as("Rules")
    rules: ruleList,
    @ocaml.doc("<p>The name of the analytics category to update. The name is case sensitive. If you try
            to update a call analytics category with the same name as a previous category you will 
            receive a <code>ConflictException</code> error.</p>")
    @as("CategoryName")
    categoryName: categoryName,
  }
  type response = {
    @ocaml.doc("<p>The attributes describing the analytics category. You can see information such as the 
            rules that you've used to update the category and when the category was originally 
            created.</p>")
    @as("CategoryProperties")
    categoryProperties: option<categoryProperties>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "UpdateCallAnalyticsCategoryCommand"
  let make = (~rules, ~categoryName, ()) => new({rules: rules, categoryName: categoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCallAnalyticsCategory = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the category you want information about. Category names are case
            sensitive.</p>")
    @as("CategoryName")
    categoryName: categoryName,
  }
  type response = {
    @ocaml.doc("<p>Provides you with the rules associated with the category you specified in your
            <code>GetCallAnalyticsCategory</code> request.</p>")
    @as("CategoryProperties")
    categoryProperties: option<categoryProperties>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "GetCallAnalyticsCategoryCommand"
  let make = (~categoryName, ()) => new({categoryName: categoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCallAnalyticsCategory = {
  type t
  type request = {
    @ocaml.doc("<p>Rules make up a call analytics category. When creating a call analytics category,
            you must create between 1 and 20 rules for your category. For each rule, you 
            specify a filter you want applied to the attributes of a call. For example, you can choose
            a sentiment filter that detects if a customer's sentiment was positive during the last
            30 seconds of the call.</p>")
    @as("Rules")
    rules: ruleList,
    @ocaml.doc("<p>A unique name, chosen by you, for your call analytics category. For example, 
        <code>sentiment-positive-last30seconds</code>.</p>")
    @as("CategoryName")
    categoryName: categoryName,
  }
  type response = {
    @ocaml.doc("<p>If your audio matches one of your categories, this field contains data on that 
            category and its associated rules. This parameter shows which category is flagged
            (<code>CategoryName</code>) along with metadata for the rules that match your 
            audio. Metadata includes the rule filter (such as <code>InterruptionFilter</code>,
            <code>NonTalkTimeFilter</code>, <code>SentimentFilter</code>, and 
            <code>TranscriptFilter</code>) and where in your audio (<code>StartTime</code>
            and <code>EndTime</code>) the rule has a match.</p>")
    @as("CategoryProperties")
    categoryProperties: option<categoryProperties>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "CreateCallAnalyticsCategoryCommand"
  let make = (~rules, ~categoryName, ()) => new({rules: rules, categoryName: categoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCallAnalyticsCategories = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of categories to return in each page of results. If there are fewer 
            results than the value you specify, only the actual results are returned. If you do not specify a
            value, the default of 5 is used.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>When included, <code>NextToken</code>fetches the next set of categories if the result 
            of the previous request was truncated.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A list of objects containing information about analytics categories.</p>")
    @as("Categories")
    categories: option<categoryPropertiesList>,
    @ocaml.doc("<p>The  operation returns a page of jobs at
            a time. The maximum size of the list is set by the <code>MaxResults</code> parameter. If 
            there are more categories in the list than the page size, Amazon Transcribe returns the 
            <code>NextPage</code> token. Include the token in the next request to the 
             operation to return the next page of analytics
            categories.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-transcribe") @new
  external new: request => t = "ListCallAnalyticsCategoriesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
