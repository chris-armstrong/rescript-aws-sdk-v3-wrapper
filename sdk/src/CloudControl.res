type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-cloudcontrolapi") @new
external createClient: unit => awsServiceClient = "CloudControlClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type typeVersionId = string
type typeName = string
type timestamp_ = Js.Date.t
type statusMessage = string
type roleArn = string
type requestToken = string
type properties = string
type patchDocument = string
type operationStatus = [
  | @as("CANCEL_COMPLETE") #CANCEL_COMPLETE
  | @as("CANCEL_IN_PROGRESS") #CANCEL_IN_PROGRESS
  | @as("FAILED") #FAILED
  | @as("SUCCESS") #SUCCESS
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("PENDING") #PENDING
]
type operation = [@as("UPDATE") #UPDATE | @as("DELETE") #DELETE | @as("CREATE") #CREATE]
type nextToken = string
type maxResults = int
type identifier = string
type handlerNextToken = string
type handlerErrorCode = [
  | @as("InternalFailure") #InternalFailure
  | @as("NetworkFailure") #NetworkFailure
  | @as("ServiceTimeout") #ServiceTimeout
  | @as("ServiceInternalError") #ServiceInternalError
  | @as("GeneralServiceException") #GeneralServiceException
  | @as("NotStabilized") #NotStabilized
  | @as("ServiceLimitExceeded") #ServiceLimitExceeded
  | @as("Throttling") #Throttling
  | @as("ResourceConflict") #ResourceConflict
  | @as("NotFound") #NotFound
  | @as("AlreadyExists") #AlreadyExists
  | @as("InvalidCredentials") #InvalidCredentials
  | @as("AccessDenied") #AccessDenied
  | @as("InvalidRequest") #InvalidRequest
  | @as("NotUpdatable") #NotUpdatable
]
type errorMessage = string
type clientToken = string
@ocaml.doc("<p>Represents information about a provisioned resource.</p>")
type resourceDescription = {
  @ocaml.doc("<p>A list of the resource properties and their current values.</p>") @as("Properties")
  properties: option<properties>,
  @ocaml.doc("<p>The primary identifier for the resource.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html\">Identifying
        resources</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>")
  @as("Identifier")
  identifier: option<identifier>,
}
@ocaml.doc("<p>Represents the current status of a resource operation request. For more information, see
        <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html\">Managing resource operation requests</a> in the
        <i>Amazon Web Services Cloud Control API User Guide</i>.</p>")
type progressEvent = {
  @ocaml.doc("<p>When to next request the status of this resource operation request.</p>")
  @as("RetryAfter")
  retryAfter: option<timestamp_>,
  @ocaml.doc("<p>For requests with a status of <code>FAILED</code>, the associated error code.</p>
         <p>For error code definitions, see <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-test-contract-errors.html\">Handler error codes</a> in the <i>CloudFormation Command
        Line Interface User Guide for Extension Development</i>.</p>")
  @as("ErrorCode")
  errorCode: option<handlerErrorCode>,
  @ocaml.doc("<p>Any message explaining the current status.</p>") @as("StatusMessage")
  statusMessage: option<statusMessage>,
  @ocaml.doc("<p>A JSON string containing the resource model, consisting of each resource property and its
      current value.</p>")
  @as("ResourceModel")
  resourceModel: option<properties>,
  @ocaml.doc("<p>When the resource operation request was initiated.</p>") @as("EventTime")
  eventTime: option<timestamp_>,
  @ocaml.doc("<p>The current status of the resource operation request.</p>
         <ul>
            <li>
               <p>
                  <code>PENDING</code>: The resource operation hasn't yet started.</p>
            </li>
            <li>
               <p>
                  <code>IN_PROGRESS</code>: The resource operation is currently in progress.</p>
            </li>
            <li>
               <p>
                  <code>SUCCESS</code>: The resource operation has successfully completed.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code>: The resource operation has failed. Refer to the error code and
          status message for more information.</p>
            </li>
            <li>
               <p>
                  <code>CANCEL_IN_PROGRESS</code>: The resource operation is in the process of being
          canceled.</p>
            </li>
            <li>
               <p>
                  <code>CANCEL_COMPLETE</code>: The resource operation has been canceled.</p>
            </li>
         </ul>")
  @as("OperationStatus")
  operationStatus: option<operationStatus>,
  @ocaml.doc("<p>The resource operation type.</p>") @as("Operation") operation: option<operation>,
  @ocaml.doc("<p>The unique token representing this resource operation request.</p>
         <p>Use the <code>RequestToken</code> with <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html\">GetResourceRequestStatus</a> to return the current status of a resource operation
      request.</p>")
  @as("RequestToken")
  requestToken: option<requestToken>,
  @ocaml.doc("<p>The primary identifier for the resource.</p>
         <note>
            <p>In some cases, the resource identifier may be available before the resource operation
        has reached a status of <code>SUCCESS</code>.</p>
         </note>")
  @as("Identifier")
  identifier: option<identifier>,
  @ocaml.doc("<p>The name of the resource type used in the operation.</p>") @as("TypeName")
  typeName: option<typeName>,
}
type operations = array<operation>
type operationStatuses = array<operationStatus>
type resourceRequestStatusSummaries = array<progressEvent>
@ocaml.doc("<p>The filter criteria to use in determining the requests returned.</p>")
type resourceRequestStatusFilter = {
  @ocaml.doc("<p>The operation statuses to include in the filter.</p>
         <ul>
            <li>
               <p>
                  <code>PENDING</code>: The operation has been requested, but not yet initiated.</p>
            </li>
            <li>
               <p>
                  <code>IN_PROGRESS</code>: The operation is in progress.</p>
            </li>
            <li>
               <p>
                  <code>SUCCESS</code>: The operation completed.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code>: The operation failed.</p>
            </li>
            <li>
               <p>
                  <code>CANCEL_IN_PROGRESS</code>: The operation is in the process of being
          canceled.</p>
            </li>
            <li>
               <p>
                  <code>CANCEL_COMPLETE</code>: The operation has been canceled.</p>
            </li>
         </ul>")
  @as("OperationStatuses")
  operationStatuses: option<operationStatuses>,
  @ocaml.doc("<p>The operation types to include in the filter.</p>") @as("Operations")
  operations: option<operations>,
}
type resourceDescriptions = array<resourceDescription>
@ocaml.doc("<p>For more information about Amazon Web Services Cloud Control API, see the <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/what-is-cloudcontrolapi.html\">Amazon Web Services Cloud Control API User
        Guide</a>.</p>")
module UpdateResource = {
  type t
  type request = {
    @ocaml.doc("<p>A JavaScript Object Notation (JSON) document listing the patch operations that represent
      the updates to apply to the current resource properties. For details, see <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-update.html#resource-operations-update-patch\">Composing the patch document</a> in the <i>Amazon Web Services Cloud Control API User
      Guide</i>.</p>")
    @as("PatchDocument")
    patchDocument: patchDocument,
    @ocaml.doc("<p>The identifier for the resource.</p>
         <p>You can specify the primary identifier, or any secondary identifier defined for the resource type in its resource schema. You can only specify one identifier. Primary identifiers can be specified as a string or JSON; secondary identifiers must be specified as JSON.</p>
         <p>For compound primary identifiers (that is, one that consists of multiple resource properties strung together), to specify the primary identifier as a string, list the property values <i>in the order they are specified</i> in the primary identifier definition, separated by <code>|</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html\">Identifying resources</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>")
    @as("Identifier")
    identifier: identifier,
    @ocaml.doc("<p>A unique identifier to ensure the idempotency of the resource request. As a best practice, specify this token to ensure idempotency, so that Amazon Web Services Cloud Control API can accurately distinguish between request retries and new resource requests. You might retry a resource request to ensure that it was successfully received.</p>
         <p>A client token is valid for 36 hours once used. After that, a resource request with the same client token is treated as a new request.</p>
         <p>If you do not specify a client token, one is generated for inclusion in the request.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency\">Ensuring resource operation requests are unique</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role for Cloud Control API to use when performing this resource operation. The role specified must have the permissions required for this operation. The necessary permissions for each event handler are defined in the <code>
               <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers\">handlers</a>
            </code> section of the <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html\">resource type definition schema</a>.</p>
         <p>If you do not specify a role, Cloud Control API uses a temporary session created using your Amazon Web Services user credentials.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions\">Specifying credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc(
      "<p>For private resource types, the type version to use in this resource operation. If you do not specify a resource version, CloudFormation uses the default version.</p>"
    )
    @as("TypeVersionId")
    typeVersionId: option<typeVersionId>,
    @ocaml.doc("<p>The name of the resource type.</p>") @as("TypeName") typeName: typeName,
  }
  type response = {
    @ocaml.doc("<p>Represents the current status of the resource update request.</p>
         <p>Use the <code>RequestToken</code> of the <code>ProgressEvent</code> with <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html\">GetResourceRequestStatus</a> to return the current status of a resource operation
      request.</p>")
    @as("ProgressEvent")
    progressEvent: option<progressEvent>,
  }
  @module("@aws-sdk/client-cloudcontrolapi") @new
  external new: request => t = "UpdateResourceCommand"
  let make = (
    ~patchDocument,
    ~identifier,
    ~typeName,
    ~clientToken=?,
    ~roleArn=?,
    ~typeVersionId=?,
    (),
  ) => new({patchDocument, identifier, clientToken, roleArn, typeVersionId, typeName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResourceRequestStatus = {
  type t
  type request = {
    @ocaml.doc("<p>A unique token used to track the progress of the resource operation request.</p>
         <p>Request tokens are included in the <code>ProgressEvent</code> type returned by a resource
      operation request.</p>")
    @as("RequestToken")
    requestToken: requestToken,
  }
  type response = {
    @ocaml.doc("<p>Represents the current status of the resource operation request.</p>")
    @as("ProgressEvent")
    progressEvent: option<progressEvent>,
  }
  @module("@aws-sdk/client-cloudcontrolapi") @new
  external new: request => t = "GetResourceRequestStatusCommand"
  let make = (~requestToken, ()) => new({requestToken: requestToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResource = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the resource.</p>
         <p>You can specify the primary identifier, or any secondary identifier defined for the resource type in its resource schema. You can only specify one identifier. Primary identifiers can be specified as a string or JSON; secondary identifiers must be specified as JSON.</p>
         <p>For compound primary identifiers (that is, one that consists of multiple resource properties strung together), to specify the primary identifier as a string, list the property values <i>in the order they are specified</i> in the primary identifier definition, separated by <code>|</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html\">Identifying resources</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>")
    @as("Identifier")
    identifier: identifier,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role for Cloud Control API to use when performing this resource operation. The role specified must have the permissions required for this operation. The necessary permissions for each event handler are defined in the <code>
               <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers\">handlers</a>
            </code> section of the <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html\">resource type definition schema</a>.</p>
         <p>If you do not specify a role, Cloud Control API uses a temporary session created using your Amazon Web Services user credentials.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions\">Specifying credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc(
      "<p>For private resource types, the type version to use in this resource operation. If you do not specify a resource version, CloudFormation uses the default version.</p>"
    )
    @as("TypeVersionId")
    typeVersionId: option<typeVersionId>,
    @ocaml.doc("<p>The name of the resource type.</p>") @as("TypeName") typeName: typeName,
  }
  type response = {
    @as("ResourceDescription") resourceDescription: option<resourceDescription>,
    @ocaml.doc("<p>The name of the resource type.</p>") @as("TypeName") typeName: option<typeName>,
  }
  @module("@aws-sdk/client-cloudcontrolapi") @new external new: request => t = "GetResourceCommand"
  let make = (~identifier, ~typeName, ~roleArn=?, ~typeVersionId=?, ()) =>
    new({identifier, roleArn, typeVersionId, typeName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteResource = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the resource.</p>
         <p>You can specify the primary identifier, or any secondary identifier defined for the resource type in its resource schema. You can only specify one identifier. Primary identifiers can be specified as a string or JSON; secondary identifiers must be specified as JSON.</p>
         <p>For compound primary identifiers (that is, one that consists of multiple resource properties strung together), to specify the primary identifier as a string, list the property values <i>in the order they are specified</i> in the primary identifier definition, separated by <code>|</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html\">Identifying resources</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>")
    @as("Identifier")
    identifier: identifier,
    @ocaml.doc("<p>A unique identifier to ensure the idempotency of the resource request. As a best practice, specify this token to ensure idempotency, so that Amazon Web Services Cloud Control API can accurately distinguish between request retries and new resource requests. You might retry a resource request to ensure that it was successfully received.</p>
         <p>A client token is valid for 36 hours once used. After that, a resource request with the same client token is treated as a new request.</p>
         <p>If you do not specify a client token, one is generated for inclusion in the request.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency\">Ensuring resource operation requests are unique</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role for Cloud Control API to use when performing this resource operation. The role specified must have the permissions required for this operation. The necessary permissions for each event handler are defined in the <code>
               <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers\">handlers</a>
            </code> section of the <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html\">resource type definition schema</a>.</p>
         <p>If you do not specify a role, Cloud Control API uses a temporary session created using your Amazon Web Services user credentials.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions\">Specifying credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc(
      "<p>For private resource types, the type version to use in this resource operation. If you do not specify a resource version, CloudFormation uses the default version.</p>"
    )
    @as("TypeVersionId")
    typeVersionId: option<typeVersionId>,
    @ocaml.doc("<p>The name of the resource type.</p>") @as("TypeName") typeName: typeName,
  }
  type response = {
    @ocaml.doc("<p>Represents the current status of the resource deletion request.</p>
         <p>After you have initiated a resource deletion request, you can monitor the progress of your
      request by calling <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html\">GetResourceRequestStatus</a> using the <code>RequestToken</code> of the
        <code>ProgressEvent</code> returned by <code>DeleteResource</code>.</p>")
    @as("ProgressEvent")
    progressEvent: option<progressEvent>,
  }
  @module("@aws-sdk/client-cloudcontrolapi") @new
  external new: request => t = "DeleteResourceCommand"
  let make = (~identifier, ~typeName, ~clientToken=?, ~roleArn=?, ~typeVersionId=?, ()) =>
    new({identifier, clientToken, roleArn, typeVersionId, typeName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateResource = {
  type t
  type request = {
    @ocaml.doc("<p>Structured data format representing the desired state of the resource, consisting of that
      resource's properties and their desired values.</p>
         <note>
            <p>Cloud Control API currently supports JSON as a structured data format.</p>
         </note>
    
         <p>Specify the desired state as one of the following:</p>
         <ul>
            <li>
               <p>A JSON blob</p>
            </li>
            <li>
               <p>A local path containing the desired state in JSON data format</p>
            </li>
         </ul>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-create.html#resource-operations-create-desiredstate\">Composing the desired state of the resource</a> in the <i>Amazon Web Services Cloud Control API User
        Guide</i>.</p>
         <p>For more information about the properties of a specific resource, refer to the related
      topic for the resource in the <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">Resource and property types reference</a> in the <i>CloudFormation Users Guide</i>.</p>")
    @as("DesiredState")
    desiredState: properties,
    @ocaml.doc("<p>A unique identifier to ensure the idempotency of the resource request. As a best practice, specify this token to ensure idempotency, so that Amazon Web Services Cloud Control API can accurately distinguish between request retries and new resource requests. You might retry a resource request to ensure that it was successfully received.</p>
         <p>A client token is valid for 36 hours once used. After that, a resource request with the same client token is treated as a new request.</p>
         <p>If you do not specify a client token, one is generated for inclusion in the request.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency\">Ensuring resource operation requests are unique</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role for Cloud Control API to use when performing this resource operation. The role specified must have the permissions required for this operation. The necessary permissions for each event handler are defined in the <code>
               <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers\">handlers</a>
            </code> section of the <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html\">resource type definition schema</a>.</p>
         <p>If you do not specify a role, Cloud Control API uses a temporary session created using your Amazon Web Services user credentials.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions\">Specifying credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc(
      "<p>For private resource types, the type version to use in this resource operation. If you do not specify a resource version, CloudFormation uses the default version.</p>"
    )
    @as("TypeVersionId")
    typeVersionId: option<typeVersionId>,
    @ocaml.doc("<p>The name of the resource type.</p>") @as("TypeName") typeName: typeName,
  }
  type response = {
    @ocaml.doc("<p>Represents the current status of the resource creation request.</p>
         <p>After you have initiated a resource creation request, you can monitor the progress of your
      request by calling <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html\">GetResourceRequestStatus</a> using the <code>RequestToken</code> of the
        <code>ProgressEvent</code> returned by <code>CreateResource</code>.</p>")
    @as("ProgressEvent")
    progressEvent: option<progressEvent>,
  }
  @module("@aws-sdk/client-cloudcontrolapi") @new
  external new: request => t = "CreateResourceCommand"
  let make = (~desiredState, ~typeName, ~clientToken=?, ~roleArn=?, ~typeVersionId=?, ()) =>
    new({desiredState, clientToken, roleArn, typeVersionId, typeName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CancelResourceRequest = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>RequestToken</code> of the <code>ProgressEvent</code> object returned by the
      resource operation request.</p>")
    @as("RequestToken")
    requestToken: requestToken,
  }
  type response = {@as("ProgressEvent") progressEvent: option<progressEvent>}
  @module("@aws-sdk/client-cloudcontrolapi") @new
  external new: request => t = "CancelResourceRequestCommand"
  let make = (~requestToken, ()) => new({requestToken: requestToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListResources = {
  type t
  type request = {
    @ocaml.doc("<p>The resource model to use to select the resources to return.</p>")
    @as("ResourceModel")
    resourceModel: option<properties>,
    @ocaml.doc("<p>Reserved.</p>") @as("MaxResults") maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>If the previous paginated request didn't return all of the remaining results, the response object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's <code>NextToken</code> parameter. If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>"
    )
    @as("NextToken")
    nextToken: option<handlerNextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role for Cloud Control API to use when performing this resource operation. The role specified must have the permissions required for this operation. The necessary permissions for each event handler are defined in the <code>
               <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers\">handlers</a>
            </code> section of the <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html\">resource type definition schema</a>.</p>
         <p>If you do not specify a role, Cloud Control API uses a temporary session created using your Amazon Web Services user credentials.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions\">Specifying credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc(
      "<p>For private resource types, the type version to use in this resource operation. If you do not specify a resource version, CloudFormation uses the default version.</p>"
    )
    @as("TypeVersionId")
    typeVersionId: option<typeVersionId>,
    @ocaml.doc("<p>The name of the resource type.</p>") @as("TypeName") typeName: typeName,
  }
  type response = {
    @ocaml.doc(
      "<p>If the request doesn't return all of the remaining results, <code>NextToken</code> is set to a token. To retrieve the next set of results, call <code>ListResources</code> again and assign that token to the request object's <code>NextToken</code> parameter. If the request returns all results, <code>NextToken</code> is set to null.</p>"
    )
    @as("NextToken")
    nextToken: option<handlerNextToken>,
    @ocaml.doc("<p>Information about the specified resources, including primary identifier and resource
      model.</p>")
    @as("ResourceDescriptions")
    resourceDescriptions: option<resourceDescriptions>,
    @ocaml.doc("<p>The name of the resource type.</p>") @as("TypeName") typeName: option<typeName>,
  }
  @module("@aws-sdk/client-cloudcontrolapi") @new
  external new: request => t = "ListResourcesCommand"
  let make = (
    ~typeName,
    ~resourceModel=?,
    ~maxResults=?,
    ~nextToken=?,
    ~roleArn=?,
    ~typeVersionId=?,
    (),
  ) => new({resourceModel, maxResults, nextToken, roleArn, typeVersionId, typeName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListResourceRequests = {
  type t
  type request = {
    @ocaml.doc("<p>The filter criteria to apply to the requests returned.</p>")
    @as("ResourceRequestStatusFilter")
    resourceRequestStatusFilter: option<resourceRequestStatusFilter>,
    @ocaml.doc(
      "<p>If the previous paginated request didn't return all of the remaining results, the response object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's <code>NextToken</code> parameter. If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to be returned with a single call. If the number of
      available results exceeds this maximum, the response includes a <code>NextToken</code> value
      that you can assign to the <code>NextToken</code> request parameter to get the next set of
      results.</p>
         <p>The default is <code>20</code>.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>If the request doesn't return all of the remaining results, <code>NextToken</code> is set to a token. To retrieve the next set of results, call <code>ListResources</code> again and assign that token to the request object's <code>NextToken</code> parameter. If the request returns all results, <code>NextToken</code> is set to null.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The requests that match the specified filter criteria.</p>")
    @as("ResourceRequestStatusSummaries")
    resourceRequestStatusSummaries: option<resourceRequestStatusSummaries>,
  }
  @module("@aws-sdk/client-cloudcontrolapi") @new
  external new: request => t = "ListResourceRequestsCommand"
  let make = (~resourceRequestStatusFilter=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({resourceRequestStatusFilter, nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
