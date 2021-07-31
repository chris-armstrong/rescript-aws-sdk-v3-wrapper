type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type voiceName = string
type voiceId = [@as("Zhiyu") #Zhiyu | @as("Zeina") #Zeina | @as("Vitoria") #Vitoria | @as("Vicki") #Vicki | @as("Tatyana") #Tatyana | @as("Takumi") #Takumi | @as("Seoyeon") #Seoyeon | @as("Salli") #Salli | @as("Russell") #Russell | @as("Ruben") #Ruben | @as("Ricardo") #Ricardo | @as("Raveena") #Raveena | @as("Penelope") #Penelope | @as("Olivia") #Olivia | @as("Nicole") #Nicole | @as("Naja") #Naja | @as("Mizuki") #Mizuki | @as("Miguel") #Miguel | @as("Mia") #Mia | @as("Maxim") #Maxim | @as("Matthew") #Matthew | @as("Mathieu") #Mathieu | @as("Marlene") #Marlene | @as("Maja") #Maja | @as("Mads") #Mads | @as("Lupe") #Lupe | @as("Lucia") #Lucia | @as("Lotte") #Lotte | @as("Liv") #Liv | @as("Lea") #Lea | @as("Kimberly") #Kimberly | @as("Kevin") #Kevin | @as("Kendra") #Kendra | @as("Karl") #Karl | @as("Justin") #Justin | @as("Joey") #Joey | @as("Joanna") #Joanna | @as("Jan") #Jan | @as("Jacek") #Jacek | @as("Ivy") #Ivy | @as("Ines") #Ines | @as("Hans") #Hans | @as("Gwyneth") #Gwyneth | @as("Giorgio") #Giorgio | @as("Geraint") #Geraint | @as("Gabrielle") #Gabrielle | @as("Filiz") #Filiz | @as("Ewa") #Ewa | @as("Enrique") #Enrique | @as("Emma") #Emma | @as("Dora") #Dora | @as("Cristiano") #Cristiano | @as("Conchita") #Conchita | @as("Chantal") #Chantal | @as("Celine") #Celine | @as("Carmen") #Carmen | @as("Carla") #Carla | @as("Camila") #Camila | @as("Brian") #Brian | @as("Bianca") #Bianca | @as("Astrid") #Astrid | @as("Amy") #Amy | @as("Aditi") #Aditi]
type textType = [@as("text") #text | @as("ssml") #ssml]
type text = string
type taskStatusReason = string
type taskStatus = [@as("failed") #failed | @as("completed") #completed | @as("inProgress") #inProgress | @as("scheduled") #scheduled]
type taskId = string
type speechMarkType = [@as("word") #word | @as("viseme") #viseme | @as("ssml") #ssml | @as("sentence") #sentence]
type snsTopicArn = string
type size = int;
type sampleRate = string
type requestCharacters = int;
type outputUri = string
type outputS3KeyPrefix = string
type outputS3BucketName = string
type outputFormat = [@as("pcm") #pcm | @as("ogg_vorbis") #ogg_vorbis | @as("mp3") #mp3 | @as("json") #json]
type nextToken = string
type maxResults = int;
type lexiconName = string
type lexiconContent = string
type lexiconArn = string
type lexemesCount = int;
type lastModified = Js.Date.t;
type languageName = string
type languageCode = [@as("tr-TR") #tr_TR | @as("sv-SE") #sv_SE | @as("ru-RU") #ru_RU | @as("ro-RO") #ro_RO | @as("pt-PT") #pt_PT | @as("pt-BR") #pt_BR | @as("pl-PL") #pl_PL | @as("nl-NL") #nl_NL | @as("nb-NO") #nb_NO | @as("ko-KR") #ko_KR | @as("hi-IN") #hi_IN | @as("ja-JP") #ja_JP | @as("it-IT") #it_IT | @as("is-IS") #is_IS | @as("fr-FR") #fr_FR | @as("fr-CA") #fr_CA | @as("es-US") #es_US | @as("es-MX") #es_MX | @as("es-ES") #es_ES | @as("en-US") #en_US | @as("en-IN") #en_IN | @as("en-GB-WLS") #en_GB_WLS | @as("en-GB") #en_GB | @as("en-AU") #en_AU | @as("de-DE") #de_DE | @as("da-DK") #da_DK | @as("cy-GB") #cy_GB | @as("cmn-CN") #cmn_CN | @as("arb") #arb]
type includeAdditionalLanguageCodes = bool;
type gender = [@as("Male") #Male | @as("Female") #Female]
type errorMessage = string
type engine = [@as("neural") #neural | @as("standard") #standard]
type dateTime = Js.Date.t;
type contentType = string
type audioStream = NodeJs.Buffer.t;
type alphabet = string
type speechMarkTypeList = array<speechMarkType>
type lexiconNameList = array<lexiconName>
type lexiconAttributes = {
@as("Size") size: size,
@as("LexemesCount") lexemesCount: lexemesCount,
@as("LexiconArn") lexiconArn: lexiconArn,
@as("LastModified") lastModified: lastModified,
@as("LanguageCode") languageCode: languageCode,
@as("Alphabet") alphabet: alphabet
}
type lexicon = {
@as("Name") name: lexiconName,
@as("Content") content: lexiconContent
}
type languageCodeList = array<languageCode>
type engineList = array<engine>
type voice = {
@as("SupportedEngines") supportedEngines: engineList,
@as("AdditionalLanguageCodes") additionalLanguageCodes: languageCodeList,
@as("Name") name: voiceName,
@as("LanguageName") languageName: languageName,
@as("LanguageCode") languageCode: languageCode,
@as("Id") id: voiceId,
@as("Gender") gender: gender
}
type synthesisTask = {
@as("LanguageCode") languageCode: languageCode,
@as("VoiceId") voiceId: voiceId,
@as("TextType") textType: textType,
@as("SpeechMarkTypes") speechMarkTypes: speechMarkTypeList,
@as("SampleRate") sampleRate: sampleRate,
@as("OutputFormat") outputFormat: outputFormat,
@as("LexiconNames") lexiconNames: lexiconNameList,
@as("SnsTopicArn") snsTopicArn: snsTopicArn,
@as("RequestCharacters") requestCharacters: requestCharacters,
@as("CreationTime") creationTime: dateTime,
@as("OutputUri") outputUri: outputUri,
@as("TaskStatusReason") taskStatusReason: taskStatusReason,
@as("TaskStatus") taskStatus: taskStatus,
@as("TaskId") taskId: taskId,
@as("Engine") engine: engine
}
type lexiconDescription = {
@as("Attributes") attributes: lexiconAttributes,
@as("Name") name: lexiconName
}
type voiceList = array<voice>
type synthesisTasks = array<synthesisTask>
type lexiconDescriptionList = array<lexiconDescription>
type clientType;
@module("@aws-sdk/client-polly") @new external createClient: unit => clientType = "PollyClient";
module PutLexicon = {
  type t;
  type request = {
@as("Content") content: option<lexiconContent>,
@as("Name") name: option<lexiconName>
}
  type response = unit
  @module("@aws-sdk/client-polly") @new external new_: (Js.Promise.t<request>) => t = "PutLexiconCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLexicon = {
  type t;
  type request = {
@as("Name") name: option<lexiconName>
}
  type response = unit
  @module("@aws-sdk/client-polly") @new external new_: (Js.Promise.t<request>) => t = "DeleteLexiconCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SynthesizeSpeech = {
  type t;
  type request = {
@as("VoiceId") voiceId: option<voiceId>,
@as("TextType") textType: textType,
@as("Text") text: option<text>,
@as("SpeechMarkTypes") speechMarkTypes: speechMarkTypeList,
@as("SampleRate") sampleRate: sampleRate,
@as("OutputFormat") outputFormat: option<outputFormat>,
@as("LexiconNames") lexiconNames: lexiconNameList,
@as("LanguageCode") languageCode: languageCode,
@as("Engine") engine: engine
}
  type response = {
@as("RequestCharacters") requestCharacters: requestCharacters,
@as("ContentType") contentType: contentType,
@as("AudioStream") audioStream: audioStream
}
  @module("@aws-sdk/client-polly") @new external new_: (Js.Promise.t<request>) => t = "SynthesizeSpeechCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLexicon = {
  type t;
  type request = {
@as("Name") name: option<lexiconName>
}
  type response = {
@as("LexiconAttributes") lexiconAttributes: lexiconAttributes,
@as("Lexicon") lexicon: lexicon
}
  @module("@aws-sdk/client-polly") @new external new_: (Js.Promise.t<request>) => t = "GetLexiconCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartSpeechSynthesisTask = {
  type t;
  type request = {
@as("VoiceId") voiceId: option<voiceId>,
@as("TextType") textType: textType,
@as("Text") text: option<text>,
@as("SpeechMarkTypes") speechMarkTypes: speechMarkTypeList,
@as("SnsTopicArn") snsTopicArn: snsTopicArn,
@as("SampleRate") sampleRate: sampleRate,
@as("OutputS3KeyPrefix") outputS3KeyPrefix: outputS3KeyPrefix,
@as("OutputS3BucketName") outputS3BucketName: option<outputS3BucketName>,
@as("OutputFormat") outputFormat: option<outputFormat>,
@as("LexiconNames") lexiconNames: lexiconNameList,
@as("LanguageCode") languageCode: languageCode,
@as("Engine") engine: engine
}
  type response = {
@as("SynthesisTask") synthesisTask: synthesisTask
}
  @module("@aws-sdk/client-polly") @new external new_: (Js.Promise.t<request>) => t = "StartSpeechSynthesisTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSpeechSynthesisTask = {
  type t;
  type request = {
@as("TaskId") taskId: option<taskId>
}
  type response = {
@as("SynthesisTask") synthesisTask: synthesisTask
}
  @module("@aws-sdk/client-polly") @new external new_: (Js.Promise.t<request>) => t = "GetSpeechSynthesisTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSpeechSynthesisTasks = {
  type t;
  type request = {
@as("Status") status: taskStatus,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("SynthesisTasks") synthesisTasks: synthesisTasks,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-polly") @new external new_: (Js.Promise.t<request>) => t = "ListSpeechSynthesisTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLexicons = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Lexicons") lexicons: lexiconDescriptionList
}
  @module("@aws-sdk/client-polly") @new external new_: (Js.Promise.t<request>) => t = "ListLexiconsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVoices = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("IncludeAdditionalLanguageCodes") includeAdditionalLanguageCodes: includeAdditionalLanguageCodes,
@as("LanguageCode") languageCode: languageCode,
@as("Engine") engine: engine
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Voices") voices: voiceList
}
  @module("@aws-sdk/client-polly") @new external new_: (Js.Promise.t<request>) => t = "DescribeVoicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
