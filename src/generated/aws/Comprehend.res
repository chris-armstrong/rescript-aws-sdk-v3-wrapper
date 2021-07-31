type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type syntaxLanguageCode = [@as("pt") #pt | @as("it") #it | @as("de") #de | @as("fr") #fr | @as("es") #es | @as("en") #en]
type subnetId = string
type amazonawsString = string
type sentimentType = [@as("MIXED") #MIXED | @as("NEUTRAL") #NEUTRAL | @as("NEGATIVE") #NEGATIVE | @as("POSITIVE") #POSITIVE]
type securityGroupId = string
type s3Uri = string
type piiEntityType = [@as("ALL") #ALL | @as("MAC_ADDRESS") #MAC_ADDRESS | @as("IP_ADDRESS") #IP_ADDRESS | @as("AWS_SECRET_KEY") #AWS_SECRET_KEY | @as("AWS_ACCESS_KEY") #AWS_ACCESS_KEY | @as("PASSWORD") #PASSWORD | @as("USERNAME") #USERNAME | @as("AGE") #AGE | @as("URL") #URL | @as("DRIVER_ID") #DRIVER_ID | @as("PASSPORT_NUMBER") #PASSPORT_NUMBER | @as("DATE_TIME") #DATE_TIME | @as("SSN") #SSN | @as("PHONE") #PHONE | @as("NAME") #NAME | @as("ADDRESS") #ADDRESS | @as("EMAIL") #EMAIL | @as("PIN") #PIN | @as("CREDIT_DEBIT_EXPIRY") #CREDIT_DEBIT_EXPIRY | @as("CREDIT_DEBIT_CVV") #CREDIT_DEBIT_CVV | @as("CREDIT_DEBIT_NUMBER") #CREDIT_DEBIT_NUMBER | @as("BANK_ROUTING") #BANK_ROUTING | @as("BANK_ACCOUNT_NUMBER") #BANK_ACCOUNT_NUMBER]
type piiEntitiesDetectionMode = [@as("ONLY_OFFSETS") #ONLY_OFFSETS | @as("ONLY_REDACTION") #ONLY_REDACTION]
type piiEntitiesDetectionMaskMode = [@as("REPLACE_WITH_PII_ENTITY_TYPE") #REPLACE_WITH_PII_ENTITY_TYPE | @as("MASK") #MASK]
type partOfSpeechTagType = [@as("VERB") #VERB | @as("SYM") #SYM | @as("SCONJ") #SCONJ | @as("PUNCT") #PUNCT | @as("PROPN") #PROPN | @as("PRON") #PRON | @as("PART") #PART | @as("O") #O | @as("NUM") #NUM | @as("NOUN") #NOUN | @as("INTJ") #INTJ | @as("DET") #DET | @as("CCONJ") #CCONJ | @as("CONJ") #CONJ | @as("AUX") #AUX | @as("ADV") #ADV | @as("ADP") #ADP | @as("ADJ") #ADJ]
type numberOfTopicsInteger = int;
type modelStatus = [@as("TRAINED") #TRAINED | @as("IN_ERROR") #IN_ERROR | @as("STOPPED") #STOPPED | @as("STOP_REQUESTED") #STOP_REQUESTED | @as("DELETING") #DELETING | @as("TRAINING") #TRAINING | @as("SUBMITTED") #SUBMITTED]
type maxResultsInteger = int;
type maskCharacter = string
type languageCode = [@as("zh-TW") #zh_TW | @as("zh") #zh | @as("ko") #ko | @as("ja") #ja | @as("hi") #hi | @as("ar") #ar | @as("pt") #pt | @as("it") #it | @as("de") #de | @as("fr") #fr | @as("es") #es | @as("en") #en]
type labelDelimiter = string
type kmsKeyId = string
type jobStatus = [@as("STOPPED") #STOPPED | @as("STOP_REQUESTED") #STOP_REQUESTED | @as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS | @as("SUBMITTED") #SUBMITTED]
type jobName = string
type jobId = string
type amazonawsInteger = int;
type inputFormat = [@as("ONE_DOC_PER_LINE") #ONE_DOC_PER_LINE | @as("ONE_DOC_PER_FILE") #ONE_DOC_PER_FILE]
type inferenceUnitsInteger = int;
type iamRoleArn = string
type amazonawsFloat = float;
type eventTypeString = string
type entityTypeName = string
type entityType = [@as("OTHER") #OTHER | @as("TITLE") #TITLE | @as("QUANTITY") #QUANTITY | @as("DATE") #DATE | @as("EVENT") #EVENT | @as("COMMERCIAL_ITEM") #COMMERCIAL_ITEM | @as("ORGANIZATION") #ORGANIZATION | @as("LOCATION") #LOCATION | @as("PERSON") #PERSON]
type entityRecognizerEndpointArn = string
type entityRecognizerDataFormat = [@as("AUGMENTED_MANIFEST") #AUGMENTED_MANIFEST | @as("COMPREHEND_CSV") #COMPREHEND_CSV]
type entityRecognizerArn = string
type endpointStatus = [@as("UPDATING") #UPDATING | @as("IN_SERVICE") #IN_SERVICE | @as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("CREATING") #CREATING]
type amazonawsDouble = float;
type documentClassifierMode = [@as("MULTI_LABEL") #MULTI_LABEL | @as("MULTI_CLASS") #MULTI_CLASS]
type documentClassifierEndpointArn = string
type documentClassifierDataFormat = [@as("AUGMENTED_MANIFEST") #AUGMENTED_MANIFEST | @as("COMPREHEND_CSV") #COMPREHEND_CSV]
type documentClassifierArn = string
type customerInputString = string
type comprehendModelArn = string
type comprehendEndpointName = string
type comprehendEndpointArn = string
type comprehendArnName = string
type comprehendArn = string
type clientRequestTokenString = string
type attributeNamesListItem = string
type anyLengthString = string
type topicsDetectionJobFilter = {
@as("SubmitTimeAfter") submitTimeAfter: amazonawsTimestamp,
@as("SubmitTimeBefore") submitTimeBefore: amazonawsTimestamp,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName
}
type targetEventTypes = array<eventTypeString>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: option<tagKey>
}
type subnets = array<subnetId>
type sentimentScore = {
@as("Mixed") mixed: amazonawsFloat,
@as("Neutral") neutral: amazonawsFloat,
@as("Negative") negative: amazonawsFloat,
@as("Positive") positive: amazonawsFloat
}
type sentimentDetectionJobFilter = {
@as("SubmitTimeAfter") submitTimeAfter: amazonawsTimestamp,
@as("SubmitTimeBefore") submitTimeBefore: amazonawsTimestamp,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName
}
type securityGroupIds = array<securityGroupId>
type piiOutputDataConfig = {
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("S3Uri") s3Uri: option<s3Uri>
}
type piiEntity = {
@as("EndOffset") endOffset: amazonawsInteger,
@as("BeginOffset") beginOffset: amazonawsInteger,
@as("Type") type_: piiEntityType,
@as("Score") score: amazonawsFloat
}
type piiEntitiesDetectionJobFilter = {
@as("SubmitTimeAfter") submitTimeAfter: amazonawsTimestamp,
@as("SubmitTimeBefore") submitTimeBefore: amazonawsTimestamp,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName
}
type partOfSpeechTag = {
@as("Score") score: amazonawsFloat,
@as("Tag") tag: partOfSpeechTagType
}
type outputDataConfig = {
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("S3Uri") s3Uri: option<s3Uri>
}
type listOfPiiEntityTypes = array<piiEntityType>
type keyPhrasesDetectionJobFilter = {
@as("SubmitTimeAfter") submitTimeAfter: amazonawsTimestamp,
@as("SubmitTimeBefore") submitTimeBefore: amazonawsTimestamp,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName
}
type keyPhrase = {
@as("EndOffset") endOffset: amazonawsInteger,
@as("BeginOffset") beginOffset: amazonawsInteger,
@as("Text") text: amazonawsString,
@as("Score") score: amazonawsFloat
}
type inputDataConfig = {
@as("InputFormat") inputFormat: inputFormat,
@as("S3Uri") s3Uri: option<s3Uri>
}
type eventsDetectionJobFilter = {
@as("SubmitTimeAfter") submitTimeAfter: amazonawsTimestamp,
@as("SubmitTimeBefore") submitTimeBefore: amazonawsTimestamp,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName
}
type entityTypesListItem = {
@as("Type") type_: option<entityTypeName>
}
type entityTypesEvaluationMetrics = {
@as("F1Score") f1Score: amazonawsDouble,
@as("Recall") recall: amazonawsDouble,
@as("Precision") precision: amazonawsDouble
}
type entityRecognizerFilter = {
@as("SubmitTimeAfter") submitTimeAfter: amazonawsTimestamp,
@as("SubmitTimeBefore") submitTimeBefore: amazonawsTimestamp,
@as("Status") status: modelStatus
}
type entityRecognizerEvaluationMetrics = {
@as("F1Score") f1Score: amazonawsDouble,
@as("Recall") recall: amazonawsDouble,
@as("Precision") precision: amazonawsDouble
}
type entityRecognizerEntityList = {
@as("S3Uri") s3Uri: option<s3Uri>
}
type entityRecognizerDocuments = {
@as("S3Uri") s3Uri: option<s3Uri>
}
type entityRecognizerAnnotations = {
@as("S3Uri") s3Uri: option<s3Uri>
}
type entityLabel = {
@as("Score") score: amazonawsFloat,
@as("Name") name: piiEntityType
}
type entity = {
@as("EndOffset") endOffset: amazonawsInteger,
@as("BeginOffset") beginOffset: amazonawsInteger,
@as("Text") text: amazonawsString,
@as("Type") type_: entityType,
@as("Score") score: amazonawsFloat
}
type entitiesDetectionJobFilter = {
@as("SubmitTimeAfter") submitTimeAfter: amazonawsTimestamp,
@as("SubmitTimeBefore") submitTimeBefore: amazonawsTimestamp,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName
}
type endpointProperties = {
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("LastModifiedTime") lastModifiedTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("CurrentInferenceUnits") currentInferenceUnits: inferenceUnitsInteger,
@as("DesiredInferenceUnits") desiredInferenceUnits: inferenceUnitsInteger,
@as("ModelArn") modelArn: comprehendModelArn,
@as("Message") message: anyLengthString,
@as("Status") status: endpointStatus,
@as("EndpointArn") endpointArn: comprehendEndpointArn
}
type endpointFilter = {
@as("CreationTimeAfter") creationTimeAfter: amazonawsTimestamp,
@as("CreationTimeBefore") creationTimeBefore: amazonawsTimestamp,
@as("Status") status: endpointStatus,
@as("ModelArn") modelArn: comprehendModelArn
}
type dominantLanguageDetectionJobFilter = {
@as("SubmitTimeAfter") submitTimeAfter: amazonawsTimestamp,
@as("SubmitTimeBefore") submitTimeBefore: amazonawsTimestamp,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName
}
type dominantLanguage = {
@as("Score") score: amazonawsFloat,
@as("LanguageCode") languageCode: amazonawsString
}
type documentLabel = {
@as("Score") score: amazonawsFloat,
@as("Name") name: amazonawsString
}
type documentClassifierOutputDataConfig = {
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("S3Uri") s3Uri: s3Uri
}
type documentClassifierFilter = {
@as("SubmitTimeAfter") submitTimeAfter: amazonawsTimestamp,
@as("SubmitTimeBefore") submitTimeBefore: amazonawsTimestamp,
@as("Status") status: modelStatus
}
type documentClassificationJobFilter = {
@as("SubmitTimeAfter") submitTimeAfter: amazonawsTimestamp,
@as("SubmitTimeBefore") submitTimeBefore: amazonawsTimestamp,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName
}
type documentClass = {
@as("Score") score: amazonawsFloat,
@as("Name") name: amazonawsString
}
type customerInputStringList = array<customerInputString>
type classifierEvaluationMetrics = {
@as("HammingLoss") hammingLoss: amazonawsDouble,
@as("MicroF1Score") microF1Score: amazonawsDouble,
@as("MicroRecall") microRecall: amazonawsDouble,
@as("MicroPrecision") microPrecision: amazonawsDouble,
@as("F1Score") f1Score: amazonawsDouble,
@as("Recall") recall: amazonawsDouble,
@as("Precision") precision: amazonawsDouble,
@as("Accuracy") accuracy: amazonawsDouble
}
type batchItemError = {
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorCode") errorCode: amazonawsString,
@as("Index") index: amazonawsInteger
}
type attributeNamesList = array<attributeNamesListItem>
type vpcConfig = {
@as("Subnets") subnets: option<subnets>,
@as("SecurityGroupIds") securityGroupIds: option<securityGroupIds>
}
type tagList = array<tag>
type syntaxToken = {
@as("PartOfSpeech") partOfSpeech: partOfSpeechTag,
@as("EndOffset") endOffset: amazonawsInteger,
@as("BeginOffset") beginOffset: amazonawsInteger,
@as("Text") text: amazonawsString,
@as("TokenId") tokenId: amazonawsInteger
}
type redactionConfig = {
@as("MaskCharacter") maskCharacter: maskCharacter,
@as("MaskMode") maskMode: piiEntitiesDetectionMaskMode,
@as("PiiEntityTypes") piiEntityTypes: listOfPiiEntityTypes
}
type listOfPiiEntities = array<piiEntity>
type listOfLabels = array<documentLabel>
type listOfKeyPhrases = array<keyPhrase>
type listOfEntityLabels = array<entityLabel>
type listOfEntities = array<entity>
type listOfDominantLanguages = array<dominantLanguage>
type listOfClasses = array<documentClass>
type eventsDetectionJobProperties = {
@as("TargetEventTypes") targetEventTypes: targetEventTypes,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("LanguageCode") languageCode: languageCode,
@as("OutputDataConfig") outputDataConfig: outputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig,
@as("EndTime") endTime: amazonawsTimestamp,
@as("SubmitTime") submitTime: amazonawsTimestamp,
@as("Message") message: anyLengthString,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName,
@as("JobId") jobId: jobId
}
type entityTypesList = array<entityTypesListItem>
type entityRecognizerMetadataEntityTypesListItem = {
@as("NumberOfTrainMentions") numberOfTrainMentions: amazonawsInteger,
@as("EvaluationMetrics") evaluationMetrics: entityTypesEvaluationMetrics,
@as("Type") type_: anyLengthString
}
type endpointPropertiesList = array<endpointProperties>
type classifierMetadata = {
@as("EvaluationMetrics") evaluationMetrics: classifierEvaluationMetrics,
@as("NumberOfTestDocuments") numberOfTestDocuments: amazonawsInteger,
@as("NumberOfTrainedDocuments") numberOfTrainedDocuments: amazonawsInteger,
@as("NumberOfLabels") numberOfLabels: amazonawsInteger
}
type batchItemErrorList = array<batchItemError>
type batchDetectSentimentItemResult = {
@as("SentimentScore") sentimentScore: sentimentScore,
@as("Sentiment") sentiment: sentimentType,
@as("Index") index: amazonawsInteger
}
type augmentedManifestsListItem = {
@as("AttributeNames") attributeNames: option<attributeNamesList>,
@as("S3Uri") s3Uri: option<s3Uri>
}
type topicsDetectionJobProperties = {
@as("VpcConfig") vpcConfig: vpcConfig,
@as("VolumeKmsKeyId") volumeKmsKeyId: kmsKeyId,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("NumberOfTopics") numberOfTopics: amazonawsInteger,
@as("OutputDataConfig") outputDataConfig: outputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig,
@as("EndTime") endTime: amazonawsTimestamp,
@as("SubmitTime") submitTime: amazonawsTimestamp,
@as("Message") message: anyLengthString,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName,
@as("JobId") jobId: jobId
}
type sentimentDetectionJobProperties = {
@as("VpcConfig") vpcConfig: vpcConfig,
@as("VolumeKmsKeyId") volumeKmsKeyId: kmsKeyId,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("LanguageCode") languageCode: languageCode,
@as("OutputDataConfig") outputDataConfig: outputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig,
@as("EndTime") endTime: amazonawsTimestamp,
@as("SubmitTime") submitTime: amazonawsTimestamp,
@as("Message") message: anyLengthString,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName,
@as("JobId") jobId: jobId
}
type piiEntitiesDetectionJobProperties = {
@as("Mode") mode: piiEntitiesDetectionMode,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("LanguageCode") languageCode: languageCode,
@as("RedactionConfig") redactionConfig: redactionConfig,
@as("OutputDataConfig") outputDataConfig: piiOutputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig,
@as("EndTime") endTime: amazonawsTimestamp,
@as("SubmitTime") submitTime: amazonawsTimestamp,
@as("Message") message: anyLengthString,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName,
@as("JobId") jobId: jobId
}
type listOfSyntaxTokens = array<syntaxToken>
type listOfDetectSentimentResult = array<batchDetectSentimentItemResult>
type keyPhrasesDetectionJobProperties = {
@as("VpcConfig") vpcConfig: vpcConfig,
@as("VolumeKmsKeyId") volumeKmsKeyId: kmsKeyId,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("LanguageCode") languageCode: languageCode,
@as("OutputDataConfig") outputDataConfig: outputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig,
@as("EndTime") endTime: amazonawsTimestamp,
@as("SubmitTime") submitTime: amazonawsTimestamp,
@as("Message") message: anyLengthString,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName,
@as("JobId") jobId: jobId
}
type eventsDetectionJobPropertiesList = array<eventsDetectionJobProperties>
type entityRecognizerMetadataEntityTypesList = array<entityRecognizerMetadataEntityTypesListItem>
type entityRecognizerAugmentedManifestsList = array<augmentedManifestsListItem>
type entitiesDetectionJobProperties = {
@as("VpcConfig") vpcConfig: vpcConfig,
@as("VolumeKmsKeyId") volumeKmsKeyId: kmsKeyId,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("LanguageCode") languageCode: languageCode,
@as("OutputDataConfig") outputDataConfig: outputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig,
@as("EntityRecognizerArn") entityRecognizerArn: entityRecognizerArn,
@as("EndTime") endTime: amazonawsTimestamp,
@as("SubmitTime") submitTime: amazonawsTimestamp,
@as("Message") message: anyLengthString,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName,
@as("JobId") jobId: jobId
}
type dominantLanguageDetectionJobProperties = {
@as("VpcConfig") vpcConfig: vpcConfig,
@as("VolumeKmsKeyId") volumeKmsKeyId: kmsKeyId,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("OutputDataConfig") outputDataConfig: outputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig,
@as("EndTime") endTime: amazonawsTimestamp,
@as("SubmitTime") submitTime: amazonawsTimestamp,
@as("Message") message: anyLengthString,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName,
@as("JobId") jobId: jobId
}
type documentClassifierAugmentedManifestsList = array<augmentedManifestsListItem>
type documentClassificationJobProperties = {
@as("VpcConfig") vpcConfig: vpcConfig,
@as("VolumeKmsKeyId") volumeKmsKeyId: kmsKeyId,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("OutputDataConfig") outputDataConfig: outputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig,
@as("DocumentClassifierArn") documentClassifierArn: documentClassifierArn,
@as("EndTime") endTime: amazonawsTimestamp,
@as("SubmitTime") submitTime: amazonawsTimestamp,
@as("Message") message: anyLengthString,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName,
@as("JobId") jobId: jobId
}
type batchDetectKeyPhrasesItemResult = {
@as("KeyPhrases") keyPhrases: listOfKeyPhrases,
@as("Index") index: amazonawsInteger
}
type batchDetectEntitiesItemResult = {
@as("Entities") entities: listOfEntities,
@as("Index") index: amazonawsInteger
}
type batchDetectDominantLanguageItemResult = {
@as("Languages") languages: listOfDominantLanguages,
@as("Index") index: amazonawsInteger
}
type topicsDetectionJobPropertiesList = array<topicsDetectionJobProperties>
type sentimentDetectionJobPropertiesList = array<sentimentDetectionJobProperties>
type piiEntitiesDetectionJobPropertiesList = array<piiEntitiesDetectionJobProperties>
type listOfDetectKeyPhrasesResult = array<batchDetectKeyPhrasesItemResult>
type listOfDetectEntitiesResult = array<batchDetectEntitiesItemResult>
type listOfDetectDominantLanguageResult = array<batchDetectDominantLanguageItemResult>
type keyPhrasesDetectionJobPropertiesList = array<keyPhrasesDetectionJobProperties>
type entityRecognizerMetadata = {
@as("EntityTypes") entityTypes: entityRecognizerMetadataEntityTypesList,
@as("EvaluationMetrics") evaluationMetrics: entityRecognizerEvaluationMetrics,
@as("NumberOfTestDocuments") numberOfTestDocuments: amazonawsInteger,
@as("NumberOfTrainedDocuments") numberOfTrainedDocuments: amazonawsInteger
}
type entityRecognizerInputDataConfig = {
@as("AugmentedManifests") augmentedManifests: entityRecognizerAugmentedManifestsList,
@as("EntityList") entityList: entityRecognizerEntityList,
@as("Annotations") annotations: entityRecognizerAnnotations,
@as("Documents") documents: entityRecognizerDocuments,
@as("EntityTypes") entityTypes: option<entityTypesList>,
@as("DataFormat") dataFormat: entityRecognizerDataFormat
}
type entitiesDetectionJobPropertiesList = array<entitiesDetectionJobProperties>
type dominantLanguageDetectionJobPropertiesList = array<dominantLanguageDetectionJobProperties>
type documentClassifierInputDataConfig = {
@as("AugmentedManifests") augmentedManifests: documentClassifierAugmentedManifestsList,
@as("LabelDelimiter") labelDelimiter: labelDelimiter,
@as("S3Uri") s3Uri: s3Uri,
@as("DataFormat") dataFormat: documentClassifierDataFormat
}
type documentClassificationJobPropertiesList = array<documentClassificationJobProperties>
type batchDetectSyntaxItemResult = {
@as("SyntaxTokens") syntaxTokens: listOfSyntaxTokens,
@as("Index") index: amazonawsInteger
}
type listOfDetectSyntaxResult = array<batchDetectSyntaxItemResult>
type entityRecognizerProperties = {
@as("ModelKmsKeyId") modelKmsKeyId: kmsKeyId,
@as("VpcConfig") vpcConfig: vpcConfig,
@as("VolumeKmsKeyId") volumeKmsKeyId: kmsKeyId,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("RecognizerMetadata") recognizerMetadata: entityRecognizerMetadata,
@as("InputDataConfig") inputDataConfig: entityRecognizerInputDataConfig,
@as("TrainingEndTime") trainingEndTime: amazonawsTimestamp,
@as("TrainingStartTime") trainingStartTime: amazonawsTimestamp,
@as("EndTime") endTime: amazonawsTimestamp,
@as("SubmitTime") submitTime: amazonawsTimestamp,
@as("Message") message: anyLengthString,
@as("Status") status: modelStatus,
@as("LanguageCode") languageCode: languageCode,
@as("EntityRecognizerArn") entityRecognizerArn: entityRecognizerArn
}
type documentClassifierProperties = {
@as("ModelKmsKeyId") modelKmsKeyId: kmsKeyId,
@as("Mode") mode: documentClassifierMode,
@as("VpcConfig") vpcConfig: vpcConfig,
@as("VolumeKmsKeyId") volumeKmsKeyId: kmsKeyId,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("ClassifierMetadata") classifierMetadata: classifierMetadata,
@as("OutputDataConfig") outputDataConfig: documentClassifierOutputDataConfig,
@as("InputDataConfig") inputDataConfig: documentClassifierInputDataConfig,
@as("TrainingEndTime") trainingEndTime: amazonawsTimestamp,
@as("TrainingStartTime") trainingStartTime: amazonawsTimestamp,
@as("EndTime") endTime: amazonawsTimestamp,
@as("SubmitTime") submitTime: amazonawsTimestamp,
@as("Message") message: anyLengthString,
@as("Status") status: modelStatus,
@as("LanguageCode") languageCode: languageCode,
@as("DocumentClassifierArn") documentClassifierArn: documentClassifierArn
}
type entityRecognizerPropertiesList = array<entityRecognizerProperties>
type documentClassifierPropertiesList = array<documentClassifierProperties>
type clientType;
@module("@aws-sdk/client-comprehend") @new external createClient: unit => clientType = "ComprehendClient";
module UpdateEndpoint = {
  type t;
  type request = {
@as("DesiredInferenceUnits") desiredInferenceUnits: option<inferenceUnitsInteger>,
@as("EndpointArn") endpointArn: option<comprehendEndpointArn>
}
  type response = unit
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "UpdateEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopTrainingEntityRecognizer = {
  type t;
  type request = {
@as("EntityRecognizerArn") entityRecognizerArn: option<entityRecognizerArn>
}
  type response = unit
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StopTrainingEntityRecognizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopTrainingDocumentClassifier = {
  type t;
  type request = {
@as("DocumentClassifierArn") documentClassifierArn: option<documentClassifierArn>
}
  type response = unit
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StopTrainingDocumentClassifierCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopSentimentDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("JobStatus") jobStatus: jobStatus,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StopSentimentDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopPiiEntitiesDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("JobStatus") jobStatus: jobStatus,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StopPiiEntitiesDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopKeyPhrasesDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("JobStatus") jobStatus: jobStatus,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StopKeyPhrasesDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopEventsDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("JobStatus") jobStatus: jobStatus,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StopEventsDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopEntitiesDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("JobStatus") jobStatus: jobStatus,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StopEntitiesDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopDominantLanguageDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("JobStatus") jobStatus: jobStatus,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StopDominantLanguageDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEntityRecognizer = {
  type t;
  type request = {
@as("EntityRecognizerArn") entityRecognizerArn: option<entityRecognizerArn>
}
  type response = unit
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DeleteEntityRecognizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEndpoint = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: option<comprehendEndpointArn>
}
  type response = unit
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DeleteEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDocumentClassifier = {
  type t;
  type request = {
@as("DocumentClassifierArn") documentClassifierArn: option<documentClassifierArn>
}
  type response = unit
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DeleteDocumentClassifierCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<comprehendArn>
}
  type response = unit
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartEventsDetectionJob = {
  type t;
  type request = {
@as("TargetEventTypes") targetEventTypes: option<targetEventTypes>,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
@as("LanguageCode") languageCode: option<languageCode>,
@as("JobName") jobName: jobName,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>
}
  type response = {
@as("JobStatus") jobStatus: jobStatus,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StartEventsDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectSentiment = {
  type t;
  type request = {
@as("LanguageCode") languageCode: option<languageCode>,
@as("Text") text: option<customerInputString>
}
  type response = {
@as("SentimentScore") sentimentScore: sentimentScore,
@as("Sentiment") sentiment: sentimentType
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DetectSentimentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEndpoint = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: option<comprehendEndpointArn>
}
  type response = {
@as("EndpointProperties") endpointProperties: endpointProperties
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<comprehendArn>
}
  type response = unit
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartTopicsDetectionJob = {
  type t;
  type request = {
@as("VpcConfig") vpcConfig: vpcConfig,
@as("VolumeKmsKeyId") volumeKmsKeyId: kmsKeyId,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
@as("NumberOfTopics") numberOfTopics: numberOfTopicsInteger,
@as("JobName") jobName: jobName,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>
}
  type response = {
@as("JobStatus") jobStatus: jobStatus,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StartTopicsDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartSentimentDetectionJob = {
  type t;
  type request = {
@as("VpcConfig") vpcConfig: vpcConfig,
@as("VolumeKmsKeyId") volumeKmsKeyId: kmsKeyId,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
@as("LanguageCode") languageCode: option<languageCode>,
@as("JobName") jobName: jobName,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>
}
  type response = {
@as("JobStatus") jobStatus: jobStatus,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StartSentimentDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartPiiEntitiesDetectionJob = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
@as("LanguageCode") languageCode: option<languageCode>,
@as("JobName") jobName: jobName,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("RedactionConfig") redactionConfig: redactionConfig,
@as("Mode") mode: option<piiEntitiesDetectionMode>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>
}
  type response = {
@as("JobStatus") jobStatus: jobStatus,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StartPiiEntitiesDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartKeyPhrasesDetectionJob = {
  type t;
  type request = {
@as("VpcConfig") vpcConfig: vpcConfig,
@as("VolumeKmsKeyId") volumeKmsKeyId: kmsKeyId,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
@as("LanguageCode") languageCode: option<languageCode>,
@as("JobName") jobName: jobName,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>
}
  type response = {
@as("JobStatus") jobStatus: jobStatus,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StartKeyPhrasesDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartEntitiesDetectionJob = {
  type t;
  type request = {
@as("VpcConfig") vpcConfig: vpcConfig,
@as("VolumeKmsKeyId") volumeKmsKeyId: kmsKeyId,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
@as("LanguageCode") languageCode: option<languageCode>,
@as("EntityRecognizerArn") entityRecognizerArn: entityRecognizerArn,
@as("JobName") jobName: jobName,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>
}
  type response = {
@as("JobStatus") jobStatus: jobStatus,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StartEntitiesDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartDominantLanguageDetectionJob = {
  type t;
  type request = {
@as("VpcConfig") vpcConfig: vpcConfig,
@as("VolumeKmsKeyId") volumeKmsKeyId: kmsKeyId,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
@as("JobName") jobName: jobName,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>
}
  type response = {
@as("JobStatus") jobStatus: jobStatus,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StartDominantLanguageDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartDocumentClassificationJob = {
  type t;
  type request = {
@as("VpcConfig") vpcConfig: vpcConfig,
@as("VolumeKmsKeyId") volumeKmsKeyId: kmsKeyId,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
@as("DocumentClassifierArn") documentClassifierArn: option<documentClassifierArn>,
@as("JobName") jobName: jobName
}
  type response = {
@as("JobStatus") jobStatus: jobStatus,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StartDocumentClassificationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<comprehendArn>
}
  type response = {
@as("Tags") tags: tagList,
@as("ResourceArn") resourceArn: comprehendArn
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEndpoints = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("Filter") filter: endpointFilter
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("EndpointPropertiesList") endpointPropertiesList: endpointPropertiesList
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectPiiEntities = {
  type t;
  type request = {
@as("LanguageCode") languageCode: option<languageCode>,
@as("Text") text: option<amazonawsString>
}
  type response = {
@as("Entities") entities: listOfPiiEntities
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DetectPiiEntitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectKeyPhrases = {
  type t;
  type request = {
@as("LanguageCode") languageCode: option<languageCode>,
@as("Text") text: option<customerInputString>
}
  type response = {
@as("KeyPhrases") keyPhrases: listOfKeyPhrases
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DetectKeyPhrasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectEntities = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: entityRecognizerEndpointArn,
@as("LanguageCode") languageCode: languageCode,
@as("Text") text: option<customerInputString>
}
  type response = {
@as("Entities") entities: listOfEntities
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DetectEntitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectDominantLanguage = {
  type t;
  type request = {
@as("Text") text: option<customerInputString>
}
  type response = {
@as("Languages") languages: listOfDominantLanguages
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DetectDominantLanguageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEventsDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("EventsDetectionJobProperties") eventsDetectionJobProperties: eventsDetectionJobProperties
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeEventsDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEndpoint = {
  type t;
  type request = {
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("Tags") tags: tagList,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
@as("DesiredInferenceUnits") desiredInferenceUnits: option<inferenceUnitsInteger>,
@as("ModelArn") modelArn: option<comprehendModelArn>,
@as("EndpointName") endpointName: option<comprehendEndpointName>
}
  type response = {
@as("EndpointArn") endpointArn: comprehendEndpointArn
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "CreateEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ContainsPiiEntities = {
  type t;
  type request = {
@as("LanguageCode") languageCode: option<languageCode>,
@as("Text") text: option<amazonawsString>
}
  type response = {
@as("Labels") labels: listOfEntityLabels
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ContainsPiiEntitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ClassifyDocument = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: option<documentClassifierEndpointArn>,
@as("Text") text: option<customerInputString>
}
  type response = {
@as("Labels") labels: listOfLabels,
@as("Classes") classes: listOfClasses
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ClassifyDocumentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEventsDetectionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("Filter") filter: eventsDetectionJobFilter
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("EventsDetectionJobPropertiesList") eventsDetectionJobPropertiesList: eventsDetectionJobPropertiesList
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListEventsDetectionJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectSyntax = {
  type t;
  type request = {
@as("LanguageCode") languageCode: option<syntaxLanguageCode>,
@as("Text") text: option<customerInputString>
}
  type response = {
@as("SyntaxTokens") syntaxTokens: listOfSyntaxTokens
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DetectSyntaxCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTopicsDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("TopicsDetectionJobProperties") topicsDetectionJobProperties: topicsDetectionJobProperties
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeTopicsDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSentimentDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("SentimentDetectionJobProperties") sentimentDetectionJobProperties: sentimentDetectionJobProperties
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeSentimentDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePiiEntitiesDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("PiiEntitiesDetectionJobProperties") piiEntitiesDetectionJobProperties: piiEntitiesDetectionJobProperties
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribePiiEntitiesDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeKeyPhrasesDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("KeyPhrasesDetectionJobProperties") keyPhrasesDetectionJobProperties: keyPhrasesDetectionJobProperties
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeKeyPhrasesDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEntitiesDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("EntitiesDetectionJobProperties") entitiesDetectionJobProperties: entitiesDetectionJobProperties
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeEntitiesDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDominantLanguageDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("DominantLanguageDetectionJobProperties") dominantLanguageDetectionJobProperties: dominantLanguageDetectionJobProperties
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeDominantLanguageDetectionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDocumentClassificationJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("DocumentClassificationJobProperties") documentClassificationJobProperties: documentClassificationJobProperties
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeDocumentClassificationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDetectSentiment = {
  type t;
  type request = {
@as("LanguageCode") languageCode: option<languageCode>,
@as("TextList") textList: option<customerInputStringList>
}
  type response = {
@as("ErrorList") errorList: option<batchItemErrorList>,
@as("ResultList") resultList: option<listOfDetectSentimentResult>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "BatchDetectSentimentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTopicsDetectionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("Filter") filter: topicsDetectionJobFilter
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TopicsDetectionJobPropertiesList") topicsDetectionJobPropertiesList: topicsDetectionJobPropertiesList
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListTopicsDetectionJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSentimentDetectionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("Filter") filter: sentimentDetectionJobFilter
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("SentimentDetectionJobPropertiesList") sentimentDetectionJobPropertiesList: sentimentDetectionJobPropertiesList
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListSentimentDetectionJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPiiEntitiesDetectionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("Filter") filter: piiEntitiesDetectionJobFilter
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("PiiEntitiesDetectionJobPropertiesList") piiEntitiesDetectionJobPropertiesList: piiEntitiesDetectionJobPropertiesList
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListPiiEntitiesDetectionJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListKeyPhrasesDetectionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("Filter") filter: keyPhrasesDetectionJobFilter
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("KeyPhrasesDetectionJobPropertiesList") keyPhrasesDetectionJobPropertiesList: keyPhrasesDetectionJobPropertiesList
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListKeyPhrasesDetectionJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEntitiesDetectionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("Filter") filter: entitiesDetectionJobFilter
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("EntitiesDetectionJobPropertiesList") entitiesDetectionJobPropertiesList: entitiesDetectionJobPropertiesList
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListEntitiesDetectionJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDominantLanguageDetectionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("Filter") filter: dominantLanguageDetectionJobFilter
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("DominantLanguageDetectionJobPropertiesList") dominantLanguageDetectionJobPropertiesList: dominantLanguageDetectionJobPropertiesList
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListDominantLanguageDetectionJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDocumentClassificationJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("Filter") filter: documentClassificationJobFilter
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("DocumentClassificationJobPropertiesList") documentClassificationJobPropertiesList: documentClassificationJobPropertiesList
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListDocumentClassificationJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEntityRecognizer = {
  type t;
  type request = {
@as("ModelKmsKeyId") modelKmsKeyId: kmsKeyId,
@as("VpcConfig") vpcConfig: vpcConfig,
@as("VolumeKmsKeyId") volumeKmsKeyId: kmsKeyId,
@as("LanguageCode") languageCode: option<languageCode>,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
@as("InputDataConfig") inputDataConfig: option<entityRecognizerInputDataConfig>,
@as("Tags") tags: tagList,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("RecognizerName") recognizerName: option<comprehendArnName>
}
  type response = {
@as("EntityRecognizerArn") entityRecognizerArn: entityRecognizerArn
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "CreateEntityRecognizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDocumentClassifier = {
  type t;
  type request = {
@as("ModelKmsKeyId") modelKmsKeyId: kmsKeyId,
@as("Mode") mode: documentClassifierMode,
@as("VpcConfig") vpcConfig: vpcConfig,
@as("VolumeKmsKeyId") volumeKmsKeyId: kmsKeyId,
@as("LanguageCode") languageCode: option<languageCode>,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
@as("OutputDataConfig") outputDataConfig: documentClassifierOutputDataConfig,
@as("InputDataConfig") inputDataConfig: option<documentClassifierInputDataConfig>,
@as("Tags") tags: tagList,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("DocumentClassifierName") documentClassifierName: option<comprehendArnName>
}
  type response = {
@as("DocumentClassifierArn") documentClassifierArn: documentClassifierArn
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "CreateDocumentClassifierCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDetectKeyPhrases = {
  type t;
  type request = {
@as("LanguageCode") languageCode: option<languageCode>,
@as("TextList") textList: option<customerInputStringList>
}
  type response = {
@as("ErrorList") errorList: option<batchItemErrorList>,
@as("ResultList") resultList: option<listOfDetectKeyPhrasesResult>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "BatchDetectKeyPhrasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDetectEntities = {
  type t;
  type request = {
@as("LanguageCode") languageCode: option<languageCode>,
@as("TextList") textList: option<customerInputStringList>
}
  type response = {
@as("ErrorList") errorList: option<batchItemErrorList>,
@as("ResultList") resultList: option<listOfDetectEntitiesResult>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "BatchDetectEntitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDetectDominantLanguage = {
  type t;
  type request = {
@as("TextList") textList: option<customerInputStringList>
}
  type response = {
@as("ErrorList") errorList: option<batchItemErrorList>,
@as("ResultList") resultList: option<listOfDetectDominantLanguageResult>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "BatchDetectDominantLanguageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEntityRecognizer = {
  type t;
  type request = {
@as("EntityRecognizerArn") entityRecognizerArn: option<entityRecognizerArn>
}
  type response = {
@as("EntityRecognizerProperties") entityRecognizerProperties: entityRecognizerProperties
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeEntityRecognizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDocumentClassifier = {
  type t;
  type request = {
@as("DocumentClassifierArn") documentClassifierArn: option<documentClassifierArn>
}
  type response = {
@as("DocumentClassifierProperties") documentClassifierProperties: documentClassifierProperties
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeDocumentClassifierCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDetectSyntax = {
  type t;
  type request = {
@as("LanguageCode") languageCode: option<syntaxLanguageCode>,
@as("TextList") textList: option<customerInputStringList>
}
  type response = {
@as("ErrorList") errorList: option<batchItemErrorList>,
@as("ResultList") resultList: option<listOfDetectSyntaxResult>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "BatchDetectSyntaxCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEntityRecognizers = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("Filter") filter: entityRecognizerFilter
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("EntityRecognizerPropertiesList") entityRecognizerPropertiesList: entityRecognizerPropertiesList
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListEntityRecognizersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDocumentClassifiers = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("Filter") filter: documentClassifierFilter
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("DocumentClassifierPropertiesList") documentClassifierPropertiesList: documentClassifierPropertiesList
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListDocumentClassifiersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
