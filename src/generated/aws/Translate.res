type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type unboundedLengthString = string
type amazonawsTimestamp = Js.Date.t;
type terminologyFile = NodeJs.Buffer.t;
type terminologyDataFormat = [@as("TMX") #TMX | @as("CSV") #CSV]
type terminologyArn = string
type amazonawsString = string
type s3Uri = string
type resourceName = string
type parallelDataStatus = [@as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("UPDATING") #UPDATING | @as("CREATING") #CREATING]
type parallelDataFormat = [@as("TMX") #TMX | @as("CSV") #CSV | @as("TSV") #TSV]
type parallelDataArn = string
type nextToken = string
type mergeStrategy = [@as("OVERWRITE") #OVERWRITE]
type maxResultsInteger = int;
type amazonawsLong = float;
type languageCodeString = string
type jobStatus = [@as("STOPPED") #STOPPED | @as("STOP_REQUESTED") #STOP_REQUESTED | @as("FAILED") #FAILED | @as("COMPLETED_WITH_ERROR") #COMPLETED_WITH_ERROR | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS | @as("SUBMITTED") #SUBMITTED]
type jobName = string
type jobId = string
type amazonawsInteger = int;
type iamRoleArn = string
type encryptionKeyType = [@as("KMS") #KMS]
type encryptionKeyID = string
type description = string
type contentType = string
type clientTokenString = string
type boundedLengthString = string
type textTranslationJobFilter = {
@as("SubmittedAfterTime") submittedAfterTime: amazonawsTimestamp,
@as("SubmittedBeforeTime") submittedBeforeTime: amazonawsTimestamp,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName
}
type terminologyDataLocation = {
@as("Location") location: option<amazonawsString>,
@as("RepositoryType") repositoryType: option<amazonawsString>
}
type terminologyData = {
@as("Format") format: option<terminologyDataFormat>,
@as("File") file: option<terminologyFile>
}
type term = {
@as("TargetText") targetText: amazonawsString,
@as("SourceText") sourceText: amazonawsString
}
type targetLanguageCodeStringList = array<languageCodeString>
type resourceNameList = array<resourceName>
type parallelDataDataLocation = {
@as("Location") location: option<amazonawsString>,
@as("RepositoryType") repositoryType: option<amazonawsString>
}
type parallelDataConfig = {
@as("Format") format: option<parallelDataFormat>,
@as("S3Uri") s3Uri: option<s3Uri>
}
type outputDataConfig = {
@as("S3Uri") s3Uri: option<s3Uri>
}
type languageCodeStringList = array<languageCodeString>
type jobDetails = {
@as("InputDocumentsCount") inputDocumentsCount: amazonawsInteger,
@as("DocumentsWithErrorsCount") documentsWithErrorsCount: amazonawsInteger,
@as("TranslatedDocumentsCount") translatedDocumentsCount: amazonawsInteger
}
type inputDataConfig = {
@as("ContentType") contentType: option<contentType>,
@as("S3Uri") s3Uri: option<s3Uri>
}
type encryptionKey = {
@as("Id") id: option<encryptionKeyID>,
@as("Type") type_: option<encryptionKeyType>
}
type textTranslationJobProperties = {
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("OutputDataConfig") outputDataConfig: outputDataConfig,
@as("InputDataConfig") inputDataConfig: inputDataConfig,
@as("EndTime") endTime: amazonawsTimestamp,
@as("SubmittedTime") submittedTime: amazonawsTimestamp,
@as("Message") message: unboundedLengthString,
@as("ParallelDataNames") parallelDataNames: resourceNameList,
@as("TerminologyNames") terminologyNames: resourceNameList,
@as("TargetLanguageCodes") targetLanguageCodes: targetLanguageCodeStringList,
@as("SourceLanguageCode") sourceLanguageCode: languageCodeString,
@as("JobDetails") jobDetails: jobDetails,
@as("JobStatus") jobStatus: jobStatus,
@as("JobName") jobName: jobName,
@as("JobId") jobId: jobId
}
type terminologyProperties = {
@as("LastUpdatedAt") lastUpdatedAt: amazonawsTimestamp,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("TermCount") termCount: amazonawsInteger,
@as("SizeBytes") sizeBytes: amazonawsInteger,
@as("EncryptionKey") encryptionKey: encryptionKey,
@as("TargetLanguageCodes") targetLanguageCodes: languageCodeStringList,
@as("SourceLanguageCode") sourceLanguageCode: languageCodeString,
@as("Arn") arn: terminologyArn,
@as("Description") description: description,
@as("Name") name: resourceName
}
type termList = array<term>
type parallelDataProperties = {
@as("LatestUpdateAttemptAt") latestUpdateAttemptAt: amazonawsTimestamp,
@as("LatestUpdateAttemptStatus") latestUpdateAttemptStatus: parallelDataStatus,
@as("LastUpdatedAt") lastUpdatedAt: amazonawsTimestamp,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("EncryptionKey") encryptionKey: encryptionKey,
@as("SkippedRecordCount") skippedRecordCount: amazonawsLong,
@as("FailedRecordCount") failedRecordCount: amazonawsLong,
@as("ImportedRecordCount") importedRecordCount: amazonawsLong,
@as("ImportedDataSize") importedDataSize: amazonawsLong,
@as("Message") message: unboundedLengthString,
@as("ParallelDataConfig") parallelDataConfig: parallelDataConfig,
@as("TargetLanguageCodes") targetLanguageCodes: languageCodeStringList,
@as("SourceLanguageCode") sourceLanguageCode: languageCodeString,
@as("Status") status: parallelDataStatus,
@as("Description") description: description,
@as("Arn") arn: parallelDataArn,
@as("Name") name: resourceName
}
type textTranslationJobPropertiesList = array<textTranslationJobProperties>
type terminologyPropertiesList = array<terminologyProperties>
type parallelDataPropertiesList = array<parallelDataProperties>
type appliedTerminology = {
@as("Terms") terms: termList,
@as("Name") name: resourceName
}
type appliedTerminologyList = array<appliedTerminology>
type clientType;
@module("@aws-sdk/client-translate") @new external createClient: unit => clientType = "TranslateClient";
module StopTextTranslationJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("JobStatus") jobStatus: jobStatus,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-translate") @new external new_: (Js.Promise.t<request>) => t = "StopTextTranslationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTerminology = {
  type t;
  type request = {
@as("Name") name: option<resourceName>
}
  
  @module("@aws-sdk/client-translate") @new external new_: (Js.Promise.t<request>) => t = "DeleteTerminologyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteParallelData = {
  type t;
  type request = {
@as("Name") name: option<resourceName>
}
  type response = {
@as("Status") status: parallelDataStatus,
@as("Name") name: resourceName
}
  @module("@aws-sdk/client-translate") @new external new_: (Js.Promise.t<request>) => t = "DeleteParallelDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateParallelData = {
  type t;
  type request = {
@as("ClientToken") clientToken: option<clientTokenString>,
@as("ParallelDataConfig") parallelDataConfig: option<parallelDataConfig>,
@as("Description") description: description,
@as("Name") name: option<resourceName>
}
  type response = {
@as("LatestUpdateAttemptAt") latestUpdateAttemptAt: amazonawsTimestamp,
@as("LatestUpdateAttemptStatus") latestUpdateAttemptStatus: parallelDataStatus,
@as("Status") status: parallelDataStatus,
@as("Name") name: resourceName
}
  @module("@aws-sdk/client-translate") @new external new_: (Js.Promise.t<request>) => t = "UpdateParallelDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartTextTranslationJob = {
  type t;
  type request = {
@as("ClientToken") clientToken: option<clientTokenString>,
@as("ParallelDataNames") parallelDataNames: resourceNameList,
@as("TerminologyNames") terminologyNames: resourceNameList,
@as("TargetLanguageCodes") targetLanguageCodes: option<targetLanguageCodeStringList>,
@as("SourceLanguageCode") sourceLanguageCode: option<languageCodeString>,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
@as("JobName") jobName: jobName
}
  type response = {
@as("JobStatus") jobStatus: jobStatus,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-translate") @new external new_: (Js.Promise.t<request>) => t = "StartTextTranslationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateParallelData = {
  type t;
  type request = {
@as("ClientToken") clientToken: option<clientTokenString>,
@as("EncryptionKey") encryptionKey: encryptionKey,
@as("ParallelDataConfig") parallelDataConfig: option<parallelDataConfig>,
@as("Description") description: description,
@as("Name") name: option<resourceName>
}
  type response = {
@as("Status") status: parallelDataStatus,
@as("Name") name: resourceName
}
  @module("@aws-sdk/client-translate") @new external new_: (Js.Promise.t<request>) => t = "CreateParallelDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportTerminology = {
  type t;
  type request = {
@as("EncryptionKey") encryptionKey: encryptionKey,
@as("TerminologyData") terminologyData: option<terminologyData>,
@as("Description") description: description,
@as("MergeStrategy") mergeStrategy: option<mergeStrategy>,
@as("Name") name: option<resourceName>
}
  type response = {
@as("TerminologyProperties") terminologyProperties: terminologyProperties
}
  @module("@aws-sdk/client-translate") @new external new_: (Js.Promise.t<request>) => t = "ImportTerminologyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTerminology = {
  type t;
  type request = {
@as("TerminologyDataFormat") terminologyDataFormat: option<terminologyDataFormat>,
@as("Name") name: option<resourceName>
}
  type response = {
@as("TerminologyDataLocation") terminologyDataLocation: terminologyDataLocation,
@as("TerminologyProperties") terminologyProperties: terminologyProperties
}
  @module("@aws-sdk/client-translate") @new external new_: (Js.Promise.t<request>) => t = "GetTerminologyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetParallelData = {
  type t;
  type request = {
@as("Name") name: option<resourceName>
}
  type response = {
@as("LatestUpdateAttemptAuxiliaryDataLocation") latestUpdateAttemptAuxiliaryDataLocation: parallelDataDataLocation,
@as("AuxiliaryDataLocation") auxiliaryDataLocation: parallelDataDataLocation,
@as("DataLocation") dataLocation: parallelDataDataLocation,
@as("ParallelDataProperties") parallelDataProperties: parallelDataProperties
}
  @module("@aws-sdk/client-translate") @new external new_: (Js.Promise.t<request>) => t = "GetParallelDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTextTranslationJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("TextTranslationJobProperties") textTranslationJobProperties: textTranslationJobProperties
}
  @module("@aws-sdk/client-translate") @new external new_: (Js.Promise.t<request>) => t = "DescribeTextTranslationJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTextTranslationJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: nextToken,
@as("Filter") filter: textTranslationJobFilter
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("TextTranslationJobPropertiesList") textTranslationJobPropertiesList: textTranslationJobPropertiesList
}
  @module("@aws-sdk/client-translate") @new external new_: (Js.Promise.t<request>) => t = "ListTextTranslationJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTerminologies = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("TerminologyPropertiesList") terminologyPropertiesList: terminologyPropertiesList
}
  @module("@aws-sdk/client-translate") @new external new_: (Js.Promise.t<request>) => t = "ListTerminologiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListParallelData = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ParallelDataPropertiesList") parallelDataPropertiesList: parallelDataPropertiesList
}
  @module("@aws-sdk/client-translate") @new external new_: (Js.Promise.t<request>) => t = "ListParallelDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TranslateText = {
  type t;
  type request = {
@as("TargetLanguageCode") targetLanguageCode: option<languageCodeString>,
@as("SourceLanguageCode") sourceLanguageCode: option<languageCodeString>,
@as("TerminologyNames") terminologyNames: resourceNameList,
@as("Text") text: option<boundedLengthString>
}
  type response = {
@as("AppliedTerminologies") appliedTerminologies: appliedTerminologyList,
@as("TargetLanguageCode") targetLanguageCode: option<languageCodeString>,
@as("SourceLanguageCode") sourceLanguageCode: option<languageCodeString>,
@as("TranslatedText") translatedText: option<amazonawsString>
}
  @module("@aws-sdk/client-translate") @new external new_: (Js.Promise.t<request>) => t = "TranslateTextCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
