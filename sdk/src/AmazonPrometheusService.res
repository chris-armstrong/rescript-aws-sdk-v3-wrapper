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
type tagValue = string
type tagKey = string
@ocaml.doc("State of a namespace.")
type ruleGroupsNamespaceStatusCode = [
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("CREATION_FAILED") #CREATION_FAILED
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
@ocaml.doc("The namespace name that the rule group belong to.")
type ruleGroupsNamespaceName = string
@ocaml.doc("The rule groups namespace data.") type ruleGroupsNamespaceData = NodeJs.Buffer.t
@ocaml.doc("An ARN identifying a rule groups namespace.") type ruleGroupsNamespaceArn = string

@ocaml.doc("A token used to access the next page in a paginated result set.")
type paginationToken = string
@ocaml.doc("An identifier used to ensure the idempotency of a write request.")
type idempotencyToken = string
@ocaml.doc("State of an alert manager definition.")
type alertManagerDefinitionStatusCode = [
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("CREATION_FAILED") #CREATION_FAILED
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
@ocaml.doc("The alert manager definition data.") type alertManagerDefinitionData = NodeJs.Buffer.t

@ocaml.doc("Represents the status of a workspace.")
type workspaceStatus = {
  @ocaml.doc("Status code of this workspace.") statusCode: workspaceStatusCode,
}
@ocaml.doc("A list of fields.") type validationExceptionFieldList = array<validationExceptionField>
@ocaml.doc("The list of tags assigned to the resource.") type tagMap = Js.Dict.t<tagValue>
type tagKeys = array<tagKey>
@ocaml.doc("Represents the status of a namespace.")
type ruleGroupsNamespaceStatus = {
  @ocaml.doc("The reason for failure if any.") statusReason: option<baseString>,
  @ocaml.doc("Status code of this namespace.") statusCode: ruleGroupsNamespaceStatusCode,
}
@ocaml.doc("Represents the status of a definition.")
type alertManagerDefinitionStatus = {
  @ocaml.doc("The reason for failure if any.") statusReason: option<baseString>,
  @ocaml.doc("Status code of this definition.") statusCode: alertManagerDefinitionStatusCode,
}
@ocaml.doc("Represents a summary of the properties of a workspace.")
type workspaceSummary = {
  @ocaml.doc("The tags of this workspace.") tags: option<tagMap>,
  @ocaml.doc("The time when the workspace was created.") createdAt: baseTimestamp,
  @ocaml.doc("The status of this workspace.") status: workspaceStatus,
  @ocaml.doc("The AmazonResourceName of this workspace.") arn: workspaceArn,
  @ocaml.doc("Alias of this workspace.") alias: option<workspaceAlias>,
  @ocaml.doc("Unique string identifying this workspace.") workspaceId: workspaceId,
}
@ocaml.doc("Represents the properties of a workspace.")
type workspaceDescription = {
  @ocaml.doc("The tags of this workspace.") tags: option<tagMap>,
  @ocaml.doc("The time when the workspace was created.") createdAt: baseTimestamp,
  @ocaml.doc("Prometheus endpoint URI.") prometheusEndpoint: option<uri>,
  @ocaml.doc("The status of this workspace.") status: workspaceStatus,
  @ocaml.doc("The Amazon Resource Name (ARN) of this workspace.") arn: workspaceArn,
  @ocaml.doc("Alias of this workspace.") alias: option<workspaceAlias>,
  @ocaml.doc("Unique string identifying this workspace.") workspaceId: workspaceId,
}
@ocaml.doc("Represents a summary of the rule groups namespace.")
type ruleGroupsNamespaceSummary = {
  @ocaml.doc("The tags of this rule groups namespace.") tags: option<tagMap>,
  @ocaml.doc("The time when the rule groups namespace was modified.") modifiedAt: baseTimestamp,
  @ocaml.doc("The time when the rule groups namespace was created.") createdAt: baseTimestamp,
  @ocaml.doc("The status of rule groups namespace.") status: ruleGroupsNamespaceStatus,
  @ocaml.doc("The rule groups namespace name.") name: ruleGroupsNamespaceName,
  @ocaml.doc("The Amazon Resource Name (ARN) of this rule groups namespace.")
  arn: ruleGroupsNamespaceArn,
}
@ocaml.doc("Represents a description of the rule groups namespace.")
type ruleGroupsNamespaceDescription = {
  @ocaml.doc("The tags of this rule groups namespace.") tags: option<tagMap>,
  @ocaml.doc("The time when the rule groups namespace was modified.") modifiedAt: baseTimestamp,
  @ocaml.doc("The time when the rule groups namespace was created.") createdAt: baseTimestamp,
  @ocaml.doc("The rule groups namespace data.") data: ruleGroupsNamespaceData,
  @ocaml.doc("The status of rule groups namespace.") status: ruleGroupsNamespaceStatus,
  @ocaml.doc("The rule groups namespace name.") name: ruleGroupsNamespaceName,
  @ocaml.doc("The Amazon Resource Name (ARN) of this rule groups namespace.")
  arn: ruleGroupsNamespaceArn,
}
@ocaml.doc("Represents the properties of an alert manager definition.")
type alertManagerDefinitionDescription = {
  @ocaml.doc("The time when the alert manager definition was modified.") modifiedAt: baseTimestamp,
  @ocaml.doc("The time when the alert manager definition was created.") createdAt: baseTimestamp,
  @ocaml.doc("The alert manager definition.") data: alertManagerDefinitionData,
  @ocaml.doc("The status of alert manager definition.") status: alertManagerDefinitionStatus,
}
@ocaml.doc("A list of workspace summaries.") type workspaceSummaryList = array<workspaceSummary>
@ocaml.doc("A list of rule groups namespace summary.")
type ruleGroupsNamespaceSummaryList = array<ruleGroupsNamespaceSummary>
@ocaml.doc("Amazon Managed Service for Prometheus")
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
  type response = {.}
  @module("@aws-sdk/client-aps") @new external new: request => t = "UpdateWorkspaceAliasCommand"
  let make = (~workspaceId, ~clientToken=?, ~alias=?, ()) => new({clientToken, alias, workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("One or more tag keys") tagKeys: tagKeys,
    @ocaml.doc("The ARN of the resource.") resourceArn: baseString,
  }
  type response = {.}
  @module("@aws-sdk/client-aps") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    tags: tagMap,
    @ocaml.doc("The ARN of the resource.") resourceArn: baseString,
  }
  type response = {.}
  @module("@aws-sdk/client-aps") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutRuleGroupsNamespace = {
  type t
  @ocaml.doc("Represents the input of a PutRuleGroupsNamespace operation.")
  type request = {
    @ocaml.doc(
      "Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request."
    )
    clientToken: option<idempotencyToken>,
    @ocaml.doc("The namespace data that define the rule groups.") data: ruleGroupsNamespaceData,
    @ocaml.doc("The rule groups namespace name.") name: ruleGroupsNamespaceName,
    @ocaml.doc("The ID of the workspace in which to update the rule group namespace.")
    workspaceId: workspaceId,
  }
  @ocaml.doc("Represents the output of a PutRuleGroupsNamespace operation.")
  type response = {
    @ocaml.doc("The tags of this rule groups namespace.") tags: option<tagMap>,
    @ocaml.doc("The status of rule groups namespace.") status: ruleGroupsNamespaceStatus,
    @ocaml.doc("The Amazon Resource Name (ARN) of this rule groups namespace.")
    arn: ruleGroupsNamespaceArn,
    @ocaml.doc("The rule groups namespace name.") name: ruleGroupsNamespaceName,
  }
  @module("@aws-sdk/client-aps") @new external new: request => t = "PutRuleGroupsNamespaceCommand"
  let make = (~data, ~name, ~workspaceId, ~clientToken=?, ()) =>
    new({clientToken, data, name, workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutAlertManagerDefinition = {
  type t
  @ocaml.doc("Represents the input of a PutAlertManagerDefinition operation.")
  type request = {
    @ocaml.doc(
      "Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request."
    )
    clientToken: option<idempotencyToken>,
    @ocaml.doc("The alert manager definition data.") data: alertManagerDefinitionData,
    @ocaml.doc("The ID of the workspace in which to update the alert manager definition.")
    workspaceId: workspaceId,
  }
  @ocaml.doc("Represents the output of a PutAlertManagerDefinition operation.")
  type response = {
    @ocaml.doc("The status of alert manager definition.") status: alertManagerDefinitionStatus,
  }
  @module("@aws-sdk/client-aps") @new
  external new: request => t = "PutAlertManagerDefinitionCommand"
  let make = (~data, ~workspaceId, ~clientToken=?, ()) => new({clientToken, data, workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  type request = {@ocaml.doc("The ARN of the resource.") resourceArn: baseString}
  type response = {tags: option<tagMap>}
  @module("@aws-sdk/client-aps") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
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
  type response = {.}
  @module("@aws-sdk/client-aps") @new external new: request => t = "DeleteWorkspaceCommand"
  let make = (~workspaceId, ~clientToken=?, ()) => new({clientToken, workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteRuleGroupsNamespace = {
  type t
  @ocaml.doc("Represents the input of a DeleteRuleGroupsNamespace operation.")
  type request = {
    @ocaml.doc(
      "Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request."
    )
    clientToken: option<idempotencyToken>,
    @ocaml.doc("The rule groups namespace name.") name: ruleGroupsNamespaceName,
    @ocaml.doc("The ID of the workspace to delete rule group definition.") workspaceId: workspaceId,
  }
  type response = {.}
  @module("@aws-sdk/client-aps") @new
  external new: request => t = "DeleteRuleGroupsNamespaceCommand"
  let make = (~name, ~workspaceId, ~clientToken=?, ()) => new({clientToken, name, workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAlertManagerDefinition = {
  type t
  @ocaml.doc("Represents the input of a DeleteAlertManagerDefinition operation.")
  type request = {
    @ocaml.doc(
      "Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request."
    )
    clientToken: option<idempotencyToken>,
    @ocaml.doc("The ID of the workspace in which to delete the alert manager definition.")
    workspaceId: workspaceId,
  }
  type response = {.}
  @module("@aws-sdk/client-aps") @new
  external new: request => t = "DeleteAlertManagerDefinitionCommand"
  let make = (~workspaceId, ~clientToken=?, ()) => new({clientToken, workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateWorkspace = {
  type t
  @ocaml.doc("Represents the input of a CreateWorkspace operation.")
  type request = {
    @ocaml.doc("Optional, user-provided tags for this workspace.") tags: option<tagMap>,
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
    @ocaml.doc("The tags of this workspace.") tags: option<tagMap>,
    @ocaml.doc("The status of the workspace that was just created (usually CREATING).")
    status: workspaceStatus,
    @ocaml.doc("The ARN of the workspace that was just created.") arn: workspaceArn,
    @ocaml.doc("The generated ID of the workspace that was just created.") workspaceId: workspaceId,
  }
  @module("@aws-sdk/client-aps") @new external new: request => t = "CreateWorkspaceCommand"
  let make = (~tags=?, ~clientToken=?, ~alias=?, ()) => new({tags, clientToken, alias})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRuleGroupsNamespace = {
  type t
  @ocaml.doc("Represents the input of a CreateRuleGroupsNamespace operation.")
  type request = {
    @ocaml.doc("Optional, user-provided tags for this rule groups namespace.") tags: option<tagMap>,
    @ocaml.doc(
      "Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request."
    )
    clientToken: option<idempotencyToken>,
    @ocaml.doc("The namespace data that define the rule groups.") data: ruleGroupsNamespaceData,
    @ocaml.doc("The rule groups namespace name.") name: ruleGroupsNamespaceName,
    @ocaml.doc("The ID of the workspace in which to create the rule group namespace.")
    workspaceId: workspaceId,
  }
  @ocaml.doc("Represents the output of a CreateRuleGroupsNamespace operation.")
  type response = {
    @ocaml.doc("The tags of this rule groups namespace.") tags: option<tagMap>,
    @ocaml.doc("The status of rule groups namespace.") status: ruleGroupsNamespaceStatus,
    @ocaml.doc("The Amazon Resource Name (ARN) of this rule groups namespace.")
    arn: ruleGroupsNamespaceArn,
    @ocaml.doc("The rule groups namespace name.") name: ruleGroupsNamespaceName,
  }
  @module("@aws-sdk/client-aps") @new
  external new: request => t = "CreateRuleGroupsNamespaceCommand"
  let make = (~data, ~name, ~workspaceId, ~tags=?, ~clientToken=?, ()) =>
    new({tags, clientToken, data, name, workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateAlertManagerDefinition = {
  type t
  @ocaml.doc("Represents the input of a CreateAlertManagerDefinition operation.")
  type request = {
    @ocaml.doc(
      "Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request."
    )
    clientToken: option<idempotencyToken>,
    @ocaml.doc("The alert manager definition data.") data: alertManagerDefinitionData,
    @ocaml.doc("The ID of the workspace in which to create the alert manager definition.")
    workspaceId: workspaceId,
  }
  @ocaml.doc("Represents the output of a CreateAlertManagerDefinition operation.")
  type response = {
    @ocaml.doc("The status of alert manager definition.") status: alertManagerDefinitionStatus,
  }
  @module("@aws-sdk/client-aps") @new
  external new: request => t = "CreateAlertManagerDefinitionCommand"
  let make = (~data, ~workspaceId, ~clientToken=?, ()) => new({clientToken, data, workspaceId})
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
module DescribeRuleGroupsNamespace = {
  type t
  @ocaml.doc("Represents the input of a DescribeRuleGroupsNamespace operation.")
  type request = {
    @ocaml.doc("The rule groups namespace.") name: ruleGroupsNamespaceName,
    @ocaml.doc("The ID of the workspace to describe.") workspaceId: workspaceId,
  }
  @ocaml.doc("Represents the output of a DescribeRuleGroupsNamespace operation.")
  type response = {
    @ocaml.doc("The selected rule groups namespace.")
    ruleGroupsNamespace: ruleGroupsNamespaceDescription,
  }
  @module("@aws-sdk/client-aps") @new
  external new: request => t = "DescribeRuleGroupsNamespaceCommand"
  let make = (~name, ~workspaceId, ()) => new({name, workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAlertManagerDefinition = {
  type t
  @ocaml.doc("Represents the input of a DescribeAlertManagerDefinition operation.")
  type request = {@ocaml.doc("The ID of the workspace to describe.") workspaceId: workspaceId}
  @ocaml.doc("Represents the output of a DescribeAlertManagerDefinition operation.")
  type response = {
    @ocaml.doc("The properties of the selected workspace's alert manager definition.")
    alertManagerDefinition: alertManagerDefinitionDescription,
  }
  @module("@aws-sdk/client-aps") @new
  external new: request => t = "DescribeAlertManagerDefinitionCommand"
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
  let make = (~maxResults=?, ~alias=?, ~nextToken=?, ()) => new({maxResults, alias, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRuleGroupsNamespaces = {
  type t
  @ocaml.doc("Represents the input of a ListRuleGroupsNamespaces operation.")
  type request = {
    @ocaml.doc("Maximum results to return in response (default=100, maximum=1000).")
    maxResults: option<baseInteger>,
    @ocaml.doc(
      "Pagination token to request the next page in a paginated list. This token is obtained from the output of the previous ListRuleGroupsNamespaces request."
    )
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "Optional filter for rule groups namespace name. Only the rule groups namespace that begin with this value will be returned."
    )
    name: option<ruleGroupsNamespaceName>,
    @ocaml.doc("The ID of the workspace.") workspaceId: workspaceId,
  }
  @ocaml.doc("Represents the output of a ListRuleGroupsNamespaces operation.")
  type response = {
    @ocaml.doc("Pagination token to use when requesting the next page in this list.")
    nextToken: option<paginationToken>,
    @ocaml.doc("The list of the selected rule groups namespaces.")
    ruleGroupsNamespaces: ruleGroupsNamespaceSummaryList,
  }
  @module("@aws-sdk/client-aps") @new external new: request => t = "ListRuleGroupsNamespacesCommand"
  let make = (~workspaceId, ~maxResults=?, ~nextToken=?, ~name=?, ()) =>
    new({maxResults, nextToken, name, workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
