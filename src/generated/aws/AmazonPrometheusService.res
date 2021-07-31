type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type workspaceStatusCode = [@as("CREATION_FAILED") #CREATIONFAILED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type workspaceId = string
type workspaceArn = string
type workspaceAlias = string

type validationExceptionReason = [@as("OTHER") #OTHER | @as("FIELD_VALIDATION_FAILED") #FIELDVALIDATIONFAILED | @as("CANNOT_PARSE") #CANNOTPARSE | @as("UNKNOWN_OPERATION") #UNKNOWNOPERATION]
type validationExceptionField = {
message: string_,
name: string_
}
type uri = string
type paginationToken = string
type idempotencyToken = string
type awsServiceClient;
@module("@aws-sdk/client-aps") @new external createClient: unit => awsServiceClient = "AmazonPrometheusServiceClient";
type workspaceStatus = {
statusCode: workspaceStatusCode
}
type validationExceptionFieldList = array<validationExceptionField>
type workspaceSummary = {
createdAt: timestamp_,
status: workspaceStatus,
arn: workspaceArn,
alias: option<workspaceAlias>,
workspaceId: workspaceId
}
type workspaceDescription = {
createdAt: timestamp_,
prometheusEndpoint: option<uri>,
status: workspaceStatus,
arn: workspaceArn,
alias: option<workspaceAlias>,
workspaceId: workspaceId
}
type workspaceSummaryList = array<workspaceSummary>
module UpdateWorkspaceAlias = {
  type t;
  type request = {
clientToken: option<idempotencyToken>,
alias: option<workspaceAlias>,
workspaceId: workspaceId
}
  
  @module("@aws-sdk/client-aps") @new external new_: (request) => t = "UpdateWorkspaceAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteWorkspace = {
  type t;
  type request = {
clientToken: option<idempotencyToken>,
workspaceId: workspaceId
}
  
  @module("@aws-sdk/client-aps") @new external new_: (request) => t = "DeleteWorkspaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CreateWorkspace = {
  type t;
  type request = {
clientToken: option<idempotencyToken>,
alias: option<workspaceAlias>
}
  type response = {
status: workspaceStatus,
arn: workspaceArn,
workspaceId: workspaceId
}
  @module("@aws-sdk/client-aps") @new external new_: (request) => t = "CreateWorkspaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkspace = {
  type t;
  type request = {
workspaceId: workspaceId
}
  type response = {
workspace: workspaceDescription
}
  @module("@aws-sdk/client-aps") @new external new_: (request) => t = "DescribeWorkspaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListWorkspaces = {
  type t;
  type request = {
maxResults: option<integer_>,
alias: option<workspaceAlias>,
nextToken: option<paginationToken>
}
  type response = {
nextToken: option<paginationToken>,
workspaces: workspaceSummaryList
}
  @module("@aws-sdk/client-aps") @new external new_: (request) => t = "ListWorkspacesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
