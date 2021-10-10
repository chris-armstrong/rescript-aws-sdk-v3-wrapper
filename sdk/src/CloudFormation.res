type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-cloudformation") @new
external createClient: unit => awsServiceClient = "CloudFormationClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type visibility = [@as("PRIVATE") #PRIVATE | @as("PUBLIC") #PUBLIC]
type version = string
type value = string
type usePreviousValue = bool
type usePreviousTemplate = bool
type url = string
type typeVersionId = string
type typeSchema = string
type typeName = string
type typeHierarchy = string
type typeArn = string
type type_ = string
type transformName = string
type totalStackInstancesCount = int
type timestamp_ = Js.Date.t
type timeoutMinutes = int
type templateURL = string
type templateStage = [@as("Processed") #Processed | @as("Original") #Original]
type templateDescription = string
type templateBody = string
type tagValue = string
type tagKey = string
type statusMessage = string
type stackStatusReason = string
type stackStatus = [
  | @as("IMPORT_ROLLBACK_COMPLETE") #IMPORT_ROLLBACK_COMPLETE
  | @as("IMPORT_ROLLBACK_FAILED") #IMPORT_ROLLBACK_FAILED
  | @as("IMPORT_ROLLBACK_IN_PROGRESS") #IMPORT_ROLLBACK_IN_PROGRESS
  | @as("IMPORT_COMPLETE") #IMPORT_COMPLETE
  | @as("IMPORT_IN_PROGRESS") #IMPORT_IN_PROGRESS
  | @as("REVIEW_IN_PROGRESS") #REVIEW_IN_PROGRESS
  | @as("UPDATE_ROLLBACK_COMPLETE") #UPDATE_ROLLBACK_COMPLETE
  | @as("UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS")
  #UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS
  | @as("UPDATE_ROLLBACK_FAILED") #UPDATE_ROLLBACK_FAILED
  | @as("UPDATE_ROLLBACK_IN_PROGRESS") #UPDATE_ROLLBACK_IN_PROGRESS
  | @as("UPDATE_COMPLETE") #UPDATE_COMPLETE
  | @as("UPDATE_COMPLETE_CLEANUP_IN_PROGRESS") #UPDATE_COMPLETE_CLEANUP_IN_PROGRESS
  | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS
  | @as("DELETE_COMPLETE") #DELETE_COMPLETE
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("ROLLBACK_COMPLETE") #ROLLBACK_COMPLETE
  | @as("ROLLBACK_FAILED") #ROLLBACK_FAILED
  | @as("ROLLBACK_IN_PROGRESS") #ROLLBACK_IN_PROGRESS
  | @as("CREATE_COMPLETE") #CREATE_COMPLETE
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]
type stackSetStatus = [@as("DELETED") #DELETED | @as("ACTIVE") #ACTIVE]
type stackSetOperationStatus = [
  | @as("QUEUED") #QUEUED
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("RUNNING") #RUNNING
]
type stackSetOperationResultStatus = [
  | @as("CANCELLED") #CANCELLED
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("RUNNING") #RUNNING
  | @as("PENDING") #PENDING
]
type stackSetOperationAction = [
  | @as("DETECT_DRIFT") #DETECT_DRIFT
  | @as("DELETE") #DELETE
  | @as("UPDATE") #UPDATE
  | @as("CREATE") #CREATE
]
type stackSetNameOrId = string
type stackSetName = string
type stackSetId = string
type stackSetDriftStatus = [
  | @as("NOT_CHECKED") #NOT_CHECKED
  | @as("IN_SYNC") #IN_SYNC
  | @as("DRIFTED") #DRIFTED
]
type stackSetDriftDetectionStatus = [
  | @as("STOPPED") #STOPPED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("PARTIAL_SUCCESS") #PARTIAL_SUCCESS
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
]
type stackSetARN = string
type stackResourceDriftStatus = [
  | @as("NOT_CHECKED") #NOT_CHECKED
  | @as("DELETED") #DELETED
  | @as("MODIFIED") #MODIFIED
  | @as("IN_SYNC") #IN_SYNC
]
type stackPolicyURL = string
type stackPolicyDuringUpdateURL = string
type stackPolicyDuringUpdateBody = string
type stackPolicyBody = string
type stackNameOrId = string
type stackName = string
type stackInstanceStatus = [
  | @as("INOPERABLE") #INOPERABLE
  | @as("OUTDATED") #OUTDATED
  | @as("CURRENT") #CURRENT
]
type stackInstanceFilterValues = string
type stackInstanceFilterName = [@as("DETAILED_STATUS") #DETAILED_STATUS]
type stackInstanceDetailedStatus = [
  | @as("INOPERABLE") #INOPERABLE
  | @as("CANCELLED") #CANCELLED
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("RUNNING") #RUNNING
  | @as("PENDING") #PENDING
]
type stackId = string
type stackDriftStatus = [
  | @as("NOT_CHECKED") #NOT_CHECKED
  | @as("UNKNOWN") #UNKNOWN
  | @as("IN_SYNC") #IN_SYNC
  | @as("DRIFTED") #DRIFTED
]
type stackDriftDetectionStatusReason = string
type stackDriftDetectionStatus = [
  | @as("DETECTION_COMPLETE") #DETECTION_COMPLETE
  | @as("DETECTION_FAILED") #DETECTION_FAILED
  | @as("DETECTION_IN_PROGRESS") #DETECTION_IN_PROGRESS
]
type stackDriftDetectionId = string
type s3Url = string
type roleARN2 = string
type roleARN = string
type retainStacksOnAccountRemovalNullable = bool
type retainStacksNullable = bool
type retainStacks = bool
type resourceType = string
type resourceToSkip = string
type resourceStatusReason = string
type resourceStatus = [
  | @as("IMPORT_ROLLBACK_COMPLETE") #IMPORT_ROLLBACK_COMPLETE
  | @as("IMPORT_ROLLBACK_FAILED") #IMPORT_ROLLBACK_FAILED
  | @as("IMPORT_ROLLBACK_IN_PROGRESS") #IMPORT_ROLLBACK_IN_PROGRESS
  | @as("IMPORT_IN_PROGRESS") #IMPORT_IN_PROGRESS
  | @as("IMPORT_COMPLETE") #IMPORT_COMPLETE
  | @as("IMPORT_FAILED") #IMPORT_FAILED
  | @as("UPDATE_COMPLETE") #UPDATE_COMPLETE
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS
  | @as("DELETE_SKIPPED") #DELETE_SKIPPED
  | @as("DELETE_COMPLETE") #DELETE_COMPLETE
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("CREATE_COMPLETE") #CREATE_COMPLETE
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]
type resourceSignalUniqueId = string
type resourceSignalStatus = [@as("FAILURE") #FAILURE | @as("SUCCESS") #SUCCESS]
type resourceProperties = string
type resourceModel = string
type resourceIdentifierPropertyValue = string
type resourceIdentifierPropertyKey = string
type resourceAttribute = [
  | @as("Tags") #Tags
  | @as("DeletionPolicy") #DeletionPolicy
  | @as("UpdatePolicy") #UpdatePolicy
  | @as("CreationPolicy") #CreationPolicy
  | @as("Metadata") #Metadata
  | @as("Properties") #Properties
]
type requiresRecreation = [
  | @as("Always") #Always
  | @as("Conditionally") #Conditionally
  | @as("Never") #Never
]
type requestToken = string
type replacement = [@as("Conditional") #Conditional | @as("False") #False | @as("True") #True]
type registryType = [@as("MODULE") #MODULE | @as("RESOURCE") #RESOURCE]
type registrationToken = string
type registrationStatus = [
  | @as("FAILED") #FAILED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("COMPLETE") #COMPLETE
]
type regionConcurrencyType = [@as("PARALLEL") #PARALLEL | @as("SEQUENTIAL") #SEQUENTIAL]
type region = string
type reason = string
type provisioningType = [
  | @as("FULLY_MUTABLE") #FULLY_MUTABLE
  | @as("IMMUTABLE") #IMMUTABLE
  | @as("NON_PROVISIONABLE") #NON_PROVISIONABLE
]
type propertyValue = string
type propertyPath = string
type propertyName = string
type properties = string
type privateTypeArn = string
type physicalResourceId = string
type permissionModels = [
  | @as("SELF_MANAGED") #SELF_MANAGED
  | @as("SERVICE_MANAGED") #SERVICE_MANAGED
]
type parameterValue = string
type parameterType = string
type parameterKey = string
type outputValue = string
type outputKey = string
type organizationalUnitId = string
type optionalSecureUrl = string
type operationStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCESS") #SUCCESS
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("PENDING") #PENDING
]
type onFailure = [@as("DELETE") #DELETE | @as("ROLLBACK") #ROLLBACK | @as("DO_NOTHING") #DO_NOTHING]
type notificationARN = string
type noEcho = bool
type nextToken = string
type monitoringTimeInMinutes = int
type metadata = string
type maxResults = int
type maxConcurrentPercentage = int
type maxConcurrentCount = int
type logicalResourceId = string
type logicalIdHierarchy = string
type logGroupName = string
type limitValue = int
type limitName = string
type lastUpdatedTime = Js.Date.t
type key = string
type isDefaultVersion = bool
type includeNestedStacks = bool
type inSyncStackInstancesCount = int
type inProgressStackInstancesCount = int
type handlerErrorCode = [
  | @as("InternalFailure") #InternalFailure
  | @as("NetworkFailure") #NetworkFailure
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
type failureTolerancePercentage = int
type failureToleranceCount = int
type failedStackInstancesCount = int
type exportValue = string
type exportName = string
type executionStatus = [
  | @as("OBSOLETE") #OBSOLETE
  | @as("EXECUTE_FAILED") #EXECUTE_FAILED
  | @as("EXECUTE_COMPLETE") #EXECUTE_COMPLETE
  | @as("EXECUTE_IN_PROGRESS") #EXECUTE_IN_PROGRESS
  | @as("AVAILABLE") #AVAILABLE
  | @as("UNAVAILABLE") #UNAVAILABLE
]
type executionRoleName = string
type eventId = string
type evaluationType = [@as("Dynamic") #Dynamic | @as("Static") #Static]
type errorMessage = string
type enableTerminationProtection = bool
type driftedStackInstancesCount = int
type disableRollback = bool
type differenceType = [@as("NOT_EQUAL") #NOT_EQUAL | @as("REMOVE") #REMOVE | @as("ADD") #ADD]
type description = string
type deprecatedStatus = [@as("DEPRECATED") #DEPRECATED | @as("LIVE") #LIVE]
type deletionTime = Js.Date.t
type creationTime = Js.Date.t
type clientToken = string
type clientRequestToken = string
type changeType = [@as("Resource") #Resource]
type changeSource = [
  | @as("Automatic") #Automatic
  | @as("DirectModification") #DirectModification
  | @as("ResourceAttribute") #ResourceAttribute
  | @as("ParameterReference") #ParameterReference
  | @as("ResourceReference") #ResourceReference
]
type changeSetType = [@as("IMPORT") #IMPORT | @as("UPDATE") #UPDATE | @as("CREATE") #CREATE]
type changeSetStatusReason = string
type changeSetStatus = [
  | @as("FAILED") #FAILED
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETE_COMPLETE") #DELETE_COMPLETE
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("DELETE_PENDING") #DELETE_PENDING
  | @as("CREATE_COMPLETE") #CREATE_COMPLETE
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
  | @as("CREATE_PENDING") #CREATE_PENDING
]
type changeSetNameOrId = string
type changeSetName = string
type changeSetId = string
type changeAction = [
  | @as("Dynamic") #Dynamic
  | @as("Import") #Import
  | @as("Remove") #Remove
  | @as("Modify") #Modify
  | @as("Add") #Add
]
type causingEntity = string
type capability = [
  | @as("CAPABILITY_AUTO_EXPAND") #CAPABILITY_AUTO_EXPAND
  | @as("CAPABILITY_NAMED_IAM") #CAPABILITY_NAMED_IAM
  | @as("CAPABILITY_IAM") #CAPABILITY_IAM
]
type capabilitiesReason = string
type callAs = [@as("DELEGATED_ADMIN") #DELEGATED_ADMIN | @as("SELF") #SELF]
type boxedMaxResults = int
type boxedInteger = int
type autoDeploymentNullable = bool
type arn = string
type allowedValue = string
type accountsUrl = string
type accountGateStatusReason = string
type accountGateStatus = [
  | @as("SKIPPED") #SKIPPED
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
]
type account = string
@ocaml.doc("<p>Contains summary information about a specific version of a CloudFormation type.</p>")
type typeVersionSummary = {
  @ocaml.doc("<p>The description of the type version.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>When the version was registered.</p>") @as("TimeCreated")
  timeCreated: option<timestamp_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the type version.</p>") @as("Arn")
  arn: option<typeArn>,
  @ocaml.doc("<p>Whether the specified type version is set as the default version.</p>")
  @as("IsDefaultVersion")
  isDefaultVersion: option<isDefaultVersion>,
  @ocaml.doc(
    "<p>The ID of a specific version of the type. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the type version when it is registered.</p>"
  )
  @as("VersionId")
  versionId: option<typeVersionId>,
  @ocaml.doc("<p>The name of the type.</p>") @as("TypeName") typeName: option<typeName>,
  @ocaml.doc("<p>The kind of type.</p>") @as("Type") type_: option<registryType>,
}
@ocaml.doc("<p>Contains summary information about the specified CloudFormation type.</p>")
type typeSummary = {
  @ocaml.doc("<p>The description of the type.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>When the current default version of the type was registered.</p>")
  @as("LastUpdated")
  lastUpdated: option<timestamp_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the type.</p>") @as("TypeArn")
  typeArn: option<typeArn>,
  @ocaml.doc("<p>The ID of the default version of the type. The default version is used when the type version is not specified.</p>
         <p>To set the default version of a type, use <code>
               <a>SetTypeDefaultVersion</a>
            </code>. </p>")
  @as("DefaultVersionId")
  defaultVersionId: option<typeVersionId>,
  @ocaml.doc("<p>The name of the type.</p>") @as("TypeName") typeName: option<typeName>,
  @ocaml.doc("<p>The kind of type.</p>") @as("Type") type_: option<registryType>,
}
type transformsList = array<transformName>
@ocaml.doc("<p>The TemplateParameter data type.</p>")
type templateParameter = {
  @ocaml.doc("<p>User defined description associated with the parameter.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>Flag indicating whether the parameter should be displayed as plain text in logs and
         UIs.</p>")
  @as("NoEcho")
  noEcho: option<noEcho>,
  @ocaml.doc("<p>The default value associated with the parameter.</p>") @as("DefaultValue")
  defaultValue: option<parameterValue>,
  @ocaml.doc("<p>The name associated with the parameter.</p>") @as("ParameterKey")
  parameterKey: option<parameterKey>,
}
@ocaml.doc("<p>The Tag type enables you to specify a key-value pair that can be used to store
         information about an AWS CloudFormation stack.</p>")
type tag = {
  @ocaml.doc("<p>
            <i>Required</i>. A string containing the value for this tag. You can specify
         a maximum of 256 characters for a tag value.</p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>
            <i>Required</i>. A string used to identify this tag. You can specify a
         maximum of 128 characters for a tag key. Tags owned by Amazon Web Services (AWS) have the
         reserved prefix: <code>aws:</code>.</p>")
  @as("Key")
  key: tagKey,
}
type stageList = array<templateStage>
type stackStatusFilter = array<stackStatus>
@ocaml.doc("<p>The structures that contain summary information about the specified
         operation.</p>")
type stackSetOperationSummary = {
  @ocaml.doc("<p>The time at which the stack set operation ended, across all accounts and Regions
         specified. Note that this doesn't necessarily mean that the stack set operation was
         successful, or even attempted, in each account or Region.</p>")
  @as("EndTimestamp")
  endTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The time at which the operation was initiated. Note that the creation times for the
         stack set operation might differ from the creation time of the individual stacks
         themselves. This is because AWS CloudFormation needs to perform preparatory work for the
         operation, such as dispatching the work to the requested Regions, before actually creating
         the first stacks.</p>")
  @as("CreationTimestamp")
  creationTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The overall status of the operation.</p>
         <ul>
            <li>
               <p>
                  <code>FAILED</code>: The operation exceeded the specified failure tolerance.
               The failure tolerance value that you've set for an operation is applied for each
               Region during stack create and update operations. If the number of failed stacks
               within a Region exceeds the failure tolerance, the status of the operation in the
               Region is set to <code>FAILED</code>. This in turn sets the status of the operation
               as a whole to <code>FAILED</code>, and AWS CloudFormation cancels the operation in
               any remaining Regions.</p>
            </li>
            <li>
               <p>
                  <code>QUEUED</code>: [Service-managed permissions] For automatic deployments that
               require a sequence of operations, the operation is queued to be performed. For more information, see the <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-status-codes\">stack set operation status codes</a> in the AWS CloudFormation User Guide.</p>
            </li>
            <li>
               <p>
                  <code>RUNNING</code>: The operation is currently being performed.</p>
            </li>
            <li>
               <p>
                  <code>STOPPED</code>: The user has cancelled the operation.</p>
            </li>
            <li>
               <p>
                  <code>STOPPING</code>: The operation is in the process of stopping, at user
               request. </p>
            </li>
            <li>
               <p>
                  <code>SUCCEEDED</code>: The operation completed creating or updating all the
               specified stacks without exceeding the failure tolerance for the operation.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<stackSetOperationStatus>,
  @ocaml.doc("<p>The type of operation: <code>CREATE</code>, <code>UPDATE</code>, or
            <code>DELETE</code>. Create and delete operations affect only the specified stack
         instances that are associated with the specified stack set. Update operations affect both
         the stack set itself as well as <i>all</i> associated stack set
         instances.</p>")
  @as("Action")
  action: option<stackSetOperationAction>,
  @ocaml.doc("<p>The unique ID of the stack set operation.</p>") @as("OperationId")
  operationId: option<clientRequestToken>,
}
@ocaml.doc("<p>Detailed information about the drift status of the stack set.</p>
         <p>For stack sets, contains information about the last <i>completed</i> drift
         operation performed on the stack set. Information about drift operations in-progress is not
         included. </p>
         <p>For stack set operations, includes information about drift operations currently being
         performed on the stack set.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html\">Detecting Unmanaged
         Changes in Stack Sets</a> in the <i>AWS CloudFormation User Guide</i>.</p>")
type stackSetDriftDetectionDetails = {
  @ocaml.doc("<p>The number of stack instances for which the drift detection operation failed.</p>")
  @as("FailedStackInstancesCount")
  failedStackInstancesCount: option<failedStackInstancesCount>,
  @ocaml.doc("<p>The number of stack instances that are currently being checked for drift.</p>")
  @as("InProgressStackInstancesCount")
  inProgressStackInstancesCount: option<inProgressStackInstancesCount>,
  @ocaml.doc("<p>The number of stack instances which match the expected template and parameter
         configuration of the stack set.</p>")
  @as("InSyncStackInstancesCount")
  inSyncStackInstancesCount: option<inSyncStackInstancesCount>,
  @ocaml.doc("<p>The number of stack instances that have drifted from the expected template and parameter
         configuration of the stack set. A stack instance is considered to have drifted if one or
         more of the resources in the associated stack do not match their expected
         configuration.</p>")
  @as("DriftedStackInstancesCount")
  driftedStackInstancesCount: option<driftedStackInstancesCount>,
  @ocaml.doc("<p>The total number of stack instances belonging to this stack set. </p>
         <p>The total number of stack instances is equal to the total of:</p>
         <ul>
            <li>
               <p>Stack instances that match the stack set configuration. </p>
            </li>
            <li>
               <p>Stack instances that have drifted from the stack set configuration. </p>
            </li>
            <li>
               <p>Stack instances where the drift detection operation has failed.</p>
            </li>
            <li>
               <p>Stack instances currently being checked for drift.</p>
            </li>
         </ul>")
  @as("TotalStackInstancesCount")
  totalStackInstancesCount: option<totalStackInstancesCount>,
  @ocaml.doc("<p>Most recent time when CloudFormation performed a drift detection operation on the stack
         set. This value will be <code>NULL</code> for any stack set on which drift detection has
         not yet been performed.</p>")
  @as("LastDriftCheckTimestamp")
  lastDriftCheckTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The status of the stack set drift detection operation.</p>
         <ul>
            <li>
               <p>
                  <code>COMPLETED</code>: The drift detection operation completed without failing on
               any stack instances.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code>: The drift detection operation exceeded the specified failure
               tolerance. </p>
            </li>
            <li>
               <p>
                  <code>PARTIAL_SUCCESS</code>: The drift detection operation completed without
               exceeding the failure tolerance for the operation.</p>
            </li>
            <li>
               <p>
                  <code>IN_PROGRESS</code>: The drift detection operation is currently being
               performed.</p>
            </li>
            <li>
               <p>
                  <code>STOPPED</code>: The user has cancelled the drift detection operation.</p>
            </li>
         </ul>")
  @as("DriftDetectionStatus")
  driftDetectionStatus: option<stackSetDriftDetectionStatus>,
  @ocaml.doc("<p>Status of the stack set's actual configuration compared to its expected template and
         parameter configuration. A stack set is considered to have drifted if one or more of its
         stack instances have drifted from their expected template and parameter
         configuration.</p>
         <ul>
            <li>
               <p>
                  <code>DRIFTED</code>: One or more of the stack instances belonging to the stack
               set stack differs from the expected template and parameter configuration. A stack
               instance is considered to have drifted if one or more of the resources in the
               associated stack have drifted.</p>
            </li>
            <li>
               <p>
                  <code>NOT_CHECKED</code>: AWS CloudFormation has not checked the stack set for drift.</p>
            </li>
            <li>
               <p>
                  <code>IN_SYNC</code>: All of the stack instances belonging to the stack set stack
               match from the expected template and parameter configuration.</p>
            </li>
         </ul>")
  @as("DriftStatus")
  driftStatus: option<stackSetDriftStatus>,
}
type stackResourceDriftStatusFilters = array<stackResourceDriftStatus>
@ocaml.doc("<p>Summarizes information about whether the resource's actual configuration differs, or
         has <i>drifted</i>, from its expected configuration.</p>")
type stackResourceDriftInformationSummary = {
  @ocaml.doc("<p>When AWS CloudFormation last checked if the resource had drifted from its expected
         configuration.</p>")
  @as("LastCheckTimestamp")
  lastCheckTimestamp: option<timestamp_>,
  @ocaml.doc("<p>Status of the resource's actual configuration compared to its expected
         configuration</p>
         <ul>
            <li>
               <p>
                  <code>DELETED</code>: The resource differs from its expected configuration in
               that it has been deleted.</p>
            </li>
            <li>
               <p>
                  <code>MODIFIED</code>: The resource differs from its expected
               configuration.</p>
            </li>
            <li>
               <p>
                  <code>NOT_CHECKED</code>: AWS CloudFormation has not checked if the resource differs from
               its expected configuration.</p>
               <p>Any resources that do not currently support drift detection have a status of
                  <code>NOT_CHECKED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html\">Resources that Support Drift Detection</a>. If you performed an <a>ContinueUpdateRollback</a> operation on a stack, any resources included in
                  <code>ResourcesToSkip</code> will also have a status of <code>NOT_CHECKED</code>.
               For more information on skipping resources during rollback operations, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html\">Continue Rolling Back an Update</a> in the AWS CloudFormation User Guide.</p>
            </li>
            <li>
               <p>
                  <code>IN_SYNC</code>: The resources's actual configuration matches its expected
               configuration.</p>
            </li>
         </ul>")
  @as("StackResourceDriftStatus")
  stackResourceDriftStatus: stackResourceDriftStatus,
}
@ocaml.doc("<p>Contains information about whether the resource's actual configuration differs, or
         has <i>drifted</i>, from its expected configuration.</p>")
type stackResourceDriftInformation = {
  @ocaml.doc("<p>When AWS CloudFormation last checked if the resource had drifted from its expected
         configuration.</p>")
  @as("LastCheckTimestamp")
  lastCheckTimestamp: option<timestamp_>,
  @ocaml.doc("<p>Status of the resource's actual configuration compared to its expected
         configuration</p>
         <ul>
            <li>
               <p>
                  <code>DELETED</code>: The resource differs from its expected configuration in
               that it has been deleted.</p>
            </li>
            <li>
               <p>
                  <code>MODIFIED</code>: The resource differs from its expected
               configuration.</p>
            </li>
            <li>
               <p>
                  <code>NOT_CHECKED</code>: AWS CloudFormation has not checked if the resource differs from
               its expected configuration.</p>
               <p>Any resources that do not currently support drift detection have a status of
                  <code>NOT_CHECKED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html\">Resources that Support Drift Detection</a>. </p>
            </li>
            <li>
               <p>
                  <code>IN_SYNC</code>: The resources's actual configuration matches its expected
               configuration.</p>
            </li>
         </ul>")
  @as("StackResourceDriftStatus")
  stackResourceDriftStatus: stackResourceDriftStatus,
}
@ocaml.doc("<p>The status that stack instances are filtered by.</p>")
type stackInstanceFilter = {
  @ocaml.doc("<p>The status to filter by.</p>") @as("Values")
  values: option<stackInstanceFilterValues>,
  @ocaml.doc("<p>The type of filter to apply.</p>") @as("Name")
  name: option<stackInstanceFilterName>,
}
@ocaml.doc("<p>The detailed status of the stack instance.</p>")
type stackInstanceComprehensiveStatus = {
  @ocaml.doc("<ul>
            <li>
               <p>
                  <code>CANCELLED</code>: The operation in the specified account and Region has been cancelled. This is either because a user has stopped the stack set operation, or because the failure tolerance of the stack set operation has been exceeded.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code>: The operation in the specified account and Region failed. If
               the stack set operation fails in enough accounts within a Region, the failure
               tolerance for the stack set operation as a whole might be exceeded.</p>
            </li>
            <li>
               <p>
                  <code>INOPERABLE</code>: A <code>DeleteStackInstances</code> operation has failed and left the stack in an unstable state. Stacks in this state are excluded from further <code>UpdateStackSet</code> operations. You might need to perform a <code>DeleteStackInstances</code> operation, with <code>RetainStacks</code> set to <code>true</code>, to delete the stack instance, and then delete the stack manually.</p>
            </li>
            <li>
               <p>
                  <code>PENDING</code>: The operation in the specified account and Region has yet to start.</p>
            </li>
            <li>
               <p>
                  <code>RUNNING</code>: The operation in the specified account and Region is currently in progress.</p>
            </li>
            <li>
               <p>
                  <code>SUCCEEDED</code>: The operation in the specified account and Region completed successfully.</p>
            </li>
         </ul>")
  @as("DetailedStatus")
  detailedStatus: option<stackInstanceDetailedStatus>,
}
@ocaml.doc("<p>The StackEvent data type.</p>")
type stackEvent = {
  @ocaml.doc("<p>The token passed to the operation that generated this event.</p>
         <p>All events triggered by a given stack operation are assigned the same client request
         token, which you can use to track operations. For example, if you execute a
         <code>CreateStack</code> operation with the token <code>token1</code>, then all the
         <code>StackEvents</code> generated by that operation will have
         <code>ClientRequestToken</code> set as <code>token1</code>.</p>
         <p>In the console, stack operations display the client request token on the Events tab.
         Stack operations that are initiated from the console use the token format
         <i>Console-StackOperation-ID</i>, which helps you easily identify the
         stack operation . For example, if you create a stack using the console, each stack event
         would be assigned the same token in the following format:
         <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>. </p>")
  @as("ClientRequestToken")
  clientRequestToken: option<clientRequestToken>,
  @ocaml.doc("<p>BLOB of the properties used to create the resource.</p>") @as("ResourceProperties")
  resourceProperties: option<resourceProperties>,
  @ocaml.doc("<p>Success/failure message associated with the resource.</p>")
  @as("ResourceStatusReason")
  resourceStatusReason: option<resourceStatusReason>,
  @ocaml.doc("<p>Current status of the resource.</p>") @as("ResourceStatus")
  resourceStatus: option<resourceStatus>,
  @ocaml.doc("<p>Time the status was updated.</p>") @as("Timestamp") timestamp_: timestamp_,
  @ocaml.doc("<p>Type of resource. (For more information, go to <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\"> AWS
            Resource Types Reference</a> in the AWS CloudFormation User Guide.)</p>")
  @as("ResourceType")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The name or unique identifier associated with the physical instance of the
         resource.</p>")
  @as("PhysicalResourceId")
  physicalResourceId: option<physicalResourceId>,
  @ocaml.doc("<p>The logical name of the resource specified in the template.</p>")
  @as("LogicalResourceId")
  logicalResourceId: option<logicalResourceId>,
  @ocaml.doc("<p>The name associated with a stack.</p>") @as("StackName") stackName: stackName,
  @ocaml.doc("<p>The unique ID of this event.</p>") @as("EventId") eventId: eventId,
  @ocaml.doc("<p>The unique ID name of the instance of the stack.</p>") @as("StackId")
  stackId: stackId,
}
@ocaml.doc("<p>Contains information about whether the stack's actual configuration differs, or has
            <i>drifted</i>, from its expected configuration, as defined in the stack
         template and any values specified as template parameters. A stack is considered to have
         drifted if one or more of its resources have drifted.</p>")
type stackDriftInformationSummary = {
  @ocaml.doc("<p>Most recent time when a drift detection operation was initiated on the stack, or any
         of its individual resources that support drift detection.</p>")
  @as("LastCheckTimestamp")
  lastCheckTimestamp: option<timestamp_>,
  @ocaml.doc("<p>Status of the stack's actual configuration compared to its expected template
         configuration. </p>
         <ul>
            <li>
               <p>
                  <code>DRIFTED</code>: The stack differs from its expected template
               configuration. A stack is considered to have drifted if one or more of its resources
               have drifted.</p>
            </li>
            <li>
               <p>
                  <code>NOT_CHECKED</code>: AWS CloudFormation has not checked if the stack differs from its
               expected template configuration.</p>
            </li>
            <li>
               <p>
                  <code>IN_SYNC</code>: The stack's actual configuration matches its expected
               template configuration.</p>
            </li>
            <li>
               <p>
                  <code>UNKNOWN</code>: This value is reserved for future use.</p>
            </li>
         </ul>")
  @as("StackDriftStatus")
  stackDriftStatus: stackDriftStatus,
}
@ocaml.doc("<p>Contains information about whether the stack's actual configuration differs, or has
            <i>drifted</i>, from its expected configuration, as defined in the stack
         template and any values specified as template parameters. A stack is considered to have
         drifted if one or more of its resources have drifted.</p>")
type stackDriftInformation = {
  @ocaml.doc("<p>Most recent time when a drift detection operation was initiated on the stack, or any
         of its individual resources that support drift detection.</p>")
  @as("LastCheckTimestamp")
  lastCheckTimestamp: option<timestamp_>,
  @ocaml.doc("<p>Status of the stack's actual configuration compared to its expected template
         configuration. </p>
         <ul>
            <li>
               <p>
                  <code>DRIFTED</code>: The stack differs from its expected template
               configuration. A stack is considered to have drifted if one or more of its resources
               have drifted.</p>
            </li>
            <li>
               <p>
                  <code>NOT_CHECKED</code>: AWS CloudFormation has not checked if the stack differs from its
               expected template configuration.</p>
            </li>
            <li>
               <p>
                  <code>IN_SYNC</code>: The stack's actual configuration matches its expected
               template configuration.</p>
            </li>
            <li>
               <p>
                  <code>UNKNOWN</code>: This value is reserved for future use.</p>
            </li>
         </ul>")
  @as("StackDriftStatus")
  stackDriftStatus: stackDriftStatus,
}
type scope = array<resourceAttribute>
@ocaml.doc("<p>A rollback trigger AWS CloudFormation monitors during creation and updating of stacks. If any of
         the alarms you specify goes to ALARM state during the stack operation or within the
         specified monitoring period afterwards, CloudFormation rolls back the entire stack
         operation. </p>")
type rollbackTrigger = {
  @ocaml.doc(
    "<p>The resource type of the rollback trigger. Currently, <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html\">AWS::CloudWatch::Alarm</a> is the only supported resource type.</p>"
  )
  @as("Type")
  type_: type_,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the rollback trigger.</p>
         <p>If a specified trigger is missing, the entire stack operation fails and is rolled
         back. </p>")
  @as("Arn")
  arn: arn,
}
type retainResources = array<logicalResourceId>
type resourcesToSkip = array<resourceToSkip>
type resourceTypes = array<resourceType>
@ocaml.doc("<p>The field that AWS CloudFormation will change, such as the name of a resource's
         property, and whether the resource will be recreated.</p>")
type resourceTargetDefinition = {
  @ocaml.doc("<p>If the <code>Attribute</code> value is <code>Properties</code>, indicates whether a
         change to this property causes the resource to be recreated. The value can be
            <code>Never</code>, <code>Always</code>, or <code>Conditionally</code>. To determine the
         conditions for a <code>Conditionally</code> recreation, see the update behavior for that
            <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">property</a> in the AWS CloudFormation User Guide.</p>")
  @as("RequiresRecreation")
  requiresRecreation: option<requiresRecreation>,
  @ocaml.doc("<p>If the <code>Attribute</code> value is <code>Properties</code>, the name of the
         property. For all other attributes, the value is null.</p>")
  @as("Name")
  name: option<propertyName>,
  @ocaml.doc("<p>Indicates which resource attribute is triggering this update, such as a change in the
         resource attribute's <code>Metadata</code>, <code>Properties</code>, or
         <code>Tags</code>.</p>")
  @as("Attribute")
  attribute: option<resourceAttribute>,
}
type resourceIdentifiers = array<resourceIdentifierPropertyKey>
type resourceIdentifierProperties = Js.Dict.t<resourceIdentifierPropertyValue>
type registrationTokenList = array<registrationToken>
type regionList = array<region>
@ocaml.doc("<p>Information about a resource property whose actual value differs from its expected
         value, as defined in the stack template and any values specified as template parameters.
         These will be present only for resources whose <code>StackResourceDriftStatus</code> is
            <code>MODIFIED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html\">Detecting
            Unregulated Configuration Changes to Stacks and Resources</a>.</p>")
type propertyDifference = {
  @ocaml.doc("<p>The type of property difference.</p>
         <ul>
            <li>
               <p>
                  <code>ADD</code>: A value has been added to a resource property that is an
               array or list data type.</p>
            </li>
            <li>
               <p>
                  <code>REMOVE</code>: The property has been removed from the current resource
               configuration.</p>
            </li>
            <li>
               <p>
                  <code>NOT_EQUAL</code>: The current property value differs from its expected
               value (as defined in the stack template and any values specified as template
               parameters).</p>
            </li>
         </ul>")
  @as("DifferenceType")
  differenceType: differenceType,
  @ocaml.doc("<p>The actual property value of the resource property.</p>") @as("ActualValue")
  actualValue: propertyValue,
  @ocaml.doc("<p>The expected property value of the resource property, as defined in the stack
         template and any values specified as template parameters.</p>")
  @as("ExpectedValue")
  expectedValue: propertyValue,
  @ocaml.doc("<p>The fully-qualified path to the resource property.</p>") @as("PropertyPath")
  propertyPath: propertyPath,
}
@ocaml.doc("<p>Context information that enables AWS CloudFormation to uniquely identify a resource. AWS CloudFormation uses
         context key-value pairs in cases where a resource's logical and physical IDs are not enough
         to uniquely identify that resource. Each context key-value pair specifies a resource that
         contains the targeted resource.</p>")
type physicalResourceIdContextKeyValuePair = {
  @ocaml.doc("<p>The resource context value.</p>") @as("Value") value: value,
  @ocaml.doc("<p>The resource context key.</p>") @as("Key") key: key,
}
@ocaml.doc("<p>The Parameter data type.</p>")
type parameter = {
  @ocaml.doc("<p>Read-only. The value that corresponds to a Systems Manager parameter key. This field
         is returned only for <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html#aws-ssm-parameter-types\">
               <code>SSM</code> parameter types</a> in the template.</p>")
  @as("ResolvedValue")
  resolvedValue: option<parameterValue>,
  @ocaml.doc("<p>During a stack update, use the existing parameter value that the stack is using for a
         given parameter key. If you specify <code>true</code>, do not specify a parameter
         value.</p>")
  @as("UsePreviousValue")
  usePreviousValue: option<usePreviousValue>,
  @ocaml.doc("<p>The input value associated with the parameter.</p>") @as("ParameterValue")
  parameterValue: option<parameterValue>,
  @ocaml.doc("<p>The key associated with the parameter. If you don't specify a key and value for a
         particular parameter, AWS CloudFormation uses the default value that is specified in your
         template.</p>")
  @as("ParameterKey")
  parameterKey: option<parameterKey>,
}
@ocaml.doc("<p>The Output data type.</p>")
type output = {
  @ocaml.doc("<p>The name of the export associated with the output.</p>") @as("ExportName")
  exportName: option<exportName>,
  @ocaml.doc("<p>User defined description associated with the output.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The value associated with the output.</p>") @as("OutputValue")
  outputValue: option<outputValue>,
  @ocaml.doc("<p>The key associated with the output.</p>") @as("OutputKey")
  outputKey: option<outputKey>,
}
type organizationalUnitIdList = array<organizationalUnitId>
type notificationARNs = array<notificationARN>
@ocaml.doc("<p>Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.</p>
         <p>For more information on modules, see <a href=\"AWSCloudFormation/latest/UserGuide/modules.html\">Using modules to encapsulate and reuse resource configurations</a> in the <i>CloudFormation User Guide</i>.</p>")
type moduleInfo = {
  @ocaml.doc("<p>A concantenated list of the logical IDs of the module or modules containing the resource. Modules are listed starting with the inner-most nested module, and separated by  <code>/</code>.</p>
         <p>In the following example, the resource was created from a module, <code>moduleA</code>, that is nested inside a parent module, <code>moduleB</code>.</p>
         <p>
            <code>moduleA/moduleB</code>
         </p>
         <p>For more information, see <a href=\"AWSCloudFormation/latest/UserGuide/modules.html#module-ref-resources\">Referencing resources in a module</a> in the <i>CloudFormation User Guide</i>.</p>")
  @as("LogicalIdHierarchy")
  logicalIdHierarchy: option<logicalIdHierarchy>,
  @ocaml.doc("<p>A concantenated list of the the module type or types containing the resource. Module types are listed starting with the inner-most nested module, and separated by  <code>/</code>.</p>
         <p>In the following example, the resource was created from a module of type <code>AWS::First::Example::MODULE</code>, that is nested inside a parent module of type <code>AWS::Second::Example::MODULE</code>.</p>
         <p>
            <code>AWS::First::Example::MODULE/AWS::Second::Example::MODULE</code>
         </p>")
  @as("TypeHierarchy")
  typeHierarchy: option<typeHierarchy>,
}
type logicalResourceIds = array<logicalResourceId>
@ocaml.doc("<p>Contains logging configuration information for a type.</p>")
type loggingConfig = {
  @ocaml.doc(
    "<p>The Amazon CloudWatch log group to which CloudFormation sends error logging information when invoking the type's handlers.</p>"
  )
  @as("LogGroupName")
  logGroupName: logGroupName,
  @ocaml.doc(
    "<p>The ARN of the role that CloudFormation should assume when sending log entries to CloudWatch logs.</p>"
  )
  @as("LogRoleArn")
  logRoleArn: roleARN2,
}
type imports = array<stackName>
@ocaml.doc("<p>The <code>Export</code> structure describes the exported output values for a
         stack.</p>")
type export_ = {
  @ocaml.doc("<p>The value of the exported output, such as a resource physical ID. This value is
         defined in the <code>Export</code> field in the associated stack's <code>Outputs</code>
         section.</p>")
  @as("Value")
  value: option<exportValue>,
  @ocaml.doc("<p>The name of exported output value. Use this name and the <code>Fn::ImportValue</code>
         function to import the associated value into other stacks. The name is defined in the
            <code>Export</code> field in the associated stack's <code>Outputs</code>
         section.</p>")
  @as("Name")
  name: option<exportName>,
  @ocaml.doc("<p>The stack that contains the exported output name and value.</p>")
  @as("ExportingStackId")
  exportingStackId: option<stackId>,
}
@ocaml.doc("<p>The <code>ChangeSetSummary</code> structure describes a change set, its status, and
         the stack with which it's associated.</p>")
type changeSetSummary = {
  @ocaml.doc("<p>The root change set ID.</p>") @as("RootChangeSetId")
  rootChangeSetId: option<changeSetId>,
  @ocaml.doc("<p>The parent change set ID.</p>") @as("ParentChangeSetId")
  parentChangeSetId: option<changeSetId>,
  @ocaml.doc("<p>Specifies the current setting of <code>IncludeNestedStacks</code> for the change
         set.</p>")
  @as("IncludeNestedStacks")
  includeNestedStacks: option<includeNestedStacks>,
  @ocaml.doc("<p>Descriptive information about the change set.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The start time when the change set was created, in UTC.</p>") @as("CreationTime")
  creationTime: option<creationTime>,
  @ocaml.doc("<p>A description of the change set's status. For example, if your change set is in the
            <code>FAILED</code> state, AWS CloudFormation shows the error message.</p>")
  @as("StatusReason")
  statusReason: option<changeSetStatusReason>,
  @ocaml.doc("<p>The state of the change set, such as <code>CREATE_IN_PROGRESS</code>,
            <code>CREATE_COMPLETE</code>, or <code>FAILED</code>.</p>")
  @as("Status")
  status: option<changeSetStatus>,
  @ocaml.doc("<p>If the change set execution status is <code>AVAILABLE</code>, you can execute the
         change set. If you can’t execute the change set, the status indicates why. For example, a
         change set might be in an <code>UNAVAILABLE</code> state because AWS CloudFormation is
         still creating it or in an <code>OBSOLETE</code> state because the stack was already
         updated.</p>")
  @as("ExecutionStatus")
  executionStatus: option<executionStatus>,
  @ocaml.doc("<p>The name of the change set.</p>") @as("ChangeSetName")
  changeSetName: option<changeSetName>,
  @ocaml.doc("<p>The ID of the change set.</p>") @as("ChangeSetId")
  changeSetId: option<changeSetId>,
  @ocaml.doc("<p>The name of the stack with which the change set is associated.</p>")
  @as("StackName")
  stackName: option<stackName>,
  @ocaml.doc("<p>The ID of the stack with which the change set is associated.</p>") @as("StackId")
  stackId: option<stackId>,
}
type capabilities = array<capability>
@ocaml.doc(
  "<p>[Service-managed permissions] Describes whether StackSets automatically deploys to AWS Organizations accounts that are added to a target organization or organizational unit (OU).</p>"
)
type autoDeployment = {
  @ocaml.doc(
    "<p>If set to <code>true</code>, stack resources are retained when an account is removed from a target organization or OU. If set to <code>false</code>, stack resources are deleted. Specify only if <code>Enabled</code> is set to <code>True</code>.</p>"
  )
  @as("RetainStacksOnAccountRemoval")
  retainStacksOnAccountRemoval: option<retainStacksOnAccountRemovalNullable>,
  @ocaml.doc(
    "<p>If set to <code>true</code>, StackSets automatically deploys additional stack instances to AWS Organizations accounts that are added to a target organization or organizational unit (OU) in the specified Regions. If an account is removed from a target organization or OU, StackSets deletes stack instances from the account in the specified Regions.</p>"
  )
  @as("Enabled")
  enabled: option<autoDeploymentNullable>,
}
type allowedValues = array<allowedValue>
type accountList = array<account>
@ocaml.doc("<p>The AccountLimit data type. </p>
         <p>CloudFormation has the following limits per account:</p>
         <ul>
            <li>
               <p>Number of concurrent resources</p>
            </li>
            <li>
               <p>Number of stacks</p>
            </li>
            <li>
               <p>Number of stack outputs</p>
            </li>
         </ul>
         <p>For more information about these account limits, and other CloudFormation limits, see
            <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html\">AWS CloudFormation
            Limits</a> in the <i>AWS CloudFormation User Guide</i>.</p>")
type accountLimit = {
  @ocaml.doc("<p>The value that is associated with the account limit name.</p>") @as("Value")
  value: option<limitValue>,
  @ocaml.doc("<p>The name of the account limit.</p>
         <p>Values: <code>ConcurrentResourcesLimit</code> | <code>StackLimit</code> |
            <code>StackOutputsLimit</code>
         </p>")
  @as("Name")
  name: option<limitName>,
}
@ocaml.doc("<p>Structure that contains the results of the account gate function which AWS
         CloudFormation invokes, if present, before proceeding with a stack set operation in an
         account and Region.</p>
         <p>For each account and Region, AWS CloudFormation lets you specify a Lamdba function
         that encapsulates any requirements that must be met before CloudFormation can proceed with
         a stack set operation in that account and Region. CloudFormation invokes the function each
         time a stack set operation is requested for that account and Region; if the function
         returns <code>FAILED</code>, CloudFormation cancels the operation in that account and
         Region, and sets the stack set operation result status for that account and Region to
            <code>FAILED</code>. </p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-account-gating.html\">Configuring a
            target account gate</a>.</p>")
type accountGateResult = {
  @ocaml.doc("<p>The reason for the account gate status assigned to this account and Region for the
         stack set operation.</p>")
  @as("StatusReason")
  statusReason: option<accountGateStatusReason>,
  @ocaml.doc("<p>The status of the account gate function.</p>
         <ul>
            <li>
               <p>
                  <code>SUCCEEDED</code>: The account gate function has determined that the
               account and Region passes any requirements for a stack set operation to occur. AWS
               CloudFormation proceeds with the stack operation in that account and Region.
            </p>
            </li>
            <li>
               <p>
                  <code>FAILED</code>: The account gate function has determined that the account
               and Region does not meet the requirements for a stack set operation to occur. AWS
               CloudFormation cancels the stack set operation in that account and Region, and sets
               the stack set operation result status for that account and Region to
                  <code>FAILED</code>. </p>
            </li>
            <li>
               <p>
                  <code>SKIPPED</code>: AWS CloudFormation has skipped calling the account gate
               function for this account and Region, for one of the following reasons:</p>
               <ul>
                  <li>
                     <p>An account gate function has not been specified for the account and
                     Region. AWS CloudFormation proceeds with the stack set operation in this
                     account and Region.</p>
                  </li>
                  <li>
                     <p>The <code>AWSCloudFormationStackSetExecutionRole</code> of the stack set
                     adminstration account lacks permissions to invoke the function. AWS
                     CloudFormation proceeds with the stack set operation in this account and
                     Region.</p>
                  </li>
                  <li>
                     <p>Either no action is necessary, or no action is possible, on the stack.
                     AWS CloudFormation skips the stack set operation in this account and
                     Region.</p>
                  </li>
               </ul>
            </li>
         </ul>")
  @as("Status")
  status: option<accountGateStatus>,
}
type typeVersionSummaries = array<typeVersionSummary>
type typeSummaries = array<typeSummary>
type templateParameters = array<templateParameter>
type tags = array<tag>
@ocaml.doc("<p>The StackSummary Data Type</p>")
type stackSummary = {
  @ocaml.doc("<p>Summarizes information on whether a stack's actual configuration differs, or has
            <i>drifted</i>, from it's expected configuration, as defined in the stack
         template and any values specified as template parameters. For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html\">Detecting Unregulated Configuration
            Changes to Stacks and Resources</a>.</p>")
  @as("DriftInformation")
  driftInformation: option<stackDriftInformationSummary>,
  @ocaml.doc("<p>For nested stacks--stacks created as resources for another stack--the stack ID of the
         top-level stack to which the nested stack ultimately belongs.</p>
         <p>For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html\">Working with Nested Stacks</a> in the
         <i>AWS CloudFormation User Guide</i>.</p>")
  @as("RootId")
  rootId: option<stackId>,
  @ocaml.doc("<p>For nested stacks--stacks created as resources for another stack--the stack ID of the
         direct parent of this stack. For the first level of nested stacks, the root stack is also
         the parent stack.</p>
         <p>For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html\">Working with Nested Stacks</a> in the
         <i>AWS CloudFormation User Guide</i>.</p>")
  @as("ParentId")
  parentId: option<stackId>,
  @ocaml.doc("<p>Success/Failure message associated with the stack status.</p>")
  @as("StackStatusReason")
  stackStatusReason: option<stackStatusReason>,
  @ocaml.doc("<p>The current status of the stack.</p>") @as("StackStatus") stackStatus: stackStatus,
  @ocaml.doc("<p>The time the stack was deleted.</p>") @as("DeletionTime")
  deletionTime: option<deletionTime>,
  @ocaml.doc("<p>The time the stack was last updated. This field will only be returned if the stack
         has been updated at least once.</p>")
  @as("LastUpdatedTime")
  lastUpdatedTime: option<lastUpdatedTime>,
  @ocaml.doc("<p>The time the stack was created.</p>") @as("CreationTime")
  creationTime: creationTime,
  @ocaml.doc("<p>The template description of the template used to create the stack.</p>")
  @as("TemplateDescription")
  templateDescription: option<templateDescription>,
  @ocaml.doc("<p>The name associated with the stack.</p>") @as("StackName") stackName: stackName,
  @ocaml.doc("<p>Unique stack identifier.</p>") @as("StackId") stackId: option<stackId>,
}
@ocaml.doc("<p>The structures that contain summary information about the specified stack
         set.</p>")
type stackSetSummary = {
  @ocaml.doc("<p>Most recent time when CloudFormation performed a drift detection operation on the stack
         set. This value will be <code>NULL</code> for any stack set on which drift detection has
         not yet been performed.</p>")
  @as("LastDriftCheckTimestamp")
  lastDriftCheckTimestamp: option<timestamp_>,
  @ocaml.doc("<p>Status of the stack set's actual configuration compared to its expected template and
         parameter configuration. A stack set is considered to have drifted if one or more of its
         stack instances have drifted from their expected template and parameter
         configuration.</p>
         <ul>
            <li>
               <p>
                  <code>DRIFTED</code>: One or more of the stack instances belonging to the stack
               set stack differs from the expected template and parameter configuration. A stack
               instance is considered to have drifted if one or more of the resources in the
               associated stack have drifted.</p>
            </li>
            <li>
               <p>
                  <code>NOT_CHECKED</code>: AWS CloudFormation has not checked the stack set for drift.</p>
            </li>
            <li>
               <p>
                  <code>IN_SYNC</code>: All of the stack instances belonging to the stack set stack
               match from the expected template and parameter configuration.</p>
            </li>
            <li>
               <p>
                  <code>UNKNOWN</code>: This value is reserved for future use.</p>
            </li>
         </ul>")
  @as("DriftStatus")
  driftStatus: option<stackDriftStatus>,
  @ocaml.doc("<p>Describes how the IAM roles required for stack set operations are created.</p>
         <ul>
            <li>
               <p>With <code>self-managed</code> permissions, you must create the administrator and execution roles required to deploy to target accounts. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html\">Grant Self-Managed Stack Set Permissions</a>.</p>
            </li>
            <li>
               <p>With <code>service-managed</code> permissions, StackSets automatically creates the IAM roles required to deploy to accounts managed by AWS Organizations. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html\">Grant Service-Managed Stack Set Permissions</a>.</p>
            </li>
         </ul>")
  @as("PermissionModel")
  permissionModel: option<permissionModels>,
  @ocaml.doc(
    "<p>[Service-managed permissions] Describes whether StackSets automatically deploys to AWS Organizations accounts that are added to a target organizational unit (OU).</p>"
  )
  @as("AutoDeployment")
  autoDeployment: option<autoDeployment>,
  @ocaml.doc("<p>The status of the stack set.</p>") @as("Status") status: option<stackSetStatus>,
  @ocaml.doc("<p>A description of the stack set that you specify when the stack set is created or
         updated.</p>")
  @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The ID of the stack set.</p>") @as("StackSetId") stackSetId: option<stackSetId>,
  @ocaml.doc("<p>The name of the stack set.</p>") @as("StackSetName")
  stackSetName: option<stackSetName>,
}
type stackSetOperationSummaries = array<stackSetOperationSummary>
@ocaml.doc("<p>The structure that contains information about a specified operation's results for a
         given account in a given Region.</p>")
type stackSetOperationResultSummary = {
  @ocaml.doc(
    "<p>[Service-managed permissions] The organization root ID or organizational unit (OU) IDs that you specified for <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html\">DeploymentTargets</a>.</p>"
  )
  @as("OrganizationalUnitId")
  organizationalUnitId: option<organizationalUnitId>,
  @ocaml.doc("<p>The results of the account gate function AWS CloudFormation invokes, if present,
         before proceeding with stack set operations in an account</p>")
  @as("AccountGateResult")
  accountGateResult: option<accountGateResult>,
  @ocaml.doc("<p>The reason for the assigned result status.</p>") @as("StatusReason")
  statusReason: option<reason>,
  @ocaml.doc("<p>The result status of the stack set operation for the given account in the given
         Region.</p>
         <ul>
            <li>
               <p>
                  <code>CANCELLED</code>: The operation in the specified account and Region has
               been cancelled. This is either because a user has stopped the stack set operation, or
               because the failure tolerance of the stack set operation has been exceeded.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code>: The operation in the specified account and Region failed. </p>
               <p>If the stack set operation fails in enough accounts within a Region, the
               failure tolerance for the stack set operation as a whole might be exceeded.
            </p>
            </li>
            <li>
               <p>
                  <code>RUNNING</code>: The operation in the specified account and Region is
               currently in progress.</p>
            </li>
            <li>
               <p>
                  <code>PENDING</code>: The operation in the specified account and Region has yet
               to start. </p>
            </li>
            <li>
               <p>
                  <code>SUCCEEDED</code>: The operation in the specified account and Region
               completed successfully.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<stackSetOperationResultStatus>,
  @ocaml.doc("<p>The name of the AWS Region for this operation result.</p>") @as("Region")
  region: option<region>,
  @ocaml.doc(
    "<p>[Self-managed permissions] The name of the AWS account for this operation result.</p>"
  )
  @as("Account")
  account: option<account>,
}
@ocaml.doc("<p>The user-specified preferences for how AWS CloudFormation performs a stack set
         operation. </p>
         <p>For more information on maximum concurrent accounts and failure tolerance, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options\">Stack set operation options</a>.</p>")
type stackSetOperationPreferences = {
  @ocaml.doc("<p>The maximum percentage of accounts in which to perform this operation at one
         time.</p>
         <p>When calculating the number of accounts based on the specified percentage, AWS
         CloudFormation rounds down to the next whole number. This is true except in cases where
         rounding down would result is zero. In this case, CloudFormation sets the number as one
         instead.</p>
         <p>Note that this setting lets you specify the <i>maximum</i> for
         operations. For large deployments, under certain circumstances the actual number of
         accounts acted upon concurrently may be lower due to service throttling.</p>
         <p>Conditional: You must specify either <code>MaxConcurrentCount</code> or
            <code>MaxConcurrentPercentage</code>, but not both.</p>")
  @as("MaxConcurrentPercentage")
  maxConcurrentPercentage: option<maxConcurrentPercentage>,
  @ocaml.doc("<p>The maximum number of accounts in which to perform this operation at one time. This
         is dependent on the value of
            <code>FailureToleranceCount</code>. <code>MaxConcurrentCount</code> is at most one more
         than the <code>FailureToleranceCount</code>.</p>
         <p>Note that this setting lets you specify the <i>maximum</i> for
         operations. For large deployments, under certain circumstances the actual number of
         accounts acted upon concurrently may be lower due to service throttling.</p>
         <p>Conditional: You must specify either <code>MaxConcurrentCount</code> or
            <code>MaxConcurrentPercentage</code>, but not both.</p>")
  @as("MaxConcurrentCount")
  maxConcurrentCount: option<maxConcurrentCount>,
  @ocaml.doc("<p>The percentage of accounts, per Region, for which this stack operation can fail
         before AWS CloudFormation stops the operation in that Region. If the operation is stopped
         in a Region, AWS CloudFormation doesn't attempt the operation in any subsequent
         Regions.</p>
         <p>When calculating the number of accounts based on the specified percentage, AWS
         CloudFormation rounds <i>down</i> to the next whole number.</p>
         <p>Conditional: You must specify either <code>FailureToleranceCount</code> or
            <code>FailureTolerancePercentage</code>, but not both.</p>")
  @as("FailureTolerancePercentage")
  failureTolerancePercentage: option<failureTolerancePercentage>,
  @ocaml.doc("<p>The number of accounts, per Region, for which this operation can fail before AWS
         CloudFormation stops the operation in that Region. If the operation is stopped in a Region,
         AWS CloudFormation doesn't attempt the operation in any subsequent Regions.</p>
         <p>Conditional: You must specify either <code>FailureToleranceCount</code> or
            <code>FailureTolerancePercentage</code> (but not both).</p>")
  @as("FailureToleranceCount")
  failureToleranceCount: option<failureToleranceCount>,
  @ocaml.doc("<p>The order of the Regions in where you want to perform the stack operation.</p>")
  @as("RegionOrder")
  regionOrder: option<regionList>,
  @ocaml.doc(
    "<p>The concurrency type of deploying StackSets operations in regions, could be in parallel or one region at a time.</p>"
  )
  @as("RegionConcurrencyType")
  regionConcurrencyType: option<regionConcurrencyType>,
}
@ocaml.doc("<p>Contains high-level information about the specified stack resource.</p>")
type stackResourceSummary = {
  @ocaml.doc(
    "<p>Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.</p>"
  )
  @as("ModuleInfo")
  moduleInfo: option<moduleInfo>,
  @ocaml.doc("<p>Information about whether the resource's actual configuration differs, or has
            <i>drifted</i>, from its expected configuration, as defined in the stack
         template and any values specified as template parameters. For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html\">Detecting Unregulated Configuration
            Changes to Stacks and Resources</a>.</p>")
  @as("DriftInformation")
  driftInformation: option<stackResourceDriftInformationSummary>,
  @ocaml.doc("<p>Success/failure message associated with the resource.</p>")
  @as("ResourceStatusReason")
  resourceStatusReason: option<resourceStatusReason>,
  @ocaml.doc("<p>Current status of the resource.</p>") @as("ResourceStatus")
  resourceStatus: resourceStatus,
  @ocaml.doc("<p>Time the status was updated.</p>") @as("LastUpdatedTimestamp")
  lastUpdatedTimestamp: timestamp_,
  @ocaml.doc("<p>Type of resource. (For more information, go to <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\"> AWS
            Resource Types Reference</a> in the AWS CloudFormation User Guide.)</p>")
  @as("ResourceType")
  resourceType: resourceType,
  @ocaml.doc("<p>The name or unique identifier that corresponds to a physical instance ID of the
         resource.</p>")
  @as("PhysicalResourceId")
  physicalResourceId: option<physicalResourceId>,
  @ocaml.doc("<p>The logical name of the resource specified in the template.</p>")
  @as("LogicalResourceId")
  logicalResourceId: logicalResourceId,
}
@ocaml.doc("<p>Contains detailed information about the specified stack resource.</p>")
type stackResourceDetail = {
  @ocaml.doc(
    "<p>Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.</p>"
  )
  @as("ModuleInfo")
  moduleInfo: option<moduleInfo>,
  @ocaml.doc("<p>Information about whether the resource's actual configuration differs, or has
            <i>drifted</i>, from its expected configuration, as defined in the stack
         template and any values specified as template parameters. For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html\">Detecting Unregulated Configuration
            Changes to Stacks and Resources</a>.</p>")
  @as("DriftInformation")
  driftInformation: option<stackResourceDriftInformation>,
  @ocaml.doc("<p>The content of the <code>Metadata</code> attribute declared for the resource. For
         more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-metadata.html\">Metadata
            Attribute</a> in the AWS CloudFormation User Guide.</p>")
  @as("Metadata")
  metadata: option<metadata>,
  @ocaml.doc("<p>User defined description associated with the resource.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>Success/failure message associated with the resource.</p>")
  @as("ResourceStatusReason")
  resourceStatusReason: option<resourceStatusReason>,
  @ocaml.doc("<p>Current status of the resource.</p>") @as("ResourceStatus")
  resourceStatus: resourceStatus,
  @ocaml.doc("<p>Time the status was updated.</p>") @as("LastUpdatedTimestamp")
  lastUpdatedTimestamp: timestamp_,
  @ocaml.doc("<p>Type of resource. ((For more information, go to <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\"> AWS
            Resource Types Reference</a> in the AWS CloudFormation User Guide.)</p>")
  @as("ResourceType")
  resourceType: resourceType,
  @ocaml.doc("<p>The name or unique identifier that corresponds to a physical instance ID of a
         resource supported by AWS CloudFormation.</p>")
  @as("PhysicalResourceId")
  physicalResourceId: option<physicalResourceId>,
  @ocaml.doc("<p>The logical name of the resource specified in the template.</p>")
  @as("LogicalResourceId")
  logicalResourceId: logicalResourceId,
  @ocaml.doc("<p>Unique identifier of the stack.</p>") @as("StackId") stackId: option<stackId>,
  @ocaml.doc("<p>The name associated with the stack.</p>") @as("StackName")
  stackName: option<stackName>,
}
@ocaml.doc("<p>The StackResource data type.</p>")
type stackResource = {
  @ocaml.doc(
    "<p>Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.</p>"
  )
  @as("ModuleInfo")
  moduleInfo: option<moduleInfo>,
  @ocaml.doc("<p>Information about whether the resource's actual configuration differs, or has
            <i>drifted</i>, from its expected configuration, as defined in the stack
         template and any values specified as template parameters. For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html\">Detecting Unregulated Configuration
            Changes to Stacks and Resources</a>.</p>")
  @as("DriftInformation")
  driftInformation: option<stackResourceDriftInformation>,
  @ocaml.doc("<p>User defined description associated with the resource.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>Success/failure message associated with the resource.</p>")
  @as("ResourceStatusReason")
  resourceStatusReason: option<resourceStatusReason>,
  @ocaml.doc("<p>Current status of the resource.</p>") @as("ResourceStatus")
  resourceStatus: resourceStatus,
  @ocaml.doc("<p>Time the status was updated.</p>") @as("Timestamp") timestamp_: timestamp_,
  @ocaml.doc("<p>Type of resource. (For more information, go to <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\"> AWS
            Resource Types Reference</a> in the AWS CloudFormation User Guide.)</p>")
  @as("ResourceType")
  resourceType: resourceType,
  @ocaml.doc("<p>The name or unique identifier that corresponds to a physical instance ID of a
         resource supported by AWS CloudFormation.</p>")
  @as("PhysicalResourceId")
  physicalResourceId: option<physicalResourceId>,
  @ocaml.doc("<p>The logical name of the resource specified in the template.</p>")
  @as("LogicalResourceId")
  logicalResourceId: logicalResourceId,
  @ocaml.doc("<p>Unique identifier of the stack.</p>") @as("StackId") stackId: option<stackId>,
  @ocaml.doc("<p>The name associated with the stack.</p>") @as("StackName")
  stackName: option<stackName>,
}
@ocaml.doc("<p>The structure that contains summary information about a stack instance.</p>")
type stackInstanceSummary = {
  @ocaml.doc("<p>Most recent time when CloudFormation performed a drift detection operation on the stack
         instance. This value will be <code>NULL</code> for any stack instance on which drift
         detection has not yet been performed.</p>")
  @as("LastDriftCheckTimestamp")
  lastDriftCheckTimestamp: option<timestamp_>,
  @ocaml.doc("<p>Status of the stack instance's actual configuration compared to the expected template
         and parameter configuration of the stack set to which it belongs. </p>
         <ul>
            <li>
               <p>
                  <code>DRIFTED</code>: The stack differs from the expected template and parameter
               configuration of the stack set to which it belongs. A stack instance is considered to
               have drifted if one or more of the resources in the associated stack have
               drifted.</p>
            </li>
            <li>
               <p>
                  <code>NOT_CHECKED</code>: AWS CloudFormation has not checked if the stack instance differs from
               its expected stack set configuration.</p>
            </li>
            <li>
               <p>
                  <code>IN_SYNC</code>: The stack instance's actual configuration matches its
               expected stack set configuration.</p>
            </li>
            <li>
               <p>
                  <code>UNKNOWN</code>: This value is reserved for future use.</p>
            </li>
         </ul>")
  @as("DriftStatus")
  driftStatus: option<stackDriftStatus>,
  @ocaml.doc(
    "<p>[Service-managed permissions] The organization root ID or organizational unit (OU) IDs that you specified for <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html\">DeploymentTargets</a>.</p>"
  )
  @as("OrganizationalUnitId")
  organizationalUnitId: option<organizationalUnitId>,
  @ocaml.doc("<p>The detailed status of the stack instance.</p>") @as("StackInstanceStatus")
  stackInstanceStatus: option<stackInstanceComprehensiveStatus>,
  @ocaml.doc("<p>The explanation for the specific status code assigned to this stack
         instance.</p>")
  @as("StatusReason")
  statusReason: option<reason>,
  @ocaml.doc("<p>The status of the stack instance, in terms of its synchronization with its associated
         stack set.</p>
         <ul>
            <li>
               <p>
                  <code>INOPERABLE</code>: A <code>DeleteStackInstances</code> operation has
               failed and left the stack in an unstable state. Stacks in this state are excluded
               from further <code>UpdateStackSet</code> operations. You might need to perform a
                  <code>DeleteStackInstances</code> operation, with <code>RetainStacks</code> set to
                  <code>true</code>, to delete the stack instance, and then delete the stack
               manually.</p>
            </li>
            <li>
               <p>
                  <code>OUTDATED</code>: The stack isn't currently up to date with the stack set
               because:</p>
               <ul>
                  <li>
                     <p>The associated stack failed during a <code>CreateStackSet</code> or
                        <code>UpdateStackSet</code> operation. </p>
                  </li>
                  <li>
                     <p>The stack was part of a <code>CreateStackSet</code> or
                        <code>UpdateStackSet</code> operation that failed or was stopped before the
                     stack was created or updated. </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>
                  <code>CURRENT</code>: The stack is currently up to date with the stack
               set.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<stackInstanceStatus>,
  @ocaml.doc("<p>The ID of the stack instance.</p>") @as("StackId") stackId: option<stackId>,
  @ocaml.doc(
    "<p>[Self-managed permissions] The name of the AWS account that the stack instance is associated with.</p>"
  )
  @as("Account")
  account: option<account>,
  @ocaml.doc("<p>The name of the AWS Region that the stack instance is associated with.</p>")
  @as("Region")
  region: option<region>,
  @ocaml.doc("<p>The name or unique ID of the stack set that the stack instance is associated
         with.</p>")
  @as("StackSetId")
  stackSetId: option<stackSetId>,
}
type stackInstanceFilters = array<stackInstanceFilter>
type stackEvents = array<stackEvent>
type rollbackTriggers = array<rollbackTrigger>
@ocaml.doc("<p>Describes the target resource of an import operation.</p>")
type resourceToImport = {
  @ocaml.doc("<p>A key-value pair that identifies the target resource. The key is an identifier property
         (for example, <code>BucketName</code> for <code>AWS::S3::Bucket</code> resources) and the
         value is the actual property value (for example, <code>MyS3Bucket</code>).</p>")
  @as("ResourceIdentifier")
  resourceIdentifier: resourceIdentifierProperties,
  @ocaml.doc("<p>The logical ID of the target resource as specified in the template.</p>")
  @as("LogicalResourceId")
  logicalResourceId: logicalResourceId,
  @ocaml.doc(
    "<p>The type of resource to import into your stack, such as <code>AWS::S3::Bucket</code>. For a list of supported resource types, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html\">Resources that support import operations</a> in the AWS CloudFormation User Guide.</p>"
  )
  @as("ResourceType")
  resourceType: resourceType,
}
@ocaml.doc("<p>Describes the target resources of a specific type in your import template (for example,
         all <code>AWS::S3::Bucket</code> resources) and the properties you can provide during the
         import to identify resources of that type.</p>")
type resourceIdentifierSummary = {
  @ocaml.doc("<p>The resource properties you can provide during the import to identify your target
         resources. For example, <code>BucketName</code> is a possible identifier property for
            <code>AWS::S3::Bucket</code> resources.</p>")
  @as("ResourceIdentifiers")
  resourceIdentifiers: option<resourceIdentifiers>,
  @ocaml.doc("<p>The logical IDs of the target resources of the specified <code>ResourceType</code>, as
         defined in the import template.</p>")
  @as("LogicalResourceIds")
  logicalResourceIds: option<logicalResourceIds>,
  @ocaml.doc("<p>The template resource type of the target resources, such as
         <code>AWS::S3::Bucket</code>.</p>")
  @as("ResourceType")
  resourceType: option<resourceType>,
}
@ocaml.doc("<p>For a resource with <code>Modify</code> as the action, the
            <code>ResourceChange</code> structure describes the changes AWS CloudFormation will make
         to that resource.</p>")
type resourceChangeDetail = {
  @ocaml.doc("<p>The identity of the entity that triggered this change. This entity is a member of the
         group that is specified by the <code>ChangeSource</code> field. For example, if you
         modified the value of the <code>KeyPairName</code> parameter, the
            <code>CausingEntity</code> is the name of the parameter
         (<code>KeyPairName</code>).</p>
         <p>If the <code>ChangeSource</code> value is <code>DirectModification</code>, no value
         is given for <code>CausingEntity</code>.</p>")
  @as("CausingEntity")
  causingEntity: option<causingEntity>,
  @ocaml.doc("<p>The group to which the <code>CausingEntity</code> value belongs. There are five
         entity groups:</p>
         <ul>
            <li>
               <p>
                  <code>ResourceReference</code> entities are <code>Ref</code> intrinsic functions that
               refer to resources in the template, such as <code>{ \"Ref\" : \"MyEC2InstanceResource\"
                  }</code>.</p>
            </li>
            <li>
               <p>
                  <code>ParameterReference</code> entities are <code>Ref</code> intrinsic functions
               that get template parameter values, such as <code>{ \"Ref\" : \"MyPasswordParameter\"
                  }</code>.</p>
            </li>
            <li>
               <p>
                  <code>ResourceAttribute</code> entities are <code>Fn::GetAtt</code> intrinsic
               functions that get resource attribute values, such as <code>{ \"Fn::GetAtt\" : [
                  \"MyEC2InstanceResource\", \"PublicDnsName\" ] }</code>.</p>
            </li>
            <li>
               <p>
                  <code>DirectModification</code> entities are changes that are made directly to the
               template.</p>
            </li>
            <li>
               <p>
                  <code>Automatic</code> entities are <code>AWS::CloudFormation::Stack</code> resource
               types, which are also known as nested stacks. If you made no changes to the
                  <code>AWS::CloudFormation::Stack</code> resource, AWS CloudFormation sets the
                  <code>ChangeSource</code> to <code>Automatic</code> because the nested stack's
               template might have changed. Changes to a nested stack's template aren't visible to
               AWS CloudFormation until you run an update on the parent stack.</p>
            </li>
         </ul>")
  @as("ChangeSource")
  changeSource: option<changeSource>,
  @ocaml.doc("<p>Indicates whether AWS CloudFormation can determine the target value, and whether the
         target value will change before you execute a change set.</p>
         <p>For <code>Static</code> evaluations, AWS CloudFormation can determine that the target
         value will change, and its value. For example, if you directly modify the
            <code>InstanceType</code> property of an EC2 instance, AWS CloudFormation knows that
         this property value will change, and its value, so this is a <code>Static</code>
         evaluation.</p>
         <p>For <code>Dynamic</code> evaluations, cannot determine the target value because it
         depends on the result of an intrinsic function, such as a <code>Ref</code> or
            <code>Fn::GetAtt</code> intrinsic function, when the stack is updated. For example, if
         your template includes a reference to a resource that is conditionally recreated, the value
         of the reference (the physical ID of the resource) might change, depending on if the
         resource is recreated. If the resource is recreated, it will have a new physical ID, so all
         references to that resource will also be updated.</p>")
  @as("Evaluation")
  evaluation: option<evaluationType>,
  @ocaml.doc("<p>A <code>ResourceTargetDefinition</code> structure that describes the field that AWS
         CloudFormation will change and whether the resource will be recreated.</p>")
  @as("Target")
  target: option<resourceTargetDefinition>,
}
type propertyDifferences = array<propertyDifference>
type physicalResourceIdContext = array<physicalResourceIdContextKeyValuePair>
type parameters = array<parameter>
@ocaml.doc("<p>A set of criteria that AWS CloudFormation uses to validate parameter values. Although
         other constraints might be defined in the stack template, AWS CloudFormation returns only
         the <code>AllowedValues</code> property.</p>")
type parameterConstraints = {
  @ocaml.doc("<p>A list of values that are permitted for a parameter.</p>") @as("AllowedValues")
  allowedValues: option<allowedValues>,
}
type outputs = array<output>
type exports = array<export_>
@ocaml.doc("<p>[Service-managed permissions] The AWS Organizations accounts to which StackSets deploys. StackSets does not deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization.</p>
         <p>For update operations, you can specify either <code>Accounts</code> or <code>OrganizationalUnitIds</code>. For create and delete operations, specify <code>OrganizationalUnitIds</code>.</p>")
type deploymentTargets = {
  @ocaml.doc(
    "<p>The organization root ID or organizational unit (OU) IDs to which StackSets deploys.</p>"
  )
  @as("OrganizationalUnitIds")
  organizationalUnitIds: option<organizationalUnitIdList>,
  @ocaml.doc("<p>Returns the value of the AccountsUrl property.</p>") @as("AccountsUrl")
  accountsUrl: option<accountsUrl>,
  @ocaml.doc(
    "<p>The names of one or more AWS accounts for which you want to deploy stack set updates.</p>"
  )
  @as("Accounts")
  accounts: option<accountList>,
}
type changeSetSummaries = array<changeSetSummary>
type accountLimitList = array<accountLimit>
type stackSummaries = array<stackSummary>
type stackSetSummaries = array<stackSetSummary>
type stackSetOperationResultSummaries = array<stackSetOperationResultSummary>
@ocaml.doc("<p>The structure that contains information about a stack set operation. </p>")
type stackSetOperation = {
  @ocaml.doc("<p>Detailed information about the drift status of the stack set. This includes information
         about drift operations currently being performed on the stack set.</p>
         <p>this information will only be present for stack set operations whose <code>Action</code>
         type is <code>DETECT_DRIFT</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html\">Detecting Unmanaged
         Changes in Stack Sets</a> in the AWS CloudFormation User Guide.</p>")
  @as("StackSetDriftDetectionDetails")
  stackSetDriftDetectionDetails: option<stackSetDriftDetectionDetails>,
  @ocaml.doc(
    "<p>[Service-managed permissions] The AWS Organizations accounts affected by the stack operation.</p>"
  )
  @as("DeploymentTargets")
  deploymentTargets: option<deploymentTargets>,
  @ocaml.doc("<p>The time at which the stack set operation ended, across all accounts and Regions
         specified. Note that this doesn't necessarily mean that the stack set operation was
         successful, or even attempted, in each account or Region.</p>")
  @as("EndTimestamp")
  endTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The time at which the operation was initiated. Note that the creation times for the
         stack set operation might differ from the creation time of the individual stacks
         themselves. This is because AWS CloudFormation needs to perform preparatory work for the
         operation, such as dispatching the work to the requested Regions, before actually creating
         the first stacks.</p>")
  @as("CreationTimestamp")
  creationTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The name of the IAM execution role used to create or update the stack set.</p>
         <p>Use customized execution roles to control which stack resources users and groups can
         include in their stack sets.
      </p>")
  @as("ExecutionRoleName")
  executionRoleName: option<executionRoleName>,
  @ocaml.doc("<p>The Amazon Resource Number (ARN) of the IAM role used to perform this stack set
         operation. </p>
         <p>Use customized administrator roles to control which users or groups can manage specific
         stack sets within the same administrator account. For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html\">Define Permissions for Multiple
            Administrators</a> in the <i>AWS CloudFormation User Guide</i>.</p>")
  @as("AdministrationRoleARN")
  administrationRoleARN: option<roleARN>,
  @ocaml.doc("<p>For stack set operations of action type <code>DELETE</code>, specifies whether to
         remove the stack instances from the specified stack set, but doesn't delete the stacks. You
         can't reassociate a retained stack, or add an existing, saved stack to a new stack
         set.</p>")
  @as("RetainStacks")
  retainStacks: option<retainStacksNullable>,
  @ocaml.doc("<p>The preferences for how AWS CloudFormation performs this stack set
         operation.</p>")
  @as("OperationPreferences")
  operationPreferences: option<stackSetOperationPreferences>,
  @ocaml.doc("<p>The status of the operation. </p>
         <ul>
            <li>
               <p>
                  <code>FAILED</code>: The operation exceeded the specified failure tolerance.
               The failure tolerance value that you've set for an operation is applied for each
               Region during stack create and update operations. If the number of failed stacks
               within a Region exceeds the failure tolerance, the status of the operation in the
               Region is set to <code>FAILED</code>. This in turn sets the status of the operation
               as a whole to <code>FAILED</code>, and AWS CloudFormation cancels the operation in
               any remaining Regions.</p>
            </li>
            <li>
               <p>
                  <code>QUEUED</code>: [Service-managed permissions] For automatic deployments that
               require a sequence of operations, the operation is queued to be performed. For more information, see the <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-status-codes\">stack set operation status codes</a> in the AWS CloudFormation User Guide.</p>
            </li>
            <li>
               <p>
                  <code>RUNNING</code>: The operation is currently being performed.</p>
            </li>
            <li>
               <p>
                  <code>STOPPED</code>: The user has cancelled the operation.</p>
            </li>
            <li>
               <p>
                  <code>STOPPING</code>: The operation is in the process of stopping, at user
               request. </p>
            </li>
            <li>
               <p>
                  <code>SUCCEEDED</code>: The operation completed creating or updating all the
               specified stacks without exceeding the failure tolerance for the operation.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<stackSetOperationStatus>,
  @ocaml.doc("<p>The type of stack set operation: <code>CREATE</code>, <code>UPDATE</code>, or
            <code>DELETE</code>. Create and delete operations affect only the specified stack set
         instances that are associated with the specified stack set. Update operations affect both
         the stack set itself, as well as <i>all</i> associated stack set
         instances.</p>")
  @as("Action")
  action: option<stackSetOperationAction>,
  @ocaml.doc("<p>The ID of the stack set.</p>") @as("StackSetId") stackSetId: option<stackSetId>,
  @ocaml.doc("<p>The unique ID of a stack set operation.</p>") @as("OperationId")
  operationId: option<clientRequestToken>,
}
@ocaml.doc("<p>A structure that contains information about a stack set. A stack set enables you to
         provision stacks into AWS accounts and across Regions by using a single CloudFormation
         template. In the stack set, you specify the template to use, as well as any parameters and
         capabilities that the template requires. </p>")
type stackSet = {
  @ocaml.doc(
    "<p>[Service-managed permissions] The organization root ID or organizational unit (OU) IDs that you specified for <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html\">DeploymentTargets</a>.</p>"
  )
  @as("OrganizationalUnitIds")
  organizationalUnitIds: option<organizationalUnitIdList>,
  @ocaml.doc("<p>Describes how the IAM roles required for stack set operations are created.</p>
         <ul>
            <li>
               <p>With <code>self-managed</code> permissions, you must create the administrator and execution roles required to deploy to target accounts. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html\">Grant Self-Managed Stack Set Permissions</a>.</p>
            </li>
            <li>
               <p>With <code>service-managed</code> permissions, StackSets automatically creates the IAM roles required to deploy to accounts managed by AWS Organizations. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html\">Grant Service-Managed Stack Set Permissions</a>.</p>
            </li>
         </ul>")
  @as("PermissionModel")
  permissionModel: option<permissionModels>,
  @ocaml.doc(
    "<p>[Service-managed permissions] Describes whether StackSets automatically deploys to AWS Organizations accounts that are added to a target organization or organizational unit (OU).</p>"
  )
  @as("AutoDeployment")
  autoDeployment: option<autoDeployment>,
  @ocaml.doc("<p>Detailed information about the drift status of the stack set.</p>
         <p>For stack sets, contains information about the last <i>completed</i> drift
         operation performed on the stack set. Information about drift operations currently in
         progress is not included.</p>")
  @as("StackSetDriftDetectionDetails")
  stackSetDriftDetectionDetails: option<stackSetDriftDetectionDetails>,
  @ocaml.doc("<p>The name of the IAM execution role used to create or update the stack set. </p>
         <p>Use customized execution roles to control which stack resources users and groups can
         include in their stack sets.
      </p>")
  @as("ExecutionRoleName")
  executionRoleName: option<executionRoleName>,
  @ocaml.doc("<p>The Amazon Resource Number (ARN) of the IAM role used to create or update the stack
         set.</p>
         <p>Use customized administrator roles to control which users or groups can manage specific
         stack sets within the same administrator account. For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html\">Prerequisites: Granting Permissions for Stack
            Set Operations</a> in the <i>AWS CloudFormation User Guide</i>.</p>")
  @as("AdministrationRoleARN")
  administrationRoleARN: option<roleARN>,
  @ocaml.doc("<p>The Amazon Resource Number (ARN) of the stack set.</p>") @as("StackSetARN")
  stackSetARN: option<stackSetARN>,
  @ocaml.doc("<p>A list of tags that specify information about the stack set. A maximum number of 50
         tags can be specified.</p>")
  @as("Tags")
  tags: option<tags>,
  @ocaml.doc("<p>The capabilities that are allowed in the stack set. Some stack set templates might
         include resources that can affect permissions in your AWS account—for example, by creating
         new AWS Identity and Access Management (IAM) users. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities\">Acknowledging IAM Resources in AWS CloudFormation Templates.</a>
         </p>")
  @as("Capabilities")
  capabilities: option<capabilities>,
  @ocaml.doc("<p>A list of input parameters for a stack set.</p>") @as("Parameters")
  parameters: option<parameters>,
  @ocaml.doc("<p>The structure that contains the body of the template that was used to create or
         update the stack set.</p>")
  @as("TemplateBody")
  templateBody: option<templateBody>,
  @ocaml.doc("<p>The status of the stack set.</p>") @as("Status") status: option<stackSetStatus>,
  @ocaml.doc("<p>A description of the stack set that you specify when the stack set is created or
         updated.</p>")
  @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The ID of the stack set.</p>") @as("StackSetId") stackSetId: option<stackSetId>,
  @ocaml.doc("<p>The name that's associated with the stack set.</p>") @as("StackSetName")
  stackSetName: option<stackSetName>,
}
type stackResources = array<stackResource>
type stackResourceSummaries = array<stackResourceSummary>
@ocaml.doc("<p>Contains the drift information for a resource that has been checked for drift. This
         includes actual and expected property values for resources in which AWS CloudFormation has detected
         drift. Only resource properties explicitly defined in the stack template are checked for
         drift. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html\">Detecting
            Unregulated Configuration Changes to Stacks and Resources</a>.</p>
         <p>Resources that do not currently support drift detection cannot be checked. For a list
         of resources that support drift detection, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html\">Resources that Support
            Drift Detection</a>.</p>
         <p>Use <a>DetectStackResourceDrift</a> to detect drift on individual
         resources, or <a>DetectStackDrift</a> to detect drift on all resources in a
         given stack that support drift detection.</p>")
type stackResourceDrift = {
  @ocaml.doc(
    "<p>Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.</p>"
  )
  @as("ModuleInfo")
  moduleInfo: option<moduleInfo>,
  @ocaml.doc(
    "<p>Time at which AWS CloudFormation performed drift detection on the stack resource.</p>"
  )
  @as("Timestamp")
  timestamp_: timestamp_,
  @ocaml.doc("<p>Status of the resource's actual configuration compared to its expected
         configuration</p>
         <ul>
            <li>
               <p>
                  <code>DELETED</code>: The resource differs from its expected template
               configuration because the resource has been deleted.</p>
            </li>
            <li>
               <p>
                  <code>MODIFIED</code>: One or more resource properties differ from their
               expected values (as defined in the stack template and any values specified as
               template parameters).</p>
            </li>
            <li>
               <p>
                  <code>IN_SYNC</code>: The resources's actual configuration matches its expected
               template configuration.</p>
            </li>
            <li>
               <p>
                  <code>NOT_CHECKED</code>: AWS CloudFormation does not currently return this value.</p>
            </li>
         </ul>")
  @as("StackResourceDriftStatus")
  stackResourceDriftStatus: stackResourceDriftStatus,
  @ocaml.doc("<p>A collection of the resource properties whose actual values differ from their
         expected values. These will be present only for resources whose
            <code>StackResourceDriftStatus</code> is <code>MODIFIED</code>.
         </p>")
  @as("PropertyDifferences")
  propertyDifferences: option<propertyDifferences>,
  @ocaml.doc("<p>A JSON structure containing the actual property values of the stack
         resource.</p>
         <p>For resources whose <code>StackResourceDriftStatus</code> is <code>DELETED</code>,
         this structure will not be present. </p>")
  @as("ActualProperties")
  actualProperties: option<properties>,
  @ocaml.doc("<p>A JSON structure containing the expected property values of the stack resource, as
         defined in the stack template and any values specified as template parameters. </p>
         <p>For resources whose <code>StackResourceDriftStatus</code> is <code>DELETED</code>,
         this structure will not be present. </p>")
  @as("ExpectedProperties")
  expectedProperties: option<properties>,
  @ocaml.doc("<p>The type of the resource.</p>") @as("ResourceType") resourceType: resourceType,
  @ocaml.doc("<p>Context information that enables AWS CloudFormation to uniquely identify a resource. AWS CloudFormation uses
         context key-value pairs in cases where a resource's logical and physical IDs are not enough
         to uniquely identify that resource. Each context key-value pair specifies a unique resource
         that contains the targeted resource.</p>")
  @as("PhysicalResourceIdContext")
  physicalResourceIdContext: option<physicalResourceIdContext>,
  @ocaml.doc("<p>The name or unique identifier that corresponds to a physical instance ID of a
         resource supported by AWS CloudFormation. </p>")
  @as("PhysicalResourceId")
  physicalResourceId: option<physicalResourceId>,
  @ocaml.doc("<p>The logical name of the resource specified in the template.</p>")
  @as("LogicalResourceId")
  logicalResourceId: logicalResourceId,
  @ocaml.doc("<p>The ID of the stack.</p>") @as("StackId") stackId: stackId,
}
type stackInstanceSummaries = array<stackInstanceSummary>
@ocaml.doc("<p>An AWS CloudFormation stack, in a specific account and Region, that's part of a stack
         set operation. A stack instance is a reference to an attempted or actual stack in a given
         account within a given Region. A stack instance can exist without a stack—for example, if
         the stack couldn't be created for some reason. A stack instance is associated with only one
         stack set. Each stack instance contains the ID of its associated stack set, as well as the
         ID of the actual stack and the stack status.</p>")
type stackInstance = {
  @ocaml.doc("<p>Most recent time when CloudFormation performed a drift detection operation on the stack
         instance. This value will be <code>NULL</code> for any stack instance on which drift
         detection has not yet been performed.</p>")
  @as("LastDriftCheckTimestamp")
  lastDriftCheckTimestamp: option<timestamp_>,
  @ocaml.doc("<p>Status of the stack instance's actual configuration compared to the expected template
         and parameter configuration of the stack set to which it belongs. </p>
         <ul>
            <li>
               <p>
                  <code>DRIFTED</code>: The stack differs from the expected template and parameter
               configuration of the stack set to which it belongs. A stack instance is considered to
               have drifted if one or more of the resources in the associated stack have
               drifted.</p>
            </li>
            <li>
               <p>
                  <code>NOT_CHECKED</code>: AWS CloudFormation has not checked if the stack instance differs from
               its expected stack set configuration.</p>
            </li>
            <li>
               <p>
                  <code>IN_SYNC</code>: The stack instance's actual configuration matches its
               expected stack set configuration.</p>
            </li>
            <li>
               <p>
                  <code>UNKNOWN</code>: This value is reserved for future use.</p>
            </li>
         </ul>")
  @as("DriftStatus")
  driftStatus: option<stackDriftStatus>,
  @ocaml.doc(
    "<p>[Service-managed permissions] The organization root ID or organizational unit (OU) IDs that you specified for <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html\">DeploymentTargets</a>.</p>"
  )
  @as("OrganizationalUnitId")
  organizationalUnitId: option<organizationalUnitId>,
  @ocaml.doc("<p>The explanation for the specific status code that is assigned to this stack
         instance.</p>")
  @as("StatusReason")
  statusReason: option<reason>,
  @ocaml.doc("<p>The detailed status of the stack instance.</p>") @as("StackInstanceStatus")
  stackInstanceStatus: option<stackInstanceComprehensiveStatus>,
  @ocaml.doc("<p>The status of the stack instance, in terms of its synchronization with its associated
         stack set.</p>
         <ul>
            <li>
               <p>
                  <code>INOPERABLE</code>: A <code>DeleteStackInstances</code> operation has
               failed and left the stack in an unstable state. Stacks in this state are excluded
               from further <code>UpdateStackSet</code> operations. You might need to perform a
                  <code>DeleteStackInstances</code> operation, with <code>RetainStacks</code> set to
                  <code>true</code>, to delete the stack instance, and then delete the stack
               manually.</p>
            </li>
            <li>
               <p>
                  <code>OUTDATED</code>: The stack isn't currently up to date with the stack set
               because:</p>
               <ul>
                  <li>
                     <p>The associated stack failed during a <code>CreateStackSet</code> or
                        <code>UpdateStackSet</code> operation. </p>
                  </li>
                  <li>
                     <p>The stack was part of a <code>CreateStackSet</code> or
                        <code>UpdateStackSet</code> operation that failed or was stopped before the
                     stack was created or updated. </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>
                  <code>CURRENT</code>: The stack is currently up to date with the stack
               set.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<stackInstanceStatus>,
  @ocaml.doc("<p>A list of parameters from the stack set template whose values have been overridden in
         this stack instance.</p>")
  @as("ParameterOverrides")
  parameterOverrides: option<parameters>,
  @ocaml.doc("<p>The ID of the stack instance.</p>") @as("StackId") stackId: option<stackId>,
  @ocaml.doc(
    "<p>[Self-managed permissions] The name of the AWS account that the stack instance is associated with.</p>"
  )
  @as("Account")
  account: option<account>,
  @ocaml.doc("<p>The name of the AWS Region that the stack instance is associated with.</p>")
  @as("Region")
  region: option<region>,
  @ocaml.doc("<p>The name or unique ID of the stack set that the stack instance is associated
         with.</p>")
  @as("StackSetId")
  stackSetId: option<stackSetId>,
}
@ocaml.doc("<p>Structure containing the rollback triggers for AWS CloudFormation to monitor during stack creation
         and updating operations, and for the specified monitoring period afterwards.</p>
         <p>Rollback triggers enable you to have AWS CloudFormation monitor the state of your application
         during stack creation and updating, and to roll back that operation if the application
         breaches the threshold of any of the alarms you've specified. For more information, see
            <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-rollback-triggers.html\">Monitor and Roll Back Stack
            Operations</a>.</p>")
type rollbackConfiguration = {
  @ocaml.doc("<p>The amount of time, in minutes, during which CloudFormation should monitor all the
         rollback triggers after the stack creation or update operation deploys all necessary
         resources.</p>
         <p>The default is 0 minutes.</p>
         <p>If you specify a monitoring period but do not specify any rollback triggers,
         CloudFormation still waits the specified period of time before cleaning up old resources
         after update operations. You can use this monitoring period to perform any manual stack
         validation desired, and manually cancel the stack creation or update (using <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CancelUpdateStack.html\">CancelUpdateStack</a>, for example) as necessary.</p>
         <p>If you specify 0 for this parameter, CloudFormation still monitors the specified
         rollback triggers during stack creation and update operations. Then, for update operations,
         it begins disposing of old resources immediately once the operation completes.</p>")
  @as("MonitoringTimeInMinutes")
  monitoringTimeInMinutes: option<monitoringTimeInMinutes>,
  @ocaml.doc("<p>The triggers to monitor during stack creation or update actions. </p>
         <p>By default, AWS CloudFormation saves the rollback triggers specified for a stack and applies them
         to any subsequent update operations for the stack, unless you specify otherwise. If you do
         specify rollback triggers for this parameter, those triggers replace any list of triggers
         previously specified for the stack. This means:</p>
         <ul>
            <li>
               <p>To use the rollback triggers previously specified for this stack, if any, don't
               specify this parameter.</p>
            </li>
            <li>
               <p>To specify new or updated rollback triggers, you must specify
                  <i>all</i> the triggers that you want used for this stack, even
               triggers you've specifed before (for example, when creating the stack or during a
               previous stack update). Any triggers that you don't include in the updated list of
               triggers are no longer applied to the stack.</p>
            </li>
            <li>
               <p>To remove all currently specified triggers, specify an empty list for this
               parameter.</p>
            </li>
         </ul>
         <p>If a specified trigger is missing, the entire stack operation fails and is rolled
         back. </p>")
  @as("RollbackTriggers")
  rollbackTriggers: option<rollbackTriggers>,
}
type resourcesToImport = array<resourceToImport>
type resourceIdentifierSummaries = array<resourceIdentifierSummary>
type resourceChangeDetails = array<resourceChangeDetail>
@ocaml.doc("<p>The ParameterDeclaration data type.</p>")
type parameterDeclaration = {
  @ocaml.doc("<p>The criteria that AWS CloudFormation uses to validate parameter values.</p>")
  @as("ParameterConstraints")
  parameterConstraints: option<parameterConstraints>,
  @ocaml.doc("<p>The description that is associate with the parameter.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>Flag that indicates whether the parameter value is shown as plain text in logs and in
         the AWS Management Console.</p>")
  @as("NoEcho")
  noEcho: option<noEcho>,
  @ocaml.doc("<p>The type of parameter.</p>") @as("ParameterType")
  parameterType: option<parameterType>,
  @ocaml.doc("<p>The default value of the parameter.</p>") @as("DefaultValue")
  defaultValue: option<parameterValue>,
  @ocaml.doc("<p>The name that is associated with the parameter.</p>") @as("ParameterKey")
  parameterKey: option<parameterKey>,
}
type stackResourceDrifts = array<stackResourceDrift>
@ocaml.doc("<p>The Stack data type.</p>")
type stack = {
  @ocaml.doc("<p>Information on whether a stack's actual configuration differs, or has
            <i>drifted</i>, from it's expected configuration, as defined in the stack
         template and any values specified as template parameters. For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html\">Detecting Unregulated Configuration
            Changes to Stacks and Resources</a>.</p>")
  @as("DriftInformation")
  driftInformation: option<stackDriftInformation>,
  @ocaml.doc("<p>For nested stacks--stacks created as resources for another stack--the stack ID of the
         top-level stack to which the nested stack ultimately belongs.</p>
         <p>For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html\">Working with Nested Stacks</a> in the
         <i>AWS CloudFormation User Guide</i>.</p>")
  @as("RootId")
  rootId: option<stackId>,
  @ocaml.doc("<p>For nested stacks--stacks created as resources for another stack--the stack ID of the
         direct parent of this stack. For the first level of nested stacks, the root stack is also
         the parent stack.</p>
         <p>For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html\">Working with Nested Stacks</a> in the
         <i>AWS CloudFormation User Guide</i>.</p>")
  @as("ParentId")
  parentId: option<stackId>,
  @ocaml.doc("<p>Whether termination protection is enabled for the stack.</p>
         <p> For <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html\">nested stacks</a>,
         termination protection is set on the root stack and cannot be changed directly on the
         nested stack. For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html\">Protecting a Stack From Being
            Deleted</a> in the <i>AWS CloudFormation User Guide</i>.</p>")
  @as("EnableTerminationProtection")
  enableTerminationProtection: option<enableTerminationProtection>,
  @ocaml.doc("<p>A list of <code>Tag</code>s that specify information about the stack.</p>")
  @as("Tags")
  tags: option<tags>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role
         that is associated with the stack. During a stack operation, AWS CloudFormation uses this
         role's credentials to make calls on your behalf.</p>")
  @as("RoleARN")
  roleARN: option<roleARN>,
  @ocaml.doc("<p>A list of output structures.</p>") @as("Outputs") outputs: option<outputs>,
  @ocaml.doc("<p>The capabilities allowed in the stack.</p>") @as("Capabilities")
  capabilities: option<capabilities>,
  @ocaml.doc("<p>The amount of time within which stack creation should complete.</p>")
  @as("TimeoutInMinutes")
  timeoutInMinutes: option<timeoutMinutes>,
  @ocaml.doc("<p>SNS topic ARNs to which stack related events are published.</p>")
  @as("NotificationARNs")
  notificationARNs: option<notificationARNs>,
  @ocaml.doc("<p>Boolean to enable or disable rollback on stack creation failures:</p>
         <ul>
            <li>
               <p>
                  <code>true</code>: disable rollback</p>
            </li>
            <li>
               <p>
                  <code>false</code>: enable rollback</p>
            </li>
         </ul>")
  @as("DisableRollback")
  disableRollback: option<disableRollback>,
  @ocaml.doc("<p>Success/failure message associated with the stack status.</p>")
  @as("StackStatusReason")
  stackStatusReason: option<stackStatusReason>,
  @ocaml.doc("<p>Current status of the stack.</p>") @as("StackStatus") stackStatus: stackStatus,
  @ocaml.doc("<p>The rollback triggers for AWS CloudFormation to monitor during stack creation and
         updating operations, and for the specified monitoring period afterwards.</p>")
  @as("RollbackConfiguration")
  rollbackConfiguration: option<rollbackConfiguration>,
  @ocaml.doc("<p>The time the stack was last updated. This field will only be returned if the stack
         has been updated at least once.</p>")
  @as("LastUpdatedTime")
  lastUpdatedTime: option<lastUpdatedTime>,
  @ocaml.doc("<p>The time the stack was deleted.</p>") @as("DeletionTime")
  deletionTime: option<deletionTime>,
  @ocaml.doc("<p>The time at which the stack was created.</p>") @as("CreationTime")
  creationTime: creationTime,
  @ocaml.doc("<p>A list of <code>Parameter</code> structures.</p>") @as("Parameters")
  parameters: option<parameters>,
  @ocaml.doc("<p>A user-defined description associated with the stack.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The unique ID of the change set.</p>") @as("ChangeSetId")
  changeSetId: option<changeSetId>,
  @ocaml.doc("<p>The name associated with the stack.</p>") @as("StackName") stackName: stackName,
  @ocaml.doc("<p>Unique identifier of the stack.</p>") @as("StackId") stackId: option<stackId>,
}
@ocaml.doc("<p>The <code>ResourceChange</code> structure describes the resource and the action that
         AWS CloudFormation will perform on it if you execute this change set.</p>")
type resourceChange = {
  @ocaml.doc(
    "<p>Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.</p>"
  )
  @as("ModuleInfo")
  moduleInfo: option<moduleInfo>,
  @ocaml.doc("<p>The change set ID of the nested change set.</p>") @as("ChangeSetId")
  changeSetId: option<changeSetId>,
  @ocaml.doc("<p>For the <code>Modify</code> action, a list of <code>ResourceChangeDetail</code>
         structures that describes the changes that AWS CloudFormation will make to the resource.
      </p>")
  @as("Details")
  details: option<resourceChangeDetails>,
  @ocaml.doc("<p>For the <code>Modify</code> action, indicates which resource attribute is triggering
         this update, such as a change in the resource attribute's <code>Metadata</code>,
            <code>Properties</code>, or <code>Tags</code>.</p>")
  @as("Scope")
  scope: option<scope>,
  @ocaml.doc("<p>For the <code>Modify</code> action, indicates whether AWS CloudFormation will replace
         the resource by creating a new one and deleting the old one. This value depends on the
         value of the <code>RequiresRecreation</code> property in the
            <code>ResourceTargetDefinition</code> structure. For example, if the
            <code>RequiresRecreation</code> field is <code>Always</code> and the
            <code>Evaluation</code> field is <code>Static</code>, <code>Replacement</code> is
            <code>True</code>. If the <code>RequiresRecreation</code> field is <code>Always</code>
         and the <code>Evaluation</code> field is <code>Dynamic</code>, <code>Replacement</code> is
            <code>Conditionally</code>.</p>
         <p>If you have multiple changes with different <code>RequiresRecreation</code> values,
         the <code>Replacement</code> value depends on the change with the most impact. A
            <code>RequiresRecreation</code> value of <code>Always</code> has the most impact,
         followed by <code>Conditionally</code>, and then <code>Never</code>.</p>")
  @as("Replacement")
  replacement: option<replacement>,
  @ocaml.doc("<p>The type of AWS CloudFormation resource, such as
         <code>AWS::S3::Bucket</code>.</p>")
  @as("ResourceType")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The resource's physical ID (resource name). Resources that you are adding don't have
         physical IDs because they haven't been created.</p>")
  @as("PhysicalResourceId")
  physicalResourceId: option<physicalResourceId>,
  @ocaml.doc("<p>The resource's logical ID, which is defined in the stack's template.</p>")
  @as("LogicalResourceId")
  logicalResourceId: option<logicalResourceId>,
  @ocaml.doc("<p>The action that AWS CloudFormation takes on the resource, such as <code>Add</code>
         (adds a new resource), <code>Modify</code> (changes a resource), <code>Remove</code>
         (deletes a resource), <code>Import</code> (imports a resource), or <code>Dynamic</code>
         (exact action for the resource cannot be determined).</p>")
  @as("Action")
  action: option<changeAction>,
}
type parameterDeclarations = array<parameterDeclaration>
type stacks = array<stack>
@ocaml.doc("<p>The <code>Change</code> structure describes the changes AWS CloudFormation will
         perform if you execute the change set.</p>")
type change = {
  @ocaml.doc("<p>A <code>ResourceChange</code> structure that describes the resource and action that
         AWS CloudFormation will perform.</p>")
  @as("ResourceChange")
  resourceChange: option<resourceChange>,
  @ocaml.doc("<p>The type of entity that AWS CloudFormation changes. Currently, the only entity type
         is <code>Resource</code>.</p>")
  @as("Type")
  type_: option<changeType>,
}
type changes = array<change>
@ocaml.doc("<fullname>AWS CloudFormation</fullname>
         <p>AWS CloudFormation allows you to create and manage AWS infrastructure deployments
         predictably and repeatedly. You can use AWS CloudFormation to leverage AWS products, such
         as Amazon Elastic Compute Cloud, Amazon Elastic Block Store, Amazon Simple Notification
         Service, Elastic Load Balancing, and Auto Scaling to build highly-reliable, highly
         scalable, cost-effective applications without creating or configuring the underlying AWS
         infrastructure.</p>
         <p>With AWS CloudFormation, you declare all of your resources and dependencies in a
         template file. The template defines a collection of resources as a single unit called a
         stack. AWS CloudFormation creates and deletes all member resources of the stack together
         and manages all dependencies between the resources for you.</p>
         <p>For more information about AWS CloudFormation, see the <a href=\"http://aws.amazon.com/cloudformation/\">AWS CloudFormation Product Page</a>.</p>
         <p>Amazon CloudFormation makes use of other AWS products. If you need additional
         technical information about a specific AWS product, you can find the product's technical
         documentation at <a href=\"https://docs.aws.amazon.com/\">docs.aws.amazon.com</a>.</p>")
module UpdateTerminationProtection = {
  type t
  type request = {
    @ocaml.doc("<p>The name or unique ID of the stack for which you want to set termination
         protection.</p>")
    @as("StackName")
    stackName: stackNameOrId,
    @ocaml.doc("<p>Whether to enable termination protection on the specified stack.</p>")
    @as("EnableTerminationProtection")
    enableTerminationProtection: enableTerminationProtection,
  }
  type response = {
    @ocaml.doc("<p>The unique ID of the stack.</p>") @as("StackId") stackId: option<stackId>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "UpdateTerminationProtectionCommand"
  let make = (~stackName, ~enableTerminationProtection, ()) =>
    new({stackName: stackName, enableTerminationProtection: enableTerminationProtection})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopStackSetOperation = {
  type t
  type request = {
    @ocaml.doc("<p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p> 
         <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
         <ul>
            <li>
               <p>If you are signed in to the management account, specify <code>SELF</code>.</p>
            </li>
            <li>
               <p>If you are signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
               <p>Your AWS account must be registered as a delegated administrator in the management account. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html\">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
            </li>
         </ul>")
    @as("CallAs")
    callAs: option<callAs>,
    @ocaml.doc("<p>The ID of the stack operation. </p>") @as("OperationId")
    operationId: clientRequestToken,
    @ocaml.doc("<p>The name or unique ID of the stack set that you want to stop the operation
         for.</p>")
    @as("StackSetName")
    stackSetName: stackSetName,
  }

  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "StopStackSetOperationCommand"
  let make = (~operationId, ~stackSetName, ~callAs=?, ()) =>
    new({callAs: callAs, operationId: operationId, stackSetName: stackSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SignalResource = {
  type t
  @ocaml.doc("<p>The input for the <a>SignalResource</a> action.</p>")
  type request = {
    @ocaml.doc("<p>The status of the signal, which is either success or failure. A failure signal causes
         AWS CloudFormation to immediately fail the stack creation or update.</p>")
    @as("Status")
    status: resourceSignalStatus,
    @ocaml.doc("<p>A unique ID of the signal. When you signal Amazon EC2 instances or Auto Scaling
         groups, specify the instance ID that you are signaling as the unique ID. If you send
         multiple signals to a single resource (such as signaling a wait condition), each signal
         requires a different unique ID.</p>")
    @as("UniqueId")
    uniqueId: resourceSignalUniqueId,
    @ocaml.doc("<p>The logical ID of the resource that you want to signal. The logical ID is the name of
         the resource that given in the template.</p>")
    @as("LogicalResourceId")
    logicalResourceId: logicalResourceId,
    @ocaml.doc("<p>The stack name or unique stack ID that includes the resource that you want to
         signal.</p>")
    @as("StackName")
    stackName: stackNameOrId,
  }

  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "SignalResourceCommand"
  let make = (~status, ~uniqueId, ~logicalResourceId, ~stackName, ()) =>
    new({
      status: status,
      uniqueId: uniqueId,
      logicalResourceId: logicalResourceId,
      stackName: stackName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetTypeDefaultVersion = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of a specific version of the extension. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the extension version when it is registered.</p>"
    )
    @as("VersionId")
    versionId: option<typeVersionId>,
    @ocaml.doc("<p>The name of the extension.</p>
         <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>")
    @as("TypeName")
    typeName: option<typeName>,
    @ocaml.doc("<p>The kind of extension.</p>
         <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>")
    @as("Type")
    type_: option<registryType>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the extension for which you want version summary information.</p>
         <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>")
    @as("Arn")
    arn: option<privateTypeArn>,
  }

  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "SetTypeDefaultVersionCommand"
  let make = (~versionId=?, ~typeName=?, ~type_=?, ~arn=?, ()) =>
    new({versionId: versionId, typeName: typeName, type_: type_, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetStackPolicy = {
  type t
  @ocaml.doc("<p>The input for the <a>SetStackPolicy</a> action.</p>")
  type request = {
    @ocaml.doc("<p>Location of a file containing the stack policy. The URL must point to a policy
         (maximum size: 16 KB) located in an S3 bucket in the same
         Region as the stack. You can specify either the <code>StackPolicyBody</code> or the
            <code>StackPolicyURL</code> parameter, but not both.</p>")
    @as("StackPolicyURL")
    stackPolicyURL: option<stackPolicyURL>,
    @ocaml.doc("<p>Structure containing the stack policy body. For more information, go to <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html\"> Prevent Updates
            to Stack Resources</a> in the AWS CloudFormation User Guide. You can specify either
         the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not
         both.</p>")
    @as("StackPolicyBody")
    stackPolicyBody: option<stackPolicyBody>,
    @ocaml.doc("<p>The name or unique stack ID that you want to associate a policy with.</p>")
    @as("StackName")
    stackName: stackName,
  }

  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "SetStackPolicyCommand"
  let make = (~stackName, ~stackPolicyURL=?, ~stackPolicyBody=?, ()) =>
    new({stackPolicyURL: stackPolicyURL, stackPolicyBody: stackPolicyBody, stackName: stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RecordHandlerProgress = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Reserved for use by the <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html\">CloudFormation CLI</a>.</p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc(
      "<p>Reserved for use by the <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html\">CloudFormation CLI</a>.</p>"
    )
    @as("ResourceModel")
    resourceModel: option<resourceModel>,
    @ocaml.doc(
      "<p>Reserved for use by the <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html\">CloudFormation CLI</a>.</p>"
    )
    @as("ErrorCode")
    errorCode: option<handlerErrorCode>,
    @ocaml.doc(
      "<p>Reserved for use by the <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html\">CloudFormation CLI</a>.</p>"
    )
    @as("StatusMessage")
    statusMessage: option<statusMessage>,
    @ocaml.doc(
      "<p>Reserved for use by the <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html\">CloudFormation CLI</a>.</p>"
    )
    @as("CurrentOperationStatus")
    currentOperationStatus: option<operationStatus>,
    @ocaml.doc(
      "<p>Reserved for use by the <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html\">CloudFormation CLI</a>.</p>"
    )
    @as("OperationStatus")
    operationStatus: operationStatus,
    @ocaml.doc(
      "<p>Reserved for use by the <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html\">CloudFormation CLI</a>.</p>"
    )
    @as("BearerToken")
    bearerToken: clientToken,
  }

  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "RecordHandlerProgressCommand"
  let make = (
    ~operationStatus,
    ~bearerToken,
    ~clientRequestToken=?,
    ~resourceModel=?,
    ~errorCode=?,
    ~statusMessage=?,
    ~currentOperationStatus=?,
    (),
  ) =>
    new({
      clientRequestToken: clientRequestToken,
      resourceModel: resourceModel,
      errorCode: errorCode,
      statusMessage: statusMessage,
      currentOperationStatus: currentOperationStatus,
      operationStatus: operationStatus,
      bearerToken: bearerToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetStackPolicy = {
  type t
  @ocaml.doc("<p>The input for the <a>GetStackPolicy</a> action.</p>")
  type request = {
    @ocaml.doc("<p>The name or unique stack ID that is associated with the stack whose policy you want
         to get.</p>")
    @as("StackName")
    stackName: stackName,
  }
  @ocaml.doc("<p>The output for the <a>GetStackPolicy</a> action.</p>")
  type response = {
    @ocaml.doc("<p>Structure containing the stack policy body. (For more information, go to <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html\"> Prevent Updates
            to Stack Resources</a> in the AWS CloudFormation User Guide.)</p>")
    @as("StackPolicyBody")
    stackPolicyBody: option<stackPolicyBody>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "GetStackPolicyCommand"
  let make = (~stackName, ()) => new({stackName: stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExecuteChangeSet = {
  type t
  @ocaml.doc("<p>The input for the <a>ExecuteChangeSet</a> action.</p>")
  type request = {
    @ocaml.doc("<p>A unique identifier for this <code>ExecuteChangeSet</code> request. Specify this
         token if you plan to retry requests so that AWS CloudFormation knows that you're not
         attempting to execute a change set to update a stack with the same name. You might retry
         <code>ExecuteChangeSet</code> requests to ensure that AWS CloudFormation successfully
         received them.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>If you specified the name of a change set, specify the stack name or ID (ARN) that is
         associated with the change set you want to execute.</p>")
    @as("StackName")
    stackName: option<stackNameOrId>,
    @ocaml.doc("<p>The name or ARN of the change set that you want use to update the specified
         stack.</p>")
    @as("ChangeSetName")
    changeSetName: changeSetNameOrId,
  }

  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "ExecuteChangeSetCommand"
  let make = (~changeSetName, ~clientRequestToken=?, ~stackName=?, ()) =>
    new({
      clientRequestToken: clientRequestToken,
      stackName: stackName,
      changeSetName: changeSetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeTypeRegistration = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for this registration request.</p>
         <p>This registration token is generated by CloudFormation when you initiate a registration request using <code>
               <a>RegisterType</a>
            </code>.</p>")
    @as("RegistrationToken")
    registrationToken: registrationToken,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of this specific version of the extension being registered.</p>
         <p>For registration requests with a <code>ProgressStatus</code> of other than <code>COMPLETE</code>, this will be <code>null</code>.</p>")
    @as("TypeVersionArn")
    typeVersionArn: option<typeArn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the extension being registered.</p>
         <p>For registration requests with a <code>ProgressStatus</code> of other than <code>COMPLETE</code>, this will be <code>null</code>.</p>")
    @as("TypeArn")
    typeArn: option<typeArn>,
    @ocaml.doc("<p>The description of the extension registration request.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The current status of the extension registration request.</p>")
    @as("ProgressStatus")
    progressStatus: option<registrationStatus>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DescribeTypeRegistrationCommand"
  let make = (~registrationToken, ()) => new({registrationToken: registrationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStackDriftDetectionStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the drift detection results of this operation. </p>
         <p>AWS CloudFormation generates new results, with a new drift detection ID, each time this operation
         is run. However, the number of drift results AWS CloudFormation retains for any given stack, and for how
         long, may vary. </p>")
    @as("StackDriftDetectionId")
    stackDriftDetectionId: stackDriftDetectionId,
  }
  type response = {
    @ocaml.doc("<p>Time at which the stack drift detection operation was initiated.</p>")
    @as("Timestamp")
    timestamp_: timestamp_,
    @ocaml.doc("<p>Total number of stack resources that have drifted. This is NULL until the drift
         detection operation reaches a status of <code>DETECTION_COMPLETE</code>. This value will be
         0 for stacks whose drift status is <code>IN_SYNC</code>.</p>")
    @as("DriftedStackResourceCount")
    driftedStackResourceCount: option<boxedInteger>,
    @ocaml.doc("<p>The reason the stack drift detection operation has its current status.</p>")
    @as("DetectionStatusReason")
    detectionStatusReason: option<stackDriftDetectionStatusReason>,
    @ocaml.doc("<p>The status of the stack drift detection operation.</p>
         <ul>
            <li>
               <p>
                  <code>DETECTION_COMPLETE</code>: The stack drift detection operation has
               successfully completed for all resources in the stack that support drift detection.
               (Resources that do not currently support stack detection remain unchecked.)</p>
               <p>If you specified logical resource IDs for AWS CloudFormation to use as a filter for the
               stack drift detection operation, only the resources with those logical IDs are
               checked for drift.</p>
            </li>
            <li>
               <p>
                  <code>DETECTION_FAILED</code>: The stack drift detection operation has failed
               for at least one resource in the stack. Results will be available for resources on
               which AWS CloudFormation successfully completed drift detection.</p>
            </li>
            <li>
               <p>
                  <code>DETECTION_IN_PROGRESS</code>: The stack drift detection operation is
               currently in progress.</p>
            </li>
         </ul>")
    @as("DetectionStatus")
    detectionStatus: stackDriftDetectionStatus,
    @ocaml.doc("<p>Status of the stack's actual configuration compared to its expected configuration. </p>
         <ul>
            <li>
               <p>
                  <code>DRIFTED</code>: The stack differs from its expected template
               configuration. A stack is considered to have drifted if one or more of its resources
               have drifted.</p>
            </li>
            <li>
               <p>
                  <code>NOT_CHECKED</code>: AWS CloudFormation has not checked if the stack differs from its
               expected template configuration.</p>
            </li>
            <li>
               <p>
                  <code>IN_SYNC</code>: The stack's actual configuration matches its expected
               template configuration.</p>
            </li>
            <li>
               <p>
                  <code>UNKNOWN</code>: This value is reserved for future use.</p>
            </li>
         </ul>")
    @as("StackDriftStatus")
    stackDriftStatus: option<stackDriftStatus>,
    @ocaml.doc("<p>The ID of the drift detection results of this operation. </p>
         <p>AWS CloudFormation generates new results, with a new drift detection ID, each time this operation
         is run. However, the number of reports AWS CloudFormation retains for any given stack, and for how long,
         may vary.</p>")
    @as("StackDriftDetectionId")
    stackDriftDetectionId: stackDriftDetectionId,
    @ocaml.doc("<p>The ID of the stack.</p>") @as("StackId") stackId: stackId,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DescribeStackDriftDetectionStatusCommand"
  let make = (~stackDriftDetectionId, ()) => new({stackDriftDetectionId: stackDriftDetectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterType = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of a specific version of the extension. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the extension version when it is registered.</p>"
    )
    @as("VersionId")
    versionId: option<typeVersionId>,
    @ocaml.doc("<p>The name of the extension.</p>
         <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>")
    @as("TypeName")
    typeName: option<typeName>,
    @ocaml.doc("<p>The kind of extension.</p>
         <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>")
    @as("Type")
    type_: option<registryType>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the extension.</p>
         <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>")
    @as("Arn")
    arn: option<privateTypeArn>,
  }

  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DeregisterTypeCommand"
  let make = (~versionId=?, ~typeName=?, ~type_=?, ~arn=?, ()) =>
    new({versionId: versionId, typeName: typeName, type_: type_, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteStackSet = {
  type t
  type request = {
    @ocaml.doc("<p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p> 
         <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
         <ul>
            <li>
               <p>If you are signed in to the management account, specify <code>SELF</code>.</p>
            </li>
            <li>
               <p>If you are signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
               <p>Your AWS account must be registered as a delegated administrator in the management account. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html\">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
            </li>
         </ul>")
    @as("CallAs")
    callAs: option<callAs>,
    @ocaml.doc("<p>The name or unique ID of the stack set that you're deleting. You can obtain this
         value by running <a>ListStackSets</a>.</p>")
    @as("StackSetName")
    stackSetName: stackSetName,
  }

  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DeleteStackSetCommand"
  let make = (~stackSetName, ~callAs=?, ()) => new({callAs: callAs, stackSetName: stackSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteChangeSet = {
  type t
  @ocaml.doc("<p>The input for the <a>DeleteChangeSet</a> action.</p>")
  type request = {
    @ocaml.doc("<p>If you specified the name of a change set to delete, specify the stack name or ID
         (ARN) that is associated with it.</p>")
    @as("StackName")
    stackName: option<stackNameOrId>,
    @ocaml.doc("<p>The name or Amazon Resource Name (ARN) of the change set that you want to
         delete.</p>")
    @as("ChangeSetName")
    changeSetName: changeSetNameOrId,
  }

  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DeleteChangeSetCommand"
  let make = (~changeSetName, ~stackName=?, ()) =>
    new({stackName: stackName, changeSetName: changeSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelUpdateStack = {
  type t
  @ocaml.doc("<p>The input for the <a>CancelUpdateStack</a> action.</p>")
  type request = {
    @ocaml.doc("<p>A unique identifier for this <code>CancelUpdateStack</code> request. Specify this
         token if you plan to retry requests so that AWS CloudFormation knows that you're not
         attempting to cancel an update on a stack with the same name. You might retry
         <code>CancelUpdateStack</code> requests to ensure that AWS CloudFormation successfully
         received them.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The name or the unique stack ID that is associated with the stack.</p>")
    @as("StackName")
    stackName: stackName,
  }

  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "CancelUpdateStackCommand"
  let make = (~stackName, ~clientRequestToken=?, ()) =>
    new({clientRequestToken: clientRequestToken, stackName: stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterType = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique identifier that acts as an idempotency key for this registration request. Specifying a client request token prevents CloudFormation from generating more than one version of an extension from the same registeration request, even if the request is submitted multiple times. </p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: option<requestToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role for CloudFormation to assume when invoking the extension. If your extension calls AWS APIs in any of its handlers, you must create an
         <i>
               <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html\">IAM execution
            role</a>
            </i> that includes the necessary permissions to call those
         AWS APIs, and provision that execution role in your account. When CloudFormation needs to invoke the extension handler, CloudFormation assumes this execution role to create a temporary session token, which it then passes to the extension handler, thereby supplying your extension with the appropriate credentials.</p>")
    @as("ExecutionRoleArn")
    executionRoleArn: option<roleARN2>,
    @ocaml.doc("<p>Specifies logging configuration information for an extension.</p>")
    @as("LoggingConfig")
    loggingConfig: option<loggingConfig>,
    @ocaml.doc("<p>A url to the S3 bucket containing the extension project package that contains the neccessary files for the extension you want to register.</p>
         <p>For information on generating a schema handler package for the extension you want to register, see <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-cli-submit.html\">submit</a> in the <i>CloudFormation CLI User Guide</i>.</p>
         <note>
            <p>The
         user registering the extension must be able to access the package in the S3 bucket. That is, the user needs to have <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html\">GetObject</a> permissions
         for the schema handler package. For
         more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html\">Actions, Resources, and Condition Keys for Amazon S3</a> in the
         <i>AWS Identity and Access Management User Guide</i>.</p>
         </note>")
    @as("SchemaHandlerPackage")
    schemaHandlerPackage: s3Url,
    @ocaml.doc("<p>The name of the extension being registered.</p>
      
         <p>We recommend that extension names adhere to the following pattern: <i>company_or_organization</i>::<i>service</i>::<i>type</i>.</p>
         <note>
            <p>The following organization namespaces are reserved and cannot be used in your extension names:</p>
            <ul>
               <li>
                  <p>
                     <code>Alexa</code>
                  </p>
               </li>
               <li>
                  <p>
                     <code>AMZN</code>
                  </p>
               </li>
               <li>
                  <p>
                     <code>Amazon</code>
                  </p>
               </li>
               <li>
                  <p>
                     <code>AWS</code>
                  </p>
               </li>
               <li>
                  <p>
                     <code>Custom</code>
                  </p>
               </li>
               <li>
                  <p>
                     <code>Dev</code>
                  </p>
               </li>
            </ul>
         </note>")
    @as("TypeName")
    typeName: typeName,
    @ocaml.doc("<p>The kind of extension.</p>") @as("Type") type_: option<registryType>,
  }
  type response = {
    @ocaml.doc("<p>The identifier for this registration request.</p>
         <p>Use this registration token when calling <code>
               <a>DescribeTypeRegistration</a>
            </code>, which returns information about the status and IDs of the extension registration. </p>")
    @as("RegistrationToken")
    registrationToken: option<registrationToken>,
  }
  @module("@aws-sdk/client-cloudformation") @new external new: request => t = "RegisterTypeCommand"
  let make = (
    ~schemaHandlerPackage,
    ~typeName,
    ~clientRequestToken=?,
    ~executionRoleArn=?,
    ~loggingConfig=?,
    ~type_=?,
    (),
  ) =>
    new({
      clientRequestToken: clientRequestToken,
      executionRoleArn: executionRoleArn,
      loggingConfig: loggingConfig,
      schemaHandlerPackage: schemaHandlerPackage,
      typeName: typeName,
      type_: type_,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTypeRegistrations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>If the previous paginated request didn't return all of the remaining results, the response object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's <code>NextToken</code> parameter. If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The current status of the extension registration request.</p>
         <p>The default is <code>IN_PROGRESS</code>.</p>")
    @as("RegistrationStatusFilter")
    registrationStatusFilter: option<registrationStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the extension.</p>
         <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>")
    @as("TypeArn")
    typeArn: option<typeArn>,
    @ocaml.doc("<p>The name of the extension.</p>
         <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>")
    @as("TypeName")
    typeName: option<typeName>,
    @ocaml.doc("<p>The kind of extension.</p>
         <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>")
    @as("Type")
    type_: option<registryType>,
  }
  type response = {
    @ocaml.doc(
      "<p>If the request doesn't return all of the remaining results, <code>NextToken</code> is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's <code>NextToken</code> parameter. If the request returns all results, <code>NextToken</code> is set to <code>null</code>.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> A list of extension registration tokens.</p>
         <p>Use <code>
               <a>DescribeTypeRegistration</a>
            </code> to return detailed information about a type registration request.</p>")
    @as("RegistrationTokenList")
    registrationTokenList: option<registrationTokenList>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "ListTypeRegistrationsCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~registrationStatusFilter=?,
    ~typeArn=?,
    ~typeName=?,
    ~type_=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      registrationStatusFilter: registrationStatusFilter,
      typeArn: typeArn,
      typeName: typeName,
      type_: type_,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListImports = {
  type t
  type request = {
    @ocaml.doc("<p>A string (provided by the <a>ListImports</a> response output) that
         identifies the next page of stacks that are importing the specified exported output value.
      </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the exported output value. AWS CloudFormation returns the stack names
         that are importing this value. </p>")
    @as("ExportName")
    exportName: exportName,
  }
  type response = {
    @ocaml.doc("<p>A string that identifies the next page of exports. If there is no additional page,
         this value is null.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of stack names that are importing the specified exported output value.
      </p>")
    @as("Imports")
    imports: option<imports>,
  }
  @module("@aws-sdk/client-cloudformation") @new external new: request => t = "ListImportsCommand"
  let make = (~exportName, ~nextToken=?, ()) => new({nextToken: nextToken, exportName: exportName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTemplate = {
  type t
  @ocaml.doc("<p>The input for a <a>GetTemplate</a> action.</p>")
  type request = {
    @ocaml.doc("<p>For templates that include transforms, the stage of the template that AWS
         CloudFormation returns. To get the user-submitted template, specify <code>Original</code>.
         To get the template after AWS CloudFormation has processed all transforms, specify
            <code>Processed</code>. </p>
         <p>If the template doesn't include transforms, <code>Original</code> and
            <code>Processed</code> return the same template. By default, AWS CloudFormation
         specifies <code>Original</code>. </p>")
    @as("TemplateStage")
    templateStage: option<templateStage>,
    @ocaml.doc("<p>The name or Amazon Resource Name (ARN) of a change set for which AWS CloudFormation
         returns the associated template. If you specify a name, you must also specify the
            <code>StackName</code>.</p>")
    @as("ChangeSetName")
    changeSetName: option<changeSetNameOrId>,
    @ocaml.doc("<p>The name or the unique stack ID that is associated with the stack, which are not
         always interchangeable:</p>
         <ul>
            <li>
               <p>Running stacks: You can specify either the stack's name or its unique stack
               ID.</p>
            </li>
            <li>
               <p>Deleted stacks: You must specify the unique stack ID.</p>
            </li>
         </ul>
         <p>Default: There is no default value.</p>")
    @as("StackName")
    stackName: option<stackName>,
  }
  @ocaml.doc("<p>The output for <a>GetTemplate</a> action.</p>")
  type response = {
    @ocaml.doc("<p>The stage of the template that you can retrieve. For stacks, the
            <code>Original</code> and <code>Processed</code> templates are always available. For
         change sets, the <code>Original</code> template is always available. After AWS
         CloudFormation finishes creating the change set, the <code>Processed</code> template
         becomes available.</p>")
    @as("StagesAvailable")
    stagesAvailable: option<stageList>,
    @ocaml.doc("<p>Structure containing the template body. (For more information, go to <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html\">Template Anatomy</a> in the AWS CloudFormation User Guide.)</p>
         <p>AWS CloudFormation returns the same template that was used when the stack was
         created.</p>")
    @as("TemplateBody")
    templateBody: option<templateBody>,
  }
  @module("@aws-sdk/client-cloudformation") @new external new: request => t = "GetTemplateCommand"
  let make = (~templateStage=?, ~changeSetName=?, ~stackName=?, ()) =>
    new({templateStage: templateStage, changeSetName: changeSetName, stackName: stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectStackDrift = {
  type t
  type request = {
    @ocaml.doc("<p>The logical names of any resources you want to use as filters.</p>")
    @as("LogicalResourceIds")
    logicalResourceIds: option<logicalResourceIds>,
    @ocaml.doc("<p>The name of the stack for which you want to detect drift. </p>") @as("StackName")
    stackName: stackNameOrId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the drift detection results of this operation. </p>
         <p>AWS CloudFormation generates new results, with a new drift detection ID, each time this operation
         is run. However, the number of drift results AWS CloudFormation retains for any given stack, and for how
         long, may vary. </p>")
    @as("StackDriftDetectionId")
    stackDriftDetectionId: stackDriftDetectionId,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DetectStackDriftCommand"
  let make = (~stackName, ~logicalResourceIds=?, ()) =>
    new({logicalResourceIds: logicalResourceIds, stackName: stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeType = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of a specific version of the extension. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the extension version when it is registered.</p>
         <p>If you specify a <code>VersionId</code>, <code>DescribeType</code> returns information about that specific extension version. Otherwise, it returns information about the default extension version.</p>")
    @as("VersionId")
    versionId: option<typeVersionId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the extension.</p>
         <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>")
    @as("Arn")
    arn: option<typeArn>,
    @ocaml.doc("<p>The name of the extension.</p>
         <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>")
    @as("TypeName")
    typeName: option<typeName>,
    @ocaml.doc("<p>The kind of extension. </p>
         <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>")
    @as("Type")
    type_: option<registryType>,
  }
  type response = {
    @ocaml.doc("<p>When the specified extension version was registered.</p>") @as("TimeCreated")
    timeCreated: option<timestamp_>,
    @ocaml.doc("<p>When the specified extension version was registered.</p>") @as("LastUpdated")
    lastUpdated: option<timestamp_>,
    @ocaml.doc("<p>The URL of a page providing detailed documentation for this extension.</p>")
    @as("DocumentationUrl")
    documentationUrl: option<optionalSecureUrl>,
    @ocaml.doc("<p>The URL of the source code for the extension.</p>") @as("SourceUrl")
    sourceUrl: option<optionalSecureUrl>,
    @ocaml.doc("<p>The scope at which the extension is visible and usable in CloudFormation operations.</p>
         <p>Valid values include:</p>
         <ul>
            <li>
               <p>
                  <code>PRIVATE</code>: The extension is only visible and usable within the account in which it is registered. Currently, AWS CloudFormation marks any types you register as <code>PRIVATE</code>.</p>
            </li>
            <li>
               <p>
                  <code>PUBLIC</code>: The extension is publically visible and usable within any Amazon account.</p>
            </li>
         </ul>")
    @as("Visibility")
    visibility: option<visibility>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM execution role used to register the extension. If your resource type calls AWS APIs in any of its handlers, you must create an
         <i>
               <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html\">IAM execution
            role</a>
            </i> that includes the necessary permissions to call those
         AWS APIs, and provision that execution role in your account. CloudFormation then
         assumes that execution role to provide your extension with the appropriate
         credentials.</p>")
    @as("ExecutionRoleArn")
    executionRoleArn: option<roleARN2>,
    @ocaml.doc("<p>Contains logging configuration information for an extension.</p>")
    @as("LoggingConfig")
    loggingConfig: option<loggingConfig>,
    @ocaml.doc("<p>The deprecation status of the extension version.</p>
         <p>Valid values include:</p>
         <ul>
            <li>
               <p>
                  <code>LIVE</code>: The extension is registered and can be used in CloudFormation operations, dependent on its provisioning behavior and visibility scope.</p>
            </li>
            <li>
               <p>
                  <code>DEPRECATED</code>: The extension has been deregistered and can no longer be used in CloudFormation operations. </p>
            </li>
         </ul>")
    @as("DeprecatedStatus")
    deprecatedStatus: option<deprecatedStatus>,
    @ocaml.doc("<p>The provisioning behavior of the extension. AWS CloudFormation determines the provisioning type during registration, based on the types of handlers in the schema handler package submitted.</p>
         <p>Valid values include:</p>
         <ul>
            <li>
               <p>
                  <code>FULLY_MUTABLE</code>: The extension includes an update handler to process updates to the extension during stack update operations.</p>
            </li>
            <li>
               <p>
                  <code>IMMUTABLE</code>: The extension does not include an update handler, so the extension cannot be updated and must instead be replaced during stack update operations.</p>
            </li>
            <li>
               <p>
                  <code>NON_PROVISIONABLE</code>: The extension does not include all of the following handlers, and therefore cannot actually be provisioned.</p>
               <ul>
                  <li>
                     <p>create</p>
                  </li>
                  <li>
                     <p>read</p>
                  </li>
                  <li>
                     <p>delete</p>
                  </li>
               </ul>
            </li>
         </ul>")
    @as("ProvisioningType")
    provisioningType: option<provisioningType>,
    @ocaml.doc("<p>The schema that defines the extension.</p>
         <p>For more information on extension schemas, see <a href=\"https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html\">Resource Provider Schema</a> in the <i>CloudFormation CLI User Guide</i>.</p>")
    @as("Schema")
    schema: option<typeSchema>,
    @ocaml.doc("<p>The description of the registered extension.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>Whether the specified extension version is set as the default version.</p>")
    @as("IsDefaultVersion")
    isDefaultVersion: option<isDefaultVersion>,
    @ocaml.doc("<p>The ID of the default version of the extension. The default version is used when the extension version is not specified.</p>
         <p>To set the default version of an extension, use <code>
               <a>SetTypeDefaultVersion</a>
            </code>. </p>")
    @as("DefaultVersionId")
    defaultVersionId: option<typeVersionId>,
    @ocaml.doc("<p>The name of the registered extension.</p>") @as("TypeName")
    typeName: option<typeName>,
    @ocaml.doc("<p>The kind of extension. </p>") @as("Type") type_: option<registryType>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the extension.</p>") @as("Arn")
    arn: option<typeArn>,
  }
  @module("@aws-sdk/client-cloudformation") @new external new: request => t = "DescribeTypeCommand"
  let make = (~versionId=?, ~arn=?, ~typeName=?, ~type_=?, ()) =>
    new({versionId: versionId, arn: arn, typeName: typeName, type_: type_})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStack = {
  type t
  @ocaml.doc("<p>The input for <a>DeleteStack</a> action.</p>")
  type request = {
    @ocaml.doc("<p>A unique identifier for this <code>DeleteStack</code> request. Specify this token if
         you plan to retry requests so that AWS CloudFormation knows that you're not attempting to
         delete a stack with the same name. You might retry <code>DeleteStack</code> requests to
         ensure that AWS CloudFormation successfully received them.</p>
         <p>All events triggered by a given stack operation are assigned the same client request
         token, which you can use to track operations. For example, if you execute a
         <code>CreateStack</code> operation with the token <code>token1</code>, then all the
         <code>StackEvents</code> generated by that operation will have
         <code>ClientRequestToken</code> set as <code>token1</code>.</p>
         <p>In the console, stack operations display the client request token on the Events tab.
         Stack operations that are initiated from the console use the token format
         <i>Console-StackOperation-ID</i>, which helps you easily identify the
         stack operation . For example, if you create a stack using the console, each stack event
         would be assigned the same token in the following format:
         <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>. </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role
         that AWS CloudFormation assumes to delete the stack. AWS CloudFormation uses the role's
         credentials to make calls on your behalf.</p>
         <p>If you don't specify a value, AWS CloudFormation uses the role that was previously
         associated with the stack. If no role is available, AWS CloudFormation uses a temporary
         session that is generated from your user credentials.</p>")
    @as("RoleARN")
    roleARN: option<roleARN>,
    @ocaml.doc("<p>For stacks in the <code>DELETE_FAILED</code> state, a list of resource logical IDs
         that are associated with the resources you want to retain. During deletion, AWS
         CloudFormation deletes the stack but does not delete the retained resources.</p>
         <p>Retaining resources is useful when you cannot delete a resource, such as a non-empty
         S3 bucket, but you want to delete the stack.</p>")
    @as("RetainResources")
    retainResources: option<retainResources>,
    @ocaml.doc("<p>The name or the unique stack ID that is associated with the stack.</p>")
    @as("StackName")
    stackName: stackName,
  }

  @module("@aws-sdk/client-cloudformation") @new external new: request => t = "DeleteStackCommand"
  let make = (~stackName, ~clientRequestToken=?, ~roleARN=?, ~retainResources=?, ()) =>
    new({
      clientRequestToken: clientRequestToken,
      roleARN: roleARN,
      retainResources: retainResources,
      stackName: stackName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ContinueUpdateRollback = {
  type t
  @ocaml.doc("<p>The input for the <a>ContinueUpdateRollback</a> action.</p>")
  type request = {
    @ocaml.doc("<p>A unique identifier for this <code>ContinueUpdateRollback</code> request. Specify
         this token if you plan to retry requests so that AWS CloudFormation knows that you're not
         attempting to continue the rollback to a stack with the same name. You might retry
         <code>ContinueUpdateRollback</code> requests to ensure that AWS CloudFormation
         successfully received them.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>A list of the logical IDs of the resources that AWS CloudFormation skips during the
         continue update rollback operation. You can specify only resources that are in the
            <code>UPDATE_FAILED</code> state because a rollback failed. You can't specify resources
         that are in the <code>UPDATE_FAILED</code> state for other reasons, for example, because an
         update was cancelled. To check why a resource update failed, use the <a>DescribeStackResources</a> action, and view the resource status reason. </p>
         <important>
            <p>Specify this property to skip rolling back resources that AWS CloudFormation can't
            successfully roll back. We recommend that you <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed\"> troubleshoot</a> resources before skipping them. AWS CloudFormation sets the
            status of the specified resources to <code>UPDATE_COMPLETE</code> and continues to roll
            back the stack. After the rollback is complete, the state of the skipped resources will
            be inconsistent with the state of the resources in the stack template. Before performing
            another stack update, you must update the stack or resources to be consistent with each
            other. If you don't, subsequent stack updates might fail, and the stack will become
            unrecoverable. </p>
         </important>
         <p>Specify the minimum number of resources required to successfully roll back your
         stack. For example, a failed resource update might cause dependent resources to fail. In
         this case, it might not be necessary to skip the dependent resources. </p>
         <p>To skip resources that are part of nested stacks, use the following format:
            <code>NestedStackName.ResourceLogicalID</code>. If you want to specify the logical ID of
         a stack resource (<code>Type: AWS::CloudFormation::Stack</code>) in the
            <code>ResourcesToSkip</code> list, then its corresponding embedded stack must be in one
         of the following states: <code>DELETE_IN_PROGRESS</code>, <code>DELETE_COMPLETE</code>, or
            <code>DELETE_FAILED</code>. </p>
         <note>
            <p>Don't confuse a child stack's name with its corresponding logical ID defined in
            the parent stack. For an example of a continue update rollback operation with nested
            stacks, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html#nested-stacks\">Using ResourcesToSkip to recover a nested stacks hierarchy</a>. </p>
         </note>")
    @as("ResourcesToSkip")
    resourcesToSkip: option<resourcesToSkip>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role
         that AWS CloudFormation assumes to roll back the stack. AWS CloudFormation uses the role's
         credentials to make calls on your behalf. AWS CloudFormation always uses this role for all
         future operations on the stack. As long as users have permission to operate on the stack,
         AWS CloudFormation uses this role even if the users don't have permission to pass it.
         Ensure that the role grants least privilege.</p>
         <p>If you don't specify a value, AWS CloudFormation uses the role that was previously
         associated with the stack. If no role is available, AWS CloudFormation uses a temporary
         session that is generated from your user credentials.</p>")
    @as("RoleARN")
    roleARN: option<roleARN>,
    @ocaml.doc("<p>The name or the unique ID of the stack that you want to continue rolling
         back.</p>
         <note>
            <p>Don't specify the name of a nested stack (a stack that was created by using the
               <code>AWS::CloudFormation::Stack</code> resource). Instead, use this operation on the
            parent stack (the stack that contains the <code>AWS::CloudFormation::Stack</code>
            resource).</p>
         </note>")
    @as("StackName")
    stackName: stackNameOrId,
  }

  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "ContinueUpdateRollbackCommand"
  let make = (~stackName, ~clientRequestToken=?, ~resourcesToSkip=?, ~roleARN=?, ()) =>
    new({
      clientRequestToken: clientRequestToken,
      resourcesToSkip: resourcesToSkip,
      roleARN: roleARN,
      stackName: stackName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ValidateTemplate = {
  type t
  @ocaml.doc("<p>The input for <a>ValidateTemplate</a> action.</p>")
  type request = {
    @ocaml.doc("<p>Location of file containing the template body. The URL must point to a template (max
         size: 460,800 bytes) that is located in an Amazon S3 bucket or a Systems Manager document.
         For more information, go to <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html\">Template Anatomy</a>
         in the AWS CloudFormation User Guide.</p>
         <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If
         both are passed, only <code>TemplateBody</code> is used.</p>")
    @as("TemplateURL")
    templateURL: option<templateURL>,
    @ocaml.doc("<p>Structure containing the template body with a minimum length of 1 byte and a maximum
         length of 51,200 bytes. For more information, go to <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html\">Template Anatomy</a>
         in the AWS CloudFormation User Guide.</p>
         <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If
         both are passed, only <code>TemplateBody</code> is used.</p>")
    @as("TemplateBody")
    templateBody: option<templateBody>,
  }
  @ocaml.doc("<p>The output for <a>ValidateTemplate</a> action.</p>")
  type response = {
    @ocaml.doc("<p>A list of the transforms that are declared in the template.</p>")
    @as("DeclaredTransforms")
    declaredTransforms: option<transformsList>,
    @ocaml.doc("<p>The list of resources that generated the values in the <code>Capabilities</code>
         response element.</p>")
    @as("CapabilitiesReason")
    capabilitiesReason: option<capabilitiesReason>,
    @ocaml.doc("<p>The capabilities found within the template. If your template contains IAM resources,
         you must specify the CAPABILITY_IAM or CAPABILITY_NAMED_IAM value for this parameter when
         you use the <a>CreateStack</a> or <a>UpdateStack</a> actions with
         your template; otherwise, those actions return an InsufficientCapabilities error.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities\">Acknowledging IAM Resources in AWS CloudFormation Templates</a>.</p>")
    @as("Capabilities")
    capabilities: option<capabilities>,
    @ocaml.doc("<p>The description found within the template.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>A list of <code>TemplateParameter</code> structures.</p>") @as("Parameters")
    parameters: option<templateParameters>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "ValidateTemplateCommand"
  let make = (~templateURL=?, ~templateBody=?, ()) =>
    new({templateURL: templateURL, templateBody: templateBody})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateStackSet = {
  type t
  type request = {
    @ocaml.doc("<p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p> 
         <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
         <ul>
            <li>
               <p>If you are signed in to the management account, specify <code>SELF</code>.</p>
            </li>
            <li>
               <p>If you are signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
               <p>Your AWS account must be registered as a delegated administrator in the management account. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html\">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
            </li>
         </ul>")
    @as("CallAs")
    callAs: option<callAs>,
    @ocaml.doc("<p>The Regions in which to update associated stack instances. If you specify Regions, you
         must also specify accounts in which to update stack set instances.</p>
         <p>To update <i>all</i> the stack instances associated with this stack set,
         do not specify the <code>Accounts</code> or <code>Regions</code> properties.</p>
         <p>If the stack set update includes changes to the template (that is, if the
            <code>TemplateBody</code> or <code>TemplateURL</code> properties are specified), or the
            <code>Parameters</code> property, AWS CloudFormation marks all stack instances with a status of
            <code>OUTDATED</code> prior to updating the stack instances in the specified accounts
         and Regions. If the stack set update does not include changes to the template or
         parameters, AWS CloudFormation updates the stack instances in the specified accounts and Regions, while
         leaving all other stack instances with their existing stack instance status. </p>")
    @as("Regions")
    regions: option<regionList>,
    @ocaml.doc("<p>[Self-managed permissions] The accounts in which to update associated stack instances. If you specify accounts, you
         must also specify the Regions in which to update stack set instances.</p>
         <p>To update <i>all</i> the stack instances associated with this stack set,
         do not specify the <code>Accounts</code> or <code>Regions</code> properties.</p>
         <p>If the stack set update includes changes to the template (that is, if the
            <code>TemplateBody</code> or <code>TemplateURL</code> properties are specified), or the
            <code>Parameters</code> property, AWS CloudFormation marks all stack instances with a status of
            <code>OUTDATED</code> prior to updating the stack instances in the specified accounts
         and Regions. If the stack set update does not include changes to the template or
         parameters, AWS CloudFormation updates the stack instances in the specified accounts and Regions, while
         leaving all other stack instances with their existing stack instance status. </p>")
    @as("Accounts")
    accounts: option<accountList>,
    @ocaml.doc("<p>The unique ID for this stack set operation. </p>
         <p>The operation ID also functions as an idempotency token, to ensure that AWS
         CloudFormation performs the stack set operation only once, even if you retry the request
         multiple times. You might retry stack set operation requests to ensure that AWS
         CloudFormation successfully received them.</p>
         <p>If you don't specify an operation ID, AWS CloudFormation generates one
         automatically.</p>
         <p>Repeating this stack set operation with a new operation ID retries all stack
         instances whose status is <code>OUTDATED</code>. </p>")
    @as("OperationId")
    operationId: option<clientRequestToken>,
    @ocaml.doc("<p>[Service-managed permissions] Describes whether StackSets automatically deploys to AWS Organizations accounts that are added to a target organization or organizational unit (OU).</p>
         <p>If you specify <code>AutoDeployment</code>, do not specify <code>DeploymentTargets</code> or <code>Regions</code>.</p>")
    @as("AutoDeployment")
    autoDeployment: option<autoDeployment>,
    @ocaml.doc("<p>Describes how the IAM roles required for stack set operations are created. You cannot modify <code>PermissionModel</code> if there are stack instances associated with your stack set.</p>
         <ul>
            <li>
               <p>With <code>self-managed</code> permissions, you must create the administrator and execution roles required to deploy to target accounts. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html\">Grant Self-Managed Stack Set Permissions</a>.</p>
            </li>
            <li>
               <p>With <code>service-managed</code> permissions, StackSets automatically creates the IAM roles required to deploy to accounts managed by AWS Organizations. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html\">Grant Service-Managed Stack Set Permissions</a>.</p>
            </li>
         </ul>")
    @as("PermissionModel")
    permissionModel: option<permissionModels>,
    @ocaml.doc("<p>[Service-managed permissions] The AWS Organizations accounts in which to update associated stack instances.</p>
         <p>To update all the stack instances associated with this stack set, do not specify <code>DeploymentTargets</code> or <code>Regions</code>.</p>
         <p>If the stack set update includes changes to the template (that is, if <code>TemplateBody</code> or <code>TemplateURL</code> is specified), or the <code>Parameters</code>, AWS CloudFormation marks all stack instances with a status of <code>OUTDATED</code> prior to updating the stack instances in the specified accounts and Regions. If the stack set update does not include changes to the template or parameters, AWS CloudFormation updates the stack instances in the specified accounts and Regions, while leaving all other stack instances with their existing stack instance status.</p>")
    @as("DeploymentTargets")
    deploymentTargets: option<deploymentTargets>,
    @ocaml.doc("<p>The name of the IAM execution role to use to update the stack set. If you do not specify
         an execution role, AWS CloudFormation uses the <code>AWSCloudFormationStackSetExecutionRole</code> role
         for the stack set operation.</p>
         <p>Specify an IAM role only if you are using customized execution roles to control which
         stack resources users and groups can include in their stack sets.
      </p>
         <p> If you specify a customized execution role, AWS CloudFormation uses that role to update the stack.
         If you do not specify a customized execution role, AWS CloudFormation performs the update using the role
         previously associated with the stack set, so long as you have permissions to perform
         operations on the stack set.</p>")
    @as("ExecutionRoleName")
    executionRoleName: option<executionRoleName>,
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of the IAM role to use to update this stack set.</p>
         <p>Specify an IAM role only if you are using customized administrator roles to control
         which users or groups can manage specific stack sets within the same administrator account.
         For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html\">Granting
            Permissions for Stack Set Operations</a> in the
            <i>AWS CloudFormation User Guide</i>.</p>
         <p>If you specified a customized administrator role when you created the stack set, you
         must specify a customized administrator role, even if it is the same customized
         administrator role used with this stack set previously.</p>")
    @as("AdministrationRoleARN")
    administrationRoleARN: option<roleARN>,
    @ocaml.doc("<p>Preferences for how AWS CloudFormation performs this stack set operation.</p>")
    @as("OperationPreferences")
    operationPreferences: option<stackSetOperationPreferences>,
    @ocaml.doc("<p>The key-value pairs to associate with this stack set and the stacks created from it.
         AWS CloudFormation also propagates these tags to supported resources that are created in
         the stacks. You can specify a maximum number of 50 tags.</p>
         <p>If you specify tags for this parameter, those tags replace any list of tags that are
         currently associated with this stack set. This means:</p>
         <ul>
            <li>
               <p>If you don't specify this parameter, AWS CloudFormation doesn't modify the
               stack's tags. </p>
            </li>
            <li>
               <p>If you specify <i>any</i> tags using this parameter, you must
               specify <i>all</i> the tags that you want associated with this stack
               set, even tags you've specifed before (for example, when creating the stack set or
               during a previous update of the stack set.). Any tags that you don't include in the
               updated list of tags are removed from the stack set, and therefore from the stacks
               and resources as well. </p>
            </li>
            <li>
               <p>If you specify an empty value, AWS CloudFormation removes all currently
               associated tags.</p>
            </li>
         </ul>
         <p>If you specify new tags as part of an <code>UpdateStackSet</code> action, AWS
         CloudFormation checks to see if you have the required IAM permission to tag resources. If
         you omit tags that are currently associated with the stack set from the list of tags you
         specify, AWS CloudFormation assumes that you want to remove those tags from the stack set,
         and checks to see if you have permission to untag resources. If you don't have the
         necessary permission(s), the entire <code>UpdateStackSet</code> action fails with an
            <code>access denied</code> error, and the stack set is not updated.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>In some cases, you must explicitly acknowledge that your stack template contains certain
         capabilities in order for AWS CloudFormation to update the stack set and its associated stack
         instances.</p>
         <ul>
            <li>
               <p>
                  <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
               </p>
               <p>Some stack templates might include resources that can affect permissions in
               your AWS account; for example, by creating new AWS Identity and Access Management
               (IAM) users. For those stacks sets, you must explicitly acknowledge this by
               specifying one of these capabilities.</p>
               <p>The following IAM resources require you to specify either the
                  <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code>
               capability.</p>
               <ul>
                  <li>
                     <p>If you have IAM resources, you can specify either capability. </p>
                  </li>
                  <li>
                     <p>If you have IAM resources with custom names, you <i>must</i>
                     specify <code>CAPABILITY_NAMED_IAM</code>. </p>
                  </li>
                  <li>
                     <p>If you don't specify either of these capabilities, AWS CloudFormation returns an
                        <code>InsufficientCapabilities</code> error.</p>
                  </li>
               </ul>
               <p>If your stack template contains these resources, we recommend that you review
               all permissions associated with them and edit their permissions if
               necessary.</p>
               <ul>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html\">
                        AWS::IAM::AccessKey</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html\">
                        AWS::IAM::Group</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html\"> AWS::IAM::InstanceProfile</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html\">
                        AWS::IAM::Policy</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html\">
                        AWS::IAM::Role</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html\">
                        AWS::IAM::User</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html\"> AWS::IAM::UserToGroupAddition</a>
                     </p>
                  </li>
               </ul>
               <p>For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities\">Acknowledging IAM
                  Resources in AWS CloudFormation Templates</a>.</p>
            </li>
            <li>
               <p>
                  <code>CAPABILITY_AUTO_EXPAND</code>
               </p>
               <p>Some templates reference macros. If your stack set template references one or more macros,
               you must update the stack set directly from the processed template, without first
               reviewing the resulting changes in a change set. To update the stack set directly, you must acknowledge this
               capability. For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html\">Using AWS CloudFormation Macros to Perform Custom Processing on
                  Templates</a>.</p>
               <important>
                  <p>Stack sets with service-managed permissions
                  do not currently support the use of macros in templates. (This includes
                  the <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html\">AWS::Include</a> and <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html\">AWS::Serverless</a>
                  transforms, which are macros hosted by AWS CloudFormation.) Even if you specify this
                  capability for a stack set with service-managed permissions, if you reference a macro in your template the stack set operation will
                  fail.</p>
               </important>
            </li>
         </ul>")
    @as("Capabilities")
    capabilities: option<capabilities>,
    @ocaml.doc("<p>A list of input parameters for the stack set template. </p>") @as("Parameters")
    parameters: option<parameters>,
    @ocaml.doc("<p>Use the existing template that's associated with the stack set that you're
         updating.</p>
         <p>Conditional: You must specify only one of the following parameters:
            <code>TemplateBody</code> or <code>TemplateURL</code>—or set
            <code>UsePreviousTemplate</code> to true. </p>")
    @as("UsePreviousTemplate")
    usePreviousTemplate: option<usePreviousTemplate>,
    @ocaml.doc("<p>The location of the file that contains the template body. The URL must point to a
         template (maximum size: 460,800 bytes) that is located in an Amazon S3 bucket or a Systems
         Manager document. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html\">Template Anatomy</a>
         in the AWS CloudFormation User Guide.</p>
         <p>Conditional: You must specify only one of the following parameters:
            <code>TemplateBody</code> or <code>TemplateURL</code>—or set
            <code>UsePreviousTemplate</code> to true. </p>")
    @as("TemplateURL")
    templateURL: option<templateURL>,
    @ocaml.doc("<p>The structure that contains the template body, with a minimum length of 1 byte and a
         maximum length of 51,200 bytes. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html\">Template Anatomy</a>
         in the AWS CloudFormation User Guide.</p>
         <p>Conditional: You must specify only one of the following parameters:
            <code>TemplateBody</code> or <code>TemplateURL</code>—or set
            <code>UsePreviousTemplate</code> to true.</p>")
    @as("TemplateBody")
    templateBody: option<templateBody>,
    @ocaml.doc("<p>A brief description of updates that you are making.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name or unique ID of the stack set that you want to update.</p>")
    @as("StackSetName")
    stackSetName: stackSetName,
  }
  type response = {
    @ocaml.doc("<p>The unique ID for this stack set operation.</p>") @as("OperationId")
    operationId: option<clientRequestToken>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "UpdateStackSetCommand"
  let make = (
    ~stackSetName,
    ~callAs=?,
    ~regions=?,
    ~accounts=?,
    ~operationId=?,
    ~autoDeployment=?,
    ~permissionModel=?,
    ~deploymentTargets=?,
    ~executionRoleName=?,
    ~administrationRoleARN=?,
    ~operationPreferences=?,
    ~tags=?,
    ~capabilities=?,
    ~parameters=?,
    ~usePreviousTemplate=?,
    ~templateURL=?,
    ~templateBody=?,
    ~description=?,
    (),
  ) =>
    new({
      callAs: callAs,
      regions: regions,
      accounts: accounts,
      operationId: operationId,
      autoDeployment: autoDeployment,
      permissionModel: permissionModel,
      deploymentTargets: deploymentTargets,
      executionRoleName: executionRoleName,
      administrationRoleARN: administrationRoleARN,
      operationPreferences: operationPreferences,
      tags: tags,
      capabilities: capabilities,
      parameters: parameters,
      usePreviousTemplate: usePreviousTemplate,
      templateURL: templateURL,
      templateBody: templateBody,
      description: description,
      stackSetName: stackSetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateStackInstances = {
  type t
  type request = {
    @ocaml.doc("<p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p> 
         <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
         <ul>
            <li>
               <p>If you are signed in to the management account, specify <code>SELF</code>.</p>
            </li>
            <li>
               <p>If you are signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
               <p>Your AWS account must be registered as a delegated administrator in the management account. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html\">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
            </li>
         </ul>")
    @as("CallAs")
    callAs: option<callAs>,
    @ocaml.doc("<p>The unique identifier for this stack set operation. </p>
         <p>The operation ID also functions as an idempotency token, to ensure that AWS
         CloudFormation performs the stack set operation only once, even if you retry the request
         multiple times. You might retry stack set operation requests to ensure that AWS
         CloudFormation successfully received them.</p>
         <p>If you don't specify an operation ID, the SDK generates one automatically.
      </p>")
    @as("OperationId")
    operationId: option<clientRequestToken>,
    @ocaml.doc("<p>Preferences for how AWS CloudFormation performs this stack set operation.</p>")
    @as("OperationPreferences")
    operationPreferences: option<stackSetOperationPreferences>,
    @ocaml.doc("<p> A list of input parameters whose values you want to update for the specified stack
         instances. </p>
         <p>Any overridden parameter values will be applied to all stack instances in the
         specified accounts and Regions. When specifying parameters and their values, be aware of
         how AWS CloudFormation sets parameter values during stack instance update
         operations:</p>
         <ul>
            <li>
               <p>To override the current value for a parameter, include the parameter and
               specify its value.</p>
            </li>
            <li>
               <p>To leave a parameter set to its present value, you can do one of the
               following:</p>
               <ul>
                  <li>
                     <p>Do not include the parameter in the list.</p>
                  </li>
                  <li>
                     <p>Include the parameter and specify <code>UsePreviousValue</code> as
                        <code>true</code>. (You cannot specify both a value and set
                        <code>UsePreviousValue</code> to <code>true</code>.)</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>To set all overridden parameter back to the values specified in the stack set,
               specify a parameter list but do not include any parameters.</p>
            </li>
            <li>
               <p>To leave all parameters set to their present values, do not specify this
               property at all.</p>
            </li>
         </ul>
         <p>During stack set updates, any parameter values overridden for a stack instance are
         not updated, but retain their overridden value.</p>
         <p>You can only override the parameter <i>values</i> that are specified in
         the stack set; to add or delete a parameter itself, use <code>UpdateStackSet</code> to
         update the stack set template. If you add a parameter to a template, before you can
         override the parameter value specified in the stack set you must first use <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html\">UpdateStackSet</a> to update all stack instances with the updated template and
         parameter value specified in the stack set. Once a stack instance has been updated with the
         new parameter, you can then override the parameter value using
            <code>UpdateStackInstances</code>.</p>")
    @as("ParameterOverrides")
    parameterOverrides: option<parameters>,
    @ocaml.doc("<p>The names of one or more Regions in which you want to update parameter values for
         stack instances. The overridden parameter values will be applied to all stack instances in
         the specified accounts and Regions.</p>")
    @as("Regions")
    regions: regionList,
    @ocaml.doc("<p>[Service-managed permissions] The AWS Organizations accounts for which you want to update parameter values for stack instances. If your update targets OUs, the overridden parameter values only apply to the accounts that are currently in the target OUs and their child OUs. Accounts added to the target OUs and their child OUs in the future won't use the overridden values.</p>
         <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not both.</p>")
    @as("DeploymentTargets")
    deploymentTargets: option<deploymentTargets>,
    @ocaml.doc("<p>[Self-managed permissions] The names of one or more AWS accounts for which you want to update parameter values
         for stack instances. The overridden parameter values will be applied to all stack instances
         in the specified accounts and Regions.</p>
         <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not both.</p>")
    @as("Accounts")
    accounts: option<accountList>,
    @ocaml.doc("<p>The name or unique ID of the stack set associated with the stack instances.</p>")
    @as("StackSetName")
    stackSetName: stackSetNameOrId,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for this stack set operation. </p>") @as("OperationId")
    operationId: option<clientRequestToken>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "UpdateStackInstancesCommand"
  let make = (
    ~regions,
    ~stackSetName,
    ~callAs=?,
    ~operationId=?,
    ~operationPreferences=?,
    ~parameterOverrides=?,
    ~deploymentTargets=?,
    ~accounts=?,
    (),
  ) =>
    new({
      callAs: callAs,
      operationId: operationId,
      operationPreferences: operationPreferences,
      parameterOverrides: parameterOverrides,
      regions: regions,
      deploymentTargets: deploymentTargets,
      accounts: accounts,
      stackSetName: stackSetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTypes = {
  type t
  type request = {
    @ocaml.doc(
      "<p>If the previous paginated request didn't return all of the remaining results, the response object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's <code>NextToken</code> parameter. If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The type of extension.</p>") @as("Type") type_: option<registryType>,
    @ocaml.doc("<p>The deprecation status of the extension that you want to get summary information about.</p>
         <p>Valid values include:</p>
         <ul>
            <li>
               <p>
                  <code>LIVE</code>: The extension is registered for use in CloudFormation operations.</p>
            </li>
            <li>
               <p>
                  <code>DEPRECATED</code>: The extension has been deregistered and can no longer be used in CloudFormation operations. </p>
            </li>
         </ul>")
    @as("DeprecatedStatus")
    deprecatedStatus: option<deprecatedStatus>,
    @ocaml.doc("<p>The provisioning behavior of the type. AWS CloudFormation determines the provisioning type during registration, based on the types of handlers in the schema handler package submitted.</p>
         <p>Valid values include:</p>
         <ul>
            <li>
               <p>
                  <code>FULLY_MUTABLE</code>: The extension includes an update handler to process updates to the extension during stack update operations.</p>
            </li>
            <li>
               <p>
                  <code>IMMUTABLE</code>: The extension does not include an update handler, so the extension cannot be updated and must instead be replaced during stack update operations.</p>
            </li>
            <li>
               <p>
                  <code>NON_PROVISIONABLE</code>: The extension does not include create, read, and delete handlers, and therefore cannot actually be provisioned.</p>
            </li>
         </ul>")
    @as("ProvisioningType")
    provisioningType: option<provisioningType>,
    @ocaml.doc("<p>The scope at which the extension is visible and usable in CloudFormation operations.</p>
         <p>Valid values include:</p>
         <ul>
            <li>
               <p>
                  <code>PRIVATE</code>: The extension is only visible and usable within the account in which it is registered. Currently, AWS CloudFormation marks any extension you create as <code>PRIVATE</code>.</p>
            </li>
            <li>
               <p>
                  <code>PUBLIC</code>: The extension is publically visible and usable within any Amazon account.</p>
            </li>
         </ul>
         <p>The default is <code>PRIVATE</code>.</p>")
    @as("Visibility")
    visibility: option<visibility>,
  }
  type response = {
    @ocaml.doc(
      "<p>If the request doesn't return all of the remaining results, <code>NextToken</code> is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's <code>NextToken</code> parameter. If the request returns all results, <code>NextToken</code> is set to <code>null</code>.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A list of <code>TypeSummary</code> structures that contain information about the specified extensions.</p>"
    )
    @as("TypeSummaries")
    typeSummaries: option<typeSummaries>,
  }
  @module("@aws-sdk/client-cloudformation") @new external new: request => t = "ListTypesCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~type_=?,
    ~deprecatedStatus=?,
    ~provisioningType=?,
    ~visibility=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      type_: type_,
      deprecatedStatus: deprecatedStatus,
      provisioningType: provisioningType,
      visibility: visibility,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTypeVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The deprecation status of the extension versions that you want to get summary information about.</p>
         <p>Valid values include:</p>
         <ul>
            <li>
               <p>
                  <code>LIVE</code>: The extension version is registered and can be used in CloudFormation operations, dependent on its provisioning behavior and visibility scope.</p>
            </li>
            <li>
               <p>
                  <code>DEPRECATED</code>: The extension version has been deregistered and can no longer be used in CloudFormation operations. </p>
            </li>
         </ul>
         <p>The default is <code>LIVE</code>.</p>")
    @as("DeprecatedStatus")
    deprecatedStatus: option<deprecatedStatus>,
    @ocaml.doc(
      "<p>If the previous paginated request didn't return all of the remaining results, the response object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's <code>NextToken</code> parameter. If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the extension for which you want version summary information.</p>
         <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>")
    @as("Arn")
    arn: option<privateTypeArn>,
    @ocaml.doc("<p>The name of the extension for which you want version summary information.</p>
         <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>")
    @as("TypeName")
    typeName: option<typeName>,
    @ocaml.doc("<p>The kind of the extension.</p>
         <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or <code>Arn</code>.</p>")
    @as("Type")
    type_: option<registryType>,
  }
  type response = {
    @ocaml.doc(
      "<p>If the request doesn't return all of the remaining results, <code>NextToken</code> is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's <code>NextToken</code> parameter. If the request returns all results, <code>NextToken</code> is set to <code>null</code>.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A list of <code>TypeVersionSummary</code> structures that contain information about the specified extension's versions.</p>"
    )
    @as("TypeVersionSummaries")
    typeVersionSummaries: option<typeVersionSummaries>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "ListTypeVersionsCommand"
  let make = (
    ~deprecatedStatus=?,
    ~nextToken=?,
    ~maxResults=?,
    ~arn=?,
    ~typeName=?,
    ~type_=?,
    (),
  ) =>
    new({
      deprecatedStatus: deprecatedStatus,
      nextToken: nextToken,
      maxResults: maxResults,
      arn: arn,
      typeName: typeName,
      type_: type_,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStackSetOperations = {
  type t
  type request = {
    @ocaml.doc("<p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p> 
         <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
         <ul>
            <li>
               <p>If you are signed in to the management account, specify <code>SELF</code>.</p>
            </li>
            <li>
               <p>If you are signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
               <p>Your AWS account must be registered as a delegated administrator in the management account. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html\">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
            </li>
         </ul>")
    @as("CallAs")
    callAs: option<callAs>,
    @ocaml.doc("<p>The maximum number of results to be returned with a single call. If the number of
         available results exceeds this maximum, the response includes a <code>NextToken</code>
         value that you can assign to the <code>NextToken</code> request parameter to get the next
         set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the previous paginated request didn't return all of the remaining results, the
         response object's <code>NextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListStackSetOperations</code> again and assign that token
         to the request object's <code>NextToken</code> parameter. If there are no remaining
         results, the previous response object's <code>NextToken</code> parameter is set to
            <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name or unique ID of the stack set that you want to get operation summaries
         for.</p>")
    @as("StackSetName")
    stackSetName: stackSetName,
  }
  type response = {
    @ocaml.doc("<p>If the request doesn't return all results, <code>NextToken</code> is set to a token.
         To retrieve the next set of results, call <code>ListOperationResults</code> again and
         assign that token to the request object's <code>NextToken</code> parameter. If there are no
         remaining results, <code>NextToken</code> is set to <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>StackSetOperationSummary</code> structures that contain summary
         information about operations for the specified stack set.</p>")
    @as("Summaries")
    summaries: option<stackSetOperationSummaries>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "ListStackSetOperationsCommand"
  let make = (~stackSetName, ~callAs=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({callAs: callAs, maxResults: maxResults, nextToken: nextToken, stackSetName: stackSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListExports = {
  type t
  type request = {
    @ocaml.doc("<p>A string (provided by the <a>ListExports</a> response output) that
         identifies the next page of exported output values that you asked to retrieve.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If the output exceeds 100 exported output values, a string that identifies the next
         page of exports. If there is no additional page, this value is null.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The output for the <a>ListExports</a> action.</p>") @as("Exports")
    exports: option<exports>,
  }
  @module("@aws-sdk/client-cloudformation") @new external new: request => t = "ListExportsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListChangeSets = {
  type t
  @ocaml.doc("<p>The input for the <a>ListChangeSets</a> action.</p>")
  type request = {
    @ocaml.doc("<p>A string (provided by the <a>ListChangeSets</a> response output) that
         identifies the next page of change sets that you want to retrieve.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name or the Amazon Resource Name (ARN) of the stack for which you want to list
         change sets.</p>")
    @as("StackName")
    stackName: stackNameOrId,
  }
  @ocaml.doc("<p>The output for the <a>ListChangeSets</a> action.</p>")
  type response = {
    @ocaml.doc("<p>If the output exceeds 1 MB, a string that identifies the next page of change sets. If
         there is no additional page, this value is null.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>ChangeSetSummary</code> structures that provides the ID and status of
         each change set for the specified stack.</p>")
    @as("Summaries")
    summaries: option<changeSetSummaries>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "ListChangeSetsCommand"
  let make = (~stackName, ~nextToken=?, ()) => new({nextToken: nextToken, stackName: stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EstimateTemplateCost = {
  type t
  @ocaml.doc("<p>The input for an <a>EstimateTemplateCost</a> action.</p>")
  type request = {
    @ocaml.doc("<p>A list of <code>Parameter</code> structures that specify input parameters.</p>")
    @as("Parameters")
    parameters: option<parameters>,
    @ocaml.doc("<p>Location of file containing the template body. The URL must point to a template that
         is located in an Amazon S3 bucket or a Systems Manager document. For more information, go to
            <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html\">Template Anatomy</a>
         in the AWS CloudFormation User Guide.</p>
         <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If
         both are passed, only <code>TemplateBody</code> is used.</p>")
    @as("TemplateURL")
    templateURL: option<templateURL>,
    @ocaml.doc("<p>Structure containing the template body with a minimum length of 1 byte and a maximum
         length of 51,200 bytes. (For more information, go to <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html\">Template Anatomy</a>
         in the AWS CloudFormation User Guide.)</p>
         <p>Conditional: You must pass <code>TemplateBody</code> or <code>TemplateURL</code>. If
         both are passed, only <code>TemplateBody</code> is used.</p>")
    @as("TemplateBody")
    templateBody: option<templateBody>,
  }
  @ocaml.doc("<p>The output for a <a>EstimateTemplateCost</a> action.</p>")
  type response = {
    @ocaml.doc("<p>An AWS Simple Monthly Calculator URL with a query string that describes the resources
         required to run the template.</p>")
    @as("Url")
    url: option<url>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "EstimateTemplateCostCommand"
  let make = (~parameters=?, ~templateURL=?, ~templateBody=?, ()) =>
    new({parameters: parameters, templateURL: templateURL, templateBody: templateBody})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectStackSetDrift = {
  type t
  type request = {
    @ocaml.doc("<p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p> 
         <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
         <ul>
            <li>
               <p>If you are signed in to the management account, specify <code>SELF</code>.</p>
            </li>
            <li>
               <p>If you are signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
               <p>Your AWS account must be registered as a delegated administrator in the management account. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html\">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
            </li>
         </ul>")
    @as("CallAs")
    callAs: option<callAs>,
    @ocaml.doc("<p>
            <i>The ID of the stack set operation.</i>
         </p>")
    @as("OperationId")
    operationId: option<clientRequestToken>,
    @as("OperationPreferences") operationPreferences: option<stackSetOperationPreferences>,
    @ocaml.doc(
      "<p>The name of the stack set on which to perform the drift detection operation.</p>"
    )
    @as("StackSetName")
    stackSetName: stackSetNameOrId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the drift detection stack set operation. </p>
         <p>you can use this operation id with <code>
               <a>DescribeStackSetOperation</a>
            </code> to monitor the progress of the drift detection operation. </p>")
    @as("OperationId")
    operationId: option<clientRequestToken>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DetectStackSetDriftCommand"
  let make = (~stackSetName, ~callAs=?, ~operationId=?, ~operationPreferences=?, ()) =>
    new({
      callAs: callAs,
      operationId: operationId,
      operationPreferences: operationPreferences,
      stackSetName: stackSetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStackResource = {
  type t
  @ocaml.doc("<p>The input for <a>DescribeStackResource</a> action.</p>")
  type request = {
    @ocaml.doc("<p>The logical name of the resource as specified in the template.</p>
         <p>Default: There is no default value.</p>")
    @as("LogicalResourceId")
    logicalResourceId: logicalResourceId,
    @ocaml.doc("<p>The name or the unique stack ID that is associated with the stack, which are not
         always interchangeable:</p>
         <ul>
            <li>
               <p>Running stacks: You can specify either the stack's name or its unique stack
               ID.</p>
            </li>
            <li>
               <p>Deleted stacks: You must specify the unique stack ID.</p>
            </li>
         </ul>
         <p>Default: There is no default value.</p>")
    @as("StackName")
    stackName: stackName,
  }
  @ocaml.doc("<p>The output for a <a>DescribeStackResource</a> action.</p>")
  type response = {
    @ocaml.doc("<p>A <code>StackResourceDetail</code> structure containing the description of the
         specified resource in the specified stack.</p>")
    @as("StackResourceDetail")
    stackResourceDetail: option<stackResourceDetail>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DescribeStackResourceCommand"
  let make = (~logicalResourceId, ~stackName, ()) =>
    new({logicalResourceId: logicalResourceId, stackName: stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStackEvents = {
  type t
  @ocaml.doc("<p>The input for <a>DescribeStackEvents</a> action.</p>")
  type request = {
    @ocaml.doc("<p>A string that identifies the next page of events that you want to retrieve.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name or the unique stack ID that is associated with the stack, which are not
         always interchangeable:</p>
         <ul>
            <li>
               <p>Running stacks: You can specify either the stack's name or its unique stack
               ID.</p>
            </li>
            <li>
               <p>Deleted stacks: You must specify the unique stack ID.</p>
            </li>
         </ul>
         <p>Default: There is no default value.</p>")
    @as("StackName")
    stackName: option<stackName>,
  }
  @ocaml.doc("<p>The output for a <a>DescribeStackEvents</a> action.</p>")
  type response = {
    @ocaml.doc("<p>If the output exceeds 1 MB in size, a string that identifies the next page of events.
         If no additional page exists, this value is null.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>StackEvents</code> structures.</p>") @as("StackEvents")
    stackEvents: option<stackEvents>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DescribeStackEventsCommand"
  let make = (~nextToken=?, ~stackName=?, ()) => new({nextToken: nextToken, stackName: stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountLimits = {
  type t
  @ocaml.doc("<p>The input for the <a>DescribeAccountLimits</a> action.</p>")
  type request = {
    @ocaml.doc("<p>A string that identifies the next page of limits that you want to retrieve.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @ocaml.doc("<p>The output for the <a>DescribeAccountLimits</a> action.</p>")
  type response = {
    @ocaml.doc("<p>If the output exceeds 1 MB in size, a string that identifies the next page of limits.
         If no additional page exists, this value is null.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An account limit structure that contain a list of AWS CloudFormation account limits
         and their values.</p>")
    @as("AccountLimits")
    accountLimits: option<accountLimitList>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DescribeAccountLimitsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStackInstances = {
  type t
  type request = {
    @ocaml.doc("<p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p> 
         <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
         <ul>
            <li>
               <p>If you are signed in to the management account, specify <code>SELF</code>.</p>
            </li>
            <li>
               <p>If you are signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
               <p>Your AWS account must be registered as a delegated administrator in the management account. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html\">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
            </li>
         </ul>")
    @as("CallAs")
    callAs: option<callAs>,
    @ocaml.doc("<p>The unique identifier for this stack set operation. </p>
         <p>If you don't specify an operation ID, the SDK generates one automatically. </p>
         <p>The operation ID also functions as an idempotency token, to ensure that AWS
         CloudFormation performs the stack set operation only once, even if you retry the request
         multiple times. You can retry stack set operation requests to ensure that AWS
         CloudFormation successfully received them.</p>
         <p>Repeating this stack set operation with a new operation ID retries all stack
         instances whose status is <code>OUTDATED</code>. </p>")
    @as("OperationId")
    operationId: option<clientRequestToken>,
    @ocaml.doc("<p>Removes the stack instances from the specified stack set, but doesn't delete the
         stacks. You can't reassociate a retained stack or add an existing, saved stack to a new
         stack set.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options\">Stack set operation options</a>.</p>")
    @as("RetainStacks")
    retainStacks: retainStacks,
    @ocaml.doc("<p>Preferences for how AWS CloudFormation performs this stack set operation.</p>")
    @as("OperationPreferences")
    operationPreferences: option<stackSetOperationPreferences>,
    @ocaml.doc("<p>The Regions where you want to delete stack set instances. </p>") @as("Regions")
    regions: regionList,
    @ocaml.doc("<p>[Service-managed permissions] The AWS Organizations accounts from which to delete stack instances.</p>
         <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not both.</p>")
    @as("DeploymentTargets")
    deploymentTargets: option<deploymentTargets>,
    @ocaml.doc("<p>[Self-managed permissions] The names of the AWS accounts that you want to delete stack instances for.</p>
         <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not both.</p>")
    @as("Accounts")
    accounts: option<accountList>,
    @ocaml.doc("<p>The name or unique ID of the stack set that you want to delete stack instances
         for.</p>")
    @as("StackSetName")
    stackSetName: stackSetName,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for this stack set operation.</p>") @as("OperationId")
    operationId: option<clientRequestToken>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DeleteStackInstancesCommand"
  let make = (
    ~retainStacks,
    ~regions,
    ~stackSetName,
    ~callAs=?,
    ~operationId=?,
    ~operationPreferences=?,
    ~deploymentTargets=?,
    ~accounts=?,
    (),
  ) =>
    new({
      callAs: callAs,
      operationId: operationId,
      retainStacks: retainStacks,
      operationPreferences: operationPreferences,
      regions: regions,
      deploymentTargets: deploymentTargets,
      accounts: accounts,
      stackSetName: stackSetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStackSet = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for this <code>CreateStackSet</code> request. Specify this token
         if you plan to retry requests so that AWS CloudFormation knows that you're not attempting
         to create another stack set with the same name. You might retry <code>CreateStackSet</code>
         requests to ensure that AWS CloudFormation successfully received them.</p>
         <p>If you don't specify an operation ID, the SDK generates one automatically.
      </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p> 
         <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
         <ul>
            <li>
               <p>To create a stack set with service-managed permissions while signed in to the management account, specify <code>SELF</code>.</p>
            </li>
            <li>
               <p>To create a stack set with service-managed permissions while signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
               <p>Your AWS account must be registered as a delegated admin in the management account. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html\">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
            </li>
         </ul>
         <p>Stack sets with service-managed permissions are created in the management account, including stack sets that are created by delegated administrators.</p>")
    @as("CallAs")
    callAs: option<callAs>,
    @ocaml.doc(
      "<p>Describes whether StackSets automatically deploys to AWS Organizations accounts that are added to the target organization or organizational unit (OU). Specify only if <code>PermissionModel</code> is <code>SERVICE_MANAGED</code>.</p>"
    )
    @as("AutoDeployment")
    autoDeployment: option<autoDeployment>,
    @ocaml.doc("<p>Describes how the IAM roles required for stack set operations are created. By default, <code>SELF-MANAGED</code> is specified.</p>
         <ul>
            <li>
               <p>With <code>self-managed</code> permissions, you must create the administrator and execution roles required to deploy to target accounts. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html\">Grant Self-Managed Stack Set Permissions</a>.</p>
            </li>
            <li>
               <p>With <code>service-managed</code> permissions, StackSets automatically creates the IAM roles required to deploy to accounts managed by AWS Organizations. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html\">Grant Service-Managed Stack Set Permissions</a>.</p>
            </li>
         </ul>")
    @as("PermissionModel")
    permissionModel: option<permissionModels>,
    @ocaml.doc("<p>The name of the IAM execution role to use to create the stack set. If you do not specify
         an execution role, AWS CloudFormation uses the <code>AWSCloudFormationStackSetExecutionRole</code> role
         for the stack set operation.</p>
         <p>Specify an IAM role only if you are using customized execution roles to control which
         stack resources users and groups can include in their stack sets.
         
      </p>")
    @as("ExecutionRoleName")
    executionRoleName: option<executionRoleName>,
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of the IAM role to use to create this stack set. </p>
         <p>Specify an IAM role only if you are using customized administrator roles to control
         which users or groups can manage specific stack sets within the same administrator account.
         For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html\">Prerequisites:
            Granting Permissions for Stack Set Operations</a> in the
            <i>AWS CloudFormation User Guide</i>.</p>")
    @as("AdministrationRoleARN")
    administrationRoleARN: option<roleARN>,
    @ocaml.doc("<p>The key-value pairs to associate with this stack set and the stacks created from it.
         AWS CloudFormation also propagates these tags to supported resources that are created in
         the stacks. A maximum number of 50 tags can be specified.</p>
         <p>If you specify tags as part of a <code>CreateStackSet</code> action, AWS
         CloudFormation checks to see if you have the required IAM permission to tag resources. If
         you don't, the entire <code>CreateStackSet</code> action fails with an <code>access
            denied</code> error, and the stack set is not created.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>In some cases, you must explicitly acknowledge that your stack set template contains
         certain capabilities in order for AWS CloudFormation to create the stack set and related stack
         instances.</p>
         <ul>
            <li>
               <p>
                  <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
               </p>
               <p>Some stack templates might include resources that can affect permissions in
               your AWS account; for example, by creating new AWS Identity and Access Management
               (IAM) users. For those stack sets, you must explicitly acknowledge this by specifying
               one of these capabilities.</p>
               <p>The following IAM resources require you to specify either the
                  <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code>
               capability.</p>
               <ul>
                  <li>
                     <p>If you have IAM resources, you can specify either capability. </p>
                  </li>
                  <li>
                     <p>If you have IAM resources with custom names, you <i>must</i>
                     specify <code>CAPABILITY_NAMED_IAM</code>. </p>
                  </li>
                  <li>
                     <p>If you don't specify either of these capabilities, AWS CloudFormation returns an
                        <code>InsufficientCapabilities</code> error.</p>
                  </li>
               </ul>
               <p>If your stack template contains these resources, we recommend that you review
               all permissions associated with them and edit their permissions if
               necessary.</p>
               <ul>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html\">
                        AWS::IAM::AccessKey</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html\">
                        AWS::IAM::Group</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html\"> AWS::IAM::InstanceProfile</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html\">
                        AWS::IAM::Policy</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html\">
                        AWS::IAM::Role</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html\">
                        AWS::IAM::User</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html\"> AWS::IAM::UserToGroupAddition</a>
                     </p>
                  </li>
               </ul>
               <p>For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities\">Acknowledging IAM
                  Resources in AWS CloudFormation Templates</a>.</p>
            </li>
            <li>
               <p>
                  <code>CAPABILITY_AUTO_EXPAND</code>
               </p>
               <p>Some templates reference macros. If your stack set template references one or more macros,
               you must create the stack set directly from the processed template, without first
               reviewing the resulting changes in a change set. To create the stack set directly, you must acknowledge this
               capability. For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html\">Using AWS CloudFormation Macros to Perform Custom Processing on
               Templates</a>.</p>
               <important>
                  <p>Stack sets with service-managed permissions
                     do not currently support the use of macros in templates. (This includes
                     the <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html\">AWS::Include</a> and <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html\">AWS::Serverless</a>
                     transforms, which are macros hosted by AWS CloudFormation.) Even if you specify this
                     capability for a stack set with service-managed permissions, if you reference a macro in your template the stack set operation will
                     fail.</p>
               </important>
            </li>
         </ul>")
    @as("Capabilities")
    capabilities: option<capabilities>,
    @ocaml.doc("<p>The input parameters for the stack set template. </p>") @as("Parameters")
    parameters: option<parameters>,
    @ocaml.doc("<p>The location of the file that contains the template body. The URL must point to a
         template (maximum size: 460,800 bytes) that's located in an Amazon S3 bucket or a Systems
         Manager document. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html\">Template Anatomy</a>
         in the AWS CloudFormation User Guide.</p>
         <p>Conditional: You must specify either the TemplateBody or the TemplateURL parameter,
         but not both.</p>")
    @as("TemplateURL")
    templateURL: option<templateURL>,
    @ocaml.doc("<p>The structure that contains the template body, with a minimum length of 1 byte and a
         maximum length of 51,200 bytes. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html\">Template Anatomy</a>
         in the AWS CloudFormation User Guide.</p>
         <p>Conditional: You must specify either the TemplateBody or the TemplateURL parameter,
         but not both.</p>")
    @as("TemplateBody")
    templateBody: option<templateBody>,
    @ocaml.doc("<p>A description of the stack set. You can use the description to identify the stack
         set's purpose or other important information.</p>")
    @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name to associate with the stack set. The name must be unique in the Region where
         you create your stack set.</p>
         <note>
            <p>A stack name can contain only alphanumeric characters (case-sensitive) and
            hyphens. It must start with an alphabetic character and can't be longer than 128
            characters.</p>
         </note>")
    @as("StackSetName")
    stackSetName: stackSetName,
  }
  type response = {
    @ocaml.doc("<p>The ID of the stack set that you're creating.</p>") @as("StackSetId")
    stackSetId: option<stackSetId>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "CreateStackSetCommand"
  let make = (
    ~stackSetName,
    ~clientRequestToken=?,
    ~callAs=?,
    ~autoDeployment=?,
    ~permissionModel=?,
    ~executionRoleName=?,
    ~administrationRoleARN=?,
    ~tags=?,
    ~capabilities=?,
    ~parameters=?,
    ~templateURL=?,
    ~templateBody=?,
    ~description=?,
    (),
  ) =>
    new({
      clientRequestToken: clientRequestToken,
      callAs: callAs,
      autoDeployment: autoDeployment,
      permissionModel: permissionModel,
      executionRoleName: executionRoleName,
      administrationRoleARN: administrationRoleARN,
      tags: tags,
      capabilities: capabilities,
      parameters: parameters,
      templateURL: templateURL,
      templateBody: templateBody,
      description: description,
      stackSetName: stackSetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStackInstances = {
  type t
  type request = {
    @ocaml.doc("<p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p> 
         <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
         <ul>
            <li>
               <p>If you are signed in to the management account, specify <code>SELF</code>.</p>
            </li>
            <li>
               <p>If you are signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
               <p>Your AWS account must be registered as a delegated administrator in the management account. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html\">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
            </li>
         </ul>")
    @as("CallAs")
    callAs: option<callAs>,
    @ocaml.doc("<p>The unique identifier for this stack set operation. </p>
         <p>The operation ID also functions as an idempotency token, to ensure that AWS
         CloudFormation performs the stack set operation only once, even if you retry the request
         multiple times. You might retry stack set operation requests to ensure that AWS
         CloudFormation successfully received them.</p>
         <p>If you don't specify an operation ID, the SDK generates one automatically. </p>
         <p>Repeating this stack set operation with a new operation ID retries all stack
         instances whose status is <code>OUTDATED</code>. </p>")
    @as("OperationId")
    operationId: option<clientRequestToken>,
    @ocaml.doc("<p>Preferences for how AWS CloudFormation performs this stack set operation.</p>")
    @as("OperationPreferences")
    operationPreferences: option<stackSetOperationPreferences>,
    @ocaml.doc("<p>A list of stack set parameters whose values you want to override in the selected
         stack instances.</p>
         <p>Any overridden parameter values will be applied to all stack instances in the
         specified accounts and Regions. When specifying parameters and their values, be aware of
         how AWS CloudFormation sets parameter values during stack instance operations:</p>
         <ul>
            <li>
               <p>To override the current value for a parameter, include the parameter and
               specify its value.</p>
            </li>
            <li>
               <p>To leave a parameter set to its present value, you can do one of the
               following:</p>
               <ul>
                  <li>
                     <p>Do not include the parameter in the list.</p>
                  </li>
                  <li>
                     <p>Include the parameter and specify <code>UsePreviousValue</code> as
                        <code>true</code>. (You cannot specify both a value and set
                        <code>UsePreviousValue</code> to <code>true</code>.)</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>To set all overridden parameter back to the values specified in the stack set,
               specify a parameter list but do not include any parameters.</p>
            </li>
            <li>
               <p>To leave all parameters set to their present values, do not specify this
               property at all.</p>
            </li>
         </ul>
         <p>During stack set updates, any parameter values overridden for a stack instance are
         not updated, but retain their overridden value.</p>
         <p>You can only override the parameter <i>values</i> that are specified in
         the stack set; to add or delete a parameter itself, use <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html\">UpdateStackSet</a> to update the stack set template.</p>")
    @as("ParameterOverrides")
    parameterOverrides: option<parameters>,
    @ocaml.doc("<p>The names of one or more Regions where you want to create stack instances using the
         specified AWS account(s). </p>")
    @as("Regions")
    regions: regionList,
    @ocaml.doc("<p>[Service-managed permissions] The AWS Organizations accounts for which to create stack instances in the specified Regions.</p>
         <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not both.</p>")
    @as("DeploymentTargets")
    deploymentTargets: option<deploymentTargets>,
    @ocaml.doc("<p>[Self-managed permissions] The names of one or more AWS accounts that you want to create stack instances in the
         specified Region(s) for.</p>
         <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not both.</p>")
    @as("Accounts")
    accounts: option<accountList>,
    @ocaml.doc("<p>The name or unique ID of the stack set that you want to create stack instances
         from.</p>")
    @as("StackSetName")
    stackSetName: stackSetName,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for this stack set operation.</p>") @as("OperationId")
    operationId: option<clientRequestToken>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "CreateStackInstancesCommand"
  let make = (
    ~regions,
    ~stackSetName,
    ~callAs=?,
    ~operationId=?,
    ~operationPreferences=?,
    ~parameterOverrides=?,
    ~deploymentTargets=?,
    ~accounts=?,
    (),
  ) =>
    new({
      callAs: callAs,
      operationId: operationId,
      operationPreferences: operationPreferences,
      parameterOverrides: parameterOverrides,
      regions: regions,
      deploymentTargets: deploymentTargets,
      accounts: accounts,
      stackSetName: stackSetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateStack = {
  type t
  @ocaml.doc("<p>The input for an <a>UpdateStack</a> action.</p>")
  type request = {
    @ocaml.doc("<p>A unique identifier for this <code>UpdateStack</code> request. Specify this token if
         you plan to retry requests so that AWS CloudFormation knows that you're not attempting to
         update a stack with the same name. You might retry <code>UpdateStack</code> requests to
         ensure that AWS CloudFormation successfully received them.</p>
         <p>All events triggered by a given stack operation are assigned the same client request
         token, which you can use to track operations. For example, if you execute a
         <code>CreateStack</code> operation with the token <code>token1</code>, then all the
         <code>StackEvents</code> generated by that operation will have
         <code>ClientRequestToken</code> set as <code>token1</code>.</p>
         <p>In the console, stack operations display the client request token on the Events tab.
         Stack operations that are initiated from the console use the token format
         <i>Console-StackOperation-ID</i>, which helps you easily identify the
         stack operation . For example, if you create a stack using the console, each stack event
         would be assigned the same token in the following format:
         <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>. </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>Key-value pairs to associate with this stack. AWS CloudFormation also propagates
         these tags to supported resources in the stack. You can specify a maximum number of 50
         tags.</p>
         <p>If you don't specify this parameter, AWS CloudFormation doesn't modify the stack's
         tags. If you specify an empty value, AWS CloudFormation removes all associated
         tags.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Amazon Simple Notification Service topic Amazon Resource Names (ARNs) that AWS
         CloudFormation associates with the stack. Specify an empty list to remove all notification
         topics.</p>")
    @as("NotificationARNs")
    notificationARNs: option<notificationARNs>,
    @ocaml.doc("<p>Location of a file containing the updated stack policy. The URL must point to a
         policy (max size: 16KB) located in an S3 bucket in the same
         Region as the stack. You can specify either the <code>StackPolicyBody</code> or the
            <code>StackPolicyURL</code> parameter, but not both.</p>
         <p>You might update the stack policy, for example, in order to protect a new resource
         that you created during a stack update. If you do not specify a stack policy, the current
         policy that is associated with the stack is unchanged.</p>")
    @as("StackPolicyURL")
    stackPolicyURL: option<stackPolicyURL>,
    @ocaml.doc("<p>Structure containing a new stack policy body. You can specify either the
            <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not
         both.</p>
         <p>You might update the stack policy, for example, in order to protect a new resource
         that you created during a stack update. If you do not specify a stack policy, the current
         policy that is associated with the stack is unchanged.</p>")
    @as("StackPolicyBody")
    stackPolicyBody: option<stackPolicyBody>,
    @ocaml.doc("<p>The rollback triggers for AWS CloudFormation to monitor during stack creation and
         updating operations, and for the specified monitoring period afterwards.</p>")
    @as("RollbackConfiguration")
    rollbackConfiguration: option<rollbackConfiguration>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role
         that AWS CloudFormation assumes to update the stack. AWS CloudFormation uses the role's
         credentials to make calls on your behalf. AWS CloudFormation always uses this role for all
         future operations on the stack. As long as users have permission to operate on the stack,
         AWS CloudFormation uses this role even if the users don't have permission to pass it.
         Ensure that the role grants least privilege.</p>
         <p>If you don't specify a value, AWS CloudFormation uses the role that was previously
         associated with the stack. If no role is available, AWS CloudFormation uses a temporary
         session that is generated from your user credentials.</p>")
    @as("RoleARN")
    roleARN: option<roleARN>,
    @ocaml.doc("<p>The template resource types that you have permissions to work with for this update
         stack action, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or
            <code>Custom::MyCustomInstance</code>.</p>
         <p>If the list of resource types doesn't include a resource that you're updating, the
         stack update fails. By default, AWS CloudFormation grants permissions to all resource
         types. AWS Identity and Access Management (IAM) uses this parameter for AWS
         CloudFormation-specific condition keys in IAM policies. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html\">Controlling Access with AWS Identity and Access Management</a>.</p>")
    @as("ResourceTypes")
    resourceTypes: option<resourceTypes>,
    @ocaml.doc("<p>In some cases, you must explicitly acknowledge that your stack template contains certain
         capabilities in order for AWS CloudFormation to update the stack.</p>
         <ul>
            <li>
               <p>
                  <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
               </p>
               <p>Some stack templates might include resources that can affect permissions in
               your AWS account; for example, by creating new AWS Identity and Access Management
               (IAM) users. For those stacks, you must explicitly acknowledge this by specifying one
               of these capabilities.</p>
               <p>The following IAM resources require you to specify either the
                  <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code>
               capability.</p>
               <ul>
                  <li>
                     <p>If you have IAM resources, you can specify either capability. </p>
                  </li>
                  <li>
                     <p>If you have IAM resources with custom names, you <i>must</i>
                     specify <code>CAPABILITY_NAMED_IAM</code>. </p>
                  </li>
                  <li>
                     <p>If you don't specify either of these capabilities, AWS CloudFormation returns an
                        <code>InsufficientCapabilities</code> error.</p>
                  </li>
               </ul>
               <p>If your stack template contains these resources, we recommend that you review
               all permissions associated with them and edit their permissions if
               necessary.</p>
               <ul>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html\">
                        AWS::IAM::AccessKey</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html\">
                        AWS::IAM::Group</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html\"> AWS::IAM::InstanceProfile</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html\">
                        AWS::IAM::Policy</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html\">
                        AWS::IAM::Role</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html\">
                        AWS::IAM::User</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html\"> AWS::IAM::UserToGroupAddition</a>
                     </p>
                  </li>
               </ul>
               <p>For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities\">Acknowledging IAM
                  Resources in AWS CloudFormation Templates</a>.</p>
            </li>
            <li>
               <p>
                  <code>CAPABILITY_AUTO_EXPAND</code>
               </p>
               <p>Some template contain macros. Macros perform custom processing on templates; this
               can include simple actions like find-and-replace operations, all the way to extensive
               transformations of entire templates. Because of this, users typically create a change
               set from the processed template, so that they can review the changes resulting from
               the macros before actually updating the stack. If your stack template contains one or
               more macros, and you choose to update a stack directly from the processed template,
               without first reviewing the resulting changes in a change set, you must acknowledge
               this capability. This includes the <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html\">AWS::Include</a> and <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html\">AWS::Serverless</a> transforms, which are macros hosted by AWS CloudFormation.</p>
               <p>If you want to update a stack
               from a stack template that contains macros <i>and</i> nested stacks,
               you must update the stack directly from the template using this capability.</p>
               <important>
                  <p>You should only update stacks directly from a stack template that contains
                  macros if you know what processing the macro performs.</p>
                  <p>Each macro relies on an underlying Lambda service function for processing stack
                  templates. Be aware that the Lambda function owner can update the function
                  operation without AWS CloudFormation being notified.</p>
               </important>
               <p>For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html\">Using
                  AWS CloudFormation Macros to Perform Custom Processing on
               Templates</a>.</p>
            </li>
         </ul>")
    @as("Capabilities")
    capabilities: option<capabilities>,
    @ocaml.doc("<p>A list of <code>Parameter</code> structures that specify input parameters for the
         stack. For more information, see the <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html\">Parameter</a> data
         type.</p>")
    @as("Parameters")
    parameters: option<parameters>,
    @ocaml.doc("<p>Location of a file containing the temporary overriding stack policy. The URL must
         point to a policy (max size: 16KB) located in an S3 bucket in
         the same Region as the stack. You can specify either the
            <code>StackPolicyDuringUpdateBody</code> or the <code>StackPolicyDuringUpdateURL</code>
         parameter, but not both.</p>
         <p>If you want to update protected resources, specify a temporary overriding stack
         policy during this update. If you do not specify a stack policy, the current policy that is
         associated with the stack will be used.</p>")
    @as("StackPolicyDuringUpdateURL")
    stackPolicyDuringUpdateURL: option<stackPolicyDuringUpdateURL>,
    @ocaml.doc("<p>Structure containing the temporary overriding stack policy body. You can specify
         either the <code>StackPolicyDuringUpdateBody</code> or the
            <code>StackPolicyDuringUpdateURL</code> parameter, but not both.</p>
         <p>If you want to update protected resources, specify a temporary overriding stack
         policy during this update. If you do not specify a stack policy, the current policy that is
         associated with the stack will be used.</p>")
    @as("StackPolicyDuringUpdateBody")
    stackPolicyDuringUpdateBody: option<stackPolicyDuringUpdateBody>,
    @ocaml.doc("<p>Reuse the existing template that is associated with the stack that you are
         updating.</p>
         <p>Conditional: You must specify only one of the following parameters:
            <code>TemplateBody</code>, <code>TemplateURL</code>, or set the
            <code>UsePreviousTemplate</code> to <code>true</code>.</p>")
    @as("UsePreviousTemplate")
    usePreviousTemplate: option<usePreviousTemplate>,
    @ocaml.doc("<p>Location of file containing the template body. The URL must point to a template that
         is located in an Amazon S3 bucket or a Systems Manager document. For more information, go to
            <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html\">Template Anatomy</a>
         in the AWS CloudFormation User Guide.</p>
         <p>Conditional: You must specify only one of the following parameters:
            <code>TemplateBody</code>, <code>TemplateURL</code>, or set the
            <code>UsePreviousTemplate</code> to <code>true</code>.</p>")
    @as("TemplateURL")
    templateURL: option<templateURL>,
    @ocaml.doc("<p>Structure containing the template body with a minimum length of 1 byte and a maximum
         length of 51,200 bytes. (For more information, go to <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html\">Template Anatomy</a>
         in the AWS CloudFormation User Guide.)</p>
         <p>Conditional: You must specify only one of the following parameters:
            <code>TemplateBody</code>, <code>TemplateURL</code>, or set the
            <code>UsePreviousTemplate</code> to <code>true</code>.</p>")
    @as("TemplateBody")
    templateBody: option<templateBody>,
    @ocaml.doc("<p>The name or unique stack ID of the stack to update.</p>") @as("StackName")
    stackName: stackName,
  }
  @ocaml.doc("<p>The output for an <a>UpdateStack</a> action.</p>")
  type response = {
    @ocaml.doc("<p>Unique identifier of the stack.</p>") @as("StackId") stackId: option<stackId>,
  }
  @module("@aws-sdk/client-cloudformation") @new external new: request => t = "UpdateStackCommand"
  let make = (
    ~stackName,
    ~clientRequestToken=?,
    ~tags=?,
    ~notificationARNs=?,
    ~stackPolicyURL=?,
    ~stackPolicyBody=?,
    ~rollbackConfiguration=?,
    ~roleARN=?,
    ~resourceTypes=?,
    ~capabilities=?,
    ~parameters=?,
    ~stackPolicyDuringUpdateURL=?,
    ~stackPolicyDuringUpdateBody=?,
    ~usePreviousTemplate=?,
    ~templateURL=?,
    ~templateBody=?,
    (),
  ) =>
    new({
      clientRequestToken: clientRequestToken,
      tags: tags,
      notificationARNs: notificationARNs,
      stackPolicyURL: stackPolicyURL,
      stackPolicyBody: stackPolicyBody,
      rollbackConfiguration: rollbackConfiguration,
      roleARN: roleARN,
      resourceTypes: resourceTypes,
      capabilities: capabilities,
      parameters: parameters,
      stackPolicyDuringUpdateURL: stackPolicyDuringUpdateURL,
      stackPolicyDuringUpdateBody: stackPolicyDuringUpdateBody,
      usePreviousTemplate: usePreviousTemplate,
      templateURL: templateURL,
      templateBody: templateBody,
      stackName: stackName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStacks = {
  type t
  @ocaml.doc("<p>The input for <a>ListStacks</a> action.</p>")
  type request = {
    @ocaml.doc("<p>Stack status to use as a filter. Specify one or more stack status codes to list only
         stacks with the specified status codes. For a complete list of stack status codes, see the
            <code>StackStatus</code> parameter of the <a>Stack</a> data type.</p>")
    @as("StackStatusFilter")
    stackStatusFilter: option<stackStatusFilter>,
    @ocaml.doc("<p>A string that identifies the next page of stacks that you want to retrieve.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @ocaml.doc("<p>The output for <a>ListStacks</a> action.</p>")
  type response = {
    @ocaml.doc("<p>If the output exceeds 1 MB in size, a string that identifies the next page of stacks.
         If no additional page exists, this value is null.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>StackSummary</code> structures containing information about the
         specified stacks.</p>")
    @as("StackSummaries")
    stackSummaries: option<stackSummaries>,
  }
  @module("@aws-sdk/client-cloudformation") @new external new: request => t = "ListStacksCommand"
  let make = (~stackStatusFilter=?, ~nextToken=?, ()) =>
    new({stackStatusFilter: stackStatusFilter, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStackSets = {
  type t
  type request = {
    @ocaml.doc("<p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the management account or as a delegated administrator in a member account.</p> 
         <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
         <ul>
            <li>
               <p>If you are signed in to the management account, specify <code>SELF</code>.</p>
            </li>
            <li>
               <p>If you are signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
               <p>Your AWS account must be registered as a delegated administrator in the management account. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html\">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
            </li>
         </ul>")
    @as("CallAs")
    callAs: option<callAs>,
    @ocaml.doc("<p>The status of the stack sets that you want to get summary information
         about.</p>")
    @as("Status")
    status: option<stackSetStatus>,
    @ocaml.doc("<p>The maximum number of results to be returned with a single call. If the number of
         available results exceeds this maximum, the response includes a <code>NextToken</code>
         value that you can assign to the <code>NextToken</code> request parameter to get the next
         set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the previous paginated request didn't return all of the remaining results, the
         response object's <code>NextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListStackSets</code> again and assign that token to the
         request object's <code>NextToken</code> parameter. If there are no remaining results, the
         previous response object's <code>NextToken</code> parameter is set to
         <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If the request doesn't return all of the remaining results, <code>NextToken</code> is
         set to a token. To retrieve the next set of results, call <code>ListStackInstances</code>
         again and assign that token to the request object's <code>NextToken</code> parameter. If
         the request returns all results, <code>NextToken</code> is set to
         <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>StackSetSummary</code> structures that contain information about the
         user's stack sets.</p>")
    @as("Summaries")
    summaries: option<stackSetSummaries>,
  }
  @module("@aws-sdk/client-cloudformation") @new external new: request => t = "ListStackSetsCommand"
  let make = (~callAs=?, ~status=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({callAs: callAs, status: status, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStackSetOperationResults = {
  type t
  type request = {
    @ocaml.doc("<p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p> 
         <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
         <ul>
            <li>
               <p>If you are signed in to the management account, specify <code>SELF</code>.</p>
            </li>
            <li>
               <p>If you are signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
               <p>Your AWS account must be registered as a delegated administrator in the management account. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html\">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
            </li>
         </ul>")
    @as("CallAs")
    callAs: option<callAs>,
    @ocaml.doc("<p>The maximum number of results to be returned with a single call. If the number of
         available results exceeds this maximum, the response includes a <code>NextToken</code>
         value that you can assign to the <code>NextToken</code> request parameter to get the next
         set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the previous request didn't return all of the remaining results, the response
         object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set
         of results, call <code>ListStackSetOperationResults</code> again and assign that token to
         the request object's <code>NextToken</code> parameter. If there are no remaining results,
         the previous response object's <code>NextToken</code> parameter is set to
         <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ID of the stack set operation.</p>") @as("OperationId")
    operationId: clientRequestToken,
    @ocaml.doc("<p>The name or unique ID of the stack set that you want to get operation results
         for.</p>")
    @as("StackSetName")
    stackSetName: stackSetName,
  }
  type response = {
    @ocaml.doc("<p>If the request doesn't return all results, <code>NextToken</code> is set to a token.
         To retrieve the next set of results, call <code>ListOperationResults</code> again and
         assign that token to the request object's <code>NextToken</code> parameter. If there are no
         remaining results, <code>NextToken</code> is set to <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>StackSetOperationResultSummary</code> structures that contain
         information about the specified operation results, for accounts and Regions that are
         included in the operation.</p>")
    @as("Summaries")
    summaries: option<stackSetOperationResultSummaries>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "ListStackSetOperationResultsCommand"
  let make = (~operationId, ~stackSetName, ~callAs=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      callAs: callAs,
      maxResults: maxResults,
      nextToken: nextToken,
      operationId: operationId,
      stackSetName: stackSetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStackResources = {
  type t
  @ocaml.doc("<p>The input for the <a>ListStackResource</a> action.</p>")
  type request = {
    @ocaml.doc("<p>A string that identifies the next page of stack resources that you want to
         retrieve.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name or the unique stack ID that is associated with the stack, which are not
         always interchangeable:</p>
         <ul>
            <li>
               <p>Running stacks: You can specify either the stack's name or its unique stack
               ID.</p>
            </li>
            <li>
               <p>Deleted stacks: You must specify the unique stack ID.</p>
            </li>
         </ul>
         <p>Default: There is no default value.</p>")
    @as("StackName")
    stackName: stackName,
  }
  @ocaml.doc("<p>The output for a <a>ListStackResources</a> action.</p>")
  type response = {
    @ocaml.doc("<p>If the output exceeds 1 MB, a string that identifies the next page of stack
         resources. If no additional page exists, this value is null.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>StackResourceSummary</code> structures.</p>")
    @as("StackResourceSummaries")
    stackResourceSummaries: option<stackResourceSummaries>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "ListStackResourcesCommand"
  let make = (~stackName, ~nextToken=?, ()) => new({nextToken: nextToken, stackName: stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStackInstances = {
  type t
  type request = {
    @ocaml.doc("<p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p> 
         <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
         <ul>
            <li>
               <p>If you are signed in to the management account, specify <code>SELF</code>.</p>
            </li>
            <li>
               <p>If you are signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
               <p>Your AWS account must be registered as a delegated administrator in the management account. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html\">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
            </li>
         </ul>")
    @as("CallAs")
    callAs: option<callAs>,
    @ocaml.doc("<p>The name of the Region where you want to list stack instances. </p>")
    @as("StackInstanceRegion")
    stackInstanceRegion: option<region>,
    @ocaml.doc("<p>The name of the AWS account that you want to list stack instances for.</p>")
    @as("StackInstanceAccount")
    stackInstanceAccount: option<account>,
    @ocaml.doc("<p>The status that stack instances are filtered by.</p>") @as("Filters")
    filters: option<stackInstanceFilters>,
    @ocaml.doc("<p>The maximum number of results to be returned with a single call. If the number of
         available results exceeds this maximum, the response includes a <code>NextToken</code>
         value that you can assign to the <code>NextToken</code> request parameter to get the next
         set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the previous request didn't return all of the remaining results, the response's
            <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
         results, call <code>ListStackInstances</code> again and assign that token to the request
         object's <code>NextToken</code> parameter. If there are no remaining results, the previous
         response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name or unique ID of the stack set that you want to list stack instances
         for.</p>")
    @as("StackSetName")
    stackSetName: stackSetName,
  }
  type response = {
    @ocaml.doc("<p>If the request doesn't return all of the remaining results, <code>NextToken</code> is
         set to a token. To retrieve the next set of results, call <code>ListStackInstances</code>
         again and assign that token to the request object's <code>NextToken</code> parameter. If
         the request returns all results, <code>NextToken</code> is set to
         <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>StackInstanceSummary</code> structures that contain information about
         the specified stack instances.</p>")
    @as("Summaries")
    summaries: option<stackInstanceSummaries>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "ListStackInstancesCommand"
  let make = (
    ~stackSetName,
    ~callAs=?,
    ~stackInstanceRegion=?,
    ~stackInstanceAccount=?,
    ~filters=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      callAs: callAs,
      stackInstanceRegion: stackInstanceRegion,
      stackInstanceAccount: stackInstanceAccount,
      filters: filters,
      maxResults: maxResults,
      nextToken: nextToken,
      stackSetName: stackSetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectStackResourceDrift = {
  type t
  type request = {
    @ocaml.doc("<p>The logical name of the resource for which to return drift information.</p>")
    @as("LogicalResourceId")
    logicalResourceId: logicalResourceId,
    @ocaml.doc("<p>The name of the stack to which the resource belongs.</p>") @as("StackName")
    stackName: stackNameOrId,
  }
  type response = {
    @ocaml.doc("<p>Information about whether the resource's actual configuration has drifted from its
         expected template configuration, including actual and expected property values and any
         differences detected.</p>")
    @as("StackResourceDrift")
    stackResourceDrift: stackResourceDrift,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DetectStackResourceDriftCommand"
  let make = (~logicalResourceId, ~stackName, ()) =>
    new({logicalResourceId: logicalResourceId, stackName: stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStackSetOperation = {
  type t
  type request = {
    @ocaml.doc("<p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p> 
         <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
         <ul>
            <li>
               <p>If you are signed in to the management account, specify <code>SELF</code>.</p>
            </li>
            <li>
               <p>If you are signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
               <p>Your AWS account must be registered as a delegated administrator in the management account. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html\">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
            </li>
         </ul>")
    @as("CallAs")
    callAs: option<callAs>,
    @ocaml.doc("<p>The unique ID of the stack set operation. </p>") @as("OperationId")
    operationId: clientRequestToken,
    @ocaml.doc("<p>The name or the unique stack ID of the stack set for the stack operation.</p>")
    @as("StackSetName")
    stackSetName: stackSetName,
  }
  type response = {
    @ocaml.doc("<p>The specified stack set operation.</p>") @as("StackSetOperation")
    stackSetOperation: option<stackSetOperation>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DescribeStackSetOperationCommand"
  let make = (~operationId, ~stackSetName, ~callAs=?, ()) =>
    new({callAs: callAs, operationId: operationId, stackSetName: stackSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStackSet = {
  type t
  type request = {
    @ocaml.doc("<p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p> 
         <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
         <ul>
            <li>
               <p>If you are signed in to the management account, specify <code>SELF</code>.</p>
            </li>
            <li>
               <p>If you are signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
               <p>Your AWS account must be registered as a delegated administrator in the management account. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html\">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
            </li>
         </ul>")
    @as("CallAs")
    callAs: option<callAs>,
    @ocaml.doc("<p>The name or unique ID of the stack set whose description you want.</p>")
    @as("StackSetName")
    stackSetName: stackSetName,
  }
  type response = {
    @ocaml.doc("<p>The specified stack set.</p>") @as("StackSet") stackSet: option<stackSet>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DescribeStackSetCommand"
  let make = (~stackSetName, ~callAs=?, ()) => new({callAs: callAs, stackSetName: stackSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStackResources = {
  type t
  @ocaml.doc("<p>The input for <a>DescribeStackResources</a> action.</p>")
  type request = {
    @ocaml.doc("<p>The name or unique identifier that corresponds to a physical instance ID of a
         resource supported by AWS CloudFormation.</p>
         <p>For example, for an Amazon Elastic Compute Cloud (EC2) instance,
            <code>PhysicalResourceId</code> corresponds to the <code>InstanceId</code>. You can pass
         the EC2 <code>InstanceId</code> to <code>DescribeStackResources</code> to find which stack
         the instance belongs to and what other resources are part of the stack.</p>
         <p>Required: Conditional. If you do not specify <code>PhysicalResourceId</code>, you
         must specify <code>StackName</code>.</p>
         <p>Default: There is no default value.</p>")
    @as("PhysicalResourceId")
    physicalResourceId: option<physicalResourceId>,
    @ocaml.doc("<p>The logical name of the resource as specified in the template.</p>
         <p>Default: There is no default value.</p>")
    @as("LogicalResourceId")
    logicalResourceId: option<logicalResourceId>,
    @ocaml.doc("<p>The name or the unique stack ID that is associated with the stack, which are not
         always interchangeable:</p>
         <ul>
            <li>
               <p>Running stacks: You can specify either the stack's name or its unique stack
               ID.</p>
            </li>
            <li>
               <p>Deleted stacks: You must specify the unique stack ID.</p>
            </li>
         </ul>
         <p>Default: There is no default value.</p>
         <p>Required: Conditional. If you do not specify <code>StackName</code>, you must specify
            <code>PhysicalResourceId</code>.</p>")
    @as("StackName")
    stackName: option<stackName>,
  }
  @ocaml.doc("<p>The output for a <a>DescribeStackResources</a> action.</p>")
  type response = {
    @ocaml.doc("<p>A list of <code>StackResource</code> structures.</p>") @as("StackResources")
    stackResources: option<stackResources>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DescribeStackResourcesCommand"
  let make = (~physicalResourceId=?, ~logicalResourceId=?, ~stackName=?, ()) =>
    new({
      physicalResourceId: physicalResourceId,
      logicalResourceId: logicalResourceId,
      stackName: stackName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStackInstance = {
  type t
  type request = {
    @ocaml.doc("<p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p> 
         <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
         <ul>
            <li>
               <p>If you are signed in to the management account, specify <code>SELF</code>.</p>
            </li>
            <li>
               <p>If you are signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
               <p>Your AWS account must be registered as a delegated administrator in the management account. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html\">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
            </li>
         </ul>")
    @as("CallAs")
    callAs: option<callAs>,
    @ocaml.doc("<p>The name of a Region that's associated with this stack instance.</p>")
    @as("StackInstanceRegion")
    stackInstanceRegion: region,
    @ocaml.doc("<p>The ID of an AWS account that's associated with this stack instance.</p>")
    @as("StackInstanceAccount")
    stackInstanceAccount: account,
    @ocaml.doc("<p>The name or the unique stack ID of the stack set that you want to get stack instance
         information for.</p>")
    @as("StackSetName")
    stackSetName: stackSetName,
  }
  type response = {
    @ocaml.doc("<p>The stack instance that matches the specified request parameters.</p>")
    @as("StackInstance")
    stackInstance: option<stackInstance>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DescribeStackInstanceCommand"
  let make = (~stackInstanceRegion, ~stackInstanceAccount, ~stackSetName, ~callAs=?, ()) =>
    new({
      callAs: callAs,
      stackInstanceRegion: stackInstanceRegion,
      stackInstanceAccount: stackInstanceAccount,
      stackSetName: stackSetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStack = {
  type t
  @ocaml.doc("<p>The input for <a>CreateStack</a> action.</p>")
  type request = {
    @ocaml.doc("<p>Whether to enable termination protection on the specified stack. If a user attempts
         to delete a stack with termination protection enabled, the operation fails and the stack
         remains unchanged. For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html\">Protecting a Stack From Being
            Deleted</a> in the <i>AWS CloudFormation User Guide</i>. Termination protection is
         disabled on stacks by default. </p>
         <p> For <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html\">nested stacks</a>,
         termination protection is set on the root stack and cannot be changed directly on the
         nested stack.</p>")
    @as("EnableTerminationProtection")
    enableTerminationProtection: option<enableTerminationProtection>,
    @ocaml.doc("<p>A unique identifier for this <code>CreateStack</code> request. Specify this token if
         you plan to retry requests so that AWS CloudFormation knows that you're not attempting to
         create a stack with the same name. You might retry <code>CreateStack</code> requests to
         ensure that AWS CloudFormation successfully received them.</p>
         <p>All events triggered by a given stack operation are assigned the same client request
         token, which you can use to track operations. For example, if you execute a
         <code>CreateStack</code> operation with the token <code>token1</code>, then all the
         <code>StackEvents</code> generated by that operation will have
         <code>ClientRequestToken</code> set as <code>token1</code>.</p>
         <p>In the console, stack operations display the client request token on the Events tab.
         Stack operations that are initiated from the console use the token format
         <i>Console-StackOperation-ID</i>, which helps you easily identify the
         stack operation . For example, if you create a stack using the console, each stack event
         would be assigned the same token in the following format:
         <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>. </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>Key-value pairs to associate with this stack. AWS CloudFormation also propagates
         these tags to the resources created in the stack. A maximum number of 50 tags can be
         specified.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Location of a file containing the stack policy. The URL must point to a policy
         (maximum size: 16 KB) located in an S3 bucket in the same
         Region as the stack. You can specify either the <code>StackPolicyBody</code> or the
            <code>StackPolicyURL</code> parameter, but not both.</p>")
    @as("StackPolicyURL")
    stackPolicyURL: option<stackPolicyURL>,
    @ocaml.doc("<p>Structure containing the stack policy body. For more information, go to <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html\"> Prevent Updates
            to Stack Resources</a> in the <i>AWS CloudFormation User Guide</i>.
         You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code>
         parameter, but not both.</p>")
    @as("StackPolicyBody")
    stackPolicyBody: option<stackPolicyBody>,
    @ocaml.doc("<p>Determines what action will be taken if stack creation fails. This must be one of:
         DO_NOTHING, ROLLBACK, or DELETE. You can specify either <code>OnFailure</code> or
            <code>DisableRollback</code>, but not both.</p>
         <p>Default: <code>ROLLBACK</code>
         </p>")
    @as("OnFailure")
    onFailure: option<onFailure>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role
         that AWS CloudFormation assumes to create the stack. AWS CloudFormation uses the role's
         credentials to make calls on your behalf. AWS CloudFormation always uses this role for all
         future operations on the stack. As long as users have permission to operate on the stack,
         AWS CloudFormation uses this role even if the users don't have permission to pass it.
         Ensure that the role grants least privilege.</p>
         <p>If you don't specify a value, AWS CloudFormation uses the role that was previously
         associated with the stack. If no role is available, AWS CloudFormation uses a temporary
         session that is generated from your user credentials.</p>")
    @as("RoleARN")
    roleARN: option<roleARN>,
    @ocaml.doc("<p>The template resource types that you have permissions to work with for this create
         stack action, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or
            <code>Custom::MyCustomInstance</code>. Use the following syntax to describe template
         resource types: <code>AWS::*</code> (for all AWS resource), <code>Custom::*</code> (for all
         custom resources), <code>Custom::<i>logical_ID</i>
            </code> (for a specific custom resource),
            <code>AWS::<i>service_name</i>::*</code> (for all resources of a
         particular AWS service), and
               <code>AWS::<i>service_name</i>::<i>resource_logical_ID</i>
            </code> (for a specific AWS resource).</p>
         <p>If the list of resource types doesn't include a resource that you're creating, the
         stack creation fails. By default, AWS CloudFormation grants permissions to all resource
         types. AWS Identity and Access Management (IAM) uses this parameter for AWS
         CloudFormation-specific condition keys in IAM policies. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html\">Controlling Access with AWS Identity and Access Management</a>.</p>")
    @as("ResourceTypes")
    resourceTypes: option<resourceTypes>,
    @ocaml.doc("<p>In some cases, you must explicitly acknowledge that your stack template contains certain
         capabilities in order for AWS CloudFormation to create the stack.</p>
         <ul>
            <li>
               <p>
                  <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
               </p>
               <p>Some stack templates might include resources that can affect permissions in
               your AWS account; for example, by creating new AWS Identity and Access Management
               (IAM) users. For those stacks, you must explicitly acknowledge this by specifying one
               of these capabilities.</p>
               <p>The following IAM resources require you to specify either the
                  <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code>
               capability.</p>
               <ul>
                  <li>
                     <p>If you have IAM resources, you can specify either capability. </p>
                  </li>
                  <li>
                     <p>If you have IAM resources with custom names, you <i>must</i>
                     specify <code>CAPABILITY_NAMED_IAM</code>. </p>
                  </li>
                  <li>
                     <p>If you don't specify either of these capabilities, AWS CloudFormation returns an
                        <code>InsufficientCapabilities</code> error.</p>
                  </li>
               </ul>
               <p>If your stack template contains these resources, we recommend that you review
               all permissions associated with them and edit their permissions if
               necessary.</p>
               <ul>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html\">
                        AWS::IAM::AccessKey</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html\">
                        AWS::IAM::Group</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html\"> AWS::IAM::InstanceProfile</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html\">
                        AWS::IAM::Policy</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html\">
                        AWS::IAM::Role</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html\">
                        AWS::IAM::User</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html\"> AWS::IAM::UserToGroupAddition</a>
                     </p>
                  </li>
               </ul>
               <p>For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities\">Acknowledging IAM
                  Resources in AWS CloudFormation Templates</a>.</p>
            </li>
            <li>
               <p>
                  <code>CAPABILITY_AUTO_EXPAND</code>
               </p>
               <p>Some template contain macros. Macros perform custom processing on templates; this
               can include simple actions like find-and-replace operations, all the way to extensive
               transformations of entire templates. Because of this, users typically create a change
               set from the processed template, so that they can review the changes resulting from
               the macros before actually creating the stack. If your stack template contains one or
               more macros, and you choose to create a stack directly from the processed template,
               without first reviewing the resulting changes in a change set, you must acknowledge
               this capability. This includes the <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html\">AWS::Include</a> and <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html\">AWS::Serverless</a> transforms, which are macros hosted by AWS CloudFormation.</p>
               <p>If you want to create a stack
               from a stack template that contains macros <i>and</i> nested stacks,
               you must create the stack directly from the template using this capability.</p>
               <important>
                  <p>You should only create stacks directly from a stack template that contains
                  macros if you know what processing the macro performs.</p>
                  <p>Each macro relies on an underlying Lambda service function for processing stack
                  templates. Be aware that the Lambda function owner can update the function
                  operation without AWS CloudFormation being notified.</p>
               </important>
               <p>For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html\">Using
                  AWS CloudFormation Macros to Perform Custom Processing on
               Templates</a>.</p>
            </li>
         </ul>")
    @as("Capabilities")
    capabilities: option<capabilities>,
    @ocaml.doc("<p>The Simple Notification Service (SNS) topic ARNs to publish stack related events. You
         can find your SNS topic ARNs using the SNS console or your Command Line Interface
         (CLI).</p>")
    @as("NotificationARNs")
    notificationARNs: option<notificationARNs>,
    @ocaml.doc("<p>The amount of time that can pass before the stack status becomes CREATE_FAILED; if
            <code>DisableRollback</code> is not set or is set to <code>false</code>, the stack will
         be rolled back.</p>")
    @as("TimeoutInMinutes")
    timeoutInMinutes: option<timeoutMinutes>,
    @ocaml.doc("<p>The rollback triggers for AWS CloudFormation to monitor during stack creation and
         updating operations, and for the specified monitoring period afterwards.</p>")
    @as("RollbackConfiguration")
    rollbackConfiguration: option<rollbackConfiguration>,
    @ocaml.doc("<p>Set to <code>true</code> to disable rollback of the stack if stack creation failed.
         You can specify either <code>DisableRollback</code> or <code>OnFailure</code>, but not
         both.</p>
         <p>Default: <code>false</code>
         </p>")
    @as("DisableRollback")
    disableRollback: option<disableRollback>,
    @ocaml.doc("<p>A list of <code>Parameter</code> structures that specify input parameters for the
         stack. For more information, see the <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html\">Parameter</a> data
         type.</p>")
    @as("Parameters")
    parameters: option<parameters>,
    @ocaml.doc("<p>Location of file containing the template body. The URL must point to a template (max
         size: 460,800 bytes) that is located in an Amazon S3 bucket or a Systems Manager document.
         For more information, go to the <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html\">Template Anatomy</a>
         in the AWS CloudFormation User Guide.</p>
         <p>Conditional: You must specify either the <code>TemplateBody</code> or the
            <code>TemplateURL</code> parameter, but not both.</p>")
    @as("TemplateURL")
    templateURL: option<templateURL>,
    @ocaml.doc("<p>Structure containing the template body with a minimum length of 1 byte and a maximum
         length of 51,200 bytes. For more information, go to <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html\">Template Anatomy</a>
         in the AWS CloudFormation User Guide.</p>
         <p>Conditional: You must specify either the <code>TemplateBody</code> or the
            <code>TemplateURL</code> parameter, but not both.</p>")
    @as("TemplateBody")
    templateBody: option<templateBody>,
    @ocaml.doc("<p>The name that is associated with the stack. The name must be unique in the Region in
         which you are creating the stack.</p>
         <note>
            <p>A stack name can contain only alphanumeric characters (case sensitive) and
            hyphens. It must start with an alphabetic character and cannot be longer than 128
            characters.</p>
         </note>")
    @as("StackName")
    stackName: stackName,
  }
  @ocaml.doc("<p>The output for a <a>CreateStack</a> action.</p>")
  type response = {
    @ocaml.doc("<p>Unique identifier of the stack.</p>") @as("StackId") stackId: option<stackId>,
  }
  @module("@aws-sdk/client-cloudformation") @new external new: request => t = "CreateStackCommand"
  let make = (
    ~stackName,
    ~enableTerminationProtection=?,
    ~clientRequestToken=?,
    ~tags=?,
    ~stackPolicyURL=?,
    ~stackPolicyBody=?,
    ~onFailure=?,
    ~roleARN=?,
    ~resourceTypes=?,
    ~capabilities=?,
    ~notificationARNs=?,
    ~timeoutInMinutes=?,
    ~rollbackConfiguration=?,
    ~disableRollback=?,
    ~parameters=?,
    ~templateURL=?,
    ~templateBody=?,
    (),
  ) =>
    new({
      enableTerminationProtection: enableTerminationProtection,
      clientRequestToken: clientRequestToken,
      tags: tags,
      stackPolicyURL: stackPolicyURL,
      stackPolicyBody: stackPolicyBody,
      onFailure: onFailure,
      roleARN: roleARN,
      resourceTypes: resourceTypes,
      capabilities: capabilities,
      notificationARNs: notificationARNs,
      timeoutInMinutes: timeoutInMinutes,
      rollbackConfiguration: rollbackConfiguration,
      disableRollback: disableRollback,
      parameters: parameters,
      templateURL: templateURL,
      templateBody: templateBody,
      stackName: stackName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateChangeSet = {
  type t
  @ocaml.doc("<p>The input for the <a>CreateChangeSet</a> action.</p>")
  type request = {
    @ocaml.doc("<p>Creates a change set for the all nested stacks specified in the template. The default
         behavior of this action is set to <code>False</code>. To include nested sets in a change
         set, specify <code>True</code>.</p>")
    @as("IncludeNestedStacks")
    includeNestedStacks: option<includeNestedStacks>,
    @ocaml.doc("<p>The resources to import into your stack.</p>") @as("ResourcesToImport")
    resourcesToImport: option<resourcesToImport>,
    @ocaml.doc("<p>The type of change set operation. To create a change set for a new stack, specify
            <code>CREATE</code>. To create a change set for an existing stack, specify
            <code>UPDATE</code>. To create a change set for an import operation, specify
            <code>IMPORT</code>.</p>
         <p>If you create a change set for a new stack, AWS Cloudformation creates a stack with a
         unique stack ID, but no template or resources. The stack will be in the <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-describing-stacks.html#d0e11995\">
               <code>REVIEW_IN_PROGRESS</code>
            </a> state until you execute the change
         set.</p>
         <p>By default, AWS CloudFormation specifies <code>UPDATE</code>. You can't use the
            <code>UPDATE</code> type to create a change set for a new stack or the
            <code>CREATE</code> type to create a change set for an existing stack.</p>")
    @as("ChangeSetType")
    changeSetType: option<changeSetType>,
    @ocaml.doc("<p>A description to help you identify this change set.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>A unique identifier for this <code>CreateChangeSet</code> request. Specify this token
         if you plan to retry requests so that AWS CloudFormation knows that you're not attempting
         to create another change set with the same name. You might retry
            <code>CreateChangeSet</code> requests to ensure that AWS CloudFormation successfully
         received them.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The name of the change set. The name must be unique among all change sets that are
         associated with the specified stack.</p>
         <p>A change set name can contain only alphanumeric, case sensitive characters and
         hyphens. It must start with an alphabetic character and cannot exceed 128
         characters.</p>")
    @as("ChangeSetName")
    changeSetName: changeSetName,
    @ocaml.doc("<p>Key-value pairs to associate with this stack. AWS CloudFormation also propagates
         these tags to resources in the stack. You can specify a maximum of 50 tags.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The Amazon Resource Names (ARNs) of Amazon Simple Notification Service (Amazon SNS)
         topics that AWS CloudFormation associates with the stack. To remove all associated
         notification topics, specify an empty list.</p>")
    @as("NotificationARNs")
    notificationARNs: option<notificationARNs>,
    @ocaml.doc("<p>The rollback triggers for AWS CloudFormation to monitor during stack creation and
         updating operations, and for the specified monitoring period afterwards.</p>")
    @as("RollbackConfiguration")
    rollbackConfiguration: option<rollbackConfiguration>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role
         that AWS CloudFormation assumes when executing the change set. AWS CloudFormation uses the
         role's credentials to make calls on your behalf. AWS CloudFormation uses this role for all
         future operations on the stack. As long as users have permission to operate on the stack,
         AWS CloudFormation uses this role even if the users don't have permission to pass it.
         Ensure that the role grants least privilege.</p>
         <p>If you don't specify a value, AWS CloudFormation uses the role that was previously
         associated with the stack. If no role is available, AWS CloudFormation uses a temporary
         session that is generated from your user credentials.</p>")
    @as("RoleARN")
    roleARN: option<roleARN>,
    @ocaml.doc("<p>The template resource types that you have permissions to work with if you execute
         this change set, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or
            <code>Custom::MyCustomInstance</code>.</p>
         <p>If the list of resource types doesn't include a resource type that you're updating,
         the stack update fails. By default, AWS CloudFormation grants permissions to all resource
         types. AWS Identity and Access Management (IAM) uses this parameter for condition keys in
         IAM policies for AWS CloudFormation. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html\">Controlling Access with
            AWS Identity and Access Management</a> in the AWS CloudFormation User
         Guide.</p>")
    @as("ResourceTypes")
    resourceTypes: option<resourceTypes>,
    @ocaml.doc("<p>In some cases, you must explicitly acknowledge that your stack template contains certain
         capabilities in order for AWS CloudFormation to create the stack.</p>
         <ul>
            <li>
               <p>
                  <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
               </p>
               <p>Some stack templates might include resources that can affect permissions in
               your AWS account; for example, by creating new AWS Identity and Access Management
               (IAM) users. For those stacks, you must explicitly acknowledge this by specifying one
               of these capabilities.</p>
               <p>The following IAM resources require you to specify either the
                  <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code>
               capability.</p>
               <ul>
                  <li>
                     <p>If you have IAM resources, you can specify either capability. </p>
                  </li>
                  <li>
                     <p>If you have IAM resources with custom names, you <i>must</i>
                     specify <code>CAPABILITY_NAMED_IAM</code>. </p>
                  </li>
                  <li>
                     <p>If you don't specify either of these capabilities, AWS CloudFormation returns an
                        <code>InsufficientCapabilities</code> error.</p>
                  </li>
               </ul>
               <p>If your stack template contains these resources, we recommend that you review
               all permissions associated with them and edit their permissions if
               necessary.</p>
               <ul>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html\">
                        AWS::IAM::AccessKey</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html\">
                        AWS::IAM::Group</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html\"> AWS::IAM::InstanceProfile</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html\">
                        AWS::IAM::Policy</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html\">
                        AWS::IAM::Role</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html\">
                        AWS::IAM::User</a>
                     </p>
                  </li>
                  <li>
                     <p>
                        <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html\"> AWS::IAM::UserToGroupAddition</a>
                     </p>
                  </li>
               </ul>
               <p>For more information, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities\">Acknowledging IAM
                  Resources in AWS CloudFormation Templates</a>.</p>
            </li>
            <li>
               <p>
                  <code>CAPABILITY_AUTO_EXPAND</code>
               </p>
               <p>Some template contain macros. Macros perform custom processing on templates; this
               can include simple actions like find-and-replace operations, all the way to extensive
               transformations of entire templates. Because of this, users typically create a change
               set from the processed template, so that they can review the changes resulting from
               the macros before actually creating the stack. If your stack template contains one or
               more macros, and you choose to create a stack directly from the processed template,
               without first reviewing the resulting changes in a change set, you must acknowledge
               this capability. This includes the <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html\">AWS::Include</a> and <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html\">AWS::Serverless</a> transforms, which are macros hosted by AWS CloudFormation.</p>
               <note>
                  <p>This capacity does not apply to creating change sets, and specifying it when
                  creating change sets has no effect.</p>
                  <p>If you want to create
                  a stack from a stack template that contains macros <i>and</i> nested
                  stacks, you must create or update the stack directly from the template using the
                     <a>CreateStack</a> or <a>UpdateStack</a> action, and
                  specifying this capability.</p>
               </note>
               <p>For more information on macros, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html\">Using AWS CloudFormation Macros to
                  Perform Custom Processing on Templates</a>.</p>
            </li>
         </ul>")
    @as("Capabilities")
    capabilities: option<capabilities>,
    @ocaml.doc("<p>A list of <code>Parameter</code> structures that specify input parameters for the
         change set. For more information, see the <a>Parameter</a> data type.</p>")
    @as("Parameters")
    parameters: option<parameters>,
    @ocaml.doc("<p>Whether to reuse the template that is associated with the stack to create the change
         set.</p>")
    @as("UsePreviousTemplate")
    usePreviousTemplate: option<usePreviousTemplate>,
    @ocaml.doc("<p>The location of the file that contains the revised template. The URL must point to a
         template (max size: 460,800 bytes) that is located in an S3 bucket or a Systems Manager
         document. AWS CloudFormation generates the change set by comparing this template with the
         stack that you specified.</p>
         <p>Conditional: You must specify only <code>TemplateBody</code> or
            <code>TemplateURL</code>.</p>")
    @as("TemplateURL")
    templateURL: option<templateURL>,
    @ocaml.doc("<p>A structure that contains the body of the revised template, with a minimum length of
         1 byte and a maximum length of 51,200 bytes. AWS CloudFormation generates the change set by
         comparing this template with the template of the stack that you specified.</p>
         <p>Conditional: You must specify only <code>TemplateBody</code> or
            <code>TemplateURL</code>.</p>")
    @as("TemplateBody")
    templateBody: option<templateBody>,
    @ocaml.doc("<p>The name or the unique ID of the stack for which you are creating a change set. AWS
         CloudFormation generates the change set by comparing this stack's information with the
         information that you submit, such as a modified template or different parameter input
         values.</p>")
    @as("StackName")
    stackName: stackNameOrId,
  }
  @ocaml.doc("<p>The output for the <a>CreateChangeSet</a> action.</p>")
  type response = {
    @ocaml.doc("<p>The unique ID of the stack.</p>") @as("StackId") stackId: option<stackId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the change set.</p>") @as("Id")
    id: option<changeSetId>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "CreateChangeSetCommand"
  let make = (
    ~changeSetName,
    ~stackName,
    ~includeNestedStacks=?,
    ~resourcesToImport=?,
    ~changeSetType=?,
    ~description=?,
    ~clientToken=?,
    ~tags=?,
    ~notificationARNs=?,
    ~rollbackConfiguration=?,
    ~roleARN=?,
    ~resourceTypes=?,
    ~capabilities=?,
    ~parameters=?,
    ~usePreviousTemplate=?,
    ~templateURL=?,
    ~templateBody=?,
    (),
  ) =>
    new({
      includeNestedStacks: includeNestedStacks,
      resourcesToImport: resourcesToImport,
      changeSetType: changeSetType,
      description: description,
      clientToken: clientToken,
      changeSetName: changeSetName,
      tags: tags,
      notificationARNs: notificationARNs,
      rollbackConfiguration: rollbackConfiguration,
      roleARN: roleARN,
      resourceTypes: resourceTypes,
      capabilities: capabilities,
      parameters: parameters,
      usePreviousTemplate: usePreviousTemplate,
      templateURL: templateURL,
      templateBody: templateBody,
      stackName: stackName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTemplateSummary = {
  type t
  @ocaml.doc("<p>The input for the <a>GetTemplateSummary</a> action.</p>")
  type request = {
    @ocaml.doc("<p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p> 
         <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
         <ul>
            <li>
               <p>If you are signed in to the management account, specify <code>SELF</code>.</p>
            </li>
            <li>
               <p>If you are signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
               <p>Your AWS account must be registered as a delegated administrator in the management account. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html\">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
            </li>
         </ul>")
    @as("CallAs")
    callAs: option<callAs>,
    @ocaml.doc("<p>The name or unique ID of the stack set from which the stack was created.</p>
         <p>Conditional: You must specify only one of the following parameters:
            <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
            <code>TemplateURL</code>.</p>")
    @as("StackSetName")
    stackSetName: option<stackSetNameOrId>,
    @ocaml.doc("<p>The name or the stack ID that is associated with the stack, which are not always
         interchangeable. For running stacks, you can specify either the stack's name or its unique
         stack ID. For deleted stack, you must specify the unique stack ID.</p>
         <p>Conditional: You must specify only one of the following parameters:
            <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
            <code>TemplateURL</code>.</p>")
    @as("StackName")
    stackName: option<stackNameOrId>,
    @ocaml.doc("<p>Location of file containing the template body. The URL must point to a template (max
         size: 460,800 bytes) that is located in an Amazon S3 bucket or a Systems Manager document.
         For more information about templates, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html\">Template Anatomy</a>
         in the AWS CloudFormation User Guide.</p>
         <p>Conditional: You must specify only one of the following parameters:
            <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
            <code>TemplateURL</code>.</p>")
    @as("TemplateURL")
    templateURL: option<templateURL>,
    @ocaml.doc("<p>Structure containing the template body with a minimum length of 1 byte and a maximum
         length of 51,200 bytes. For more information about templates, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html\">Template Anatomy</a> in the AWS CloudFormation User Guide.</p>
         <p>Conditional: You must specify only one of the following parameters:
            <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
            <code>TemplateURL</code>.</p>")
    @as("TemplateBody")
    templateBody: option<templateBody>,
  }
  @ocaml.doc("<p>The output for the <a>GetTemplateSummary</a> action.</p>")
  type response = {
    @ocaml.doc("<p>A list of resource identifier summaries that describe the target resources of an import
         operation and the properties you can provide during the import to identify the target
         resources. For example, <code>BucketName</code> is a possible identifier property for an
            <code>AWS::S3::Bucket</code> resource. </p>")
    @as("ResourceIdentifierSummaries")
    resourceIdentifierSummaries: option<resourceIdentifierSummaries>,
    @ocaml.doc("<p>A list of the transforms that are declared in the template.</p>")
    @as("DeclaredTransforms")
    declaredTransforms: option<transformsList>,
    @ocaml.doc("<p>The value that is defined for the <code>Metadata</code> property of the
         template.</p>")
    @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc("<p>The AWS template format version, which identifies the capabilities of the
         template.</p>")
    @as("Version")
    version: option<version>,
    @ocaml.doc("<p>A list of all the template resource types that are defined in the template, such as
            <code>AWS::EC2::Instance</code>, <code>AWS::Dynamo::Table</code>, and
            <code>Custom::MyCustomInstance</code>.</p>")
    @as("ResourceTypes")
    resourceTypes: option<resourceTypes>,
    @ocaml.doc("<p>The list of resources that generated the values in the <code>Capabilities</code>
         response element.</p>")
    @as("CapabilitiesReason")
    capabilitiesReason: option<capabilitiesReason>,
    @ocaml.doc("<p>The capabilities found within the template. If your template contains IAM resources,
         you must specify the CAPABILITY_IAM or CAPABILITY_NAMED_IAM value for this parameter when
         you use the <a>CreateStack</a> or <a>UpdateStack</a> actions with
         your template; otherwise, those actions return an InsufficientCapabilities error.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities\">Acknowledging IAM Resources in AWS CloudFormation Templates</a>.</p>")
    @as("Capabilities")
    capabilities: option<capabilities>,
    @ocaml.doc("<p>The value that is defined in the <code>Description</code> property of the
         template.</p>")
    @as("Description")
    description: option<description>,
    @ocaml.doc("<p>A list of parameter declarations that describe various properties for each
         parameter.</p>")
    @as("Parameters")
    parameters: option<parameterDeclarations>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "GetTemplateSummaryCommand"
  let make = (~callAs=?, ~stackSetName=?, ~stackName=?, ~templateURL=?, ~templateBody=?, ()) =>
    new({
      callAs: callAs,
      stackSetName: stackSetName,
      stackName: stackName,
      templateURL: templateURL,
      templateBody: templateBody,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStackResourceDrifts = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned with a single call. If the number of
         available results exceeds this maximum, the response includes a <code>NextToken</code>
         value that you can assign to the <code>NextToken</code> request parameter to get the next
         set of results.</p>")
    @as("MaxResults")
    maxResults: option<boxedMaxResults>,
    @ocaml.doc("<p>A string that identifies the next page of stack resource drift results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The resource drift status values to use as filters for the resource drift results
         returned.</p>
         <ul>
            <li>
               <p>
                  <code>DELETED</code>: The resource differs from its expected template
               configuration in that the resource has been deleted.</p>
            </li>
            <li>
               <p>
                  <code>MODIFIED</code>: One or more resource properties differ from their
               expected template values.</p>
            </li>
            <li>
               <p>
                  <code>IN_SYNC</code>: The resources's actual configuration matches its expected
               template configuration.</p>
            </li>
            <li>
               <p>
                  <code>NOT_CHECKED</code>: AWS CloudFormation does not currently return this value.</p>
            </li>
         </ul>")
    @as("StackResourceDriftStatusFilters")
    stackResourceDriftStatusFilters: option<stackResourceDriftStatusFilters>,
    @ocaml.doc("<p>The name of the stack for which you want drift information.</p>")
    @as("StackName")
    stackName: stackNameOrId,
  }
  type response = {
    @ocaml.doc("<p>If the request doesn't return all of the remaining results, <code>NextToken</code> is
         set to a token. To retrieve the next set of results, call
            <code>DescribeStackResourceDrifts</code> again and assign that token to the request
         object's <code>NextToken</code> parameter. If the request returns all results,
            <code>NextToken</code> is set to <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Drift information for the resources that have been checked for drift in the specified
         stack. This includes actual and expected configuration values for resources where AWS CloudFormation
         detects drift.</p>
         <p>For a given stack, there will be one <code>StackResourceDrift</code> for each stack
         resource that has been checked for drift. Resources that have not yet been checked for
         drift are not included. Resources that do not currently support drift detection are not
         checked, and so not included. For a list of resources that support drift detection, see
            <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html\">Resources that Support Drift Detection</a>.</p>")
    @as("StackResourceDrifts")
    stackResourceDrifts: stackResourceDrifts,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DescribeStackResourceDriftsCommand"
  let make = (~stackName, ~maxResults=?, ~nextToken=?, ~stackResourceDriftStatusFilters=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      stackResourceDriftStatusFilters: stackResourceDriftStatusFilters,
      stackName: stackName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStacks = {
  type t
  @ocaml.doc("<p>The input for <a>DescribeStacks</a> action.</p>")
  type request = {
    @ocaml.doc("<p>A string that identifies the next page of stacks that you want to retrieve.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name or the unique stack ID that is associated with the stack, which are not
         always interchangeable:</p>
         <ul>
            <li>
               <p>Running stacks: You can specify either the stack's name or its unique stack
               ID.</p>
            </li>
            <li>
               <p>Deleted stacks: You must specify the unique stack ID.</p>
            </li>
         </ul>
         <p>Default: There is no default value.</p>")
    @as("StackName")
    stackName: option<stackName>,
  }
  @ocaml.doc("<p>The output for a <a>DescribeStacks</a> action.</p>")
  type response = {
    @ocaml.doc("<p>If the output exceeds 1 MB in size, a string that identifies the next page of stacks.
         If no additional page exists, this value is null.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of stack structures.</p>") @as("Stacks") stacks: option<stacks>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DescribeStacksCommand"
  let make = (~nextToken=?, ~stackName=?, ()) => new({nextToken: nextToken, stackName: stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeChangeSet = {
  type t
  @ocaml.doc("<p>The input for the <a>DescribeChangeSet</a> action.</p>")
  type request = {
    @ocaml.doc("<p>A string (provided by the <a>DescribeChangeSet</a> response output) that
         identifies the next page of information that you want to retrieve.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>If you specified the name of a change set, specify the stack name or ID (ARN) of the
         change set you want to describe.</p>")
    @as("StackName")
    stackName: option<stackNameOrId>,
    @ocaml.doc("<p>The name or Amazon Resource Name (ARN) of the change set that you want to
         describe.</p>")
    @as("ChangeSetName")
    changeSetName: changeSetNameOrId,
  }
  @ocaml.doc("<p>The output for the <a>DescribeChangeSet</a> action.</p>")
  type response = {
    @ocaml.doc(
      "<p>Specifies the change set ID of the root change set in the current nested change set hierarchy.</p>"
    )
    @as("RootChangeSetId")
    rootChangeSetId: option<changeSetId>,
    @ocaml.doc(
      "<p>Specifies the change set ID of the parent change set in the current nested change set hierarchy.</p>"
    )
    @as("ParentChangeSetId")
    parentChangeSetId: option<changeSetId>,
    @ocaml.doc("<p>Verifies if <code>IncludeNestedStacks</code> is set to <code>True</code>.</p>")
    @as("IncludeNestedStacks")
    includeNestedStacks: option<includeNestedStacks>,
    @ocaml.doc("<p>If the output exceeds 1 MB, a string that identifies the next page of changes. If
         there is no additional page, this value is null.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>Change</code> structures that describes the resources AWS
         CloudFormation changes if you execute the change set.</p>")
    @as("Changes")
    changes: option<changes>,
    @ocaml.doc("<p>If you execute the change set, the tags that will be associated with the
         stack.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>If you execute the change set, the list of capabilities that were explicitly
         acknowledged when the change set was created.</p>")
    @as("Capabilities")
    capabilities: option<capabilities>,
    @ocaml.doc("<p>The rollback triggers for AWS CloudFormation to monitor during stack creation and
         updating operations, and for the specified monitoring period afterwards.</p>")
    @as("RollbackConfiguration")
    rollbackConfiguration: option<rollbackConfiguration>,
    @ocaml.doc("<p>The ARNs of the Amazon Simple Notification Service (Amazon SNS) topics that will be
         associated with the stack if you execute the change set.</p>")
    @as("NotificationARNs")
    notificationARNs: option<notificationARNs>,
    @ocaml.doc("<p>A description of the change set's status. For example, if your attempt to create a
         change set failed, AWS CloudFormation shows the error message.</p>")
    @as("StatusReason")
    statusReason: option<changeSetStatusReason>,
    @ocaml.doc("<p>The current status of the change set, such as <code>CREATE_IN_PROGRESS</code>,
            <code>CREATE_COMPLETE</code>, or <code>FAILED</code>.</p>")
    @as("Status")
    status: option<changeSetStatus>,
    @ocaml.doc("<p>If the change set execution status is <code>AVAILABLE</code>, you can execute the
         change set. If you can’t execute the change set, the status indicates why. For example, a
         change set might be in an <code>UNAVAILABLE</code> state because AWS CloudFormation is
         still creating it or in an <code>OBSOLETE</code> state because the stack was already
         updated.</p>")
    @as("ExecutionStatus")
    executionStatus: option<executionStatus>,
    @ocaml.doc("<p>The start time when the change set was created, in UTC.</p>") @as("CreationTime")
    creationTime: option<creationTime>,
    @ocaml.doc("<p>A list of <code>Parameter</code> structures that describes the input parameters and
         their values used to create the change set. For more information, see the <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html\">Parameter</a> data type.</p>")
    @as("Parameters")
    parameters: option<parameters>,
    @ocaml.doc("<p>Information about the change set.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the stack that is associated with the change set.</p>")
    @as("StackName")
    stackName: option<stackName>,
    @ocaml.doc("<p>The ARN of the stack that is associated with the change set.</p>") @as("StackId")
    stackId: option<stackId>,
    @ocaml.doc("<p>The ARN of the change set.</p>") @as("ChangeSetId")
    changeSetId: option<changeSetId>,
    @ocaml.doc("<p>The name of the change set.</p>") @as("ChangeSetName")
    changeSetName: option<changeSetName>,
  }
  @module("@aws-sdk/client-cloudformation") @new
  external new: request => t = "DescribeChangeSetCommand"
  let make = (~changeSetName, ~nextToken=?, ~stackName=?, ()) =>
    new({nextToken: nextToken, stackName: stackName, changeSetName: changeSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
