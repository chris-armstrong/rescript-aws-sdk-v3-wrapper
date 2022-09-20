type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-comprehendmedical") @new
external createClient: unit => awsServiceClient = "ComprehendMedicalClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
type string_ = string
type snomedcttraitName = [
  | @as("SYMPTOM") #SYMPTOM
  | @as("SIGN") #SIGN
  | @as("DIAGNOSIS") #DIAGNOSIS
  | @as("NEGATION") #NEGATION
]
type snomedctrelationshipType = [
  | @as("SYSTEM_ORGAN_SITE") #SYSTEM_ORGAN_SITE
  | @as("DIRECTION") #DIRECTION
  | @as("TEST_UNITS") #TEST_UNITS
  | @as("TEST_VALUE") #TEST_VALUE
  | @as("QUALITY") #QUALITY
  | @as("ACUITY") #ACUITY
]
type snomedctentityType = [
  | @as("TREATMENT_NAME") #TREATMENT_NAME
  | @as("PROCEDURE_NAME") #PROCEDURE_NAME
  | @as("TEST_NAME") #TEST_NAME
  | @as("DX_NAME") #DX_NAME
]
type snomedctentityCategory = [
  | @as("TEST_TREATMENT_PROCEDURE") #TEST_TREATMENT_PROCEDURE
  | @as("ANATOMY") #ANATOMY
  | @as("MEDICAL_CONDITION") #MEDICAL_CONDITION
]
type snomedctattributeType = [
  | @as("TEST_UNIT") #TEST_UNIT
  | @as("TEST_VALUE") #TEST_VALUE
  | @as("SYSTEM_ORGAN_SITE") #SYSTEM_ORGAN_SITE
  | @as("DIRECTION") #DIRECTION
  | @as("QUALITY") #QUALITY
  | @as("ACUITY") #ACUITY
]
type s3Key = string
type s3Bucket = string
type rxNormTraitName = [@as("NEGATION") #NEGATION]
type rxNormEntityType = [@as("GENERIC_NAME") #GENERIC_NAME | @as("BRAND_NAME") #BRAND_NAME]
type rxNormEntityCategory = [@as("MEDICATION") #MEDICATION]
type rxNormAttributeType = [
  | @as("STRENGTH") #STRENGTH
  | @as("ROUTE_OR_MODE") #ROUTE_OR_MODE
  | @as("RATE") #RATE
  | @as("FREQUENCY") #FREQUENCY
  | @as("FORM") #FORM
  | @as("DURATION") #DURATION
  | @as("DOSAGE") #DOSAGE
]
type relationshipType = [
  | @as("SYSTEM_ORGAN_SITE") #SYSTEM_ORGAN_SITE
  | @as("DIRECTION") #DIRECTION
  | @as("TEST_UNIT") #TEST_UNIT
  | @as("TEST_UNITS") #TEST_UNITS
  | @as("TEST_VALUE") #TEST_VALUE
  | @as("ACUITY") #ACUITY
  | @as("RATE") #RATE
  | @as("STRENGTH") #STRENGTH
  | @as("DURATION") #DURATION
  | @as("FREQUENCY") #FREQUENCY
  | @as("FORM") #FORM
  | @as("ROUTE_OR_MODE") #ROUTE_OR_MODE
  | @as("DOSAGE") #DOSAGE
  | @as("OVERLAP") #OVERLAP
  | @as("NEGATIVE") #NEGATIVE
  | @as("FOR") #FOR
  | @as("ADMINISTERED_VIA") #ADMINISTERED_VIA
  | @as("WITH_DOSAGE") #WITH_DOSAGE
  | @as("EVERY") #EVERY
]
type ontologyLinkingBoundedLengthString = string
type modelVersion = string
type maxResultsInteger = int
type manifestFilePath = string
type languageCode = [@as("en") #En]
type kmskey = string
type jobStatus = [
  | @as("STOPPED") #STOPPED
  | @as("STOP_REQUESTED") #STOP_REQUESTED
  | @as("FAILED") #FAILED
  | @as("PARTIAL_SUCCESS") #PARTIAL_SUCCESS
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("SUBMITTED") #SUBMITTED
]
type jobName = string
type jobId = string
type integer_ = int
type iamRoleArn = string
type icd10CMTraitName = [
  | @as("SYMPTOM") #SYMPTOM
  | @as("SIGN") #SIGN
  | @as("DIAGNOSIS") #DIAGNOSIS
  | @as("NEGATION") #NEGATION
]
type icd10CMRelationshipType = [
  | @as("SYSTEM_ORGAN_SITE") #SYSTEM_ORGAN_SITE
  | @as("OVERLAP") #OVERLAP
]
type icd10CMEntityType = [@as("TIME_EXPRESSION") #TIME_EXPRESSION | @as("DX_NAME") #DX_NAME]
type icd10CMEntityCategory = [@as("MEDICAL_CONDITION") #MEDICAL_CONDITION]
type icd10CMAttributeType = [
  | @as("TIME_EXPRESSION") #TIME_EXPRESSION
  | @as("TIME_TO_DX_NAME") #TIME_TO_DX_NAME
  | @as("QUANTITY") #QUANTITY
  | @as("QUALITY") #QUALITY
  | @as("SYSTEM_ORGAN_SITE") #SYSTEM_ORGAN_SITE
  | @as("DIRECTION") #DIRECTION
  | @as("ACUITY") #ACUITY
]
type float_ = float
type entityType = [
  | @as("TIME_EXPRESSION") #TIME_EXPRESSION
  | @as("ANATOMY") #ANATOMY
  | @as("TEST_TREATMENT_PROCEDURE") #TEST_TREATMENT_PROCEDURE
  | @as("PROTECTED_HEALTH_INFORMATION") #PROTECTED_HEALTH_INFORMATION
  | @as("MEDICAL_CONDITION") #MEDICAL_CONDITION
  | @as("MEDICATION") #MEDICATION
]
type entitySubType = [
  | @as("TIME_TO_TREATMENT_NAME") #TIME_TO_TREATMENT_NAME
  | @as("TIME_TO_PROCEDURE_NAME") #TIME_TO_PROCEDURE_NAME
  | @as("TIME_TO_TEST_NAME") #TIME_TO_TEST_NAME
  | @as("TIME_TO_DX_NAME") #TIME_TO_DX_NAME
  | @as("TIME_TO_MEDICATION_NAME") #TIME_TO_MEDICATION_NAME
  | @as("TIME_EXPRESSION") #TIME_EXPRESSION
  | @as("QUANTITY") #QUANTITY
  | @as("QUALITY") #QUALITY
  | @as("DIRECTION") #DIRECTION
  | @as("SYSTEM_ORGAN_SITE") #SYSTEM_ORGAN_SITE
  | @as("PROFESSION") #PROFESSION
  | @as("ADDRESS") #ADDRESS
  | @as("URL") #URL
  | @as("ID") #ID
  | @as("IDENTIFIER") #IDENTIFIER
  | @as("EMAIL") #EMAIL
  | @as("PHONE_OR_FAX") #PHONE_OR_FAX
  | @as("CONTACT_POINT") #CONTACT_POINT
  | @as("AGE") #AGE
  | @as("DATE") #DATE
  | @as("TREATMENT_NAME") #TREATMENT_NAME
  | @as("PROCEDURE_NAME") #PROCEDURE_NAME
  | @as("TEST_UNIT") #TEST_UNIT
  | @as("TEST_UNITS") #TEST_UNITS
  | @as("TEST_VALUE") #TEST_VALUE
  | @as("TEST_NAME") #TEST_NAME
  | @as("ACUITY") #ACUITY
  | @as("RATE") #RATE
  | @as("STRENGTH") #STRENGTH
  | @as("BRAND_NAME") #BRAND_NAME
  | @as("GENERIC_NAME") #GENERIC_NAME
  | @as("DURATION") #DURATION
  | @as("FREQUENCY") #FREQUENCY
  | @as("FORM") #FORM
  | @as("ROUTE_OR_MODE") #ROUTE_OR_MODE
  | @as("DOSAGE") #DOSAGE
  | @as("DX_NAME") #DX_NAME
  | @as("NAME") #NAME
]
type clientRequestTokenString = string
type boundedLengthString = string
type attributeName = [
  | @as("NEGATION") #NEGATION
  | @as("DIAGNOSIS") #DIAGNOSIS
  | @as("SYMPTOM") #SYMPTOM
  | @as("SIGN") #SIGN
]
type anyLengthString = string
@ocaml.doc("<p> Provides contextual information about the extracted entity. </p>")
type trait = {
  @ocaml.doc(
    "<p> The level of confidence that Comprehend Medical; has in the accuracy of this trait.</p>"
  )
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p> Provides a name or contextual description about the trait. </p>") @as("Name")
  name: option<attributeName>,
}
@ocaml.doc("<p>
      Contextual information for an entity.
    </p>")
type snomedcttrait = {
  @ocaml.doc("<p>
      The level of confidence that Comprehend Medical has in the accuracy of a detected trait.
    </p>")
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p>
      The name or contextual description of a detected trait.
    </p>")
  @as("Name")
  name: option<snomedcttraitName>,
}
@ocaml.doc("<p>
      The information about the revision of the SNOMED-CT ontology in the response. Specifically, the details include the SNOMED-CT edition, language, and version date. 
    </p>")
type snomedctdetails = {
  @ocaml.doc("<p>
      The version date of the SNOMED-CT ontology used. 
    </p>")
  @as("VersionDate")
  versionDate: option<string_>,
  @ocaml.doc("<p>
      The language used in the SNOMED-CT ontology. All Amazon Comprehend Medical operations are US English (en).
    </p>")
  @as("Language")
  language: option<string_>,
  @ocaml.doc("<p>
      The edition of SNOMED-CT used. The edition used for the InferSNOMEDCT editions is the US edition. 
    </p>")
  @as("Edition")
  edition: option<string_>,
}
@ocaml.doc("<p>
      The SNOMED-CT concepts that the entity could refer to, along with a score indicating the likelihood of the match.
    </p>")
type snomedctconcept = {
  @ocaml.doc("<p>
      The level of confidence Comprehend Medical has that the entity should be linked to the identified SNOMED-CT concept.
    </p>")
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p>
      The numeric ID for the SNOMED-CT concept.
    </p>")
  @as("Code")
  code: option<string_>,
  @ocaml.doc("<p>
      The description of the SNOMED-CT concept. 
    </p>")
  @as("Description")
  description: option<string_>,
}
@ocaml.doc("<p>The contextual information for the entity. InferRxNorm recognizes the trait
        <code>NEGATION</code>, which is any indication that the patient is not taking a medication.
    </p>")
type rxNormTrait = {
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend Medical has in the accuracy of the detected
      trait.</p>")
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p>Provides a name or contextual description about the trait.</p>") @as("Name")
  name: option<rxNormTraitName>,
}
@ocaml.doc("<p>The RxNorm concept that the entity could refer to, along with a score indicating the
      likelihood of the match.</p>")
type rxNormConcept = {
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend Medical has that the entity is accurately
      linked to the reported RxNorm concept.</p>")
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p>RxNorm concept ID, also known as the RxCUI.</p>") @as("Code")
  code: option<string_>,
  @ocaml.doc("<p>The description of the RxNorm concept.</p>") @as("Description")
  description: option<string_>,
}
@ocaml.doc("<p>The output properties for a detection job.</p>")
type outputDataConfig = {
  @ocaml.doc("<p>The path to the output data files in the S3 bucket. Comprehend Medical; creates an output directory
      using the job ID so that the output from one job does not overwrite the output of
      another.</p>")
  @as("S3Key")
  s3Key: option<s3Key>,
  @ocaml.doc("<p>When you use the <code>OutputDataConfig</code> object with asynchronous operations, you
      specify the Amazon S3 location where you want to write the output data. The URI must be in the
      same region as the API endpoint that you are calling. The location is used as the prefix for
      the actual location of the output.</p>")
  @as("S3Bucket")
  s3Bucket: s3Bucket,
}
@ocaml.doc("<p>The input properties for an entities detection job. This includes the name of the S3
      bucket and the path to the files to be analyzed. </p>")
type inputDataConfig = {
  @ocaml.doc("<p>The path to the input data files in the S3 bucket.</p>") @as("S3Key")
  s3Key: option<s3Key>,
  @ocaml.doc("<p>The URI of the S3 bucket that contains the input data. The bucket must be in the same
      region as the API endpoint that you are calling.</p>
         <p>Each file in the document collection must be less than 40 KB. You can store a maximum of
      30 GB in the bucket.</p>")
  @as("S3Bucket")
  s3Bucket: s3Bucket,
}
@ocaml.doc("<p>Contextual information for the entity. The traits recognized by InferICD10CM are
        <code>DIAGNOSIS</code>, <code>SIGN</code>, <code>SYMPTOM</code>, and
      <code>NEGATION</code>.</p>")
type icd10CMTrait = {
  @ocaml.doc("<p>The level of confidence that Comprehend Medical; has that the segment of text is correctly recognized
      as a trait.</p>")
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p>Provides a name or contextual description about the trait.</p>") @as("Name")
  name: option<icd10CMTraitName>,
}
@ocaml.doc("<p> The ICD-10-CM concepts that the entity could refer to, along with a score indicating the
      likelihood of the match.</p>")
type icd10CMConcept = {
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend Medical has that the entity is accurately
      linked to an ICD-10-CM concept.</p>")
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p>The ICD-10-CM code that identifies the concept found in the knowledge base from the
      Centers for Disease Control.</p>")
  @as("Code")
  code: option<string_>,
  @ocaml.doc("<p>The long description of the ICD-10-CM code in the ontology.</p>")
  @as("Description")
  description: option<string_>,
}
@ocaml.doc("<p>Provides information for filtering a list of detection jobs.</p>")
type comprehendMedicalAsyncJobFilter = {
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
@ocaml.doc("<p>
      The number of characters in the input text to be analyzed. 
    </p>")
type characters = {
  @ocaml.doc("<p>
      The number of characters present in the input text document as processed by Comprehend Medical.
    </p>")
  @as("OriginalTextCharacters")
  originalTextCharacters: option<integer_>,
}
type traitList = array<trait>
type snomedcttraitList = array<snomedcttrait>
type snomedctconceptList = array<snomedctconcept>
type rxNormTraitList = array<rxNormTrait>
type rxNormConceptList = array<rxNormConcept>
type icd10CMTraitList = array<icd10CMTrait>
type icd10CMConceptList = array<icd10CMConcept>
@ocaml.doc("<p>Provides information about a detection job.</p>")
type comprehendMedicalAsyncJobProperties = {
  @ocaml.doc("<p>The version of the model used to analyze the documents. The version number looks like
      X.X.X. You can use this information to track the model used for a particular batch of
      documents.</p>")
  @as("ModelVersion")
  modelVersion: option<modelVersion>,
  @ocaml.doc(
    "<p>The AWS Key Management Service key, if any, used to encrypt the output files. </p>"
  )
  @as("KMSKey")
  kmskey: option<kmskey>,
  @ocaml.doc("<p>The path to the file that describes the results of a batch job.</p>")
  @as("ManifestFilePath")
  manifestFilePath: option<manifestFilePath>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) that gives Comprehend Medical; read access to your input data.</p>"
  )
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The language code of the input documents.</p>") @as("LanguageCode")
  languageCode: option<languageCode>,
  @ocaml.doc(
    "<p>The output data configuration that you supplied when you created the detection job.</p>"
  )
  @as("OutputDataConfig")
  outputDataConfig: option<outputDataConfig>,
  @ocaml.doc(
    "<p>The input data configuration that you supplied when you created the detection job.</p>"
  )
  @as("InputDataConfig")
  inputDataConfig: option<inputDataConfig>,
  @ocaml.doc("<p>The date and time that job metadata is deleted from the server. Output files in your S3
      bucket will not be deleted. After the metadata is deleted, the job will no longer appear in
      the results of the <code>ListEntitiesDetectionV2Job</code> or the
        <code>ListPHIDetectionJobs</code> operation.</p>")
  @as("ExpirationTime")
  expirationTime: option<timestamp_>,
  @ocaml.doc("<p>The time that the detection job completed.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The time that the detection job was submitted for processing.</p>")
  @as("SubmitTime")
  submitTime: option<timestamp_>,
  @ocaml.doc("<p>A description of the status of a job.</p>") @as("Message")
  message: option<anyLengthString>,
  @ocaml.doc("<p>The current status of the detection job. If the status is <code>FAILED</code>, the
        <code>Message</code> field shows the reason for the failure.</p>")
  @as("JobStatus")
  jobStatus: option<jobStatus>,
  @ocaml.doc("<p>The name that you assigned to the detection job.</p>") @as("JobName")
  jobName: option<jobName>,
  @ocaml.doc("<p>The identifier assigned to the detection job.</p>") @as("JobId")
  jobId: option<jobId>,
}
@ocaml.doc("<p>
      The extracted attributes that relate to an entity. An extracted segment of the text that is an attribute of an entity, or otherwise related to an entity, such as the dosage of a medication taken.
    </p>")
type snomedctattribute = {
  @ocaml.doc("<p>
      The SNOMED-CT concepts specific to an attribute, along with a score indicating the likelihood of the match.
    </p>")
  @as("SNOMEDCTConcepts")
  snomedctconcepts: option<snomedctconceptList>,
  @ocaml.doc("<p>
      Contextual information for an attribute. Examples include signs, symptoms, diagnosis, and negation.
    </p>")
  @as("Traits")
  traits: option<snomedcttraitList>,
  @ocaml.doc("<p>
      The segment of input text extracted as this attribute.
    </p>")
  @as("Text")
  text: option<string_>,
  @ocaml.doc("<p>
      The 0-based character offset in the input text that shows where the attribute ends. The offset returns the UTF-8 code point in the string.
    </p>")
  @as("EndOffset")
  endOffset: option<integer_>,
  @ocaml.doc("<p>
      The 0-based character offset in the input text that shows where the attribute begins. The offset returns the UTF-8 code point in the string.
    </p>")
  @as("BeginOffset")
  beginOffset: option<integer_>,
  @ocaml.doc("<p>
      The numeric identifier for this attribute. This is a monotonically increasing id unique within this response rather than a global unique identifier.
    </p>")
  @as("Id")
  id: option<integer_>,
  @ocaml.doc("<p>
      The type of relationship that exists between the entity and the related attribute. 
    </p>")
  @as("RelationshipType")
  relationshipType: option<snomedctrelationshipType>,
  @ocaml.doc("<p>
      The level of confidence that Comprehend Medical has that this attribute is correctly related to this entity.
    </p>")
  @as("RelationshipScore")
  relationshipScore: option<float_>,
  @ocaml.doc("<p>
      The level of confidence that Comprehend Medical has that the segment of text is correctly recognized as an attribute.
    </p>")
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p>
      The type of attribute. Possible types include DX_NAME, ACUITY, DIRECTION, SYSTEM_ORGAN_SITE,TEST_NAME, TEST_VALUE, TEST_UNIT, PROCEDURE_NAME, and TREATMENT_NAME.
    </p>")
  @as("Type")
  type_: option<snomedctattributeType>,
  @ocaml.doc("<p>
      The category of the detected attribute. Possible categories include MEDICAL_CONDITION, ANATOMY, and TEST_TREATMENT_PROCEDURE.
    </p>")
  @as("Category")
  category: option<snomedctentityCategory>,
}
@ocaml.doc("<p>The extracted attributes that relate to this entity. The attributes recognized by
      InferRxNorm are <code>DOSAGE</code>, <code>DURATION</code>, <code>FORM</code>,
        <code>FREQUENCY</code>, <code>RATE</code>, <code>ROUTE_OR_MODE</code>.</p>")
type rxNormAttribute = {
  @ocaml.doc("<p>Contextual information for the attribute. InferRxNorm recognizes the trait
        <code>NEGATION</code> for attributes, i.e. that the patient is not taking a specific dose or
      form of a medication.</p>")
  @as("Traits")
  traits: option<rxNormTraitList>,
  @ocaml.doc("<p>The segment of input text which corresponds to the detected attribute.</p>")
  @as("Text")
  text: option<string_>,
  @ocaml.doc("<p>The 0-based character offset in the input text that shows where the attribute ends. The
      offset returns the UTF-8 code point in the string.</p>")
  @as("EndOffset")
  endOffset: option<integer_>,
  @ocaml.doc("<p>The 0-based character offset in the input text that shows where the attribute begins. The
      offset returns the UTF-8 code point in the string.</p>")
  @as("BeginOffset")
  beginOffset: option<integer_>,
  @ocaml.doc("<p>The numeric identifier for this attribute. This is a monotonically increasing id unique
      within this response rather than a global unique identifier.</p>")
  @as("Id")
  id: option<integer_>,
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend Medical has that the attribute is
      accurately linked to an entity.</p>")
  @as("RelationshipScore")
  relationshipScore: option<float_>,
  @ocaml.doc("<p>The level of confidence that Comprehend Medical has that the segment of text is correctly
      recognized as an attribute.</p>")
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p>The type of attribute. The types of attributes recognized by InferRxNorm are
        <code>BRAND_NAME</code> and <code>GENERIC_NAME</code>.</p>")
  @as("Type")
  type_: option<rxNormAttributeType>,
}
@ocaml.doc("<p>The detected attributes that relate to an entity. This includes an extracted segment of
      the text that is an attribute of an entity, or otherwise related to an entity. InferICD10CM
      detects the following attributes: <code>Direction</code>, <code>System, Organ or Site</code>,
      and <code>Acuity</code>.</p>")
type icd10CMAttribute = {
  @ocaml.doc("<p>The type of relationship between the entity and attribute. Type for the relationship can
        be either of <code>OVERLAP</code> or <code>SYSTEM_ORGAN_SITE</code>.</p>")
  @as("RelationshipType")
  relationshipType: option<icd10CMRelationshipType>,
  @ocaml.doc(
    "<p>The category of attribute. Can be either of <code>DX_NAME</code> or <code>TIME_EXPRESSION</code>.</p>"
  )
  @as("Category")
  category: option<icd10CMEntityType>,
  @ocaml.doc("<p>The contextual information for the attribute. The traits recognized by InferICD10CM are
        <code>DIAGNOSIS</code>, <code>SIGN</code>, <code>SYMPTOM</code>, and
      <code>NEGATION</code>.</p>")
  @as("Traits")
  traits: option<icd10CMTraitList>,
  @ocaml.doc("<p>The segment of input text which contains the detected attribute.</p>") @as("Text")
  text: option<string_>,
  @ocaml.doc("<p>The 0-based character offset in the input text that shows where the attribute ends. The
      offset returns the UTF-8 code point in the string.</p>")
  @as("EndOffset")
  endOffset: option<integer_>,
  @ocaml.doc("<p>The 0-based character offset in the input text that shows where the attribute begins. The
      offset returns the UTF-8 code point in the string.</p>")
  @as("BeginOffset")
  beginOffset: option<integer_>,
  @ocaml.doc("<p>The numeric identifier for this attribute. This is a monotonically increasing id unique
      within this response rather than a global unique identifier.</p>")
  @as("Id")
  id: option<integer_>,
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend Medical has that this attribute is
      correctly related to this entity.</p>")
  @as("RelationshipScore")
  relationshipScore: option<float_>,
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend Medical has that the segment of text is
      correctly recognized as an attribute.</p>")
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p>The type of attribute. InferICD10CM detects entities of the type <code>DX_NAME</code>.
    </p>")
  @as("Type")
  type_: option<icd10CMAttributeType>,
}
type comprehendMedicalAsyncJobPropertiesList = array<comprehendMedicalAsyncJobProperties>
@ocaml.doc("<p> An extracted segment of the text that is an attribute of an entity, or otherwise related
      to an entity, such as the dosage of a medication taken. It contains information about the
      attribute such as id, begin and end offset within the input text, and the segment of the input
      text. </p>")
type attribute = {
  @ocaml.doc("<p> Contextual information for this attribute. </p>") @as("Traits")
  traits: option<traitList>,
  @ocaml.doc("<p> The category of attribute. </p>") @as("Category") category: option<entityType>,
  @ocaml.doc("<p> The segment of input text extracted as this attribute.</p>") @as("Text")
  text: option<string_>,
  @ocaml.doc("<p> The 0-based character offset in the input text that shows where the attribute ends. The
      offset returns the UTF-8 code point in the string.</p>")
  @as("EndOffset")
  endOffset: option<integer_>,
  @ocaml.doc("<p> The 0-based character offset in the input text that shows where the attribute begins. The
      offset returns the UTF-8 code point in the string. </p>")
  @as("BeginOffset")
  beginOffset: option<integer_>,
  @ocaml.doc("<p> The numeric identifier for this attribute. This is a monotonically increasing id unique
      within this response rather than a global unique identifier. </p>")
  @as("Id")
  id: option<integer_>,
  @ocaml.doc("<p>The type of relationship between the entity and attribute. Type for the relationship is
        <code>OVERLAP</code>, indicating that the entity occurred at the same time as the
        <code>Date_Expression</code>. </p>")
  @as("RelationshipType")
  relationshipType: option<relationshipType>,
  @ocaml.doc("<p> The level of confidence that Comprehend Medical; has that this attribute is correctly related to this
      entity. </p>")
  @as("RelationshipScore")
  relationshipScore: option<float_>,
  @ocaml.doc("<p> The level of confidence that Comprehend Medical; has that the segment of text is correctly recognized
      as an attribute. </p>")
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p> The type of attribute. </p>") @as("Type") type_: option<entitySubType>,
}
@ocaml.doc(
  "<p> An attribute that was extracted, but Comprehend Medical; was unable to relate to an entity. </p>"
)
type unmappedAttribute = {
  @ocaml.doc("<p> The specific attribute that has been extracted but not mapped to an entity. </p>")
  @as("Attribute")
  attribute: option<attribute>,
  @ocaml.doc("<p> The type of the unmapped attribute, could be one of the following values: \"MEDICATION\",
      \"MEDICAL_CONDITION\", \"ANATOMY\", \"TEST_AND_TREATMENT_PROCEDURE\" or
      \"PROTECTED_HEALTH_INFORMATION\". </p>")
  @as("Type")
  type_: option<entityType>,
}
type snomedctattributeList = array<snomedctattribute>
type rxNormAttributeList = array<rxNormAttribute>
type icd10CMAttributeList = array<icd10CMAttribute>
type attributeList = array<attribute>
type unmappedAttributeList = array<unmappedAttribute>
@ocaml.doc("<p>
      The collection of medical entities extracted from the input text and their associated information. For each entity, the response provides the entity text, the entity category, where the entity text begins and ends, and the level of confidence that Comprehend Medical has in the detection and analysis. Attributes and traits of the entity are also returned. 
    </p>")
type snomedctentity = {
  @ocaml.doc("<p>
      The SNOMED concepts that the entity could refer to, along with a score indicating the likelihood of the match.
    </p>")
  @as("SNOMEDCTConcepts")
  snomedctconcepts: option<snomedctconceptList>,
  @ocaml.doc("<p>
      Contextual information for the entity.
    </p>")
  @as("Traits")
  traits: option<snomedcttraitList>,
  @ocaml.doc("<p>
      An extracted segment of the text that is an attribute of an entity, or otherwise related to an entity, such as the dosage of a medication taken.
    </p>")
  @as("Attributes")
  attributes: option<snomedctattributeList>,
  @ocaml.doc("<p>
      The 0-based character offset in the input text that shows where the entity ends. The offset returns the UTF-8 code point in the string.
    </p>")
  @as("EndOffset")
  endOffset: option<integer_>,
  @ocaml.doc("<p>
      The 0-based character offset in the input text that shows where the entity begins. The offset returns the UTF-8 code point in the string.
    </p>")
  @as("BeginOffset")
  beginOffset: option<integer_>,
  @ocaml.doc("<p>
      The level of confidence that Comprehend Medical has in the accuracy of the detected entity.
    </p>")
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p>
      Describes the specific type of entity with category of entities. Possible types include DX_NAME, ACUITY, DIRECTION, SYSTEM_ORGAN_SITE, TEST_NAME, TEST_VALUE, TEST_UNIT, PROCEDURE_NAME, or TREATMENT_NAME. 
    </p>")
  @as("Type")
  type_: option<snomedctentityType>,
  @ocaml.doc("<p>
      The category of the detected entity. Possible categories are MEDICAL_CONDITION, ANATOMY, or TEST_TREATMENT_PROCEDURE. 
    </p>")
  @as("Category")
  category: option<snomedctentityCategory>,
  @ocaml.doc("<p>
      The segment of input text extracted as this entity.
    </p>")
  @as("Text")
  text: option<ontologyLinkingBoundedLengthString>,
  @ocaml.doc("<p>
      The numeric identifier for the entity. This is a monotonically increasing id unique within this response rather than a global unique identifier.
    </p>")
  @as("Id")
  id: option<integer_>,
}
@ocaml.doc("<p>The collection of medical entities extracted from the input text and their associated
      information. For each entity, the response provides the entity text, the entity category,
      where the entity text begins and ends, and the level of confidence that Amazon Comprehend
      Medical has in the detection and analysis. Attributes and traits of the entity are also
      returned. </p>")
type rxNormEntity = {
  @ocaml.doc("<p> The RxNorm concepts that the entity could refer to, along with a score indicating the
      likelihood of the match.</p>")
  @as("RxNormConcepts")
  rxNormConcepts: option<rxNormConceptList>,
  @ocaml.doc("<p> Contextual information for the entity.</p>") @as("Traits")
  traits: option<rxNormTraitList>,
  @ocaml.doc("<p>The extracted attributes that relate to the entity. The attributes recognized by
      InferRxNorm are <code>DOSAGE</code>, <code>DURATION</code>, <code>FORM</code>,
        <code>FREQUENCY</code>, <code>RATE</code>, <code>ROUTE_OR_MODE</code>, and
        <code>STRENGTH</code>.</p>")
  @as("Attributes")
  attributes: option<rxNormAttributeList>,
  @ocaml.doc("<p>The 0-based character offset in the input text that shows where the entity ends. The
      offset returns the UTF-8 code point in the string.</p>")
  @as("EndOffset")
  endOffset: option<integer_>,
  @ocaml.doc("<p>The 0-based character offset in the input text that shows where the entity begins. The
      offset returns the UTF-8 code point in the string.</p>")
  @as("BeginOffset")
  beginOffset: option<integer_>,
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend Medical has in the accuracy of the detected
      entity.</p>")
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p> Describes the specific type of entity. For InferRxNorm, the recognized entity type is
        <code>MEDICATION</code>.</p>")
  @as("Type")
  type_: option<rxNormEntityType>,
  @ocaml.doc("<p>The category of the entity. The recognized categories are <code>GENERIC</code> or
        <code>BRAND_NAME</code>.</p>")
  @as("Category")
  category: option<rxNormEntityCategory>,
  @ocaml.doc("<p>The segment of input text extracted from which the entity was detected.</p>")
  @as("Text")
  text: option<ontologyLinkingBoundedLengthString>,
  @ocaml.doc("<p>The numeric identifier for the entity. This is a monotonically increasing id unique within
      this response rather than a global unique identifier.</p>")
  @as("Id")
  id: option<integer_>,
}
@ocaml.doc("<p>The collection of medical entities extracted from the input text and their associated
      information. For each entity, the response provides the entity text, the entity category,
      where the entity text begins and ends, and the level of confidence that Amazon Comprehend
      Medical has in the detection and analysis. Attributes and traits of the entity are also
      returned. </p>")
type icd10CMEntity = {
  @ocaml.doc("<p>The ICD-10-CM concepts that the entity could refer to, along with a score indicating the
      likelihood of the match.</p>")
  @as("ICD10CMConcepts")
  icd10CMConcepts: option<icd10CMConceptList>,
  @ocaml.doc("<p>Provides Contextual information for the entity. The traits recognized by InferICD10CM are
        <code>DIAGNOSIS</code>, <code>SIGN</code>, <code>SYMPTOM</code>, and
      <code>NEGATION.</code>
         </p>")
  @as("Traits")
  traits: option<icd10CMTraitList>,
  @ocaml.doc("<p>The detected attributes that relate to the entity. An extracted segment of the text that
      is an attribute of an entity, or otherwise related to an entity, such as the nature of a
      medical condition.</p>")
  @as("Attributes")
  attributes: option<icd10CMAttributeList>,
  @ocaml.doc("<p>The 0-based character offset in the input text that shows where the entity ends. The
      offset returns the UTF-8 code point in the string.</p>")
  @as("EndOffset")
  endOffset: option<integer_>,
  @ocaml.doc("<p>The 0-based character offset in the input text that shows where the entity begins. The
      offset returns the UTF-8 code point in the string.</p>")
  @as("BeginOffset")
  beginOffset: option<integer_>,
  @ocaml.doc("<p>The level of confidence that Amazon Comprehend Medical has in the accuracy of the
      detection.</p>")
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p>Describes the specific type of entity with category of entities. InferICD10CM detects
      entities of the type <code>DX_NAME</code> and <code>TIME_EXPRESSION</code>.</p>")
  @as("Type")
  type_: option<icd10CMEntityType>,
  @ocaml.doc("<p> The category of the entity. InferICD10CM detects entities in the
        <code>MEDICAL_CONDITION</code> category. </p>")
  @as("Category")
  category: option<icd10CMEntityCategory>,
  @ocaml.doc("<p>The segment of input text that is matched to the detected entity.</p>") @as("Text")
  text: option<ontologyLinkingBoundedLengthString>,
  @ocaml.doc("<p>The numeric identifier for the entity. This is a monotonically increasing id unique within
      this response rather than a global unique identifier.</p>")
  @as("Id")
  id: option<integer_>,
}
@ocaml.doc("<p> Provides information about an extracted medical entity.</p>")
type entity = {
  @ocaml.doc("<p> The extracted attributes that relate to this entity.</p>") @as("Attributes")
  attributes: option<attributeList>,
  @ocaml.doc("<p>Contextual information for the entity.</p>") @as("Traits")
  traits: option<traitList>,
  @ocaml.doc("<p> Describes the specific type of entity with category of entities.</p>") @as("Type")
  type_: option<entitySubType>,
  @ocaml.doc("<p> The category of the entity.</p>") @as("Category") category: option<entityType>,
  @ocaml.doc("<p> The segment of input text extracted as this entity.</p>") @as("Text")
  text: option<string_>,
  @ocaml.doc(
    "<p>The level of confidence that Comprehend Medical; has in the accuracy of the detection.</p>"
  )
  @as("Score")
  score: option<float_>,
  @ocaml.doc("<p> The 0-based character offset in the input text that shows where the entity ends. The
      offset returns the UTF-8 code point in the string. </p>")
  @as("EndOffset")
  endOffset: option<integer_>,
  @ocaml.doc("<p> The 0-based character offset in the input text that shows where the entity begins. The
      offset returns the UTF-8 code point in the string. </p>")
  @as("BeginOffset")
  beginOffset: option<integer_>,
  @ocaml.doc("<p> The numeric identifier for the entity. This is a monotonically increasing id unique
      within this response rather than a global unique identifier. </p>")
  @as("Id")
  id: option<integer_>,
}
type snomedctentityList = array<snomedctentity>
type rxNormEntityList = array<rxNormEntity>
type icd10CMEntityList = array<icd10CMEntity>
type entityList = array<entity>
@ocaml.doc("<p> Comprehend Medical; extracts structured information from unstructured clinical text. Use these actions
      to gain insight in your documents. </p>")
module StopSNOMEDCTInferenceJob = {
  type t
  type request = {
    @ocaml.doc("<p>
      The job id of the asynchronous InferSNOMEDCT job to be stopped.
    </p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>
      The identifier generated for the job. To get the status of job, use this identifier with the DescribeSNOMEDCTInferenceJob operation.
    </p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StopSNOMEDCTInferenceJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopRxNormInferenceJob = {
  type t
  type request = {@ocaml.doc("<p>The identifier of the job.</p>") @as("JobId") jobId: jobId}
  type response = {
    @ocaml.doc("<p>The identifier generated for the job. To get the status of job, use this identifier with
      the <code>DescribeRxNormInferenceJob</code> operation.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StopRxNormInferenceJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopPHIDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the PHI detection job to stop.</p>") @as("JobId") jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the PHI detection job that was stopped.</p>") @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StopPHIDetectionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopICD10CMInferenceJob = {
  type t
  type request = {@ocaml.doc("<p>The identifier of the job.</p>") @as("JobId") jobId: jobId}
  type response = {
    @ocaml.doc("<p>The identifier generated for the job. To get the status of job, use this identifier with
      the <code>DescribeICD10CMInferenceJob</code> operation.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StopICD10CMInferenceJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopEntitiesDetectionV2Job = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the medical entities job to stop.</p>") @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the medical entities detection job that was stopped.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StopEntitiesDetectionV2JobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartSNOMEDCTInferenceJob = {
  type t
  type request = {
    @ocaml.doc("<p>
      The language of the input documents. All documents must be in the same language.
    </p>")
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>
      An AWS Key Management Service key used to encrypt your output files. If you do not specify a key, the files are written in plain text.
    </p>")
    @as("KMSKey")
    kmskey: option<kmskey>,
    @ocaml.doc("<p>
      A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical generates one.
    </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenString>,
    @ocaml.doc("<p>
      The user generated name the asynchronous InferSNOMEDCT job.
    </p>")
    @as("JobName")
    jobName: option<jobName>,
    @ocaml.doc("<p>
      The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend Medical read access to your input data. 
    </p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @as("OutputDataConfig") outputDataConfig: outputDataConfig,
    @as("InputDataConfig") inputDataConfig: inputDataConfig,
  }
  type response = {
    @ocaml.doc("<p>
      The identifier generated for the job. To get the status of a job, use this identifier with the StartSNOMEDCTInferenceJob operation.
    </p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StartSNOMEDCTInferenceJobCommand"
  let make = (
    ~languageCode,
    ~dataAccessRoleArn,
    ~outputDataConfig,
    ~inputDataConfig,
    ~kmskey=?,
    ~clientRequestToken=?,
    ~jobName=?,
    (),
  ) =>
    new({
      languageCode: languageCode,
      kmskey: kmskey,
      clientRequestToken: clientRequestToken,
      jobName: jobName,
      dataAccessRoleArn: dataAccessRoleArn,
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartRxNormInferenceJob = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The language of the input documents. All documents must be in the same language.</p>"
    )
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>An AWS Key Management Service key to encrypt your output files. If you do not specify a
      key, the files are written in plain text.</p>")
    @as("KMSKey")
    kmskey: option<kmskey>,
    @ocaml.doc("<p>A unique identifier for the request. If you don't set the client request token, Comprehend Medical;
      generates one.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenString>,
    @ocaml.doc("<p>The identifier of the job.</p>") @as("JobName") jobName: option<jobName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
      grants Comprehend Medical; read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med\"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>Specifies where to send the output files.</p>") @as("OutputDataConfig")
    outputDataConfig: outputDataConfig,
    @ocaml.doc("<p>Specifies the format and location of the input data for the job.</p>")
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the job.</p>") @as("JobId") jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StartRxNormInferenceJobCommand"
  let make = (
    ~languageCode,
    ~dataAccessRoleArn,
    ~outputDataConfig,
    ~inputDataConfig,
    ~kmskey=?,
    ~clientRequestToken=?,
    ~jobName=?,
    (),
  ) =>
    new({
      languageCode: languageCode,
      kmskey: kmskey,
      clientRequestToken: clientRequestToken,
      jobName: jobName,
      dataAccessRoleArn: dataAccessRoleArn,
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartPHIDetectionJob = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The language of the input documents. All documents must be in the same language.</p>"
    )
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>An AWS Key Management Service key to encrypt your output files. If you do not specify a
      key, the files are written in plain text.</p>")
    @as("KMSKey")
    kmskey: option<kmskey>,
    @ocaml.doc("<p>A unique identifier for the request. If you don't set the client request token, Comprehend Medical;
      generates one.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenString>,
    @ocaml.doc("<p>The identifier of the job.</p>") @as("JobName") jobName: option<jobName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
      grants Comprehend Medical; read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med\"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>Specifies where to send the output files.</p>") @as("OutputDataConfig")
    outputDataConfig: outputDataConfig,
    @ocaml.doc("<p>Specifies the format and location of the input data for the job.</p>")
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
  }
  type response = {
    @ocaml.doc("<p>The identifier generated for the job. To get the status of a job, use this identifier with
      the <code>DescribePHIDetectionJob</code> operation.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StartPHIDetectionJobCommand"
  let make = (
    ~languageCode,
    ~dataAccessRoleArn,
    ~outputDataConfig,
    ~inputDataConfig,
    ~kmskey=?,
    ~clientRequestToken=?,
    ~jobName=?,
    (),
  ) =>
    new({
      languageCode: languageCode,
      kmskey: kmskey,
      clientRequestToken: clientRequestToken,
      jobName: jobName,
      dataAccessRoleArn: dataAccessRoleArn,
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartICD10CMInferenceJob = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The language of the input documents. All documents must be in the same language.</p>"
    )
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>An AWS Key Management Service key to encrypt your output files. If you do not specify a
      key, the files are written in plain text.</p>")
    @as("KMSKey")
    kmskey: option<kmskey>,
    @ocaml.doc("<p>A unique identifier for the request. If you don't set the client request token, Comprehend Medical;
      generates one.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenString>,
    @ocaml.doc("<p>The identifier of the job.</p>") @as("JobName") jobName: option<jobName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
      grants Comprehend Medical; read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med\"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>Specifies where to send the output files.</p>") @as("OutputDataConfig")
    outputDataConfig: outputDataConfig,
    @ocaml.doc("<p>Specifies the format and location of the input data for the job.</p>")
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
  }
  type response = {
    @ocaml.doc("<p>The identifier generated for the job. To get the status of a job, use this identifier with
      the <code>StartICD10CMInferenceJob</code> operation.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StartICD10CMInferenceJobCommand"
  let make = (
    ~languageCode,
    ~dataAccessRoleArn,
    ~outputDataConfig,
    ~inputDataConfig,
    ~kmskey=?,
    ~clientRequestToken=?,
    ~jobName=?,
    (),
  ) =>
    new({
      languageCode: languageCode,
      kmskey: kmskey,
      clientRequestToken: clientRequestToken,
      jobName: jobName,
      dataAccessRoleArn: dataAccessRoleArn,
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartEntitiesDetectionV2Job = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The language of the input documents. All documents must be in the same language. Comprehend Medical; processes files in US English (en).</p>"
    )
    @as("LanguageCode")
    languageCode: languageCode,
    @ocaml.doc("<p>An AWS Key Management Service key to encrypt your output files. If you do not specify a
      key, the files are written in plain text.</p>")
    @as("KMSKey")
    kmskey: option<kmskey>,
    @ocaml.doc("<p>A unique identifier for the request. If you don't set the client request token, Comprehend Medical;
      generates one for you.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenString>,
    @ocaml.doc("<p>The identifier of the job.</p>") @as("JobName") jobName: option<jobName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
      grants Comprehend Medical; read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med\"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>The output configuration that specifies where to send the output files.</p>")
    @as("OutputDataConfig")
    outputDataConfig: outputDataConfig,
    @ocaml.doc(
      "<p>The input configuration that specifies the format and location of the input data for the job.</p>"
    )
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
  }
  type response = {
    @ocaml.doc("<p>The identifier generated for the job. To get the status of a job, use this identifier with
      the <code>DescribeEntitiesDetectionV2Job</code> operation.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StartEntitiesDetectionV2JobCommand"
  let make = (
    ~languageCode,
    ~dataAccessRoleArn,
    ~outputDataConfig,
    ~inputDataConfig,
    ~kmskey=?,
    ~clientRequestToken=?,
    ~jobName=?,
    (),
  ) =>
    new({
      languageCode: languageCode,
      kmskey: kmskey,
      clientRequestToken: clientRequestToken,
      jobName: jobName,
      dataAccessRoleArn: dataAccessRoleArn,
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSNOMEDCTInferenceJob = {
  type t
  type request = {
    @ocaml.doc("<p>
      The identifier that Amazon Comprehend Medical generated for the job. The StartSNOMEDCTInferenceJob operation returns this identifier in its response.
    </p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @as("ComprehendMedicalAsyncJobProperties")
    comprehendMedicalAsyncJobProperties: option<comprehendMedicalAsyncJobProperties>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "DescribeSNOMEDCTInferenceJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRxNormInferenceJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier that Amazon Comprehend Medical generated for the job. The
      StartRxNormInferenceJob operation returns this identifier in its response.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>An object that contains the properties associated with a detection job.</p>")
    @as("ComprehendMedicalAsyncJobProperties")
    comprehendMedicalAsyncJobProperties: option<comprehendMedicalAsyncJobProperties>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "DescribeRxNormInferenceJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePHIDetectionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier that Comprehend Medical; generated for the job. The <code>StartPHIDetectionJob</code>
      operation returns this identifier in its response.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>An object that contains the properties associated with a detection job.</p>")
    @as("ComprehendMedicalAsyncJobProperties")
    comprehendMedicalAsyncJobProperties: option<comprehendMedicalAsyncJobProperties>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "DescribePHIDetectionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeICD10CMInferenceJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier that Amazon Comprehend Medical generated for the job. <code>The
        StartICD10CMInferenceJob</code> operation returns this identifier in its response.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>An object that contains the properties associated with a detection job.</p>")
    @as("ComprehendMedicalAsyncJobProperties")
    comprehendMedicalAsyncJobProperties: option<comprehendMedicalAsyncJobProperties>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "DescribeICD10CMInferenceJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEntitiesDetectionV2Job = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier that Comprehend Medical; generated for the job. The
        <code>StartEntitiesDetectionV2Job</code> operation returns this identifier in its
      response.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>An object that contains the properties associated with a detection job.</p>")
    @as("ComprehendMedicalAsyncJobProperties")
    comprehendMedicalAsyncJobProperties: option<comprehendMedicalAsyncJobProperties>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "DescribeEntitiesDetectionV2JobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSNOMEDCTInferenceJobs = {
  type t
  type request = {
    @ocaml.doc("<p>
      The maximum number of results to return in each page. The default is 100.
    </p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>
      Identifies the next page of InferSNOMEDCT results to return.
    </p>")
    @as("NextToken")
    nextToken: option<string_>,
    @as("Filter") filter: option<comprehendMedicalAsyncJobFilter>,
  }
  type response = {
    @ocaml.doc("<p>
      Identifies the next page of results to return.
    </p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>
      A list containing the properties of each job that is returned.
    </p>")
    @as("ComprehendMedicalAsyncJobPropertiesList")
    comprehendMedicalAsyncJobPropertiesList: option<comprehendMedicalAsyncJobPropertiesList>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "ListSNOMEDCTInferenceJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRxNormInferenceJobs = {
  type t
  type request = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the jobs that are returned. You can filter jobs based on their names, status, or
      the date and time that they were submitted. You can only set one filter at a time.</p>")
    @as("Filter")
    filter: option<comprehendMedicalAsyncJobFilter>,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return in each page. The default is 100.</p>")
    @as("ComprehendMedicalAsyncJobPropertiesList")
    comprehendMedicalAsyncJobPropertiesList: option<comprehendMedicalAsyncJobPropertiesList>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "ListRxNormInferenceJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPHIDetectionJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in each page. The default is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the jobs that are returned. You can filter jobs based on their names, status, or
      the date and time that they were submitted. You can only set one filter at a time.</p>")
    @as("Filter")
    filter: option<comprehendMedicalAsyncJobFilter>,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list containing the properties of each job returned.</p>")
    @as("ComprehendMedicalAsyncJobPropertiesList")
    comprehendMedicalAsyncJobPropertiesList: option<comprehendMedicalAsyncJobPropertiesList>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "ListPHIDetectionJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListICD10CMInferenceJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in each page. The default is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the jobs that are returned. You can filter jobs based on their names, status, or
      the date and time that they were submitted. You can only set one filter at a time.</p>")
    @as("Filter")
    filter: option<comprehendMedicalAsyncJobFilter>,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list containing the properties of each job that is returned.</p>")
    @as("ComprehendMedicalAsyncJobPropertiesList")
    comprehendMedicalAsyncJobPropertiesList: option<comprehendMedicalAsyncJobPropertiesList>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "ListICD10CMInferenceJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEntitiesDetectionV2Jobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in each page. The default is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the jobs that are returned. You can filter jobs based on their names, status, or
      the date and time that they were submitted. You can only set one filter at a time.</p>")
    @as("Filter")
    filter: option<comprehendMedicalAsyncJobFilter>,
  }
  type response = {
    @ocaml.doc("<p>Identifies the next page of results to return.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list containing the properties of each job returned.</p>")
    @as("ComprehendMedicalAsyncJobPropertiesList")
    comprehendMedicalAsyncJobPropertiesList: option<comprehendMedicalAsyncJobPropertiesList>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "ListEntitiesDetectionV2JobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InferSNOMEDCT = {
  type t
  type request = {
    @ocaml.doc("<p>
      The input text to be analyzed using InferSNOMEDCT. The text should be a string with 1 to 10000 characters. 
    </p>")
    @as("Text")
    text: ontologyLinkingBoundedLengthString,
  }
  type response = {
    @ocaml.doc("<p>
      The number of characters in the input request documentation. 
    </p>")
    @as("Characters")
    characters: option<characters>,
    @ocaml.doc("<p>
      The details of the SNOMED-CT revision, including the edition, language, and version date. 
    </p>")
    @as("SNOMEDCTDetails")
    snomedctdetails: option<snomedctdetails>,
    @ocaml.doc("<p>
      The version of the model used to analyze the documents, in the format n.n.n You can use this information to track the model used for a particular batch of documents.
    </p>")
    @as("ModelVersion")
    modelVersion: option<string_>,
    @ocaml.doc("<p>
      If the result of the request is truncated, the pagination token can be used to fetch the next page of entities.
    </p>")
    @as("PaginationToken")
    paginationToken: option<string_>,
    @ocaml.doc("<p>
      The collection of medical concept entities extracted from the input text and their associated information. For each entity, the response provides the entity text, the entity category, where the entity text begins and ends, and the level of confidence that Comprehend Medical has in the detection and analysis. Attributes and traits of the entity are also returned. 
    </p>")
    @as("Entities")
    entities: snomedctentityList,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "InferSNOMEDCTCommand"
  let make = (~text, ()) => new({text: text})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InferRxNorm = {
  type t
  type request = {
    @ocaml.doc("<p>The input text used for analysis. The input for InferRxNorm is a string from 1 to 10000
      characters.</p>")
    @as("Text")
    text: ontologyLinkingBoundedLengthString,
  }
  type response = {
    @ocaml.doc("<p>The version of the model used to analyze the documents, in the format
        <i>n</i>.<i>n</i>.<i>n</i> You can use this
      information to track the model used for a particular batch of documents.</p>")
    @as("ModelVersion")
    modelVersion: option<string_>,
    @ocaml.doc("<p>If the result of the previous request to <code>InferRxNorm</code> was truncated, include
      the <code>PaginationToken</code> to fetch the next page of medication entities.</p>")
    @as("PaginationToken")
    paginationToken: option<string_>,
    @ocaml.doc("<p>The medication entities detected in the text linked to RxNorm concepts. If the action is
      successful, the service sends back an HTTP 200 response, as well as the entities
      detected.</p>")
    @as("Entities")
    entities: rxNormEntityList,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "InferRxNormCommand"
  let make = (~text, ()) => new({text: text})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InferICD10CM = {
  type t
  type request = {
    @ocaml.doc("<p>The input text used for analysis. The input for InferICD10CM is a string from 1 to 10000
      characters.</p>")
    @as("Text")
    text: ontologyLinkingBoundedLengthString,
  }
  type response = {
    @ocaml.doc("<p>The version of the model used to analyze the documents, in the format
        <i>n</i>.<i>n</i>.<i>n</i> You can use this
      information to track the model used for a particular batch of documents.</p>")
    @as("ModelVersion")
    modelVersion: option<string_>,
    @ocaml.doc("<p>If the result of the previous request to <code>InferICD10CM</code> was truncated, include
      the <code>PaginationToken</code> to fetch the next page of medical condition entities. </p>")
    @as("PaginationToken")
    paginationToken: option<string_>,
    @ocaml.doc("<p>The medical conditions detected in the text linked to ICD-10-CM concepts. If the action is
      successful, the service sends back an HTTP 200 response, as well as the entities
      detected.</p>")
    @as("Entities")
    entities: icd10CMEntityList,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "InferICD10CMCommand"
  let make = (~text, ()) => new({text: text})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectPHI = {
  type t
  type request = {
    @ocaml.doc("<p> A UTF-8 text string containing the clinical content being examined for PHI entities. Each
      string must contain fewer than 20,000 bytes of characters.</p>")
    @as("Text")
    text: boundedLengthString,
  }
  type response = {
    @ocaml.doc("<p>The version of the model used to analyze the documents. The version number looks like
      X.X.X. You can use this information to track the model used for a particular batch of
      documents.</p>")
    @as("ModelVersion")
    modelVersion: string_,
    @ocaml.doc("<p> If the result of the previous request to <code>DetectPHI</code> was truncated, include
      the <code>PaginationToken</code> to fetch the next page of PHI entities. </p>")
    @as("PaginationToken")
    paginationToken: option<string_>,
    @ocaml.doc("<p> The collection of PHI entities extracted from the input text and their associated
      information. For each entity, the response provides the entity text, the entity category,
      where the entity text begins and ends, and the level of confidence that Comprehend Medical; has in its
      detection. </p>")
    @as("Entities")
    entities: entityList,
  }
  @module("@aws-sdk/client-comprehendmedical") @new external new: request => t = "DetectPHICommand"
  let make = (~text, ()) => new({text: text})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectEntitiesV2 = {
  type t
  type request = {
    @ocaml.doc("<p>A UTF-8 string containing the clinical content being examined for entities. Each string
      must contain fewer than 20,000 bytes of characters.</p>")
    @as("Text")
    text: boundedLengthString,
  }
  type response = {
    @ocaml.doc("<p>The version of the model used to analyze the documents. The version number looks like
      X.X.X. You can use this information to track the model used for a particular batch of
      documents.</p>")
    @as("ModelVersion")
    modelVersion: string_,
    @ocaml.doc("<p>If the result to the <code>DetectEntitiesV2</code> operation was truncated, include the
        <code>PaginationToken</code> to fetch the next page of entities.</p>")
    @as("PaginationToken")
    paginationToken: option<string_>,
    @ocaml.doc(
      "<p>Attributes extracted from the input text that couldn't be related to an entity.</p>"
    )
    @as("UnmappedAttributes")
    unmappedAttributes: option<unmappedAttributeList>,
    @ocaml.doc("<p>The collection of medical entities extracted from the input text and their associated
      information. For each entity, the response provides the entity text, the entity category,
      where the entity text begins and ends, and the level of confidence in the detection and
      analysis. Attributes and traits of the entity are also returned.</p>")
    @as("Entities")
    entities: entityList,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "DetectEntitiesV2Command"
  let make = (~text, ()) => new({text: text})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectEntities = {
  type t
  type request = {
    @ocaml.doc("<p> A UTF-8 text string containing the clinical content being examined for entities. Each
      string must contain fewer than 20,000 bytes of characters.</p>")
    @as("Text")
    text: boundedLengthString,
  }
  type response = {
    @ocaml.doc("<p>The version of the model used to analyze the documents. The version number looks like
      X.X.X. You can use this information to track the model used for a particular batch of
      documents.</p>")
    @as("ModelVersion")
    modelVersion: string_,
    @ocaml.doc("<p> If the result of the previous request to <code>DetectEntities</code> was truncated,
      include the <code>PaginationToken</code> to fetch the next page of entities.</p>")
    @as("PaginationToken")
    paginationToken: option<string_>,
    @ocaml.doc("<p> Attributes extracted from the input text that we were unable to relate to an
      entity.</p>")
    @as("UnmappedAttributes")
    unmappedAttributes: option<unmappedAttributeList>,
    @ocaml.doc("<p> The collection of medical entities extracted from the input text and their associated
      information. For each entity, the response provides the entity text, the entity category,
      where the entity text begins and ends, and the level of confidence that Comprehend Medical; has in the
      detection and analysis. Attributes and traits of the entity are also returned.</p>")
    @as("Entities")
    entities: entityList,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "DetectEntitiesCommand"
  let make = (~text, ()) => new({text: text})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
