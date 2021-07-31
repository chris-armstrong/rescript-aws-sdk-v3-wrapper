type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-aps") @new external createClient: unit => awsServiceClient = "AmazonPrometheusServiceClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type workspaceStatusCode = [@as("CREATION_FAILED") #CREATION_FAILED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type workspaceId = string
type workspaceArn = string
type workspaceAlias = string

type validationExceptionReason = [@as("OTHER") #OTHER | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED | @as("CANNOT_PARSE") #CANNOT_PARSE | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION]
type validationExceptionField = {
message: baseString,
  name: baseString
}
type uri = string
type paginationToken = string
type idempotencyToken = string

type workspaceStatus = {
statusCode: workspaceStatusCode
}
type validationExceptionFieldList = array<validationExceptionField>
type workspaceSummary = {
createdAt: baseTimestamp,
  status: workspaceStatus,
  arn: workspaceArn,
  alias: option<workspaceAlias>,
  workspaceId: workspaceId
}
type workspaceDescription = {
createdAt: baseTimestamp,
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
maxResults: option<baseInteger>,
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
