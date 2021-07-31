type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-healthlake") @new external createClient: unit => awsServiceClient = "HealthLakeClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type timestamp_ = Js.Date.t;
type string_ = string
type s3Uri = string
type preloadDataType = [@as("SYNTHEA") #SYNTHEA]
type nextToken = string
type message = string
type maxResultsInteger = int
type jobStatus = [@as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS | @as("SUBMITTED") #SUBMITTED]
type jobName = string
type jobId = string
type iamRoleArn = string
type fhirversion = [@as("R4") #R4]
type datastoreStatus = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type datastoreName = string
type datastoreId = string
type datastoreArn = string
type clientTokenString = string
type boundedLengthString = string
type preloadDataConfig = {
@as("PreloadDataType") preloadDataType: preloadDataType
}
type outputDataConfig = {
@as("S3Uri") s3Uri: option<s3Uri>
}
type inputDataConfig = {
@as("S3Uri") s3Uri: option<s3Uri>
}
type datastoreFilter = {
@as("CreatedAfter") createdAfter: option<timestamp_>,
  @as("CreatedBefore") createdBefore: option<timestamp_>,
  @as("DatastoreStatus") datastoreStatus: option<datastoreStatus>,
  @as("DatastoreName") datastoreName: option<datastoreName>
}
type importJobProperties = {
@as("Message") message: option<message>,
  @as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
  @as("InputDataConfig") inputDataConfig: inputDataConfig,
  @as("DatastoreId") datastoreId: datastoreId,
  @as("EndTime") endTime: option<timestamp_>,
  @as("SubmitTime") submitTime: timestamp_,
  @as("JobStatus") jobStatus: jobStatus,
  @as("JobName") jobName: option<jobName>,
  @as("JobId") jobId: jobId
}
type exportJobProperties = {
@as("Message") message: option<message>,
  @as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
  @as("OutputDataConfig") outputDataConfig: outputDataConfig,
  @as("DatastoreId") datastoreId: datastoreId,
  @as("EndTime") endTime: option<timestamp_>,
  @as("SubmitTime") submitTime: timestamp_,
  @as("JobStatus") jobStatus: jobStatus,
  @as("JobName") jobName: option<jobName>,
  @as("JobId") jobId: jobId
}
type datastoreProperties = {
@as("PreloadDataConfig") preloadDataConfig: option<preloadDataConfig>,
  @as("DatastoreEndpoint") datastoreEndpoint: string_,
  @as("DatastoreTypeVersion") datastoreTypeVersion: fhirversion,
  @as("CreatedAt") createdAt: option<timestamp_>,
  @as("DatastoreStatus") datastoreStatus: datastoreStatus,
  @as("DatastoreName") datastoreName: option<datastoreName>,
  @as("DatastoreArn") datastoreArn: datastoreArn,
  @as("DatastoreId") datastoreId: datastoreId
}
type datastorePropertiesList = array<datastoreProperties>

module DeleteFHIRDatastore = {
  type t;
  type request = {
@as("DatastoreId") datastoreId: option<datastoreId>
}
  type response = {
@as("DatastoreEndpoint") datastoreEndpoint: boundedLengthString,
  @as("DatastoreStatus") datastoreStatus: datastoreStatus,
  @as("DatastoreArn") datastoreArn: datastoreArn,
  @as("DatastoreId") datastoreId: datastoreId
}
  @module("@aws-sdk/client-healthlake") @new external new_: (request) => t = "DeleteFHIRDatastoreCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartFHIRImportJob = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientTokenString,
  @as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
  @as("DatastoreId") datastoreId: datastoreId,
  @as("InputDataConfig") inputDataConfig: inputDataConfig,
  @as("JobName") jobName: option<jobName>
}
  type response = {
@as("DatastoreId") datastoreId: option<datastoreId>,
  @as("JobStatus") jobStatus: jobStatus,
  @as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-healthlake") @new external new_: (request) => t = "StartFHIRImportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartFHIRExportJob = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientTokenString,
  @as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
  @as("DatastoreId") datastoreId: datastoreId,
  @as("OutputDataConfig") outputDataConfig: outputDataConfig,
  @as("JobName") jobName: option<jobName>
}
  type response = {
@as("DatastoreId") datastoreId: option<datastoreId>,
  @as("JobStatus") jobStatus: jobStatus,
  @as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-healthlake") @new external new_: (request) => t = "StartFHIRExportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateFHIRDatastore = {
  type t;
  type request = {
@as("ClientToken") clientToken: option<clientTokenString>,
  @as("PreloadDataConfig") preloadDataConfig: option<preloadDataConfig>,
  @as("DatastoreTypeVersion") datastoreTypeVersion: fhirversion,
  @as("DatastoreName") datastoreName: option<datastoreName>
}
  type response = {
@as("DatastoreEndpoint") datastoreEndpoint: boundedLengthString,
  @as("DatastoreStatus") datastoreStatus: datastoreStatus,
  @as("DatastoreArn") datastoreArn: datastoreArn,
  @as("DatastoreId") datastoreId: datastoreId
}
  @module("@aws-sdk/client-healthlake") @new external new_: (request) => t = "CreateFHIRDatastoreCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeFHIRImportJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId,
  @as("DatastoreId") datastoreId: datastoreId
}
  type response = {
@as("ImportJobProperties") importJobProperties: importJobProperties
}
  @module("@aws-sdk/client-healthlake") @new external new_: (request) => t = "DescribeFHIRImportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeFHIRExportJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId,
  @as("DatastoreId") datastoreId: datastoreId
}
  type response = {
@as("ExportJobProperties") exportJobProperties: exportJobProperties
}
  @module("@aws-sdk/client-healthlake") @new external new_: (request) => t = "DescribeFHIRExportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeFHIRDatastore = {
  type t;
  type request = {
@as("DatastoreId") datastoreId: option<datastoreId>
}
  type response = {
@as("DatastoreProperties") datastoreProperties: datastoreProperties
}
  @module("@aws-sdk/client-healthlake") @new external new_: (request) => t = "DescribeFHIRDatastoreCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFHIRDatastores = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultsInteger>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("Filter") filter: option<datastoreFilter>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("DatastorePropertiesList") datastorePropertiesList: datastorePropertiesList
}
  @module("@aws-sdk/client-healthlake") @new external new_: (request) => t = "ListFHIRDatastoresCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
