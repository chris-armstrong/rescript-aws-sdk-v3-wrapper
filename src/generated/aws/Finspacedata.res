type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-finspace-api") @new
external createClient: unit => awsServiceClient = "FinspacedataClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
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
type timestamp_ = Js.Date.t
type sourceType = [@as("S3") #S3]
type sessionDuration = float
type idType = string
type formatType = [@as("XML") #XML | @as("PARQUET") #PARQUET | @as("JSON") #JSON | @as("CSV") #CSV]
type errorCategory = [
  | @as("A_user_recoverable_error_has_occurred") #A_User_Recoverable_Error_Has_Occurred
  | @as("Cancelled") #Cancelled
  | @as("An_internal_error_has_occurred") #An_Internal_Error_Has_Occurred
  | @as("The_system_temporarily_lacks_sufficient_resources_to_process_the_request")
  #The_System_Temporarily_Lacks_Sufficient_Resources_To_Process_The_Request
  | @as("One_or_more_inputs_to_this_request_were_not_found")
  #One_Or_More_Inputs_To_This_Request_Were_Not_Found
  | @as("Missing_required_permission_to_perform_this_request")
  #Missing_Required_Permission_To_Perform_This_Request
  | @as("Service_limits_have_been_exceeded") #Service_Limits_Have_Been_Exceeded
  | @as("The_inputs_to_this_request_are_invalid") #The_Inputs_To_This_Request_Are_Invalid
]
type changesetStatus = [
  | @as("STOP_REQUESTED") #STOP_REQUESTED
  | @as("RUNNING") #RUNNING
  | @as("SUCCESS") #SUCCESS
  | @as("FAILED") #FAILED
  | @as("PENDING") #PENDING
]
type changeType = [@as("MODIFY") #MODIFY | @as("APPEND") #APPEND | @as("REPLACE") #REPLACE]
type stringMap = Js.Dict.t<stringMapValue>
type errorInfo = {
  errorCategory: option<errorCategory>,
  errorMessage: option<stringValueMaxLength1000>,
}
type credentials = {
  sessionToken: option<stringValueMaxLength1000>,
  secretAccessKey: option<stringValueMaxLength1000>,
  accessKeyId: option<stringValueLength1to255>,
}
type changesetInfo = {
  updatedByChangesetId: option<stringValue>,
  updatesChangesetId: option<stringValue>,
  changesetLabels: option<stringMap>,
  errorInfo: option<errorInfo>,
  status: option<changesetStatus>,
  createTimestamp: option<timestamp_>,
  formatParams: option<stringMap>,
  formatType: option<formatType>,
  sourceParams: option<stringMap>,
  sourceType: option<sourceType>,
  changeType: option<changeType>,
  datasetId: option<idType>,
  changesetArn: option<arn>,
  id: option<idType>,
}

module GetWorkingLocation = {
  type t
  type request = {locationType: option<locationType>}
  type response = {
    s3Bucket: option<stringValueLength1to63>,
    s3Path: option<stringValueLength1to1024>,
    s3Uri: option<stringValueLength1to1024>,
  }
  @module("@aws-sdk/client-finspace-api") @new
  external new: request => t = "GetWorkingLocationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetProgrammaticAccessCredentials = {
  type t
  type request = {
    environmentId: idType,
    durationInMinutes: option<sessionDuration>,
  }
  type response = {
    durationInMinutes: option<sessionDuration>,
    credentials: option<credentials>,
  }
  @module("@aws-sdk/client-finspace-api") @new
  external new: request => t = "GetProgrammaticAccessCredentialsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateChangeset = {
  type t
  type request = {
    tags: option<stringMap>,
    formatParams: option<stringMap>,
    formatType: option<formatType>,
    sourceParams: stringMap,
    sourceType: sourceType,
    changeType: changeType,
    datasetId: idType,
  }
  type response = {changeset: option<changesetInfo>}
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "CreateChangesetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
