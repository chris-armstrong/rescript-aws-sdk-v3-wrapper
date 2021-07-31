type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-polly") @new external createClient: unit => awsServiceClient = "PollyClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type voiceName = string
type voiceId = [@as("Zhiyu") #Zhiyu | @as("Zeina") #Zeina | @as("Vitoria") #Vitoria | @as("Vicki") #Vicki | @as("Tatyana") #Tatyana | @as("Takumi") #Takumi | @as("Seoyeon") #Seoyeon | @as("Salli") #Salli | @as("Russell") #Russell | @as("Ruben") #Ruben | @as("Ricardo") #Ricardo | @as("Raveena") #Raveena | @as("Penelope") #Penelope | @as("Olivia") #Olivia | @as("Nicole") #Nicole | @as("Naja") #Naja | @as("Mizuki") #Mizuki | @as("Miguel") #Miguel | @as("Mia") #Mia | @as("Maxim") #Maxim | @as("Matthew") #Matthew | @as("Mathieu") #Mathieu | @as("Marlene") #Marlene | @as("Maja") #Maja | @as("Mads") #Mads | @as("Lupe") #Lupe | @as("Lucia") #Lucia | @as("Lotte") #Lotte | @as("Liv") #Liv | @as("Lea") #Lea | @as("Kimberly") #Kimberly | @as("Kevin") #Kevin | @as("Kendra") #Kendra | @as("Karl") #Karl | @as("Justin") #Justin | @as("Joey") #Joey | @as("Joanna") #Joanna | @as("Jan") #Jan | @as("Jacek") #Jacek | @as("Ivy") #Ivy | @as("Ines") #Ines | @as("Hans") #Hans | @as("Gwyneth") #Gwyneth | @as("Giorgio") #Giorgio | @as("Geraint") #Geraint | @as("Gabrielle") #Gabrielle | @as("Filiz") #Filiz | @as("Ewa") #Ewa | @as("Enrique") #Enrique | @as("Emma") #Emma | @as("Dora") #Dora | @as("Cristiano") #Cristiano | @as("Conchita") #Conchita | @as("Chantal") #Chantal | @as("Celine") #Celine | @as("Carmen") #Carmen | @as("Carla") #Carla | @as("Camila") #Camila | @as("Brian") #Brian | @as("Bianca") #Bianca | @as("Astrid") #Astrid | @as("Amy") #Amy | @as("Aditi") #Aditi]
type textType = [@as("text") #Text | @as("ssml") #Ssml]
type text = string
type taskStatusReason = string
type taskStatus = [@as("failed") #Failed | @as("completed") #Completed | @as("inProgress") #InProgress | @as("scheduled") #Scheduled]
type taskId = string
type speechMarkType = [@as("word") #Word | @as("viseme") #Viseme | @as("ssml") #Ssml | @as("sentence") #Sentence]
type snsTopicArn = string
type size = int
type sampleRate = string
type requestCharacters = int
type outputUri = string
type outputS3KeyPrefix = string
type outputS3BucketName = string
type outputFormat = [@as("pcm") #Pcm | @as("ogg_vorbis") #Ogg_Vorbis | @as("mp3") #Mp3 | @as("json") #Json]
type nextToken = string
type maxResults = int
type lexiconName = string
type lexiconContent = string
type lexiconArn = string
type lexemesCount = int
type lastModified = Js.Date.t;
type languageName = string
type languageCode = [@as("tr-TR") #Tr_TR | @as("sv-SE") #Sv_SE | @as("ru-RU") #Ru_RU | @as("ro-RO") #Ro_RO | @as("pt-PT") #Pt_PT | @as("pt-BR") #Pt_BR | @as("pl-PL") #Pl_PL | @as("nl-NL") #Nl_NL | @as("nb-NO") #Nb_NO | @as("ko-KR") #Ko_KR | @as("hi-IN") #Hi_IN | @as("ja-JP") #Ja_JP | @as("it-IT") #It_IT | @as("is-IS") #Is_IS | @as("fr-FR") #Fr_FR | @as("fr-CA") #Fr_CA | @as("es-US") #Es_US | @as("es-MX") #Es_MX | @as("es-ES") #Es_ES | @as("en-US") #En_US | @as("en-IN") #En_IN | @as("en-GB-WLS") #En_GB_WLS | @as("en-GB") #En_GB | @as("en-AU") #En_AU | @as("de-DE") #De_DE | @as("da-DK") #Da_DK | @as("cy-GB") #Cy_GB | @as("cmn-CN") #Cmn_CN | @as("arb") #Arb]
type includeAdditionalLanguageCodes = bool
type gender = [@as("Male") #Male | @as("Female") #Female]
type errorMessage = string
type engine = [@as("neural") #Neural | @as("standard") #Standard]
type dateTime = Js.Date.t;
type contentType = string
type audioStream = NodeJs.Buffer.t
type alphabet = string
type speechMarkTypeList = array<speechMarkType>
type lexiconNameList = array<lexiconName>
type lexiconAttributes = {
@as("Size") size: option<size>,
  @as("LexemesCount") lexemesCount: option<lexemesCount>,
  @as("LexiconArn") lexiconArn: option<lexiconArn>,
  @as("LastModified") lastModified: option<lastModified>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("Alphabet") alphabet: option<alphabet>
}
type lexicon = {
@as("Name") name: option<lexiconName>,
  @as("Content") content: option<lexiconContent>
}
type languageCodeList = array<languageCode>
type engineList = array<engine>
type voice = {
@as("SupportedEngines") supportedEngines: option<engineList>,
  @as("AdditionalLanguageCodes") additionalLanguageCodes: option<languageCodeList>,
  @as("Name") name: option<voiceName>,
  @as("LanguageName") languageName: option<languageName>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("Id") id: option<voiceId>,
  @as("Gender") gender: option<gender>
}
type synthesisTask = {
@as("LanguageCode") languageCode: option<languageCode>,
  @as("VoiceId") voiceId: option<voiceId>,
  @as("TextType") textType: option<textType>,
  @as("SpeechMarkTypes") speechMarkTypes: option<speechMarkTypeList>,
  @as("SampleRate") sampleRate: option<sampleRate>,
  @as("OutputFormat") outputFormat: option<outputFormat>,
  @as("LexiconNames") lexiconNames: option<lexiconNameList>,
  @as("SnsTopicArn") snsTopicArn: option<snsTopicArn>,
  @as("RequestCharacters") requestCharacters: option<requestCharacters>,
  @as("CreationTime") creationTime: option<dateTime>,
  @as("OutputUri") outputUri: option<outputUri>,
  @as("TaskStatusReason") taskStatusReason: option<taskStatusReason>,
  @as("TaskStatus") taskStatus: option<taskStatus>,
  @as("TaskId") taskId: option<taskId>,
  @as("Engine") engine: option<engine>
}
type lexiconDescription = {
@as("Attributes") attributes: option<lexiconAttributes>,
  @as("Name") name: option<lexiconName>
}
type voiceList = array<voice>
type synthesisTasks = array<synthesisTask>
type lexiconDescriptionList = array<lexiconDescription>

module PutLexicon = {
  type t;
  type request = {
@as("Content") content: lexiconContent,
  @as("Name") name: lexiconName
}
  type response = unit
  @module("@aws-sdk/client-polly") @new external new_: (request) => t = "PutLexiconCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteLexicon = {
  type t;
  type request = {
@as("Name") name: lexiconName
}
  type response = unit
  @module("@aws-sdk/client-polly") @new external new_: (request) => t = "DeleteLexiconCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SynthesizeSpeech = {
  type t;
  type request = {
@as("VoiceId") voiceId: voiceId,
  @as("TextType") textType: option<textType>,
  @as("Text") text: text,
  @as("SpeechMarkTypes") speechMarkTypes: option<speechMarkTypeList>,
  @as("SampleRate") sampleRate: option<sampleRate>,
  @as("OutputFormat") outputFormat: outputFormat,
  @as("LexiconNames") lexiconNames: option<lexiconNameList>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("Engine") engine: option<engine>
}
  type response = {
@as("RequestCharacters") requestCharacters: option<requestCharacters>,
  @as("ContentType") contentType: option<contentType>,
  @as("AudioStream") audioStream: option<audioStream>
}
  @module("@aws-sdk/client-polly") @new external new_: (request) => t = "SynthesizeSpeechCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLexicon = {
  type t;
  type request = {
@as("Name") name: lexiconName
}
  type response = {
@as("LexiconAttributes") lexiconAttributes: option<lexiconAttributes>,
  @as("Lexicon") lexicon: option<lexicon>
}
  @module("@aws-sdk/client-polly") @new external new_: (request) => t = "GetLexiconCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartSpeechSynthesisTask = {
  type t;
  type request = {
@as("VoiceId") voiceId: voiceId,
  @as("TextType") textType: option<textType>,
  @as("Text") text: text,
  @as("SpeechMarkTypes") speechMarkTypes: option<speechMarkTypeList>,
  @as("SnsTopicArn") snsTopicArn: option<snsTopicArn>,
  @as("SampleRate") sampleRate: option<sampleRate>,
  @as("OutputS3KeyPrefix") outputS3KeyPrefix: option<outputS3KeyPrefix>,
  @as("OutputS3BucketName") outputS3BucketName: outputS3BucketName,
  @as("OutputFormat") outputFormat: outputFormat,
  @as("LexiconNames") lexiconNames: option<lexiconNameList>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("Engine") engine: option<engine>
}
  type response = {
@as("SynthesisTask") synthesisTask: option<synthesisTask>
}
  @module("@aws-sdk/client-polly") @new external new_: (request) => t = "StartSpeechSynthesisTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSpeechSynthesisTask = {
  type t;
  type request = {
@as("TaskId") taskId: taskId
}
  type response = {
@as("SynthesisTask") synthesisTask: option<synthesisTask>
}
  @module("@aws-sdk/client-polly") @new external new_: (request) => t = "GetSpeechSynthesisTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSpeechSynthesisTasks = {
  type t;
  type request = {
@as("Status") status: option<taskStatus>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("SynthesisTasks") synthesisTasks: option<synthesisTasks>,
  @as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-polly") @new external new_: (request) => t = "ListSpeechSynthesisTasksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLexicons = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Lexicons") lexicons: option<lexiconDescriptionList>
}
  @module("@aws-sdk/client-polly") @new external new_: (request) => t = "ListLexiconsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeVoices = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("IncludeAdditionalLanguageCodes") includeAdditionalLanguageCodes: option<includeAdditionalLanguageCodes>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("Engine") engine: option<engine>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Voices") voices: option<voiceList>
}
  @module("@aws-sdk/client-polly") @new external new_: (request) => t = "DescribeVoicesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
