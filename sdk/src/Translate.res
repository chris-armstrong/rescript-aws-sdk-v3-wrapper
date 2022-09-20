type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-translate") @new
external createClient: unit => awsServiceClient = "TranslateClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type unboundedLengthString = string
type timestamp_ = Js.Date.t
type terminologyFile = NodeJs.Buffer.t
type terminologyDataFormat = [@as("TSV") #TSV | @as("TMX") #TMX | @as("CSV") #CSV]
type terminologyArn = string
type string_ = string
type s3Uri = string
type resourceName = string
type profanity = [@as("MASK") #MASK]
type parallelDataStatus = [
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("UPDATING") #UPDATING
  | @as("CREATING") #CREATING
]
type parallelDataFormat = [@as("TMX") #TMX | @as("CSV") #CSV | @as("TSV") #TSV]
type parallelDataArn = string
type nextToken = string
type mergeStrategy = [@as("OVERWRITE") #OVERWRITE]
type maxResultsInteger = int
type long = float
type languageCodeString = string
type jobStatus = [
  | @as("STOPPED") #STOPPED
  | @as("STOP_REQUESTED") #STOP_REQUESTED
  | @as("FAILED") #FAILED
  | @as("COMPLETED_WITH_ERROR") #COMPLETED_WITH_ERROR
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("SUBMITTED") #SUBMITTED
]
type jobName = string
type jobId = string
type integer_ = int
type iamRoleArn = string
type formality = [@as("INFORMAL") #INFORMAL | @as("FORMAL") #FORMAL]
type encryptionKeyType = [@as("KMS") #KMS]
type encryptionKeyID = string
type directionality = [@as("MULTI") #MULTI | @as("UNI") #UNI]
type description = string
type contentType = string
type clientTokenString = string
type boundedLengthString = string
@ocaml.doc("<p>Settings that configure the translation output.</p>")
type translationSettings = {
  @ocaml.doc("<p>Enable the profanity setting if you want Amazon Translate to mask profane words and
      phrases in your translation output.</p>
         <p>To mask profane words and phrases, Amazon Translate replaces them with the grawlix string
      “?$#@$“. This 5-character sequence is used for each profane word or phrase, regardless of the
      length or number of words.</p>
         <p>Amazon Translate does not detect profanity in all of its supported languages. For
      languages that support profanity detection, see <a href=\"https://docs.aws.amazon.com/translate/latest/dg/what-is.html#what-is-languages\">Supported
        Languages and Language Codes in the Amazon Translate Developer Guide</a>.</p>")
  @as("Profanity")
  profanity: option<profanity>,
  @as("Formality") formality: option<formality>,
}
@ocaml.doc("<p>Provides information for filtering a list of translation jobs. For more information, see
        <a>ListTextTranslationJobs</a>.</p>")
type textTranslationJobFilter = {
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing and
      returns only the jobs submitted after the specified time. Jobs are returned in descending
      order, newest to oldest.</p>")
  @as("SubmittedAfterTime")
  submittedAfterTime: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing and
      returns only the jobs submitted before the specified time. Jobs are returned in ascending
      order, oldest to newest.</p>")
  @as("SubmittedBeforeTime")
  submittedBeforeTime: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based by job status.</p>") @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>Filters the list of jobs by name.</p>") @as("JobName") jobName: option<jobName>,
}
@ocaml.doc("<p>The location of the custom terminology data.</p>")
type terminologyDataLocation = {
  @ocaml.doc("<p>The Amazon S3 location of the most recent custom terminology input file that was
      successfully imported into Amazon Translate. The location is returned as a presigned URL that
      has a 30 minute expiration.</p>
    
         <important>
            <p>Amazon Translate doesn't scan all input files for the risk of CSV injection
        attacks. </p>
            <p>CSV injection occurs when a .csv or .tsv file is altered so that a record contains
        malicious code. The record begins with a special character, such as =, +, -, or @. When the
        file is opened in a spreadsheet program, the program might interpret the record as a formula
        and run the code within it.</p>
            <p>Before you download an input file from Amazon S3, ensure that you recognize the file and trust its creator.</p>
         </important>")
  @as("Location")
  location: string_,
  @ocaml.doc("<p>The repository type for the custom terminology data.</p>") @as("RepositoryType")
  repositoryType: string_,
}
@ocaml.doc("<p>The data associated with the custom terminology.</p>")
type terminologyData = {
  @ocaml.doc("<p>The directionality of your terminology resource indicates whether it has one source
      language (uni-directional) or multiple (multi-directional).</p>
         <dl>
            <dt>UNI</dt>
            <dd>
               <p>The terminology resource has one source language (for example, the first column in a
            CSV file), and all of its other languages are target languages. </p>
            </dd>
            <dt>MULTI</dt>
            <dd>
               <p>Any language in the terminology resource can be the source language or a target
            language. A single multi-directional terminology resource can be used for jobs that
            translate different language pairs. For example, if the terminology contains terms in
            English and Spanish, then it can be used for jobs that translate English to Spanish and
            jobs that translate Spanish to English.</p>
            </dd>
         </dl>
         <p>When you create a custom terminology resource without specifying the directionality, it
      behaves as uni-directional terminology, although this parameter will have a null value.</p>")
  @as("Directionality")
  directionality: option<directionality>,
  @ocaml.doc("<p>The data format of the custom terminology.</p>") @as("Format")
  format: terminologyDataFormat,
  @ocaml.doc("<p>The file containing the custom terminology data. Your version of the AWS SDK performs a
      Base64-encoding on this field before sending a request to the AWS service. Users of the SDK
      should not perform Base64-encoding themselves.</p>")
  @as("File")
  file: terminologyFile,
}
@ocaml.doc("<p>The term being translated by the custom terminology.</p>")
type term = {
  @ocaml.doc("<p>The target text of the term being translated by the custom terminology.</p>")
  @as("TargetText")
  targetText: option<string_>,
  @ocaml.doc("<p>The source text of the term being translated by the custom terminology.</p>")
  @as("SourceText")
  sourceText: option<string_>,
}
type targetLanguageCodeStringList = array<languageCodeString>
type resourceNameList = array<resourceName>
@ocaml.doc("<p>The location of the most recent parallel data input file that was successfully imported
      into Amazon Translate.</p>")
type parallelDataDataLocation = {
  @ocaml.doc("<p>The Amazon S3 location of the parallel data input file. The location is returned as a
      presigned URL to that has a 30 minute expiration.</p>
    
         <important>
            <p>Amazon Translate doesn't scan all input files for the risk of CSV injection
        attacks. </p>
            <p>CSV injection occurs when a .csv or .tsv file is altered so that a record contains
        malicious code. The record begins with a special character, such as =, +, -, or @. When the
        file is opened in a spreadsheet program, the program might interpret the record as a formula
        and run the code within it.</p>
            <p>Before you download an input file from Amazon S3, ensure that you recognize the file and trust its creator.</p>
         </important>")
  @as("Location")
  location: string_,
  @ocaml.doc("<p>Describes the repository that contains the parallel data input file.</p>")
  @as("RepositoryType")
  repositoryType: string_,
}
@ocaml.doc("<p>Specifies the format and S3 location of the parallel data input file.</p>")
type parallelDataConfig = {
  @ocaml.doc("<p>The format of the parallel data input file.</p>") @as("Format")
  format: parallelDataFormat,
  @ocaml.doc("<p>The URI of the Amazon S3 folder that contains the parallel data input file. The folder
      must be in the same Region as the API endpoint you are calling.</p>")
  @as("S3Uri")
  s3Uri: s3Uri,
}
type languageCodeStringList = array<languageCodeString>
@ocaml.doc("<p>The number of documents successfully and unsuccessfully processed during a translation
      job.</p>")
type jobDetails = {
  @ocaml.doc("<p>The number of documents used as input in a translation job.</p>")
  @as("InputDocumentsCount")
  inputDocumentsCount: option<integer_>,
  @ocaml.doc("<p>The number of documents that could not be processed during a translation job.</p>")
  @as("DocumentsWithErrorsCount")
  documentsWithErrorsCount: option<integer_>,
  @ocaml.doc("<p>The number of documents successfully processed during a translation job.</p>")
  @as("TranslatedDocumentsCount")
  translatedDocumentsCount: option<integer_>,
}
@ocaml.doc("<p>The input configuration properties for requesting a batch translation job.</p>")
type inputDataConfig = {
  @ocaml.doc("<p>Describes the format of the data that you submit to Amazon Translate as input. You can
      specify one of the following multipurpose internet mail extension (MIME) types:</p>
         <ul>
            <li>
               <p>
                  <code>text/html</code>: The input data consists of one or more HTML files. Amazon
          Translate translates only the text that resides in the <code>html</code> element in each
          file.</p>
            </li>
            <li>
               <p>
                  <code>text/plain</code>: The input data consists of one or more unformatted text
          files. Amazon Translate translates every character in this type of input.</p>
            </li>
            <li>
               <p>
                  <code>application/vnd.openxmlformats-officedocument.wordprocessingml.document</code>:
          The input data consists of one or more Word documents (.docx).</p>
            </li>
            <li>
               <p>
                  <code>application/vnd.openxmlformats-officedocument.presentationml.presentation</code>:
          The input data consists of one or more PowerPoint Presentation files (.pptx).</p>
            </li>
            <li>
               <p>
                  <code>application/vnd.openxmlformats-officedocument.spreadsheetml.sheet</code>: The
          input data consists of one or more Excel Workbook files (.xlsx).</p>
            </li>
            <li>
               <p>
                  <code>application/x-xliff+xml</code>: The input data consists of one or more XML
          Localization Interchange File Format (XLIFF) files (.xlf). Amazon Translate supports only
          XLIFF version 1.2.</p>
            </li>
         </ul>
         <important>
            <p>If you structure your input data as HTML, ensure that you set this parameter to
          <code>text/html</code>. By doing so, you cut costs by limiting the translation to the
        contents of the <code>html</code> element in each file. Otherwise, if you set this parameter
        to <code>text/plain</code>, your costs will cover the translation of every character.</p>
         </important>")
  @as("ContentType")
  contentType: contentType,
  @ocaml.doc("<p>The URI of the AWS S3 folder that contains the input file. The folder must be in the
      same Region as the API endpoint you are calling.</p>")
  @as("S3Uri")
  s3Uri: s3Uri,
}
@ocaml.doc("<p>The encryption key used to encrypt this object.</p>")
type encryptionKey = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the encryption key being used to encrypt this object.</p>"
  )
  @as("Id")
  id: encryptionKeyID,
  @ocaml.doc("<p>The type of encryption key used by Amazon Translate to encrypt this object.</p>")
  @as("Type")
  type_: encryptionKeyType,
}
@ocaml.doc("<p>The properties of the custom terminology.</p>")
type terminologyProperties = {
  @ocaml.doc("<p>The format of the custom terminology input file.</p>") @as("Format")
  format: option<terminologyDataFormat>,
  @ocaml.doc("<p>The number of terms in the input file that Amazon Translate skipped when you created or
      updated the terminology resource.</p>")
  @as("SkippedTermCount")
  skippedTermCount: option<integer_>,
  @ocaml.doc("<p>Additional information from Amazon Translate about the terminology resource.</p>")
  @as("Message")
  message: option<unboundedLengthString>,
  @ocaml.doc("<p>The directionality of your terminology resource indicates whether it has one source
      language (uni-directional) or multiple (multi-directional). </p>
         <dl>
            <dt>UNI</dt>
            <dd>
               <p>The terminology resource has one source language (the first column in a CSV file),
            and all of its other languages are target languages.</p>
            </dd>
            <dt>MULTI</dt>
            <dd>
               <p>Any language in the terminology resource can be the source language.</p>
            </dd>
         </dl>")
  @as("Directionality")
  directionality: option<directionality>,
  @ocaml.doc(
    "<p>The time at which the custom terminology was last update, based on the timestamp.</p>"
  )
  @as("LastUpdatedAt")
  lastUpdatedAt: option<timestamp_>,
  @ocaml.doc("<p>The time at which the custom terminology was created, based on the timestamp.</p>")
  @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The number of terms included in the custom terminology.</p>") @as("TermCount")
  termCount: option<integer_>,
  @ocaml.doc("<p>The size of the file used when importing a custom terminology.</p>")
  @as("SizeBytes")
  sizeBytes: option<integer_>,
  @ocaml.doc("<p>The encryption key for the custom terminology.</p>") @as("EncryptionKey")
  encryptionKey: option<encryptionKey>,
  @ocaml.doc("<p>The language codes for the target languages available with the custom terminology
      resource. All possible target languages are returned in array.</p>")
  @as("TargetLanguageCodes")
  targetLanguageCodes: option<languageCodeStringList>,
  @ocaml.doc("<p>The language code for the source text of the translation request for which the custom
      terminology is being used.</p>")
  @as("SourceLanguageCode")
  sourceLanguageCode: option<languageCodeString>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the custom terminology. </p>") @as("Arn")
  arn: option<terminologyArn>,
  @ocaml.doc("<p>The description of the custom terminology properties.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The name of the custom terminology.</p>") @as("Name") name: option<resourceName>,
}
type termList = array<term>
@ocaml.doc("<p>The properties of a parallel data resource.</p>")
type parallelDataProperties = {
  @ocaml.doc("<p>The time that the most recent update was attempted.</p>")
  @as("LatestUpdateAttemptAt")
  latestUpdateAttemptAt: option<timestamp_>,
  @ocaml.doc("<p>The status of the most recent update attempt for the parallel data resource.</p>")
  @as("LatestUpdateAttemptStatus")
  latestUpdateAttemptStatus: option<parallelDataStatus>,
  @ocaml.doc("<p>The time at which the parallel data resource was last updated.</p>")
  @as("LastUpdatedAt")
  lastUpdatedAt: option<timestamp_>,
  @ocaml.doc("<p>The time at which the parallel data resource was created.</p>") @as("CreatedAt")
  createdAt: option<timestamp_>,
  @as("EncryptionKey") encryptionKey: option<encryptionKey>,
  @ocaml.doc("<p>The number of items in the input file that Amazon Translate skipped when you created or
      updated the parallel data resource. For example, Amazon Translate skips empty records, empty
      target texts, and empty lines.</p>")
  @as("SkippedRecordCount")
  skippedRecordCount: option<long>,
  @ocaml.doc(
    "<p>The number of records unsuccessfully imported from the parallel data input file.</p>"
  )
  @as("FailedRecordCount")
  failedRecordCount: option<long>,
  @ocaml.doc(
    "<p>The number of records successfully imported from the parallel data input file.</p>"
  )
  @as("ImportedRecordCount")
  importedRecordCount: option<long>,
  @ocaml.doc("<p>The number of UTF-8 characters that Amazon Translate imported from the parallel data input
      file. This number includes only the characters in your translation examples. It does not
      include characters that are used to format your file. For example, if you provided a
      Translation Memory Exchange (.tmx) file, this number does not include the tags.</p>")
  @as("ImportedDataSize")
  importedDataSize: option<long>,
  @ocaml.doc(
    "<p>Additional information from Amazon Translate about the parallel data resource. </p>"
  )
  @as("Message")
  message: option<unboundedLengthString>,
  @ocaml.doc("<p>Specifies the format and S3 location of the parallel data input file.</p>")
  @as("ParallelDataConfig")
  parallelDataConfig: option<parallelDataConfig>,
  @ocaml.doc("<p>The language codes for the target languages available in the parallel data file. All
      possible target languages are returned as an array.</p>")
  @as("TargetLanguageCodes")
  targetLanguageCodes: option<languageCodeStringList>,
  @ocaml.doc("<p>The source language of the translations in the parallel data file.</p>")
  @as("SourceLanguageCode")
  sourceLanguageCode: option<languageCodeString>,
  @ocaml.doc("<p>The status of the parallel data resource. When the parallel data is ready for you to use,
      the status is <code>ACTIVE</code>.</p>")
  @as("Status")
  status: option<parallelDataStatus>,
  @ocaml.doc("<p>The description assigned to the parallel data resource.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the parallel data resource.</p>") @as("Arn")
  arn: option<parallelDataArn>,
  @ocaml.doc("<p>The custom name assigned to the parallel data resource.</p>") @as("Name")
  name: option<resourceName>,
}
@ocaml.doc("<p>The output configuration properties for a batch translation job.</p>")
type outputDataConfig = {
  @as("EncryptionKey") encryptionKey: option<encryptionKey>,
  @ocaml.doc("<p>The URI of the S3 folder that contains a translation job's output file. The folder must
      be in the same Region as the API endpoint that you are calling.</p>")
  @as("S3Uri")
  s3Uri: s3Uri,
}
@ocaml.doc("<p>Provides information about a translation job.</p>")
type textTranslationJobProperties = {
  @ocaml.doc("<p>Settings that configure the translation output.</p>") @as("Settings")
  settings: option<translationSettings>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role
      that granted Amazon Translate read access to the job's input data.</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc(
    "<p>The output configuration properties that were specified when the job was requested.</p>"
  )
  @as("OutputDataConfig")
  outputDataConfig: option<outputDataConfig>,
  @ocaml.doc(
    "<p>The input configuration properties that were specified when the job was requested.</p>"
  )
  @as("InputDataConfig")
  inputDataConfig: option<inputDataConfig>,
  @ocaml.doc("<p>The time at which the translation job ended.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The time at which the translation job was submitted.</p>") @as("SubmittedTime")
  submittedTime: option<timestamp_>,
  @ocaml.doc(
    "<p>An explanation of any errors that may have occurred during the translation job.</p>"
  )
  @as("Message")
  message: option<unboundedLengthString>,
  @ocaml.doc("<p>A list containing the names of the parallel data resources applied to the translation
      job.</p>")
  @as("ParallelDataNames")
  parallelDataNames: option<resourceNameList>,
  @ocaml.doc("<p>A list containing the names of the terminologies applied to a translation job. Only one
      terminology can be applied per <a>StartTextTranslationJob</a> request at this
      time.</p>")
  @as("TerminologyNames")
  terminologyNames: option<resourceNameList>,
  @ocaml.doc("<p>The language code of the language of the target text. The language must be a language
      supported by Amazon Translate.</p>")
  @as("TargetLanguageCodes")
  targetLanguageCodes: option<targetLanguageCodeStringList>,
  @ocaml.doc("<p>The language code of the language of the source text. The language must be a language
      supported by Amazon Translate.</p>")
  @as("SourceLanguageCode")
  sourceLanguageCode: option<languageCodeString>,
  @ocaml.doc("<p>The number of documents successfully and unsuccessfully processed during the translation
      job.</p>")
  @as("JobDetails")
  jobDetails: option<jobDetails>,
  @ocaml.doc("<p>The status of the translation job.</p>") @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>The user-defined name of the translation job.</p>") @as("JobName")
  jobName: option<jobName>,
  @ocaml.doc("<p>The ID of the translation job.</p>") @as("JobId") jobId: option<jobId>,
}
type terminologyPropertiesList = array<terminologyProperties>
type parallelDataPropertiesList = array<parallelDataProperties>
@ocaml.doc("<p>The custom terminology applied to the input text by Amazon Translate for the translated text
      response. This is optional in the response and will only be present if you specified
      terminology input in the request. Currently, only one terminology can be applied per
      TranslateText request.</p>")
type appliedTerminology = {
  @ocaml.doc("<p>The specific terms of the custom terminology applied to the input text by Amazon Translate for the
      translated text response. A maximum of 250 terms will be returned, and the specific terms
      applied will be the first 250 terms in the source text. </p>")
  @as("Terms")
  terms: option<termList>,
  @ocaml.doc("<p>The name of the custom terminology applied to the input text by Amazon Translate for the translated
      text response.</p>")
  @as("Name")
  name: option<resourceName>,
}
type textTranslationJobPropertiesList = array<textTranslationJobProperties>
type appliedTerminologyList = array<appliedTerminology>
@ocaml.doc("<p>Provides translation between one source language and another of the same set of
      languages.</p>")
module StopTextTranslationJob = {
  type t
  type request = {
    @ocaml.doc("<p>The job ID of the job to be stopped.</p>") @as("JobId") jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>The status of the designated job. Upon successful completion, the job's status will be
        <code>STOPPED</code>.</p>")
    @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The job ID of the stopped batch translation job.</p>") @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-translate") @new
  external new: request => t = "StopTextTranslationJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteTerminology = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the custom terminology being deleted. </p>") @as("Name")
    name: resourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-translate") @new external new: request => t = "DeleteTerminologyCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteParallelData = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the parallel data resource that is being deleted.</p>") @as("Name")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The status of the parallel data deletion.</p>") @as("Status")
    status: option<parallelDataStatus>,
    @ocaml.doc("<p>The name of the parallel data resource that is being deleted.</p>") @as("Name")
    name: option<resourceName>,
  }
  @module("@aws-sdk/client-translate") @new external new: request => t = "DeleteParallelDataCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateParallelData = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the request. This token is automatically generated when you use
      Amazon Translate through an AWS SDK.</p>")
    @as("ClientToken")
    clientToken: clientTokenString,
    @ocaml.doc("<p>Specifies the format and S3 location of the parallel data input file.</p>")
    @as("ParallelDataConfig")
    parallelDataConfig: parallelDataConfig,
    @ocaml.doc("<p>A custom description for the parallel data resource in Amazon Translate.</p>")
    @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the parallel data resource being updated.</p>") @as("Name")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The time that the most recent update was attempted.</p>")
    @as("LatestUpdateAttemptAt")
    latestUpdateAttemptAt: option<timestamp_>,
    @ocaml.doc("<p>The status of the parallel data update attempt. When the updated parallel data resource is
      ready for you to use, the status is <code>ACTIVE</code>.</p>")
    @as("LatestUpdateAttemptStatus")
    latestUpdateAttemptStatus: option<parallelDataStatus>,
    @ocaml.doc("<p>The status of the parallel data resource that you are attempting to update. Your update
      request is accepted only if this status is either <code>ACTIVE</code> or
      <code>FAILED</code>.</p>")
    @as("Status")
    status: option<parallelDataStatus>,
    @ocaml.doc("<p>The name of the parallel data resource being updated.</p>") @as("Name")
    name: option<resourceName>,
  }
  @module("@aws-sdk/client-translate") @new external new: request => t = "UpdateParallelDataCommand"
  let make = (~clientToken, ~parallelDataConfig, ~name, ~description=?, ()) =>
    new({clientToken, parallelDataConfig, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateParallelData = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the request. This token is automatically generated when you use
      Amazon Translate through an AWS SDK.</p>")
    @as("ClientToken")
    clientToken: clientTokenString,
    @as("EncryptionKey") encryptionKey: option<encryptionKey>,
    @ocaml.doc("<p>Specifies the format and S3 location of the parallel data input file.</p>")
    @as("ParallelDataConfig")
    parallelDataConfig: parallelDataConfig,
    @ocaml.doc("<p>A custom description for the parallel data resource in Amazon Translate.</p>")
    @as("Description")
    description: option<description>,
    @ocaml.doc("<p>A custom name for the parallel data resource in Amazon Translate. You must assign a name
      that is unique in the account and region.</p>")
    @as("Name")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The status of the parallel data resource. When the resource is ready for you to use, the
      status is <code>ACTIVE</code>.</p>")
    @as("Status")
    status: option<parallelDataStatus>,
    @ocaml.doc("<p>The custom name that you assigned to the parallel data resource.</p>")
    @as("Name")
    name: option<resourceName>,
  }
  @module("@aws-sdk/client-translate") @new external new: request => t = "CreateParallelDataCommand"
  let make = (~clientToken, ~parallelDataConfig, ~name, ~encryptionKey=?, ~description=?, ()) =>
    new({clientToken, encryptionKey, parallelDataConfig, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartTextTranslationJob = {
  type t
  type request = {
    @ocaml.doc("<p>Settings to configure your translation output, including the option to mask profane words
      and phrases.</p>")
    @as("Settings")
    settings: option<translationSettings>,
    @ocaml.doc("<p>A unique identifier for the request. This token is auto-generated when using the Amazon Translate
      SDK.</p>")
    @as("ClientToken")
    clientToken: clientTokenString,
    @ocaml.doc("<p>The name of a parallel data resource to add to the translation job. This resource consists
      of examples that show how you want segments of text to be translated. When you add parallel
      data to a translation job, you create an <i>Active Custom Translation</i> job. </p>
         <p>This parameter accepts only one parallel data resource.</p>
         <note>
            <p>Active Custom Translation jobs are priced at a higher rate than other jobs that don't
        use parallel data. For more information, see <a href=\"http://aws.amazon.com/translate/pricing/\">Amazon Translate pricing</a>.</p>
         </note>
         <p>For a list of available parallel data resources, use the <a>ListParallelData</a> operation.</p>
         <p>For more information, see <a>customizing-translations-parallel-data</a>.</p>")
    @as("ParallelDataNames")
    parallelDataNames: option<resourceNameList>,
    @ocaml.doc("<p>The name of a custom terminology resource to add to the translation job. This resource
      lists examples source terms and the desired translation for each term.</p>
         <p>This parameter accepts only one custom terminology resource.</p>
         <p>For a list of available custom terminology resources, use the <a>ListTerminologies</a> operation.</p>
         <p>For more information, see <a>how-custom-terminology</a>.</p>")
    @as("TerminologyNames")
    terminologyNames: option<resourceNameList>,
    @ocaml.doc("<p>The language code of the output language.</p>") @as("TargetLanguageCodes")
    targetLanguageCodes: targetLanguageCodeStringList,
    @ocaml.doc("<p>The language code of the input language. For a list of language codes, see <a>what-is-languages</a>.</p>
         <p>Amazon Translate does not automatically detect a source language during batch translation
      jobs.</p>")
    @as("SourceLanguageCode")
    sourceLanguageCode: languageCodeString,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role
      that grants Amazon Translate read access to your input data. For more information, see <a>identity-and-access-management</a>.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>Specifies the S3 folder to which your job output will be saved.
      </p>")
    @as("OutputDataConfig")
    outputDataConfig: outputDataConfig,
    @ocaml.doc("<p>Specifies the format and S3 location of the input documents for the translation
      job.</p>")
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
    @ocaml.doc("<p>The name of the batch translation job to be performed.</p>") @as("JobName")
    jobName: option<jobName>,
  }
  type response = {
    @ocaml.doc("<p>The status of the job. Possible values include:</p>
         <ul>
            <li>
               <p>
                  <code>SUBMITTED</code> - The job has been received and is queued for
          processing.</p>
            </li>
            <li>
               <p>
                  <code>IN_PROGRESS</code> - Amazon Translate is processing the job.</p>
            </li>
            <li>
               <p>
                  <code>COMPLETED</code> - The job was successfully completed and the output is
          available.</p>
            </li>
            <li>
               <p>
                  <code>COMPLETED_WITH_ERROR</code> - The job was completed with errors. The errors can
          be analyzed in the job's output.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - The job did not complete. To get details, use the <a>DescribeTextTranslationJob</a> operation.</p>
            </li>
            <li>
               <p>
                  <code>STOP_REQUESTED</code> - The user who started the job has requested that it be
          stopped.</p>
            </li>
            <li>
               <p>
                  <code>STOPPED</code> - The job has been stopped.</p>
            </li>
         </ul>")
    @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The identifier generated for the job. To get the status of a job, use this ID with the
        <a>DescribeTextTranslationJob</a> operation.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-translate") @new
  external new: request => t = "StartTextTranslationJobCommand"
  let make = (
    ~clientToken,
    ~targetLanguageCodes,
    ~sourceLanguageCode,
    ~dataAccessRoleArn,
    ~outputDataConfig,
    ~inputDataConfig,
    ~settings=?,
    ~parallelDataNames=?,
    ~terminologyNames=?,
    ~jobName=?,
    (),
  ) =>
    new({
      settings,
      clientToken,
      parallelDataNames,
      terminologyNames,
      targetLanguageCodes,
      sourceLanguageCode,
      dataAccessRoleArn,
      outputDataConfig,
      inputDataConfig,
      jobName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ImportTerminology = {
  type t
  type request = {
    @ocaml.doc("<p>The encryption key for the custom terminology being imported.</p>")
    @as("EncryptionKey")
    encryptionKey: option<encryptionKey>,
    @ocaml.doc("<p>The terminology data for the custom terminology being imported.</p>")
    @as("TerminologyData")
    terminologyData: terminologyData,
    @ocaml.doc("<p>The description of the custom terminology being imported.</p>")
    @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The merge strategy of the custom terminology being imported. Currently, only the OVERWRITE
      merge strategy is supported. In this case, the imported terminology will overwrite an existing
      terminology of the same name.</p>")
    @as("MergeStrategy")
    mergeStrategy: mergeStrategy,
    @ocaml.doc("<p>The name of the custom terminology being imported.</p>") @as("Name")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon S3 location of a file that provides any errors or warnings that were produced
      by your input file. This file was created when Amazon Translate attempted to create a
      terminology resource. The location is returned as a presigned URL to that has a 30 minute
      expiration.</p>")
    @as("AuxiliaryDataLocation")
    auxiliaryDataLocation: option<terminologyDataLocation>,
    @ocaml.doc("<p>The properties of the custom terminology being imported.</p>")
    @as("TerminologyProperties")
    terminologyProperties: option<terminologyProperties>,
  }
  @module("@aws-sdk/client-translate") @new external new: request => t = "ImportTerminologyCommand"
  let make = (~terminologyData, ~mergeStrategy, ~name, ~encryptionKey=?, ~description=?, ()) =>
    new({encryptionKey, terminologyData, description, mergeStrategy, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetTerminology = {
  type t
  type request = {
    @ocaml.doc("<p>The data format of the custom terminology being retrieved.</p>
         <p>If you don't specify this parameter, Amazon Translate returns a file that has the same
      format as the file that was imported to create the terminology. </p>
         <p>If you specify this parameter when you retrieve a multi-directional terminology resource,
      you must specify the same format as that of the input file that was imported to create it.
      Otherwise, Amazon Translate throws an error.</p>")
    @as("TerminologyDataFormat")
    terminologyDataFormat: option<terminologyDataFormat>,
    @ocaml.doc("<p>The name of the custom terminology being retrieved.</p>") @as("Name")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon S3 location of a file that provides any errors or warnings that were produced
      by your input file. This file was created when Amazon Translate attempted to create a
      terminology resource. The location is returned as a presigned URL to that has a 30 minute
      expiration.</p>")
    @as("AuxiliaryDataLocation")
    auxiliaryDataLocation: option<terminologyDataLocation>,
    @ocaml.doc("<p>The Amazon S3 location of the most recent custom terminology input file that was
      successfully imported into Amazon Translate. The location is returned as a presigned URL that
      has a 30 minute expiration.</p>
    
         <important>
            <p>Amazon Translate doesn't scan all input files for the risk of CSV injection
        attacks. </p>
            <p>CSV injection occurs when a .csv or .tsv file is altered so that a record contains
        malicious code. The record begins with a special character, such as =, +, -, or @. When the
        file is opened in a spreadsheet program, the program might interpret the record as a formula
        and run the code within it.</p>
            <p>Before you download an input file from Amazon S3, ensure that you recognize the file and trust its creator.</p>
         </important>")
    @as("TerminologyDataLocation")
    terminologyDataLocation: option<terminologyDataLocation>,
    @ocaml.doc("<p>The properties of the custom terminology being retrieved.</p>")
    @as("TerminologyProperties")
    terminologyProperties: option<terminologyProperties>,
  }
  @module("@aws-sdk/client-translate") @new external new: request => t = "GetTerminologyCommand"
  let make = (~name, ~terminologyDataFormat=?, ()) => new({terminologyDataFormat, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetParallelData = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the parallel data resource that is being retrieved.</p>") @as("Name")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon S3 location of a file that provides any errors or warnings that were produced
      by your input file. This file was created when Amazon Translate attempted to update a parallel
      data resource. The location is returned as a presigned URL to that has a 30 minute
      expiration.</p>")
    @as("LatestUpdateAttemptAuxiliaryDataLocation")
    latestUpdateAttemptAuxiliaryDataLocation: option<parallelDataDataLocation>,
    @ocaml.doc("<p>The Amazon S3 location of a file that provides any errors or warnings that were produced
      by your input file. This file was created when Amazon Translate attempted to create a parallel
      data resource. The location is returned as a presigned URL to that has a 30 minute
      expiration.</p>")
    @as("AuxiliaryDataLocation")
    auxiliaryDataLocation: option<parallelDataDataLocation>,
    @ocaml.doc("<p>The Amazon S3 location of the most recent parallel data input file that was successfully
      imported into Amazon Translate. The location is returned as a presigned URL that has a 30
      minute expiration.</p>
    
         <important>
            <p>Amazon Translate doesn't scan all input files for the risk of CSV injection
        attacks. </p>
            <p>CSV injection occurs when a .csv or .tsv file is altered so that a record contains
        malicious code. The record begins with a special character, such as =, +, -, or @. When the
        file is opened in a spreadsheet program, the program might interpret the record as a formula
        and run the code within it.</p>
            <p>Before you download an input file from Amazon S3, ensure that you recognize the file and trust its creator.</p>
         </important>")
    @as("DataLocation")
    dataLocation: option<parallelDataDataLocation>,
    @ocaml.doc("<p>The properties of the parallel data resource that is being retrieved.</p>")
    @as("ParallelDataProperties")
    parallelDataProperties: option<parallelDataProperties>,
  }
  @module("@aws-sdk/client-translate") @new external new: request => t = "GetParallelDataCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTerminologies = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of custom terminologies returned per list request.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>If the result of the request to ListTerminologies was truncated, include the NextToken to
      fetch the next group of custom terminologies. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p> If the response to the ListTerminologies was truncated, the NextToken fetches the next
      group of custom terminologies.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The properties list of the custom terminologies returned on the list request.</p>"
    )
    @as("TerminologyPropertiesList")
    terminologyPropertiesList: option<terminologyPropertiesList>,
  }
  @module("@aws-sdk/client-translate") @new external new: request => t = "ListTerminologiesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListParallelData = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of parallel data resources returned for each request.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc(
      "<p>A string that specifies the next page of results to return in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The string to use in a subsequent request to get the next page of results in a paginated
      response. This value is null if there are no additional pages.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The properties of the parallel data resources returned by this request.</p>")
    @as("ParallelDataPropertiesList")
    parallelDataPropertiesList: option<parallelDataPropertiesList>,
  }
  @module("@aws-sdk/client-translate") @new external new: request => t = "ListParallelDataCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeTextTranslationJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier that Amazon Translate generated for the job. The <a>StartTextTranslationJob</a> operation returns this identifier in its
      response.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>An object that contains the properties associated with an asynchronous batch translation
      job.</p>")
    @as("TextTranslationJobProperties")
    textTranslationJobProperties: option<textTranslationJobProperties>,
  }
  @module("@aws-sdk/client-translate") @new
  external new: request => t = "DescribeTextTranslationJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TranslateText = {
  type t
  type request = {
    @ocaml.doc("<p>Settings to configure your translation output, including the option to mask profane words
      and phrases.</p>")
    @as("Settings")
    settings: option<translationSettings>,
    @ocaml.doc("<p>The language code requested for the language of the target text. The language must be a
      language supported by Amazon Translate.</p>")
    @as("TargetLanguageCode")
    targetLanguageCode: languageCodeString,
    @ocaml.doc("<p>The language code for the language of the source text. The language must be a language
      supported by Amazon Translate. For a list of language codes, see <a>what-is-languages</a>.</p>
         <p>To have Amazon Translate determine the source language of your text, you can specify
        <code>auto</code> in the <code>SourceLanguageCode</code> field. If you specify
        <code>auto</code>, Amazon Translate will call <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/comprehend-general.html\">Amazon
        Comprehend</a> to determine the source language.</p>")
    @as("SourceLanguageCode")
    sourceLanguageCode: languageCodeString,
    @ocaml.doc("<p>The name of the terminology list file to be used in the TranslateText request. You can use
      1 terminology list at most in a <code>TranslateText</code> request. Terminology lists can
      contain a maximum of 256 terms.</p>")
    @as("TerminologyNames")
    terminologyNames: option<resourceNameList>,
    @ocaml.doc("<p>The text to translate. The text string can be a maximum of 5,000 bytes long. Depending on
      your character set, this may be fewer than 5,000 characters.</p>")
    @as("Text")
    text: boundedLengthString,
  }
  type response = {
    @ocaml.doc("<p>Settings that configure the translation output.</p>") @as("AppliedSettings")
    appliedSettings: option<translationSettings>,
    @ocaml.doc("<p>The names of the custom terminologies applied to the input text by Amazon Translate for the
      translated text response.</p>")
    @as("AppliedTerminologies")
    appliedTerminologies: option<appliedTerminologyList>,
    @ocaml.doc("<p>The language code for the language of the target text. </p>")
    @as("TargetLanguageCode")
    targetLanguageCode: languageCodeString,
    @ocaml.doc("<p>The language code for the language of the source text.</p>")
    @as("SourceLanguageCode")
    sourceLanguageCode: languageCodeString,
    @ocaml.doc("<p>The translated text.</p>") @as("TranslatedText") translatedText: string_,
  }
  @module("@aws-sdk/client-translate") @new external new: request => t = "TranslateTextCommand"
  let make = (
    ~targetLanguageCode,
    ~sourceLanguageCode,
    ~text,
    ~settings=?,
    ~terminologyNames=?,
    (),
  ) => new({settings, targetLanguageCode, sourceLanguageCode, terminologyNames, text})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTextTranslationJobs = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of results to return in each page. The default value is 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>The token to request the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The parameters that specify which batch translation jobs to retrieve. Filters include job
      name, job status, and submission time. You can only set one filter at a time.</p>")
    @as("Filter")
    filter: option<textTranslationJobFilter>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is <code>null</code>
      when there are no more results to return.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list containing the properties of each job that is returned.</p>")
    @as("TextTranslationJobPropertiesList")
    textTranslationJobPropertiesList: option<textTranslationJobPropertiesList>,
  }
  @module("@aws-sdk/client-translate") @new
  external new: request => t = "ListTextTranslationJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) => new({maxResults, nextToken, filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
