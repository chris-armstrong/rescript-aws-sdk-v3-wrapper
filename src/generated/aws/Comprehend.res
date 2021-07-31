type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type boolean_ = bool
type long = float
type timestamp_ = Js.Date.t;
type tagValue = string
type tagKey = string
type syntaxLanguageCode = [@as("pt") #Pt | @as("it") #It | @as("de") #De | @as("fr") #Fr | @as("es") #Es | @as("en") #En]
type subnetId = string
type string_ = string
type sentimentType = [@as("MIXED") #MIXED | @as("NEUTRAL") #NEUTRAL | @as("NEGATIVE") #NEGATIVE | @as("POSITIVE") #POSITIVE]
type securityGroupId = string
type s3Uri = string
type piiEntityType = [@as("ALL") #ALL | @as("MAC_ADDRESS") #MACADDRESS | @as("IP_ADDRESS") #IPADDRESS | @as("AWS_SECRET_KEY") #AWSSECRETKEY | @as("AWS_ACCESS_KEY") #AWSACCESSKEY | @as("PASSWORD") #PASSWORD | @as("USERNAME") #USERNAME | @as("AGE") #AGE | @as("URL") #URL | @as("DRIVER_ID") #DRIVERID | @as("PASSPORT_NUMBER") #PASSPORTNUMBER | @as("DATE_TIME") #DATETIME | @as("SSN") #SSN | @as("PHONE") #PHONE | @as("NAME") #NAME | @as("ADDRESS") #ADDRESS | @as("EMAIL") #EMAIL | @as("PIN") #PIN | @as("CREDIT_DEBIT_EXPIRY") #CREDITDEBITEXPIRY | @as("CREDIT_DEBIT_CVV") #CREDITDEBITCVV | @as("CREDIT_DEBIT_NUMBER") #CREDITDEBITNUMBER | @as("BANK_ROUTING") #BANKROUTING | @as("BANK_ACCOUNT_NUMBER") #BANKACCOUNTNUMBER]
type piiEntitiesDetectionMode = [@as("ONLY_OFFSETS") #ONLYOFFSETS | @as("ONLY_REDACTION") #ONLYREDACTION]
type piiEntitiesDetectionMaskMode = [@as("REPLACE_WITH_PII_ENTITY_TYPE") #REPLACEWITHPIIENTITYTYPE | @as("MASK") #MASK]
type partOfSpeechTagType = [@as("VERB") #VERB | @as("SYM") #SYM | @as("SCONJ") #SCONJ | @as("PUNCT") #PUNCT | @as("PROPN") #PROPN | @as("PRON") #PRON | @as("PART") #PART | @as("O") #O | @as("NUM") #NUM | @as("NOUN") #NOUN | @as("INTJ") #INTJ | @as("DET") #DET | @as("CCONJ") #CCONJ | @as("CONJ") #CONJ | @as("AUX") #AUX | @as("ADV") #ADV | @as("ADP") #ADP | @as("ADJ") #ADJ]
type numberOfTopicsInteger = int
type modelStatus = [@as("TRAINED") #TRAINED | @as("IN_ERROR") #INERROR | @as("STOPPED") #STOPPED | @as("STOP_REQUESTED") #STOPREQUESTED | @as("DELETING") #DELETING | @as("TRAINING") #TRAINING | @as("SUBMITTED") #SUBMITTED]
type maxResultsInteger = int
type maskCharacter = string
type languageCode = [@as("zh-TW") #ZhTW | @as("zh") #Zh | @as("ko") #Ko | @as("ja") #Ja | @as("hi") #Hi | @as("ar") #Ar | @as("pt") #Pt | @as("it") #It | @as("de") #De | @as("fr") #Fr | @as("es") #Es | @as("en") #En]
type labelDelimiter = string
type kmsKeyId = string
type jobStatus = [@as("STOPPED") #STOPPED | @as("STOP_REQUESTED") #STOPREQUESTED | @as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #INPROGRESS | @as("SUBMITTED") #SUBMITTED]
type jobName = string
type jobId = string
type integer_ = int
type inputFormat = [@as("ONE_DOC_PER_LINE") #ONEDOCPERLINE | @as("ONE_DOC_PER_FILE") #ONEDOCPERFILE]
type inferenceUnitsInteger = int
type iamRoleArn = string
type float_ = float
type eventTypeString = string
type entityTypeName = string
type entityType = [@as("OTHER") #OTHER | @as("TITLE") #TITLE | @as("QUANTITY") #QUANTITY | @as("DATE") #DATE | @as("EVENT") #EVENT | @as("COMMERCIAL_ITEM") #COMMERCIALITEM | @as("ORGANIZATION") #ORGANIZATION | @as("LOCATION") #LOCATION | @as("PERSON") #PERSON]
type entityRecognizerEndpointArn = string
type entityRecognizerDataFormat = [@as("AUGMENTED_MANIFEST") #AUGMENTEDMANIFEST | @as("COMPREHEND_CSV") #COMPREHENDCSV]
type entityRecognizerArn = string
type endpointStatus = [@as("UPDATING") #UPDATING | @as("IN_SERVICE") #INSERVICE | @as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("CREATING") #CREATING]
type double = float
type documentClassifierMode = [@as("MULTI_LABEL") #MULTILABEL | @as("MULTI_CLASS") #MULTICLASS]
type documentClassifierEndpointArn = string
type documentClassifierDataFormat = [@as("AUGMENTED_MANIFEST") #AUGMENTEDMANIFEST | @as("COMPREHEND_CSV") #COMPREHENDCSV]
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
@as("SubmitTimeAfter") submitTimeAfter: option<timestamp_>,
@as("SubmitTimeBefore") submitTimeBefore: option<timestamp_>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: option<jobName>
}
type targetEventTypes = array<eventTypeString>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: tagKey
}
type subnets = array<subnetId>
type sentimentScore = {
@as("Mixed") mixed: option<float_>,
@as("Neutral") neutral: option<float_>,
@as("Negative") negative: option<float_>,
@as("Positive") positive: option<float_>
}
type sentimentDetectionJobFilter = {
@as("SubmitTimeAfter") submitTimeAfter: option<timestamp_>,
@as("SubmitTimeBefore") submitTimeBefore: option<timestamp_>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: option<jobName>
}
type securityGroupIds = array<securityGroupId>
type piiOutputDataConfig = {
@as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
@as("S3Uri") s3Uri: s3Uri
}
type piiEntity = {
@as("EndOffset") endOffset: option<integer_>,
@as("BeginOffset") beginOffset: option<integer_>,
@as("Type") type_: option<piiEntityType>,
@as("Score") score: option<float_>
}
type piiEntitiesDetectionJobFilter = {
@as("SubmitTimeAfter") submitTimeAfter: option<timestamp_>,
@as("SubmitTimeBefore") submitTimeBefore: option<timestamp_>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: option<jobName>
}
type partOfSpeechTag = {
@as("Score") score: option<float_>,
@as("Tag") tag: option<partOfSpeechTagType>
}
type outputDataConfig = {
@as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
@as("S3Uri") s3Uri: s3Uri
}
type listOfPiiEntityTypes = array<piiEntityType>
type keyPhrasesDetectionJobFilter = {
@as("SubmitTimeAfter") submitTimeAfter: option<timestamp_>,
@as("SubmitTimeBefore") submitTimeBefore: option<timestamp_>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: option<jobName>
}
type keyPhrase = {
@as("EndOffset") endOffset: option<integer_>,
@as("BeginOffset") beginOffset: option<integer_>,
@as("Text") text: option<string_>,
@as("Score") score: option<float_>
}
type inputDataConfig = {
@as("InputFormat") inputFormat: option<inputFormat>,
@as("S3Uri") s3Uri: s3Uri
}
type eventsDetectionJobFilter = {
@as("SubmitTimeAfter") submitTimeAfter: option<timestamp_>,
@as("SubmitTimeBefore") submitTimeBefore: option<timestamp_>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: option<jobName>
}
type entityTypesListItem = {
@as("Type") type_: entityTypeName
}
type entityTypesEvaluationMetrics = {
@as("F1Score") f1Score: option<double>,
@as("Recall") recall: option<double>,
@as("Precision") precision: option<double>
}
type entityRecognizerFilter = {
@as("SubmitTimeAfter") submitTimeAfter: option<timestamp_>,
@as("SubmitTimeBefore") submitTimeBefore: option<timestamp_>,
@as("Status") status: option<modelStatus>
}
type entityRecognizerEvaluationMetrics = {
@as("F1Score") f1Score: option<double>,
@as("Recall") recall: option<double>,
@as("Precision") precision: option<double>
}
type entityRecognizerEntityList = {
@as("S3Uri") s3Uri: s3Uri
}
type entityRecognizerDocuments = {
@as("S3Uri") s3Uri: s3Uri
}
type entityRecognizerAnnotations = {
@as("S3Uri") s3Uri: s3Uri
}
type entityLabel = {
@as("Score") score: option<float_>,
@as("Name") name: option<piiEntityType>
}
type entity = {
@as("EndOffset") endOffset: option<integer_>,
@as("BeginOffset") beginOffset: option<integer_>,
@as("Text") text: option<string_>,
@as("Type") type_: option<entityType>,
@as("Score") score: option<float_>
}
type entitiesDetectionJobFilter = {
@as("SubmitTimeAfter") submitTimeAfter: option<timestamp_>,
@as("SubmitTimeBefore") submitTimeBefore: option<timestamp_>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: option<jobName>
}
type endpointProperties = {
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
@as("CreationTime") creationTime: option<timestamp_>,
@as("CurrentInferenceUnits") currentInferenceUnits: option<inferenceUnitsInteger>,
@as("DesiredInferenceUnits") desiredInferenceUnits: option<inferenceUnitsInteger>,
@as("ModelArn") modelArn: option<comprehendModelArn>,
@as("Message") message: option<anyLengthString>,
@as("Status") status: option<endpointStatus>,
@as("EndpointArn") endpointArn: option<comprehendEndpointArn>
}
type endpointFilter = {
@as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
@as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
@as("Status") status: option<endpointStatus>,
@as("ModelArn") modelArn: option<comprehendModelArn>
}
type dominantLanguageDetectionJobFilter = {
@as("SubmitTimeAfter") submitTimeAfter: option<timestamp_>,
@as("SubmitTimeBefore") submitTimeBefore: option<timestamp_>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: option<jobName>
}
type dominantLanguage = {
@as("Score") score: option<float_>,
@as("LanguageCode") languageCode: option<string_>
}
type documentLabel = {
@as("Score") score: option<float_>,
@as("Name") name: option<string_>
}
type documentClassifierOutputDataConfig = {
@as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
@as("S3Uri") s3Uri: option<s3Uri>
}
type documentClassifierFilter = {
@as("SubmitTimeAfter") submitTimeAfter: option<timestamp_>,
@as("SubmitTimeBefore") submitTimeBefore: option<timestamp_>,
@as("Status") status: option<modelStatus>
}
type documentClassificationJobFilter = {
@as("SubmitTimeAfter") submitTimeAfter: option<timestamp_>,
@as("SubmitTimeBefore") submitTimeBefore: option<timestamp_>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: option<jobName>
}
type documentClass = {
@as("Score") score: option<float_>,
@as("Name") name: option<string_>
}
type customerInputStringList = array<customerInputString>
type classifierEvaluationMetrics = {
@as("HammingLoss") hammingLoss: option<double>,
@as("MicroF1Score") microF1Score: option<double>,
@as("MicroRecall") microRecall: option<double>,
@as("MicroPrecision") microPrecision: option<double>,
@as("F1Score") f1Score: option<double>,
@as("Recall") recall: option<double>,
@as("Precision") precision: option<double>,
@as("Accuracy") accuracy: option<double>
}
type batchItemError = {
@as("ErrorMessage") errorMessage: option<string_>,
@as("ErrorCode") errorCode: option<string_>,
@as("Index") index: option<integer_>
}
type attributeNamesList = array<attributeNamesListItem>
type vpcConfig = {
@as("Subnets") subnets: subnets,
@as("SecurityGroupIds") securityGroupIds: securityGroupIds
}
type tagList_ = array<tag>
type syntaxToken = {
@as("PartOfSpeech") partOfSpeech: option<partOfSpeechTag>,
@as("EndOffset") endOffset: option<integer_>,
@as("BeginOffset") beginOffset: option<integer_>,
@as("Text") text: option<string_>,
@as("TokenId") tokenId: option<integer_>
}
type redactionConfig = {
@as("MaskCharacter") maskCharacter: option<maskCharacter>,
@as("MaskMode") maskMode: option<piiEntitiesDetectionMaskMode>,
@as("PiiEntityTypes") piiEntityTypes: option<listOfPiiEntityTypes>
}
type listOfPiiEntities = array<piiEntity>
type listOfLabels = array<documentLabel>
type listOfKeyPhrases = array<keyPhrase>
type listOfEntityLabels = array<entityLabel>
type listOfEntities = array<entity>
type listOfDominantLanguages = array<dominantLanguage>
type listOfClasses = array<documentClass>
type eventsDetectionJobProperties = {
@as("TargetEventTypes") targetEventTypes: option<targetEventTypes>,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("LanguageCode") languageCode: option<languageCode>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
@as("EndTime") endTime: option<timestamp_>,
@as("SubmitTime") submitTime: option<timestamp_>,
@as("Message") message: option<anyLengthString>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: option<jobName>,
@as("JobId") jobId: option<jobId>
}
type entityTypesList = array<entityTypesListItem>
type entityRecognizerMetadataEntityTypesListItem = {
@as("NumberOfTrainMentions") numberOfTrainMentions: option<integer_>,
@as("EvaluationMetrics") evaluationMetrics: option<entityTypesEvaluationMetrics>,
@as("Type") type_: option<anyLengthString>
}
type endpointPropertiesList = array<endpointProperties>
type classifierMetadata = {
@as("EvaluationMetrics") evaluationMetrics: option<classifierEvaluationMetrics>,
@as("NumberOfTestDocuments") numberOfTestDocuments: option<integer_>,
@as("NumberOfTrainedDocuments") numberOfTrainedDocuments: option<integer_>,
@as("NumberOfLabels") numberOfLabels: option<integer_>
}
type batchItemErrorList = array<batchItemError>
type batchDetectSentimentItemResult = {
@as("SentimentScore") sentimentScore: option<sentimentScore>,
@as("Sentiment") sentiment: option<sentimentType>,
@as("Index") index: option<integer_>
}
type augmentedManifestsListItem = {
@as("AttributeNames") attributeNames: attributeNamesList,
@as("S3Uri") s3Uri: s3Uri
}
type topicsDetectionJobProperties = {
@as("VpcConfig") vpcConfig: option<vpcConfig>,
@as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("NumberOfTopics") numberOfTopics: option<integer_>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
@as("EndTime") endTime: option<timestamp_>,
@as("SubmitTime") submitTime: option<timestamp_>,
@as("Message") message: option<anyLengthString>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: option<jobName>,
@as("JobId") jobId: option<jobId>
}
type sentimentDetectionJobProperties = {
@as("VpcConfig") vpcConfig: option<vpcConfig>,
@as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("LanguageCode") languageCode: option<languageCode>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
@as("EndTime") endTime: option<timestamp_>,
@as("SubmitTime") submitTime: option<timestamp_>,
@as("Message") message: option<anyLengthString>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: option<jobName>,
@as("JobId") jobId: option<jobId>
}
type piiEntitiesDetectionJobProperties = {
@as("Mode") mode: option<piiEntitiesDetectionMode>,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("LanguageCode") languageCode: option<languageCode>,
@as("RedactionConfig") redactionConfig: option<redactionConfig>,
@as("OutputDataConfig") outputDataConfig: option<piiOutputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
@as("EndTime") endTime: option<timestamp_>,
@as("SubmitTime") submitTime: option<timestamp_>,
@as("Message") message: option<anyLengthString>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: option<jobName>,
@as("JobId") jobId: option<jobId>
}
type listOfSyntaxTokens = array<syntaxToken>
type listOfDetectSentimentResult = array<batchDetectSentimentItemResult>
type keyPhrasesDetectionJobProperties = {
@as("VpcConfig") vpcConfig: option<vpcConfig>,
@as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("LanguageCode") languageCode: option<languageCode>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
@as("EndTime") endTime: option<timestamp_>,
@as("SubmitTime") submitTime: option<timestamp_>,
@as("Message") message: option<anyLengthString>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: option<jobName>,
@as("JobId") jobId: option<jobId>
}
type eventsDetectionJobPropertiesList = array<eventsDetectionJobProperties>
type entityRecognizerMetadataEntityTypesList = array<entityRecognizerMetadataEntityTypesListItem>
type entityRecognizerAugmentedManifestsList = array<augmentedManifestsListItem>
type entitiesDetectionJobProperties = {
@as("VpcConfig") vpcConfig: option<vpcConfig>,
@as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("LanguageCode") languageCode: option<languageCode>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
@as("EntityRecognizerArn") entityRecognizerArn: option<entityRecognizerArn>,
@as("EndTime") endTime: option<timestamp_>,
@as("SubmitTime") submitTime: option<timestamp_>,
@as("Message") message: option<anyLengthString>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: option<jobName>,
@as("JobId") jobId: option<jobId>
}
type dominantLanguageDetectionJobProperties = {
@as("VpcConfig") vpcConfig: option<vpcConfig>,
@as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
@as("EndTime") endTime: option<timestamp_>,
@as("SubmitTime") submitTime: option<timestamp_>,
@as("Message") message: option<anyLengthString>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: option<jobName>,
@as("JobId") jobId: option<jobId>
}
type documentClassifierAugmentedManifestsList = array<augmentedManifestsListItem>
type documentClassificationJobProperties = {
@as("VpcConfig") vpcConfig: option<vpcConfig>,
@as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
@as("DocumentClassifierArn") documentClassifierArn: option<documentClassifierArn>,
@as("EndTime") endTime: option<timestamp_>,
@as("SubmitTime") submitTime: option<timestamp_>,
@as("Message") message: option<anyLengthString>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: option<jobName>,
@as("JobId") jobId: option<jobId>
}
type batchDetectKeyPhrasesItemResult = {
@as("KeyPhrases") keyPhrases: option<listOfKeyPhrases>,
@as("Index") index: option<integer_>
}
type batchDetectEntitiesItemResult = {
@as("Entities") entities: option<listOfEntities>,
@as("Index") index: option<integer_>
}
type batchDetectDominantLanguageItemResult = {
@as("Languages") languages: option<listOfDominantLanguages>,
@as("Index") index: option<integer_>
}
type topicsDetectionJobPropertiesList = array<topicsDetectionJobProperties>
type sentimentDetectionJobPropertiesList = array<sentimentDetectionJobProperties>
type piiEntitiesDetectionJobPropertiesList = array<piiEntitiesDetectionJobProperties>
type listOfDetectKeyPhrasesResult = array<batchDetectKeyPhrasesItemResult>
type listOfDetectEntitiesResult = array<batchDetectEntitiesItemResult>
type listOfDetectDominantLanguageResult = array<batchDetectDominantLanguageItemResult>
type keyPhrasesDetectionJobPropertiesList = array<keyPhrasesDetectionJobProperties>
type entityRecognizerMetadata = {
@as("EntityTypes") entityTypes: option<entityRecognizerMetadataEntityTypesList>,
@as("EvaluationMetrics") evaluationMetrics: option<entityRecognizerEvaluationMetrics>,
@as("NumberOfTestDocuments") numberOfTestDocuments: option<integer_>,
@as("NumberOfTrainedDocuments") numberOfTrainedDocuments: option<integer_>
}
type entityRecognizerInputDataConfig = {
@as("AugmentedManifests") augmentedManifests: option<entityRecognizerAugmentedManifestsList>,
@as("EntityList") entityList: option<entityRecognizerEntityList>,
@as("Annotations") annotations: option<entityRecognizerAnnotations>,
@as("Documents") documents: option<entityRecognizerDocuments>,
@as("EntityTypes") entityTypes: entityTypesList,
@as("DataFormat") dataFormat: option<entityRecognizerDataFormat>
}
type entitiesDetectionJobPropertiesList = array<entitiesDetectionJobProperties>
type dominantLanguageDetectionJobPropertiesList = array<dominantLanguageDetectionJobProperties>
type documentClassifierInputDataConfig = {
@as("AugmentedManifests") augmentedManifests: option<documentClassifierAugmentedManifestsList>,
@as("LabelDelimiter") labelDelimiter: option<labelDelimiter>,
@as("S3Uri") s3Uri: option<s3Uri>,
@as("DataFormat") dataFormat: option<documentClassifierDataFormat>
}
type documentClassificationJobPropertiesList = array<documentClassificationJobProperties>
type batchDetectSyntaxItemResult = {
@as("SyntaxTokens") syntaxTokens: option<listOfSyntaxTokens>,
@as("Index") index: option<integer_>
}
type listOfDetectSyntaxResult = array<batchDetectSyntaxItemResult>
type entityRecognizerProperties = {
@as("ModelKmsKeyId") modelKmsKeyId: option<kmsKeyId>,
@as("VpcConfig") vpcConfig: option<vpcConfig>,
@as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("RecognizerMetadata") recognizerMetadata: option<entityRecognizerMetadata>,
@as("InputDataConfig") inputDataConfig: option<entityRecognizerInputDataConfig>,
@as("TrainingEndTime") trainingEndTime: option<timestamp_>,
@as("TrainingStartTime") trainingStartTime: option<timestamp_>,
@as("EndTime") endTime: option<timestamp_>,
@as("SubmitTime") submitTime: option<timestamp_>,
@as("Message") message: option<anyLengthString>,
@as("Status") status: option<modelStatus>,
@as("LanguageCode") languageCode: option<languageCode>,
@as("EntityRecognizerArn") entityRecognizerArn: option<entityRecognizerArn>
}
type documentClassifierProperties = {
@as("ModelKmsKeyId") modelKmsKeyId: option<kmsKeyId>,
@as("Mode") mode: option<documentClassifierMode>,
@as("VpcConfig") vpcConfig: option<vpcConfig>,
@as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("ClassifierMetadata") classifierMetadata: option<classifierMetadata>,
@as("OutputDataConfig") outputDataConfig: option<documentClassifierOutputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<documentClassifierInputDataConfig>,
@as("TrainingEndTime") trainingEndTime: option<timestamp_>,
@as("TrainingStartTime") trainingStartTime: option<timestamp_>,
@as("EndTime") endTime: option<timestamp_>,
@as("SubmitTime") submitTime: option<timestamp_>,
@as("Message") message: option<anyLengthString>,
@as("Status") status: option<modelStatus>,
@as("LanguageCode") languageCode: option<languageCode>,
@as("DocumentClassifierArn") documentClassifierArn: option<documentClassifierArn>
}
type entityRecognizerPropertiesList = array<entityRecognizerProperties>
type documentClassifierPropertiesList = array<documentClassifierProperties>
type awsServiceClient;
@module("@aws-sdk/client-comprehend") @new external createClient: unit => awsServiceClient = "ComprehendClient";
module UpdateEndpoint = {
  type t;
  type request = {
@as("DesiredInferenceUnits") desiredInferenceUnits: inferenceUnitsInteger,
@as("EndpointArn") endpointArn: comprehendEndpointArn
}
  type response = unit
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "UpdateEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopTrainingEntityRecognizer = {
  type t;
  type request = {
@as("EntityRecognizerArn") entityRecognizerArn: entityRecognizerArn
}
  type response = unit
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StopTrainingEntityRecognizerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopTrainingDocumentClassifier = {
  type t;
  type request = {
@as("DocumentClassifierArn") documentClassifierArn: documentClassifierArn
}
  type response = unit
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StopTrainingDocumentClassifierCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopSentimentDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StopSentimentDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopPiiEntitiesDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StopPiiEntitiesDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopKeyPhrasesDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StopKeyPhrasesDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopEventsDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StopEventsDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopEntitiesDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StopEntitiesDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopDominantLanguageDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StopDominantLanguageDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteEntityRecognizer = {
  type t;
  type request = {
@as("EntityRecognizerArn") entityRecognizerArn: entityRecognizerArn
}
  type response = unit
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DeleteEntityRecognizerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteEndpoint = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: comprehendEndpointArn
}
  type response = unit
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DeleteEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDocumentClassifier = {
  type t;
  type request = {
@as("DocumentClassifierArn") documentClassifierArn: documentClassifierArn
}
  type response = unit
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DeleteDocumentClassifierCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
@as("ResourceArn") resourceArn: comprehendArn
}
  type response = unit
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartEventsDetectionJob = {
  type t;
  type request = {
@as("TargetEventTypes") targetEventTypes: targetEventTypes,
@as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>,
@as("LanguageCode") languageCode: languageCode,
@as("JobName") jobName: option<jobName>,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("OutputDataConfig") outputDataConfig: outputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig
}
  type response = {
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StartEventsDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetectSentiment = {
  type t;
  type request = {
@as("LanguageCode") languageCode: languageCode,
@as("Text") text: customerInputString
}
  type response = {
@as("SentimentScore") sentimentScore: option<sentimentScore>,
@as("Sentiment") sentiment: option<sentimentType>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DetectSentimentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEndpoint = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: comprehendEndpointArn
}
  type response = {
@as("EndpointProperties") endpointProperties: option<endpointProperties>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
@as("ResourceArn") resourceArn: comprehendArn
}
  type response = unit
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartTopicsDetectionJob = {
  type t;
  type request = {
@as("VpcConfig") vpcConfig: option<vpcConfig>,
@as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>,
@as("NumberOfTopics") numberOfTopics: option<numberOfTopicsInteger>,
@as("JobName") jobName: option<jobName>,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("OutputDataConfig") outputDataConfig: outputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig
}
  type response = {
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StartTopicsDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartSentimentDetectionJob = {
  type t;
  type request = {
@as("VpcConfig") vpcConfig: option<vpcConfig>,
@as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>,
@as("LanguageCode") languageCode: languageCode,
@as("JobName") jobName: option<jobName>,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("OutputDataConfig") outputDataConfig: outputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig
}
  type response = {
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StartSentimentDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartPiiEntitiesDetectionJob = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>,
@as("LanguageCode") languageCode: languageCode,
@as("JobName") jobName: option<jobName>,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("RedactionConfig") redactionConfig: option<redactionConfig>,
@as("Mode") mode: piiEntitiesDetectionMode,
@as("OutputDataConfig") outputDataConfig: outputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig
}
  type response = {
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StartPiiEntitiesDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartKeyPhrasesDetectionJob = {
  type t;
  type request = {
@as("VpcConfig") vpcConfig: option<vpcConfig>,
@as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>,
@as("LanguageCode") languageCode: languageCode,
@as("JobName") jobName: option<jobName>,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("OutputDataConfig") outputDataConfig: outputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig
}
  type response = {
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StartKeyPhrasesDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartEntitiesDetectionJob = {
  type t;
  type request = {
@as("VpcConfig") vpcConfig: option<vpcConfig>,
@as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>,
@as("LanguageCode") languageCode: languageCode,
@as("EntityRecognizerArn") entityRecognizerArn: option<entityRecognizerArn>,
@as("JobName") jobName: option<jobName>,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("OutputDataConfig") outputDataConfig: outputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig
}
  type response = {
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StartEntitiesDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartDominantLanguageDetectionJob = {
  type t;
  type request = {
@as("VpcConfig") vpcConfig: option<vpcConfig>,
@as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>,
@as("JobName") jobName: option<jobName>,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("OutputDataConfig") outputDataConfig: outputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig
}
  type response = {
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StartDominantLanguageDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartDocumentClassificationJob = {
  type t;
  type request = {
@as("VpcConfig") vpcConfig: option<vpcConfig>,
@as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("OutputDataConfig") outputDataConfig: outputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig,
@as("DocumentClassifierArn") documentClassifierArn: documentClassifierArn,
@as("JobName") jobName: option<jobName>
}
  type response = {
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "StartDocumentClassificationJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: comprehendArn
}
  type response = {
@as("Tags") tags: option<tagList_>,
@as("ResourceArn") resourceArn: option<comprehendArn>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEndpoints = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultsInteger>,
@as("NextToken") nextToken: option<string_>,
@as("Filter") filter: option<endpointFilter>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("EndpointPropertiesList") endpointPropertiesList: option<endpointPropertiesList>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListEndpointsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetectPiiEntities = {
  type t;
  type request = {
@as("LanguageCode") languageCode: languageCode,
@as("Text") text: string_
}
  type response = {
@as("Entities") entities: option<listOfPiiEntities>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DetectPiiEntitiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetectKeyPhrases = {
  type t;
  type request = {
@as("LanguageCode") languageCode: languageCode,
@as("Text") text: customerInputString
}
  type response = {
@as("KeyPhrases") keyPhrases: option<listOfKeyPhrases>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DetectKeyPhrasesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetectEntities = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: option<entityRecognizerEndpointArn>,
@as("LanguageCode") languageCode: option<languageCode>,
@as("Text") text: customerInputString
}
  type response = {
@as("Entities") entities: option<listOfEntities>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DetectEntitiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetectDominantLanguage = {
  type t;
  type request = {
@as("Text") text: customerInputString
}
  type response = {
@as("Languages") languages: option<listOfDominantLanguages>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DetectDominantLanguageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEventsDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("EventsDetectionJobProperties") eventsDetectionJobProperties: option<eventsDetectionJobProperties>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeEventsDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateEndpoint = {
  type t;
  type request = {
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("Tags") tags: option<tagList_>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>,
@as("DesiredInferenceUnits") desiredInferenceUnits: inferenceUnitsInteger,
@as("ModelArn") modelArn: comprehendModelArn,
@as("EndpointName") endpointName: comprehendEndpointName
}
  type response = {
@as("EndpointArn") endpointArn: option<comprehendEndpointArn>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "CreateEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ContainsPiiEntities = {
  type t;
  type request = {
@as("LanguageCode") languageCode: languageCode,
@as("Text") text: string_
}
  type response = {
@as("Labels") labels: option<listOfEntityLabels>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ContainsPiiEntitiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ClassifyDocument = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: documentClassifierEndpointArn,
@as("Text") text: customerInputString
}
  type response = {
@as("Labels") labels: option<listOfLabels>,
@as("Classes") classes: option<listOfClasses>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ClassifyDocumentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEventsDetectionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultsInteger>,
@as("NextToken") nextToken: option<string_>,
@as("Filter") filter: option<eventsDetectionJobFilter>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("EventsDetectionJobPropertiesList") eventsDetectionJobPropertiesList: option<eventsDetectionJobPropertiesList>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListEventsDetectionJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetectSyntax = {
  type t;
  type request = {
@as("LanguageCode") languageCode: syntaxLanguageCode,
@as("Text") text: customerInputString
}
  type response = {
@as("SyntaxTokens") syntaxTokens: option<listOfSyntaxTokens>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DetectSyntaxCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTopicsDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("TopicsDetectionJobProperties") topicsDetectionJobProperties: option<topicsDetectionJobProperties>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeTopicsDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSentimentDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("SentimentDetectionJobProperties") sentimentDetectionJobProperties: option<sentimentDetectionJobProperties>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeSentimentDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePiiEntitiesDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("PiiEntitiesDetectionJobProperties") piiEntitiesDetectionJobProperties: option<piiEntitiesDetectionJobProperties>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribePiiEntitiesDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeKeyPhrasesDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("KeyPhrasesDetectionJobProperties") keyPhrasesDetectionJobProperties: option<keyPhrasesDetectionJobProperties>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeKeyPhrasesDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEntitiesDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("EntitiesDetectionJobProperties") entitiesDetectionJobProperties: option<entitiesDetectionJobProperties>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeEntitiesDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDominantLanguageDetectionJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("DominantLanguageDetectionJobProperties") dominantLanguageDetectionJobProperties: option<dominantLanguageDetectionJobProperties>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeDominantLanguageDetectionJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDocumentClassificationJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("DocumentClassificationJobProperties") documentClassificationJobProperties: option<documentClassificationJobProperties>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeDocumentClassificationJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDetectSentiment = {
  type t;
  type request = {
@as("LanguageCode") languageCode: languageCode,
@as("TextList") textList: customerInputStringList
}
  type response = {
@as("ErrorList") errorList: batchItemErrorList,
@as("ResultList") resultList: listOfDetectSentimentResult
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "BatchDetectSentimentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTopicsDetectionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultsInteger>,
@as("NextToken") nextToken: option<string_>,
@as("Filter") filter: option<topicsDetectionJobFilter>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("TopicsDetectionJobPropertiesList") topicsDetectionJobPropertiesList: option<topicsDetectionJobPropertiesList>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListTopicsDetectionJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSentimentDetectionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultsInteger>,
@as("NextToken") nextToken: option<string_>,
@as("Filter") filter: option<sentimentDetectionJobFilter>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("SentimentDetectionJobPropertiesList") sentimentDetectionJobPropertiesList: option<sentimentDetectionJobPropertiesList>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListSentimentDetectionJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPiiEntitiesDetectionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultsInteger>,
@as("NextToken") nextToken: option<string_>,
@as("Filter") filter: option<piiEntitiesDetectionJobFilter>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("PiiEntitiesDetectionJobPropertiesList") piiEntitiesDetectionJobPropertiesList: option<piiEntitiesDetectionJobPropertiesList>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListPiiEntitiesDetectionJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListKeyPhrasesDetectionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultsInteger>,
@as("NextToken") nextToken: option<string_>,
@as("Filter") filter: option<keyPhrasesDetectionJobFilter>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("KeyPhrasesDetectionJobPropertiesList") keyPhrasesDetectionJobPropertiesList: option<keyPhrasesDetectionJobPropertiesList>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListKeyPhrasesDetectionJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEntitiesDetectionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultsInteger>,
@as("NextToken") nextToken: option<string_>,
@as("Filter") filter: option<entitiesDetectionJobFilter>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("EntitiesDetectionJobPropertiesList") entitiesDetectionJobPropertiesList: option<entitiesDetectionJobPropertiesList>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListEntitiesDetectionJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDominantLanguageDetectionJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultsInteger>,
@as("NextToken") nextToken: option<string_>,
@as("Filter") filter: option<dominantLanguageDetectionJobFilter>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("DominantLanguageDetectionJobPropertiesList") dominantLanguageDetectionJobPropertiesList: option<dominantLanguageDetectionJobPropertiesList>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListDominantLanguageDetectionJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDocumentClassificationJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultsInteger>,
@as("NextToken") nextToken: option<string_>,
@as("Filter") filter: option<documentClassificationJobFilter>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("DocumentClassificationJobPropertiesList") documentClassificationJobPropertiesList: option<documentClassificationJobPropertiesList>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListDocumentClassificationJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateEntityRecognizer = {
  type t;
  type request = {
@as("ModelKmsKeyId") modelKmsKeyId: option<kmsKeyId>,
@as("VpcConfig") vpcConfig: option<vpcConfig>,
@as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
@as("LanguageCode") languageCode: languageCode,
@as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>,
@as("InputDataConfig") inputDataConfig: entityRecognizerInputDataConfig,
@as("Tags") tags: option<tagList_>,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("RecognizerName") recognizerName: comprehendArnName
}
  type response = {
@as("EntityRecognizerArn") entityRecognizerArn: option<entityRecognizerArn>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "CreateEntityRecognizerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDocumentClassifier = {
  type t;
  type request = {
@as("ModelKmsKeyId") modelKmsKeyId: option<kmsKeyId>,
@as("Mode") mode: option<documentClassifierMode>,
@as("VpcConfig") vpcConfig: option<vpcConfig>,
@as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
@as("LanguageCode") languageCode: languageCode,
@as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>,
@as("OutputDataConfig") outputDataConfig: option<documentClassifierOutputDataConfig>,
@as("InputDataConfig") inputDataConfig: documentClassifierInputDataConfig,
@as("Tags") tags: option<tagList_>,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("DocumentClassifierName") documentClassifierName: comprehendArnName
}
  type response = {
@as("DocumentClassifierArn") documentClassifierArn: option<documentClassifierArn>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "CreateDocumentClassifierCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDetectKeyPhrases = {
  type t;
  type request = {
@as("LanguageCode") languageCode: languageCode,
@as("TextList") textList: customerInputStringList
}
  type response = {
@as("ErrorList") errorList: batchItemErrorList,
@as("ResultList") resultList: listOfDetectKeyPhrasesResult
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "BatchDetectKeyPhrasesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDetectEntities = {
  type t;
  type request = {
@as("LanguageCode") languageCode: languageCode,
@as("TextList") textList: customerInputStringList
}
  type response = {
@as("ErrorList") errorList: batchItemErrorList,
@as("ResultList") resultList: listOfDetectEntitiesResult
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "BatchDetectEntitiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDetectDominantLanguage = {
  type t;
  type request = {
@as("TextList") textList: customerInputStringList
}
  type response = {
@as("ErrorList") errorList: batchItemErrorList,
@as("ResultList") resultList: listOfDetectDominantLanguageResult
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "BatchDetectDominantLanguageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEntityRecognizer = {
  type t;
  type request = {
@as("EntityRecognizerArn") entityRecognizerArn: entityRecognizerArn
}
  type response = {
@as("EntityRecognizerProperties") entityRecognizerProperties: option<entityRecognizerProperties>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeEntityRecognizerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDocumentClassifier = {
  type t;
  type request = {
@as("DocumentClassifierArn") documentClassifierArn: documentClassifierArn
}
  type response = {
@as("DocumentClassifierProperties") documentClassifierProperties: option<documentClassifierProperties>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "DescribeDocumentClassifierCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDetectSyntax = {
  type t;
  type request = {
@as("LanguageCode") languageCode: syntaxLanguageCode,
@as("TextList") textList: customerInputStringList
}
  type response = {
@as("ErrorList") errorList: batchItemErrorList,
@as("ResultList") resultList: listOfDetectSyntaxResult
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "BatchDetectSyntaxCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEntityRecognizers = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultsInteger>,
@as("NextToken") nextToken: option<string_>,
@as("Filter") filter: option<entityRecognizerFilter>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("EntityRecognizerPropertiesList") entityRecognizerPropertiesList: option<entityRecognizerPropertiesList>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListEntityRecognizersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDocumentClassifiers = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultsInteger>,
@as("NextToken") nextToken: option<string_>,
@as("Filter") filter: option<documentClassifierFilter>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("DocumentClassifierPropertiesList") documentClassifierPropertiesList: option<documentClassifierPropertiesList>
}
  @module("@aws-sdk/client-comprehend") @new external new_: (request) => t = "ListDocumentClassifiersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
