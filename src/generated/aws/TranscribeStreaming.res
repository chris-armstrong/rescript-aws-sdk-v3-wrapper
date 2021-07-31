type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type vocabularyName = string
type vocabularyFilterName = string
type vocabularyFilterMethod = [@as("tag") #tag | @as("mask") #mask | @as("remove") #remove]
type type_ = [@as("DICTATION") #DICTATION | @as("CONVERSATION") #CONVERSATION]
type amazonawsString = string
type stable = bool;
type specialty = [@as("UROLOGY") #UROLOGY | @as("RADIOLOGY") #RADIOLOGY | @as("ONCOLOGY") #ONCOLOGY | @as("NEUROLOGY") #NEUROLOGY | @as("CARDIOLOGY") #CARDIOLOGY | @as("PRIMARYCARE") #PRIMARYCARE]
type sessionId = string
type requestId = string
type partialResultsStability = [@as("low") #low | @as("medium") #medium | @as("high") #high]
type numberOfChannels = int;
type medicalContentIdentificationType = [@as("PHI") #PHI]
type mediaSampleRateHertz = int;
type mediaEncoding = [@as("flac") #flac | @as("ogg-opus") #ogg_opus | @as("pcm") #pcm]
type languageCode = [@as("zh-CN") #zh_CN | @as("ko-KR") #ko_KR | @as("ja-JP") #ja_JP | @as("pt-BR") #pt_BR | @as("de-DE") #de_DE | @as("it-IT") #it_IT | @as("en-AU") #en_AU | @as("fr-FR") #fr_FR | @as("fr-CA") #fr_CA | @as("es-US") #es_US | @as("en-GB") #en_GB | @as("en-US") #en_US]
type itemType = [@as("punctuation") #punctuation | @as("pronunciation") #pronunciation]
type amazonawsDouble = float;
type confidence = float;
type amazonawsBoolean = bool;
type audioChunk = NodeJs.Buffer.t;
exception ServiceUnavailableException;
type medicalItem = {
@as("Speaker") speaker: amazonawsString,
@as("Confidence") confidence: confidence,
@as("Content") content: amazonawsString,
@as("Type") type_: itemType,
@as("EndTime") endTime: amazonawsDouble,
@as("StartTime") startTime: amazonawsDouble
}
type medicalEntity = {
@as("Confidence") confidence: confidence,
@as("Content") content: amazonawsString,
@as("Category") category: amazonawsString,
@as("EndTime") endTime: amazonawsDouble,
@as("StartTime") startTime: amazonawsDouble
}
exception LimitExceededException;
type item = {
@as("Stable") stable: stable,
@as("Confidence") confidence: confidence,
@as("Speaker") speaker: amazonawsString,
@as("VocabularyFilterMatch") vocabularyFilterMatch: amazonawsBoolean,
@as("Content") content: amazonawsString,
@as("Type") type_: itemType,
@as("EndTime") endTime: amazonawsDouble,
@as("StartTime") startTime: amazonawsDouble
}
exception InternalFailureException;
exception ConflictException;
exception BadRequestException;
type audioEvent = {
@as("AudioChunk") audioChunk: audioChunk
}
type medicalItemList = array<medicalItem>
type medicalEntityList = array<medicalEntity>
type itemList = array<item>
type audioStream = AudioEvent(audioEvent);
type medicalAlternative = {
@as("Entities") entities: medicalEntityList,
@as("Items") items: medicalItemList,
@as("Transcript") transcript: amazonawsString
}
type alternative = {
@as("Items") items: itemList,
@as("Transcript") transcript: amazonawsString
}
type medicalAlternativeList = array<medicalAlternative>
type alternativeList = array<alternative>
type result = {
@as("ChannelId") channelId: amazonawsString,
@as("Alternatives") alternatives: alternativeList,
@as("IsPartial") isPartial: amazonawsBoolean,
@as("EndTime") endTime: amazonawsDouble,
@as("StartTime") startTime: amazonawsDouble,
@as("ResultId") resultId: amazonawsString
}
type medicalResult = {
@as("ChannelId") channelId: amazonawsString,
@as("Alternatives") alternatives: medicalAlternativeList,
@as("IsPartial") isPartial: amazonawsBoolean,
@as("EndTime") endTime: amazonawsDouble,
@as("StartTime") startTime: amazonawsDouble,
@as("ResultId") resultId: amazonawsString
}
type resultList = array<result>
type medicalResultList = array<medicalResult>
type transcript = {
@as("Results") results: resultList
}
type medicalTranscript = {
@as("Results") results: medicalResultList
}
type transcriptEvent = {
@as("Transcript") transcript: transcript
}
type medicalTranscriptEvent = {
@as("Transcript") transcript: medicalTranscript
}
type transcriptResultStream = ServiceUnavailableException(serviceUnavailableException) | ConflictException(conflictException) | InternalFailureException(internalFailureException) | LimitExceededException(limitExceededException) | BadRequestException(badRequestException) | TranscriptEvent(transcriptEvent);
type medicalTranscriptResultStream = ServiceUnavailableException(serviceUnavailableException) | ConflictException(conflictException) | InternalFailureException(internalFailureException) | LimitExceededException(limitExceededException) | BadRequestException(badRequestException) | TranscriptEvent(medicalTranscriptEvent);
type clientType;
@module("@aws-sdk/client-transcribe") @new external createClient: unit => clientType = "TranscribeStreamingClient";
module StartStreamTranscription = {
  type t;
  type request = {
@as("PartialResultsStability") partialResultsStability: partialResultsStability,
@as("EnablePartialResultsStabilization") enablePartialResultsStabilization: amazonawsBoolean,
@as("NumberOfChannels") numberOfChannels: numberOfChannels,
@as("EnableChannelIdentification") enableChannelIdentification: amazonawsBoolean,
@as("ShowSpeakerLabel") showSpeakerLabel: amazonawsBoolean,
@as("VocabularyFilterMethod") vocabularyFilterMethod: vocabularyFilterMethod,
@as("VocabularyFilterName") vocabularyFilterName: vocabularyFilterName,
@as("AudioStream") audioStream: option<audioStream>,
@as("SessionId") sessionId: sessionId,
@as("VocabularyName") vocabularyName: vocabularyName,
@as("MediaEncoding") mediaEncoding: option<mediaEncoding>,
@as("MediaSampleRateHertz") mediaSampleRateHertz: option<mediaSampleRateHertz>,
@as("LanguageCode") languageCode: option<languageCode>
}
  type response = {
@as("PartialResultsStability") partialResultsStability: partialResultsStability,
@as("EnablePartialResultsStabilization") enablePartialResultsStabilization: amazonawsBoolean,
@as("NumberOfChannels") numberOfChannels: numberOfChannels,
@as("EnableChannelIdentification") enableChannelIdentification: amazonawsBoolean,
@as("ShowSpeakerLabel") showSpeakerLabel: amazonawsBoolean,
@as("VocabularyFilterMethod") vocabularyFilterMethod: vocabularyFilterMethod,
@as("VocabularyFilterName") vocabularyFilterName: vocabularyFilterName,
@as("TranscriptResultStream") transcriptResultStream: transcriptResultStream,
@as("SessionId") sessionId: sessionId,
@as("VocabularyName") vocabularyName: vocabularyName,
@as("MediaEncoding") mediaEncoding: mediaEncoding,
@as("MediaSampleRateHertz") mediaSampleRateHertz: mediaSampleRateHertz,
@as("LanguageCode") languageCode: languageCode,
@as("RequestId") requestId: requestId
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "StartStreamTranscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartMedicalStreamTranscription = {
  type t;
  type request = {
@as("ContentIdentificationType") contentIdentificationType: medicalContentIdentificationType,
@as("NumberOfChannels") numberOfChannels: numberOfChannels,
@as("EnableChannelIdentification") enableChannelIdentification: amazonawsBoolean,
@as("AudioStream") audioStream: option<audioStream>,
@as("SessionId") sessionId: sessionId,
@as("ShowSpeakerLabel") showSpeakerLabel: amazonawsBoolean,
@as("Type") type_: option<type_>,
@as("Specialty") specialty: option<specialty>,
@as("VocabularyName") vocabularyName: vocabularyName,
@as("MediaEncoding") mediaEncoding: option<mediaEncoding>,
@as("MediaSampleRateHertz") mediaSampleRateHertz: option<mediaSampleRateHertz>,
@as("LanguageCode") languageCode: option<languageCode>
}
  type response = {
@as("ContentIdentificationType") contentIdentificationType: medicalContentIdentificationType,
@as("NumberOfChannels") numberOfChannels: numberOfChannels,
@as("EnableChannelIdentification") enableChannelIdentification: amazonawsBoolean,
@as("TranscriptResultStream") transcriptResultStream: medicalTranscriptResultStream,
@as("SessionId") sessionId: sessionId,
@as("ShowSpeakerLabel") showSpeakerLabel: amazonawsBoolean,
@as("Type") type_: type_,
@as("Specialty") specialty: specialty,
@as("VocabularyName") vocabularyName: vocabularyName,
@as("MediaEncoding") mediaEncoding: mediaEncoding,
@as("MediaSampleRateHertz") mediaSampleRateHertz: mediaSampleRateHertz,
@as("LanguageCode") languageCode: languageCode,
@as("RequestId") requestId: requestId
}
  @module("@aws-sdk/client-transcribe") @new external new_: (Js.Promise.t<request>) => t = "StartMedicalStreamTranscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
