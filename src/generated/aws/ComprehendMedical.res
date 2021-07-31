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
  | @as("IDENTIFIER") #IDENTIFIER
  | @as("EMAIL") #EMAIL
  | @as("CONTACT_POINT") #CONTACT_POINT
  | @as("AGE") #AGE
  | @as("DATE") #DATE
  | @as("TREATMENT_NAME") #TREATMENT_NAME
  | @as("PROCEDURE_NAME") #PROCEDURE_NAME
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
type trait = {
  @as("Score") score: option<float_>,
  @as("Name") name: option<attributeName>,
}
type rxNormTrait = {
  @as("Score") score: option<float_>,
  @as("Name") name: option<rxNormTraitName>,
}
type rxNormConcept = {
  @as("Score") score: option<float_>,
  @as("Code") code: option<string_>,
  @as("Description") description: option<string_>,
}
type outputDataConfig = {
  @as("S3Key") s3Key: option<s3Key>,
  @as("S3Bucket") s3Bucket: s3Bucket,
}
type inputDataConfig = {
  @as("S3Key") s3Key: option<s3Key>,
  @as("S3Bucket") s3Bucket: s3Bucket,
}
type icd10CMTrait = {
  @as("Score") score: option<float_>,
  @as("Name") name: option<icd10CMTraitName>,
}
type icd10CMConcept = {
  @as("Score") score: option<float_>,
  @as("Code") code: option<string_>,
  @as("Description") description: option<string_>,
}
type comprehendMedicalAsyncJobFilter = {
  @as("SubmitTimeAfter") submitTimeAfter: option<timestamp_>,
  @as("SubmitTimeBefore") submitTimeBefore: option<timestamp_>,
  @as("JobStatus") jobStatus: option<jobStatus>,
  @as("JobName") jobName: option<jobName>,
}
type traitList = array<trait>
type rxNormTraitList = array<rxNormTrait>
type rxNormConceptList = array<rxNormConcept>
type icd10CMTraitList = array<icd10CMTrait>
type icd10CMConceptList = array<icd10CMConcept>
type comprehendMedicalAsyncJobProperties = {
  @as("ModelVersion") modelVersion: option<modelVersion>,
  @as("KMSKey") kmskey: option<kmskey>,
  @as("ManifestFilePath") manifestFilePath: option<manifestFilePath>,
  @as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
  @as("LanguageCode") languageCode: option<languageCode>,
  @as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
  @as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
  @as("ExpirationTime") expirationTime: option<timestamp_>,
  @as("EndTime") endTime: option<timestamp_>,
  @as("SubmitTime") submitTime: option<timestamp_>,
  @as("Message") message: option<anyLengthString>,
  @as("JobStatus") jobStatus: option<jobStatus>,
  @as("JobName") jobName: option<jobName>,
  @as("JobId") jobId: option<jobId>,
}
type rxNormAttribute = {
  @as("Traits") traits: option<rxNormTraitList>,
  @as("Text") text: option<string_>,
  @as("EndOffset") endOffset: option<integer_>,
  @as("BeginOffset") beginOffset: option<integer_>,
  @as("Id") id: option<integer_>,
  @as("RelationshipScore") relationshipScore: option<float_>,
  @as("Score") score: option<float_>,
  @as("Type") type_: option<rxNormAttributeType>,
}
type icd10CMAttribute = {
  @as("RelationshipType") relationshipType: option<icd10CMRelationshipType>,
  @as("Category") category: option<icd10CMEntityType>,
  @as("Traits") traits: option<icd10CMTraitList>,
  @as("Text") text: option<string_>,
  @as("EndOffset") endOffset: option<integer_>,
  @as("BeginOffset") beginOffset: option<integer_>,
  @as("Id") id: option<integer_>,
  @as("RelationshipScore") relationshipScore: option<float_>,
  @as("Score") score: option<float_>,
  @as("Type") type_: option<icd10CMAttributeType>,
}
type comprehendMedicalAsyncJobPropertiesList = array<comprehendMedicalAsyncJobProperties>
type attribute = {
  @as("Traits") traits: option<traitList>,
  @as("Category") category: option<entityType>,
  @as("Text") text: option<string_>,
  @as("EndOffset") endOffset: option<integer_>,
  @as("BeginOffset") beginOffset: option<integer_>,
  @as("Id") id: option<integer_>,
  @as("RelationshipType") relationshipType: option<relationshipType>,
  @as("RelationshipScore") relationshipScore: option<float_>,
  @as("Score") score: option<float_>,
  @as("Type") type_: option<entitySubType>,
}
type unmappedAttribute = {
  @as("Attribute") attribute: option<attribute>,
  @as("Type") type_: option<entityType>,
}
type rxNormAttributeList = array<rxNormAttribute>
type icd10CMAttributeList = array<icd10CMAttribute>
type attributeList = array<attribute>
type unmappedAttributeList = array<unmappedAttribute>
type rxNormEntity = {
  @as("RxNormConcepts") rxNormConcepts: option<rxNormConceptList>,
  @as("Traits") traits: option<rxNormTraitList>,
  @as("Attributes") attributes: option<rxNormAttributeList>,
  @as("EndOffset") endOffset: option<integer_>,
  @as("BeginOffset") beginOffset: option<integer_>,
  @as("Score") score: option<float_>,
  @as("Type") type_: option<rxNormEntityType>,
  @as("Category") category: option<rxNormEntityCategory>,
  @as("Text") text: option<ontologyLinkingBoundedLengthString>,
  @as("Id") id: option<integer_>,
}
type icd10CMEntity = {
  @as("ICD10CMConcepts") icd10CMConcepts: option<icd10CMConceptList>,
  @as("Traits") traits: option<icd10CMTraitList>,
  @as("Attributes") attributes: option<icd10CMAttributeList>,
  @as("EndOffset") endOffset: option<integer_>,
  @as("BeginOffset") beginOffset: option<integer_>,
  @as("Score") score: option<float_>,
  @as("Type") type_: option<icd10CMEntityType>,
  @as("Category") category: option<icd10CMEntityCategory>,
  @as("Text") text: option<ontologyLinkingBoundedLengthString>,
  @as("Id") id: option<integer_>,
}
type entity = {
  @as("Attributes") attributes: option<attributeList>,
  @as("Traits") traits: option<traitList>,
  @as("Type") type_: option<entitySubType>,
  @as("Category") category: option<entityType>,
  @as("Text") text: option<string_>,
  @as("Score") score: option<float_>,
  @as("EndOffset") endOffset: option<integer_>,
  @as("BeginOffset") beginOffset: option<integer_>,
  @as("Id") id: option<integer_>,
}
type rxNormEntityList = array<rxNormEntity>
type icd10CMEntityList = array<icd10CMEntity>
type entityList = array<entity>

