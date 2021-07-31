type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsTimestamp = Js.Date.t;
type amazonawsString = string
type s3Uri = string
type preloadDataType = [@as("SYNTHEA") #SYNTHEA]
type nextToken = string
type message = string
type maxResultsInteger = int;
type jobStatus = [@as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS | @as("SUBMITTED") #SUBMITTED]
type jobName = string
type jobId = string
type iamRoleArn = string
type fHIRVersion = [@as("R4") #R4]
type datastoreStatus = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type datastoreName = string
type datastoreId = string
type datastoreArn = string
type clientTokenString = string
type boundedLengthString = string
type preloadDataConfig = {
@as("PreloadDataType") preloadDataType: option<preloadDataType>
}
type outputDataConfig = S3Uri(s3Uri);
type inputDataConfig = S3Uri(s3Uri);
type datastoreFilter = {
@as("CreatedAfter") createdAfter: amazonawsTimestamp,
@as("CreatedBefore") createdBefore: amazonawsTimestamp,
@as("DatastoreStatus") datastoreStatus: datastoreStatus,
@as("DatastoreName") datastoreName: datastoreName
}
type importJobProperties = {
@as("Message") message: message,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
@as("DatastoreId") datastoreId: option<datastoreId>,
@as("EndTime") endTime: amazonawsTimestamp,
@as("SubmitTime") submitTime: option<amazonawsTimestamp>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: jobName,
@as("JobId") jobId: option<jobId>
}
type exportJobProperties = {
@as("Message") message: message,
@as("DataAccessRoleArn") dataAccessRoleArn: iamRoleArn,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("DatastoreId") datastoreId: option<datastoreId>,
@as("EndTime") endTime: amazonawsTimestamp,
@as("SubmitTime") submitTime: option<amazonawsTimestamp>,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobName") jobName: jobName,
@as("JobId") jobId: option<jobId>
}
type datastoreProperties = {
@as("PreloadDataConfig") preloadDataConfig: preloadDataConfig,
@as("DatastoreEndpoint") datastoreEndpoint: option<amazonawsString>,
@as("DatastoreTypeVersion") datastoreTypeVersion: option<fHIRVersion>,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("DatastoreStatus") datastoreStatus: option<datastoreStatus>,
@as("DatastoreName") datastoreName: datastoreName,
@as("DatastoreArn") datastoreArn: option<datastoreArn>,
@as("DatastoreId") datastoreId: option<datastoreId>
}
type datastorePropertiesList = array<datastoreProperties>
type clientType;
@module("@aws-sdk/client-healthlake") @new external createClient: unit => clientType = "HealthLakeClient";
module DeleteFHIRDatastore = {
  type t;
  type request = {
@as("DatastoreId") datastoreId: datastoreId
}
  type response = {
@as("DatastoreEndpoint") datastoreEndpoint: option<boundedLengthString>,
@as("DatastoreStatus") datastoreStatus: option<datastoreStatus>,
@as("DatastoreArn") datastoreArn: option<datastoreArn>,
@as("DatastoreId") datastoreId: option<datastoreId>
}
  @module("@aws-sdk/client-healthlake") @new external new_: (request) => t = "DeleteFHIRDatastoreCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartFHIRImportJob = {
  type t;
  type request = {
@as("ClientToken") clientToken: option<clientTokenString>,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("DatastoreId") datastoreId: option<datastoreId>,
@as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
@as("JobName") jobName: jobName
}
  type response = {
@as("DatastoreId") datastoreId: datastoreId,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-healthlake") @new external new_: (request) => t = "StartFHIRImportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartFHIRExportJob = {
  type t;
  type request = {
@as("ClientToken") clientToken: option<clientTokenString>,
@as("DataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("DatastoreId") datastoreId: option<datastoreId>,
@as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
@as("JobName") jobName: jobName
}
  type response = {
@as("DatastoreId") datastoreId: datastoreId,
@as("JobStatus") jobStatus: option<jobStatus>,
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-healthlake") @new external new_: (request) => t = "StartFHIRExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFHIRDatastore = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientTokenString,
@as("PreloadDataConfig") preloadDataConfig: preloadDataConfig,
@as("DatastoreTypeVersion") datastoreTypeVersion: option<fHIRVersion>,
@as("DatastoreName") datastoreName: datastoreName
}
  type response = {
@as("DatastoreEndpoint") datastoreEndpoint: option<boundedLengthString>,
@as("DatastoreStatus") datastoreStatus: option<datastoreStatus>,
@as("DatastoreArn") datastoreArn: option<datastoreArn>,
@as("DatastoreId") datastoreId: option<datastoreId>
}
  @module("@aws-sdk/client-healthlake") @new external new_: (request) => t = "CreateFHIRDatastoreCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFHIRImportJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>,
@as("DatastoreId") datastoreId: option<datastoreId>
}
  type response = {
@as("ImportJobProperties") importJobProperties: option<importJobProperties>
}
  @module("@aws-sdk/client-healthlake") @new external new_: (request) => t = "DescribeFHIRImportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFHIRExportJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>,
@as("DatastoreId") datastoreId: option<datastoreId>
}
  type response = {
@as("ExportJobProperties") exportJobProperties: option<exportJobProperties>
}
  @module("@aws-sdk/client-healthlake") @new external new_: (request) => t = "DescribeFHIRExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFHIRDatastore = {
  type t;
  type request = {
@as("DatastoreId") datastoreId: datastoreId
}
  type response = {
@as("DatastoreProperties") datastoreProperties: option<datastoreProperties>
}
  @module("@aws-sdk/client-healthlake") @new external new_: (request) => t = "DescribeFHIRDatastoreCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFHIRDatastores = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultsInteger,
@as("NextToken") nextToken: nextToken,
@as("Filter") filter: datastoreFilter
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("DatastorePropertiesList") datastorePropertiesList: option<datastorePropertiesList>
}
  @module("@aws-sdk/client-healthlake") @new external new_: (request) => t = "ListFHIRDatastoresCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
