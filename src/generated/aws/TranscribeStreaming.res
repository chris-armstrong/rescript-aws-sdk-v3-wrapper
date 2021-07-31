type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-transcribe") @new external createClient: unit => awsServiceClient = "TranscribeStreamingClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type vocabularyName = string
type vocabularyFilterName = string
type vocabularyFilterMethod = [@as("tag") #Tag | @as("mask") #Mask | @as("remove") #Remove]
type type_ = [@as("DICTATION") #DICTATION | @as("CONVERSATION") #CONVERSATION]
type string_ = string
type stable = bool
type specialty = [@as("UROLOGY") #UROLOGY | @as("RADIOLOGY") #RADIOLOGY | @as("ONCOLOGY") #ONCOLOGY | @as("NEUROLOGY") #NEUROLOGY | @as("CARDIOLOGY") #CARDIOLOGY | @as("PRIMARYCARE") #PRIMARYCARE]
type sessionId = string
type requestId = string
type partialResultsStability = [@as("low") #Low | @as("medium") #Medium | @as("high") #High]
type numberOfChannels = int
type medicalContentIdentificationType = [@as("PHI") #PHI]
type mediaSampleRateHertz = int
type mediaEncoding = [@as("flac") #Flac | @as("ogg-opus") #Ogg_Opus | @as("pcm") #Pcm]
type languageCode = [@as("zh-CN") #Zh_CN | @as("ko-KR") #Ko_KR | @as("ja-JP") #Ja_JP | @as("pt-BR") #Pt_BR | @as("de-DE") #De_DE | @as("it-IT") #It_IT | @as("en-AU") #En_AU | @as("fr-FR") #Fr_FR | @as("fr-CA") #Fr_CA | @as("es-US") #Es_US | @as("en-GB") #En_GB | @as("en-US") #En_US]
type itemType = [@as("punctuation") #Punctuation | @as("pronunciation") #Pronunciation]
type double = float
type confidence = float
type boolean_ = bool
type audioChunk = NodeJs.Buffer.t
type serviceUnavailableException = {
name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @as("Message") message: option<string_>
}
type medicalItem = {
@as("Speaker") speaker: option<string_>,
  @as("Confidence") confidence: option<confidence>,
  @as("Content") content: option<string_>,
  @as("Type") type_: option<itemType>,
  @as("EndTime") endTime: option<double>,
  @as("StartTime") startTime: option<double>
}
type medicalEntity = {
@as("Confidence") confidence: option<confidence>,
  @as("Content") content: option<string_>,
  @as("Category") category: option<string_>,
  @as("EndTime") endTime: option<double>,
  @as("StartTime") startTime: option<double>
}
type limitExceededException = {
name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @as("Message") message: option<string_>
}
type item = {
@as("Stable") stable: option<stable>,
  @as("Confidence") confidence: option<confidence>,
  @as("Speaker") speaker: option<string_>,
  @as("VocabularyFilterMatch") vocabularyFilterMatch: option<boolean_>,
  @as("Content") content: option<string_>,
  @as("Type") type_: option<itemType>,
  @as("EndTime") endTime: option<double>,
  @as("StartTime") startTime: option<double>
}
type internalFailureException = {
name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @as("Message") message: option<string_>
}
type conflictException = {
name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @as("Message") message: option<string_>
}
type badRequestException = {
name: string,
  @as("$fault") fault: [#client | #server],
  @as("$service") service: option<string>,
  @as("$metadata") metadata: responseMetadata,
  @as("Message") message: option<string_>
}
type audioEvent = {
@as("AudioChunk") audioChunk: option<audioChunk>
}
type medicalItemList = array<medicalItem>
type medicalEntityList = array<medicalEntity>
type itemList = array<item>
type audioStream = {
@as("AudioEvent") audioEvent: option<audioEvent>
}
type medicalAlternative = {
@as("Entities") entities: option<medicalEntityList>,
  @as("Items") items: option<medicalItemList>,
  @as("Transcript") transcript: option<string_>
}
type alternative = {
@as("Items") items: option<itemList>,
  @as("Transcript") transcript: option<string_>
}
type medicalAlternativeList = array<medicalAlternative>
type alternativeList = array<alternative>
type result = {
@as("ChannelId") channelId: option<string_>,
  @as("Alternatives") alternatives: option<alternativeList>,
  @as("IsPartial") isPartial: option<boolean_>,
  @as("EndTime") endTime: option<double>,
  @as("StartTime") startTime: option<double>,
  @as("ResultId") resultId: option<string_>
}
type medicalResult = {
@as("ChannelId") channelId: option<string_>,
  @as("Alternatives") alternatives: option<medicalAlternativeList>,
  @as("IsPartial") isPartial: option<boolean_>,
  @as("EndTime") endTime: option<double>,
  @as("StartTime") startTime: option<double>,
  @as("ResultId") resultId: option<string_>
}
type resultList = array<result>
type medicalResultList = array<medicalResult>
type transcript = {
@as("Results") results: option<resultList>
}
type medicalTranscript = {
@as("Results") results: option<medicalResultList>
}
type transcriptEvent = {
@as("Transcript") transcript: option<transcript>
}
type medicalTranscriptEvent = {
@as("Transcript") transcript: option<medicalTranscript>
}
type transcriptResultStream = {
@as("ServiceUnavailableException") serviceUnavailableException: option<serviceUnavailableException>,
  @as("ConflictException") conflictException: option<conflictException>,
  @as("InternalFailureException") internalFailureException: option<internalFailureException>,
  @as("LimitExceededException") limitExceededException: option<limitExceededException>,
  @as("BadRequestException") badRequestException: option<badRequestException>,
  @as("TranscriptEvent") transcriptEvent: option<transcriptEvent>
}
type medicalTranscriptResultStream = {
@as("ServiceUnavailableException") serviceUnavailableException: option<serviceUnavailableException>,
  @as("ConflictException") conflictException: option<conflictException>,
  @as("InternalFailureException") internalFailureException: option<internalFailureException>,
  @as("LimitExceededException") limitExceededException: option<limitExceededException>,
  @as("BadRequestException") badRequestException: option<badRequestException>,
  @as("TranscriptEvent") transcriptEvent: option<medicalTranscriptEvent>
}

module StartStreamTranscription = {
  type t;
  type request = {
@as("PartialResultsStability") partialResultsStability: option<partialResultsStability>,
  @as("EnablePartialResultsStabilization") enablePartialResultsStabilization: option<boolean_>,
  @as("NumberOfChannels") numberOfChannels: option<numberOfChannels>,
  @as("EnableChannelIdentification") enableChannelIdentification: option<boolean_>,
  @as("ShowSpeakerLabel") showSpeakerLabel: option<boolean_>,
  @as("VocabularyFilterMethod") vocabularyFilterMethod: option<vocabularyFilterMethod>,
  @as("VocabularyFilterName") vocabularyFilterName: option<vocabularyFilterName>,
  @as("AudioStream") audioStream: audioStream,
  @as("SessionId") sessionId: option<sessionId>,
  @as("VocabularyName") vocabularyName: option<vocabularyName>,
  @as("MediaEncoding") mediaEncoding: mediaEncoding,
  @as("MediaSampleRateHertz") mediaSampleRateHertz: mediaSampleRateHertz,
  @as("LanguageCode") languageCode: languageCode
}
  type response = {
@as("PartialResultsStability") partialResultsStability: option<partialResultsStability>,
  @as("EnablePartialResultsStabilization") enablePartialResultsStabilization: option<boolean_>,
  @as("NumberOfChannels") numberOfChannels: option<numberOfChannels>,
  @as("EnableChannelIdentification") enableChannelIdentification: option<boolean_>,
  @as("ShowSpeakerLabel") showSpeakerLabel: option<boolean_>,
  @as("VocabularyFilterMethod") vocabularyFilterMethod: option<vocabularyFilterMethod>,
  @as("VocabularyFilterName") vocabularyFilterName: option<vocabularyFilterName>,
  @as("TranscriptResultStream") transcriptResultStream: option<transcriptResultStream>,
  @as("SessionId") sessionId: option<sessionId>,
  @as("VocabularyName") vocabularyName: option<vocabularyName>,
  @as("MediaEncoding") mediaEncoding: option<mediaEncoding>,
  @as("MediaSampleRateHertz") mediaSampleRateHertz: option<mediaSampleRateHertz>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("RequestId") requestId: option<requestId>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "StartStreamTranscriptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartMedicalStreamTranscription = {
  type t;
  type request = {
@as("ContentIdentificationType") contentIdentificationType: option<medicalContentIdentificationType>,
  @as("NumberOfChannels") numberOfChannels: option<numberOfChannels>,
  @as("EnableChannelIdentification") enableChannelIdentification: option<boolean_>,
  @as("AudioStream") audioStream: audioStream,
  @as("SessionId") sessionId: option<sessionId>,
  @as("ShowSpeakerLabel") showSpeakerLabel: option<boolean_>,
  @as("Type") type_: type_,
  @as("Specialty") specialty: specialty,
  @as("VocabularyName") vocabularyName: option<vocabularyName>,
  @as("MediaEncoding") mediaEncoding: mediaEncoding,
  @as("MediaSampleRateHertz") mediaSampleRateHertz: mediaSampleRateHertz,
  @as("LanguageCode") languageCode: languageCode
}
  type response = {
@as("ContentIdentificationType") contentIdentificationType: option<medicalContentIdentificationType>,
  @as("NumberOfChannels") numberOfChannels: option<numberOfChannels>,
  @as("EnableChannelIdentification") enableChannelIdentification: option<boolean_>,
  @as("TranscriptResultStream") transcriptResultStream: option<medicalTranscriptResultStream>,
  @as("SessionId") sessionId: option<sessionId>,
  @as("ShowSpeakerLabel") showSpeakerLabel: option<boolean_>,
  @as("Type") type_: option<type_>,
  @as("Specialty") specialty: option<specialty>,
  @as("VocabularyName") vocabularyName: option<vocabularyName>,
  @as("MediaEncoding") mediaEncoding: option<mediaEncoding>,
  @as("MediaSampleRateHertz") mediaSampleRateHertz: option<mediaSampleRateHertz>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("RequestId") requestId: option<requestId>
}
  @module("@aws-sdk/client-transcribe") @new external new_: (request) => t = "StartMedicalStreamTranscriptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
