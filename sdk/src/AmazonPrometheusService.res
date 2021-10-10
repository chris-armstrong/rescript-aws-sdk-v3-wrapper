type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-aps") @new
external createClient: unit => awsServiceClient = "AmazonPrometheusServiceClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
@ocaml.doc("State of a workspace.")
type workspaceStatusCode = [
  | @as("CREATION_FAILED") #CREATION_FAILED
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
@ocaml.doc("A workspace ID.") type workspaceId = string
@ocaml.doc("An ARN identifying a Workspace.") type workspaceArn = string
@ocaml.doc("A user-assigned workspace alias.") type workspaceAlias = string

@ocaml.doc("Possible reasons a request failed validation.")
type validationExceptionReason = [
  | @as("OTHER") #OTHER
  | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED
  | @as("CANNOT_PARSE") #CANNOT_PARSE
  | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION
]
@ocaml.doc(
  "Stores information about a field passed inside a request that resulted in an exception."
)
type validationExceptionField = {
  @ocaml.doc("Message describing why the field failed validation.") message: baseString,
  @ocaml.doc("The field name.") name: baseString,
}
type uri = string
@ocaml.doc("A token used to access the next page in a paginated result set.")
type paginationToken = string
@ocaml.doc("An identifier used to ensure the idempotency of a write request.")
type idempotencyToken = string
@ocaml.doc("Amazon Managed Service for Prometheus")
@ocaml.doc("Represents the status of a workspace.")
type workspaceStatus = {
  @ocaml.doc("Status code of this workspace.") statusCode: workspaceStatusCode,
}
@ocaml.doc("A list of fields.") type validationExceptionFieldList = array<validationExceptionField>
@ocaml.doc("Represents a summary of the properties of a workspace.")
type workspaceSummary = {
  @ocaml.doc("The time when the workspace was created.") createdAt: baseTimestamp,
  @ocaml.doc("The status of this workspace.") status: workspaceStatus,
  @ocaml.doc("The AmazonResourceName of this workspace.") arn: workspaceArn,
  @ocaml.doc("Alias of this workspace.") alias: option<workspaceAlias>,
  @ocaml.doc("Unique string identifying this workspace.") workspaceId: workspaceId,
}
@ocaml.doc("Represents the properties of a workspace.")
type workspaceDescription = {
  @ocaml.doc("The time when the workspace was created.") createdAt: baseTimestamp,
  @ocaml.doc("Prometheus endpoint URI.") prometheusEndpoint: option<uri>,
  @ocaml.doc("The status of this workspace.") status: workspaceStatus,
  @ocaml.doc("The Amazon Resource Name (ARN) of this workspace.") arn: workspaceArn,
  @ocaml.doc("Alias of this workspace.") alias: option<workspaceAlias>,
  @ocaml.doc("Unique string identifying this workspace.") workspaceId: workspaceId,
}
@ocaml.doc("A list of workspace summaries.") type workspaceSummaryList = array<workspaceSummary>
module UpdateWorkspaceAlias = {
  type t
  @ocaml.doc("Represents the input of an UpdateWorkspaceAlias operation.")
  type request = {
    @ocaml.doc(
      "Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request."
    )
    clientToken: option<idempotencyToken>,
    @ocaml.doc("The new alias of the workspace.") alias: option<workspaceAlias>,
    @ocaml.doc("The ID of the workspace being updated.") workspaceId: workspaceId,
  }

  @module("@aws-sdk/client-aps") @new external new: request => t = "UpdateWorkspaceAliasCommand"
  let make = (~workspaceId, ~clientToken=?, ~alias=?, ()) =>
    new({clientToken: clientToken, alias: alias, workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteWorkspace = {
  type t
  @ocaml.doc("Represents the input of a DeleteWorkspace operation.")
  type request = {
    @ocaml.doc(
      "Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request."
    )
    clientToken: option<idempotencyToken>,
    @ocaml.doc("The ID of the workspace to delete.") workspaceId: workspaceId,
  }

  @module("@aws-sdk/client-aps") @new external new: request => t = "DeleteWorkspaceCommand"
  let make = (~workspaceId, ~clientToken=?, ()) =>
    new({clientToken: clientToken, workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateWorkspace = {
  type t
  @ocaml.doc("Represents the input of a CreateWorkspace operation.")
  type request = {
    @ocaml.doc(
      "Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request."
    )
    clientToken: option<idempotencyToken>,
    @ocaml.doc(
      "An optional user-assigned alias for this workspace. This alias is for user reference and does not need to be unique."
    )
    alias: option<workspaceAlias>,
  }
  @ocaml.doc("Represents the output of a CreateWorkspace operation.")
  type response = {
    @ocaml.doc("The status of the workspace that was just created (usually CREATING).")
    status: workspaceStatus,
    @ocaml.doc("The ARN of the workspace that was just created.") arn: workspaceArn,
    @ocaml.doc("The generated ID of the workspace that was just created.") workspaceId: workspaceId,
  }
  @module("@aws-sdk/client-aps") @new external new: request => t = "CreateWorkspaceCommand"
  let make = (~clientToken=?, ~alias=?, ()) => new({clientToken: clientToken, alias: alias})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorkspace = {
  type t
  @ocaml.doc("Represents the input of a DescribeWorkspace operation.")
  type request = {@ocaml.doc("The ID of the workspace to describe.") workspaceId: workspaceId}
  @ocaml.doc("Represents the output of a DescribeWorkspace operation.")
  type response = {
    @ocaml.doc("The properties of the selected workspace.") workspace: workspaceDescription,
  }
  @module("@aws-sdk/client-aps") @new external new: request => t = "DescribeWorkspaceCommand"
  let make = (~workspaceId, ()) => new({workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorkspaces = {
  type t
  @ocaml.doc("Represents the input of a ListWorkspaces operation.")
  type request = {
    @ocaml.doc("Maximum results to return in response (default=100, maximum=1000).")
    maxResults: option<baseInteger>,
    @ocaml.doc(
      "Optional filter for workspace alias. Only the workspaces with aliases that begin with this value will be returned."
    )
    alias: option<workspaceAlias>,
    @ocaml.doc(
      "Pagination token to request the next page in a paginated list. This token is obtained from the output of the previous ListWorkspaces request."
    )
    nextToken: option<paginationToken>,
  }
  @ocaml.doc("Represents the output of a ListWorkspaces operation.")
  type response = {
    @ocaml.doc("Pagination token to use when requesting the next page in this list.")
    nextToken: option<paginationToken>,
    @ocaml.doc("The list of existing workspaces, including those undergoing creation or deletion.")
    workspaces: workspaceSummaryList,
  }
  @module("@aws-sdk/client-aps") @new external new: request => t = "ListWorkspacesCommand"
  let make = (~maxResults=?, ~alias=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, alias: alias, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
