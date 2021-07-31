type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsTimestamp = Js.Date.t;
type amazonawsString = string
type s3Key = string
type s3Bucket = string
type rxNormTraitName = [@as("NEGATION") #NEGATION]
type rxNormEntityType = [@as("GENERIC_NAME") #GENERIC_NAME | @as("BRAND_NAME") #BRAND_NAME]
type rxNormEntityCategory = [@as("MEDICATION") #MEDICATION]
type rxNormAttributeType = [@as("STRENGTH") #STRENGTH | @as("ROUTE_OR_MODE") #ROUTE_OR_MODE | @as("RATE") #RATE | @as("FREQUENCY") #FREQUENCY | @as("FORM") #FORM | @as("DURATION") #DURATION | @as("DOSAGE") #DOSAGE]
type relationshipType = [@as("SYSTEM_ORGAN_SITE") #SYSTEM_ORGAN_SITE | @as("DIRECTION") #DIRECTION | @as("TEST_UNITS") #TEST_UNITS | @as("TEST_VALUE") #TEST_VALUE | @as("ACUITY") #ACUITY | @as("RATE") #RATE | @as("STRENGTH") #STRENGTH | @as("DURATION") #DURATION | @as("FREQUENCY") #FREQUENCY | @as("FORM") #FORM | @as("ROUTE_OR_MODE") #ROUTE_OR_MODE | @as("DOSAGE") #DOSAGE | @as("OVERLAP") #OVERLAP | @as("NEGATIVE") #NEGATIVE | @as("FOR") #FOR | @as("ADMINISTERED_VIA") #ADMINISTERED_VIA | @as("WITH_DOSAGE") #WITH_DOSAGE | @as("EVERY") #EVERY]
type ontologyLinkingBoundedLengthString = string
type modelVersion = string
type maxResultsInteger = int;
type manifestFilePath = string
type languageCode = [@as("en") #en]
type kMSKey = string
type jobStatus = [@as("STOPPED") #STOPPED | @as("STOP_REQUESTED") #STOP_REQUESTED | @as("FAILED") #FAILED | @as("PARTIAL_SUCCESS") #PARTIAL_SUCCESS | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS | @as("SUBMITTED") #SUBMITTED]
type jobName = string
type jobId = string
type amazonawsInteger = int;
type iamRoleArn = string
type iCD10CMTraitName = [@as("SYMPTOM") #SYMPTOM | @as("SIGN") #SIGN | @as("DIAGNOSIS") #DIAGNOSIS | @as("NEGATION") #NEGATION]
type iCD10CMRelationshipType = [@as("SYSTEM_ORGAN_SITE") #SYSTEM_ORGAN_SITE | @as("OVERLAP") #OVERLAP]
type iCD10CMEntityType = [@as("TIME_EXPRESSION") #TIME_EXPRESSION | @as("DX_NAME") #DX_NAME]
type iCD10CMEntityCategory = [@as("MEDICAL_CONDITION") #MEDICAL_CONDITION]
type iCD10CMAttributeType = [@as("TIME_EXPRESSION") #TIME_EXPRESSION | @as("TIME_TO_DX_NAME") #TIME_TO_DX_NAME | @as("QUANTITY") #QUANTITY | @as("QUALITY") #QUALITY | @as("SYSTEM_ORGAN_SITE") #SYSTEM_ORGAN_SITE | @as("DIRECTION") #DIRECTION | @as("ACUITY") #ACUITY]
type amazonawsFloat = float;
type entityType = [@as("TIME_EXPRESSION") #TIME_EXPRESSION | @as("ANATOMY") #ANATOMY | @as("TEST_TREATMENT_PROCEDURE") #TEST_TREATMENT_PROCEDURE | @as("PROTECTED_HEALTH_INFORMATION") #PROTECTED_HEALTH_INFORMATION | @as("MEDICAL_CONDITION") #MEDICAL_CONDITION | @as("MEDICATION") #MEDICATION]
type entitySubType = [@as("TIME_TO_TREATMENT_NAME") #TIME_TO_TREATMENT_NAME | @as("TIME_TO_PROCEDURE_NAME") #TIME_TO_PROCEDURE_NAME | @as("TIME_TO_TEST_NAME") #TIME_TO_TEST_NAME | @as("TIME_TO_DX_NAME") #TIME_TO_DX_NAME | @as("TIME_TO_MEDICATION_NAME") #TIME_TO_MEDICATION_NAME | @as("TIME_EXPRESSION") #TIME_EXPRESSION | @as("QUANTITY") #QUANTITY | @as("QUALITY") #QUALITY | @as("DIRECTION") #DIRECTION | @as("SYSTEM_ORGAN_SITE") #SYSTEM_ORGAN_SITE | @as("PROFESSION") #PROFESSION | @as("ADDRESS") #ADDRESS | @as("URL") #URL | @as("IDENTIFIER") #IDENTIFIER | @as("EMAIL") #EMAIL | @as("CONTACT_POINT") #CONTACT_POINT | @as("AGE") #AGE | @as("DATE") #DATE | @as("TREATMENT_NAME") #TREATMENT_NAME | @as("PROCEDURE_NAME") #PROCEDURE_NAME | @as("TEST_UNITS") #TEST_UNITS | @as("TEST_VALUE") #TEST_VALUE | @as("TEST_NAME") #TEST_NAME | @as("ACUITY") #ACUITY | @as("RATE") #RATE | @as("STRENGTH") #STRENGTH | @as("BRAND_NAME") #BRAND_NAME | @as("GENERIC_NAME") #GENERIC_NAME | @as("DURATION") #DURATION | @as("FREQUENCY") #FREQUENCY | @as("FORM") #FORM | @as("ROUTE_OR_MODE") #ROUTE_OR_MODE | @as("DOSAGE") #DOSAGE | @as("NAME") #NAME]
type clientRequestTokenString = string
type boundedLengthString = string
type attributeName = [@as("NEGATION") #NEGATION | @as("DIAGNOSIS") #DIAGNOSIS | @as("SYMPTOM") #SYMPTOM | @as("SIGN") #SIGN]
type anyLengthString = string
type trait = {
@as("Score") score: amazonawsFloat,
@as("Name") name: attributeName
}
type rxNormTrait = {
@as("Score") score: amazonawsFloat,
@as("Name") name: rxNormTraitName
}
type rxNormConcept = {
@as("Score") score: amazonawsFloat,
@as("Code") code: amazonawsString,
@as("Description") description: amazonawsString
}
type outputDataConfig = {
@as("S3Key") s3Key: s3Key,
@as("S3Bucket") s3Bucket: option<s3Bucket>
}
type inputDataConfig = {
@as("S3Key") s3Key: s3Key,
@as("S3Bucket") s3Bucket: option<s3Bucket>
}
type iCD10CMTrait = {
@as("Score") score: amazonawsFloat,
@as("Name") name: iCD10CMTraitName
}
type iCD10CMConcept = {
@as("Score") score: amazonawsFloat,
@as("Code") code: amazonawsString,
@as("Description") description: amazonawsString
}
type comprehendMedicalAsyncJobFilter = {
@as("SubmitTimeAfter") submitTimeAfter: amazonawsTimestamp,
@as("SubmitTimeBefore") submitTimeBefore: amazonawsTimestamp,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName
}
type traitList = array<trait>
type rxNormTraitList = array<rxNormTrait>
type rxNormConceptList = array<rxNormConcept>
type iCD10CMTraitList = array<iCD10CMTrait>
type iCD10CMConceptList = array<iCD10CMConcept>
type comprehendMedicalAsyncJobProperties = {
@as("ModelVersion") modelVersion: modelVersion,
@as("KMSKey") kMSKey: kMSKey,
@as("ManifestFilePath") manifestFilePath: manifestFilePath,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("LanguageCode") languageCode: languageCode,
@as("OutputDataConfig") outputDataConfig: outputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig,
@as("ExpirationTime") expirationTime: amazonawsTimestamp,
@as("EndTime") endTime: amazonawsTimestamp,
@as("SubmitTime") submitTime: amazonawsTimestamp,
@as("Message") message: anyLengthString,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName,
@as("JobId") jobId: jobId
}
type rxNormAttribute = {
@as("Traits") traits: rxNormTraitList,
@as("Text") text: amazonawsString,
@as("EndOffset") endOffset: amazonawsInteger,
@as("BeginOffset") beginOffset: amazonawsInteger,
@as("Id") id: amazonawsInteger,
@as("RelationshipScore") relationshipScore: amazonawsFloat,
@as("Score") score: amazonawsFloat,
@as("Type") type_: rxNormAttributeType
}
type iCD10CMAttribute = {
@as("RelationshipType") relationshipType: iCD10CMRelationshipType,
@as("Category") category: iCD10CMEntityType,
@as("Traits") traits: iCD10CMTraitList,
@as("Text") text: amazonawsString,
@as("EndOffset") endOffset: amazonawsInteger,
@as("BeginOffset") beginOffset: amazonawsInteger,
@as("Id") id: amazonawsInteger,
@as("RelationshipScore") relationshipScore: amazonawsFloat,
@as("Score") score: amazonawsFloat,
@as("Type") type_: iCD10CMAttributeType
}
type comprehendMedicalAsyncJobPropertiesList = array<comprehendMedicalAsyncJobProperties>
type attribute = {
@as("Traits") traits: traitList,
@as("Category") category: entityType,
@as("Text") text: amazonawsString,
@as("EndOffset") endOffset: amazonawsInteger,
@as("BeginOffset") beginOffset: amazonawsInteger,
@as("Id") id: amazonawsInteger,
@as("RelationshipType") relationshipType: relationshipType,
@as("RelationshipScore") relationshipScore: amazonawsFloat,
@as("Score") score: amazonawsFloat,
@as("Type") type_: entitySubType
}
type unmappedAttribute = {
@as("Attribute") attribute: attribute,
@as("Type") type_: entityType
}
type rxNormAttributeList = array<rxNormAttribute>
type iCD10CMAttributeList = array<iCD10CMAttribute>
type attributeList = array<attribute>
type unmappedAttributeList = array<unmappedAttribute>
type rxNormEntity = {
@as("RxNormConcepts") rxNormConcepts: rxNormConceptList,
@as("Traits") traits: rxNormTraitList,
@as("Attributes") attributes: rxNormAttributeList,
@as("EndOffset") endOffset: amazonawsInteger,
@as("BeginOffset") beginOffset: amazonawsInteger,
@as("Score") score: amazonawsFloat,
@as("Type") type_: rxNormEntityType,
@as("Category") category: rxNormEntityCategory,
@as("Text") text: ontologyLinkingBoundedLengthString,
@as("Id") id: amazonawsInteger
}
type iCD10CMEntity = {
@as("ICD10CMConcepts") iCD10CMConcepts: iCD10CMConceptList,
@as("Traits") traits: iCD10CMTraitList,
@as("Attributes") attributes: iCD10CMAttributeList,
@as("EndOffset") endOffset: amazonawsInteger,
@as("BeginOffset") beginOffset: amazonawsInteger,
@as("Score") score: amazonawsFloat,
@as("Type") type_: iCD10CMEntityType,
@as("Category") category: iCD10CMEntityCategory,
@as("Text") text: ontologyLinkingBoundedLengthString,
@as("Id") id: amazonawsInteger
}
type entity = {
@as("Attributes") attributes: attributeList,
@as("Traits") traits: traitList,
@as("Type") type_: entitySubType,
@as("Category") category: entityType,
@as("Text") text: amazonawsString,
@as("Score") score: amazonawsFloat,
@as("EndOffset") endOffset: amazonawsInteger,
@as("BeginOffset") beginOffset: amazonawsInteger,
@as("Id") id: amazonawsInteger
}
type rxNormEntityList = array<rxNormEntity>
type iCD10CMEntityList = array<iCD10CMEntity>
type entityList = array<entity>
type clientType;
@module("@aws-sdk/client-comprehendmedical") @new external createClient: unit => clientType = "ComprehendMedicalClient";
module StopRxNormInferenceJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "StopRxNormInferenceJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopPHIDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "StopPHIDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopICD10CMInferenceJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "StopICD10CMInferenceJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopEntitiesDetectionV2Job = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "StopEntitiesDetectionV2JobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartRxNormInferenceJob = {
  type t;
  type request = {
@as("LanguageCode") languageCode: option<languageCode>,
@as("KMSKey") kMSKey: kMSKey,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
@as("JobName") jobName: jobName,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "StartRxNormInferenceJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartPHIDetectionJob = {
  type t;
  type request = {
@as("LanguageCode") languageCode: option<languageCode>,
@as("KMSKey") kMSKey: kMSKey,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
@as("JobName") jobName: jobName,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "StartPHIDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartICD10CMInferenceJob = {
  type t;
  type request = {
@as("LanguageCode") languageCode: option<languageCode>,
@as("KMSKey") kMSKey: kMSKey,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
@as("JobName") jobName: jobName,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "StartICD10CMInferenceJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartEntitiesDetectionV2Job = {
  type t;
  type request = {
@as("LanguageCode") languageCode: option<languageCode>,
@as("KMSKey") kMSKey: kMSKey,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
@as("JobName") jobName: jobName,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "StartEntitiesDetectionV2JobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRxNormInferenceJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("ComprehendMedicalAsyncJobProperties") comprehendMedicalAsyncJobProperties: comprehendMedicalAsyncJobProperties
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "DescribeRxNormInferenceJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePHIDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("ComprehendMedicalAsyncJobProperties") comprehendMedicalAsyncJobProperties: comprehendMedicalAsyncJobProperties
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "DescribePHIDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeICD10CMInferenceJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("ComprehendMedicalAsyncJobProperties") comprehendMedicalAsyncJobProperties: comprehendMedicalAsyncJobProperties
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "DescribeICD10CMInferenceJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEntitiesDetectionV2Job = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("ComprehendMedicalAsyncJobProperties") comprehendMedicalAsyncJobProperties: comprehendMedicalAsyncJobProperties
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "DescribeEntitiesDetectionV2JobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRxNormInferenceJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("Filter") filter: comprehendMedicalAsyncJobFilter
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ComprehendMedicalAsyncJobPropertiesList") comprehendMedicalAsyncJobPropertiesList: comprehendMedicalAsyncJobPropertiesList
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "ListRxNormInferenceJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPHIDetectionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("Filter") filter: comprehendMedicalAsyncJobFilter
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ComprehendMedicalAsyncJobPropertiesList") comprehendMedicalAsyncJobPropertiesList: comprehendMedicalAsyncJobPropertiesList
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "ListPHIDetectionJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListICD10CMInferenceJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("Filter") filter: comprehendMedicalAsyncJobFilter
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ComprehendMedicalAsyncJobPropertiesList") comprehendMedicalAsyncJobPropertiesList: comprehendMedicalAsyncJobPropertiesList
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "ListICD10CMInferenceJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEntitiesDetectionV2Jobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("Filter") filter: comprehendMedicalAsyncJobFilter
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ComprehendMedicalAsyncJobPropertiesList") comprehendMedicalAsyncJobPropertiesList: comprehendMedicalAsyncJobPropertiesList
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "ListEntitiesDetectionV2JobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InferRxNorm = {
  type t;
  type request = {
@as("Text") text: option<ontologyLinkingBoundedLengthString>
}
  type response = {
@as("ModelVersion") modelVersion: amazonawsString,
@as("PaginationToken") paginationToken: amazonawsString,
@as("Entities") entities: option<rxNormEntityList>
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "InferRxNormCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InferICD10CM = {
  type t;
  type request = {
@as("Text") text: option<ontologyLinkingBoundedLengthString>
}
  type response = {
@as("ModelVersion") modelVersion: amazonawsString,
@as("PaginationToken") paginationToken: amazonawsString,
@as("Entities") entities: option<iCD10CMEntityList>
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "InferICD10CMCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectPHI = {
  type t;
  type request = {
@as("Text") text: option<boundedLengthString>
}
  type response = {
@as("ModelVersion") modelVersion: option<amazonawsString>,
@as("PaginationToken") paginationToken: amazonawsString,
@as("Entities") entities: option<entityList>
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "DetectPHICommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectEntitiesV2 = {
  type t;
  type request = {
@as("Text") text: option<boundedLengthString>
}
  type response = {
@as("ModelVersion") modelVersion: option<amazonawsString>,
@as("PaginationToken") paginationToken: amazonawsString,
@as("UnmappedAttributes") unmappedAttributes: unmappedAttributeList,
@as("Entities") entities: option<entityList>
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "DetectEntitiesV2Command";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectEntities = {
  type t;
  type request = {
@as("Text") text: option<boundedLengthString>
}
  type response = {
@as("ModelVersion") modelVersion: option<amazonawsString>,
@as("PaginationToken") paginationToken: amazonawsString,
@as("UnmappedAttributes") unmappedAttributes: unmappedAttributeList,
@as("Entities") entities: option<entityList>
}
  @module("@aws-sdk/client-comprehendmedical") @new external new_: (Js.Promise.t<request>) => t = "DetectEntitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
