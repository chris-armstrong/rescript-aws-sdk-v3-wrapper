type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-comprehend") @new
external createClient: unit => awsServiceClient = "ComprehendClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type versionName = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type syntaxLanguageCode = [
  | @as("pt") #Pt
  | @as("it") #It
  | @as("de") #De
  | @as("fr") #Fr
  | @as("es") #Es
  | @as("en") #En
]
type subnetId = string
type string_ = string
type split = [@as("TEST") #TEST | @as("TRAIN") #TRAIN]
type sentimentType = [
  | @as("MIXED") #MIXED
  | @as("NEUTRAL") #NEUTRAL
  | @as("NEGATIVE") #NEGATIVE
  | @as("POSITIVE") #POSITIVE
]
type securityGroupId = string
type s3Uri = string
type policyRevisionId = string
type policy = string
type piiEntityType = [
  | @as("ALL") #ALL
  | @as("MAC_ADDRESS") #MAC_ADDRESS
  | @as("IP_ADDRESS") #IP_ADDRESS
  | @as("AWS_SECRET_KEY") #AWS_SECRET_KEY
  | @as("AWS_ACCESS_KEY") #AWS_ACCESS_KEY
  | @as("PASSWORD") #PASSWORD
  | @as("USERNAME") #USERNAME
  | @as("AGE") #AGE
  | @as("URL") #URL
  | @as("DRIVER_ID") #DRIVER_ID
  | @as("PASSPORT_NUMBER") #PASSPORT_NUMBER
  | @as("DATE_TIME") #DATE_TIME
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
type piiEntitiesDetectionMode = [
  | @as("ONLY_OFFSETS") #ONLY_OFFSETS
  | @as("ONLY_REDACTION") #ONLY_REDACTION
]
type piiEntitiesDetectionMaskMode = [
  | @as("REPLACE_WITH_PII_ENTITY_TYPE") #REPLACE_WITH_PII_ENTITY_TYPE
  | @as("MASK") #MASK
]
type partOfSpeechTagType = [
  | @as("VERB") #VERB
  | @as("SYM") #SYM
  | @as("SCONJ") #SCONJ
  | @as("PUNCT") #PUNCT
  | @as("PROPN") #PROPN
  | @as("PRON") #PRON
  | @as("PART") #PART
  | @as("O") #O
  | @as("NUM") #NUM
  | @as("NOUN") #NOUN
  | @as("INTJ") #INTJ
  | @as("DET") #DET
  | @as("CCONJ") #CCONJ
  | @as("CONJ") #CONJ
  | @as("AUX") #AUX
  | @as("ADV") #ADV
  | @as("ADP") #ADP
  | @as("ADJ") #ADJ
]
type numberOfTopicsInteger = int
type modelStatus = [
  | @as("TRAINED") #TRAINED
  | @as("IN_ERROR") #IN_ERROR
  | @as("STOPPED") #STOPPED
  | @as("STOP_REQUESTED") #STOP_REQUESTED
  | @as("DELETING") #DELETING
  | @as("TRAINING") #TRAINING
  | @as("SUBMITTED") #SUBMITTED
]
type maxResultsInteger = int
type maskCharacter = string
type languageCode = [
  | @as("zh-TW") #Zh_TW
  | @as("zh") #Zh
  | @as("ko") #Ko
  | @as("ja") #Ja
  | @as("hi") #Hi
  | @as("ar") #Ar
  | @as("pt") #Pt
  | @as("it") #It
  | @as("de") #De
  | @as("fr") #Fr
  | @as("es") #Es
  | @as("en") #En
]
type labelDelimiter = string
type kmsKeyId = string
type jobStatus = [
  | @as("STOPPED") #STOPPED
  | @as("STOP_REQUESTED") #STOP_REQUESTED
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("SUBMITTED") #SUBMITTED
]
type jobName = string
type jobId = string
type integer_ = int
type inputFormat = [
  | @as("ONE_DOC_PER_LINE") #ONE_DOC_PER_LINE
  | @as("ONE_DOC_PER_FILE") #ONE_DOC_PER_FILE
]
type inferenceUnitsInteger = int
type iamRoleArn = string
type float_ = float
type eventTypeString = string
type entityTypeName = string
type entityType = [
  | @as("OTHER") #OTHER
  | @as("TITLE") #TITLE
  | @as("QUANTITY") #QUANTITY
  | @as("DATE") #DATE
  | @as("EVENT") #EVENT
  | @as("COMMERCIAL_ITEM") #COMMERCIAL_ITEM
  | @as("ORGANIZATION") #ORGANIZATION
  | @as("LOCATION") #LOCATION
  | @as("PERSON") #PERSON
]
type entityRecognizerEndpointArn = string
type entityRecognizerDataFormat = [
  | @as("AUGMENTED_MANIFEST") #AUGMENTED_MANIFEST
  | @as("COMPREHEND_CSV") #COMPREHEND_CSV
]
type entityRecognizerArn = string
type endpointStatus = [
  | @as("UPDATING") #UPDATING
  | @as("IN_SERVICE") #IN_SERVICE
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
]
type double = float
type documentReadMode = [
  | @as("FORCE_DOCUMENT_READ_ACTION") #FORCE_DOCUMENT_READ_ACTION
  | @as("SERVICE_DEFAULT") #SERVICE_DEFAULT
]
@ocaml.doc("<p>A list of the types of analyses to perform. This field specifies what feature types
      need to be extracted from the document where entity recognition is expected.</p>

         <ul>
            <li>
               <p>
                  <code>TABLES</code> - Add TABLES to the list to return information about the tables
          that are detected in the input document. </p>
            </li>
            <li>
               <p>
                  <code>FORMS</code> - Add FORMS to return detected form data. </p>
            </li>
         </ul>")
type documentReadFeatureTypes = [@as("FORMS") #FORMS | @as("TABLES") #TABLES]
type documentReadAction = [
  | @as("TEXTRACT_ANALYZE_DOCUMENT") #TEXTRACT_ANALYZE_DOCUMENT
  | @as("TEXTRACT_DETECT_DOCUMENT_TEXT") #TEXTRACT_DETECT_DOCUMENT_TEXT
]
type documentClassifierMode = [@as("MULTI_LABEL") #MULTI_LABEL | @as("MULTI_CLASS") #MULTI_CLASS]
type documentClassifierEndpointArn = string
type documentClassifierDataFormat = [
  | @as("AUGMENTED_MANIFEST") #AUGMENTED_MANIFEST
  | @as("COMPREHEND_CSV") #COMPREHEND_CSV
]
type documentClassifierArn = string
type customerInputString = string
type comprehendModelArn = string
type comprehendEndpointName = string
type comprehendEndpointArn = string
type comprehendArnName = string
type comprehendArn = string
type clientRequestTokenString = string
type augmentedManifestsDocumentTypeFormat = [
  | @as("SEMI_STRUCTURED_DOCUMENT") #SEMI_STRUCTURED_DOCUMENT
  | @as("PLAIN_TEXT_DOCUMENT") #PLAIN_TEXT_DOCUMENT
]
type attributeNamesListItem = string
type anyLengthString = string
@ocaml.doc("<p>Provides information for filtering topic detection jobs. For more information, see
        .</p>")
type topicsDetectionJobFilter = {
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Only returns jobs submitted after the specified time. Jobs are returned in ascending order,
      oldest to newest.</p>")
  @as("SubmitTimeAfter")
  submitTimeAfter: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Only returns jobs submitted before the specified time. Jobs are returned in descending order,
      newest to oldest.</p>")
  @as("SubmitTimeBefore")
  submitTimeBefore: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of topic detection jobs based on job status. Returns only jobs with
      the specified status.</p>")
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p></p>") @as("JobName") jobName: option<jobName>,
}
@ocaml.doc("<p>Provides information for filtering a list of dominant language detection jobs. For more
      information, see the  operation.</p>")
type targetedSentimentDetectionJobFilter = {
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Returns only jobs submitted after the specified time. Jobs are returned in descending order,
      newest to oldest.</p>")
  @as("SubmitTimeAfter")
  submitTimeAfter: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
      oldest to newest.</p>")
  @as("SubmitTimeBefore")
  submitTimeBefore: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based on job status. Returns only jobs with the specified
      status.</p>")
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>Filters on the name of the job.</p>") @as("JobName") jobName: option<jobName>,
}
type targetEventTypes = array<eventTypeString>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A key-value pair that adds as a metadata to a resource used by Amazon Comprehend. For
      example, a tag with the key-value pair ‘Department’:’Sales’ might be added to a resource to
      indicate its use by a particular department. </p>")
type tag = {
  @ocaml.doc("<p> The second part of a key-value pair that forms a tag associated with a given resource.
      For instance, if you want to show which resources are used by which departments, you might use
      “Department” as the initial (key) portion of the pair, with a value of “sales” to indicate the
      sales department. </p>")
  @as("Value")
  value: option<tagValue>,
  @ocaml.doc("<p>The initial part of a key-value pair that forms a tag associated with a given resource.
      For instance, if you want to show which resources are used by which departments, you might use
      “Department” as the key portion of the pair, with multiple possible values such as “sales,”
      “legal,” and “administration.” </p>")
  @as("Key")
  key: tagKey,
}
type subnets = array<subnetId>
@ocaml.doc("<p>Describes the level of confidence that Amazon Comprehend has in the accuracy of its
      detection of sentiments.</p>")
type sentimentScore = {
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of
      the <code>MIXED</code> sentiment.</p>")
  @as("Mixed")
  mixed: option<float_>,
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of
      the <code>NEUTRAL</code> sentiment.</p>")
  @as("Neutral")
  neutral: option<float_>,
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of
      the <code>NEGATIVE</code> sentiment.</p>")
  @as("Negative")
  negative: option<float_>,
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of
      the <code>POSITIVE</code> sentiment.</p>")
  @as("Positive")
  positive: option<float_>,
}
@ocaml.doc("<p>Provides information for filtering a list of dominant language detection jobs. For more
      information, see the  operation.</p>")
type sentimentDetectionJobFilter = {
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Returns only jobs submitted after the specified time. Jobs are returned in descending order,
      newest to oldest.</p>")
  @as("SubmitTimeAfter")
  submitTimeAfter: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
      oldest to newest.</p>")
  @as("SubmitTimeBefore")
  submitTimeBefore: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based on job status. Returns only jobs with the specified
      status.</p>")
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>Filters on the name of the job.</p>") @as("JobName") jobName: option<jobName>,
}
type securityGroupIds = array<securityGroupId>
@ocaml.doc("<p>Provides configuration parameters for the output of PII entity detection jobs.</p>")
type piiOutputDataConfig = {
  @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the
      output results from an analysis job.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>When you use the <code>PiiOutputDataConfig</code> object with asynchronous operations,
      you specify the Amazon S3 location where you want to write the output data. </p>
         <p>
      For a PII entity detection job, the output file is plain text, not a compressed archive. 
      The output file name is the same as the input file, with <code>.out</code> appended at the end.
    </p>")
  @as("S3Uri")
  s3Uri: s3Uri,
}
@ocaml.doc("<p>Provides information about a PII entity.</p>")
type piiEntity = {
  @ocaml.doc("<p>A character offset in the input text that shows where the PII entity ends. The offset
      returns the position of each UTF-8 code point in the string. A <i>code point</i>
      is the abstract character from a particular graphical representation. For example, a
      multi-byte UTF-8 character maps to a single code point.</p>")
  @as("EndOffset")
  endOffset: option<integer_>,
  @ocaml.doc("<p>A character offset in the input text that shows where the PII entity begins (the first
      character is at position 0). The offset returns the position of each UTF-8 code point in the
      string. A <i>code point</i> is the abstract character from a particular
      graphical representation. For example, a multi-byte UTF-8 character maps to a single code
      point.</p>")
  @as("BeginOffset")
  beginOffset: option<integer_>,
  @ocaml.doc("<p>The entity's type.</p>") @as("Type") type_: option<piiEntityType>,
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend has in the accuracy of the
      detection.</p>")
  @as("Score")
  score: option<float_>,
}
@ocaml.doc("<p>Provides information for filtering a list of PII entity detection jobs.</p>")
type piiEntitiesDetectionJobFilter = {
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Returns only jobs submitted after the specified time. Jobs are returned in descending order,
      newest to oldest.</p>")
  @as("SubmitTimeAfter")
  submitTimeAfter: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
      oldest to newest.</p>")
  @as("SubmitTimeBefore")
  submitTimeBefore: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based on job status. Returns only jobs with the specified
      status.</p>")
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>Filters on the name of the job.</p>") @as("JobName") jobName: option<jobName>,
}
@ocaml.doc("<p>Identifies the part of speech represented by the token and gives the confidence that
      Amazon Comprehend has that the part of speech was correctly identified. For more information
      about the parts of speech that Amazon Comprehend can identify, see <a>how-syntax</a>.</p>")
type partOfSpeechTag = {
  @ocaml.doc("<p>The confidence that Amazon Comprehend has that the part of speech was correctly
      identified.</p>")
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p>Identifies the part of speech that the token represents.</p>") @as("Tag")
  tag: option<partOfSpeechTagType>,
}
@ocaml.doc("<p>Provides configuration parameters for the output of inference jobs.</p>
         <p></p>")
type outputDataConfig = {
  @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the
      output results from an analysis job. The KmsKeyId can be one of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>KMS Key Alias: <code>\"alias/ExampleAlias\"</code>
               </p>
            </li>
            <li>
               <p>ARN of a KMS Key Alias:
            <code>\"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias\"</code>
               </p>
            </li>
         </ul>")
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>When you use the <code>OutputDataConfig</code> object with asynchronous operations, you
      specify the Amazon S3 location where you want to write the output data. The URI must be in the
      same region as the API endpoint that you are calling. The location is used as the prefix for
      the actual location of the output file.</p>
         <p>When the topic detection job is finished, the service creates an output file in a
      directory specific to the job. The <code>S3Uri</code> field contains the location of the
      output file, called <code>output.tar.gz</code>. It is a compressed archive that contains the
      ouput of the operation.</p>
         <p>
      For a PII entity detection job, the output file is plain text, not a compressed archive. 
      The output file name is the same as the input file, with <code>.out</code> appended at the end.
    </p>")
  @as("S3Uri")
  s3Uri: s3Uri,
}
type listOfPiiEntityTypes = array<piiEntityType>
type listOfDocumentReadFeatureTypes = array<documentReadFeatureTypes>
@ocaml.doc("<p>Provides information for filtering a list of dominant language detection jobs. For more
      information, see the  operation.</p>")
type keyPhrasesDetectionJobFilter = {
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Returns only jobs submitted after the specified time. Jobs are returned in descending order,
      newest to oldest.</p>")
  @as("SubmitTimeAfter")
  submitTimeAfter: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
      oldest to newest.</p>")
  @as("SubmitTimeBefore")
  submitTimeBefore: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based on job status. Returns only jobs with the specified
      status.</p>")
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>Filters on the name of the job.</p>") @as("JobName") jobName: option<jobName>,
}
@ocaml.doc("<p>Describes a key noun phrase.</p>")
type keyPhrase = {
  @ocaml.doc("<p>A character offset in the input text where the key phrase ends. The offset returns the
      position of each UTF-8 code point in the string. A <code>code point</code> is the abstract
      character from a particular graphical representation. For example, a multi-byte UTF-8
      character maps to a single code point.</p>")
  @as("EndOffset")
  endOffset: option<integer_>,
  @ocaml.doc("<p>A character offset in the input text that shows where the key phrase begins (the first
      character is at position 0). The offset returns the position of each UTF-8 code point in the
      string. A <i>code point</i> is the abstract character from a particular
      graphical representation. For example, a multi-byte UTF-8 character maps to a single code
      point.</p>")
  @as("BeginOffset")
  beginOffset: option<integer_>,
  @ocaml.doc("<p>The text of a key noun phrase.</p>") @as("Text") text: option<string_>,
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend has in the accuracy of the
      detection.</p>")
  @as("Score")
  score: option<float_>,
}
@ocaml.doc("<p>Provides information for filtering a list of event detection jobs.</p>")
type eventsDetectionJobFilter = {
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Returns only jobs submitted after the specified time. Jobs are returned in descending order,
      newest to oldest.</p>")
  @as("SubmitTimeAfter")
  submitTimeAfter: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
      oldest to newest.</p>")
  @as("SubmitTimeBefore")
  submitTimeBefore: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based on job status. Returns only jobs with the specified
      status.</p>")
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>Filters on the name of the events detection job.</p>") @as("JobName")
  jobName: option<jobName>,
}
@ocaml.doc("<p>An entity type within a labeled training dataset that Amazon Comprehend uses to train a
      custom entity recognizer.</p>")
type entityTypesListItem = {
  @ocaml.doc("<p>An entity type within a labeled training dataset that Amazon Comprehend uses to train a
      custom entity recognizer.</p>
         <p>Entity types must not contain the following invalid characters: \\n (line break), \\\\n
      (escaped line break, \\r (carriage return), \\\\r (escaped carriage return), \\t (tab), \\\\t
      (escaped tab), space, and , (comma).</p>")
  @as("Type")
  type_: entityTypeName,
}
@ocaml.doc("<p>Detailed information about the accuracy of an entity recognizer for a specific entity
      type. </p>")
type entityTypesEvaluationMetrics = {
  @ocaml.doc("<p>A measure of how accurate the recognizer results are for a specific entity type in the
      test data. It is derived from the <code>Precision</code> and <code>Recall</code> values. The
        <code>F1Score</code> is the harmonic average of the two scores. The highest score is 1, and
      the worst score is 0. </p>")
  @as("F1Score")
  f1Score: option<double>,
  @ocaml.doc("<p>A measure of how complete the recognizer results are for a specific entity type in the
      test data. High recall means that the recognizer returned most of the relevant results.</p>")
  @as("Recall")
  recall: option<double>,
  @ocaml.doc("<p>A measure of the usefulness of the recognizer results for a specific entity type in the
      test data. High precision means that the recognizer returned substantially more relevant
      results than irrelevant ones. </p>")
  @as("Precision")
  precision: option<double>,
}
@ocaml.doc("<p> Describes the information about an entity recognizer and its versions.</p>")
type entityRecognizerSummary = {
  @ocaml.doc("<p> Provides the status of the latest entity recognizer version.</p>")
  @as("LatestVersionStatus")
  latestVersionStatus: option<modelStatus>,
  @ocaml.doc("<p> The version name you assigned to the latest entity recognizer version.</p>")
  @as("LatestVersionName")
  latestVersionName: option<versionName>,
  @ocaml.doc(
    "<p> The time that the latest entity recognizer version was submitted for processing.</p>"
  )
  @as("LatestVersionCreatedAt")
  latestVersionCreatedAt: option<timestamp_>,
  @ocaml.doc("<p> The number of versions you created.</p>") @as("NumberOfVersions")
  numberOfVersions: option<integer_>,
  @ocaml.doc("<p> The name that you assigned the entity recognizer.</p>") @as("RecognizerName")
  recognizerName: option<comprehendArnName>,
}
@ocaml.doc("<p>Provides information for filtering a list of entity recognizers. You can only specify one
      filtering parameter in a request. For more information, see the  operation./></p>")
type entityRecognizerFilter = {
  @ocaml.doc("<p>Filters the list of entities based on the time that the list was submitted for processing.
      Returns only jobs submitted after the specified time. Jobs are returned in ascending order,
      oldest to newest.</p>")
  @as("SubmitTimeAfter")
  submitTimeAfter: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of entities based on the time that the list was submitted for processing.
      Returns only jobs submitted before the specified time. Jobs are returned in descending order,
      newest to oldest.</p>")
  @as("SubmitTimeBefore")
  submitTimeBefore: option<timestamp_>,
  @ocaml.doc("<p>The name that you assigned the entity recognizer.</p>") @as("RecognizerName")
  recognizerName: option<comprehendArnName>,
  @ocaml.doc("<p>The status of an entity recognizer.</p>") @as("Status")
  status: option<modelStatus>,
}
@ocaml.doc("<p>Detailed information about the accuracy of an entity recognizer. </p>")
type entityRecognizerEvaluationMetrics = {
  @ocaml.doc("<p>A measure of how accurate the recognizer results are for the test data. It is derived from
      the <code>Precision</code> and <code>Recall</code> values. The <code>F1Score</code> is the
      harmonic average of the two scores. For plain text entity recognizer models, the range is 0 to 100, 
      where 100 is the best score. For PDF/Word entity recognizer models, the range is 0 to 1, 
      where 1 is the best score.   
    </p>")
  @as("F1Score")
  f1Score: option<double>,
  @ocaml.doc("<p>A measure of how complete the recognizer results are for the test data. High recall means
      that the recognizer returned most of the relevant results.</p>")
  @as("Recall")
  recall: option<double>,
  @ocaml.doc("<p>A measure of the usefulness of the recognizer results in the test data. High precision
      means that the recognizer returned substantially more relevant results than irrelevant ones.
    </p>")
  @as("Precision")
  precision: option<double>,
}
@ocaml.doc("<p>Describes the entity recognizer submitted with an entity recognizer.</p>")
type entityRecognizerEntityList = {
  @ocaml.doc("<p>Specifies the Amazon S3 location where the entity list is located. The URI must be in the
      same region as the API endpoint that you are calling.</p>")
  @as("S3Uri")
  s3Uri: s3Uri,
}
@ocaml.doc("<p>Describes the training documents submitted with an entity recognizer.</p>")
type entityRecognizerDocuments = {
  @ocaml.doc("<p> Specifies how the text in an input file should be processed. This is optional, and the
      default is ONE_DOC_PER_LINE. ONE_DOC_PER_FILE - Each file is considered a separate document.
      Use this option when you are processing large documents, such as newspaper articles or
      scientific papers. ONE_DOC_PER_LINE - Each line in a file is considered a separate document.
      Use this option when you are processing many short documents, such as text messages.</p>")
  @as("InputFormat")
  inputFormat: option<inputFormat>,
  @ocaml.doc("<p> Specifies the Amazon S3 location where the test documents for an entity recognizer are
      located. The URI must be in the same AWS Region as the API endpoint that you are
      calling.</p>")
  @as("TestS3Uri")
  testS3Uri: option<s3Uri>,
  @ocaml.doc("<p> Specifies the Amazon S3 location where the training documents for an entity recognizer
      are located. The URI must be in the same region as the API endpoint that you are
      calling.</p>")
  @as("S3Uri")
  s3Uri: s3Uri,
}
@ocaml.doc("<p>Describes the annotations associated with a entity recognizer.</p>")
type entityRecognizerAnnotations = {
  @ocaml.doc("<p>This specifies the Amazon S3 location where the test annotations for an entity recognizer
      are located. The URI must be in the same AWS Region as the API endpoint that you are
      calling.</p>")
  @as("TestS3Uri")
  testS3Uri: option<s3Uri>,
  @ocaml.doc("<p> Specifies the Amazon S3 location where the annotations for an entity recognizer are
      located. The URI must be in the same region as the API endpoint that you are calling.</p>")
  @as("S3Uri")
  s3Uri: s3Uri,
}
@ocaml.doc("<p>Specifies one of the label or labels that categorize the personally identifiable
      information (PII) entity being analyzed.</p>")
type entityLabel = {
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend has in the accuracy of the
      detection.</p>")
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p>The name of the label.</p>") @as("Name") name: option<piiEntityType>,
}
@ocaml.doc("<p>Provides information about an entity. </p>
         <p> </p>")
type entity = {
  @ocaml.doc("<p>A character offset in the input text that shows where the entity ends. The offset
      returns the position of each UTF-8 code point in the string. A <i>code point</i>
      is the abstract character from a particular graphical representation. For example, a
      multi-byte UTF-8 character maps to a single code point. </p>")
  @as("EndOffset")
  endOffset: option<integer_>,
  @ocaml.doc("<p>A character offset in the input text that shows where the entity begins (the first
      character is at position 0). The offset returns the position of each UTF-8 code point in the
      string. A <i>code point</i> is the abstract character from a particular
      graphical representation. For example, a multi-byte UTF-8 character maps to a single code
      point.</p>")
  @as("BeginOffset")
  beginOffset: option<integer_>,
  @ocaml.doc("<p>The text of the entity.</p>") @as("Text") text: option<string_>,
  @ocaml.doc("<p>The entity's type.</p>") @as("Type") type_: option<entityType>,
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend has in the accuracy of the
      detection.</p>")
  @as("Score")
  score: option<float_>,
}
@ocaml.doc("<p>Provides information for filtering a list of dominant language detection jobs. For more
      information, see the  operation.</p>")
type entitiesDetectionJobFilter = {
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Returns only jobs submitted after the specified time. Jobs are returned in descending order,
      newest to oldest.</p>")
  @as("SubmitTimeAfter")
  submitTimeAfter: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
      oldest to newest.</p>")
  @as("SubmitTimeBefore")
  submitTimeBefore: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based on job status. Returns only jobs with the specified
      status.</p>")
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>Filters on the name of the job.</p>") @as("JobName") jobName: option<jobName>,
}
@ocaml.doc("<p>Specifies information about the specified endpoint.</p>")
type endpointProperties = {
  @ocaml.doc("<p>Data access role ARN to use in case the new model is encrypted with a customer KMS
      key.</p>")
  @as("DesiredDataAccessRoleArn")
  desiredDataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS identity and Access Management (IAM) role that
      grants Amazon Comprehend read access to trained custom models encrypted with a customer
      managed key (ModelKmsKeyId).</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The date and time that the endpoint was last modified.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: option<timestamp_>,
  @ocaml.doc("<p>The creation date and time of the endpoint.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc(
    "<p>The number of inference units currently used by the model using this endpoint.</p>"
  )
  @as("CurrentInferenceUnits")
  currentInferenceUnits: option<inferenceUnitsInteger>,
  @ocaml.doc("<p>The desired number of inference units to be used by the model using this endpoint.
      
      Each inference unit represents of a throughput of 100 characters per second.</p>")
  @as("DesiredInferenceUnits")
  desiredInferenceUnits: option<inferenceUnitsInteger>,
  @ocaml.doc("<p>ARN of the new model to use for updating an existing endpoint. This ARN is going to be
      different from the model ARN when the update is in progress</p>")
  @as("DesiredModelArn")
  desiredModelArn: option<comprehendModelArn>,
  @ocaml.doc(
    "<p>The Amazon Resource Number (ARN) of the model to which the endpoint is attached.</p>"
  )
  @as("ModelArn")
  modelArn: option<comprehendModelArn>,
  @ocaml.doc("<p>Specifies a reason for failure in cases of <code>Failed</code> status.</p>")
  @as("Message")
  message: option<anyLengthString>,
  @ocaml.doc("<p>Specifies the status of the endpoint. Because the endpoint updates and creation are
      asynchronous, so customers will need to wait for the endpoint to be <code>Ready</code> status
      before making inference requests.</p>")
  @as("Status")
  status: option<endpointStatus>,
  @ocaml.doc("<p>The Amazon Resource Number (ARN) of the endpoint.</p>") @as("EndpointArn")
  endpointArn: option<comprehendEndpointArn>,
}
@ocaml.doc("<p>The filter used to determine which endpoints are returned. You can filter jobs on their
      name, model, status, or the date and time that they were created. You can only set one filter
      at a time. </p>")
type endpointFilter = {
  @ocaml.doc("<p>Specifies a date after which the returned endpoint or endpoints were created.</p>")
  @as("CreationTimeAfter")
  creationTimeAfter: option<timestamp_>,
  @ocaml.doc(
    "<p>Specifies a date before which the returned endpoint or endpoints were created.</p>"
  )
  @as("CreationTimeBefore")
  creationTimeBefore: option<timestamp_>,
  @ocaml.doc("<p>Specifies the status of the endpoint being returned. Possible values are: Creating, Ready,
      Updating, Deleting, Failed.</p>")
  @as("Status")
  status: option<endpointStatus>,
  @ocaml.doc(
    "<p>The Amazon Resource Number (ARN) of the model to which the endpoint is attached.</p>"
  )
  @as("ModelArn")
  modelArn: option<comprehendModelArn>,
}
@ocaml.doc("<p>Provides information for filtering a list of dominant language detection jobs. For more
      information, see the 
      operation.</p>")
type dominantLanguageDetectionJobFilter = {
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Returns only jobs submitted after the specified time. Jobs are returned in descending order,
      newest to oldest.</p>")
  @as("SubmitTimeAfter")
  submitTimeAfter: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
      oldest to newest.</p>")
  @as("SubmitTimeBefore")
  submitTimeBefore: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based on job status. Returns only jobs with the specified
      status.</p>")
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>Filters on the name of the job.</p>") @as("JobName") jobName: option<jobName>,
}
@ocaml.doc("<p>Returns the code for the dominant language in the input text and the level of
      confidence that Amazon Comprehend has in the accuracy of the detection.</p>")
type dominantLanguage = {
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend has in the accuracy of the
      detection.</p>")
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p>The RFC 5646 language code for the dominant language. For more information about RFC
      5646, see <a href=\"https://tools.ietf.org/html/rfc5646\">Tags for Identifying
        Languages</a> on the <i>IETF Tools</i> web site.</p>")
  @as("LanguageCode")
  languageCode: option<string_>,
}
@ocaml.doc(
  "<p>Specifies one of the label or labels that categorize the document being analyzed.</p>"
)
type documentLabel = {
  @ocaml.doc(
    "<p>The confidence score that Amazon Comprehend has this label correctly attributed.</p>"
  )
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p>The name of the label.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>Describes information about a document classifier and its versions.</p>")
type documentClassifierSummary = {
  @ocaml.doc("<p>Provides the status of the latest document classifier version.</p>")
  @as("LatestVersionStatus")
  latestVersionStatus: option<modelStatus>,
  @ocaml.doc("<p>The version name you assigned to the latest document classifier version.</p>")
  @as("LatestVersionName")
  latestVersionName: option<versionName>,
  @ocaml.doc(
    "<p>The time that the latest document classifier version was submitted for processing.</p>"
  )
  @as("LatestVersionCreatedAt")
  latestVersionCreatedAt: option<timestamp_>,
  @ocaml.doc("<p>The number of versions you created.</p>") @as("NumberOfVersions")
  numberOfVersions: option<integer_>,
  @ocaml.doc("<p>The name that you assigned the document classifier.</p>")
  @as("DocumentClassifierName")
  documentClassifierName: option<comprehendArnName>,
}
@ocaml.doc("<p>Provides output results configuration parameters for custom classifier jobs. </p>")
type documentClassifierOutputDataConfig = {
  @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the
      output results from an analysis job. The KmsKeyId can be one of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>KMS Key Alias: <code>\"alias/ExampleAlias\"</code>
               </p>
            </li>
            <li>
               <p>ARN of a KMS Key Alias:
            <code>\"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias\"</code>
               </p>
            </li>
         </ul>")
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>When you use the <code>OutputDataConfig</code> object while creating a custom
      classifier, you specify the Amazon S3 location where you want to write the confusion matrix.
      The URI must be in the same region as the API endpoint that you are calling. The location is
      used as the prefix for the actual location of this output file.</p>
         <p>When the custom classifier job is finished, the service creates the output file in a
      directory specific to the job. The <code>S3Uri</code> field contains the location of the
      output file, called <code>output.tar.gz</code>. It is a compressed archive that contains the
      confusion matrix.</p>")
  @as("S3Uri")
  s3Uri: option<s3Uri>,
}
@ocaml.doc("<p>Provides information for filtering a list of document classifiers. You can only specify
      one filtering parameter in a request. For more information, see the  operation.</p>")
type documentClassifierFilter = {
  @ocaml.doc("<p>Filters the list of classifiers based on the time that the classifier was submitted for
      processing. Returns only classifiers submitted after the specified time. Classifiers are
      returned in descending order, newest to oldest.</p>")
  @as("SubmitTimeAfter")
  submitTimeAfter: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of classifiers based on the time that the classifier was submitted for
      processing. Returns only classifiers submitted before the specified time. Classifiers are
      returned in ascending order, oldest to newest.</p>")
  @as("SubmitTimeBefore")
  submitTimeBefore: option<timestamp_>,
  @ocaml.doc("<p>The name that you assigned to the document classifier</p>")
  @as("DocumentClassifierName")
  documentClassifierName: option<comprehendArnName>,
  @ocaml.doc("<p>Filters the list of classifiers based on status.</p>") @as("Status")
  status: option<modelStatus>,
}
@ocaml.doc("<p>Provides information for filtering a list of document classification jobs. For more
      information, see the  operation. You can
      provide only one filter parameter in each request.</p>")
type documentClassificationJobFilter = {
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Returns only jobs submitted after the specified time. Jobs are returned in descending order,
      newest to oldest.</p>")
  @as("SubmitTimeAfter")
  submitTimeAfter: option<timestamp_>,
  @ocaml.doc("<p>Filters the list of jobs based on the time that the job was submitted for processing.
      Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
      oldest to newest.</p>")
  @as("SubmitTimeBefore")
  submitTimeBefore: option<timestamp_>,
  @ocaml.doc(
    "<p>Filters the list based on job status. Returns only jobs with the specified status.</p>"
  )
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>Filters on the name of the job.</p>") @as("JobName") jobName: option<jobName>,
}
@ocaml.doc("<p>Specifies the class that categorizes the document being analyzed</p>")
type documentClass = {
  @ocaml.doc(
    "<p>The confidence score that Amazon Comprehend has this class correctly attributed.</p>"
  )
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p>The name of the class.</p>") @as("Name") name: option<string_>,
}
type customerInputStringList = array<customerInputString>
@ocaml.doc("<p>Describes the result metrics for the test data associated with an documentation
      classifier.</p>")
type classifierEvaluationMetrics = {
  @ocaml.doc("<p>Indicates the fraction of labels that are incorrectly predicted. Also seen as the fraction
      of wrong labels compared to the total number of labels. Scores closer to zero are
      better.</p>")
  @as("HammingLoss")
  hammingLoss: option<double>,
  @ocaml.doc("<p>A measure of how accurate the classifier results are for the test data. It is a
      combination of the <code>Micro Precision</code> and <code>Micro Recall</code> values. The
        <code>Micro F1Score</code> is the harmonic mean of the two scores. The highest score is 1,
      and the worst score is 0.</p>")
  @as("MicroF1Score")
  microF1Score: option<double>,
  @ocaml.doc("<p>A measure of how complete the classifier results are for the test data. High recall means
      that the classifier returned most of the relevant results. Specifically, this indicates how
      many of the correct categories in the text that the model can predict. It is a percentage of
      correct categories in the text that can found. Instead of averaging the recall scores of all
      labels (as with Recall), micro Recall is based on the overall score of all recall scores added
      together.</p>")
  @as("MicroRecall")
  microRecall: option<double>,
  @ocaml.doc("<p>A measure of the usefulness of the recognizer results in the test data. High precision
      means that the recognizer returned substantially more relevant results than irrelevant ones.
      Unlike the Precision metric which comes from averaging the precision of all available labels,
      this is based on the overall score of all precision scores added together.</p>")
  @as("MicroPrecision")
  microPrecision: option<double>,
  @ocaml.doc("<p>A measure of how accurate the classifier results are for the test data. It is derived from
      the <code>Precision</code> and <code>Recall</code> values. The <code>F1Score</code> is the
      harmonic average of the two scores. The highest score is 1, and the worst score is 0. </p>")
  @as("F1Score")
  f1Score: option<double>,
  @ocaml.doc("<p>A measure of how complete the classifier results are for the test data. High recall means
      that the classifier returned most of the relevant results. </p>")
  @as("Recall")
  recall: option<double>,
  @ocaml.doc("<p>A measure of the usefulness of the classifier results in the test data. High precision
      means that the classifier returned substantially more relevant results than irrelevant
      ones.</p>")
  @as("Precision")
  precision: option<double>,
  @ocaml.doc("<p>The fraction of the labels that were correct recognized. It is computed by dividing the
      number of labels in the test documents that were correctly recognized by the total number of
      labels in the test documents.</p>")
  @as("Accuracy")
  accuracy: option<double>,
}
@ocaml.doc("<p>Describes an error that occurred while processing a document in a batch. The operation
      returns on <code>BatchItemError</code> object for each document that contained an
      error.</p>")
type batchItemError = {
  @ocaml.doc("<p>A text description of the error.</p>") @as("ErrorMessage")
  errorMessage: option<string_>,
  @ocaml.doc("<p>The numeric error code of the error.</p>") @as("ErrorCode")
  errorCode: option<string_>,
  @ocaml.doc("<p>The zero-based index of the document in the input list.</p>") @as("Index")
  index: option<integer_>,
}
type attributeNamesList = array<attributeNamesListItem>
@ocaml.doc("<p> Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
      the resources you are using for the job. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon
        VPC</a>. </p>")
type vpcConfig = {
  @ocaml.doc("<p>The ID for each subnet being used in your private VPC. This subnet is a subset of the a
      range of IPv4 addresses used by the VPC and is specific to a given availability zone in the
      VPC’s region. This ID number is preceded by \"subnet-\", for instance:
      \"subnet-04ccf456919e69055\". For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html\">VPCs and
        Subnets</a>. </p>")
  @as("Subnets")
  subnets: subnets,
  @ocaml.doc("<p>The ID number for a security group on an instance of your private VPC. Security groups on
      your VPC function serve as a virtual firewall to control inbound and outbound traffic and
      provides security for the resources that you’ll be accessing on the VPC. This ID number is
      preceded by \"sg-\", for instance: \"sg-03b388029b0a285ea\". For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html\">Security
        Groups for your VPC</a>. </p>")
  @as("SecurityGroupIds")
  securityGroupIds: securityGroupIds,
}
type tagList_ = array<tag>
@ocaml.doc("<p>Represents a work in the input text that was recognized and assigned a part of speech.
      There is one syntax token record for each word in the source text.</p>")
type syntaxToken = {
  @ocaml.doc("<p>Provides the part of speech label and the confidence level that Amazon Comprehend has that
      the part of speech was correctly identified. For more information, see <a>how-syntax</a>.</p>")
  @as("PartOfSpeech")
  partOfSpeech: option<partOfSpeechTag>,
  @ocaml.doc("<p>The zero-based offset from the beginning of the source text to the last character in the
      word.</p>")
  @as("EndOffset")
  endOffset: option<integer_>,
  @ocaml.doc("<p>The zero-based offset from the beginning of the source text to the first character in the
      word.</p>")
  @as("BeginOffset")
  beginOffset: option<integer_>,
  @ocaml.doc("<p>The word that was recognized in the source text.</p>") @as("Text")
  text: option<string_>,
  @ocaml.doc("<p>A unique identifier for a token.</p>") @as("TokenId") tokenId: option<integer_>,
}
@ocaml.doc("<p>Provides configuration parameters for PII entity redaction.</p>")
type redactionConfig = {
  @ocaml.doc("<p>A character that replaces each character in the redacted PII entity.</p>")
  @as("MaskCharacter")
  maskCharacter: option<maskCharacter>,
  @ocaml.doc("<p>Specifies whether the PII entity is redacted with the mask character or the entity
      type.</p>")
  @as("MaskMode")
  maskMode: option<piiEntitiesDetectionMaskMode>,
  @ocaml.doc("<p>An array of the types of PII entities that Amazon Comprehend detects in the input text for
      your request.</p>")
  @as("PiiEntityTypes")
  piiEntityTypes: option<listOfPiiEntityTypes>,
}
type listOfPiiEntities = array<piiEntity>
type listOfLabels = array<documentLabel>
type listOfKeyPhrases = array<keyPhrase>
type listOfEntityLabels = array<entityLabel>
type listOfEntities = array<entity>
type listOfDominantLanguages = array<dominantLanguage>
type listOfClasses = array<documentClass>
type entityTypesList = array<entityTypesListItem>
type entityRecognizerSummariesList = array<entityRecognizerSummary>
@ocaml.doc("<p>Individual item from the list of entity types in the metadata of an entity
      recognizer.</p>")
type entityRecognizerMetadataEntityTypesListItem = {
  @ocaml.doc(
    "<p>Indicates the number of times the given entity type was seen in the training data. </p>"
  )
  @as("NumberOfTrainMentions")
  numberOfTrainMentions: option<integer_>,
  @ocaml.doc("<p>Detailed information about the accuracy of the entity recognizer for a specific item on
      the list of entity types. </p>")
  @as("EvaluationMetrics")
  evaluationMetrics: option<entityTypesEvaluationMetrics>,
  @ocaml.doc("<p>Type of entity from the list of entity types in the metadata of an entity recognizer.
    </p>")
  @as("Type")
  type_: option<anyLengthString>,
}
type endpointPropertiesList = array<endpointProperties>
@ocaml.doc("<p>The input properties for a topic detection job.</p>")
type documentReaderConfig = {
  @ocaml.doc("<p>Specifies how the text in an input file should be processed:</p>")
  @as("FeatureTypes")
  featureTypes: option<listOfDocumentReadFeatureTypes>,
  @ocaml.doc("<p>This enum field provides two values:</p>
         <ul>
            <li>
               <p>
                  <code>SERVICE_DEFAULT</code> - use service defaults for Document reading. For
          Digital PDF it would mean using an internal parser instead of Textract APIs</p>
            </li>
            <li>
               <p>
                  <code>FORCE_DOCUMENT_READ_ACTION</code> - Always use specified action for
          DocumentReadAction, including Digital PDF. </p>
            </li>
         </ul>")
  @as("DocumentReadMode")
  documentReadMode: option<documentReadMode>,
  @ocaml.doc("<p>This enum field will start with two values which will apply to PDFs:</p>
         <ul>
            <li>
               <p>
                  <code>TEXTRACT_DETECT_DOCUMENT_TEXT</code> - The service calls DetectDocumentText
          for PDF documents per page.</p>
            </li>
            <li>
               <p>
                  <code>TEXTRACT_ANALYZE_DOCUMENT</code> - The service calls AnalyzeDocument for PDF
          documents per page.</p>
            </li>
         </ul>")
  @as("DocumentReadAction")
  documentReadAction: documentReadAction,
}
type documentClassifierSummariesList = array<documentClassifierSummary>
@ocaml.doc("<p>Provides information about a document classifier.</p>")
type classifierMetadata = {
  @ocaml.doc("<p> Describes the result metrics for the test data associated with an documentation
      classifier.</p>")
  @as("EvaluationMetrics")
  evaluationMetrics: option<classifierEvaluationMetrics>,
  @ocaml.doc("<p>The number of documents in the input data that were used to test the classifier. Typically
      this is 10 to 20 percent of the input documents, up to 10,000 documents.</p>")
  @as("NumberOfTestDocuments")
  numberOfTestDocuments: option<integer_>,
  @ocaml.doc("<p>The number of documents in the input data that were used to train the classifier.
      Typically this is 80 to 90 percent of the input documents.</p>")
  @as("NumberOfTrainedDocuments")
  numberOfTrainedDocuments: option<integer_>,
  @ocaml.doc("<p>The number of labels in the input data. </p>") @as("NumberOfLabels")
  numberOfLabels: option<integer_>,
}
type batchItemErrorList = array<batchItemError>
@ocaml.doc("<p>The result of calling the  operation. The
      operation returns one object for each document that is successfully processed by the
      operation.</p>")
type batchDetectSentimentItemResult = {
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend has in the accuracy of its sentiment
      detection.</p>")
  @as("SentimentScore")
  sentimentScore: option<sentimentScore>,
  @ocaml.doc("<p>The sentiment detected in the document.</p>") @as("Sentiment")
  sentiment: option<sentimentType>,
  @ocaml.doc("<p>The zero-based index of the document in the input list.</p>") @as("Index")
  index: option<integer_>,
}
@ocaml.doc("<p>An augmented manifest file that provides training data for your custom model. An augmented
      manifest file is a labeled dataset that is produced by Amazon SageMaker Ground Truth.</p>")
type augmentedManifestsListItem = {
  @ocaml.doc("<p>The type of augmented manifest. PlainTextDocument or SemiStructuredDocument. If you don't
      specify, the default is PlainTextDocument. </p>
         <ul>
            <li>
               <p>
                  <code>PLAIN_TEXT_DOCUMENT</code> A document type that represents any unicode text that
          is encoded in UTF-8.</p>
            </li>
            <li>
               <p>
                  <code>SEMI_STRUCTURED_DOCUMENT</code> A document type with positional and structural
          context, like a PDF. For training with Amazon Comprehend, only PDFs are supported. For
          inference, Amazon Comprehend support PDFs, DOCX and TXT.</p>
            </li>
         </ul>")
  @as("DocumentType")
  documentType: option<augmentedManifestsDocumentTypeFormat>,
  @ocaml.doc("<p>The S3 prefix to the source files (PDFs) that are referred to in the augmented manifest
      file.</p>")
  @as("SourceDocumentsS3Uri")
  sourceDocumentsS3Uri: option<s3Uri>,
  @ocaml.doc("<p>The S3 prefix to the annotation files that are referred in the augmented manifest
      file.</p>")
  @as("AnnotationDataS3Uri")
  annotationDataS3Uri: option<s3Uri>,
  @ocaml.doc("<p>The JSON attribute that contains the annotations for your training documents. The number
      of attribute names that you specify depends on whether your augmented manifest file is the
      output of a single labeling job or a chained labeling job.</p>
         <p>If your file is the output of a single labeling job, specify the LabelAttributeName key
      that was used when the job was created in Ground Truth.</p>
         <p>If your file is the output of a chained labeling job, specify the LabelAttributeName key
      for one or more jobs in the chain. Each LabelAttributeName key provides the annotations from
      an individual job.</p>")
  @as("AttributeNames")
  attributeNames: attributeNamesList,
  @ocaml.doc("<p>The purpose of the data you've provided in the augmented manifest. You can either train or
      test this data. If you don't specify, the default is train.</p>
         <p>TRAIN - all of the documents in the manifest will be used for training. If no test
      documents are provided, Amazon Comprehend will automatically reserve a portion of the training
      documents for testing.</p>
         <p> TEST - all of the documents in the manifest will be used for testing.</p>")
  @as("Split")
  split: option<split>,
  @ocaml.doc("<p>The Amazon S3 location of the augmented manifest file.</p>") @as("S3Uri")
  s3Uri: s3Uri,
}
type listOfSyntaxTokens = array<syntaxToken>
type listOfDetectSentimentResult = array<batchDetectSentimentItemResult>
@ocaml.doc("<p>The input properties for an inference job.</p>")
type inputDataConfig = {
  @ocaml.doc("<p>The document reader config field applies only for InputDataConfig of
      StartEntitiesDetectionJob. </p>
         <p>Use DocumentReaderConfig to provide specifications about how you want your inference
      documents read. Currently it applies for PDF documents in StartEntitiesDetectionJob custom
      inference.</p>")
  @as("DocumentReaderConfig")
  documentReaderConfig: option<documentReaderConfig>,
  @ocaml.doc("<p>Specifies how the text in an input file should be processed:</p>
         <ul>
            <li>
               <p>
                  <code>ONE_DOC_PER_FILE</code> - Each file is considered a separate document. Use
          this option when you are processing large documents, such as newspaper articles or
          scientific papers.</p>
            </li>
            <li>
               <p>
                  <code>ONE_DOC_PER_LINE</code> - Each line in a file is considered a separate
          document. Use this option when you are processing many short documents, such as text
          messages.</p>
            </li>
         </ul>")
  @as("InputFormat")
  inputFormat: option<inputFormat>,
  @ocaml.doc("<p>The Amazon S3 URI for the input data. The URI must be in same region as the API
      endpoint that you are calling. The URI can point to a single input file or it can provide the
      prefix for a collection of data files. </p>
         <p>For example, if you use the URI <code>S3://bucketName/prefix</code>, if the prefix is a
      single file, Amazon Comprehend uses that file as input. If more than one file begins with the
      prefix, Amazon Comprehend uses all of them as input.</p>")
  @as("S3Uri")
  s3Uri: s3Uri,
}
type entityRecognizerMetadataEntityTypesList = array<entityRecognizerMetadataEntityTypesListItem>
type entityRecognizerAugmentedManifestsList = array<augmentedManifestsListItem>
type documentClassifierAugmentedManifestsList = array<augmentedManifestsListItem>
@ocaml.doc("<p>The result of calling the  operation. The
      operation returns one object for each document that is successfully processed by the
      operation.</p>")
type batchDetectKeyPhrasesItemResult = {
  @ocaml.doc("<p>One or more <a>KeyPhrase</a> objects, one for each key phrase detected in
      the document.</p>")
  @as("KeyPhrases")
  keyPhrases: option<listOfKeyPhrases>,
  @ocaml.doc("<p>The zero-based index of the document in the input list.</p>") @as("Index")
  index: option<integer_>,
}
@ocaml.doc("<p>The result of calling the  operation. The
      operation returns one object for each document that is successfully processed by the
      operation.</p>")
type batchDetectEntitiesItemResult = {
  @ocaml.doc("<p>One or more <a>Entity</a> objects, one for each entity detected in the
      document.</p>")
  @as("Entities")
  entities: option<listOfEntities>,
  @ocaml.doc("<p>The zero-based index of the document in the input list.</p>") @as("Index")
  index: option<integer_>,
}
@ocaml.doc("<p>The result of calling the  operation.
      The operation returns one object for each document that is successfully processed by the
      operation.</p>")
type batchDetectDominantLanguageItemResult = {
  @ocaml.doc("<p>One or more <a>DominantLanguage</a> objects describing the dominant
      languages in the document.</p>")
  @as("Languages")
  languages: option<listOfDominantLanguages>,
  @ocaml.doc("<p>The zero-based index of the document in the input list.</p>") @as("Index")
  index: option<integer_>,
}
@ocaml.doc("<p>Provides information about a topic detection job.</p>")
type topicsDetectionJobProperties = {
  @ocaml.doc("<p>Configuration parameters for a private Virtual Private Cloud (VPC) containing the
      resources you are using for your topic detection job. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon
        VPC</a>. </p>")
  @as("VpcConfig")
  vpcConfig: option<vpcConfig>,
  @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the analysis
      job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
  @as("VolumeKmsKeyId")
  volumeKmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants
      Amazon Comprehend read access to your job data. </p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The number of topics to detect supplied when you created the topic detection job. The
      default is 10. </p>")
  @as("NumberOfTopics")
  numberOfTopics: option<integer_>,
  @ocaml.doc("<p>The output data configuration supplied when you created the topic detection
      job.</p>")
  @as("OutputDataConfig")
  outputDataConfig: option<outputDataConfig>,
  @ocaml.doc("<p>The input data configuration supplied when you created the topic detection
      job.</p>")
  @as("InputDataConfig")
  inputDataConfig: option<inputDataConfig>,
  @ocaml.doc("<p>The time that the topic detection job was completed.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The time that the topic detection job was submitted for processing.</p>")
  @as("SubmitTime")
  submitTime: option<timestamp_>,
  @ocaml.doc("<p>A description for the status of a job.</p>") @as("Message")
  message: option<anyLengthString>,
  @ocaml.doc("<p>The current status of the topic detection job. If the status is <code>Failed</code>,
      the reason for the failure is shown in the <code>Message</code> field.</p>")
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>The name of the topic detection job.</p>") @as("JobName") jobName: option<jobName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the topics detection job. It is a unique, fully
      qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
      format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:topics-detection-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:topics-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
  @as("JobArn")
  jobArn: option<comprehendArn>,
  @ocaml.doc("<p>The identifier assigned to the topic detection job.</p>") @as("JobId")
  jobId: option<jobId>,
}
@ocaml.doc("<p>Provides information about a targeted sentiment detection job.</p>")
type targetedSentimentDetectionJobProperties = {
  @as("VpcConfig") vpcConfig: option<vpcConfig>,
  @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the  
      targeted sentiment detection job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
          <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
  @as("VolumeKmsKeyId")
  volumeKmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input
      data.</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The language code of the input documents.</p>") @as("LanguageCode")
  languageCode: option<languageCode>,
  @as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
  @as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
  @ocaml.doc("<p>The time that the targeted sentiment detection job ended.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc(
    "<p>The time that the targeted sentiment detection job was submitted for processing.</p>"
  )
  @as("SubmitTime")
  submitTime: option<timestamp_>,
  @ocaml.doc("<p>A description of the status of a job.</p>") @as("Message")
  message: option<anyLengthString>,
  @ocaml.doc("<p>The current status of the targeted sentiment detection job. If the status is <code>FAILED</code>,
      the <code>Messages</code> field shows the reason for the failure.</p>")
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>The name that you assigned to the targeted sentiment detection job.</p>")
  @as("JobName")
  jobName: option<jobName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the targeted sentiment detection job. It is a unique, fully
      qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
      format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:targeted-sentiment-detection-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:targeted-sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
  @as("JobArn")
  jobArn: option<comprehendArn>,
  @ocaml.doc("<p>The identifier assigned to the targeted sentiment detection job.</p>") @as("JobId")
  jobId: option<jobId>,
}
@ocaml.doc("<p>Provides information about a sentiment detection job.</p>")
type sentimentDetectionJobProperties = {
  @ocaml.doc("<p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
      resources you are using for your sentiment detection job. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon
        VPC</a>. </p>")
  @as("VpcConfig")
  vpcConfig: option<vpcConfig>,
  @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the analysis
      job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
  @as("VolumeKmsKeyId")
  volumeKmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input
      data.</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The language code of the input documents.</p>") @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>The output data configuration that you supplied when you created the sentiment detection
      job.</p>")
  @as("OutputDataConfig")
  outputDataConfig: option<outputDataConfig>,
  @ocaml.doc("<p>The input data configuration that you supplied when you created the sentiment detection
      job.</p>")
  @as("InputDataConfig")
  inputDataConfig: option<inputDataConfig>,
  @ocaml.doc("<p>The time that the sentiment detection job ended.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The time that the sentiment detection job was submitted for processing.</p>")
  @as("SubmitTime")
  submitTime: option<timestamp_>,
  @ocaml.doc("<p>A description of the status of a job.</p>") @as("Message")
  message: option<anyLengthString>,
  @ocaml.doc("<p>The current status of the sentiment detection job. If the status is <code>FAILED</code>,
      the <code>Messages</code> field shows the reason for the failure.</p>")
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>The name that you assigned to the sentiment detection job</p>") @as("JobName")
  jobName: option<jobName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the sentiment detection job. It is a unique, fully
      qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
      format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:sentiment-detection-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
  @as("JobArn")
  jobArn: option<comprehendArn>,
  @ocaml.doc("<p>The identifier assigned to the sentiment detection job.</p>") @as("JobId")
  jobId: option<jobId>,
}
@ocaml.doc("<p>Provides information about a PII entities detection job.</p>")
type piiEntitiesDetectionJobProperties = {
  @ocaml.doc("<p>Specifies whether the output provides the locations (offsets) of PII entities or a file in
      which PII entities are redacted.</p>")
  @as("Mode")
  mode: option<piiEntitiesDetectionMode>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input
      data.</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The language code of the input documents</p>") @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>Provides configuration parameters for PII entity redaction.</p>
         <p>This parameter is required if you set the <code>Mode</code> parameter to
        <code>ONLY_REDACTION</code>. In that case, you must provide a <code>RedactionConfig</code>
      definition that includes the <code>PiiEntityTypes</code> parameter.</p>")
  @as("RedactionConfig")
  redactionConfig: option<redactionConfig>,
  @ocaml.doc("<p>The output data configuration that you supplied when you created the PII entities
      detection job.</p>")
  @as("OutputDataConfig")
  outputDataConfig: option<piiOutputDataConfig>,
  @ocaml.doc("<p>The input properties for a PII entities detection job.</p>") @as("InputDataConfig")
  inputDataConfig: option<inputDataConfig>,
  @ocaml.doc("<p>The time that the PII entities detection job completed.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The time that the PII entities detection job was submitted for processing.</p>")
  @as("SubmitTime")
  submitTime: option<timestamp_>,
  @ocaml.doc("<p>A description of the status of a job.</p>") @as("Message")
  message: option<anyLengthString>,
  @ocaml.doc("<p>The current status of the PII entities detection job. If the status is
      <code>FAILED</code>, the <code>Message</code> field shows the reason for the failure.</p>")
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>The name that you assigned the PII entities detection job.</p>") @as("JobName")
  jobName: option<jobName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the PII entities detection job. It is a unique, fully
      qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
      format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:pii-entities-detection-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:pii-entities-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
  @as("JobArn")
  jobArn: option<comprehendArn>,
  @ocaml.doc("<p>The identifier assigned to the PII entities detection job.</p>") @as("JobId")
  jobId: option<jobId>,
}
type listOfDetectKeyPhrasesResult = array<batchDetectKeyPhrasesItemResult>
type listOfDetectEntitiesResult = array<batchDetectEntitiesItemResult>
type listOfDetectDominantLanguageResult = array<batchDetectDominantLanguageItemResult>
@ocaml.doc("<p>Provides information about a key phrases detection job.</p>")
type keyPhrasesDetectionJobProperties = {
  @ocaml.doc("<p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
      resources you are using for your key phrases detection job. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon
        VPC</a>. </p>")
  @as("VpcConfig")
  vpcConfig: option<vpcConfig>,
  @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the analysis
      job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
  @as("VolumeKmsKeyId")
  volumeKmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input
      data.</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The language code of the input documents.</p>") @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>The output data configuration that you supplied when you created the key phrases detection
      job.</p>")
  @as("OutputDataConfig")
  outputDataConfig: option<outputDataConfig>,
  @ocaml.doc("<p>The input data configuration that you supplied when you created the key phrases detection
      job.</p>")
  @as("InputDataConfig")
  inputDataConfig: option<inputDataConfig>,
  @ocaml.doc("<p>The time that the key phrases detection job completed.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The time that the key phrases detection job was submitted for processing.</p>")
  @as("SubmitTime")
  submitTime: option<timestamp_>,
  @ocaml.doc("<p>A description of the status of a job.</p>") @as("Message")
  message: option<anyLengthString>,
  @ocaml.doc("<p>The current status of the key phrases detection job. If the status is <code>FAILED</code>,
      the <code>Message</code> field shows the reason for the failure.</p>")
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>The name that you assigned the key phrases detection job.</p>") @as("JobName")
  jobName: option<jobName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the key phrases detection job. It is a unique, fully
      qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
      format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:key-phrases-detection-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:key-phrases-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
  @as("JobArn")
  jobArn: option<comprehendArn>,
  @ocaml.doc("<p>The identifier assigned to the key phrases detection job.</p>") @as("JobId")
  jobId: option<jobId>,
}
@ocaml.doc("<p>Provides information about an events detection job.</p>")
type eventsDetectionJobProperties = {
  @ocaml.doc("<p>The types of events that are detected by the job.</p>") @as("TargetEventTypes")
  targetEventTypes: option<targetEventTypes>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identify and Access Management (IAM) role that
      grants Amazon Comprehend read access to your input data.</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The language code of the input documents.</p>") @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>The output data configuration that you supplied when you created the events detection
      job.</p>")
  @as("OutputDataConfig")
  outputDataConfig: option<outputDataConfig>,
  @ocaml.doc("<p>The input data configuration that you supplied when you created the events detection
      job.</p>")
  @as("InputDataConfig")
  inputDataConfig: option<inputDataConfig>,
  @ocaml.doc("<p>The time that the events detection job completed.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The time that the events detection job was submitted for processing.</p>")
  @as("SubmitTime")
  submitTime: option<timestamp_>,
  @ocaml.doc("<p>A description of the status of the events detection job.</p>") @as("Message")
  message: option<anyLengthString>,
  @ocaml.doc("<p>The current status of the events detection job.</p>") @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>The name you assigned the events detection job.</p>") @as("JobName")
  jobName: option<jobName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the events detection job. It is a unique, fully
      qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
      format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:events-detection-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:events-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
  @as("JobArn")
  jobArn: option<comprehendArn>,
  @ocaml.doc("<p>The identifier assigned to the events detection job.</p>") @as("JobId")
  jobId: option<jobId>,
}
@ocaml.doc("<p>Detailed information about an entity recognizer.</p>")
type entityRecognizerMetadata = {
  @ocaml.doc("<p>Entity types from the metadata of an entity recognizer.</p>") @as("EntityTypes")
  entityTypes: option<entityRecognizerMetadataEntityTypesList>,
  @ocaml.doc("<p>Detailed information about the accuracy of an entity recognizer.</p>")
  @as("EvaluationMetrics")
  evaluationMetrics: option<entityRecognizerEvaluationMetrics>,
  @ocaml.doc("<p> The number of documents in the input data that were used to test the entity recognizer.
      Typically this is 10 to 20 percent of the input documents.</p>")
  @as("NumberOfTestDocuments")
  numberOfTestDocuments: option<integer_>,
  @ocaml.doc("<p> The number of documents in the input data that were used to train the entity recognizer.
      Typically this is 80 to 90 percent of the input documents.</p>")
  @as("NumberOfTrainedDocuments")
  numberOfTrainedDocuments: option<integer_>,
}
@ocaml.doc("<p>Specifies the format and location of the input data.</p>")
type entityRecognizerInputDataConfig = {
  @ocaml.doc("<p>A list of augmented manifest files that provide training data for your custom model. An
      augmented manifest file is a labeled dataset that is produced by Amazon SageMaker Ground
      Truth.</p>
         <p>This parameter is required if you set <code>DataFormat</code> to
        <code>AUGMENTED_MANIFEST</code>.</p>")
  @as("AugmentedManifests")
  augmentedManifests: option<entityRecognizerAugmentedManifestsList>,
  @ocaml.doc("<p>The S3 location of the CSV file that has the entity list for your custom entity
      recognizer.</p>")
  @as("EntityList")
  entityList: option<entityRecognizerEntityList>,
  @ocaml.doc("<p>The S3 location of the CSV file that annotates your training documents.</p>")
  @as("Annotations")
  annotations: option<entityRecognizerAnnotations>,
  @ocaml.doc("<p>The S3 location of the folder that contains the training documents for your custom entity
      recognizer.</p>
         <p>This parameter is required if you set <code>DataFormat</code> to
        <code>COMPREHEND_CSV</code>.</p>")
  @as("Documents")
  documents: option<entityRecognizerDocuments>,
  @ocaml.doc("<p>The entity types in the labeled training data that Amazon Comprehend uses to train the
      custom entity recognizer. Any entity types that you don't specify are ignored.</p>
         <p>A maximum of 25 entity types can be used at one time to train an entity recognizer. Entity
      types must not contain the following invalid characters: \\n (line break), \\\\n (escaped line
      break), \\r (carriage return), \\\\r (escaped carriage return), \\t (tab), \\\\t (escaped tab),
      space, and , (comma). </p>")
  @as("EntityTypes")
  entityTypes: entityTypesList,
  @ocaml.doc("<p>The format of your training data:</p>
         <ul>
            <li>
               <p>
                  <code>COMPREHEND_CSV</code>: A CSV file that supplements your training documents. The
          CSV file contains information about the custom entities that your trained model will
          detect. The required format of the file depends on whether you are providing annotations
          or an entity list.</p>
               <p>If you use this value, you must provide your CSV file by using either the
            <code>Annotations</code> or <code>EntityList</code> parameters. You must provide your
          training documents by using the <code>Documents</code> parameter.</p>
            </li>
            <li>
               <p>
                  <code>AUGMENTED_MANIFEST</code>: A labeled dataset that is produced by Amazon
          SageMaker Ground Truth. This file is in JSON lines format. Each line is a complete JSON
          object that contains a training document and its labels. Each label annotates a named
          entity in the training document. </p>
               <p>If you use this value, you must provide the <code>AugmentedManifests</code> parameter
          in your request.</p>
            </li>
         </ul>
         <p>If you don't specify a value, Amazon Comprehend uses <code>COMPREHEND_CSV</code> as the
      default.</p>")
  @as("DataFormat")
  dataFormat: option<entityRecognizerDataFormat>,
}
@ocaml.doc("<p>Provides information about an entities detection job.</p>")
type entitiesDetectionJobProperties = {
  @ocaml.doc("<p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
      resources you are using for your entity detection job. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon
        VPC</a>. </p>")
  @as("VpcConfig")
  vpcConfig: option<vpcConfig>,
  @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the analysis
      job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
  @as("VolumeKmsKeyId")
  volumeKmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input
      data.</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The language code of the input documents.</p>") @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>The output data configuration that you supplied when you created the entities detection
      job. </p>")
  @as("OutputDataConfig")
  outputDataConfig: option<outputDataConfig>,
  @ocaml.doc("<p>The input data configuration that you supplied when you created the entities detection
      job.</p>")
  @as("InputDataConfig")
  inputDataConfig: option<inputDataConfig>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>")
  @as("EntityRecognizerArn")
  entityRecognizerArn: option<entityRecognizerArn>,
  @ocaml.doc("<p>The time that the entities detection job completed</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The time that the entities detection job was submitted for processing.</p>")
  @as("SubmitTime")
  submitTime: option<timestamp_>,
  @ocaml.doc("<p>A description of the status of a job.</p>") @as("Message")
  message: option<anyLengthString>,
  @ocaml.doc("<p>The current status of the entities detection job. If the status is <code>FAILED</code>,
      the <code>Message</code> field shows the reason for the failure.</p>")
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>The name that you assigned the entities detection job.</p>") @as("JobName")
  jobName: option<jobName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the entities detection job. It is a unique, fully
      qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
      format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:entities-detection-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:entities-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
  @as("JobArn")
  jobArn: option<comprehendArn>,
  @ocaml.doc("<p>The identifier assigned to the entities detection job.</p>") @as("JobId")
  jobId: option<jobId>,
}
@ocaml.doc("<p>Provides information about a dominant language detection job.</p>")
type dominantLanguageDetectionJobProperties = {
  @ocaml.doc("<p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
      resources you are using for your dominant language detection job. For more information, see
        <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon
        VPC</a>. </p>")
  @as("VpcConfig")
  vpcConfig: option<vpcConfig>,
  @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the analysis
      job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
  @as("VolumeKmsKeyId")
  volumeKmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input
      data.</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The output data configuration that you supplied when you created the dominant language
      detection job.</p>")
  @as("OutputDataConfig")
  outputDataConfig: option<outputDataConfig>,
  @ocaml.doc("<p>The input data configuration that you supplied when you created the dominant language
      detection job.</p>")
  @as("InputDataConfig")
  inputDataConfig: option<inputDataConfig>,
  @ocaml.doc("<p>The time that the dominant language detection job completed.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc(
    "<p>The time that the dominant language detection job was submitted for processing.</p>"
  )
  @as("SubmitTime")
  submitTime: option<timestamp_>,
  @ocaml.doc("<p>A description for the status of a job.</p>") @as("Message")
  message: option<anyLengthString>,
  @ocaml.doc("<p>The current status of the dominant language detection job. If the status is
        <code>FAILED</code>, the <code>Message</code> field shows the reason for the failure.</p>")
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>The name that you assigned to the dominant language detection job.</p>")
  @as("JobName")
  jobName: option<jobName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dominant language detection job. It is a unique,
      fully qualified identifier for the job. It includes the AWS account, Region, and the job ID.
      The format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:dominant-language-detection-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:dominant-language-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
  @as("JobArn")
  jobArn: option<comprehendArn>,
  @ocaml.doc("<p>The identifier assigned to the dominant language detection job.</p>") @as("JobId")
  jobId: option<jobId>,
}
@ocaml.doc("<p>The input properties for training a document classifier. </p>
         <p>For more information on how the input file is formatted, see <a>how-document-classification-training-data</a>. </p>")
type documentClassifierInputDataConfig = {
  @ocaml.doc("<p>A list of augmented manifest files that provide training data for your custom model. An
      augmented manifest file is a labeled dataset that is produced by Amazon SageMaker Ground
      Truth.</p>
         <p>This parameter is required if you set <code>DataFormat</code> to
        <code>AUGMENTED_MANIFEST</code>.</p>")
  @as("AugmentedManifests")
  augmentedManifests: option<documentClassifierAugmentedManifestsList>,
  @ocaml.doc("<p>Indicates the delimiter used to separate each label for training a multi-label classifier.
      The default delimiter between labels is a pipe (|). You can use a different character as a
      delimiter (if it's an allowed character) by specifying it under Delimiter for labels. If the
      training documents use a delimiter other than the default or the delimiter you specify, the
      labels on that line will be combined to make a single unique label, such as
      LABELLABELLABEL.</p>")
  @as("LabelDelimiter")
  labelDelimiter: option<labelDelimiter>,
  @ocaml.doc("<p>The Amazon S3 URI for the input data. The Amazon S3 bucket must be in the same AWS Region
      as the API endpoint that you are calling. The URI can point to a single input file or it can
      provide the prefix for a collection of input files. </p>")
  @as("TestS3Uri")
  testS3Uri: option<s3Uri>,
  @ocaml.doc("<p>The Amazon S3 URI for the input data. The S3 bucket must be in the same region as the API
      endpoint that you are calling. The URI can point to a single input file or it can provide the
      prefix for a collection of input files.</p>
         <p>For example, if you use the URI <code>S3://bucketName/prefix</code>, if the prefix is a
      single file, Amazon Comprehend uses that file as input. If more than one file begins with the
      prefix, Amazon Comprehend uses all of them as input.</p>
         <p>This parameter is required if you set <code>DataFormat</code> to
        <code>COMPREHEND_CSV</code>.</p>")
  @as("S3Uri")
  s3Uri: option<s3Uri>,
  @ocaml.doc("<p>The format of your training data:</p>
         <ul>
            <li>
               <p>
                  <code>COMPREHEND_CSV</code>: A two-column CSV file, where labels are provided in the
          first column, and documents are provided in the second. If you use this value, you must
          provide the <code>S3Uri</code> parameter in your request.</p>
            </li>
            <li>
               <p>
                  <code>AUGMENTED_MANIFEST</code>: A labeled dataset that is produced by Amazon
          SageMaker Ground Truth. This file is in JSON lines format. Each line is a complete JSON
          object that contains a training document and its associated labels. </p>
               <p>If you use this value, you must provide the <code>AugmentedManifests</code> parameter
          in your request.</p>
            </li>
         </ul>
         <p>If you don't specify a value, Amazon Comprehend uses <code>COMPREHEND_CSV</code> as the
      default.</p>")
  @as("DataFormat")
  dataFormat: option<documentClassifierDataFormat>,
}
@ocaml.doc("<p>Provides information about a document classification job.</p>")
type documentClassificationJobProperties = {
  @ocaml.doc("<p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
      resources you are using for your document classification job. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon
        VPC</a>. </p>")
  @as("VpcConfig")
  vpcConfig: option<vpcConfig>,
  @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the analysis
      job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
  @as("VolumeKmsKeyId")
  volumeKmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS identity and Access Management (IAM) role that
      grants Amazon Comprehend read access to your input data.</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The output data configuration that you supplied when you created the document
      classification job.</p>")
  @as("OutputDataConfig")
  outputDataConfig: option<outputDataConfig>,
  @ocaml.doc("<p>The input data configuration that you supplied when you created the document
      classification job.</p>")
  @as("InputDataConfig")
  inputDataConfig: option<inputDataConfig>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the document classifier. </p>")
  @as("DocumentClassifierArn")
  documentClassifierArn: option<documentClassifierArn>,
  @ocaml.doc("<p>The time that the document classification job completed.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The time that the document classification job was submitted for processing.</p>")
  @as("SubmitTime")
  submitTime: option<timestamp_>,
  @ocaml.doc("<p>A description of the status of the job.</p>") @as("Message")
  message: option<anyLengthString>,
  @ocaml.doc("<p>The current status of the document classification job. If the status is
        <code>FAILED</code>, the <code>Message</code> field shows the reason for the failure.</p>")
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>The name that you assigned to the document classification job.</p>") @as("JobName")
  jobName: option<jobName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the document classification job. It is a unique, fully
      qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
      format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:document-classification-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:document-classification-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
  @as("JobArn")
  jobArn: option<comprehendArn>,
  @ocaml.doc("<p>The identifier assigned to the document classification job.</p>") @as("JobId")
  jobId: option<jobId>,
}
@ocaml.doc("<p>The result of calling the  operation. The
      operation returns one object that is successfully processed by the operation.</p>")
type batchDetectSyntaxItemResult = {
  @ocaml.doc("<p>The syntax tokens for the words in the document, one token for each word.</p>")
  @as("SyntaxTokens")
  syntaxTokens: option<listOfSyntaxTokens>,
  @ocaml.doc("<p>The zero-based index of the document in the input list.</p>") @as("Index")
  index: option<integer_>,
}
type topicsDetectionJobPropertiesList = array<topicsDetectionJobProperties>
type targetedSentimentDetectionJobPropertiesList = array<targetedSentimentDetectionJobProperties>
type sentimentDetectionJobPropertiesList = array<sentimentDetectionJobProperties>
type piiEntitiesDetectionJobPropertiesList = array<piiEntitiesDetectionJobProperties>
type listOfDetectSyntaxResult = array<batchDetectSyntaxItemResult>
type keyPhrasesDetectionJobPropertiesList = array<keyPhrasesDetectionJobProperties>
type eventsDetectionJobPropertiesList = array<eventsDetectionJobProperties>
@ocaml.doc("<p>Describes information about an entity recognizer.</p>")
type entityRecognizerProperties = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source model. This model was imported from a
      different AWS account to create the entity recognizer model in your AWS account.</p>")
  @as("SourceModelArn")
  sourceModelArn: option<entityRecognizerArn>,
  @ocaml.doc("<p>The version name you assigned to the entity recognizer.</p>") @as("VersionName")
  versionName: option<versionName>,
  @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      trained custom models. The ModelKmsKeyId can be either of the following formats: </p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
  @as("ModelKmsKeyId")
  modelKmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
      resources you are using for your custom entity recognizer. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon
        VPC</a>. </p>")
  @as("VpcConfig")
  vpcConfig: option<vpcConfig>,
  @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the analysis
      job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
  @as("VolumeKmsKeyId")
  volumeKmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants
      Amazon Comprehend read access to your input data.</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p> Provides information about an entity recognizer.</p>") @as("RecognizerMetadata")
  recognizerMetadata: option<entityRecognizerMetadata>,
  @ocaml.doc("<p>The input data properties of an entity recognizer.</p>") @as("InputDataConfig")
  inputDataConfig: option<entityRecognizerInputDataConfig>,
  @ocaml.doc("<p>The time that training of the entity recognizer was completed.</p>")
  @as("TrainingEndTime")
  trainingEndTime: option<timestamp_>,
  @ocaml.doc("<p>The time that training of the entity recognizer started.</p>")
  @as("TrainingStartTime")
  trainingStartTime: option<timestamp_>,
  @ocaml.doc("<p>The time that the recognizer creation completed.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The time that the recognizer was submitted for processing.</p>") @as("SubmitTime")
  submitTime: option<timestamp_>,
  @ocaml.doc("<p> A description of the status of the recognizer.</p>") @as("Message")
  message: option<anyLengthString>,
  @ocaml.doc("<p>Provides the status of the entity recognizer.</p>") @as("Status")
  status: option<modelStatus>,
  @ocaml.doc("<p> The language of the input documents. All documents must be in the same language. Only
      English (\"en\") is currently supported.</p>")
  @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>")
  @as("EntityRecognizerArn")
  entityRecognizerArn: option<entityRecognizerArn>,
}
type entitiesDetectionJobPropertiesList = array<entitiesDetectionJobProperties>
type dominantLanguageDetectionJobPropertiesList = array<dominantLanguageDetectionJobProperties>
@ocaml.doc("<p>Provides information about a document classifier.</p>")
type documentClassifierProperties = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source model. This model was imported from a
      different AWS account to create the document classifier model in your AWS account.</p>")
  @as("SourceModelArn")
  sourceModelArn: option<documentClassifierArn>,
  @ocaml.doc("<p>The version name that you assigned to the document classifier.</p>")
  @as("VersionName")
  versionName: option<versionName>,
  @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
  @as("ModelKmsKeyId")
  modelKmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>Indicates the mode in which the specific classifier was trained. This also indicates the
      format of input documents and the format of the confusion matrix. Each classifier can only be
      trained in one mode and this cannot be changed once the classifier is trained.</p>")
  @as("Mode")
  mode: option<documentClassifierMode>,
  @ocaml.doc("<p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
      resources you are using for your custom classifier. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon
        VPC</a>. </p>")
  @as("VpcConfig")
  vpcConfig: option<vpcConfig>,
  @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the analysis
      job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
  @as("VolumeKmsKeyId")
  volumeKmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants
      Amazon Comprehend read access to your input data.</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>Information about the document classifier, including the number of documents used for
      training the classifier, the number of documents used for test the classifier, and an accuracy
      rating.</p>")
  @as("ClassifierMetadata")
  classifierMetadata: option<classifierMetadata>,
  @ocaml.doc("<p> Provides output results configuration parameters for custom classifier jobs.</p>")
  @as("OutputDataConfig")
  outputDataConfig: option<documentClassifierOutputDataConfig>,
  @ocaml.doc("<p>The input data configuration that you supplied when you created the document classifier
      for training.</p>")
  @as("InputDataConfig")
  inputDataConfig: option<documentClassifierInputDataConfig>,
  @ocaml.doc("<p>The time that training of the document classifier was completed. Indicates the time when
      the training completes on documentation classifiers. You are billed for the time interval
      between this time and the value of TrainingStartTime.</p>")
  @as("TrainingEndTime")
  trainingEndTime: option<timestamp_>,
  @ocaml.doc("<p>Indicates the time when the training starts on documentation classifiers. You are billed
      for the time interval between this time and the value of TrainingEndTime. </p>")
  @as("TrainingStartTime")
  trainingStartTime: option<timestamp_>,
  @ocaml.doc("<p>The time that training the document classifier completed.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The time that the document classifier was submitted for training.</p>")
  @as("SubmitTime")
  submitTime: option<timestamp_>,
  @ocaml.doc("<p>Additional information about the status of the classifier.</p>") @as("Message")
  message: option<anyLengthString>,
  @ocaml.doc("<p>The status of the document classifier. If the status is <code>TRAINED</code> the
      classifier is ready to use. If the status is <code>FAILED</code> you can see additional
      information about why the classifier wasn't trained in the <code>Message</code> field.</p>")
  @as("Status")
  status: option<modelStatus>,
  @ocaml.doc("<p>The language code for the language of the documents that the classifier was trained
      on.</p>")
  @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the document classifier.</p>")
  @as("DocumentClassifierArn")
  documentClassifierArn: option<documentClassifierArn>,
}
type documentClassificationJobPropertiesList = array<documentClassificationJobProperties>
type entityRecognizerPropertiesList = array<entityRecognizerProperties>
type documentClassifierPropertiesList = array<documentClassifierProperties>
@ocaml.doc("<p>Amazon Comprehend is an AWS service for gaining insight into the content of documents.
      Use these actions to determine the topics contained in your documents, the topics they
      discuss, the predominant sentiment expressed in them, the predominant language used, and
      more.</p>")
module UpdateEndpoint = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Data access role ARN to use in case the new model is encrypted with a customer CMK.</p>"
    )
    @as("DesiredDataAccessRoleArn")
    desiredDataAccessRoleArn: option<iamRoleArn>,
    @ocaml.doc("<p> The desired number of inference units to be used by the model using this endpoint.
      
      Each inference unit represents of a throughput of 100 characters per second.</p>")
    @as("DesiredInferenceUnits")
    desiredInferenceUnits: option<inferenceUnitsInteger>,
    @ocaml.doc("<p>The ARN of the new model to use when updating an existing endpoint.</p>")
    @as("DesiredModelArn")
    desiredModelArn: option<comprehendModelArn>,
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of the endpoint being updated.</p>")
    @as("EndpointArn")
    endpointArn: comprehendEndpointArn,
  }
  type response = {.}
  @module("@aws-sdk/client-comprehend") @new external new: request => t = "UpdateEndpointCommand"
  let make = (
    ~endpointArn,
    ~desiredDataAccessRoleArn=?,
    ~desiredInferenceUnits=?,
    ~desiredModelArn=?,
    (),
  ) =>
    new({
      desiredDataAccessRoleArn: desiredDataAccessRoleArn,
      desiredInferenceUnits: desiredInferenceUnits,
      desiredModelArn: desiredModelArn,
      endpointArn: endpointArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopTrainingEntityRecognizer = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the entity recognizer currently being
      trained.</p>")
    @as("EntityRecognizerArn")
    entityRecognizerArn: entityRecognizerArn,
  }
  type response = {.}
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StopTrainingEntityRecognizerCommand"
  let make = (~entityRecognizerArn, ()) => new({entityRecognizerArn: entityRecognizerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopTrainingDocumentClassifier = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the document classifier currently being
      trained.</p>")
    @as("DocumentClassifierArn")
    documentClassifierArn: documentClassifierArn,
  }
  type response = {.}
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StopTrainingDocumentClassifierCommand"
  let make = (~documentClassifierArn, ()) => new({documentClassifierArn: documentClassifierArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopTargetedSentimentDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the targeted sentiment detection job to stop.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>Either <code>STOP_REQUESTED</code> if the job is currently running, or
      <code>STOPPED</code> if the job was previously stopped with the
      <code>StopSentimentDetectionJob</code> operation.</p>")
    @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The identifier of the targeted sentiment detection job to stop.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StopTargetedSentimentDetectionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopSentimentDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the sentiment detection job to stop.</p>") @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>Either <code>STOP_REQUESTED</code> if the job is currently running, or
        <code>STOPPED</code> if the job was previously stopped with the
        <code>StopSentimentDetectionJob</code> operation.</p>")
    @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The identifier of the sentiment detection job to stop.</p>") @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StopSentimentDetectionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopPiiEntitiesDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the PII entities detection job to stop.</p>") @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>The status of the PII entities detection job.</p>") @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The identifier of the PII entities detection job to stop.</p>") @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StopPiiEntitiesDetectionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopKeyPhrasesDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the key phrases detection job to stop.</p>") @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>Either <code>STOP_REQUESTED</code> if the job is currently running, or
        <code>STOPPED</code> if the job was previously stopped with the
        <code>StopKeyPhrasesDetectionJob</code> operation.</p>")
    @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The identifier of the key phrases detection job to stop.</p>") @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StopKeyPhrasesDetectionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopEventsDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the events detection job to stop.</p>") @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>The status of the events detection job.</p>") @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The identifier of the events detection job to stop.</p>") @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StopEventsDetectionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopEntitiesDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the entities detection job to stop.</p>") @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>Either <code>STOP_REQUESTED</code> if the job is currently running, or
        <code>STOPPED</code> if the job was previously stopped with the
        <code>StopEntitiesDetectionJob</code> operation.</p>")
    @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The identifier of the entities detection job to stop.</p>") @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StopEntitiesDetectionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopDominantLanguageDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the dominant language detection job to stop.</p>") @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>Either <code>STOP_REQUESTED</code> if the job is currently running, or
        <code>STOPPED</code> if the job was previously stopped with the
        <code>StopDominantLanguageDetectionJob</code> operation.</p>")
    @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The identifier of the dominant language detection job to stop.</p>") @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StopDominantLanguageDetectionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The revision ID that Amazon Comprehend assigned to the policy that you are updating. If
      you are creating a new policy that has no prior version, don't use this parameter. Amazon
      Comprehend creates the revision ID for you.</p>")
    @as("PolicyRevisionId")
    policyRevisionId: option<policyRevisionId>,
    @ocaml.doc("<p>The JSON resource-based policy to attach to your custom model. Provide your JSON as a
      UTF-8 encoded string without line breaks. To provide valid JSON for your policy, enclose the
      attribute names and values in double quotes. If the JSON body is also enclosed in double
      quotes, then you must escape the double quotes that are inside the policy:</p>
         <p>
            <code>\"{\\\"attribute\\\": \\\"value\\\", \\\"attribute\\\": [\\\"value\\\"]}\"</code>
         </p>
         <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double
      quotes to enclose the JSON names and values:</p>
         <p>
            <code>'{\"attribute\": \"value\", \"attribute\": [\"value\"]}'</code>
         </p>")
    @as("ResourcePolicy")
    resourcePolicy: policy,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom model to attach the policy to.</p>")
    @as("ResourceArn")
    resourceArn: comprehendModelArn,
  }
  type response = {
    @ocaml.doc("<p>The revision ID of the policy. Each time you modify a policy, Amazon Comprehend assigns a
      new revision ID, and it deletes the prior version of the policy.</p>")
    @as("PolicyRevisionId")
    policyRevisionId: option<policyRevisionId>,
  }
  @module("@aws-sdk/client-comprehend") @new external new: request => t = "PutResourcePolicyCommand"
  let make = (~resourcePolicy, ~resourceArn, ~policyRevisionId=?, ()) =>
    new({
      policyRevisionId: policyRevisionId,
      resourcePolicy: resourcePolicy,
      resourceArn: resourceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the policy to describe.</p>")
    @as("ResourceArn")
    resourceArn: comprehendModelArn,
  }
  type response = {
    @ocaml.doc("<p>The revision ID of the policy. Each time you modify a policy, Amazon Comprehend assigns a
      new revision ID, and it deletes the prior version of the policy.</p>")
    @as("PolicyRevisionId")
    policyRevisionId: option<policyRevisionId>,
    @ocaml.doc("<p>The time at which the policy was last modified.</p>") @as("LastModifiedTime")
    lastModifiedTime: option<timestamp_>,
    @ocaml.doc("<p>The time at which the policy was created.</p>") @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The JSON body of the resource-based policy.</p>") @as("ResourcePolicy")
    resourcePolicy: option<policy>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "DescribeResourcePolicyCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The revision ID of the policy to delete.</p>") @as("PolicyRevisionId")
    policyRevisionId: option<policyRevisionId>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the custom model version that has the policy to delete.</p>"
    )
    @as("ResourceArn")
    resourceArn: comprehendModelArn,
  }
  type response = {.}
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "DeleteResourcePolicyCommand"
  let make = (~resourceArn, ~policyRevisionId=?, ()) =>
    new({policyRevisionId: policyRevisionId, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEntityRecognizer = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>")
    @as("EntityRecognizerArn")
    entityRecognizerArn: entityRecognizerArn,
  }
  type response = {.}
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "DeleteEntityRecognizerCommand"
  let make = (~entityRecognizerArn, ()) => new({entityRecognizerArn: entityRecognizerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of the endpoint being deleted.</p>")
    @as("EndpointArn")
    endpointArn: comprehendEndpointArn,
  }
  type response = {.}
  @module("@aws-sdk/client-comprehend") @new external new: request => t = "DeleteEndpointCommand"
  let make = (~endpointArn, ()) => new({endpointArn: endpointArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDocumentClassifier = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the document classifier. </p>")
    @as("DocumentClassifierArn")
    documentClassifierArn: documentClassifierArn,
  }
  type response = {.}
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "DeleteDocumentClassifierCommand"
  let make = (~documentClassifierArn, ()) => new({documentClassifierArn: documentClassifierArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The initial part of a key-value pair that forms a tag being removed from a given resource.
      For example, a tag with \"Sales\" as the key might be added to a resource to indicate its use by
      the sales department. Keys must be unique and cannot be duplicated for a particular resource.
    </p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the given Amazon Comprehend resource from which you
      want to remove the tags. </p>")
    @as("ResourceArn")
    resourceArn: comprehendArn,
  }
  type response = {.}
  @module("@aws-sdk/client-comprehend") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DetectSentiment = {
  type t
  type request = {
    @ocaml.doc("<p>The language of the input documents. You can specify any of the primary languages
      supported by Amazon Comprehend. All documents must be in the same language.</p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded
      characters.</p>")
    @as("Text")
    text: customerInputString,
  }
  type response = {
    @ocaml.doc("<p>An object that lists the sentiments, and their corresponding confidence
      levels.</p>")
    @as("SentimentScore")
    sentimentScore: option<sentimentScore>,
    @ocaml.doc("<p>The inferred sentiment that Amazon Comprehend has the highest level of confidence
      in.</p>")
    @as("Sentiment")
    sentiment: option<sentimentType>,
  }
  @module("@aws-sdk/client-comprehend") @new external new: request => t = "DetectSentimentCommand"
  let make = (~languageCode, ~text, ()) => new({languageCode: languageCode, text: text})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of the endpoint being described.</p>")
    @as("EndpointArn")
    endpointArn: comprehendEndpointArn,
  }
  type response = {
    @ocaml.doc("<p>Describes information associated with the specific endpoint.</p>")
    @as("EndpointProperties")
    endpointProperties: option<endpointProperties>,
  }
  @module("@aws-sdk/client-comprehend") @new external new: request => t = "DescribeEndpointCommand"
  let make = (~endpointArn, ()) => new({endpointArn: endpointArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Tags being associated with a specific Amazon Comprehend resource. There can be a maximum
      of 50 tags (both existing and pending) associated with a specific resource. </p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the given Amazon Comprehend resource to which you want
      to associate the tags. </p>")
    @as("ResourceArn")
    resourceArn: comprehendArn,
  }
  type response = {.}
  @module("@aws-sdk/client-comprehend") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the given Amazon Comprehend resource you are querying.
    </p>")
    @as("ResourceArn")
    resourceArn: comprehendArn,
  }
  type response = {
    @ocaml.doc("<p>Tags associated with the Amazon Comprehend resource being queried. A tag is a key-value
      pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with
      \"Sales\" as the key might be added to a resource to indicate its use by the sales department.
    </p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the given Amazon Comprehend resource you are
      querying.</p>")
    @as("ResourceArn")
    resourceArn: option<comprehendArn>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEntityRecognizerSummaries = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return on each page. The default is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The list entity recognizer summaries.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The list entity recognizer summaries.</p>") @as("EntityRecognizerSummariesList")
    entityRecognizerSummariesList: option<entityRecognizerSummariesList>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "ListEntityRecognizerSummariesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEndpoints = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in each page. The default is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the endpoints that are returned. You can filter endpoints on their name, model,
      status, or the date and time that they were created. You can only set one filter at a time.
    </p>")
    @as("Filter")
    filter: option<endpointFilter>,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Displays a list of endpoint properties being retrieved by the service in response to the
      request.</p>")
    @as("EndpointPropertiesList")
    endpointPropertiesList: option<endpointPropertiesList>,
  }
  @module("@aws-sdk/client-comprehend") @new external new: request => t = "ListEndpointsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDocumentClassifierSummaries = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return on each page. The default is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The list of summaries of document classifiers.</p>")
    @as("DocumentClassifierSummariesList")
    documentClassifierSummariesList: option<documentClassifierSummariesList>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "ListDocumentClassifierSummariesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportModel = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to be associated with the custom model that is created by this import. A tag is a
      key-value pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a
      tag with \"Sales\" as the key might be added to a resource to indicate its use by the sales
      department.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that allows
      Amazon Comprehend to use Amazon Key Management Service (KMS) to encrypt or decrypt the custom
      model.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: option<iamRoleArn>,
    @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
    @as("ModelKmsKeyId")
    modelKmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>The version name given to the custom model that is created by this import. Version names
      can have a maximum of 256 characters. Alphanumeric characters, hyphens (-) and underscores (_)
      are allowed. The version name must be unique among all models with the same classifier name in
      the account/AWS Region.</p>")
    @as("VersionName")
    versionName: option<versionName>,
    @ocaml.doc("<p>The name to assign to the custom model that is created in Amazon Comprehend by this
      import.</p>")
    @as("ModelName")
    modelName: option<comprehendArnName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom model to import.</p>")
    @as("SourceModelArn")
    sourceModelArn: comprehendModelArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom model being imported.</p>")
    @as("ModelArn")
    modelArn: option<comprehendModelArn>,
  }
  @module("@aws-sdk/client-comprehend") @new external new: request => t = "ImportModelCommand"
  let make = (
    ~sourceModelArn,
    ~tags=?,
    ~dataAccessRoleArn=?,
    ~modelKmsKeyId=?,
    ~versionName=?,
    ~modelName=?,
    (),
  ) =>
    new({
      tags: tags,
      dataAccessRoleArn: dataAccessRoleArn,
      modelKmsKeyId: modelKmsKeyId,
      versionName: versionName,
      modelName: modelName,
      sourceModelArn: sourceModelArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectPiiEntities = {
  type t
  type request = {
    @ocaml.doc("<p>The language of the input documents.</p>") @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded
      characters.</p>")
    @as("Text")
    text: string_,
  }
  type response = {
    @ocaml.doc("<p>A collection of PII entities identified in the input text. For each entity, the response
      provides the entity type, where the entity text begins and ends, and the level of confidence
      that Amazon Comprehend has in the detection.</p>")
    @as("Entities")
    entities: option<listOfPiiEntities>,
  }
  @module("@aws-sdk/client-comprehend") @new external new: request => t = "DetectPiiEntitiesCommand"
  let make = (~languageCode, ~text, ()) => new({languageCode: languageCode, text: text})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectKeyPhrases = {
  type t
  type request = {
    @ocaml.doc("<p>The language of the input documents. You can specify any of the primary languages
      supported by Amazon Comprehend. All documents must be in the same language.</p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded
      characters.</p>")
    @as("Text")
    text: customerInputString,
  }
  type response = {
    @ocaml.doc("<p>A collection of key phrases that Amazon Comprehend identified in the input text. For
      each key phrase, the response provides the text of the key phrase, where the key phrase begins
      and ends, and the level of confidence that Amazon Comprehend has in the accuracy of the
      detection. </p>")
    @as("KeyPhrases")
    keyPhrases: option<listOfKeyPhrases>,
  }
  @module("@aws-sdk/client-comprehend") @new external new: request => t = "DetectKeyPhrasesCommand"
  let make = (~languageCode, ~text, ()) => new({languageCode: languageCode, text: text})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectEntities = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name of an endpoint that is associated with a custom entity
      recognition model. Provide an endpoint if you want to detect entities by using your own custom
      model instead of the default model that is used by Amazon Comprehend.</p>
         <p>If you specify an endpoint, Amazon Comprehend uses the language of your custom model, and
      it ignores any language code that you provide in your request.</p>")
    @as("EndpointArn")
    endpointArn: option<entityRecognizerEndpointArn>,
    @ocaml.doc("<p>The language of the input documents. You can specify any of the primary languages
      supported by Amazon Comprehend. All documents must be in the same language.</p>
         <p>If your request includes the endpoint for a custom entity recognition model, Amazon
      Comprehend uses the language of your custom model, and it ignores any language code that you
      specify here.</p>")
    @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded
      characters.</p>")
    @as("Text")
    text: customerInputString,
  }
  type response = {
    @ocaml.doc("<p>A collection of entities identified in the input text. For each entity, the response
      provides the entity text, entity type, where the entity text begins and ends, and the level of
      confidence that Amazon Comprehend has in the detection. </p>
         <p>If your request uses a custom entity recognition model, Amazon Comprehend detects the
      entities that the model is trained to recognize. Otherwise, it detects the default entity
      types. For a list of default entity types, see <a>how-entities</a>.</p>")
    @as("Entities")
    entities: option<listOfEntities>,
  }
  @module("@aws-sdk/client-comprehend") @new external new: request => t = "DetectEntitiesCommand"
  let make = (~text, ~endpointArn=?, ~languageCode=?, ()) =>
    new({endpointArn: endpointArn, languageCode: languageCode, text: text})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectDominantLanguage = {
  type t
  type request = {
    @ocaml.doc("<p>A UTF-8 text string. Each string should contain at least 20 characters and must contain
      fewer that 5,000 bytes of UTF-8 encoded characters.</p>")
    @as("Text")
    text: customerInputString,
  }
  type response = {
    @ocaml.doc("<p>The languages that Amazon Comprehend detected in the input text. For each language, the
      response returns the RFC 5646 language code and the level of confidence that Amazon Comprehend
      has in the accuracy of its inference. For more information about RFC 5646, see <a href=\"https://tools.ietf.org/html/rfc5646\">Tags for Identifying Languages</a> on the
        <i>IETF Tools</i> web site.</p>")
    @as("Languages")
    languages: option<listOfDominantLanguages>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "DetectDominantLanguageCommand"
  let make = (~text, ()) => new({text: text})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS identity and Access Management (IAM) role that
      grants Amazon Comprehend read access to trained custom models encrypted with a customer
      managed key (ModelKmsKeyId).</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: option<iamRoleArn>,
    @ocaml.doc("<p>Tags associated with the endpoint being created. A tag is a key-value pair that adds
      metadata to the endpoint. For example, a tag with \"Sales\" as the key might be added to an
      endpoint to indicate its use by the sales department. </p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>An idempotency token provided by the customer. If this token matches a previous endpoint
      creation request, Amazon Comprehend will not return a <code>ResourceInUseException</code>.
    </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenString>,
    @ocaml.doc("<p> The desired number of inference units to be used by the model using this endpoint.
      
      Each inference unit represents of a throughput of 100 characters per second.</p>")
    @as("DesiredInferenceUnits")
    desiredInferenceUnits: inferenceUnitsInteger,
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of the model to which the endpoint will be
      attached.</p>")
    @as("ModelArn")
    modelArn: comprehendModelArn,
    @ocaml.doc("<p>This is the descriptive suffix that becomes part of the <code>EndpointArn</code> used for
      all subsequent requests to this resource. </p>")
    @as("EndpointName")
    endpointName: comprehendEndpointName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of the endpoint being created.</p>")
    @as("EndpointArn")
    endpointArn: option<comprehendEndpointArn>,
  }
  @module("@aws-sdk/client-comprehend") @new external new: request => t = "CreateEndpointCommand"
  let make = (
    ~desiredInferenceUnits,
    ~modelArn,
    ~endpointName,
    ~dataAccessRoleArn=?,
    ~tags=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      dataAccessRoleArn: dataAccessRoleArn,
      tags: tags,
      clientRequestToken: clientRequestToken,
      desiredInferenceUnits: desiredInferenceUnits,
      modelArn: modelArn,
      endpointName: endpointName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ContainsPiiEntities = {
  type t
  type request = {
    @ocaml.doc("<p>The language of the input documents.</p>") @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>Creates a new document classification request to analyze a single document in real-time,
      returning personally identifiable information (PII) entity labels.</p>")
    @as("Text")
    text: string_,
  }
  type response = {
    @ocaml.doc("<p>The labels used in the document being analyzed. Individual labels represent personally
      identifiable information (PII) entity types.</p>")
    @as("Labels")
    labels: option<listOfEntityLabels>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "ContainsPiiEntitiesCommand"
  let make = (~languageCode, ~text, ()) => new({languageCode: languageCode, text: text})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ClassifyDocument = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of the endpoint.</p>") @as("EndpointArn")
    endpointArn: documentClassifierEndpointArn,
    @ocaml.doc("<p>The document text to be analyzed.</p>") @as("Text") text: customerInputString,
  }
  type response = {
    @ocaml.doc("<p>The labels used the document being analyzed. These are used for multi-label trained
      models. Individual labels represent different categories that are related in some manner and
      are not mutually exclusive. For example, a movie can be just an action movie, or it can be an
      action movie, a science fiction movie, and a comedy, all at the same time. </p>")
    @as("Labels")
    labels: option<listOfLabels>,
    @ocaml.doc("<p>The classes used by the document being analyzed. These are used for multi-class trained
      models. Individual classes are mutually exclusive and each document is expected to have only a
      single class assigned to it. For example, an animal can be a dog or a cat, but not both at the
      same time. </p>")
    @as("Classes")
    classes: option<listOfClasses>,
  }
  @module("@aws-sdk/client-comprehend") @new external new: request => t = "ClassifyDocumentCommand"
  let make = (~endpointArn, ~text, ()) => new({endpointArn: endpointArn, text: text})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartTopicsDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to be associated with the topics detection job. A tag is a key-value pair that adds
      metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as the key
      might be added to a resource to indicate its use by the sales department.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
      the resources you are using for your topic detection job. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon
        VPC</a>. </p>")
    @as("VpcConfig")
    vpcConfig: option<vpcConfig>,
    @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the analysis
      job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
    @as("VolumeKmsKeyId")
    volumeKmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>A unique identifier for the request. If you do not set the client request token, Amazon
      Comprehend generates one.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenString>,
    @ocaml.doc("<p>The number of topics to detect.</p>") @as("NumberOfTopics")
    numberOfTopics: option<numberOfTopicsInteger>,
    @ocaml.doc("<p>The identifier of the job.</p>") @as("JobName") jobName: option<jobName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role
      that grants Amazon Comprehend read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions\">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions</a>.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>Specifies where to send the output files. The output is a compressed archive with two
      files, <code>topic-terms.csv</code> that lists the terms associated with each topic, and
        <code>doc-topics.csv</code> that lists the documents associated with each topic</p>")
    @as("OutputDataConfig")
    outputDataConfig: outputDataConfig,
    @ocaml.doc("<p>Specifies the format and location of the input data for the job.</p>")
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
  }
  type response = {
    @ocaml.doc("<p>The status of the job: </p>
         <ul>
            <li>
               <p>SUBMITTED - The job has been received and is queued for processing.</p>
            </li>
            <li>
               <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
            </li>
            <li>
               <p>COMPLETED - The job was successfully completed and the output is
          available.</p>
            </li>
            <li>
               <p>FAILED - The job did not complete. To get details, use the
            <code>DescribeTopicDetectionJob</code> operation.</p>
            </li>
         </ul>")
    @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the topics detection job. It is a unique, fully
      qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
      format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:topics-detection-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:document-classification-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
    @as("JobArn")
    jobArn: option<comprehendArn>,
    @ocaml.doc("<p>The identifier generated for the job. To get the status of the job, use this identifier
      with the <code>DescribeTopicDetectionJob</code> operation.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StartTopicsDetectionJobCommand"
  let make = (
    ~dataAccessRoleArn,
    ~outputDataConfig,
    ~inputDataConfig,
    ~tags=?,
    ~vpcConfig=?,
    ~volumeKmsKeyId=?,
    ~clientRequestToken=?,
    ~numberOfTopics=?,
    ~jobName=?,
    (),
  ) =>
    new({
      tags: tags,
      vpcConfig: vpcConfig,
      volumeKmsKeyId: volumeKmsKeyId,
      clientRequestToken: clientRequestToken,
      numberOfTopics: numberOfTopics,
      jobName: jobName,
      dataAccessRoleArn: dataAccessRoleArn,
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartTargetedSentimentDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to be associated with the targeted sentiment detection job. A tag is a key-value pair that
      adds metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as the
      key might be added to a resource to indicate its use by the sales department.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @as("VpcConfig") vpcConfig: option<vpcConfig>,
    @ocaml.doc("<p>ID for the KMS key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the analysis
      job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
          <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
    @as("VolumeKmsKeyId")
    volumeKmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>A unique identifier for the request. If you don't set the client request token, Amazon
      Comprehend generates one.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenString>,
    @ocaml.doc("<p>The language of the input documents. You can specify any of the primary languages
      supported by Amazon Comprehend. All documents must be in the same language.</p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>The identifier of the job.</p>") @as("JobName") jobName: option<jobName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
      grants Amazon Comprehend read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions\">Role-based permissions</a>.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>Specifies where to send the output files. </p>") @as("OutputDataConfig")
    outputDataConfig: outputDataConfig,
    @as("InputDataConfig") inputDataConfig: inputDataConfig,
  }
  type response = {
    @ocaml.doc("<p>The status of the job. </p>
         <ul>
            <li>
               <p>SUBMITTED - The job has been received and is queued for processing.</p>
            </li>
            <li>
               <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
            </li>
            <li>
               <p>COMPLETED - The job was successfully completed and the output is available.</p>
            </li>
            <li>
               <p>FAILED - The job did not complete. To get details, use the  operation.</p>
            </li>
         </ul>")
    @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the targeted sentiment detection job. It is a unique, fully
      qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
      format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:targeted-sentiment-detection-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:targeted-sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
    @as("JobArn")
    jobArn: option<comprehendArn>,
    @ocaml.doc("<p>The identifier generated for the job. To get the status of a job, use this identifier with
      the  operation.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StartTargetedSentimentDetectionJobCommand"
  let make = (
    ~languageCode,
    ~dataAccessRoleArn,
    ~outputDataConfig,
    ~inputDataConfig,
    ~tags=?,
    ~vpcConfig=?,
    ~volumeKmsKeyId=?,
    ~clientRequestToken=?,
    ~jobName=?,
    (),
  ) =>
    new({
      tags: tags,
      vpcConfig: vpcConfig,
      volumeKmsKeyId: volumeKmsKeyId,
      clientRequestToken: clientRequestToken,
      languageCode: languageCode,
      jobName: jobName,
      dataAccessRoleArn: dataAccessRoleArn,
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartSentimentDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to be associated with the sentiment detection job. A tag is a key-value pair that
      adds metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as the
      key might be added to a resource to indicate its use by the sales department.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
      the resources you are using for your sentiment detection job. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon
        VPC</a>. </p>")
    @as("VpcConfig")
    vpcConfig: option<vpcConfig>,
    @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the analysis
      job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
    @as("VolumeKmsKeyId")
    volumeKmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>A unique identifier for the request. If you don't set the client request token, Amazon
      Comprehend generates one.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenString>,
    @ocaml.doc("<p>The language of the input documents. You can specify any of the primary languages
      supported by Amazon Comprehend. All documents must be in the same language.</p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>The identifier of the job.</p>") @as("JobName") jobName: option<jobName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
      grants Amazon Comprehend read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions\">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions</a>.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>Specifies where to send the output files. </p>") @as("OutputDataConfig")
    outputDataConfig: outputDataConfig,
    @ocaml.doc("<p>Specifies the format and location of the input data for the job.</p>")
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
  }
  type response = {
    @ocaml.doc("<p>The status of the job. </p>
         <ul>
            <li>
               <p>SUBMITTED - The job has been received and is queued for processing.</p>
            </li>
            <li>
               <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
            </li>
            <li>
               <p>COMPLETED - The job was successfully completed and the output is available.</p>
            </li>
            <li>
               <p>FAILED - The job did not complete. To get details, use the  operation.</p>
            </li>
         </ul>")
    @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the sentiment detection job. It is a unique, fully
      qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
      format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:sentiment-detection-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
    @as("JobArn")
    jobArn: option<comprehendArn>,
    @ocaml.doc("<p>The identifier generated for the job. To get the status of a job, use this identifier with
      the  operation.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StartSentimentDetectionJobCommand"
  let make = (
    ~languageCode,
    ~dataAccessRoleArn,
    ~outputDataConfig,
    ~inputDataConfig,
    ~tags=?,
    ~vpcConfig=?,
    ~volumeKmsKeyId=?,
    ~clientRequestToken=?,
    ~jobName=?,
    (),
  ) =>
    new({
      tags: tags,
      vpcConfig: vpcConfig,
      volumeKmsKeyId: volumeKmsKeyId,
      clientRequestToken: clientRequestToken,
      languageCode: languageCode,
      jobName: jobName,
      dataAccessRoleArn: dataAccessRoleArn,
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartPiiEntitiesDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to be associated with the PII entities detection job. A tag is a key-value pair that
      adds metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as the
      key might be added to a resource to indicate its use by the sales department.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A unique identifier for the request. If you don't set the client request token, Amazon
      Comprehend generates one.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenString>,
    @ocaml.doc("<p>The language of the input documents.</p>") @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>The identifier of the job.</p>") @as("JobName") jobName: option<jobName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
      grants Amazon Comprehend read access to your input data.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>Provides configuration parameters for PII entity redaction.</p>
         <p>This parameter is required if you set the <code>Mode</code> parameter to
        <code>ONLY_REDACTION</code>. In that case, you must provide a <code>RedactionConfig</code>
      definition that includes the <code>PiiEntityTypes</code> parameter.</p>")
    @as("RedactionConfig")
    redactionConfig: option<redactionConfig>,
    @ocaml.doc("<p>Specifies whether the output provides the locations (offsets) of PII entities or a file in
      which PII entities are redacted.</p>")
    @as("Mode")
    mode: piiEntitiesDetectionMode,
    @ocaml.doc(
      "<p>Provides conﬁguration parameters for the output of PII entity detection jobs.</p>"
    )
    @as("OutputDataConfig")
    outputDataConfig: outputDataConfig,
    @ocaml.doc("<p>The input properties for a PII entities detection job.</p>")
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
  }
  type response = {
    @ocaml.doc("<p>The status of the job.</p>") @as("JobStatus") jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the PII entity detection job. It is a unique, fully
      qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
      format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:pii-entities-detection-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:pii-entities-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
    @as("JobArn")
    jobArn: option<comprehendArn>,
    @ocaml.doc("<p>The identifier generated for the job.</p>") @as("JobId") jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StartPiiEntitiesDetectionJobCommand"
  let make = (
    ~languageCode,
    ~dataAccessRoleArn,
    ~mode,
    ~outputDataConfig,
    ~inputDataConfig,
    ~tags=?,
    ~clientRequestToken=?,
    ~jobName=?,
    ~redactionConfig=?,
    (),
  ) =>
    new({
      tags: tags,
      clientRequestToken: clientRequestToken,
      languageCode: languageCode,
      jobName: jobName,
      dataAccessRoleArn: dataAccessRoleArn,
      redactionConfig: redactionConfig,
      mode: mode,
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartKeyPhrasesDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to be associated with the key phrases detection job. A tag is a key-value pair that
      adds metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as the
      key might be added to a resource to indicate its use by the sales department.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p> Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
      the resources you are using for your key phrases detection job. For more information, see
        <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon
        VPC</a>. </p>")
    @as("VpcConfig")
    vpcConfig: option<vpcConfig>,
    @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the analysis
      job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
    @as("VolumeKmsKeyId")
    volumeKmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>A unique identifier for the request. If you don't set the client request token, Amazon
      Comprehend generates one.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenString>,
    @ocaml.doc("<p>The language of the input documents. You can specify any of the primary languages
      supported by Amazon Comprehend. All documents must be in the same language.</p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>The identifier of the job.</p>") @as("JobName") jobName: option<jobName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
      grants Amazon Comprehend read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions\">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions</a>.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>Specifies where to send the output files.</p>") @as("OutputDataConfig")
    outputDataConfig: outputDataConfig,
    @ocaml.doc("<p>Specifies the format and location of the input data for the job.</p>")
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
  }
  type response = {
    @ocaml.doc("<p>The status of the job. </p>
         <ul>
            <li>
               <p>SUBMITTED - The job has been received and is queued for processing.</p>
            </li>
            <li>
               <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
            </li>
            <li>
               <p>COMPLETED - The job was successfully completed and the output is available.</p>
            </li>
            <li>
               <p>FAILED - The job did not complete. To get details, use the  operation.</p>
            </li>
         </ul>")
    @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the key phrase detection job. It is a unique, fully
      qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
      format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:key-phrases-detection-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:key-phrases-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
    @as("JobArn")
    jobArn: option<comprehendArn>,
    @ocaml.doc("<p>The identifier generated for the job. To get the status of a job, use this identifier with
      the  operation.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StartKeyPhrasesDetectionJobCommand"
  let make = (
    ~languageCode,
    ~dataAccessRoleArn,
    ~outputDataConfig,
    ~inputDataConfig,
    ~tags=?,
    ~vpcConfig=?,
    ~volumeKmsKeyId=?,
    ~clientRequestToken=?,
    ~jobName=?,
    (),
  ) =>
    new({
      tags: tags,
      vpcConfig: vpcConfig,
      volumeKmsKeyId: volumeKmsKeyId,
      clientRequestToken: clientRequestToken,
      languageCode: languageCode,
      jobName: jobName,
      dataAccessRoleArn: dataAccessRoleArn,
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartEventsDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to be associated with the events detection job. A tag is a key-value pair that adds
      metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as the key
      might be added to a resource to indicate its use by the sales department.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The types of events to detect in the input documents.</p>")
    @as("TargetEventTypes")
    targetEventTypes: targetEventTypes,
    @ocaml.doc("<p>An unique identifier for the request. If you don't set the client request token, Amazon
      Comprehend generates one.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenString>,
    @ocaml.doc("<p>The language code of the input documents.</p>") @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>The identifier of the events detection job.</p>") @as("JobName")
    jobName: option<jobName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
      grants Amazon Comprehend read access to your input data.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>Specifies where to send the output files.</p>") @as("OutputDataConfig")
    outputDataConfig: outputDataConfig,
    @ocaml.doc("<p>Specifies the format and location of the input data for the job.</p>")
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
  }
  type response = {
    @ocaml.doc("<p>The status of the events detection job.</p>") @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the events detection job. It is a unique, fully
      qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
      format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:events-detection-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:events-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
    @as("JobArn")
    jobArn: option<comprehendArn>,
    @ocaml.doc("<p>An unique identifier for the request. If you don't set the client request token, Amazon
      Comprehend generates one.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StartEventsDetectionJobCommand"
  let make = (
    ~targetEventTypes,
    ~languageCode,
    ~dataAccessRoleArn,
    ~outputDataConfig,
    ~inputDataConfig,
    ~tags=?,
    ~clientRequestToken=?,
    ~jobName=?,
    (),
  ) =>
    new({
      tags: tags,
      targetEventTypes: targetEventTypes,
      clientRequestToken: clientRequestToken,
      languageCode: languageCode,
      jobName: jobName,
      dataAccessRoleArn: dataAccessRoleArn,
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartEntitiesDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to be associated with the entities detection job. A tag is a key-value pair that adds
      metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as the key
      might be added to a resource to indicate its use by the sales department.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
      the resources you are using for your entity detection job. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon
        VPC</a>. </p>")
    @as("VpcConfig")
    vpcConfig: option<vpcConfig>,
    @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the analysis
      job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
    @as("VolumeKmsKeyId")
    volumeKmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>A unique identifier for the request. If you don't set the client request token, Amazon
      Comprehend generates one.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenString>,
    @ocaml.doc("<p>The language of the input documents. All documents must be in the same language. You can
      specify any of the languages supported by Amazon Comprehend. If custom entities recognition is
      used, this parameter is ignored and the language used for training the model is used
      instead.</p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the specific entity recognizer to be used
      by the <code>StartEntitiesDetectionJob</code>. This ARN is optional and is only used for a
      custom entity recognition job.</p>")
    @as("EntityRecognizerArn")
    entityRecognizerArn: option<entityRecognizerArn>,
    @ocaml.doc("<p>The identifier of the job.</p>") @as("JobName") jobName: option<jobName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
      grants Amazon Comprehend read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions\">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions</a>.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>Specifies where to send the output files.</p>") @as("OutputDataConfig")
    outputDataConfig: outputDataConfig,
    @ocaml.doc("<p>Specifies the format and location of the input data for the job.</p>")
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
  }
  type response = {
    @ocaml.doc("<p>The status of the job. </p>
         <ul>
            <li>
               <p>SUBMITTED - The job has been received and is queued for processing.</p>
            </li>
            <li>
               <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
            </li>
            <li>
               <p>COMPLETED - The job was successfully completed and the output is available.</p>
            </li>
            <li>
               <p>FAILED - The job did not complete. To get details, use the  operation.</p>
            </li>
            <li>
               <p>STOP_REQUESTED - Amazon Comprehend has received a stop request for the job and is
          processing the request.</p>
            </li>
            <li>
               <p>STOPPED - The job was successfully stopped without completing.</p>
            </li>
         </ul>")
    @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the entities detection job. It is a unique, fully
      qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
      format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:entities-detection-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:entities-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
    @as("JobArn")
    jobArn: option<comprehendArn>,
    @ocaml.doc("<p>The identifier generated for the job. To get the status of job, use this identifier with
      the  operation.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StartEntitiesDetectionJobCommand"
  let make = (
    ~languageCode,
    ~dataAccessRoleArn,
    ~outputDataConfig,
    ~inputDataConfig,
    ~tags=?,
    ~vpcConfig=?,
    ~volumeKmsKeyId=?,
    ~clientRequestToken=?,
    ~entityRecognizerArn=?,
    ~jobName=?,
    (),
  ) =>
    new({
      tags: tags,
      vpcConfig: vpcConfig,
      volumeKmsKeyId: volumeKmsKeyId,
      clientRequestToken: clientRequestToken,
      languageCode: languageCode,
      entityRecognizerArn: entityRecognizerArn,
      jobName: jobName,
      dataAccessRoleArn: dataAccessRoleArn,
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDominantLanguageDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to be associated with the dominant language detection job. A tag is a key-value pair
      that adds metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as
      the key might be added to a resource to indicate its use by the sales department.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
      the resources you are using for your dominant language detection job. For more information,
      see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon VPC</a>. </p>")
    @as("VpcConfig")
    vpcConfig: option<vpcConfig>,
    @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the analysis
      job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
    @as("VolumeKmsKeyId")
    volumeKmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>A unique identifier for the request. If you do not set the client request token, Amazon
      Comprehend generates one.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenString>,
    @ocaml.doc("<p>An identifier for the job.</p>") @as("JobName") jobName: option<jobName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
      grants Amazon Comprehend read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions\">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions</a>.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>Specifies where to send the output files.</p>") @as("OutputDataConfig")
    outputDataConfig: outputDataConfig,
    @ocaml.doc("<p>Specifies the format and location of the input data for the job.</p>")
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
  }
  type response = {
    @ocaml.doc("<p>The status of the job. </p>
         <ul>
            <li>
               <p>SUBMITTED - The job has been received and is queued for processing.</p>
            </li>
            <li>
               <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
            </li>
            <li>
               <p>COMPLETED - The job was successfully completed and the output is available.</p>
            </li>
            <li>
               <p>FAILED - The job did not complete. To get details, use the  operation.</p>
            </li>
         </ul>")
    @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dominant language detection job. It is a unique,
      fully qualified identifier for the job. It includes the AWS account, Region, and the job ID.
      The format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:dominant-language-detection-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:dominant-language-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
    @as("JobArn")
    jobArn: option<comprehendArn>,
    @ocaml.doc("<p>The identifier generated for the job. To get the status of a job, use this identifier with
      the  operation.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StartDominantLanguageDetectionJobCommand"
  let make = (
    ~dataAccessRoleArn,
    ~outputDataConfig,
    ~inputDataConfig,
    ~tags=?,
    ~vpcConfig=?,
    ~volumeKmsKeyId=?,
    ~clientRequestToken=?,
    ~jobName=?,
    (),
  ) =>
    new({
      tags: tags,
      vpcConfig: vpcConfig,
      volumeKmsKeyId: volumeKmsKeyId,
      clientRequestToken: clientRequestToken,
      jobName: jobName,
      dataAccessRoleArn: dataAccessRoleArn,
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDocumentClassificationJob = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to be associated with the document classification job. A tag is a key-value pair that
      adds metadata to a resource used by Amazon Comprehend. For example, a tag with \"Sales\" as the
      key might be added to a resource to indicate its use by the sales department.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
      the resources you are using for your document classification job. For more information, see
        <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon
        VPC</a>. </p>")
    @as("VpcConfig")
    vpcConfig: option<vpcConfig>,
    @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the analysis
      job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
    @as("VolumeKmsKeyId")
    volumeKmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>A unique identifier for the request. If you do not set the client request token, Amazon
      Comprehend generates one.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
      grants Amazon Comprehend read access to your input data.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>Specifies where to send the output files.</p>") @as("OutputDataConfig")
    outputDataConfig: outputDataConfig,
    @ocaml.doc("<p>Specifies the format and location of the input data for the job.</p>")
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the document classifier to use to process the
      job.</p>")
    @as("DocumentClassifierArn")
    documentClassifierArn: documentClassifierArn,
    @ocaml.doc("<p>The identifier of the job.</p>") @as("JobName") jobName: option<jobName>,
  }
  type response = {
    @ocaml.doc("<p>The status of the job:</p>
         <ul>
            <li>
               <p>SUBMITTED - The job has been received and queued for processing.</p>
            </li>
            <li>
               <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
            </li>
            <li>
               <p>COMPLETED - The job was successfully completed and the output is available.</p>
            </li>
            <li>
               <p>FAILED - The job did not complete. For details, use the  operation.</p>
            </li>
            <li>
               <p>STOP_REQUESTED - Amazon Comprehend has received a stop request for the job and is
          processing the request.</p>
            </li>
            <li>
               <p>STOPPED - The job was successfully stopped without completing.</p>
            </li>
         </ul>")
    @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the document classification job. It is a unique, fully
      qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
      format of the ARN is as follows:</p>
         <p>
            <code>arn:<partition>:comprehend:<region>:<account-id>:document-classification-job/<job-id></code>
         </p>
         <p>The following is an example job ARN:</p>
         <p>
            <code>arn:aws:comprehend:us-west-2:111122223333:document-classification-job/1234abcd12ab34cd56ef1234567890ab</code>
         </p>")
    @as("JobArn")
    jobArn: option<comprehendArn>,
    @ocaml.doc("<p>The identifier generated for the job. To get the status of the job, use this identifier
      with the  operation.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "StartDocumentClassificationJobCommand"
  let make = (
    ~dataAccessRoleArn,
    ~outputDataConfig,
    ~inputDataConfig,
    ~documentClassifierArn,
    ~tags=?,
    ~vpcConfig=?,
    ~volumeKmsKeyId=?,
    ~clientRequestToken=?,
    ~jobName=?,
    (),
  ) =>
    new({
      tags: tags,
      vpcConfig: vpcConfig,
      volumeKmsKeyId: volumeKmsKeyId,
      clientRequestToken: clientRequestToken,
      dataAccessRoleArn: dataAccessRoleArn,
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
      documentClassifierArn: documentClassifierArn,
      jobName: jobName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectSyntax = {
  type t
  type request = {
    @ocaml.doc("<p>The language code of the input documents. You can specify any of the following languages
      supported by Amazon Comprehend: German (\"de\"), English (\"en\"), Spanish (\"es\"), French (\"fr\"),
      Italian (\"it\"), or Portuguese (\"pt\").</p>")
    @as("LanguageCode")
    languageCode: syntaxLanguageCode,
    @ocaml.doc("<p>A UTF-8 string. Each string must contain fewer that 5,000 bytes of UTF encoded
      characters.</p>")
    @as("Text")
    text: customerInputString,
  }
  type response = {
    @ocaml.doc("<p>A collection of syntax tokens describing the text. For each token, the response provides
      the text, the token type, where the text begins and ends, and the level of confidence that
      Amazon Comprehend has that the token is correct. For a list of token types, see <a>how-syntax</a>.</p>")
    @as("SyntaxTokens")
    syntaxTokens: option<listOfSyntaxTokens>,
  }
  @module("@aws-sdk/client-comprehend") @new external new: request => t = "DetectSyntaxCommand"
  let make = (~languageCode, ~text, ()) => new({languageCode: languageCode, text: text})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDetectSentiment = {
  type t
  type request = {
    @ocaml.doc("<p>The language of the input documents. You can specify any of the primary languages
      supported by Amazon Comprehend. All documents must be in the same language.</p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>A list containing the text of the input documents. The list can contain a maximum of 25
      documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded
      characters.</p>")
    @as("TextList")
    textList: customerInputStringList,
  }
  type response = {
    @ocaml.doc("<p>A list containing one  object for each document
      that contained an error. The results are sorted in ascending order by the <code>Index</code>
      field and match the order of the documents in the input list. If there are no errors in the
      batch, the <code>ErrorList</code> is empty.</p>")
    @as("ErrorList")
    errorList: batchItemErrorList,
    @ocaml.doc("<p>A list of  objects containing the
      results of the operation. The results are sorted in ascending order by the <code>Index</code>
      field and match the order of the documents in the input list. If all of the documents contain
      an error, the <code>ResultList</code> is empty.</p>")
    @as("ResultList")
    resultList: listOfDetectSentimentResult,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "BatchDetectSentimentCommand"
  let make = (~languageCode, ~textList, ()) => new({languageCode: languageCode, textList: textList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTopicsDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier assigned by the user to the detection job.</p>") @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>The list of properties for the requested job.</p>")
    @as("TopicsDetectionJobProperties")
    topicsDetectionJobProperties: option<topicsDetectionJobProperties>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "DescribeTopicsDetectionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTargetedSentimentDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
      response.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc(
      "<p>An object that contains the properties associated with a targeted sentiment detection job.</p>"
    )
    @as("TargetedSentimentDetectionJobProperties")
    targetedSentimentDetectionJobProperties: option<targetedSentimentDetectionJobProperties>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "DescribeTargetedSentimentDetectionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSentimentDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
      response.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc(
      "<p>An object that contains the properties associated with a sentiment detection job.</p>"
    )
    @as("SentimentDetectionJobProperties")
    sentimentDetectionJobProperties: option<sentimentDetectionJobProperties>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "DescribeSentimentDetectionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePiiEntitiesDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
      response.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @as("PiiEntitiesDetectionJobProperties")
    piiEntitiesDetectionJobProperties: option<piiEntitiesDetectionJobProperties>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "DescribePiiEntitiesDetectionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeKeyPhrasesDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
      response.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>An object that contains the properties associated with a key phrases detection job.
    </p>")
    @as("KeyPhrasesDetectionJobProperties")
    keyPhrasesDetectionJobProperties: option<keyPhrasesDetectionJobProperties>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "DescribeKeyPhrasesDetectionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventsDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the events detection job.</p>") @as("JobId") jobId: jobId,
  }
  type response = {
    @ocaml.doc(
      "<p>An object that contains the properties associated with an event detection job.</p>"
    )
    @as("EventsDetectionJobProperties")
    eventsDetectionJobProperties: option<eventsDetectionJobProperties>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "DescribeEventsDetectionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEntitiesDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
      response.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc(
      "<p>An object that contains the properties associated with an entities detection job.</p>"
    )
    @as("EntitiesDetectionJobProperties")
    entitiesDetectionJobProperties: option<entitiesDetectionJobProperties>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "DescribeEntitiesDetectionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDominantLanguageDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
      response.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>An object that contains the properties associated with a dominant language detection
      job.</p>")
    @as("DominantLanguageDetectionJobProperties")
    dominantLanguageDetectionJobProperties: option<dominantLanguageDetectionJobProperties>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "DescribeDominantLanguageDetectionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDocumentClassificationJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
      response.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>An object that describes the properties associated with the document classification
      job.</p>")
    @as("DocumentClassificationJobProperties")
    documentClassificationJobProperties: option<documentClassificationJobProperties>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "DescribeDocumentClassificationJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEntityRecognizer = {
  type t
  type request = {
    @ocaml.doc("<p>The JSON resource-based policy to attach to your custom entity recognizer model. You can
      use this policy to allow another AWS account to import your custom model.</p>
         <p>Provide your JSON as a UTF-8 encoded string without line breaks. To provide valid JSON for
      your policy, enclose the attribute names and values in double quotes. If the JSON body is also
      enclosed in double quotes, then you must escape the double quotes that are inside the
      policy:</p>
         <p>
            <code>\"{\\\"attribute\\\": \\\"value\\\", \\\"attribute\\\": [\\\"value\\\"]}\"</code>
         </p>
         <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double
      quotes to enclose the JSON names and values:</p>
         <p>
            <code>'{\"attribute\": \"value\", \"attribute\": [\"value\"]}'</code>
         </p>")
    @as("ModelPolicy")
    modelPolicy: option<policy>,
    @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      trained custom models. The ModelKmsKeyId can be either of the following formats</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
    @as("ModelKmsKeyId")
    modelKmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
      the resources you are using for your custom entity recognizer. For more information, see
        <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon
        VPC</a>. </p>")
    @as("VpcConfig")
    vpcConfig: option<vpcConfig>,
    @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the analysis
      job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
    @as("VolumeKmsKeyId")
    volumeKmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p> You can specify any of the following languages supported by Amazon Comprehend: English
      (\"en\"), Spanish (\"es\"), French (\"fr\"), Italian (\"it\"), German (\"de\"), or Portuguese (\"pt\").
      All documents must be in the same language.</p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p> A unique identifier for the request. If you don't set the client request token, Amazon
      Comprehend generates one.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenString>,
    @ocaml.doc("<p>Specifies the format and location of the input data. The S3 bucket containing the input
      data must be located in the same region as the entity recognizer being created. </p>")
    @as("InputDataConfig")
    inputDataConfig: entityRecognizerInputDataConfig,
    @ocaml.doc("<p>Tags to be associated with the entity recognizer being created. A tag is a key-value pair
      that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with
      \"Sales\" as the key might be added to a resource to indicate its use by the sales department.
    </p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants
      Amazon Comprehend read access to your input data.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>The version name given to the newly created recognizer. Version names can be a maximum of
      256 characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The
      version name must be unique among all models with the same recognizer name in the account/ AWS
      Region.</p>")
    @as("VersionName")
    versionName: option<versionName>,
    @ocaml.doc("<p>The name given to the newly created recognizer. Recognizer names can be a maximum of 256
      characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The name
      must be unique in the account/region.</p>")
    @as("RecognizerName")
    recognizerName: comprehendArnName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>")
    @as("EntityRecognizerArn")
    entityRecognizerArn: option<entityRecognizerArn>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "CreateEntityRecognizerCommand"
  let make = (
    ~languageCode,
    ~inputDataConfig,
    ~dataAccessRoleArn,
    ~recognizerName,
    ~modelPolicy=?,
    ~modelKmsKeyId=?,
    ~vpcConfig=?,
    ~volumeKmsKeyId=?,
    ~clientRequestToken=?,
    ~tags=?,
    ~versionName=?,
    (),
  ) =>
    new({
      modelPolicy: modelPolicy,
      modelKmsKeyId: modelKmsKeyId,
      vpcConfig: vpcConfig,
      volumeKmsKeyId: volumeKmsKeyId,
      languageCode: languageCode,
      clientRequestToken: clientRequestToken,
      inputDataConfig: inputDataConfig,
      tags: tags,
      dataAccessRoleArn: dataAccessRoleArn,
      versionName: versionName,
      recognizerName: recognizerName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDocumentClassifier = {
  type t
  type request = {
    @ocaml.doc("<p>The resource-based policy to attach to your custom document classifier model. You can use
      this policy to allow another AWS account to import your custom model.</p>
         <p>Provide your policy as a JSON body that you enter as a UTF-8 encoded string without line
      breaks. To provide valid JSON, enclose the attribute names and values in double quotes. If the
      JSON body is also enclosed in double quotes, then you must escape the double quotes that are
      inside the policy:</p>
         <p>
            <code>\"{\\\"attribute\\\": \\\"value\\\", \\\"attribute\\\": [\\\"value\\\"]}\"</code>
         </p>
         <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double
      quotes to enclose the JSON names and values:</p>
         <p>
            <code>'{\"attribute\": \"value\", \"attribute\": [\"value\"]}'</code>
         </p>")
    @as("ModelPolicy")
    modelPolicy: option<policy>,
    @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
    @as("ModelKmsKeyId")
    modelKmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>Indicates the mode in which the classifier will be trained. The classifier can be trained
      in multi-class mode, which identifies one and only one class for each document, or multi-label
      mode, which identifies one or more labels for each document. In multi-label mode, multiple
      labels for an individual document are separated by a delimiter. The default delimiter between
      labels is a pipe (|).</p>")
    @as("Mode")
    mode: option<documentClassifierMode>,
    @ocaml.doc("<p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
      the resources you are using for your custom classifier. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html\">Amazon
        VPC</a>. </p>")
    @as("VpcConfig")
    vpcConfig: option<vpcConfig>,
    @ocaml.doc("<p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
      data on the storage volume attached to the ML compute instance(s) that process the analysis
      job. The VolumeKmsKeyId can be either of the following formats:</p>
         <ul>
            <li>
               <p>KMS Key ID: <code>\"1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
            <li>
               <p>Amazon Resource Name (ARN) of a KMS Key:
            <code>\"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab\"</code>
               </p>
            </li>
         </ul>")
    @as("VolumeKmsKeyId")
    volumeKmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>The language of the input documents. You can specify any of the following languages
      supported by Amazon Comprehend: German (\"de\"), English (\"en\"), Spanish (\"es\"), French (\"fr\"),
      Italian (\"it\"), or Portuguese (\"pt\"). All documents must be in the same language.</p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>A unique identifier for the request. If you don't set the client request token, Amazon
      Comprehend generates one.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenString>,
    @ocaml.doc("<p>Enables the addition of output results configuration parameters for custom classifier
      jobs.</p>")
    @as("OutputDataConfig")
    outputDataConfig: option<documentClassifierOutputDataConfig>,
    @ocaml.doc("<p>Specifies the format and location of the input data for the job.</p>")
    @as("InputDataConfig")
    inputDataConfig: documentClassifierInputDataConfig,
    @ocaml.doc("<p>Tags to be associated with the document classifier being created. A tag is a key-value
      pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with
      \"Sales\" as the key might be added to a resource to indicate its use by the sales department.
    </p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants
      Amazon Comprehend read access to your input data.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>The version name given to the newly created classifier. Version names can have a maximum
      of 256 characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The
      version name must be unique among all models with the same classifier name in the account/AWS
      Region.</p>")
    @as("VersionName")
    versionName: option<versionName>,
    @ocaml.doc("<p>The name of the document classifier.</p>") @as("DocumentClassifierName")
    documentClassifierName: comprehendArnName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the document classifier.</p>")
    @as("DocumentClassifierArn")
    documentClassifierArn: option<documentClassifierArn>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "CreateDocumentClassifierCommand"
  let make = (
    ~languageCode,
    ~inputDataConfig,
    ~dataAccessRoleArn,
    ~documentClassifierName,
    ~modelPolicy=?,
    ~modelKmsKeyId=?,
    ~mode=?,
    ~vpcConfig=?,
    ~volumeKmsKeyId=?,
    ~clientRequestToken=?,
    ~outputDataConfig=?,
    ~tags=?,
    ~versionName=?,
    (),
  ) =>
    new({
      modelPolicy: modelPolicy,
      modelKmsKeyId: modelKmsKeyId,
      mode: mode,
      vpcConfig: vpcConfig,
      volumeKmsKeyId: volumeKmsKeyId,
      languageCode: languageCode,
      clientRequestToken: clientRequestToken,
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
      tags: tags,
      dataAccessRoleArn: dataAccessRoleArn,
      versionName: versionName,
      documentClassifierName: documentClassifierName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDetectKeyPhrases = {
  type t
  type request = {
    @ocaml.doc("<p>The language of the input documents. You can specify any of the primary languages
      supported by Amazon Comprehend. All documents must be in the same language.</p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>A list containing the text of the input documents. The list can contain a maximum of 25
      documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded
      characters.</p>")
    @as("TextList")
    textList: customerInputStringList,
  }
  type response = {
    @ocaml.doc("<p>A list containing one  object for each document
      that contained an error. The results are sorted in ascending order by the <code>Index</code>
      field and match the order of the documents in the input list. If there are no errors in the
      batch, the <code>ErrorList</code> is empty.</p>")
    @as("ErrorList")
    errorList: batchItemErrorList,
    @ocaml.doc("<p>A list of  objects containing the
      results of the operation. The results are sorted in ascending order by the <code>Index</code>
      field and match the order of the documents in the input list. If all of the documents contain
      an error, the <code>ResultList</code> is empty.</p>")
    @as("ResultList")
    resultList: listOfDetectKeyPhrasesResult,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "BatchDetectKeyPhrasesCommand"
  let make = (~languageCode, ~textList, ()) => new({languageCode: languageCode, textList: textList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDetectEntities = {
  type t
  type request = {
    @ocaml.doc("<p>The language of the input documents. You can specify any of the primary languages
      supported by Amazon Comprehend. All documents must be in the same language.</p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>A list containing the text of the input documents. The list can contain a maximum of 25
      documents. Each document must contain fewer than 5,000 bytes of UTF-8 encoded
      characters.</p>")
    @as("TextList")
    textList: customerInputStringList,
  }
  type response = {
    @ocaml.doc("<p>A list containing one  object for each document
      that contained an error. The results are sorted in ascending order by the <code>Index</code>
      field and match the order of the documents in the input list. If there are no errors in the
      batch, the <code>ErrorList</code> is empty.</p>")
    @as("ErrorList")
    errorList: batchItemErrorList,
    @ocaml.doc("<p>A list of  objects containing the
      results of the operation. The results are sorted in ascending order by the <code>Index</code>
      field and match the order of the documents in the input list. If all of the documents contain
      an error, the <code>ResultList</code> is empty.</p>")
    @as("ResultList")
    resultList: listOfDetectEntitiesResult,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "BatchDetectEntitiesCommand"
  let make = (~languageCode, ~textList, ()) => new({languageCode: languageCode, textList: textList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDetectDominantLanguage = {
  type t
  type request = {
    @ocaml.doc("<p>A list containing the text of the input documents. The list can contain a maximum of 25
      documents. Each document should contain at least 20 characters and must contain fewer than
      5,000 bytes of UTF-8 encoded characters.</p>")
    @as("TextList")
    textList: customerInputStringList,
  }
  type response = {
    @ocaml.doc("<p>A list containing one  object for each document
      that contained an error. The results are sorted in ascending order by the <code>Index</code>
      field and match the order of the documents in the input list. If there are no errors in the
      batch, the <code>ErrorList</code> is empty.</p>")
    @as("ErrorList")
    errorList: batchItemErrorList,
    @ocaml.doc("<p>A list of  objects
      containing the results of the operation. The results are sorted in ascending order by the
        <code>Index</code> field and match the order of the documents in the input list. If all of
      the documents contain an error, the <code>ResultList</code> is empty.</p>")
    @as("ResultList")
    resultList: listOfDetectDominantLanguageResult,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "BatchDetectDominantLanguageCommand"
  let make = (~textList, ()) => new({textList: textList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTopicsDetectionJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in each page. The default is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the jobs that are returned. Jobs can be filtered on their name, status, or the
      date and time that they were submitted. You can set only one filter at a time.</p>")
    @as("Filter")
    filter: option<topicsDetectionJobFilter>,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list containing the properties of each job that is returned.</p>")
    @as("TopicsDetectionJobPropertiesList")
    topicsDetectionJobPropertiesList: option<topicsDetectionJobPropertiesList>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "ListTopicsDetectionJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTargetedSentimentDetectionJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in each page. The default is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
      and time that they were submitted. You can only set one filter at a time.</p>")
    @as("Filter")
    filter: option<targetedSentimentDetectionJobFilter>,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list containing the properties of each job that is returned.</p>")
    @as("TargetedSentimentDetectionJobPropertiesList")
    targetedSentimentDetectionJobPropertiesList: option<
      targetedSentimentDetectionJobPropertiesList,
    >,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "ListTargetedSentimentDetectionJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSentimentDetectionJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in each page. The default is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
      and time that they were submitted. You can only set one filter at a time.</p>")
    @as("Filter")
    filter: option<sentimentDetectionJobFilter>,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list containing the properties of each job that is returned.</p>")
    @as("SentimentDetectionJobPropertiesList")
    sentimentDetectionJobPropertiesList: option<sentimentDetectionJobPropertiesList>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "ListSentimentDetectionJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPiiEntitiesDetectionJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in each page.</p>") @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
      and time that they were submitted. You can only set one filter at a time.</p>")
    @as("Filter")
    filter: option<piiEntitiesDetectionJobFilter>,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list containing the properties of each job that is returned.</p>")
    @as("PiiEntitiesDetectionJobPropertiesList")
    piiEntitiesDetectionJobPropertiesList: option<piiEntitiesDetectionJobPropertiesList>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "ListPiiEntitiesDetectionJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListKeyPhrasesDetectionJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in each page. The default is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
      and time that they were submitted. You can only set one filter at a time.</p>")
    @as("Filter")
    filter: option<keyPhrasesDetectionJobFilter>,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list containing the properties of each job that is returned.</p>")
    @as("KeyPhrasesDetectionJobPropertiesList")
    keyPhrasesDetectionJobPropertiesList: option<keyPhrasesDetectionJobPropertiesList>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "ListKeyPhrasesDetectionJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEventsDetectionJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in each page.</p>") @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
      and time that they were submitted. You can only set one filter at a time.</p>")
    @as("Filter")
    filter: option<eventsDetectionJobFilter>,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list containing the properties of each job that is returned.</p>")
    @as("EventsDetectionJobPropertiesList")
    eventsDetectionJobPropertiesList: option<eventsDetectionJobPropertiesList>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "ListEventsDetectionJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEntitiesDetectionJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in each page. The default is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
      and time that they were submitted. You can only set one filter at a time.</p>")
    @as("Filter")
    filter: option<entitiesDetectionJobFilter>,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list containing the properties of each job that is returned.</p>")
    @as("EntitiesDetectionJobPropertiesList")
    entitiesDetectionJobPropertiesList: option<entitiesDetectionJobPropertiesList>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "ListEntitiesDetectionJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDominantLanguageDetectionJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in each page. The default is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters that jobs that are returned. You can filter jobs on their name, status, or the
      date and time that they were submitted. You can only set one filter at a time.</p>")
    @as("Filter")
    filter: option<dominantLanguageDetectionJobFilter>,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list containing the properties of each job that is returned.</p>")
    @as("DominantLanguageDetectionJobPropertiesList")
    dominantLanguageDetectionJobPropertiesList: option<dominantLanguageDetectionJobPropertiesList>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "ListDominantLanguageDetectionJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDocumentClassificationJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in each page. The default is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the jobs that are returned. You can filter jobs on their names, status, or the
      date and time that they were submitted. You can only set one filter at a time.</p>")
    @as("Filter")
    filter: option<documentClassificationJobFilter>,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list containing the properties of each job returned.</p>")
    @as("DocumentClassificationJobPropertiesList")
    documentClassificationJobPropertiesList: option<documentClassificationJobPropertiesList>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "ListDocumentClassificationJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEntityRecognizer = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>")
    @as("EntityRecognizerArn")
    entityRecognizerArn: entityRecognizerArn,
  }
  type response = {
    @ocaml.doc("<p>Describes information associated with an entity recognizer.</p>")
    @as("EntityRecognizerProperties")
    entityRecognizerProperties: option<entityRecognizerProperties>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "DescribeEntityRecognizerCommand"
  let make = (~entityRecognizerArn, ()) => new({entityRecognizerArn: entityRecognizerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDocumentClassifier = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the document classifier. The  operation returns this identifier in its
      response.</p>")
    @as("DocumentClassifierArn")
    documentClassifierArn: documentClassifierArn,
  }
  type response = {
    @ocaml.doc(
      "<p>An object that contains the properties associated with a document classifier.</p>"
    )
    @as("DocumentClassifierProperties")
    documentClassifierProperties: option<documentClassifierProperties>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "DescribeDocumentClassifierCommand"
  let make = (~documentClassifierArn, ()) => new({documentClassifierArn: documentClassifierArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDetectSyntax = {
  type t
  type request = {
    @ocaml.doc("<p>The language of the input documents. You can specify any of the following languages
      supported by Amazon Comprehend: German (\"de\"), English (\"en\"), Spanish (\"es\"), French (\"fr\"),
      Italian (\"it\"), or Portuguese (\"pt\"). All documents must be in the same language.</p>")
    @as("LanguageCode")
    languageCode: syntaxLanguageCode,
    @ocaml.doc("<p>A list containing the text of the input documents. The list can contain a maximum of 25
      documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded
      characters.</p>")
    @as("TextList")
    textList: customerInputStringList,
  }
  type response = {
    @ocaml.doc("<p>A list containing one  object for each document that
      contained an error. The results are sorted in ascending order by the <code>Index</code> field
      and match the order of the documents in the input list. If there are no errors in the batch,
      the <code>ErrorList</code> is empty.</p>")
    @as("ErrorList")
    errorList: batchItemErrorList,
    @ocaml.doc("<p>A list of  objects containing the
      results of the operation. The results are sorted in ascending order by the <code>Index</code>
      field and match the order of the documents in the input list. If all of the documents contain
      an error, the <code>ResultList</code> is empty.</p>")
    @as("ResultList")
    resultList: listOfDetectSyntaxResult,
  }
  @module("@aws-sdk/client-comprehend") @new external new: request => t = "BatchDetectSyntaxCommand"
  let make = (~languageCode, ~textList, ()) => new({languageCode: languageCode, textList: textList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEntityRecognizers = {
  type t
  type request = {
    @ocaml.doc("<p> The maximum number of results to return on each page. The default is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the list of entities returned. You can filter on <code>Status</code>,
        <code>SubmitTimeBefore</code>, or <code>SubmitTimeAfter</code>. You can only set one filter
      at a time.</p>")
    @as("Filter")
    filter: option<entityRecognizerFilter>,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The list of properties of an entity recognizer.</p>")
    @as("EntityRecognizerPropertiesList")
    entityRecognizerPropertiesList: option<entityRecognizerPropertiesList>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "ListEntityRecognizersCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDocumentClassifiers = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in each page. The default is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
      and time that they were submitted. You can only set one filter at a time.</p>")
    @as("Filter")
    filter: option<documentClassifierFilter>,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list containing the properties of each job returned.</p>")
    @as("DocumentClassifierPropertiesList")
    documentClassifierPropertiesList: option<documentClassifierPropertiesList>,
  }
  @module("@aws-sdk/client-comprehend") @new
  external new: request => t = "ListDocumentClassifiersCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
