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
@ocaml.doc("<p>Error message.</p>")
type errorInfo = {
  @ocaml.doc("<p>The category of the error.</p>
         <ul>
            <li>
               <p>
                  <code>VALIDATION</code> -The inputs to this request are invalid.</p>
            </li>
            <li>
               <p>
                  <code>SERVICE_QUOTA_EXCEEDED</code> - Service quotas have been exceeded. Please
          contact AWS support to increase quotas.</p>
            </li>
            <li>
               <p>
                  <code>ACCESS_DENIED</code> - Missing required permission to perform this
          request.</p>
            </li>
            <li>
               <p>
                  <code>RESOURCE_NOT_FOUND</code> - One or more inputs to this request were not
          found.</p>
            </li>
            <li>
               <p>
                  <code>THROTTLING</code> - The system temporarily lacks sufficient resources to process
          the request.</p>
            </li>
            <li>
               <p>
                  <code>INTERNAL_SERVICE_EXCEPTION</code> - An internal service error has
          occurred.</p>
            </li>
            <li>
               <p>
                  <code>CANCELLED</code> - A user recoverable error has occurred.</p>
            </li>
         </ul>")
  errorCategory: option<errorCategory>,
  @ocaml.doc("<p>The text of the error message.</p>")
  errorMessage: option<stringValueMaxLength1000>,
}
@ocaml.doc("<p>Set short term API credentials.</p>")
type credentials = {
  @ocaml.doc("<p>The session token.</p>") sessionToken: option<stringValueMaxLength1000>,
  @ocaml.doc("<p>The access key.</p>") secretAccessKey: option<stringValueMaxLength1000>,
  @ocaml.doc("<p>The access key identifier.</p>") accessKeyId: option<stringValueLength1to255>,
}
@ocaml.doc("<p>A changeset is unit of data in a dataset.</p>")
type changesetInfo = {
  @ocaml.doc("<p>Unique identifier of the changeset that is updated a changeset.</p>")
  updatedByChangesetId: option<stringValue>,
  @ocaml.doc("<p>Unique identifier of the changeset that is updated.</p>")
  updatesChangesetId: option<stringValue>,
  @ocaml.doc("<p>Tags associated with the changeset.</p>") changesetLabels: option<stringMap>,
  @ocaml.doc("<p>The structure with error messages.</p>") errorInfo: option<errorInfo>,
  @ocaml.doc("<p>The status of changeset creation operation.</p>") status: option<changesetStatus>,
  @ocaml.doc("<p>The timestamp at which the changeset was created in FinSpace.</p>")
  createTimestamp: option<timestamp_>,
  @ocaml.doc("<p>Structure of the source file(s).</p>") formatParams: option<stringMap>,
  @ocaml.doc("<p>Format type of the input files loaded into the changeset.</p>")
  formatType: option<formatType>,
  @ocaml.doc("<p>Source path from which the files to create the changeset are sourced.</p>")
  sourceParams: option<stringMap>,
  @ocaml.doc("<p>Type of the data source from which the files to create the changeset are sourced.</p>
         <ul>
            <li>
               <p>
                  <code>S3</code> - Amazon S3.</p>
            </li>
         </ul>")
  sourceType: option<sourceType>,
  @ocaml.doc("<p>Change type indicates how a changeset is applied to a dataset.</p>
         <ul>
            <li>
               <p>
                  <code>REPLACE</code> - Changeset is considered as a replacement to all prior loaded
          changesets.</p>
            </li>
            <li>
               <p>
                  <code>APPEND</code> - Changeset is considered as an addition to the end of all prior
          loaded changesets.</p>
            </li>
            <li>
               <p>
                  <code>MODIFY</code> - Changeset is considered as a replacement to a specific prior
          ingested changeset.</p>
            </li>
         </ul>")
  changeType: option<changeType>,
  @ocaml.doc(
    "<p>The unique identifier for the FinSpace dataset in which the changeset is created.</p>"
  )
  datasetId: option<idType>,
  @ocaml.doc("<p>The ARN identifier of the changeset.</p>") changesetArn: option<arn>,
  @ocaml.doc("<p>Unique identifier for a changeset.</p>") id: option<idType>,
}
@ocaml.doc("<p> The FinSpace APIs let you take actions inside the FinSpace environment.  </p>")
module GetWorkingLocation = {
  type t
  type request = {
    @ocaml.doc("<p>Specify the type of the working location.</p>
         <ul>
            <li>
               <p>
                  <code>SAGEMAKER</code> - Use the Amazon S3 location as a temporary location to store data content when
          working with FinSpace Notebooks that run on SageMaker studio.</p>
            </li>
            <li>
               <p>
                  <code>INGESTION</code> - Use the Amazon S3 location as a staging location to copy your
          data content and then use the location with the changeset creation operation.</p>
            </li>
         </ul>")
    locationType: option<locationType>,
  }
  type response = {
    @ocaml.doc("<p>Returns the Amazon S3 bucket name for the working location.</p>")
    s3Bucket: option<stringValueLength1to63>,
    @ocaml.doc("<p>Returns the Amazon S3 Path for the working location.</p>")
    s3Path: option<stringValueLength1to1024>,
    @ocaml.doc("<p>Returns the Amazon S3 URI for the working location.</p>")
    s3Uri: option<stringValueLength1to1024>,
  }
  @module("@aws-sdk/client-finspace-api") @new
  external new: request => t = "GetWorkingLocationCommand"
  let make = (~locationType=?, ()) => new({locationType: locationType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetProgrammaticAccessCredentials = {
  type t
  type request = {
    @ocaml.doc("<p>The habanero environment identifier.</p>") environmentId: idType,
    @ocaml.doc("<p>The time duration in which the credentials remain valid. </p>")
    durationInMinutes: option<sessionDuration>,
  }
  type response = {
    @ocaml.doc("<p>Returns the duration in which the credentials will remain valid.</p>")
    durationInMinutes: option<sessionDuration>,
    @ocaml.doc("<p>Returns the programmatic credentials.</p>") credentials: option<credentials>,
  }
  @module("@aws-sdk/client-finspace-api") @new
  external new: request => t = "GetProgrammaticAccessCredentialsCommand"
  let make = (~environmentId, ~durationInMinutes=?, ()) =>
    new({environmentId: environmentId, durationInMinutes: durationInMinutes})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateChangeset = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata tags to apply to this changeset.</p>") tags: option<stringMap>,
    @ocaml.doc("<p>Options that define the structure of the source file(s).</p>")
    formatParams: option<stringMap>,
    @ocaml.doc("<p>Format type of the input files being loaded into the changeset.</p>")
    formatType: option<formatType>,
    @ocaml.doc("<p>Source path from which the files to create the changeset will be sourced.</p>")
    sourceParams: stringMap,
    @ocaml.doc("<p>Type of the data source from which the files to create the changeset will be
      sourced.</p>
         <ul>
            <li>
               <p>
                  <code>S3</code> - Amazon S3.</p>
            </li>
         </ul>")
    sourceType: sourceType,
    @ocaml.doc("<p>Option to indicate how a changeset will be applied to a dataset.</p>
         <ul>
            <li>
               <p>
                  <code>REPLACE</code> - Changeset will be considered as a replacement to all prior
          loaded changesets.</p>
            </li>
            <li>
               <p>
                  <code>APPEND</code> - Changeset will be considered as an addition to the end of all
          prior loaded changesets.</p>
            </li>
         </ul>")
    changeType: changeType,
    @ocaml.doc("<p>The unique identifier for the FinSpace dataset in which the changeset will be
      created.</p>")
    datasetId: idType,
  }
  type response = {
    @ocaml.doc("<p>Returns the changeset details.</p>") changeset: option<changesetInfo>,
  }
  @module("@aws-sdk/client-finspace-api") @new external new: request => t = "CreateChangesetCommand"
  let make = (
    ~sourceParams,
    ~sourceType,
    ~changeType,
    ~datasetId,
    ~tags=?,
    ~formatParams=?,
    ~formatType=?,
    (),
  ) =>
    new({
      tags: tags,
      formatParams: formatParams,
      formatType: formatType,
      sourceParams: sourceParams,
      sourceType: sourceType,
      changeType: changeType,
      datasetId: datasetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
