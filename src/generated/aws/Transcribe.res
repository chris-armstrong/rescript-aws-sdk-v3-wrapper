type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type word = string
type vocabularyState = [@as("FAILED") #FAILED | @as("READY") #READY | @as("PENDING") #PENDING]
type vocabularyName = string
type vocabularyFilterName = string
type vocabularyFilterMethod = [@as("tag") #tag | @as("mask") #mask | @as("remove") #remove]
type uri = string
type type_ = [@as("DICTATION") #DICTATION | @as("CONVERSATION") #CONVERSATION]
type transcriptionJobStatus = [@as("COMPLETED") #COMPLETED | @as("FAILED") #FAILED | @as("IN_PROGRESS") #IN_PROGRESS | @as("QUEUED") #QUEUED]
type transcriptionJobName = string
type amazonawsString = string
type specialty = [@as("PRIMARYCARE") #PRIMARYCARE]
type redactionType = [@as("PII") #PII]
type redactionOutput = [@as("redacted_and_unredacted") #redacted_and_unredacted | @as("redacted") #redacted]
type phrase = string
type outputLocationType = [@as("SERVICE_BUCKET") #SERVICE_BUCKET | @as("CUSTOMER_BUCKET") #CUSTOMER_BUCKET]
type outputKey = string
type outputBucketName = string
type nextToken = string
type modelStatus = [@as("COMPLETED") #COMPLETED | @as("FAILED") #FAILED | @as("IN_PROGRESS") #IN_PROGRESS]
type modelName = string
type medicalContentIdentificationType = [@as("PHI") #PHI]
type mediaSampleRateHertz = int;
type mediaFormat = [@as("webm") #webm | @as("amr") #amr | @as("ogg") #ogg | @as("flac") #flac | @as("wav") #wav | @as("mp4") #mp4 | @as("mp3") #mp3]
type maxSpeakers = int;
type maxResults = int;
type maxAlternatives = int;
type languageCode = [@as("zh-CN") #zh_CN | @as("tr-TR") #tr_TR | @as("te-IN") #te_IN | @as("ta-IN") #ta_IN | @as("ru-RU") #ru_RU | @as("pt-PT") #pt_PT | @as("pt-BR") #pt_BR | @as("nl-NL") #nl_NL | @as("ms-MY") #ms_MY | @as("ko-KR") #ko_KR | @as("ja-JP") #ja_JP | @as("it-IT") #it_IT | @as("id-ID") #id_ID | @as("hi-IN") #hi_IN | @as("he-IL") #he_IL | @as("gd-GB") #gd_GB | @as("ga-IE") #ga_IE | @as("fr-FR") #fr_FR | @as("fr-CA") #fr_CA | @as("fa-IR") #fa_IR | @as("es-US") #es_US | @as("es-ES") #es_ES | @as("en-WL") #en_WL | @as("en-US") #en_US | @as("en-IN") #en_IN | @as("en-IE") #en_IE | @as("en-GB") #en_GB | @as("en-AU") #en_AU | @as("en-AB") #en_AB | @as("de-DE") #de_DE | @as("de-CH") #de_CH | @as("da-DK") #da_DK | @as("cy-GB") #cy_GB | @as("ar-SA") #ar_SA | @as("ar-AE") #ar_AE | @as("af-ZA") #af_ZA]
type kMSKeyId = string
type identifiedLanguageScore = float;
type failureReason = string
type dateTime = Js.Date.t;
type dataAccessRoleArn = string
type cLMLanguageCode = [@as("en-AU") #en_AU | @as("en-GB") #en_GB | @as("es-US") #es_US | @as("hi-IN") #hi_IN | @as("en-US") #en_US]
type amazonawsBoolean = bool;
type baseModelName = [@as("WideBand") #WideBand | @as("NarrowBand") #NarrowBand]
type words = array<word>
type vocabularyInfo = {
@as("VocabularyState") vocabularyState: vocabularyState,
@as("LastModifiedTime") lastModifiedTime: dateTime,
@as("LanguageCode") languageCode: languageCode,
@as("VocabularyName") vocabularyName: vocabularyName
}
type vocabularyFilterInfo = {
@as("LastModifiedTime") lastModifiedTime: dateTime,
@as("LanguageCode") languageCode: languageCode,
@as("VocabularyFilterName") vocabularyFilterName: vocabularyFilterName
}
type transcript = {
@as("RedactedTranscriptFileUri") redactedTranscriptFileUri: uri,
@as("TranscriptFileUri") transcriptFileUri: uri
}
type settings = {
@as("VocabularyFilterMethod") vocabularyFilterMethod: vocabularyFilterMethod,
@as("VocabularyFilterName") vocabularyFilterName: vocabularyFilterName,
@as("MaxAlternatives") maxAlternatives: maxAlternatives,
@as("ShowAlternatives") showAlternatives: amazonawsBoolean,
@as("ChannelIdentification") channelIdentification: amazonawsBoolean,
@as("MaxSpeakerLabels") maxSpeakerLabels: maxSpeakers,
@as("ShowSpeakerLabels") showSpeakerLabels: amazonawsBoolean,
@as("VocabularyName") vocabularyName: vocabularyName
}
type phrases = array<phrase>
type modelSettings = {
@as("LanguageModelName") languageModelName: modelName
}
type medicalTranscriptionSetting = {
@as("VocabularyName") vocabularyName: vocabularyName,
@as("MaxAlternatives") maxAlternatives: maxAlternatives,
@as("ShowAlternatives") showAlternatives: amazonawsBoolean,
@as("ChannelIdentification") channelIdentification: amazonawsBoolean,
@as("MaxSpeakerLabels") maxSpeakerLabels: maxSpeakers,
@as("ShowSpeakerLabels") showSpeakerLabels: amazonawsBoolean
}
type medicalTranscriptionJobSummary = {
@as("Type") type_: type_,
@as("ContentIdentificationType") contentIdentificationType: medicalContentIdentificationType,
@as("Specialty") specialty: specialty,
@as("OutputLocationType") outputLocationType: outputLocationType,
@as("FailureReason") failureReason: failureReason,
@as("TranscriptionJobStatus") transcriptionJobStatus: transcriptionJobStatus,
@as("LanguageCode") languageCode: languageCode,
@as("CompletionTime") completionTime: dateTime,
@as("StartTime") startTime: dateTime,
@as("CreationTime") creationTime: dateTime,
@as("MedicalTranscriptionJobName") medicalTranscriptionJobName: transcriptionJobName
}
type medicalTranscript = {
@as("TranscriptFileUri") transcriptFileUri: uri
}
type media = {
@as("MediaFileUri") mediaFileUri: uri
}
type languageOptions = array<languageCode>
type jobExecutionSettings = {
@as("DataAccessRoleArn") dataAccessRoleArn: dataAccessRoleArn,
@as("AllowDeferredExecution") allowDeferredExecution: amazonawsBoolean
}
type inputDataConfig = {
@as("DataAccessRoleArn") dataAccessRoleArn: option<dataAccessRoleArn>,
@as("TuningDataS3Uri") tuningDataS3Uri: uri,
@as("S3Uri") s3Uri: option<uri>
}
type contentRedaction = {
@as("RedactionOutput") redactionOutput: option<redactionOutput>,
@as("RedactionType") redactionType: option<redactionType>
}
type vocabularyFilters = array<vocabularyFilterInfo>
type vocabularies = array<vocabularyInfo>
type transcriptionJobSummary = {
@as("IdentifiedLanguageScore") identifiedLanguageScore: identifiedLanguageScore,
@as("IdentifyLanguage") identifyLanguage: amazonawsBoolean,
@as("ModelSettings") modelSettings: modelSettings,
@as("ContentRedaction") contentRedaction: contentRedaction,
@as("OutputLocationType") outputLocationType: outputLocationType,
@as("FailureReason") failureReason: failureReason,
@as("TranscriptionJobStatus") transcriptionJobStatus: transcriptionJobStatus,
@as("LanguageCode") languageCode: languageCode,
@as("CompletionTime") completionTime: dateTime,
@as("StartTime") startTime: dateTime,
@as("CreationTime") creationTime: dateTime,
@as("TranscriptionJobName") transcriptionJobName: transcriptionJobName
}
type transcriptionJob = {
@as("IdentifiedLanguageScore") identifiedLanguageScore: identifiedLanguageScore,
@as("LanguageOptions") languageOptions: languageOptions,
@as("IdentifyLanguage") identifyLanguage: amazonawsBoolean,
@as("ContentRedaction") contentRedaction: contentRedaction,
@as("JobExecutionSettings") jobExecutionSettings: jobExecutionSettings,
@as("ModelSettings") modelSettings: modelSettings,
@as("Settings") settings: settings,
@as("FailureReason") failureReason: failureReason,
@as("CompletionTime") completionTime: dateTime,
@as("CreationTime") creationTime: dateTime,
@as("StartTime") startTime: dateTime,
@as("Transcript") transcript: transcript,
@as("Media") media: media,
@as("MediaFormat") mediaFormat: mediaFormat,
@as("MediaSampleRateHertz") mediaSampleRateHertz: mediaSampleRateHertz,
@as("LanguageCode") languageCode: languageCode,
@as("TranscriptionJobStatus") transcriptionJobStatus: transcriptionJobStatus,
@as("TranscriptionJobName") transcriptionJobName: transcriptionJobName
}
type medicalTranscriptionJobSummaries = array<medicalTranscriptionJobSummary>
type medicalTranscriptionJob = {
@as("Type") type_: type_,
@as("Specialty") specialty: specialty,
@as("ContentIdentificationType") contentIdentificationType: medicalContentIdentificationType,
@as("Settings") settings: medicalTranscriptionSetting,
@as("FailureReason") failureReason: failureReason,
@as("CompletionTime") completionTime: dateTime,
@as("CreationTime") creationTime: dateTime,
@as("StartTime") startTime: dateTime,
@as("Transcript") transcript: medicalTranscript,
@as("Media") media: media,
@as("MediaFormat") mediaFormat: mediaFormat,
@as("MediaSampleRateHertz") mediaSampleRateHertz: mediaSampleRateHertz,
@as("LanguageCode") languageCode: languageCode,
@as("TranscriptionJobStatus") transcriptionJobStatus: transcriptionJobStatus,
@as("MedicalTranscriptionJobName") medicalTranscriptionJobName: transcriptionJobName
}
type languageModel = {
@as("InputDataConfig") inputDataConfig: inputDataConfig,
@as("FailureReason") failureReason: failureReason,
@as("UpgradeAvailability") upgradeAvailability: amazonawsBoolean,
@as("ModelStatus") modelStatus: modelStatus,
@as("BaseModelName") baseModelName: baseModelName,
@as("LanguageCode") languageCode: cLMLanguageCode,
@as("LastModifiedTime") lastModifiedTime: dateTime,
@as("CreateTime") createTime: dateTime,
@as("ModelName") modelName: modelName
}
type transcriptionJobSummaries = array<transcriptionJobSummary>
type models = array<languageModel>
type clientType;
@module("@aws-sdk/client-transcribe") @new external createClient: unit => clientType = "TranscribeClient";
module UpdateMedicalVocabulary = {
  type t;
  type request = {
@as("VocabularyFileUri") vocabularyFileUri: uri,
@as("LanguageCode") languageCode: option<languageCode>,
@as("VocabularyName") vocabularyName: option<vocabularyName>
}
  type response = {
@as("VocabularyState") vocabularyState: vocabularyState,
@as("LastModifiedTime") lastModifiedTime: dateTime,
@as("LanguageCode") languageCode: languageCode,
@as("VocabularyName") vocabularyName: vocabularyName
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "UpdateMedicalVocabularyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVocabularyFilter = {
  type t;
  type request = {
@as("VocabularyFilterName") vocabularyFilterName: option<vocabularyFilterName>
}
  type response = {
@as("DownloadUri") downloadUri: uri,
@as("LastModifiedTime") lastModifiedTime: dateTime,
@as("LanguageCode") languageCode: languageCode,
@as("VocabularyFilterName") vocabularyFilterName: vocabularyFilterName
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "GetVocabularyFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVocabulary = {
  type t;
  type request = {
@as("VocabularyName") vocabularyName: option<vocabularyName>
}
  type response = {
@as("DownloadUri") downloadUri: uri,
@as("FailureReason") failureReason: failureReason,
@as("LastModifiedTime") lastModifiedTime: dateTime,
@as("VocabularyState") vocabularyState: vocabularyState,
@as("LanguageCode") languageCode: languageCode,
@as("VocabularyName") vocabularyName: vocabularyName
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "GetVocabularyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMedicalVocabulary = {
  type t;
  type request = {
@as("VocabularyName") vocabularyName: option<vocabularyName>
}
  type response = {
@as("DownloadUri") downloadUri: uri,
@as("FailureReason") failureReason: failureReason,
@as("LastModifiedTime") lastModifiedTime: dateTime,
@as("VocabularyState") vocabularyState: vocabularyState,
@as("LanguageCode") languageCode: languageCode,
@as("VocabularyName") vocabularyName: vocabularyName
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "GetMedicalVocabularyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVocabularyFilter = {
  type t;
  type request = {
@as("VocabularyFilterName") vocabularyFilterName: option<vocabularyFilterName>
}
  
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "DeleteVocabularyFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteVocabulary = {
  type t;
  type request = {
@as("VocabularyName") vocabularyName: option<vocabularyName>
}
  
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "DeleteVocabularyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteTranscriptionJob = {
  type t;
  type request = {
@as("TranscriptionJobName") transcriptionJobName: option<transcriptionJobName>
}
  
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "DeleteTranscriptionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteMedicalVocabulary = {
  type t;
  type request = {
@as("VocabularyName") vocabularyName: option<vocabularyName>
}
  
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "DeleteMedicalVocabularyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteMedicalTranscriptionJob = {
  type t;
  type request = {
@as("MedicalTranscriptionJobName") medicalTranscriptionJobName: option<transcriptionJobName>
}
  
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "DeleteMedicalTranscriptionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteLanguageModel = {
  type t;
  type request = {
@as("ModelName") modelName: option<modelName>
}
  
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "DeleteLanguageModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateMedicalVocabulary = {
  type t;
  type request = {
@as("VocabularyFileUri") vocabularyFileUri: option<uri>,
@as("LanguageCode") languageCode: option<languageCode>,
@as("VocabularyName") vocabularyName: option<vocabularyName>
}
  type response = {
@as("FailureReason") failureReason: failureReason,
@as("LastModifiedTime") lastModifiedTime: dateTime,
@as("VocabularyState") vocabularyState: vocabularyState,
@as("LanguageCode") languageCode: languageCode,
@as("VocabularyName") vocabularyName: vocabularyName
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "CreateMedicalVocabularyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateVocabularyFilter = {
  type t;
  type request = {
@as("VocabularyFilterFileUri") vocabularyFilterFileUri: uri,
@as("Words") words: words,
@as("VocabularyFilterName") vocabularyFilterName: option<vocabularyFilterName>
}
  type response = {
@as("LastModifiedTime") lastModifiedTime: dateTime,
@as("LanguageCode") languageCode: languageCode,
@as("VocabularyFilterName") vocabularyFilterName: vocabularyFilterName
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "UpdateVocabularyFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateVocabulary = {
  type t;
  type request = {
@as("VocabularyFileUri") vocabularyFileUri: uri,
@as("Phrases") phrases: phrases,
@as("LanguageCode") languageCode: option<languageCode>,
@as("VocabularyName") vocabularyName: option<vocabularyName>
}
  type response = {
@as("VocabularyState") vocabularyState: vocabularyState,
@as("LastModifiedTime") lastModifiedTime: dateTime,
@as("LanguageCode") languageCode: languageCode,
@as("VocabularyName") vocabularyName: vocabularyName
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "UpdateVocabularyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVocabularyFilter = {
  type t;
  type request = {
@as("VocabularyFilterFileUri") vocabularyFilterFileUri: uri,
@as("Words") words: words,
@as("LanguageCode") languageCode: option<languageCode>,
@as("VocabularyFilterName") vocabularyFilterName: option<vocabularyFilterName>
}
  type response = {
@as("LastModifiedTime") lastModifiedTime: dateTime,
@as("LanguageCode") languageCode: languageCode,
@as("VocabularyFilterName") vocabularyFilterName: vocabularyFilterName
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "CreateVocabularyFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVocabulary = {
  type t;
  type request = {
@as("VocabularyFileUri") vocabularyFileUri: uri,
@as("Phrases") phrases: phrases,
@as("LanguageCode") languageCode: option<languageCode>,
@as("VocabularyName") vocabularyName: option<vocabularyName>
}
  type response = {
@as("FailureReason") failureReason: failureReason,
@as("LastModifiedTime") lastModifiedTime: dateTime,
@as("VocabularyState") vocabularyState: vocabularyState,
@as("LanguageCode") languageCode: languageCode,
@as("VocabularyName") vocabularyName: vocabularyName
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "CreateVocabularyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLanguageModel = {
  type t;
  type request = {
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
@as("ModelName") modelName: option<modelName>,
@as("BaseModelName") baseModelName: option<baseModelName>,
@as("LanguageCode") languageCode: option<cLMLanguageCode>
}
  type response = {
@as("ModelStatus") modelStatus: modelStatus,
@as("InputDataConfig") inputDataConfig: inputDataConfig,
@as("ModelName") modelName: modelName,
@as("BaseModelName") baseModelName: baseModelName,
@as("LanguageCode") languageCode: cLMLanguageCode
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "CreateLanguageModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartTranscriptionJob = {
  type t;
  type request = {
@as("LanguageOptions") languageOptions: languageOptions,
@as("IdentifyLanguage") identifyLanguage: amazonawsBoolean,
@as("ContentRedaction") contentRedaction: contentRedaction,
@as("JobExecutionSettings") jobExecutionSettings: jobExecutionSettings,
@as("ModelSettings") modelSettings: modelSettings,
@as("Settings") settings: settings,
@as("OutputEncryptionKMSKeyId") outputEncryptionKMSKeyId: kMSKeyId,
@as("OutputKey") outputKey: outputKey,
@as("OutputBucketName") outputBucketName: outputBucketName,
@as("Media") media: option<media>,
@as("MediaFormat") mediaFormat: mediaFormat,
@as("MediaSampleRateHertz") mediaSampleRateHertz: mediaSampleRateHertz,
@as("LanguageCode") languageCode: languageCode,
@as("TranscriptionJobName") transcriptionJobName: option<transcriptionJobName>
}
  type response = {
@as("TranscriptionJob") transcriptionJob: transcriptionJob
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "StartTranscriptionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartMedicalTranscriptionJob = {
  type t;
  type request = {
@as("Type") type_: option<type_>,
@as("Specialty") specialty: option<specialty>,
@as("ContentIdentificationType") contentIdentificationType: medicalContentIdentificationType,
@as("Settings") settings: medicalTranscriptionSetting,
@as("OutputEncryptionKMSKeyId") outputEncryptionKMSKeyId: kMSKeyId,
@as("OutputKey") outputKey: outputKey,
@as("OutputBucketName") outputBucketName: option<outputBucketName>,
@as("Media") media: option<media>,
@as("MediaFormat") mediaFormat: mediaFormat,
@as("MediaSampleRateHertz") mediaSampleRateHertz: mediaSampleRateHertz,
@as("LanguageCode") languageCode: option<languageCode>,
@as("MedicalTranscriptionJobName") medicalTranscriptionJobName: option<transcriptionJobName>
}
  type response = {
@as("MedicalTranscriptionJob") medicalTranscriptionJob: medicalTranscriptionJob
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "StartMedicalTranscriptionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVocabularyFilters = {
  type t;
  type request = {
@as("NameContains") nameContains: vocabularyFilterName,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("VocabularyFilters") vocabularyFilters: vocabularyFilters,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "ListVocabularyFiltersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVocabularies = {
  type t;
  type request = {
@as("NameContains") nameContains: vocabularyName,
@as("StateEquals") stateEquals: vocabularyState,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("Vocabularies") vocabularies: vocabularies,
@as("NextToken") nextToken: nextToken,
@as("Status") status: vocabularyState
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "ListVocabulariesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMedicalVocabularies = {
  type t;
  type request = {
@as("NameContains") nameContains: vocabularyName,
@as("StateEquals") stateEquals: vocabularyState,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("Vocabularies") vocabularies: vocabularies,
@as("NextToken") nextToken: nextToken,
@as("Status") status: vocabularyState
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "ListMedicalVocabulariesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMedicalTranscriptionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("JobNameContains") jobNameContains: transcriptionJobName,
@as("Status") status: transcriptionJobStatus
}
  type response = {
@as("MedicalTranscriptionJobSummaries") medicalTranscriptionJobSummaries: medicalTranscriptionJobSummaries,
@as("NextToken") nextToken: nextToken,
@as("Status") status: transcriptionJobStatus
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "ListMedicalTranscriptionJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTranscriptionJob = {
  type t;
  type request = {
@as("TranscriptionJobName") transcriptionJobName: option<transcriptionJobName>
}
  type response = {
@as("TranscriptionJob") transcriptionJob: transcriptionJob
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "GetTranscriptionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMedicalTranscriptionJob = {
  type t;
  type request = {
@as("MedicalTranscriptionJobName") medicalTranscriptionJobName: option<transcriptionJobName>
}
  type response = {
@as("MedicalTranscriptionJob") medicalTranscriptionJob: medicalTranscriptionJob
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "GetMedicalTranscriptionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLanguageModel = {
  type t;
  type request = {
@as("ModelName") modelName: option<modelName>
}
  type response = {
@as("LanguageModel") languageModel: languageModel
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "DescribeLanguageModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTranscriptionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("JobNameContains") jobNameContains: transcriptionJobName,
@as("Status") status: transcriptionJobStatus
}
  type response = {
@as("TranscriptionJobSummaries") transcriptionJobSummaries: transcriptionJobSummaries,
@as("NextToken") nextToken: nextToken,
@as("Status") status: transcriptionJobStatus
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "ListTranscriptionJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLanguageModels = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("NameContains") nameContains: modelName,
@as("StatusEquals") statusEquals: modelStatus
}
  type response = {
@as("Models") models: models,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "ListLanguageModelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
