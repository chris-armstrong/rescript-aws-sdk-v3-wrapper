type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type stringValueMaxLength1000 = string
type stringValueLength1to63 = string
type stringValueLength1to255 = string
type stringValueLength1to1024 = string
type stringValue = string
type stringMapValue = string
type stringMapKey = string
type locationType = [@as("SAGEMAKER") #SAGEMAKER | @as("INGESTION") #INGESTION]
type errorMessage = string
type arn = string
type amazonawsTimestamp = Js.Date.t;
type sourceType = [@as("S3") #S3]
type sessionDuration = float;
type idType = string
type formatType = [@as("XML") #XML | @as("PARQUET") #PARQUET | @as("JSON") #JSON | @as("CSV") #CSV]
type errorCategory = [@as("A_user_recoverable_error_has_occurred") #A_user_recoverable_error_has_occurred | @as("Cancelled") #Cancelled | @as("An_internal_error_has_occurred") #An_internal_error_has_occurred | @as("The_system_temporarily_lacks_sufficient_resources_to_process_the_request") #The_system_temporarily_lacks_sufficient_resources_to_process_the_request | @as("One_or_more_inputs_to_this_request_were_not_found") #One_or_more_inputs_to_this_request_were_not_found | @as("Missing_required_permission_to_perform_this_request") #Missing_required_permission_to_perform_this_request | @as("Service_limits_have_been_exceeded") #Service_limits_have_been_exceeded | @as("The_inputs_to_this_request_are_invalid") #The_inputs_to_this_request_are_invalid]
type changesetStatus = [@as("STOP_REQUESTED") #STOP_REQUESTED | @as("RUNNING") #RUNNING | @as("SUCCESS") #SUCCESS | @as("FAILED") #FAILED | @as("PENDING") #PENDING]
type changeType = [@as("MODIFY") #MODIFY | @as("APPEND") #APPEND | @as("REPLACE") #REPLACE]
type stringMap = Js.Dict.t< stringMapValue>
type errorInfo = {
@as("errorCategory") errorCategory: errorCategory,
@as("errorMessage") errorMessage: stringValueMaxLength1000
}
type credentials = {
@as("sessionToken") sessionToken: stringValueMaxLength1000,
@as("secretAccessKey") secretAccessKey: stringValueMaxLength1000,
@as("accessKeyId") accessKeyId: stringValueLength1to255
}
type changesetInfo = {
@as("updatedByChangesetId") updatedByChangesetId: stringValue,
@as("updatesChangesetId") updatesChangesetId: stringValue,
@as("changesetLabels") changesetLabels: stringMap,
@as("errorInfo") errorInfo: errorInfo,
@as("status") status: changesetStatus,
@as("createTimestamp") createTimestamp: amazonawsTimestamp,
@as("formatParams") formatParams: stringMap,
@as("formatType") formatType: formatType,
@as("sourceParams") sourceParams: stringMap,
@as("sourceType") sourceType: sourceType,
@as("changeType") changeType: changeType,
@as("datasetId") datasetId: idType,
@as("changesetArn") changesetArn: arn,
@as("id") id: idType
}
type clientType;
@module("@aws-sdk/client-finspace-api") @new external createClient: unit => clientType = "FinspacedataClient";
module GetWorkingLocation = {
  type t;
  type request = {
@as("locationType") locationType: locationType
}
  type response = {
@as("s3Bucket") s3Bucket: stringValueLength1to63,
@as("s3Path") s3Path: stringValueLength1to1024,
@as("s3Uri") s3Uri: stringValueLength1to1024
}
  @module("@aws-sdk/client-finspace-api") @new external new_: (request) => t = "GetWorkingLocationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetProgrammaticAccessCredentials = {
  type t;
  type request = {
@as("environmentId") environmentId: option<idType>,
@as("durationInMinutes") durationInMinutes: sessionDuration
}
  type response = {
@as("durationInMinutes") durationInMinutes: sessionDuration,
@as("credentials") credentials: credentials
}
  @module("@aws-sdk/client-finspace-api") @new external new_: (request) => t = "GetProgrammaticAccessCredentialsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateChangeset = {
  type t;
  type request = {
@as("tags") tags: stringMap,
@as("formatParams") formatParams: stringMap,
@as("formatType") formatType: formatType,
@as("sourceParams") sourceParams: option<stringMap>,
@as("sourceType") sourceType: option<sourceType>,
@as("changeType") changeType: option<changeType>,
@as("datasetId") datasetId: option<idType>
}
  type response = {
@as("changeset") changeset: changesetInfo
}
  @module("@aws-sdk/client-finspace-api") @new external new_: (request) => t = "CreateChangesetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
