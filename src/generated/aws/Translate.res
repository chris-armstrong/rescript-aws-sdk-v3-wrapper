type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-translate") @new external createClient: unit => awsServiceClient = "TranslateClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type unboundedLengthString = string
type timestamp_ = Js.Date.t;
type terminologyFile = NodeJs.Buffer.t
type terminologyDataFormat = [@as("TMX") #TMX | @as("CSV") #CSV]
type terminologyArn = string
type string_ = string
type s3Uri = string
type resourceName = string
type parallelDataStatus = [@as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("UPDATING") #UPDATING | @as("CREATING") #CREATING]
type parallelDataFormat = [@as("TMX") #TMX | @as("CSV") #CSV | @as("TSV") #TSV]
type parallelDataArn = string
type nextToken = string
type mergeStrategy = [@as("OVERWRITE") #OVERWRITE]
type maxResultsInteger = int
type long = float
type languageCodeString = string
type jobStatus = [@as("STOPPED") #STOPPED | @as("STOP_REQUESTED") #STOP_REQUESTED | @as("FAILED") #FAILED | @as("COMPLETED_WITH_ERROR") #COMPLETED_WITH_ERROR | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS | @as("SUBMITTED") #SUBMITTED]
type jobName = string
type jobId = string
type integer_ = int
type iamRoleArn = string
type encryptionKeyType = [@as("KMS") #KMS]
type encryptionKeyID = string
type description = string
type contentType = string
type clientTokenString = string
type boundedLengthString = string
type textTranslationJobFilter = {
@as("SubmittedAfterTime") submittedAfterTime: option<timestamp_>,
  @as("SubmittedBeforeTime") submittedBeforeTime: option<timestamp_>,
  @as("JobStatus") jobStatus: option<jobStatus>,
  @as("JobName") jobName: option<jobName>
}
type terminologyDataLocation = {
@as("Location") location: string_,
  @as("RepositoryType") repositoryType: string_
}
type terminologyData = {
@as("Format") format: terminologyDataFormat,
  @as("File") file: terminologyFile
}
type term = {
@as("TargetText") targetText: option<string_>,
  @as("SourceText") sourceText: option<string_>
}
type targetLanguageCodeStringList = array<languageCodeString>
type resourceNameList = array<resourceName>
type parallelDataDataLocation = {
@as("Location") location: string_,
  @as("RepositoryType") repositoryType: string_
}
type parallelDataConfig = {
@as("Format") format: parallelDataFormat,
  @as("S3Uri") s3Uri: s3Uri
}
type outputDataConfig = {
@as("S3Uri") s3Uri: s3Uri
}
type languageCodeStringList = array<languageCodeString>
type jobDetails = {
@as("InputDocumentsCount") inputDocumentsCount: option<integer_>,
  @as("DocumentsWithErrorsCount") documentsWithErrorsCount: option<integer_>,
  @as("TranslatedDocumentsCount") translatedDocumentsCount: option<integer_>
}
type inputDataConfig = {
@as("ContentType") contentType: contentType,
  @as("S3Uri") s3Uri: s3Uri
}
type encryptionKey = {
@as("Id") id: encryptionKeyID,
  @as("Type") type_: encryptionKeyType
}
type textTranslationJobProperties = {
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
  @as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
  @as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
  @as("EndTime") endTime: option<timestamp_>,
  @as("SubmittedTime") submittedTime: option<timestamp_>,
  @as("Message") message: option<unboundedLengthString>,
  @as("ParallelDataNames") parallelDataNames: option<resourceNameList>,
  @as("TerminologyNames") terminologyNames: option<resourceNameList>,
  @as("TargetLanguageCodes") targetLanguageCodes: option<targetLanguageCodeStringList>,
  @as("SourceLanguageCode") sourceLanguageCode: option<languageCodeString>,
  @as("JobDetails") jobDetails: option<jobDetails>,
  @as("JobStatus") jobStatus: option<jobStatus>,
  @as("JobName") jobName: option<jobName>,
  @as("JobId") jobId: option<jobId>
}
type terminologyProperties = {
@as("LastUpdatedAt") lastUpdatedAt: option<timestamp_>,
  @as("CreatedAt") createdAt: option<timestamp_>,
  @as("TermCount") termCount: option<integer_>,
  @as("SizeBytes") sizeBytes: option<integer_>,
  @as("EncryptionKey") encryptionKey: option<encryptionKey>,
  @as("TargetLanguageCodes") targetLanguageCodes: option<languageCodeStringList>,
  @as("SourceLanguageCode") sourceLanguageCode: option<languageCodeString>,
  @as("Arn") arn: option<terminologyArn>,
  @as("Description") description: option<description>,
  @as("Name") name: option<resourceName>
}
type termList = array<term>
type parallelDataProperties = {
@as("LatestUpdateAttemptAt") latestUpdateAttemptAt: option<timestamp_>,
  @as("LatestUpdateAttemptStatus") latestUpdateAttemptStatus: option<parallelDataStatus>,
  @as("LastUpdatedAt") lastUpdatedAt: option<timestamp_>,
  @as("CreatedAt") createdAt: option<timestamp_>,
  @as("EncryptionKey") encryptionKey: option<encryptionKey>,
  @as("SkippedRecordCount") skippedRecordCount: option<long>,
  @as("FailedRecordCount") failedRecordCount: option<long>,
  @as("ImportedRecordCount") importedRecordCount: option<long>,
  @as("ImportedDataSize") importedDataSize: option<long>,
  @as("Message") message: option<unboundedLengthString>,
  @as("ParallelDataConfig") parallelDataConfig: option<parallelDataConfig>,
  @as("TargetLanguageCodes") targetLanguageCodes: option<languageCodeStringList>,
  @as("SourceLanguageCode") sourceLanguageCode: option<languageCodeString>,
  @as("Status") status: option<parallelDataStatus>,
  @as("Description") description: option<description>,
  @as("Arn") arn: option<parallelDataArn>,
  @as("Name") name: option<resourceName>
}
type textTranslationJobPropertiesList = array<textTranslationJobProperties>
type terminologyPropertiesList = array<terminologyProperties>
type parallelDataPropertiesList = array<parallelDataProperties>
type appliedTerminology = {
@as("Terms") terms: option<termList>,
  @as("Name") name: option<resourceName>
}
type appliedTerminologyList = array<appliedTerminology>

module StopTextTranslationJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("JobStatus") jobStatus: option<jobStatus>,
  @as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-translate") @new external new_: (request) => t = "StopTextTranslationJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTerminology = {
  type t;
  type request = {
@as("Name") name: resourceName
}
  
  @module("@aws-sdk/client-translate") @new external new_: (request) => t = "DeleteTerminologyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteParallelData = {
  type t;
  type request = {
@as("Name") name: resourceName
}
  type response = {
@as("Status") status: option<parallelDataStatus>,
  @as("Name") name: option<resourceName>
}
  @module("@aws-sdk/client-translate") @new external new_: (request) => t = "DeleteParallelDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateParallelData = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientTokenString,
  @as("ParallelDataConfig") parallelDataConfig: parallelDataConfig,
  @as("Description") description: option<description>,
  @as("Name") name: resourceName
}
  type response = {
@as("LatestUpdateAttemptAt") latestUpdateAttemptAt: option<timestamp_>,
  @as("LatestUpdateAttemptStatus") latestUpdateAttemptStatus: option<parallelDataStatus>,
  @as("Status") status: option<parallelDataStatus>,
  @as("Name") name: option<resourceName>
}
  @module("@aws-sdk/client-translate") @new external new_: (request) => t = "UpdateParallelDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartTextTranslationJob = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientTokenString,
  @as("ParallelDataNames") parallelDataNames: option<resourceNameList>,
  @as("TerminologyNames") terminologyNames: option<resourceNameList>,
  @as("TargetLanguageCodes") targetLanguageCodes: targetLanguageCodeStringList,
  @as("SourceLanguageCode") sourceLanguageCode: languageCodeString,
  @as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
  @as("OutputDataConfig") outputDataConfig: outputDataConfig,
  @as("InputDataConfig") inputDataConfig: inputDataConfig,
  @as("JobName") jobName: option<jobName>
}
  type response = {
@as("JobStatus") jobStatus: option<jobStatus>,
  @as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-translate") @new external new_: (request) => t = "StartTextTranslationJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateParallelData = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientTokenString,
  @as("EncryptionKey") encryptionKey: option<encryptionKey>,
  @as("ParallelDataConfig") parallelDataConfig: parallelDataConfig,
  @as("Description") description: option<description>,
  @as("Name") name: resourceName
}
  type response = {
@as("Status") status: option<parallelDataStatus>,
  @as("Name") name: option<resourceName>
}
  @module("@aws-sdk/client-translate") @new external new_: (request) => t = "CreateParallelDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ImportTerminology = {
  type t;
  type request = {
@as("EncryptionKey") encryptionKey: option<encryptionKey>,
  @as("TerminologyData") terminologyData: terminologyData,
  @as("Description") description: option<description>,
  @as("MergeStrategy") mergeStrategy: mergeStrategy,
  @as("Name") name: resourceName
}
  type response = {
@as("TerminologyProperties") terminologyProperties: option<terminologyProperties>
}
  @module("@aws-sdk/client-translate") @new external new_: (request) => t = "ImportTerminologyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTerminology = {
  type t;
  type request = {
@as("TerminologyDataFormat") terminologyDataFormat: terminologyDataFormat,
  @as("Name") name: resourceName
}
  type response = {
@as("TerminologyDataLocation") terminologyDataLocation: option<terminologyDataLocation>,
  @as("TerminologyProperties") terminologyProperties: option<terminologyProperties>
}
  @module("@aws-sdk/client-translate") @new external new_: (request) => t = "GetTerminologyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetParallelData = {
  type t;
  type request = {
@as("Name") name: resourceName
}
  type response = {
@as("LatestUpdateAttemptAuxiliaryDataLocation") latestUpdateAttemptAuxiliaryDataLocation: option<parallelDataDataLocation>,
  @as("AuxiliaryDataLocation") auxiliaryDataLocation: option<parallelDataDataLocation>,
  @as("DataLocation") dataLocation: option<parallelDataDataLocation>,
  @as("ParallelDataProperties") parallelDataProperties: option<parallelDataProperties>
}
  @module("@aws-sdk/client-translate") @new external new_: (request) => t = "GetParallelDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTextTranslationJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("TextTranslationJobProperties") textTranslationJobProperties: option<textTranslationJobProperties>
}
  @module("@aws-sdk/client-translate") @new external new_: (request) => t = "DescribeTextTranslationJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTextTranslationJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultsInteger>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("Filter") filter: option<textTranslationJobFilter>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("TextTranslationJobPropertiesList") textTranslationJobPropertiesList: option<textTranslationJobPropertiesList>
}
  @module("@aws-sdk/client-translate") @new external new_: (request) => t = "ListTextTranslationJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTerminologies = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultsInteger>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("TerminologyPropertiesList") terminologyPropertiesList: option<terminologyPropertiesList>
}
  @module("@aws-sdk/client-translate") @new external new_: (request) => t = "ListTerminologiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListParallelData = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultsInteger>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("ParallelDataPropertiesList") parallelDataPropertiesList: option<parallelDataPropertiesList>
}
  @module("@aws-sdk/client-translate") @new external new_: (request) => t = "ListParallelDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TranslateText = {
  type t;
  type request = {
@as("TargetLanguageCode") targetLanguageCode: languageCodeString,
  @as("SourceLanguageCode") sourceLanguageCode: languageCodeString,
  @as("TerminologyNames") terminologyNames: option<resourceNameList>,
  @as("Text") text: boundedLengthString
}
  type response = {
@as("AppliedTerminologies") appliedTerminologies: option<appliedTerminologyList>,
  @as("TargetLanguageCode") targetLanguageCode: languageCodeString,
  @as("SourceLanguageCode") sourceLanguageCode: languageCodeString,
  @as("TranslatedText") translatedText: string_
}
  @module("@aws-sdk/client-translate") @new external new_: (request) => t = "TranslateTextCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
