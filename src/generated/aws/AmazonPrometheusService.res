type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type workspaceStatusCode = [@as("CREATION_FAILED") #CREATION_FAILED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type workspaceId = string
type workspaceArn = string
type workspaceAlias = string

type validationExceptionReason = [@as("OTHER") #OTHER | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED | @as("CANNOT_PARSE") #CANNOT_PARSE | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION]
type validationExceptionField = {
@as("message") message: option<apiString>,
@as("name") name: option<apiString>
}
type uri = string
exception ThrottlingException;
exception ServiceQuotaExceededException;
exception ResourceNotFoundException;
type paginationToken = string
exception InternalServerException;
type idempotencyToken = string
exception ConflictException;
type clientType;
@module("@aws-sdk/client-aps") @new external createClient: unit => clientType = "AmazonPrometheusServiceClient";
exception AccessDeniedException;
type workspaceStatus = {
@as("statusCode") statusCode: option<workspaceStatusCode>
}
type validationExceptionFieldList = array<validationExceptionField>
type workspaceSummary = {
@as("createdAt") createdAt: option<apiTimestamp>,
@as("status") status: option<workspaceStatus>,
@as("arn") arn: option<workspaceArn>,
@as("alias") alias: workspaceAlias,
@as("workspaceId") workspaceId: option<workspaceId>
}
type workspaceDescription = {
@as("createdAt") createdAt: option<apiTimestamp>,
@as("prometheusEndpoint") prometheusEndpoint: uri,
@as("status") status: option<workspaceStatus>,
@as("arn") arn: option<workspaceArn>,
@as("alias") alias: workspaceAlias,
@as("workspaceId") workspaceId: option<workspaceId>
}
exception ValidationException;
type workspaceSummaryList = array<workspaceSummary>
module UpdateWorkspaceAlias = {
  type t;
  type request = {
@as("clientToken") clientToken: idempotencyToken,
@as("alias") alias: workspaceAlias,
@as("workspaceId") workspaceId: option<workspaceId>
}
  @module("@aws-sdk/client-aps") @new external new_: (Js.Promise.t<request>) => t = "UpdateWorkspaceAliasCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteWorkspace = {
  type t;
  type request = {
@as("clientToken") clientToken: idempotencyToken,
@as("workspaceId") workspaceId: option<workspaceId>
}
  @module("@aws-sdk/client-aps") @new external new_: (Js.Promise.t<request>) => t = "DeleteWorkspaceCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateWorkspace = {
  type t;
  type request = {
@as("clientToken") clientToken: idempotencyToken,
@as("alias") alias: workspaceAlias
}
type response = {
@as("status") status: option<workspaceStatus>,
@as("arn") arn: option<workspaceArn>,
@as("workspaceId") workspaceId: option<workspaceId>
}
  @module("@aws-sdk/client-aps") @new external new_: (Js.Promise.t<request>) => t = "CreateWorkspaceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkspace = {
  type t;
  type request = {
@as("workspaceId") workspaceId: option<workspaceId>
}
type response = {
@as("workspace") workspace: option<workspaceDescription>
}
  @module("@aws-sdk/client-aps") @new external new_: (Js.Promise.t<request>) => t = "DescribeWorkspaceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWorkspaces = {
  type t;
  type request = {
@as("maxResults") maxResults: apiInteger,
@as("alias") alias: workspaceAlias,
@as("nextToken") nextToken: paginationToken
}
type response = {
@as("nextToken") nextToken: paginationToken,
@as("workspaces") workspaces: option<workspaceSummaryList>
}
  @module("@aws-sdk/client-aps") @new external new_: (Js.Promise.t<request>) => t = "ListWorkspacesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}