module StopRxNormInferenceJob = {
  type t
  type request = {@as("JobId") jobId: jobId}
  type response = {@as("JobId") jobId: option<jobId>}
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StopRxNormInferenceJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopPHIDetectionJob = {
  type t
  type request = {@as("JobId") jobId: jobId}
  type response = {@as("JobId") jobId: option<jobId>}
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StopPHIDetectionJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopICD10CMInferenceJob = {
  type t
  type request = {@as("JobId") jobId: jobId}
  type response = {@as("JobId") jobId: option<jobId>}
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StopICD10CMInferenceJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopEntitiesDetectionV2Job = {
  type t
  type request = {@as("JobId") jobId: jobId}
  type response = {@as("JobId") jobId: option<jobId>}
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StopEntitiesDetectionV2JobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartRxNormInferenceJob = {
  type t
  type request = {
    @as("LanguageCode") languageCode: languageCode,
    @as("KMSKey") kmskey: option<kmskey>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>,
    @as("JobName") jobName: option<jobName>,
    @as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
    @as("OutputDataConfig") outputDataConfig: outputDataConfig,
    @as("InputDataConfig") inputDataConfig: inputDataConfig,
  }
  type response = {@as("JobId") jobId: option<jobId>}
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StartRxNormInferenceJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartPHIDetectionJob = {
  type t
  type request = {
    @as("LanguageCode") languageCode: languageCode,
    @as("KMSKey") kmskey: option<kmskey>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>,
    @as("JobName") jobName: option<jobName>,
    @as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
    @as("OutputDataConfig") outputDataConfig: outputDataConfig,
    @as("InputDataConfig") inputDataConfig: inputDataConfig,
  }
  type response = {@as("JobId") jobId: option<jobId>}
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StartPHIDetectionJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartICD10CMInferenceJob = {
  type t
  type request = {
    @as("LanguageCode") languageCode: languageCode,
    @as("KMSKey") kmskey: option<kmskey>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>,
    @as("JobName") jobName: option<jobName>,
    @as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
    @as("OutputDataConfig") outputDataConfig: outputDataConfig,
    @as("InputDataConfig") inputDataConfig: inputDataConfig,
  }
  type response = {@as("JobId") jobId: option<jobId>}
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StartICD10CMInferenceJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartEntitiesDetectionV2Job = {
  type t
  type request = {
    @as("LanguageCode") languageCode: languageCode,
    @as("KMSKey") kmskey: option<kmskey>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>,
    @as("JobName") jobName: option<jobName>,
    @as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
    @as("OutputDataConfig") outputDataConfig: outputDataConfig,
    @as("InputDataConfig") inputDataConfig: inputDataConfig,
  }
  type response = {@as("JobId") jobId: option<jobId>}
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "StartEntitiesDetectionV2JobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRxNormInferenceJob = {
  type t
  type request = {@as("JobId") jobId: jobId}
  type response = {
    @as("ComprehendMedicalAsyncJobProperties")
    comprehendMedicalAsyncJobProperties: option<comprehendMedicalAsyncJobProperties>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "DescribeRxNormInferenceJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePHIDetectionJob = {
  type t
  type request = {@as("JobId") jobId: jobId}
  type response = {
    @as("ComprehendMedicalAsyncJobProperties")
    comprehendMedicalAsyncJobProperties: option<comprehendMedicalAsyncJobProperties>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "DescribePHIDetectionJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeICD10CMInferenceJob = {
  type t
  type request = {@as("JobId") jobId: jobId}
  type response = {
    @as("ComprehendMedicalAsyncJobProperties")
    comprehendMedicalAsyncJobProperties: option<comprehendMedicalAsyncJobProperties>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "DescribeICD10CMInferenceJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEntitiesDetectionV2Job = {
  type t
  type request = {@as("JobId") jobId: jobId}
  type response = {
    @as("ComprehendMedicalAsyncJobProperties")
    comprehendMedicalAsyncJobProperties: option<comprehendMedicalAsyncJobProperties>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "DescribeEntitiesDetectionV2JobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRxNormInferenceJobs = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResultsInteger>,
    @as("NextToken") nextToken: option<string_>,
    @as("Filter") filter: option<comprehendMedicalAsyncJobFilter>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("ComprehendMedicalAsyncJobPropertiesList")
    comprehendMedicalAsyncJobPropertiesList: option<comprehendMedicalAsyncJobPropertiesList>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "ListRxNormInferenceJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPHIDetectionJobs = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResultsInteger>,
    @as("NextToken") nextToken: option<string_>,
    @as("Filter") filter: option<comprehendMedicalAsyncJobFilter>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("ComprehendMedicalAsyncJobPropertiesList")
    comprehendMedicalAsyncJobPropertiesList: option<comprehendMedicalAsyncJobPropertiesList>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "ListPHIDetectionJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListICD10CMInferenceJobs = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResultsInteger>,
    @as("NextToken") nextToken: option<string_>,
    @as("Filter") filter: option<comprehendMedicalAsyncJobFilter>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("ComprehendMedicalAsyncJobPropertiesList")
    comprehendMedicalAsyncJobPropertiesList: option<comprehendMedicalAsyncJobPropertiesList>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "ListICD10CMInferenceJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEntitiesDetectionV2Jobs = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResultsInteger>,
    @as("NextToken") nextToken: option<string_>,
    @as("Filter") filter: option<comprehendMedicalAsyncJobFilter>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("ComprehendMedicalAsyncJobPropertiesList")
    comprehendMedicalAsyncJobPropertiesList: option<comprehendMedicalAsyncJobPropertiesList>,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "ListEntitiesDetectionV2JobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InferRxNorm = {
  type t
  type request = {@as("Text") text: ontologyLinkingBoundedLengthString}
  type response = {
    @as("ModelVersion") modelVersion: option<string_>,
    @as("PaginationToken") paginationToken: option<string_>,
    @as("Entities") entities: rxNormEntityList,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "InferRxNormCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InferICD10CM = {
  type t
  type request = {@as("Text") text: ontologyLinkingBoundedLengthString}
  type response = {
    @as("ModelVersion") modelVersion: option<string_>,
    @as("PaginationToken") paginationToken: option<string_>,
    @as("Entities") entities: icd10CMEntityList,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "InferICD10CMCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectPHI = {
  type t
  type request = {@as("Text") text: boundedLengthString}
  type response = {
    @as("ModelVersion") modelVersion: string_,
    @as("PaginationToken") paginationToken: option<string_>,
    @as("Entities") entities: entityList,
  }
  @module("@aws-sdk/client-comprehendmedical") @new external new: request => t = "DetectPHICommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectEntitiesV2 = {
  type t
  type request = {@as("Text") text: boundedLengthString}
  type response = {
    @as("ModelVersion") modelVersion: string_,
    @as("PaginationToken") paginationToken: option<string_>,
    @as("UnmappedAttributes") unmappedAttributes: option<unmappedAttributeList>,
    @as("Entities") entities: entityList,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "DetectEntitiesV2Command"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectEntities = {
  type t
  type request = {@as("Text") text: boundedLengthString}
  type response = {
    @as("ModelVersion") modelVersion: string_,
    @as("PaginationToken") paginationToken: option<string_>,
    @as("UnmappedAttributes") unmappedAttributes: option<unmappedAttributeList>,
    @as("Entities") entities: entityList,
  }
  @module("@aws-sdk/client-comprehendmedical") @new
  external new: request => t = "DetectEntitiesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
