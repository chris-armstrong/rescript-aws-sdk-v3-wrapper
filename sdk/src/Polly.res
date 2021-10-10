type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-polly") @new
external createClient: unit => awsServiceClient = "PollyClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type voiceName = string
type voiceId = [
  | @as("Zhiyu") #Zhiyu
  | @as("Zeina") #Zeina
  | @as("Vitoria") #Vitoria
  | @as("Vicki") #Vicki
  | @as("Tatyana") #Tatyana
  | @as("Takumi") #Takumi
  | @as("Seoyeon") #Seoyeon
  | @as("Salli") #Salli
  | @as("Russell") #Russell
  | @as("Ruben") #Ruben
  | @as("Ricardo") #Ricardo
  | @as("Raveena") #Raveena
  | @as("Penelope") #Penelope
  | @as("Olivia") #Olivia
  | @as("Nicole") #Nicole
  | @as("Naja") #Naja
  | @as("Mizuki") #Mizuki
  | @as("Miguel") #Miguel
  | @as("Mia") #Mia
  | @as("Maxim") #Maxim
  | @as("Matthew") #Matthew
  | @as("Mathieu") #Mathieu
  | @as("Marlene") #Marlene
  | @as("Maja") #Maja
  | @as("Mads") #Mads
  | @as("Lupe") #Lupe
  | @as("Lucia") #Lucia
  | @as("Lotte") #Lotte
  | @as("Liv") #Liv
  | @as("Lea") #Lea
  | @as("Kimberly") #Kimberly
  | @as("Kevin") #Kevin
  | @as("Kendra") #Kendra
  | @as("Karl") #Karl
  | @as("Justin") #Justin
  | @as("Joey") #Joey
  | @as("Joanna") #Joanna
  | @as("Jan") #Jan
  | @as("Jacek") #Jacek
  | @as("Ivy") #Ivy
  | @as("Ines") #Ines
  | @as("Hans") #Hans
  | @as("Gwyneth") #Gwyneth
  | @as("Giorgio") #Giorgio
  | @as("Geraint") #Geraint
  | @as("Gabrielle") #Gabrielle
  | @as("Filiz") #Filiz
  | @as("Ewa") #Ewa
  | @as("Enrique") #Enrique
  | @as("Emma") #Emma
  | @as("Dora") #Dora
  | @as("Cristiano") #Cristiano
  | @as("Conchita") #Conchita
  | @as("Chantal") #Chantal
  | @as("Celine") #Celine
  | @as("Carmen") #Carmen
  | @as("Carla") #Carla
  | @as("Camila") #Camila
  | @as("Brian") #Brian
  | @as("Bianca") #Bianca
  | @as("Astrid") #Astrid
  | @as("Amy") #Amy
  | @as("Aditi") #Aditi
]
type textType = [@as("text") #Text | @as("ssml") #Ssml]
type text = string
type taskStatusReason = string
type taskStatus = [
  | @as("failed") #Failed
  | @as("completed") #Completed
  | @as("inProgress") #InProgress
  | @as("scheduled") #Scheduled
]
type taskId = string
type speechMarkType = [
  | @as("word") #Word
  | @as("viseme") #Viseme
  | @as("ssml") #Ssml
  | @as("sentence") #Sentence
]
type snsTopicArn = string
type size = int
type sampleRate = string
type requestCharacters = int
type outputUri = string
type outputS3KeyPrefix = string
type outputS3BucketName = string
type outputFormat = [
  | @as("pcm") #Pcm
  | @as("ogg_vorbis") #Ogg_Vorbis
  | @as("mp3") #Mp3
  | @as("json") #Json
]
type nextToken = string
type maxResults = int
type lexiconName = string
type lexiconContent = string
type lexiconArn = string
type lexemesCount = int
type lastModified = Js.Date.t
type languageName = string
type languageCode = [
  | @as("tr-TR") #Tr_TR
  | @as("sv-SE") #Sv_SE
  | @as("ru-RU") #Ru_RU
  | @as("ro-RO") #Ro_RO
  | @as("pt-PT") #Pt_PT
  | @as("pt-BR") #Pt_BR
  | @as("pl-PL") #Pl_PL
  | @as("nl-NL") #Nl_NL
  | @as("nb-NO") #Nb_NO
  | @as("ko-KR") #Ko_KR
  | @as("hi-IN") #Hi_IN
  | @as("ja-JP") #Ja_JP
  | @as("it-IT") #It_IT
  | @as("is-IS") #Is_IS
  | @as("fr-FR") #Fr_FR
  | @as("fr-CA") #Fr_CA
  | @as("es-US") #Es_US
  | @as("es-MX") #Es_MX
  | @as("es-ES") #Es_ES
  | @as("en-US") #En_US
  | @as("en-IN") #En_IN
  | @as("en-GB-WLS") #En_GB_WLS
  | @as("en-GB") #En_GB
  | @as("en-AU") #En_AU
  | @as("de-DE") #De_DE
  | @as("da-DK") #Da_DK
  | @as("cy-GB") #Cy_GB
  | @as("cmn-CN") #Cmn_CN
  | @as("arb") #Arb
]
type includeAdditionalLanguageCodes = bool
type gender = [@as("Male") #Male | @as("Female") #Female]
type errorMessage = string
type engine = [@as("neural") #Neural | @as("standard") #Standard]
type dateTime = Js.Date.t
type contentType = string
type audioStream = NodeJs.Buffer.t
type alphabet = string
type speechMarkTypeList = array<speechMarkType>
type lexiconNameList = array<lexiconName>
@ocaml.doc("<p>Contains metadata describing the lexicon such as the number of lexemes, language code,
      and so on. For more information, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html\">Managing
        Lexicons</a>.</p>")
type lexiconAttributes = {
  @ocaml.doc("<p>Total size of the lexicon, in characters.</p>") @as("Size") size: option<size>,
  @ocaml.doc("<p>Number of lexemes in the lexicon.</p>") @as("LexemesCount")
  lexemesCount: option<lexemesCount>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the lexicon.</p>") @as("LexiconArn")
  lexiconArn: option<lexiconArn>,
  @ocaml.doc("<p>Date lexicon was last modified (a timestamp value).</p>") @as("LastModified")
  lastModified: option<lastModified>,
  @ocaml.doc("<p>Language code that the lexicon applies to. A lexicon with a language code such as \"en\"
      would be applied to all English languages (en-GB, en-US, en-AUS, en-WLS, and so on.</p>")
  @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>Phonetic alphabet used in the lexicon. Valid values are <code>ipa</code> and
        <code>x-sampa</code>.</p>")
  @as("Alphabet")
  alphabet: option<alphabet>,
}
@ocaml.doc("<p>Provides lexicon name and lexicon content in string format. For more information, see
        <a href=\"https://www.w3.org/TR/pronunciation-lexicon/\">Pronunciation Lexicon
        Specification (PLS) Version 1.0</a>.</p>")
type lexicon = {
  @ocaml.doc("<p>Name of the lexicon.</p>") @as("Name") name: option<lexiconName>,
  @ocaml.doc("<p>Lexicon content in string format. The content of a lexicon must be in PLS
      format.</p>")
  @as("Content")
  content: option<lexiconContent>,
}
type languageCodeList = array<languageCode>
type engineList = array<engine>
@ocaml.doc("<p>Description of the voice.</p>")
type voice = {
  @ocaml.doc("<p>Specifies which engines (<code>standard</code> or <code>neural</code>) that are supported
      by a given voice.</p>")
  @as("SupportedEngines")
  supportedEngines: option<engineList>,
  @ocaml.doc("<p>Additional codes for languages available for the specified voice in addition to its
      default language. </p>
         <p>For example, the default language for Aditi is Indian English (en-IN) because it was first
      used for that language. Since Aditi is bilingual and fluent in both Indian English and Hindi,
      this parameter would show the code <code>hi-IN</code>.</p>")
  @as("AdditionalLanguageCodes")
  additionalLanguageCodes: option<languageCodeList>,
  @ocaml.doc("<p>Name of the voice (for example, Salli, Kendra, etc.). This provides a human readable
      voice name that you might display in your application.</p>")
  @as("Name")
  name: option<voiceName>,
  @ocaml.doc("<p>Human readable name of the language in English.</p>") @as("LanguageName")
  languageName: option<languageName>,
  @ocaml.doc("<p>Language code of the voice.</p>") @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>Amazon Polly assigned voice ID. This is the ID that you specify when calling the
        <code>SynthesizeSpeech</code> operation.</p>")
  @as("Id")
  id: option<voiceId>,
  @ocaml.doc("<p>Gender of the voice.</p>") @as("Gender") gender: option<gender>,
}
@ocaml.doc("<p>SynthesisTask object that provides information about a speech synthesis task.</p>")
type synthesisTask = {
  @ocaml.doc("<p>Optional language code for a synthesis task. This is only necessary if using a bilingual
      voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN). </p>
         <p>If a bilingual voice is used and no language code is specified, Amazon Polly will use the
      default language of the bilingual voice. The default language for any voice is the one
      returned by the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html\">DescribeVoices</a> operation for the <code>LanguageCode</code> parameter. For example,
      if no language code is specified, Aditi will use Indian English rather than Hindi.</p>")
  @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>Voice ID to use for the synthesis. </p>") @as("VoiceId") voiceId: option<voiceId>,
  @ocaml.doc("<p>Specifies whether the input text is plain text or SSML. The default value is plain text.
    </p>")
  @as("TextType")
  textType: option<textType>,
  @ocaml.doc("<p>The type of speech marks returned for the input text.</p>") @as("SpeechMarkTypes")
  speechMarkTypes: option<speechMarkTypeList>,
  @ocaml.doc("<p>The audio frequency specified in Hz.</p>
         <p>The valid values for mp3 and ogg_vorbis are \"8000\", \"16000\", \"22050\", and \"24000\". The
      default value for standard voices is \"22050\". The default value for neural voices is
      \"24000\".</p>
         <p>Valid values for pcm are \"8000\" and \"16000\" The default value is \"16000\". </p>")
  @as("SampleRate")
  sampleRate: option<sampleRate>,
  @ocaml.doc("<p>The format in which the returned output will be encoded. For audio stream, this will be
      mp3, ogg_vorbis, or pcm. For speech marks, this will be json. </p>")
  @as("OutputFormat")
  outputFormat: option<outputFormat>,
  @ocaml.doc("<p>List of one or more pronunciation lexicon names you want the service to apply during
      synthesis. Lexicons are applied only if the language of the lexicon is the same as the
      language of the voice. </p>")
  @as("LexiconNames")
  lexiconNames: option<lexiconNameList>,
  @ocaml.doc("<p>ARN for the SNS topic optionally used for providing status notification for a speech
      synthesis task.</p>")
  @as("SnsTopicArn")
  snsTopicArn: option<snsTopicArn>,
  @ocaml.doc("<p>Number of billable characters synthesized.</p>") @as("RequestCharacters")
  requestCharacters: option<requestCharacters>,
  @ocaml.doc("<p>Timestamp for the time the synthesis task was started.</p>") @as("CreationTime")
  creationTime: option<dateTime>,
  @ocaml.doc("<p>Pathway for the output speech file.</p>") @as("OutputUri")
  outputUri: option<outputUri>,
  @ocaml.doc("<p>Reason for the current status of a specific speech synthesis task, including errors if the
      task has failed.</p>")
  @as("TaskStatusReason")
  taskStatusReason: option<taskStatusReason>,
  @ocaml.doc("<p>Current status of the individual speech synthesis task.</p>") @as("TaskStatus")
  taskStatus: option<taskStatus>,
  @ocaml.doc("<p>The Amazon Polly generated identifier for a speech synthesis task.</p>")
  @as("TaskId")
  taskId: option<taskId>,
  @ocaml.doc("<p>Specifies the engine (<code>standard</code> or <code>neural</code>) for Amazon Polly to
      use when processing input text for speech synthesis. Using a voice that is not supported for
      the engine selected will result in an error.</p>")
  @as("Engine")
  engine: option<engine>,
}
@ocaml.doc("<p>Describes the content of the lexicon.</p>")
type lexiconDescription = {
  @ocaml.doc("<p>Provides lexicon metadata.</p>") @as("Attributes")
  attributes: option<lexiconAttributes>,
  @ocaml.doc("<p>Name of the lexicon.</p>") @as("Name") name: option<lexiconName>,
}
type voiceList = array<voice>
type synthesisTasks = array<synthesisTask>
type lexiconDescriptionList = array<lexiconDescription>
@ocaml.doc("<p>Amazon Polly is a web service that makes it easy to synthesize speech from
      text.</p>
         <p>The Amazon Polly service provides API operations for synthesizing high-quality speech
      from plain text and Speech Synthesis Markup Language (SSML), along with managing
      pronunciations lexicons that enable you to get the best results for your application
      domain.</p>")
module PutLexicon = {
  type t
  type request = {
    @ocaml.doc("<p>Content of the PLS lexicon as string data.</p>") @as("Content")
    content: lexiconContent,
    @ocaml.doc("<p>Name of the lexicon. The name must follow the regular express format [0-9A-Za-z]{1,20}.
      That is, the name is a case-sensitive alphanumeric string up to 20 characters long. </p>")
    @as("Name")
    name: lexiconName,
  }

  @module("@aws-sdk/client-polly") @new external new: request => t = "PutLexiconCommand"
  let make = (~content, ~name, ()) => new({content: content, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLexicon = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the lexicon to delete. Must be an existing lexicon in the region.</p>"
    )
    @as("Name")
    name: lexiconName,
  }

  @module("@aws-sdk/client-polly") @new external new: request => t = "DeleteLexiconCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SynthesizeSpeech = {
  type t
  type request = {
    @ocaml.doc("<p> Voice ID to use for the synthesis. You can get a list of available voice IDs by
      calling the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html\">DescribeVoices</a> operation. </p>")
    @as("VoiceId")
    voiceId: voiceId,
    @ocaml.doc("<p> Specifies whether the input text is plain text or SSML. The default value is plain
      text. For more information, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/ssml.html\">Using SSML</a>.</p>")
    @as("TextType")
    textType: option<textType>,
    @ocaml.doc("<p> Input text to synthesize. If you specify <code>ssml</code> as the
        <code>TextType</code>, follow the SSML format for the input text. </p>")
    @as("Text")
    text: text,
    @ocaml.doc("<p>The type of speech marks returned for the input text.</p>")
    @as("SpeechMarkTypes")
    speechMarkTypes: option<speechMarkTypeList>,
    @ocaml.doc("<p>The audio frequency specified in Hz.</p>
         <p>The valid values for mp3 and ogg_vorbis are \"8000\", \"16000\", \"22050\", and \"24000\". The
      default value for standard voices is \"22050\". The default value for neural voices is
      \"24000\".</p>
         <p>Valid values for pcm are \"8000\" and \"16000\" The default value is \"16000\". </p>")
    @as("SampleRate")
    sampleRate: option<sampleRate>,
    @ocaml.doc("<p> The format in which the returned output will be encoded. For audio stream, this will
      be mp3, ogg_vorbis, or pcm. For speech marks, this will be json. </p>
         <p>When pcm is used, the content returned is audio/pcm in a signed 16-bit, 1 channel
      (mono), little-endian format. </p>")
    @as("OutputFormat")
    outputFormat: outputFormat,
    @ocaml.doc("<p>List of one or more pronunciation lexicon names you want the service to apply during
      synthesis. Lexicons are applied only if the language of the lexicon is the same as the
      language of the voice. For information about storing lexicons, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html\">PutLexicon</a>.</p>")
    @as("LexiconNames")
    lexiconNames: option<lexiconNameList>,
    @ocaml.doc("<p>Optional language code for the Synthesize Speech request. This is only necessary if using
      a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi
      (hi-IN). </p>
         <p>If a bilingual voice is used and no language code is specified, Amazon Polly will use the
      default language of the bilingual voice. The default language for any voice is the one
      returned by the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html\">DescribeVoices</a> operation for the <code>LanguageCode</code> parameter. For example,
      if no language code is specified, Aditi will use Indian English rather than Hindi.</p>")
    @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>Specifies the engine (<code>standard</code> or <code>neural</code>) for Amazon Polly to
      use when processing input text for speech synthesis. For information on Amazon Polly voices and which voices are available in standard-only, NTTS-only, and 
      both standard and NTTS formats, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/voicelist.html\">Available Voices</a>.</p>
         <p>
            <b>NTTS-only voices</b>
         </p>
         <p>When using NTTS-only voices such as Kevin (en-US), this parameter is required and must be
      set to <code>neural</code>. If the engine is not specified, or is set to <code>standard</code>,
      this will result in an error. </p>
         <p>Type: String</p>
         <p>Valid Values: <code>standard</code>  |  <code>neural</code>
         </p>
         <p>Required: Yes</p>
    
         <p>
            <b>Standard voices</b>
         </p>
         <p>For standard voices, this is not required; the engine parameter defaults to
      <code>standard</code>. If the engine is not specified, or is set to <code>standard</code> and
      an NTTS-only voice is selected, this will result in an error. </p>")
    @as("Engine")
    engine: option<engine>,
  }
  type response = {
    @ocaml.doc("<p>Number of characters synthesized.</p>") @as("RequestCharacters")
    requestCharacters: option<requestCharacters>,
    @ocaml.doc("<p> Specifies the type audio stream. This should reflect the <code>OutputFormat</code>
      parameter in your request. </p>
         <ul>
            <li>
               <p> If you request <code>mp3</code> as the <code>OutputFormat</code>, the
            <code>ContentType</code> returned is audio/mpeg. </p>
            </li>
            <li>
               <p> If you request <code>ogg_vorbis</code> as the <code>OutputFormat</code>, the
            <code>ContentType</code> returned is audio/ogg. </p>
            </li>
            <li>
               <p> If you request <code>pcm</code> as the <code>OutputFormat</code>, the
            <code>ContentType</code> returned is audio/pcm in a signed 16-bit, 1 channel (mono),
          little-endian format. </p>
            </li>
            <li>
               <p>If you request <code>json</code> as the <code>OutputFormat</code>, the
            <code>ContentType</code> returned is audio/json.</p>
            </li>
         </ul>
         <p> </p>")
    @as("ContentType")
    contentType: option<contentType>,
    @ocaml.doc("<p> Stream containing the synthesized speech. </p>") @as("AudioStream")
    audioStream: option<audioStream>,
  }
  @module("@aws-sdk/client-polly") @new external new: request => t = "SynthesizeSpeechCommand"
  let make = (
    ~voiceId,
    ~text,
    ~outputFormat,
    ~textType=?,
    ~speechMarkTypes=?,
    ~sampleRate=?,
    ~lexiconNames=?,
    ~languageCode=?,
    ~engine=?,
    (),
  ) =>
    new({
      voiceId: voiceId,
      textType: textType,
      text: text,
      speechMarkTypes: speechMarkTypes,
      sampleRate: sampleRate,
      outputFormat: outputFormat,
      lexiconNames: lexiconNames,
      languageCode: languageCode,
      engine: engine,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLexicon = {
  type t
  type request = {@ocaml.doc("<p>Name of the lexicon.</p>") @as("Name") name: lexiconName}
  type response = {
    @ocaml.doc("<p>Metadata of the lexicon, including phonetic alphabetic used, language code, lexicon
      ARN, number of lexemes defined in the lexicon, and size of lexicon in bytes.</p>")
    @as("LexiconAttributes")
    lexiconAttributes: option<lexiconAttributes>,
    @ocaml.doc("<p>Lexicon object that provides name and the string content of the lexicon. </p>")
    @as("Lexicon")
    lexicon: option<lexicon>,
  }
  @module("@aws-sdk/client-polly") @new external new: request => t = "GetLexiconCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartSpeechSynthesisTask = {
  type t
  type request = {
    @ocaml.doc("<p>Voice ID to use for the synthesis. </p>") @as("VoiceId") voiceId: voiceId,
    @ocaml.doc("<p>Specifies whether the input text is plain text or SSML. The default value is plain text.
    </p>")
    @as("TextType")
    textType: option<textType>,
    @ocaml.doc("<p>The input text to synthesize. If you specify ssml as the TextType, follow the SSML format
      for the input text. </p>")
    @as("Text")
    text: text,
    @ocaml.doc("<p>The type of speech marks returned for the input text.</p>")
    @as("SpeechMarkTypes")
    speechMarkTypes: option<speechMarkTypeList>,
    @ocaml.doc("<p>ARN for the SNS topic optionally used for providing status notification for a speech
      synthesis task.</p>")
    @as("SnsTopicArn")
    snsTopicArn: option<snsTopicArn>,
    @ocaml.doc("<p>The audio frequency specified in Hz.</p>
         <p>The valid values for mp3 and ogg_vorbis are \"8000\", \"16000\", \"22050\", and \"24000\". The
      default value for standard voices is \"22050\". The default value for neural voices is
      \"24000\".</p>
         <p>Valid values for pcm are \"8000\" and \"16000\" The default value is \"16000\". </p>")
    @as("SampleRate")
    sampleRate: option<sampleRate>,
    @ocaml.doc("<p>The Amazon S3 key prefix for the output speech file.</p>")
    @as("OutputS3KeyPrefix")
    outputS3KeyPrefix: option<outputS3KeyPrefix>,
    @ocaml.doc("<p>Amazon S3 bucket name to which the output file will be saved.</p>")
    @as("OutputS3BucketName")
    outputS3BucketName: outputS3BucketName,
    @ocaml.doc("<p>The format in which the returned output will be encoded. For audio stream, this will be
      mp3, ogg_vorbis, or pcm. For speech marks, this will be json. </p>")
    @as("OutputFormat")
    outputFormat: outputFormat,
    @ocaml.doc("<p>List of one or more pronunciation lexicon names you want the service to apply during
      synthesis. Lexicons are applied only if the language of the lexicon is the same as the
      language of the voice. </p>")
    @as("LexiconNames")
    lexiconNames: option<lexiconNameList>,
    @ocaml.doc("<p>Optional language code for the Speech Synthesis request. This is only necessary if using a
      bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi
      (hi-IN). </p>
         <p>If a bilingual voice is used and no language code is specified, Amazon Polly will use the
      default language of the bilingual voice. The default language for any voice is the one
      returned by the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html\">DescribeVoices</a> operation for the <code>LanguageCode</code> parameter. For example,
      if no language code is specified, Aditi will use Indian English rather than Hindi.</p>")
    @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>Specifies the engine (<code>standard</code> or <code>neural</code>) for Amazon Polly to
      use when processing input text for speech synthesis. Using a voice that is not supported for
      the engine selected will result in an error.</p>")
    @as("Engine")
    engine: option<engine>,
  }
  type response = {
    @ocaml.doc("<p>SynthesisTask object that provides information and attributes about a newly submitted
      speech synthesis task.</p>")
    @as("SynthesisTask")
    synthesisTask: option<synthesisTask>,
  }
  @module("@aws-sdk/client-polly") @new
  external new: request => t = "StartSpeechSynthesisTaskCommand"
  let make = (
    ~voiceId,
    ~text,
    ~outputS3BucketName,
    ~outputFormat,
    ~textType=?,
    ~speechMarkTypes=?,
    ~snsTopicArn=?,
    ~sampleRate=?,
    ~outputS3KeyPrefix=?,
    ~lexiconNames=?,
    ~languageCode=?,
    ~engine=?,
    (),
  ) =>
    new({
      voiceId: voiceId,
      textType: textType,
      text: text,
      speechMarkTypes: speechMarkTypes,
      snsTopicArn: snsTopicArn,
      sampleRate: sampleRate,
      outputS3KeyPrefix: outputS3KeyPrefix,
      outputS3BucketName: outputS3BucketName,
      outputFormat: outputFormat,
      lexiconNames: lexiconNames,
      languageCode: languageCode,
      engine: engine,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSpeechSynthesisTask = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Polly generated identifier for a speech synthesis task.</p>")
    @as("TaskId")
    taskId: taskId,
  }
  type response = {
    @ocaml.doc("<p>SynthesisTask object that provides information from the requested task, including output
      format, creation time, task status, and so on.</p>")
    @as("SynthesisTask")
    synthesisTask: option<synthesisTask>,
  }
  @module("@aws-sdk/client-polly") @new external new: request => t = "GetSpeechSynthesisTaskCommand"
  let make = (~taskId, ()) => new({taskId: taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSpeechSynthesisTasks = {
  type t
  type request = {
    @ocaml.doc("<p>Status of the speech synthesis tasks returned in a List operation</p>")
    @as("Status")
    status: option<taskStatus>,
    @ocaml.doc("<p>The pagination token to use in the next request to continue the listing of speech
      synthesis tasks. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Maximum number of speech synthesis tasks returned in a List operation.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>List of SynthesisTask objects that provides information from the specified task in the
      list request, including output format, creation time, task status, and so on.</p>")
    @as("SynthesisTasks")
    synthesisTasks: option<synthesisTasks>,
    @ocaml.doc("<p>An opaque pagination token returned from the previous List operation in this request. If
      present, this indicates where to continue the listing.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-polly") @new
  external new: request => t = "ListSpeechSynthesisTasksCommand"
  let make = (~status=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({status: status, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLexicons = {
  type t
  type request = {
    @ocaml.doc("<p>An opaque pagination token returned from previous <code>ListLexicons</code> operation.
      If present, indicates where to continue the list of lexicons.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use in the next request to continue the listing of lexicons.
        <code>NextToken</code> is returned only if the response is truncated.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of lexicon names and attributes.</p>") @as("Lexicons")
    lexicons: option<lexiconDescriptionList>,
  }
  @module("@aws-sdk/client-polly") @new external new: request => t = "ListLexiconsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVoices = {
  type t
  type request = {
    @ocaml.doc("<p>An opaque pagination token returned from the previous <code>DescribeVoices</code>
      operation. If present, this indicates where to continue the listing.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Boolean value indicating whether to return any bilingual voices that use the specified
      language as an additional language. For instance, if you request all languages that use US
      English (es-US), and there is an Italian voice that speaks both Italian (it-IT) and US
      English, that voice will be included if you specify <code>yes</code> but not if you specify
        <code>no</code>.</p>")
    @as("IncludeAdditionalLanguageCodes")
    includeAdditionalLanguageCodes: option<includeAdditionalLanguageCodes>,
    @ocaml.doc("<p> The language identification tag (ISO 639 code for the language name-ISO 3166 country
      code) for filtering the list of voices returned. If you don't specify this optional parameter,
      all available voices are returned. </p>")
    @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>Specifies the engine (<code>standard</code> or <code>neural</code>) used by Amazon Polly
      when processing input text for speech synthesis. </p>")
    @as("Engine")
    engine: option<engine>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use in the next request to continue the listing of voices.
        <code>NextToken</code> is returned only if the response is truncated.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of voices with their properties.</p>") @as("Voices")
    voices: option<voiceList>,
  }
  @module("@aws-sdk/client-polly") @new external new: request => t = "DescribeVoicesCommand"
  let make = (~nextToken=?, ~includeAdditionalLanguageCodes=?, ~languageCode=?, ~engine=?, ()) =>
    new({
      nextToken: nextToken,
      includeAdditionalLanguageCodes: includeAdditionalLanguageCodes,
      languageCode: languageCode,
      engine: engine,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
