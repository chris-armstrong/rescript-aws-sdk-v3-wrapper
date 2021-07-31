type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-transcribe") @new external createClient: unit => awsServiceClient = "TranscribeClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type word = string
type vocabularyState = [@as("FAILED") #FAILED | @as("READY") #READY | @as("PENDING") #PENDING]
type vocabularyName = string
type vocabularyFilterName = string
type vocabularyFilterMethod = [@as("tag") #Tag | @as("mask") #Mask | @as("remove") #Remove]
type uri = string
type type_ = [@as("DICTATION") #DICTATION | @as("CONVERSATION") #CONVERSATION]
type transcriptionJobStatus = [@as("COMPLETED") #COMPLETED | @as("FAILED") #FAILED | @as("IN_PROGRESS") #IN_PROGRESS | @as("QUEUED") #QUEUED]
type transcriptionJobName = string
type string_ = string
type specialty = [@as("PRIMARYCARE") #PRIMARYCARE]
type redactionType = [@as("PII") #PII]
type redactionOutput = [@as("redacted_and_unredacted") #Redacted_And_Unredacted | @as("redacted") #Redacted]
type phrase = string
type outputLocationType = [@as("SERVICE_BUCKET") #SERVICE_BUCKET | @as("CUSTOMER_BUCKET") #CUSTOMER_BUCKET]
type outputKey = string
type outputBucketName = string
type nextToken = string
type modelStatus = [@as("COMPLETED") #COMPLETED | @as("FAILED") #FAILED | @as("IN_PROGRESS") #IN_PROGRESS]
type modelName = string
type medicalContentIdentificationType = [@as("PHI") #PHI]
type mediaSampleRateHertz = int
type mediaFormat = [@as("webm") #Webm | @as("amr") #Amr | @as("ogg") #Ogg | @as("flac") #Flac | @as("wav") #Wav | @as("mp4") #Mp4 | @as("mp3") #Mp3]
type maxSpeakers = int
type maxResults = int
type maxAlternatives = int
type languageCode = [@as("zh-CN") #Zh_CN | @as("tr-TR") #Tr_TR | @as("te-IN") #Te_IN | @as("ta-IN") #Ta_IN | @as("ru-RU") #Ru_RU | @as("pt-PT") #Pt_PT | @as("pt-BR") #Pt_BR | @as("nl-NL") #Nl_NL | @as("ms-MY") #Ms_MY | @as("ko-KR") #Ko_KR | @as("ja-JP") #Ja_JP | @as("it-IT") #It_IT | @as("id-ID") #Id_ID | @as("hi-IN") #Hi_IN | @as("he-IL") #He_IL | @as("gd-GB") #Gd_GB | @as("ga-IE") #Ga_IE | @as("fr-FR") #Fr_FR | @as("fr-CA") #Fr_CA | @as("fa-IR") #Fa_IR | @as("es-US") #Es_US | @as("es-ES") #Es_ES | @as("en-WL") #En_WL | @as("en-US") #En_US | @as("en-IN") #En_IN | @as("en-IE") #En_IE | @as("en-GB") #En_GB | @as("en-AU") #En_AU | @as("en-AB") #En_AB | @as("de-DE") #De_DE | @as("de-CH") #De_CH | @as("da-DK") #Da_DK | @as("cy-GB") #Cy_GB | @as("ar-SA") #Ar_SA | @as("ar-AE") #Ar_AE | @as("af-ZA") #Af_ZA]
type kmskeyId = string
type identifiedLanguageScore = float
type failureReason = string
type dateTime = Js.Date.t;
type dataAccessRoleArn = string
type clmlanguageCode = [@as("en-AU") #En_AU | @as("en-GB") #En_GB | @as("es-US") #Es_US | @as("hi-IN") #Hi_IN | @as("en-US") #En_US]
type boolean_ = bool
type baseModelName = [@as("WideBand") #WideBand | @as("NarrowBand") #NarrowBand]
type words = array<word>
type vocabularyInfo = {
@as("VocabularyState") vocabularyState: option<vocabularyState>,
  @as("LastModifiedTime") lastModifiedTime: option<dateTime>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("VocabularyName") vocabularyName: option<vocabularyName>
}
type vocabularyFilterInfo = {
@as("LastModifiedTime") lastModifiedTime: option<dateTime>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("VocabularyFilterName") vocabularyFilterName: option<vocabularyFilterName>
}
type transcript = {
@as("RedactedTranscriptFileUri") redactedTranscriptFileUri: option<uri>,
  @as("TranscriptFileUri") transcriptFileUri: option<uri>
}
type settings = {
@as("VocabularyFilterMethod") vocabularyFilterMethod: option<vocabularyFilterMethod>,
  @as("VocabularyFilterName") vocabularyFilterName: option<vocabularyFilterName>,
  @as("MaxAlternatives") maxAlternatives: option<maxAlternatives>,
  @as("ShowAlternatives") showAlternatives: option<boolean_>,
  @as("ChannelIdentification") channelIdentification: option<boolean_>,
  @as("MaxSpeakerLabels") maxSpeakerLabels: option<maxSpeakers>,
  @as("ShowSpeakerLabels") showSpeakerLabels: option<boolean_>,
  @as("VocabularyName") vocabularyName: option<vocabularyName>
}
type phrases = array<phrase>
type modelSettings = {
@as("LanguageModelName") languageModelName: option<modelName>
}
type medicalTranscriptionSetting = {
@as("VocabularyName") vocabularyName: option<vocabularyName>,
  @as("MaxAlternatives") maxAlternatives: option<maxAlternatives>,
  @as("ShowAlternatives") showAlternatives: option<boolean_>,
  @as("ChannelIdentification") channelIdentification: option<boolean_>,
  @as("MaxSpeakerLabels") maxSpeakerLabels: option<maxSpeakers>,
  @as("ShowSpeakerLabels") showSpeakerLabels: option<boolean_>
}
type medicalTranscriptionJobSummary = {
@as("Type") type_: option<type_>,
  @as("ContentIdentificationType") contentIdentificationType: option<medicalContentIdentificationType>,
  @as("Specialty") specialty: option<specialty>,
  @as("OutputLocationType") outputLocationType: option<outputLocationType>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("TranscriptionJobStatus") transcriptionJobStatus: option<transcriptionJobStatus>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("CompletionTime") completionTime: option<dateTime>,
  @as("StartTime") startTime: option<dateTime>,
  @as("CreationTime") creationTime: option<dateTime>,
  @as("MedicalTranscriptionJobName") medicalTranscriptionJobName: option<transcriptionJobName>
}
type medicalTranscript = {
@as("TranscriptFileUri") transcriptFileUri: option<uri>
}
type media = {
@as("MediaFileUri") mediaFileUri: option<uri>
}
type languageOptions = array<languageCode>
type jobExecutionSettings = {
@as("DataAccessRoleArn") dataAccessRoleArn: option<dataAccessRoleArn>,
  @as("AllowDeferredExecution") allowDeferredExecution: option<boolean_>
}
type inputDataConfig = {
@as("DataAccessRoleArn") dataAccessRoleArn: dataAccessRoleArn,
  @as("TuningDataS3Uri") tuningDataS3Uri: option<uri>,
  @as("S3Uri") s3Uri: uri
}
type contentRedaction = {
@as("RedactionOutput") redactionOutput: redactionOutput,
  @as("RedactionType") redactionType: redactionType
}
type vocabularyFilters = array<vocabularyFilterInfo>
type vocabularies = array<vocabularyInfo>
type transcriptionJobSummary = {
@as("IdentifiedLanguageScore") identifiedLanguageScore: option<identifiedLanguageScore>,
  @as("IdentifyLanguage") identifyLanguage: option<boolean_>,
  @as("ModelSettings") modelSettings: option<modelSettings>,
  @as("ContentRedaction") contentRedaction: option<contentRedaction>,
  @as("OutputLocationType") outputLocationType: option<outputLocationType>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("TranscriptionJobStatus") transcriptionJobStatus: option<transcriptionJobStatus>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("CompletionTime") completionTime: option<dateTime>,
  @as("StartTime") startTime: option<dateTime>,
  @as("CreationTime") creationTime: option<dateTime>,
  @as("TranscriptionJobName") transcriptionJobName: option<transcriptionJobName>
}
type transcriptionJob = {
@as("IdentifiedLanguageScore") identifiedLanguageScore: option<identifiedLanguageScore>,
  @as("LanguageOptions") languageOptions: option<languageOptions>,
  @as("IdentifyLanguage") identifyLanguage: option<boolean_>,
  @as("ContentRedaction") contentRedaction: option<contentRedaction>,
  @as("JobExecutionSettings") jobExecutionSettings: option<jobExecutionSettings>,
  @as("ModelSettings") modelSettings: option<modelSettings>,
  @as("Settings") settings: option<settings>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("CompletionTime") completionTime: option<dateTime>,
  @as("CreationTime") creationTime: option<dateTime>,
  @as("StartTime") startTime: option<dateTime>,
  @as("Transcript") transcript: option<transcript>,
  @as("Media") media: option<media>,
  @as("MediaFormat") mediaFormat: option<mediaFormat>,
  @as("MediaSampleRateHertz") mediaSampleRateHertz: option<mediaSampleRateHertz>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("TranscriptionJobStatus") transcriptionJobStatus: option<transcriptionJobStatus>,
  @as("TranscriptionJobName") transcriptionJobName: option<transcriptionJobName>
}
type medicalTranscriptionJobSummaries = array<medicalTranscriptionJobSummary>
type medicalTranscriptionJob = {
@as("Type") type_: option<type_>,
  @as("Specialty") specialty: option<specialty>,
  @as("ContentIdentificationType") contentIdentificationType: option<medicalContentIdentificationType>,
  @as("Settings") settings: option<medicalTranscriptionSetting>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("CompletionTime") completionTime: option<dateTime>,
  @as("CreationTime") creationTime: option<dateTime>,
  @as("StartTime") startTime: option<dateTime>,
  @as("Transcript") transcript: option<medicalTranscript>,
  @as("Media") media: option<media>,
  @as("MediaFormat") mediaFormat: option<mediaFormat>,
  @as("MediaSampleRateHertz") mediaSampleRateHertz: option<mediaSampleRateHertz>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("TranscriptionJobStatus") transcriptionJobStatus: option<transcriptionJobStatus>,
  @as("MedicalTranscriptionJobName") medicalTranscriptionJobName: option<transcriptionJobName>
}
type languageModel = {
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("UpgradeAvailability") upgradeAvailability: option<boolean_>,
  @as("ModelStatus") modelStatus: option<modelStatus>,
  @as("BaseModelName") baseModelName: option<baseModelName>,
  @as("LanguageCode") languageCode: option<clmlanguageCode>,
  @as("LastModifiedTime") lastModifiedTime: option<dateTime>,
  @as("CreateTime") createTime: option<dateTime>,
  @as("ModelName") modelName: option<modelName>
}
type transcriptionJobSummaries = array<transcriptionJobSummary>
type models = array<languageModel>

module UpdateMedicalVocabulary = {
  type t;
  type request = {
@as("VocabularyFileUri") vocabularyFileUri: option<uri>,
  @as("LanguageCode") languageCode: languageCode,
  @as("VocabularyName") vocabularyName: vocabularyName
}
  type response = {
@as("VocabularyState") vocabularyState: option<vocabularyState>,
  @as("LastModifiedTime") lastModifiedTime: option<dateTime>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("VocabularyName") vocabularyName: option<vocabularyName>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "UpdateMedicalVocabularyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetVocabularyFilter = {
  type t;
  type request = {
@as("VocabularyFilterName") vocabularyFilterName: vocabularyFilterName
}
  type response = {
@as("DownloadUri") downloadUri: option<uri>,
  @as("LastModifiedTime") lastModifiedTime: option<dateTime>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("VocabularyFilterName") vocabularyFilterName: option<vocabularyFilterName>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "GetVocabularyFilterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetVocabulary = {
  type t;
  type request = {
@as("VocabularyName") vocabularyName: vocabularyName
}
  type response = {
@as("DownloadUri") downloadUri: option<uri>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("LastModifiedTime") lastModifiedTime: option<dateTime>,
  @as("VocabularyState") vocabularyState: option<vocabularyState>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("VocabularyName") vocabularyName: option<vocabularyName>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "GetVocabularyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetMedicalVocabulary = {
  type t;
  type request = {
@as("VocabularyName") vocabularyName: vocabularyName
}
  type response = {
@as("DownloadUri") downloadUri: option<uri>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("LastModifiedTime") lastModifiedTime: option<dateTime>,
  @as("VocabularyState") vocabularyState: option<vocabularyState>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("VocabularyName") vocabularyName: option<vocabularyName>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "GetMedicalVocabularyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteVocabularyFilter = {
  type t;
  type request = {
@as("VocabularyFilterName") vocabularyFilterName: vocabularyFilterName
}
  
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "DeleteVocabularyFilterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteVocabulary = {
  type t;
  type request = {
@as("VocabularyName") vocabularyName: vocabularyName
}
  
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "DeleteVocabularyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteTranscriptionJob = {
  type t;
  type request = {
@as("TranscriptionJobName") transcriptionJobName: transcriptionJobName
}
  
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "DeleteTranscriptionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteMedicalVocabulary = {
  type t;
  type request = {
@as("VocabularyName") vocabularyName: vocabularyName
}
  
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "DeleteMedicalVocabularyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteMedicalTranscriptionJob = {
  type t;
  type request = {
@as("MedicalTranscriptionJobName") medicalTranscriptionJobName: transcriptionJobName
}
  
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "DeleteMedicalTranscriptionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteLanguageModel = {
  type t;
  type request = {
@as("ModelName") modelName: modelName
}
  
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "DeleteLanguageModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CreateMedicalVocabulary = {
  type t;
  type request = {
@as("VocabularyFileUri") vocabularyFileUri: uri,
  @as("LanguageCode") languageCode: languageCode,
  @as("VocabularyName") vocabularyName: vocabularyName
}
  type response = {
@as("FailureReason") failureReason: option<failureReason>,
  @as("LastModifiedTime") lastModifiedTime: option<dateTime>,
  @as("VocabularyState") vocabularyState: option<vocabularyState>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("VocabularyName") vocabularyName: option<vocabularyName>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "CreateMedicalVocabularyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateVocabularyFilter = {
  type t;
  type request = {
@as("VocabularyFilterFileUri") vocabularyFilterFileUri: option<uri>,
  @as("Words") words: option<words>,
  @as("VocabularyFilterName") vocabularyFilterName: vocabularyFilterName
}
  type response = {
@as("LastModifiedTime") lastModifiedTime: option<dateTime>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("VocabularyFilterName") vocabularyFilterName: option<vocabularyFilterName>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "UpdateVocabularyFilterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateVocabulary = {
  type t;
  type request = {
@as("VocabularyFileUri") vocabularyFileUri: option<uri>,
  @as("Phrases") phrases: option<phrases>,
  @as("LanguageCode") languageCode: languageCode,
  @as("VocabularyName") vocabularyName: vocabularyName
}
  type response = {
@as("VocabularyState") vocabularyState: option<vocabularyState>,
  @as("LastModifiedTime") lastModifiedTime: option<dateTime>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("VocabularyName") vocabularyName: option<vocabularyName>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "UpdateVocabularyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateVocabularyFilter = {
  type t;
  type request = {
@as("VocabularyFilterFileUri") vocabularyFilterFileUri: option<uri>,
  @as("Words") words: option<words>,
  @as("LanguageCode") languageCode: languageCode,
  @as("VocabularyFilterName") vocabularyFilterName: vocabularyFilterName
}
  type response = {
@as("LastModifiedTime") lastModifiedTime: option<dateTime>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("VocabularyFilterName") vocabularyFilterName: option<vocabularyFilterName>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "CreateVocabularyFilterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateVocabulary = {
  type t;
  type request = {
@as("VocabularyFileUri") vocabularyFileUri: option<uri>,
  @as("Phrases") phrases: option<phrases>,
  @as("LanguageCode") languageCode: languageCode,
  @as("VocabularyName") vocabularyName: vocabularyName
}
  type response = {
@as("FailureReason") failureReason: option<failureReason>,
  @as("LastModifiedTime") lastModifiedTime: option<dateTime>,
  @as("VocabularyState") vocabularyState: option<vocabularyState>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("VocabularyName") vocabularyName: option<vocabularyName>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "CreateVocabularyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLanguageModel = {
  type t;
  type request = {
@as("InputDataConfig") inputDataConfig: inputDataConfig,
  @as("ModelName") modelName: modelName,
  @as("BaseModelName") baseModelName: baseModelName,
  @as("LanguageCode") languageCode: clmlanguageCode
}
  type response = {
@as("ModelStatus") modelStatus: option<modelStatus>,
  @as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
  @as("ModelName") modelName: option<modelName>,
  @as("BaseModelName") baseModelName: option<baseModelName>,
  @as("LanguageCode") languageCode: option<clmlanguageCode>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "CreateLanguageModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartTranscriptionJob = {
  type t;
  type request = {
@as("LanguageOptions") languageOptions: option<languageOptions>,
  @as("IdentifyLanguage") identifyLanguage: option<boolean_>,
  @as("ContentRedaction") contentRedaction: option<contentRedaction>,
  @as("JobExecutionSettings") jobExecutionSettings: option<jobExecutionSettings>,
  @as("ModelSettings") modelSettings: option<modelSettings>,
  @as("Settings") settings: option<settings>,
  @as("OutputEncryptionKMSKeyId") outputEncryptionKMSKeyId: option<kmskeyId>,
  @as("OutputKey") outputKey: option<outputKey>,
  @as("OutputBucketName") outputBucketName: option<outputBucketName>,
  @as("Media") media: media,
  @as("MediaFormat") mediaFormat: option<mediaFormat>,
  @as("MediaSampleRateHertz") mediaSampleRateHertz: option<mediaSampleRateHertz>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("TranscriptionJobName") transcriptionJobName: transcriptionJobName
}
  type response = {
@as("TranscriptionJob") transcriptionJob: option<transcriptionJob>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "StartTranscriptionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartMedicalTranscriptionJob = {
  type t;
  type request = {
@as("Type") type_: type_,
  @as("Specialty") specialty: specialty,
  @as("ContentIdentificationType") contentIdentificationType: option<medicalContentIdentificationType>,
  @as("Settings") settings: option<medicalTranscriptionSetting>,
  @as("OutputEncryptionKMSKeyId") outputEncryptionKMSKeyId: option<kmskeyId>,
  @as("OutputKey") outputKey: option<outputKey>,
  @as("OutputBucketName") outputBucketName: outputBucketName,
  @as("Media") media: media,
  @as("MediaFormat") mediaFormat: option<mediaFormat>,
  @as("MediaSampleRateHertz") mediaSampleRateHertz: option<mediaSampleRateHertz>,
  @as("LanguageCode") languageCode: languageCode,
  @as("MedicalTranscriptionJobName") medicalTranscriptionJobName: transcriptionJobName
}
  type response = {
@as("MedicalTranscriptionJob") medicalTranscriptionJob: option<medicalTranscriptionJob>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "StartMedicalTranscriptionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListVocabularyFilters = {
  type t;
  type request = {
@as("NameContains") nameContains: option<vocabularyFilterName>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("VocabularyFilters") vocabularyFilters: option<vocabularyFilters>,
  @as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "ListVocabularyFiltersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListVocabularies = {
  type t;
  type request = {
@as("NameContains") nameContains: option<vocabularyName>,
  @as("StateEquals") stateEquals: option<vocabularyState>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("Vocabularies") vocabularies: option<vocabularies>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("Status") status: option<vocabularyState>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "ListVocabulariesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListMedicalVocabularies = {
  type t;
  type request = {
@as("NameContains") nameContains: option<vocabularyName>,
  @as("StateEquals") stateEquals: option<vocabularyState>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("Vocabularies") vocabularies: option<vocabularies>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("Status") status: option<vocabularyState>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "ListMedicalVocabulariesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListMedicalTranscriptionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("JobNameContains") jobNameContains: option<transcriptionJobName>,
  @as("Status") status: option<transcriptionJobStatus>
}
  type response = {
@as("MedicalTranscriptionJobSummaries") medicalTranscriptionJobSummaries: option<medicalTranscriptionJobSummaries>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("Status") status: option<transcriptionJobStatus>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "ListMedicalTranscriptionJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTranscriptionJob = {
  type t;
  type request = {
@as("TranscriptionJobName") transcriptionJobName: transcriptionJobName
}
  type response = {
@as("TranscriptionJob") transcriptionJob: option<transcriptionJob>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "GetTranscriptionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetMedicalTranscriptionJob = {
  type t;
  type request = {
@as("MedicalTranscriptionJobName") medicalTranscriptionJobName: transcriptionJobName
}
  type response = {
@as("MedicalTranscriptionJob") medicalTranscriptionJob: option<medicalTranscriptionJob>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "GetMedicalTranscriptionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeLanguageModel = {
  type t;
  type request = {
@as("ModelName") modelName: modelName
}
  type response = {
@as("LanguageModel") languageModel: option<languageModel>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "DescribeLanguageModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTranscriptionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("JobNameContains") jobNameContains: option<transcriptionJobName>,
  @as("Status") status: option<transcriptionJobStatus>
}
  type response = {
@as("TranscriptionJobSummaries") transcriptionJobSummaries: option<transcriptionJobSummaries>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("Status") status: option<transcriptionJobStatus>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "ListTranscriptionJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLanguageModels = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("NameContains") nameContains: option<modelName>,
  @as("StatusEquals") statusEquals: option<modelStatus>
}
  type response = {
@as("Models") models: option<models>,
  @as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "ListLanguageModelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
