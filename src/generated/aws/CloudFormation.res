type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-cloudformation") @new external createClient: unit => awsServiceClient = "CloudFormationClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
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
type timestamp_ = Js.Date.t;
type timeoutMinutes = int
type templateURL = string
type templateStage = [@as("Processed") #Processed | @as("Original") #Original]
type templateDescription = string
type templateBody = string
type tagValue = string
type tagKey = string
type statusMessage = string
type stackStatusReason = string
type stackStatus = [@as("IMPORT_ROLLBACK_COMPLETE") #IMPORT_ROLLBACK_COMPLETE | @as("IMPORT_ROLLBACK_FAILED") #IMPORT_ROLLBACK_FAILED | @as("IMPORT_ROLLBACK_IN_PROGRESS") #IMPORT_ROLLBACK_IN_PROGRESS | @as("IMPORT_COMPLETE") #IMPORT_COMPLETE | @as("IMPORT_IN_PROGRESS") #IMPORT_IN_PROGRESS | @as("REVIEW_IN_PROGRESS") #REVIEW_IN_PROGRESS | @as("UPDATE_ROLLBACK_COMPLETE") #UPDATE_ROLLBACK_COMPLETE | @as("UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS") #UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS | @as("UPDATE_ROLLBACK_FAILED") #UPDATE_ROLLBACK_FAILED | @as("UPDATE_ROLLBACK_IN_PROGRESS") #UPDATE_ROLLBACK_IN_PROGRESS | @as("UPDATE_COMPLETE") #UPDATE_COMPLETE | @as("UPDATE_COMPLETE_CLEANUP_IN_PROGRESS") #UPDATE_COMPLETE_CLEANUP_IN_PROGRESS | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS | @as("DELETE_COMPLETE") #DELETE_COMPLETE | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("ROLLBACK_COMPLETE") #ROLLBACK_COMPLETE | @as("ROLLBACK_FAILED") #ROLLBACK_FAILED | @as("ROLLBACK_IN_PROGRESS") #ROLLBACK_IN_PROGRESS | @as("CREATE_COMPLETE") #CREATE_COMPLETE | @as("CREATE_FAILED") #CREATE_FAILED | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS]
type stackSetStatus = [@as("DELETED") #DELETED | @as("ACTIVE") #ACTIVE]
type stackSetOperationStatus = [@as("QUEUED") #QUEUED | @as("STOPPED") #STOPPED | @as("STOPPING") #STOPPING | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("RUNNING") #RUNNING]
type stackSetOperationResultStatus = [@as("CANCELLED") #CANCELLED | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("RUNNING") #RUNNING | @as("PENDING") #PENDING]
type stackSetOperationAction = [@as("DETECT_DRIFT") #DETECT_DRIFT | @as("DELETE") #DELETE | @as("UPDATE") #UPDATE | @as("CREATE") #CREATE]
type stackSetNameOrId = string
type stackSetName = string
type stackSetId = string
type stackSetDriftStatus = [@as("NOT_CHECKED") #NOT_CHECKED | @as("IN_SYNC") #IN_SYNC | @as("DRIFTED") #DRIFTED]
type stackSetDriftDetectionStatus = [@as("STOPPED") #STOPPED | @as("IN_PROGRESS") #IN_PROGRESS | @as("PARTIAL_SUCCESS") #PARTIAL_SUCCESS | @as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED]
type stackSetARN = string
type stackResourceDriftStatus = [@as("NOT_CHECKED") #NOT_CHECKED | @as("DELETED") #DELETED | @as("MODIFIED") #MODIFIED | @as("IN_SYNC") #IN_SYNC]
type stackPolicyURL = string
type stackPolicyDuringUpdateURL = string
type stackPolicyDuringUpdateBody = string
type stackPolicyBody = string
type stackNameOrId = string
type stackName = string
type stackInstanceStatus = [@as("INOPERABLE") #INOPERABLE | @as("OUTDATED") #OUTDATED | @as("CURRENT") #CURRENT]
type stackInstanceFilterValues = string
type stackInstanceFilterName = [@as("DETAILED_STATUS") #DETAILED_STATUS]
type stackInstanceDetailedStatus = [@as("INOPERABLE") #INOPERABLE | @as("CANCELLED") #CANCELLED | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("RUNNING") #RUNNING | @as("PENDING") #PENDING]
type stackId = string
type stackDriftStatus = [@as("NOT_CHECKED") #NOT_CHECKED | @as("UNKNOWN") #UNKNOWN | @as("IN_SYNC") #IN_SYNC | @as("DRIFTED") #DRIFTED]
type stackDriftDetectionStatusReason = string
type stackDriftDetectionStatus = [@as("DETECTION_COMPLETE") #DETECTION_COMPLETE | @as("DETECTION_FAILED") #DETECTION_FAILED | @as("DETECTION_IN_PROGRESS") #DETECTION_IN_PROGRESS]
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
type resourceStatus = [@as("IMPORT_ROLLBACK_COMPLETE") #IMPORT_ROLLBACK_COMPLETE | @as("IMPORT_ROLLBACK_FAILED") #IMPORT_ROLLBACK_FAILED | @as("IMPORT_ROLLBACK_IN_PROGRESS") #IMPORT_ROLLBACK_IN_PROGRESS | @as("IMPORT_IN_PROGRESS") #IMPORT_IN_PROGRESS | @as("IMPORT_COMPLETE") #IMPORT_COMPLETE | @as("IMPORT_FAILED") #IMPORT_FAILED | @as("UPDATE_COMPLETE") #UPDATE_COMPLETE | @as("UPDATE_FAILED") #UPDATE_FAILED | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS | @as("DELETE_SKIPPED") #DELETE_SKIPPED | @as("DELETE_COMPLETE") #DELETE_COMPLETE | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("CREATE_COMPLETE") #CREATE_COMPLETE | @as("CREATE_FAILED") #CREATE_FAILED | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS]
type resourceSignalUniqueId = string
type resourceSignalStatus = [@as("FAILURE") #FAILURE | @as("SUCCESS") #SUCCESS]
type resourceProperties = string
type resourceModel = string
type resourceIdentifierPropertyValue = string
type resourceIdentifierPropertyKey = string
type resourceAttribute = [@as("Tags") #Tags | @as("DeletionPolicy") #DeletionPolicy | @as("UpdatePolicy") #UpdatePolicy | @as("CreationPolicy") #CreationPolicy | @as("Metadata") #Metadata | @as("Properties") #Properties]
type requiresRecreation = [@as("Always") #Always | @as("Conditionally") #Conditionally | @as("Never") #Never]
type requestToken = string
type replacement = [@as("Conditional") #Conditional | @as("False") #False | @as("True") #True]
type registryType = [@as("MODULE") #MODULE | @as("RESOURCE") #RESOURCE]
type registrationToken = string
type registrationStatus = [@as("FAILED") #FAILED | @as("IN_PROGRESS") #IN_PROGRESS | @as("COMPLETE") #COMPLETE]
type regionConcurrencyType = [@as("PARALLEL") #PARALLEL | @as("SEQUENTIAL") #SEQUENTIAL]
type region = string
type reason = string
type provisioningType = [@as("FULLY_MUTABLE") #FULLY_MUTABLE | @as("IMMUTABLE") #IMMUTABLE | @as("NON_PROVISIONABLE") #NON_PROVISIONABLE]
type propertyValue = string
type propertyPath = string
type propertyName = string
type properties = string
type privateTypeArn = string
type physicalResourceId = string
type permissionModels = [@as("SELF_MANAGED") #SELF_MANAGED | @as("SERVICE_MANAGED") #SERVICE_MANAGED]
type parameterValue = string
type parameterType = string
type parameterKey = string
type outputValue = string
type outputKey = string
type organizationalUnitId = string
type optionalSecureUrl = string
type operationStatus = [@as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS | @as("IN_PROGRESS") #IN_PROGRESS | @as("PENDING") #PENDING]
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
type lastUpdatedTime = Js.Date.t;
type key = string
type isDefaultVersion = bool
type includeNestedStacks = bool
type inSyncStackInstancesCount = int
type inProgressStackInstancesCount = int
type handlerErrorCode = [@as("InternalFailure") #InternalFailure | @as("NetworkFailure") #NetworkFailure | @as("ServiceInternalError") #ServiceInternalError | @as("GeneralServiceException") #GeneralServiceException | @as("NotStabilized") #NotStabilized | @as("ServiceLimitExceeded") #ServiceLimitExceeded | @as("Throttling") #Throttling | @as("ResourceConflict") #ResourceConflict | @as("NotFound") #NotFound | @as("AlreadyExists") #AlreadyExists | @as("InvalidCredentials") #InvalidCredentials | @as("AccessDenied") #AccessDenied | @as("InvalidRequest") #InvalidRequest | @as("NotUpdatable") #NotUpdatable]
type failureTolerancePercentage = int
type failureToleranceCount = int
type failedStackInstancesCount = int
type exportValue = string
type exportName = string
type executionStatus = [@as("OBSOLETE") #OBSOLETE | @as("EXECUTE_FAILED") #EXECUTE_FAILED | @as("EXECUTE_COMPLETE") #EXECUTE_COMPLETE | @as("EXECUTE_IN_PROGRESS") #EXECUTE_IN_PROGRESS | @as("AVAILABLE") #AVAILABLE | @as("UNAVAILABLE") #UNAVAILABLE]
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
type deletionTime = Js.Date.t;
type creationTime = Js.Date.t;
type clientToken = string
type clientRequestToken = string
type changeType = [@as("Resource") #Resource]
type changeSource = [@as("Automatic") #Automatic | @as("DirectModification") #DirectModification | @as("ResourceAttribute") #ResourceAttribute | @as("ParameterReference") #ParameterReference | @as("ResourceReference") #ResourceReference]
type changeSetType = [@as("IMPORT") #IMPORT | @as("UPDATE") #UPDATE | @as("CREATE") #CREATE]
type changeSetStatusReason = string
type changeSetStatus = [@as("FAILED") #FAILED | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETE_COMPLETE") #DELETE_COMPLETE | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("DELETE_PENDING") #DELETE_PENDING | @as("CREATE_COMPLETE") #CREATE_COMPLETE | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS | @as("CREATE_PENDING") #CREATE_PENDING]
type changeSetNameOrId = string
type changeSetName = string
type changeSetId = string
type changeAction = [@as("Dynamic") #Dynamic | @as("Import") #Import | @as("Remove") #Remove | @as("Modify") #Modify | @as("Add") #Add]
type causingEntity = string
type capability = [@as("CAPABILITY_AUTO_EXPAND") #CAPABILITY_AUTO_EXPAND | @as("CAPABILITY_NAMED_IAM") #CAPABILITY_NAMED_IAM | @as("CAPABILITY_IAM") #CAPABILITY_IAM]
type capabilitiesReason = string
type callAs = [@as("DELEGATED_ADMIN") #DELEGATED_ADMIN | @as("SELF") #SELF]
type boxedMaxResults = int
type boxedInteger = int
type autoDeploymentNullable = bool
type arn = string
type allowedValue = string
type accountsUrl = string
type accountGateStatusReason = string
type accountGateStatus = [@as("SKIPPED") #SKIPPED | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED]
type account = string
type typeVersionSummary = {
@as("Description") description: option<description>,
  @as("TimeCreated") timeCreated: option<timestamp_>,
  @as("Arn") arn: option<typeArn>,
  @as("IsDefaultVersion") isDefaultVersion: option<isDefaultVersion>,
  @as("VersionId") versionId: option<typeVersionId>,
  @as("TypeName") typeName: option<typeName>,
  @as("Type") type_: option<registryType>
}
type typeSummary = {
@as("Description") description: option<description>,
  @as("LastUpdated") lastUpdated: option<timestamp_>,
  @as("TypeArn") typeArn: option<typeArn>,
  @as("DefaultVersionId") defaultVersionId: option<typeVersionId>,
  @as("TypeName") typeName: option<typeName>,
  @as("Type") type_: option<registryType>
}
type transformsList = array<transformName>
type templateParameter = {
@as("Description") description: option<description>,
  @as("NoEcho") noEcho: option<noEcho>,
  @as("DefaultValue") defaultValue: option<parameterValue>,
  @as("ParameterKey") parameterKey: option<parameterKey>
}
type tag = {
@as("Value") value: tagValue,
  @as("Key") key: tagKey
}
type stageList = array<templateStage>
type stackStatusFilter = array<stackStatus>
type stackSetOperationSummary = {
@as("EndTimestamp") endTimestamp: option<timestamp_>,
  @as("CreationTimestamp") creationTimestamp: option<timestamp_>,
  @as("Status") status: option<stackSetOperationStatus>,
  @as("Action") action: option<stackSetOperationAction>,
  @as("OperationId") operationId: option<clientRequestToken>
}
type stackSetDriftDetectionDetails = {
@as("FailedStackInstancesCount") failedStackInstancesCount: option<failedStackInstancesCount>,
  @as("InProgressStackInstancesCount") inProgressStackInstancesCount: option<inProgressStackInstancesCount>,
  @as("InSyncStackInstancesCount") inSyncStackInstancesCount: option<inSyncStackInstancesCount>,
  @as("DriftedStackInstancesCount") driftedStackInstancesCount: option<driftedStackInstancesCount>,
  @as("TotalStackInstancesCount") totalStackInstancesCount: option<totalStackInstancesCount>,
  @as("LastDriftCheckTimestamp") lastDriftCheckTimestamp: option<timestamp_>,
  @as("DriftDetectionStatus") driftDetectionStatus: option<stackSetDriftDetectionStatus>,
  @as("DriftStatus") driftStatus: option<stackSetDriftStatus>
}
type stackResourceDriftStatusFilters = array<stackResourceDriftStatus>
type stackResourceDriftInformationSummary = {
@as("LastCheckTimestamp") lastCheckTimestamp: option<timestamp_>,
  @as("StackResourceDriftStatus") stackResourceDriftStatus: stackResourceDriftStatus
}
type stackResourceDriftInformation = {
@as("LastCheckTimestamp") lastCheckTimestamp: option<timestamp_>,
  @as("StackResourceDriftStatus") stackResourceDriftStatus: stackResourceDriftStatus
}
type stackInstanceFilter = {
@as("Values") values: option<stackInstanceFilterValues>,
  @as("Name") name: option<stackInstanceFilterName>
}
type stackInstanceComprehensiveStatus = {
@as("DetailedStatus") detailedStatus: option<stackInstanceDetailedStatus>
}
type stackEvent = {
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  @as("ResourceProperties") resourceProperties: option<resourceProperties>,
  @as("ResourceStatusReason") resourceStatusReason: option<resourceStatusReason>,
  @as("ResourceStatus") resourceStatus: option<resourceStatus>,
  @as("Timestamp") timestamp_: timestamp_,
  @as("ResourceType") resourceType: option<resourceType>,
  @as("PhysicalResourceId") physicalResourceId: option<physicalResourceId>,
  @as("LogicalResourceId") logicalResourceId: option<logicalResourceId>,
  @as("StackName") stackName: stackName,
  @as("EventId") eventId: eventId,
  @as("StackId") stackId: stackId
}
type stackDriftInformationSummary = {
@as("LastCheckTimestamp") lastCheckTimestamp: option<timestamp_>,
  @as("StackDriftStatus") stackDriftStatus: stackDriftStatus
}
type stackDriftInformation = {
@as("LastCheckTimestamp") lastCheckTimestamp: option<timestamp_>,
  @as("StackDriftStatus") stackDriftStatus: stackDriftStatus
}
type scope = array<resourceAttribute>
type rollbackTrigger = {
@as("Type") type_: type_,
  @as("Arn") arn: arn
}
type retainResources = array<logicalResourceId>
type resourcesToSkip = array<resourceToSkip>
type resourceTypes = array<resourceType>
type resourceTargetDefinition = {
@as("RequiresRecreation") requiresRecreation: option<requiresRecreation>,
  @as("Name") name: option<propertyName>,
  @as("Attribute") attribute: option<resourceAttribute>
}
type resourceIdentifiers = array<resourceIdentifierPropertyKey>
type resourceIdentifierProperties = Js.Dict.t<resourceIdentifierPropertyValue>
type registrationTokenList = array<registrationToken>
type regionList = array<region>
type propertyDifference = {
@as("DifferenceType") differenceType: differenceType,
  @as("ActualValue") actualValue: propertyValue,
  @as("ExpectedValue") expectedValue: propertyValue,
  @as("PropertyPath") propertyPath: propertyPath
}
type physicalResourceIdContextKeyValuePair = {
@as("Value") value: value,
  @as("Key") key: key
}
type parameter = {
@as("ResolvedValue") resolvedValue: option<parameterValue>,
  @as("UsePreviousValue") usePreviousValue: option<usePreviousValue>,
  @as("ParameterValue") parameterValue: option<parameterValue>,
  @as("ParameterKey") parameterKey: option<parameterKey>
}
type output = {
@as("ExportName") exportName: option<exportName>,
  @as("Description") description: option<description>,
  @as("OutputValue") outputValue: option<outputValue>,
  @as("OutputKey") outputKey: option<outputKey>
}
type organizationalUnitIdList = array<organizationalUnitId>
type notificationARNs = array<notificationARN>
type moduleInfo = {
@as("LogicalIdHierarchy") logicalIdHierarchy: option<logicalIdHierarchy>,
  @as("TypeHierarchy") typeHierarchy: option<typeHierarchy>
}
type logicalResourceIds = array<logicalResourceId>
type loggingConfig = {
@as("LogGroupName") logGroupName: logGroupName,
  @as("LogRoleArn") logRoleArn: roleARN2
}
type imports = array<stackName>
type export_ = {
@as("Value") value: option<exportValue>,
  @as("Name") name: option<exportName>,
  @as("ExportingStackId") exportingStackId: option<stackId>
}
type changeSetSummary = {
@as("RootChangeSetId") rootChangeSetId: option<changeSetId>,
  @as("ParentChangeSetId") parentChangeSetId: option<changeSetId>,
  @as("IncludeNestedStacks") includeNestedStacks: option<includeNestedStacks>,
  @as("Description") description: option<description>,
  @as("CreationTime") creationTime: option<creationTime>,
  @as("StatusReason") statusReason: option<changeSetStatusReason>,
  @as("Status") status: option<changeSetStatus>,
  @as("ExecutionStatus") executionStatus: option<executionStatus>,
  @as("ChangeSetName") changeSetName: option<changeSetName>,
  @as("ChangeSetId") changeSetId: option<changeSetId>,
  @as("StackName") stackName: option<stackName>,
  @as("StackId") stackId: option<stackId>
}
type capabilities = array<capability>
type autoDeployment = {
@as("RetainStacksOnAccountRemoval") retainStacksOnAccountRemoval: option<retainStacksOnAccountRemovalNullable>,
  @as("Enabled") enabled: option<autoDeploymentNullable>
}
type allowedValues = array<allowedValue>
type accountList = array<account>
type accountLimit = {
@as("Value") value: option<limitValue>,
  @as("Name") name: option<limitName>
}
type accountGateResult = {
@as("StatusReason") statusReason: option<accountGateStatusReason>,
  @as("Status") status: option<accountGateStatus>
}
type typeVersionSummaries = array<typeVersionSummary>
type typeSummaries = array<typeSummary>
type templateParameters = array<templateParameter>
type tags = array<tag>
type stackSummary = {
@as("DriftInformation") driftInformation: option<stackDriftInformationSummary>,
  @as("RootId") rootId: option<stackId>,
  @as("ParentId") parentId: option<stackId>,
  @as("StackStatusReason") stackStatusReason: option<stackStatusReason>,
  @as("StackStatus") stackStatus: stackStatus,
  @as("DeletionTime") deletionTime: option<deletionTime>,
  @as("LastUpdatedTime") lastUpdatedTime: option<lastUpdatedTime>,
  @as("CreationTime") creationTime: creationTime,
  @as("TemplateDescription") templateDescription: option<templateDescription>,
  @as("StackName") stackName: stackName,
  @as("StackId") stackId: option<stackId>
}
type stackSetSummary = {
@as("LastDriftCheckTimestamp") lastDriftCheckTimestamp: option<timestamp_>,
  @as("DriftStatus") driftStatus: option<stackDriftStatus>,
  @as("PermissionModel") permissionModel: option<permissionModels>,
  @as("AutoDeployment") autoDeployment: option<autoDeployment>,
  @as("Status") status: option<stackSetStatus>,
  @as("Description") description: option<description>,
  @as("StackSetId") stackSetId: option<stackSetId>,
  @as("StackSetName") stackSetName: option<stackSetName>
}
type stackSetOperationSummaries = array<stackSetOperationSummary>
type stackSetOperationResultSummary = {
@as("OrganizationalUnitId") organizationalUnitId: option<organizationalUnitId>,
  @as("AccountGateResult") accountGateResult: option<accountGateResult>,
  @as("StatusReason") statusReason: option<reason>,
  @as("Status") status: option<stackSetOperationResultStatus>,
  @as("Region") region: option<region>,
  @as("Account") account: option<account>
}
type stackSetOperationPreferences = {
@as("MaxConcurrentPercentage") maxConcurrentPercentage: option<maxConcurrentPercentage>,
  @as("MaxConcurrentCount") maxConcurrentCount: option<maxConcurrentCount>,
  @as("FailureTolerancePercentage") failureTolerancePercentage: option<failureTolerancePercentage>,
  @as("FailureToleranceCount") failureToleranceCount: option<failureToleranceCount>,
  @as("RegionOrder") regionOrder: option<regionList>,
  @as("RegionConcurrencyType") regionConcurrencyType: option<regionConcurrencyType>
}
type stackResourceSummary = {
@as("ModuleInfo") moduleInfo: option<moduleInfo>,
  @as("DriftInformation") driftInformation: option<stackResourceDriftInformationSummary>,
  @as("ResourceStatusReason") resourceStatusReason: option<resourceStatusReason>,
  @as("ResourceStatus") resourceStatus: resourceStatus,
  @as("LastUpdatedTimestamp") lastUpdatedTimestamp: timestamp_,
  @as("ResourceType") resourceType: resourceType,
  @as("PhysicalResourceId") physicalResourceId: option<physicalResourceId>,
  @as("LogicalResourceId") logicalResourceId: logicalResourceId
}
type stackResourceDetail = {
@as("ModuleInfo") moduleInfo: option<moduleInfo>,
  @as("DriftInformation") driftInformation: option<stackResourceDriftInformation>,
  @as("Metadata") metadata: option<metadata>,
  @as("Description") description: option<description>,
  @as("ResourceStatusReason") resourceStatusReason: option<resourceStatusReason>,
  @as("ResourceStatus") resourceStatus: resourceStatus,
  @as("LastUpdatedTimestamp") lastUpdatedTimestamp: timestamp_,
  @as("ResourceType") resourceType: resourceType,
  @as("PhysicalResourceId") physicalResourceId: option<physicalResourceId>,
  @as("LogicalResourceId") logicalResourceId: logicalResourceId,
  @as("StackId") stackId: option<stackId>,
  @as("StackName") stackName: option<stackName>
}
type stackResource = {
@as("ModuleInfo") moduleInfo: option<moduleInfo>,
  @as("DriftInformation") driftInformation: option<stackResourceDriftInformation>,
  @as("Description") description: option<description>,
  @as("ResourceStatusReason") resourceStatusReason: option<resourceStatusReason>,
  @as("ResourceStatus") resourceStatus: resourceStatus,
  @as("Timestamp") timestamp_: timestamp_,
  @as("ResourceType") resourceType: resourceType,
  @as("PhysicalResourceId") physicalResourceId: option<physicalResourceId>,
  @as("LogicalResourceId") logicalResourceId: logicalResourceId,
  @as("StackId") stackId: option<stackId>,
  @as("StackName") stackName: option<stackName>
}
type stackInstanceSummary = {
@as("LastDriftCheckTimestamp") lastDriftCheckTimestamp: option<timestamp_>,
  @as("DriftStatus") driftStatus: option<stackDriftStatus>,
  @as("OrganizationalUnitId") organizationalUnitId: option<organizationalUnitId>,
  @as("StackInstanceStatus") stackInstanceStatus: option<stackInstanceComprehensiveStatus>,
  @as("StatusReason") statusReason: option<reason>,
  @as("Status") status: option<stackInstanceStatus>,
  @as("StackId") stackId: option<stackId>,
  @as("Account") account: option<account>,
  @as("Region") region: option<region>,
  @as("StackSetId") stackSetId: option<stackSetId>
}
type stackInstanceFilters = array<stackInstanceFilter>
type stackEvents = array<stackEvent>
type rollbackTriggers = array<rollbackTrigger>
type resourceToImport = {
@as("ResourceIdentifier") resourceIdentifier: resourceIdentifierProperties,
  @as("LogicalResourceId") logicalResourceId: logicalResourceId,
  @as("ResourceType") resourceType: resourceType
}
type resourceIdentifierSummary = {
@as("ResourceIdentifiers") resourceIdentifiers: option<resourceIdentifiers>,
  @as("LogicalResourceIds") logicalResourceIds: option<logicalResourceIds>,
  @as("ResourceType") resourceType: option<resourceType>
}
type resourceChangeDetail = {
@as("CausingEntity") causingEntity: option<causingEntity>,
  @as("ChangeSource") changeSource: option<changeSource>,
  @as("Evaluation") evaluation: option<evaluationType>,
  @as("Target") target: option<resourceTargetDefinition>
}
type propertyDifferences = array<propertyDifference>
type physicalResourceIdContext = array<physicalResourceIdContextKeyValuePair>
type parameters = array<parameter>
type parameterConstraints = {
@as("AllowedValues") allowedValues: option<allowedValues>
}
type outputs = array<output>
type exports = array<export_>
type deploymentTargets = {
@as("OrganizationalUnitIds") organizationalUnitIds: option<organizationalUnitIdList>,
  @as("AccountsUrl") accountsUrl: option<accountsUrl>,
  @as("Accounts") accounts: option<accountList>
}
type changeSetSummaries = array<changeSetSummary>
type accountLimitList = array<accountLimit>
type stackSummaries = array<stackSummary>
type stackSetSummaries = array<stackSetSummary>
type stackSetOperationResultSummaries = array<stackSetOperationResultSummary>
type stackSetOperation = {
@as("StackSetDriftDetectionDetails") stackSetDriftDetectionDetails: option<stackSetDriftDetectionDetails>,
  @as("DeploymentTargets") deploymentTargets: option<deploymentTargets>,
  @as("EndTimestamp") endTimestamp: option<timestamp_>,
  @as("CreationTimestamp") creationTimestamp: option<timestamp_>,
  @as("ExecutionRoleName") executionRoleName: option<executionRoleName>,
  @as("AdministrationRoleARN") administrationRoleARN: option<roleARN>,
  @as("RetainStacks") retainStacks: option<retainStacksNullable>,
  @as("OperationPreferences") operationPreferences: option<stackSetOperationPreferences>,
  @as("Status") status: option<stackSetOperationStatus>,
  @as("Action") action: option<stackSetOperationAction>,
  @as("StackSetId") stackSetId: option<stackSetId>,
  @as("OperationId") operationId: option<clientRequestToken>
}
type stackSet = {
@as("OrganizationalUnitIds") organizationalUnitIds: option<organizationalUnitIdList>,
  @as("PermissionModel") permissionModel: option<permissionModels>,
  @as("AutoDeployment") autoDeployment: option<autoDeployment>,
  @as("StackSetDriftDetectionDetails") stackSetDriftDetectionDetails: option<stackSetDriftDetectionDetails>,
  @as("ExecutionRoleName") executionRoleName: option<executionRoleName>,
  @as("AdministrationRoleARN") administrationRoleARN: option<roleARN>,
  @as("StackSetARN") stackSetARN: option<stackSetARN>,
  @as("Tags") tags: option<tags>,
  @as("Capabilities") capabilities: option<capabilities>,
  @as("Parameters") parameters: option<parameters>,
  @as("TemplateBody") templateBody: option<templateBody>,
  @as("Status") status: option<stackSetStatus>,
  @as("Description") description: option<description>,
  @as("StackSetId") stackSetId: option<stackSetId>,
  @as("StackSetName") stackSetName: option<stackSetName>
}
type stackResources = array<stackResource>
type stackResourceSummaries = array<stackResourceSummary>
type stackResourceDrift = {
@as("ModuleInfo") moduleInfo: option<moduleInfo>,
  @as("Timestamp") timestamp_: timestamp_,
  @as("StackResourceDriftStatus") stackResourceDriftStatus: stackResourceDriftStatus,
  @as("PropertyDifferences") propertyDifferences: option<propertyDifferences>,
  @as("ActualProperties") actualProperties: option<properties>,
  @as("ExpectedProperties") expectedProperties: option<properties>,
  @as("ResourceType") resourceType: resourceType,
  @as("PhysicalResourceIdContext") physicalResourceIdContext: option<physicalResourceIdContext>,
  @as("PhysicalResourceId") physicalResourceId: option<physicalResourceId>,
  @as("LogicalResourceId") logicalResourceId: logicalResourceId,
  @as("StackId") stackId: stackId
}
type stackInstanceSummaries = array<stackInstanceSummary>
type stackInstance = {
@as("LastDriftCheckTimestamp") lastDriftCheckTimestamp: option<timestamp_>,
  @as("DriftStatus") driftStatus: option<stackDriftStatus>,
  @as("OrganizationalUnitId") organizationalUnitId: option<organizationalUnitId>,
  @as("StatusReason") statusReason: option<reason>,
  @as("StackInstanceStatus") stackInstanceStatus: option<stackInstanceComprehensiveStatus>,
  @as("Status") status: option<stackInstanceStatus>,
  @as("ParameterOverrides") parameterOverrides: option<parameters>,
  @as("StackId") stackId: option<stackId>,
  @as("Account") account: option<account>,
  @as("Region") region: option<region>,
  @as("StackSetId") stackSetId: option<stackSetId>
}
type rollbackConfiguration = {
@as("MonitoringTimeInMinutes") monitoringTimeInMinutes: option<monitoringTimeInMinutes>,
  @as("RollbackTriggers") rollbackTriggers: option<rollbackTriggers>
}
type resourcesToImport = array<resourceToImport>
type resourceIdentifierSummaries = array<resourceIdentifierSummary>
type resourceChangeDetails = array<resourceChangeDetail>
type parameterDeclaration = {
@as("ParameterConstraints") parameterConstraints: option<parameterConstraints>,
  @as("Description") description: option<description>,
  @as("NoEcho") noEcho: option<noEcho>,
  @as("ParameterType") parameterType: option<parameterType>,
  @as("DefaultValue") defaultValue: option<parameterValue>,
  @as("ParameterKey") parameterKey: option<parameterKey>
}
type stackResourceDrifts = array<stackResourceDrift>
type stack = {
@as("DriftInformation") driftInformation: option<stackDriftInformation>,
  @as("RootId") rootId: option<stackId>,
  @as("ParentId") parentId: option<stackId>,
  @as("EnableTerminationProtection") enableTerminationProtection: option<enableTerminationProtection>,
  @as("Tags") tags: option<tags>,
  @as("RoleARN") roleARN: option<roleARN>,
  @as("Outputs") outputs: option<outputs>,
  @as("Capabilities") capabilities: option<capabilities>,
  @as("TimeoutInMinutes") timeoutInMinutes: option<timeoutMinutes>,
  @as("NotificationARNs") notificationARNs: option<notificationARNs>,
  @as("DisableRollback") disableRollback: option<disableRollback>,
  @as("StackStatusReason") stackStatusReason: option<stackStatusReason>,
  @as("StackStatus") stackStatus: stackStatus,
  @as("RollbackConfiguration") rollbackConfiguration: option<rollbackConfiguration>,
  @as("LastUpdatedTime") lastUpdatedTime: option<lastUpdatedTime>,
  @as("DeletionTime") deletionTime: option<deletionTime>,
  @as("CreationTime") creationTime: creationTime,
  @as("Parameters") parameters: option<parameters>,
  @as("Description") description: option<description>,
  @as("ChangeSetId") changeSetId: option<changeSetId>,
  @as("StackName") stackName: stackName,
  @as("StackId") stackId: option<stackId>
}
type resourceChange = {
@as("ModuleInfo") moduleInfo: option<moduleInfo>,
  @as("ChangeSetId") changeSetId: option<changeSetId>,
  @as("Details") details: option<resourceChangeDetails>,
  @as("Scope") scope: option<scope>,
  @as("Replacement") replacement: option<replacement>,
  @as("ResourceType") resourceType: option<resourceType>,
  @as("PhysicalResourceId") physicalResourceId: option<physicalResourceId>,
  @as("LogicalResourceId") logicalResourceId: option<logicalResourceId>,
  @as("Action") action: option<changeAction>
}
type parameterDeclarations = array<parameterDeclaration>
type stacks = array<stack>
type change = {
@as("ResourceChange") resourceChange: option<resourceChange>,
  @as("Type") type_: option<changeType>
}
type changes = array<change>

module UpdateTerminationProtection = {
  type t;
  type request = {
@as("StackName") stackName: stackNameOrId,
  @as("EnableTerminationProtection") enableTerminationProtection: enableTerminationProtection
}
  type response = {
@as("StackId") stackId: option<stackId>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "UpdateTerminationProtectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopStackSetOperation = {
  type t;
  type request = {
@as("CallAs") callAs: option<callAs>,
  @as("OperationId") operationId: clientRequestToken,
  @as("StackSetName") stackSetName: stackSetName
}
  type response = unit
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "StopStackSetOperationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SignalResource = {
  type t;
  type request = {
@as("Status") status: resourceSignalStatus,
  @as("UniqueId") uniqueId: resourceSignalUniqueId,
  @as("LogicalResourceId") logicalResourceId: logicalResourceId,
  @as("StackName") stackName: stackNameOrId
}
  
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "SignalResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module SetTypeDefaultVersion = {
  type t;
  type request = {
@as("VersionId") versionId: option<typeVersionId>,
  @as("TypeName") typeName: option<typeName>,
  @as("Type") type_: option<registryType>,
  @as("Arn") arn: option<privateTypeArn>
}
  type response = unit
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "SetTypeDefaultVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetStackPolicy = {
  type t;
  type request = {
@as("StackPolicyURL") stackPolicyURL: option<stackPolicyURL>,
  @as("StackPolicyBody") stackPolicyBody: option<stackPolicyBody>,
  @as("StackName") stackName: stackName
}
  
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "SetStackPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RecordHandlerProgress = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  @as("ResourceModel") resourceModel: option<resourceModel>,
  @as("ErrorCode") errorCode: option<handlerErrorCode>,
  @as("StatusMessage") statusMessage: option<statusMessage>,
  @as("CurrentOperationStatus") currentOperationStatus: option<operationStatus>,
  @as("OperationStatus") operationStatus: operationStatus,
  @as("BearerToken") bearerToken: clientToken
}
  type response = unit
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "RecordHandlerProgressCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetStackPolicy = {
  type t;
  type request = {
@as("StackName") stackName: stackName
}
  type response = {
@as("StackPolicyBody") stackPolicyBody: option<stackPolicyBody>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "GetStackPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ExecuteChangeSet = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  @as("StackName") stackName: option<stackNameOrId>,
  @as("ChangeSetName") changeSetName: changeSetNameOrId
}
  type response = unit
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "ExecuteChangeSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTypeRegistration = {
  type t;
  type request = {
@as("RegistrationToken") registrationToken: registrationToken
}
  type response = {
@as("TypeVersionArn") typeVersionArn: option<typeArn>,
  @as("TypeArn") typeArn: option<typeArn>,
  @as("Description") description: option<description>,
  @as("ProgressStatus") progressStatus: option<registrationStatus>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DescribeTypeRegistrationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStackDriftDetectionStatus = {
  type t;
  type request = {
@as("StackDriftDetectionId") stackDriftDetectionId: stackDriftDetectionId
}
  type response = {
@as("Timestamp") timestamp_: timestamp_,
  @as("DriftedStackResourceCount") driftedStackResourceCount: option<boxedInteger>,
  @as("DetectionStatusReason") detectionStatusReason: option<stackDriftDetectionStatusReason>,
  @as("DetectionStatus") detectionStatus: stackDriftDetectionStatus,
  @as("StackDriftStatus") stackDriftStatus: option<stackDriftStatus>,
  @as("StackDriftDetectionId") stackDriftDetectionId: stackDriftDetectionId,
  @as("StackId") stackId: stackId
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DescribeStackDriftDetectionStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeregisterType = {
  type t;
  type request = {
@as("VersionId") versionId: option<typeVersionId>,
  @as("TypeName") typeName: option<typeName>,
  @as("Type") type_: option<registryType>,
  @as("Arn") arn: option<privateTypeArn>
}
  type response = unit
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DeregisterTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteStackSet = {
  type t;
  type request = {
@as("CallAs") callAs: option<callAs>,
  @as("StackSetName") stackSetName: stackSetName
}
  type response = unit
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DeleteStackSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteChangeSet = {
  type t;
  type request = {
@as("StackName") stackName: option<stackNameOrId>,
  @as("ChangeSetName") changeSetName: changeSetNameOrId
}
  type response = unit
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DeleteChangeSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelUpdateStack = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  @as("StackName") stackName: stackName
}
  
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "CancelUpdateStackCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RegisterType = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: option<requestToken>,
  @as("ExecutionRoleArn") executionRoleArn: option<roleARN2>,
  @as("LoggingConfig") loggingConfig: option<loggingConfig>,
  @as("SchemaHandlerPackage") schemaHandlerPackage: s3Url,
  @as("TypeName") typeName: typeName,
  @as("Type") type_: option<registryType>
}
  type response = {
@as("RegistrationToken") registrationToken: option<registrationToken>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "RegisterTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTypeRegistrations = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("RegistrationStatusFilter") registrationStatusFilter: option<registrationStatus>,
  @as("TypeArn") typeArn: option<typeArn>,
  @as("TypeName") typeName: option<typeName>,
  @as("Type") type_: option<registryType>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("RegistrationTokenList") registrationTokenList: option<registrationTokenList>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "ListTypeRegistrationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListImports = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("ExportName") exportName: exportName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Imports") imports: option<imports>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "ListImportsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTemplate = {
  type t;
  type request = {
@as("TemplateStage") templateStage: option<templateStage>,
  @as("ChangeSetName") changeSetName: option<changeSetNameOrId>,
  @as("StackName") stackName: option<stackName>
}
  type response = {
@as("StagesAvailable") stagesAvailable: option<stageList>,
  @as("TemplateBody") templateBody: option<templateBody>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "GetTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetectStackDrift = {
  type t;
  type request = {
@as("LogicalResourceIds") logicalResourceIds: option<logicalResourceIds>,
  @as("StackName") stackName: stackNameOrId
}
  type response = {
@as("StackDriftDetectionId") stackDriftDetectionId: stackDriftDetectionId
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DetectStackDriftCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeType = {
  type t;
  type request = {
@as("VersionId") versionId: option<typeVersionId>,
  @as("Arn") arn: option<typeArn>,
  @as("TypeName") typeName: option<typeName>,
  @as("Type") type_: option<registryType>
}
  type response = {
@as("TimeCreated") timeCreated: option<timestamp_>,
  @as("LastUpdated") lastUpdated: option<timestamp_>,
  @as("DocumentationUrl") documentationUrl: option<optionalSecureUrl>,
  @as("SourceUrl") sourceUrl: option<optionalSecureUrl>,
  @as("Visibility") visibility: option<visibility>,
  @as("ExecutionRoleArn") executionRoleArn: option<roleARN2>,
  @as("LoggingConfig") loggingConfig: option<loggingConfig>,
  @as("DeprecatedStatus") deprecatedStatus: option<deprecatedStatus>,
  @as("ProvisioningType") provisioningType: option<provisioningType>,
  @as("Schema") schema: option<typeSchema>,
  @as("Description") description: option<description>,
  @as("IsDefaultVersion") isDefaultVersion: option<isDefaultVersion>,
  @as("DefaultVersionId") defaultVersionId: option<typeVersionId>,
  @as("TypeName") typeName: option<typeName>,
  @as("Type") type_: option<registryType>,
  @as("Arn") arn: option<typeArn>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DescribeTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteStack = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  @as("RoleARN") roleARN: option<roleARN>,
  @as("RetainResources") retainResources: option<retainResources>,
  @as("StackName") stackName: stackName
}
  
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DeleteStackCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ContinueUpdateRollback = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  @as("ResourcesToSkip") resourcesToSkip: option<resourcesToSkip>,
  @as("RoleARN") roleARN: option<roleARN>,
  @as("StackName") stackName: stackNameOrId
}
  type response = unit
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "ContinueUpdateRollbackCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ValidateTemplate = {
  type t;
  type request = {
@as("TemplateURL") templateURL: option<templateURL>,
  @as("TemplateBody") templateBody: option<templateBody>
}
  type response = {
@as("DeclaredTransforms") declaredTransforms: option<transformsList>,
  @as("CapabilitiesReason") capabilitiesReason: option<capabilitiesReason>,
  @as("Capabilities") capabilities: option<capabilities>,
  @as("Description") description: option<description>,
  @as("Parameters") parameters: option<templateParameters>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "ValidateTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateStackSet = {
  type t;
  type request = {
@as("CallAs") callAs: option<callAs>,
  @as("Regions") regions: option<regionList>,
  @as("Accounts") accounts: option<accountList>,
  @as("OperationId") operationId: option<clientRequestToken>,
  @as("AutoDeployment") autoDeployment: option<autoDeployment>,
  @as("PermissionModel") permissionModel: option<permissionModels>,
  @as("DeploymentTargets") deploymentTargets: option<deploymentTargets>,
  @as("ExecutionRoleName") executionRoleName: option<executionRoleName>,
  @as("AdministrationRoleARN") administrationRoleARN: option<roleARN>,
  @as("OperationPreferences") operationPreferences: option<stackSetOperationPreferences>,
  @as("Tags") tags: option<tags>,
  @as("Capabilities") capabilities: option<capabilities>,
  @as("Parameters") parameters: option<parameters>,
  @as("UsePreviousTemplate") usePreviousTemplate: option<usePreviousTemplate>,
  @as("TemplateURL") templateURL: option<templateURL>,
  @as("TemplateBody") templateBody: option<templateBody>,
  @as("Description") description: option<description>,
  @as("StackSetName") stackSetName: stackSetName
}
  type response = {
@as("OperationId") operationId: option<clientRequestToken>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "UpdateStackSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateStackInstances = {
  type t;
  type request = {
@as("CallAs") callAs: option<callAs>,
  @as("OperationId") operationId: option<clientRequestToken>,
  @as("OperationPreferences") operationPreferences: option<stackSetOperationPreferences>,
  @as("ParameterOverrides") parameterOverrides: option<parameters>,
  @as("Regions") regions: regionList,
  @as("DeploymentTargets") deploymentTargets: option<deploymentTargets>,
  @as("Accounts") accounts: option<accountList>,
  @as("StackSetName") stackSetName: stackSetNameOrId
}
  type response = {
@as("OperationId") operationId: option<clientRequestToken>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "UpdateStackInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTypes = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("Type") type_: option<registryType>,
  @as("DeprecatedStatus") deprecatedStatus: option<deprecatedStatus>,
  @as("ProvisioningType") provisioningType: option<provisioningType>,
  @as("Visibility") visibility: option<visibility>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("TypeSummaries") typeSummaries: option<typeSummaries>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "ListTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTypeVersions = {
  type t;
  type request = {
@as("DeprecatedStatus") deprecatedStatus: option<deprecatedStatus>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("Arn") arn: option<privateTypeArn>,
  @as("TypeName") typeName: option<typeName>,
  @as("Type") type_: option<registryType>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("TypeVersionSummaries") typeVersionSummaries: option<typeVersionSummaries>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "ListTypeVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStackSetOperations = {
  type t;
  type request = {
@as("CallAs") callAs: option<callAs>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("StackSetName") stackSetName: stackSetName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Summaries") summaries: option<stackSetOperationSummaries>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "ListStackSetOperationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListExports = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Exports") exports: option<exports>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "ListExportsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListChangeSets = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("StackName") stackName: stackNameOrId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Summaries") summaries: option<changeSetSummaries>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "ListChangeSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EstimateTemplateCost = {
  type t;
  type request = {
@as("Parameters") parameters: option<parameters>,
  @as("TemplateURL") templateURL: option<templateURL>,
  @as("TemplateBody") templateBody: option<templateBody>
}
  type response = {
@as("Url") url: option<url>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "EstimateTemplateCostCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetectStackSetDrift = {
  type t;
  type request = {
@as("CallAs") callAs: option<callAs>,
  @as("OperationId") operationId: option<clientRequestToken>,
  @as("OperationPreferences") operationPreferences: option<stackSetOperationPreferences>,
  @as("StackSetName") stackSetName: stackSetNameOrId
}
  type response = {
@as("OperationId") operationId: option<clientRequestToken>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DetectStackSetDriftCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStackResource = {
  type t;
  type request = {
@as("LogicalResourceId") logicalResourceId: logicalResourceId,
  @as("StackName") stackName: stackName
}
  type response = {
@as("StackResourceDetail") stackResourceDetail: option<stackResourceDetail>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DescribeStackResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStackEvents = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("StackName") stackName: option<stackName>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("StackEvents") stackEvents: option<stackEvents>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DescribeStackEventsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountLimits = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("AccountLimits") accountLimits: option<accountLimitList>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DescribeAccountLimitsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteStackInstances = {
  type t;
  type request = {
@as("CallAs") callAs: option<callAs>,
  @as("OperationId") operationId: option<clientRequestToken>,
  @as("RetainStacks") retainStacks: retainStacks,
  @as("OperationPreferences") operationPreferences: option<stackSetOperationPreferences>,
  @as("Regions") regions: regionList,
  @as("DeploymentTargets") deploymentTargets: option<deploymentTargets>,
  @as("Accounts") accounts: option<accountList>,
  @as("StackSetName") stackSetName: stackSetName
}
  type response = {
@as("OperationId") operationId: option<clientRequestToken>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DeleteStackInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateStackSet = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  @as("CallAs") callAs: option<callAs>,
  @as("AutoDeployment") autoDeployment: option<autoDeployment>,
  @as("PermissionModel") permissionModel: option<permissionModels>,
  @as("ExecutionRoleName") executionRoleName: option<executionRoleName>,
  @as("AdministrationRoleARN") administrationRoleARN: option<roleARN>,
  @as("Tags") tags: option<tags>,
  @as("Capabilities") capabilities: option<capabilities>,
  @as("Parameters") parameters: option<parameters>,
  @as("TemplateURL") templateURL: option<templateURL>,
  @as("TemplateBody") templateBody: option<templateBody>,
  @as("Description") description: option<description>,
  @as("StackSetName") stackSetName: stackSetName
}
  type response = {
@as("StackSetId") stackSetId: option<stackSetId>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "CreateStackSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateStackInstances = {
  type t;
  type request = {
@as("CallAs") callAs: option<callAs>,
  @as("OperationId") operationId: option<clientRequestToken>,
  @as("OperationPreferences") operationPreferences: option<stackSetOperationPreferences>,
  @as("ParameterOverrides") parameterOverrides: option<parameters>,
  @as("Regions") regions: regionList,
  @as("DeploymentTargets") deploymentTargets: option<deploymentTargets>,
  @as("Accounts") accounts: option<accountList>,
  @as("StackSetName") stackSetName: stackSetName
}
  type response = {
@as("OperationId") operationId: option<clientRequestToken>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "CreateStackInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateStack = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  @as("Tags") tags: option<tags>,
  @as("NotificationARNs") notificationARNs: option<notificationARNs>,
  @as("StackPolicyURL") stackPolicyURL: option<stackPolicyURL>,
  @as("StackPolicyBody") stackPolicyBody: option<stackPolicyBody>,
  @as("RollbackConfiguration") rollbackConfiguration: option<rollbackConfiguration>,
  @as("RoleARN") roleARN: option<roleARN>,
  @as("ResourceTypes") resourceTypes: option<resourceTypes>,
  @as("Capabilities") capabilities: option<capabilities>,
  @as("Parameters") parameters: option<parameters>,
  @as("StackPolicyDuringUpdateURL") stackPolicyDuringUpdateURL: option<stackPolicyDuringUpdateURL>,
  @as("StackPolicyDuringUpdateBody") stackPolicyDuringUpdateBody: option<stackPolicyDuringUpdateBody>,
  @as("UsePreviousTemplate") usePreviousTemplate: option<usePreviousTemplate>,
  @as("TemplateURL") templateURL: option<templateURL>,
  @as("TemplateBody") templateBody: option<templateBody>,
  @as("StackName") stackName: stackName
}
  type response = {
@as("StackId") stackId: option<stackId>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "UpdateStackCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStacks = {
  type t;
  type request = {
@as("StackStatusFilter") stackStatusFilter: option<stackStatusFilter>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("StackSummaries") stackSummaries: option<stackSummaries>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "ListStacksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStackSets = {
  type t;
  type request = {
@as("CallAs") callAs: option<callAs>,
  @as("Status") status: option<stackSetStatus>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Summaries") summaries: option<stackSetSummaries>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "ListStackSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStackSetOperationResults = {
  type t;
  type request = {
@as("CallAs") callAs: option<callAs>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("OperationId") operationId: clientRequestToken,
  @as("StackSetName") stackSetName: stackSetName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Summaries") summaries: option<stackSetOperationResultSummaries>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "ListStackSetOperationResultsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStackResources = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("StackName") stackName: stackName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("StackResourceSummaries") stackResourceSummaries: option<stackResourceSummaries>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "ListStackResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStackInstances = {
  type t;
  type request = {
@as("CallAs") callAs: option<callAs>,
  @as("StackInstanceRegion") stackInstanceRegion: option<region>,
  @as("StackInstanceAccount") stackInstanceAccount: option<account>,
  @as("Filters") filters: option<stackInstanceFilters>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("StackSetName") stackSetName: stackSetName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Summaries") summaries: option<stackInstanceSummaries>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "ListStackInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetectStackResourceDrift = {
  type t;
  type request = {
@as("LogicalResourceId") logicalResourceId: logicalResourceId,
  @as("StackName") stackName: stackNameOrId
}
  type response = {
@as("StackResourceDrift") stackResourceDrift: stackResourceDrift
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DetectStackResourceDriftCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStackSetOperation = {
  type t;
  type request = {
@as("CallAs") callAs: option<callAs>,
  @as("OperationId") operationId: clientRequestToken,
  @as("StackSetName") stackSetName: stackSetName
}
  type response = {
@as("StackSetOperation") stackSetOperation: option<stackSetOperation>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DescribeStackSetOperationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStackSet = {
  type t;
  type request = {
@as("CallAs") callAs: option<callAs>,
  @as("StackSetName") stackSetName: stackSetName
}
  type response = {
@as("StackSet") stackSet: option<stackSet>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DescribeStackSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStackResources = {
  type t;
  type request = {
@as("PhysicalResourceId") physicalResourceId: option<physicalResourceId>,
  @as("LogicalResourceId") logicalResourceId: option<logicalResourceId>,
  @as("StackName") stackName: option<stackName>
}
  type response = {
@as("StackResources") stackResources: option<stackResources>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DescribeStackResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStackInstance = {
  type t;
  type request = {
@as("CallAs") callAs: option<callAs>,
  @as("StackInstanceRegion") stackInstanceRegion: region,
  @as("StackInstanceAccount") stackInstanceAccount: account,
  @as("StackSetName") stackSetName: stackSetName
}
  type response = {
@as("StackInstance") stackInstance: option<stackInstance>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DescribeStackInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateStack = {
  type t;
  type request = {
@as("EnableTerminationProtection") enableTerminationProtection: option<enableTerminationProtection>,
  @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  @as("Tags") tags: option<tags>,
  @as("StackPolicyURL") stackPolicyURL: option<stackPolicyURL>,
  @as("StackPolicyBody") stackPolicyBody: option<stackPolicyBody>,
  @as("OnFailure") onFailure: option<onFailure>,
  @as("RoleARN") roleARN: option<roleARN>,
  @as("ResourceTypes") resourceTypes: option<resourceTypes>,
  @as("Capabilities") capabilities: option<capabilities>,
  @as("NotificationARNs") notificationARNs: option<notificationARNs>,
  @as("TimeoutInMinutes") timeoutInMinutes: option<timeoutMinutes>,
  @as("RollbackConfiguration") rollbackConfiguration: option<rollbackConfiguration>,
  @as("DisableRollback") disableRollback: option<disableRollback>,
  @as("Parameters") parameters: option<parameters>,
  @as("TemplateURL") templateURL: option<templateURL>,
  @as("TemplateBody") templateBody: option<templateBody>,
  @as("StackName") stackName: stackName
}
  type response = {
@as("StackId") stackId: option<stackId>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "CreateStackCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateChangeSet = {
  type t;
  type request = {
@as("IncludeNestedStacks") includeNestedStacks: option<includeNestedStacks>,
  @as("ResourcesToImport") resourcesToImport: option<resourcesToImport>,
  @as("ChangeSetType") changeSetType: option<changeSetType>,
  @as("Description") description: option<description>,
  @as("ClientToken") clientToken: option<clientToken>,
  @as("ChangeSetName") changeSetName: changeSetName,
  @as("Tags") tags: option<tags>,
  @as("NotificationARNs") notificationARNs: option<notificationARNs>,
  @as("RollbackConfiguration") rollbackConfiguration: option<rollbackConfiguration>,
  @as("RoleARN") roleARN: option<roleARN>,
  @as("ResourceTypes") resourceTypes: option<resourceTypes>,
  @as("Capabilities") capabilities: option<capabilities>,
  @as("Parameters") parameters: option<parameters>,
  @as("UsePreviousTemplate") usePreviousTemplate: option<usePreviousTemplate>,
  @as("TemplateURL") templateURL: option<templateURL>,
  @as("TemplateBody") templateBody: option<templateBody>,
  @as("StackName") stackName: stackNameOrId
}
  type response = {
@as("StackId") stackId: option<stackId>,
  @as("Id") id: option<changeSetId>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "CreateChangeSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTemplateSummary = {
  type t;
  type request = {
@as("CallAs") callAs: option<callAs>,
  @as("StackSetName") stackSetName: option<stackSetNameOrId>,
  @as("StackName") stackName: option<stackNameOrId>,
  @as("TemplateURL") templateURL: option<templateURL>,
  @as("TemplateBody") templateBody: option<templateBody>
}
  type response = {
@as("ResourceIdentifierSummaries") resourceIdentifierSummaries: option<resourceIdentifierSummaries>,
  @as("DeclaredTransforms") declaredTransforms: option<transformsList>,
  @as("Metadata") metadata: option<metadata>,
  @as("Version") version: option<version>,
  @as("ResourceTypes") resourceTypes: option<resourceTypes>,
  @as("CapabilitiesReason") capabilitiesReason: option<capabilitiesReason>,
  @as("Capabilities") capabilities: option<capabilities>,
  @as("Description") description: option<description>,
  @as("Parameters") parameters: option<parameterDeclarations>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "GetTemplateSummaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStackResourceDrifts = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<boxedMaxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("StackResourceDriftStatusFilters") stackResourceDriftStatusFilters: option<stackResourceDriftStatusFilters>,
  @as("StackName") stackName: stackNameOrId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("StackResourceDrifts") stackResourceDrifts: stackResourceDrifts
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DescribeStackResourceDriftsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStacks = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("StackName") stackName: option<stackName>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Stacks") stacks: option<stacks>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DescribeStacksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeChangeSet = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("StackName") stackName: option<stackNameOrId>,
  @as("ChangeSetName") changeSetName: changeSetNameOrId
}
  type response = {
@as("RootChangeSetId") rootChangeSetId: option<changeSetId>,
  @as("ParentChangeSetId") parentChangeSetId: option<changeSetId>,
  @as("IncludeNestedStacks") includeNestedStacks: option<includeNestedStacks>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("Changes") changes: option<changes>,
  @as("Tags") tags: option<tags>,
  @as("Capabilities") capabilities: option<capabilities>,
  @as("RollbackConfiguration") rollbackConfiguration: option<rollbackConfiguration>,
  @as("NotificationARNs") notificationARNs: option<notificationARNs>,
  @as("StatusReason") statusReason: option<changeSetStatusReason>,
  @as("Status") status: option<changeSetStatus>,
  @as("ExecutionStatus") executionStatus: option<executionStatus>,
  @as("CreationTime") creationTime: option<creationTime>,
  @as("Parameters") parameters: option<parameters>,
  @as("Description") description: option<description>,
  @as("StackName") stackName: option<stackName>,
  @as("StackId") stackId: option<stackId>,
  @as("ChangeSetId") changeSetId: option<changeSetId>,
  @as("ChangeSetName") changeSetName: option<changeSetName>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (request) => t = "DescribeChangeSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
