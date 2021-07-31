type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type visibility = [@as("PRIVATE") #PRIVATE | @as("PUBLIC") #PUBLIC]
type version = string
type value = string
type usePreviousValue = bool;
type usePreviousTemplate = bool;
type url = string
type typeVersionId = string
type typeSchema = string
type typeName = string
type typeHierarchy = string
type typeArn = string
type type_ = string
type transformName = string
type totalStackInstancesCount = int;
type amazonawsTimestamp = Js.Date.t;
type timeoutMinutes = int;
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
type retainStacksOnAccountRemovalNullable = bool;
type retainStacksNullable = bool;
type retainStacks = bool;
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
type noEcho = bool;
type nextToken = string
type monitoringTimeInMinutes = int;
type metadata = string
type maxResults = int;
type maxConcurrentPercentage = int;
type maxConcurrentCount = int;
type logicalResourceId = string
type logicalIdHierarchy = string
type logGroupName = string
type limitValue = int;
type limitName = string
type lastUpdatedTime = Js.Date.t;
type key = string
type isDefaultVersion = bool;
type includeNestedStacks = bool;
type inSyncStackInstancesCount = int;
type inProgressStackInstancesCount = int;
type handlerErrorCode = [@as("InternalFailure") #InternalFailure | @as("NetworkFailure") #NetworkFailure | @as("ServiceInternalError") #ServiceInternalError | @as("GeneralServiceException") #GeneralServiceException | @as("NotStabilized") #NotStabilized | @as("ServiceLimitExceeded") #ServiceLimitExceeded | @as("Throttling") #Throttling | @as("ResourceConflict") #ResourceConflict | @as("NotFound") #NotFound | @as("AlreadyExists") #AlreadyExists | @as("InvalidCredentials") #InvalidCredentials | @as("AccessDenied") #AccessDenied | @as("InvalidRequest") #InvalidRequest | @as("NotUpdatable") #NotUpdatable]
type failureTolerancePercentage = int;
type failureToleranceCount = int;
type failedStackInstancesCount = int;
type exportValue = string
type exportName = string
type executionStatus = [@as("OBSOLETE") #OBSOLETE | @as("EXECUTE_FAILED") #EXECUTE_FAILED | @as("EXECUTE_COMPLETE") #EXECUTE_COMPLETE | @as("EXECUTE_IN_PROGRESS") #EXECUTE_IN_PROGRESS | @as("AVAILABLE") #AVAILABLE | @as("UNAVAILABLE") #UNAVAILABLE]
type executionRoleName = string
type eventId = string
type evaluationType = [@as("Dynamic") #Dynamic | @as("Static") #Static]
type errorMessage = string
type enableTerminationProtection = bool;
type driftedStackInstancesCount = int;
type disableRollback = bool;
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
type boxedMaxResults = int;
type boxedInteger = int;
type autoDeploymentNullable = bool;
type arn = string
type allowedValue = string
type accountsUrl = string
type accountGateStatusReason = string
type accountGateStatus = [@as("SKIPPED") #SKIPPED | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED]
type account = string
type typeVersionSummary = {
@as("Description") description: description,
@as("TimeCreated") timeCreated: amazonawsTimestamp,
@as("Arn") arn: typeArn,
@as("IsDefaultVersion") isDefaultVersion: isDefaultVersion,
@as("VersionId") versionId: typeVersionId,
@as("TypeName") typeName: typeName,
@as("Type") type_: registryType
}
type typeSummary = {
@as("Description") description: description,
@as("LastUpdated") lastUpdated: amazonawsTimestamp,
@as("TypeArn") typeArn: typeArn,
@as("DefaultVersionId") defaultVersionId: typeVersionId,
@as("TypeName") typeName: typeName,
@as("Type") type_: registryType
}
type transformsList = array<transformName>
type templateParameter = {
@as("Description") description: description,
@as("NoEcho") noEcho: noEcho,
@as("DefaultValue") defaultValue: parameterValue,
@as("ParameterKey") parameterKey: parameterKey
}
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type stageList = array<templateStage>
type stackStatusFilter = array<stackStatus>
type stackSetOperationSummary = {
@as("EndTimestamp") endTimestamp: amazonawsTimestamp,
@as("CreationTimestamp") creationTimestamp: amazonawsTimestamp,
@as("Status") status: stackSetOperationStatus,
@as("Action") action: stackSetOperationAction,
@as("OperationId") operationId: clientRequestToken
}
type stackSetDriftDetectionDetails = {
@as("FailedStackInstancesCount") failedStackInstancesCount: failedStackInstancesCount,
@as("InProgressStackInstancesCount") inProgressStackInstancesCount: inProgressStackInstancesCount,
@as("InSyncStackInstancesCount") inSyncStackInstancesCount: inSyncStackInstancesCount,
@as("DriftedStackInstancesCount") driftedStackInstancesCount: driftedStackInstancesCount,
@as("TotalStackInstancesCount") totalStackInstancesCount: totalStackInstancesCount,
@as("LastDriftCheckTimestamp") lastDriftCheckTimestamp: amazonawsTimestamp,
@as("DriftDetectionStatus") driftDetectionStatus: stackSetDriftDetectionStatus,
@as("DriftStatus") driftStatus: stackSetDriftStatus
}
type stackResourceDriftStatusFilters = array<stackResourceDriftStatus>
type stackResourceDriftInformationSummary = {
@as("LastCheckTimestamp") lastCheckTimestamp: amazonawsTimestamp,
@as("StackResourceDriftStatus") stackResourceDriftStatus: option<stackResourceDriftStatus>
}
type stackResourceDriftInformation = {
@as("LastCheckTimestamp") lastCheckTimestamp: amazonawsTimestamp,
@as("StackResourceDriftStatus") stackResourceDriftStatus: option<stackResourceDriftStatus>
}
type stackInstanceFilter = {
@as("Values") values: stackInstanceFilterValues,
@as("Name") name: stackInstanceFilterName
}
type stackInstanceComprehensiveStatus = {
@as("DetailedStatus") detailedStatus: stackInstanceDetailedStatus
}
type stackEvent = {
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("ResourceProperties") resourceProperties: resourceProperties,
@as("ResourceStatusReason") resourceStatusReason: resourceStatusReason,
@as("ResourceStatus") resourceStatus: resourceStatus,
@as("Timestamp") timestamp: option<amazonawsTimestamp>,
@as("ResourceType") resourceType: resourceType,
@as("PhysicalResourceId") physicalResourceId: physicalResourceId,
@as("LogicalResourceId") logicalResourceId: logicalResourceId,
@as("StackName") stackName: option<stackName>,
@as("EventId") eventId: option<eventId>,
@as("StackId") stackId: option<stackId>
}
type stackDriftInformationSummary = {
@as("LastCheckTimestamp") lastCheckTimestamp: amazonawsTimestamp,
@as("StackDriftStatus") stackDriftStatus: option<stackDriftStatus>
}
type stackDriftInformation = {
@as("LastCheckTimestamp") lastCheckTimestamp: amazonawsTimestamp,
@as("StackDriftStatus") stackDriftStatus: option<stackDriftStatus>
}
type scope = array<resourceAttribute>
type rollbackTrigger = {
@as("Type") type_: option<type_>,
@as("Arn") arn: option<arn>
}
type retainResources = array<logicalResourceId>
type resourcesToSkip = array<resourceToSkip>
type resourceTypes = array<resourceType>
type resourceTargetDefinition = {
@as("RequiresRecreation") requiresRecreation: requiresRecreation,
@as("Name") name: propertyName,
@as("Attribute") attribute: resourceAttribute
}
type resourceIdentifiers = array<resourceIdentifierPropertyKey>
type resourceIdentifierProperties = Js.Dict.t< resourceIdentifierPropertyValue>
type registrationTokenList = array<registrationToken>
type regionList = array<region>
type propertyDifference = {
@as("DifferenceType") differenceType: option<differenceType>,
@as("ActualValue") actualValue: option<propertyValue>,
@as("ExpectedValue") expectedValue: option<propertyValue>,
@as("PropertyPath") propertyPath: option<propertyPath>
}
type physicalResourceIdContextKeyValuePair = {
@as("Value") value: option<value>,
@as("Key") key: option<key>
}
type parameter = {
@as("ResolvedValue") resolvedValue: parameterValue,
@as("UsePreviousValue") usePreviousValue: usePreviousValue,
@as("ParameterValue") parameterValue: parameterValue,
@as("ParameterKey") parameterKey: parameterKey
}
type output = {
@as("ExportName") exportName: exportName,
@as("Description") description: description,
@as("OutputValue") outputValue: outputValue,
@as("OutputKey") outputKey: outputKey
}
type organizationalUnitIdList = array<organizationalUnitId>
type notificationARNs = array<notificationARN>
type moduleInfo = {
@as("LogicalIdHierarchy") logicalIdHierarchy: logicalIdHierarchy,
@as("TypeHierarchy") typeHierarchy: typeHierarchy
}
type logicalResourceIds = array<logicalResourceId>
type loggingConfig = {
@as("LogGroupName") logGroupName: option<logGroupName>,
@as("LogRoleArn") logRoleArn: option<roleARN2>
}
type imports = array<stackName>
type export_ = {
@as("Value") value: exportValue,
@as("Name") name: exportName,
@as("ExportingStackId") exportingStackId: stackId
}
type changeSetSummary = {
@as("RootChangeSetId") rootChangeSetId: changeSetId,
@as("ParentChangeSetId") parentChangeSetId: changeSetId,
@as("IncludeNestedStacks") includeNestedStacks: includeNestedStacks,
@as("Description") description: description,
@as("CreationTime") creationTime: creationTime,
@as("StatusReason") statusReason: changeSetStatusReason,
@as("Status") status: changeSetStatus,
@as("ExecutionStatus") executionStatus: executionStatus,
@as("ChangeSetName") changeSetName: changeSetName,
@as("ChangeSetId") changeSetId: changeSetId,
@as("StackName") stackName: stackName,
@as("StackId") stackId: stackId
}
type capabilities = array<capability>
type autoDeployment = {
@as("RetainStacksOnAccountRemoval") retainStacksOnAccountRemoval: retainStacksOnAccountRemovalNullable,
@as("Enabled") enabled: autoDeploymentNullable
}
type allowedValues = array<allowedValue>
type accountList = array<account>
type accountLimit = {
@as("Value") value: limitValue,
@as("Name") name: limitName
}
type accountGateResult = {
@as("StatusReason") statusReason: accountGateStatusReason,
@as("Status") status: accountGateStatus
}
type typeVersionSummaries = array<typeVersionSummary>
type typeSummaries = array<typeSummary>
type templateParameters = array<templateParameter>
type tags = array<tag>
type stackSummary = {
@as("DriftInformation") driftInformation: stackDriftInformationSummary,
@as("RootId") rootId: stackId,
@as("ParentId") parentId: stackId,
@as("StackStatusReason") stackStatusReason: stackStatusReason,
@as("StackStatus") stackStatus: option<stackStatus>,
@as("DeletionTime") deletionTime: deletionTime,
@as("LastUpdatedTime") lastUpdatedTime: lastUpdatedTime,
@as("CreationTime") creationTime: option<creationTime>,
@as("TemplateDescription") templateDescription: templateDescription,
@as("StackName") stackName: option<stackName>,
@as("StackId") stackId: stackId
}
type stackSetSummary = {
@as("LastDriftCheckTimestamp") lastDriftCheckTimestamp: amazonawsTimestamp,
@as("DriftStatus") driftStatus: stackDriftStatus,
@as("PermissionModel") permissionModel: permissionModels,
@as("AutoDeployment") autoDeployment: autoDeployment,
@as("Status") status: stackSetStatus,
@as("Description") description: description,
@as("StackSetId") stackSetId: stackSetId,
@as("StackSetName") stackSetName: stackSetName
}
type stackSetOperationSummaries = array<stackSetOperationSummary>
type stackSetOperationResultSummary = {
@as("OrganizationalUnitId") organizationalUnitId: organizationalUnitId,
@as("AccountGateResult") accountGateResult: accountGateResult,
@as("StatusReason") statusReason: reason,
@as("Status") status: stackSetOperationResultStatus,
@as("Region") region: region,
@as("Account") account: account
}
type stackSetOperationPreferences = {
@as("MaxConcurrentPercentage") maxConcurrentPercentage: maxConcurrentPercentage,
@as("MaxConcurrentCount") maxConcurrentCount: maxConcurrentCount,
@as("FailureTolerancePercentage") failureTolerancePercentage: failureTolerancePercentage,
@as("FailureToleranceCount") failureToleranceCount: failureToleranceCount,
@as("RegionOrder") regionOrder: regionList,
@as("RegionConcurrencyType") regionConcurrencyType: regionConcurrencyType
}
type stackResourceSummary = {
@as("ModuleInfo") moduleInfo: moduleInfo,
@as("DriftInformation") driftInformation: stackResourceDriftInformationSummary,
@as("ResourceStatusReason") resourceStatusReason: resourceStatusReason,
@as("ResourceStatus") resourceStatus: option<resourceStatus>,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<amazonawsTimestamp>,
@as("ResourceType") resourceType: option<resourceType>,
@as("PhysicalResourceId") physicalResourceId: physicalResourceId,
@as("LogicalResourceId") logicalResourceId: option<logicalResourceId>
}
type stackResourceDetail = {
@as("ModuleInfo") moduleInfo: moduleInfo,
@as("DriftInformation") driftInformation: stackResourceDriftInformation,
@as("Metadata") metadata: metadata,
@as("Description") description: description,
@as("ResourceStatusReason") resourceStatusReason: resourceStatusReason,
@as("ResourceStatus") resourceStatus: option<resourceStatus>,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<amazonawsTimestamp>,
@as("ResourceType") resourceType: option<resourceType>,
@as("PhysicalResourceId") physicalResourceId: physicalResourceId,
@as("LogicalResourceId") logicalResourceId: option<logicalResourceId>,
@as("StackId") stackId: stackId,
@as("StackName") stackName: stackName
}
type stackResource = {
@as("ModuleInfo") moduleInfo: moduleInfo,
@as("DriftInformation") driftInformation: stackResourceDriftInformation,
@as("Description") description: description,
@as("ResourceStatusReason") resourceStatusReason: resourceStatusReason,
@as("ResourceStatus") resourceStatus: option<resourceStatus>,
@as("Timestamp") timestamp: option<amazonawsTimestamp>,
@as("ResourceType") resourceType: option<resourceType>,
@as("PhysicalResourceId") physicalResourceId: physicalResourceId,
@as("LogicalResourceId") logicalResourceId: option<logicalResourceId>,
@as("StackId") stackId: stackId,
@as("StackName") stackName: stackName
}
type stackInstanceSummary = {
@as("LastDriftCheckTimestamp") lastDriftCheckTimestamp: amazonawsTimestamp,
@as("DriftStatus") driftStatus: stackDriftStatus,
@as("OrganizationalUnitId") organizationalUnitId: organizationalUnitId,
@as("StackInstanceStatus") stackInstanceStatus: stackInstanceComprehensiveStatus,
@as("StatusReason") statusReason: reason,
@as("Status") status: stackInstanceStatus,
@as("StackId") stackId: stackId,
@as("Account") account: account,
@as("Region") region: region,
@as("StackSetId") stackSetId: stackSetId
}
type stackInstanceFilters = array<stackInstanceFilter>
type stackEvents = array<stackEvent>
type rollbackTriggers = array<rollbackTrigger>
type resourceToImport = {
@as("ResourceIdentifier") resourceIdentifier: option<resourceIdentifierProperties>,
@as("LogicalResourceId") logicalResourceId: option<logicalResourceId>,
@as("ResourceType") resourceType: option<resourceType>
}
type resourceIdentifierSummary = {
@as("ResourceIdentifiers") resourceIdentifiers: resourceIdentifiers,
@as("LogicalResourceIds") logicalResourceIds: logicalResourceIds,
@as("ResourceType") resourceType: resourceType
}
type resourceChangeDetail = {
@as("CausingEntity") causingEntity: causingEntity,
@as("ChangeSource") changeSource: changeSource,
@as("Evaluation") evaluation: evaluationType,
@as("Target") target: resourceTargetDefinition
}
type propertyDifferences = array<propertyDifference>
type physicalResourceIdContext = array<physicalResourceIdContextKeyValuePair>
type parameters = array<parameter>
type parameterConstraints = {
@as("AllowedValues") allowedValues: allowedValues
}
type outputs = array<output>
type exports = array<export_>
type deploymentTargets = {
@as("OrganizationalUnitIds") organizationalUnitIds: organizationalUnitIdList,
@as("AccountsUrl") accountsUrl: accountsUrl,
@as("Accounts") accounts: accountList
}
type changeSetSummaries = array<changeSetSummary>
type accountLimitList = array<accountLimit>
type stackSummaries = array<stackSummary>
type stackSetSummaries = array<stackSetSummary>
type stackSetOperationResultSummaries = array<stackSetOperationResultSummary>
type stackSetOperation = {
@as("StackSetDriftDetectionDetails") stackSetDriftDetectionDetails: stackSetDriftDetectionDetails,
@as("DeploymentTargets") deploymentTargets: deploymentTargets,
@as("EndTimestamp") endTimestamp: amazonawsTimestamp,
@as("CreationTimestamp") creationTimestamp: amazonawsTimestamp,
@as("ExecutionRoleName") executionRoleName: executionRoleName,
@as("AdministrationRoleARN") administrationRoleARN: roleARN,
@as("RetainStacks") retainStacks: retainStacksNullable,
@as("OperationPreferences") operationPreferences: stackSetOperationPreferences,
@as("Status") status: stackSetOperationStatus,
@as("Action") action: stackSetOperationAction,
@as("StackSetId") stackSetId: stackSetId,
@as("OperationId") operationId: clientRequestToken
}
type stackSet = {
@as("OrganizationalUnitIds") organizationalUnitIds: organizationalUnitIdList,
@as("PermissionModel") permissionModel: permissionModels,
@as("AutoDeployment") autoDeployment: autoDeployment,
@as("StackSetDriftDetectionDetails") stackSetDriftDetectionDetails: stackSetDriftDetectionDetails,
@as("ExecutionRoleName") executionRoleName: executionRoleName,
@as("AdministrationRoleARN") administrationRoleARN: roleARN,
@as("StackSetARN") stackSetARN: stackSetARN,
@as("Tags") tags: tags,
@as("Capabilities") capabilities: capabilities,
@as("Parameters") parameters: parameters,
@as("TemplateBody") templateBody: templateBody,
@as("Status") status: stackSetStatus,
@as("Description") description: description,
@as("StackSetId") stackSetId: stackSetId,
@as("StackSetName") stackSetName: stackSetName
}
type stackResources = array<stackResource>
type stackResourceSummaries = array<stackResourceSummary>
type stackResourceDrift = {
@as("ModuleInfo") moduleInfo: moduleInfo,
@as("Timestamp") timestamp: option<amazonawsTimestamp>,
@as("StackResourceDriftStatus") stackResourceDriftStatus: option<stackResourceDriftStatus>,
@as("PropertyDifferences") propertyDifferences: propertyDifferences,
@as("ActualProperties") actualProperties: properties,
@as("ExpectedProperties") expectedProperties: properties,
@as("ResourceType") resourceType: option<resourceType>,
@as("PhysicalResourceIdContext") physicalResourceIdContext: physicalResourceIdContext,
@as("PhysicalResourceId") physicalResourceId: physicalResourceId,
@as("LogicalResourceId") logicalResourceId: option<logicalResourceId>,
@as("StackId") stackId: option<stackId>
}
type stackInstanceSummaries = array<stackInstanceSummary>
type stackInstance = {
@as("LastDriftCheckTimestamp") lastDriftCheckTimestamp: amazonawsTimestamp,
@as("DriftStatus") driftStatus: stackDriftStatus,
@as("OrganizationalUnitId") organizationalUnitId: organizationalUnitId,
@as("StatusReason") statusReason: reason,
@as("StackInstanceStatus") stackInstanceStatus: stackInstanceComprehensiveStatus,
@as("Status") status: stackInstanceStatus,
@as("ParameterOverrides") parameterOverrides: parameters,
@as("StackId") stackId: stackId,
@as("Account") account: account,
@as("Region") region: region,
@as("StackSetId") stackSetId: stackSetId
}
type rollbackConfiguration = {
@as("MonitoringTimeInMinutes") monitoringTimeInMinutes: monitoringTimeInMinutes,
@as("RollbackTriggers") rollbackTriggers: rollbackTriggers
}
type resourcesToImport = array<resourceToImport>
type resourceIdentifierSummaries = array<resourceIdentifierSummary>
type resourceChangeDetails = array<resourceChangeDetail>
type parameterDeclaration = {
@as("ParameterConstraints") parameterConstraints: parameterConstraints,
@as("Description") description: description,
@as("NoEcho") noEcho: noEcho,
@as("ParameterType") parameterType: parameterType,
@as("DefaultValue") defaultValue: parameterValue,
@as("ParameterKey") parameterKey: parameterKey
}
type stackResourceDrifts = array<stackResourceDrift>
type stack = {
@as("DriftInformation") driftInformation: stackDriftInformation,
@as("RootId") rootId: stackId,
@as("ParentId") parentId: stackId,
@as("EnableTerminationProtection") enableTerminationProtection: enableTerminationProtection,
@as("Tags") tags: tags,
@as("RoleARN") roleARN: roleARN,
@as("Outputs") outputs: outputs,
@as("Capabilities") capabilities: capabilities,
@as("TimeoutInMinutes") timeoutInMinutes: timeoutMinutes,
@as("NotificationARNs") notificationARNs: notificationARNs,
@as("DisableRollback") disableRollback: disableRollback,
@as("StackStatusReason") stackStatusReason: stackStatusReason,
@as("StackStatus") stackStatus: option<stackStatus>,
@as("RollbackConfiguration") rollbackConfiguration: rollbackConfiguration,
@as("LastUpdatedTime") lastUpdatedTime: lastUpdatedTime,
@as("DeletionTime") deletionTime: deletionTime,
@as("CreationTime") creationTime: option<creationTime>,
@as("Parameters") parameters: parameters,
@as("Description") description: description,
@as("ChangeSetId") changeSetId: changeSetId,
@as("StackName") stackName: option<stackName>,
@as("StackId") stackId: stackId
}
type resourceChange = {
@as("ModuleInfo") moduleInfo: moduleInfo,
@as("ChangeSetId") changeSetId: changeSetId,
@as("Details") details: resourceChangeDetails,
@as("Scope") scope: scope,
@as("Replacement") replacement: replacement,
@as("ResourceType") resourceType: resourceType,
@as("PhysicalResourceId") physicalResourceId: physicalResourceId,
@as("LogicalResourceId") logicalResourceId: logicalResourceId,
@as("Action") action: changeAction
}
type parameterDeclarations = array<parameterDeclaration>
type stacks = array<stack>
type change = {
@as("ResourceChange") resourceChange: resourceChange,
@as("Type") type_: changeType
}
type changes = array<change>
type clientType;
@module("@aws-sdk/client-cloudformation") @new external createClient: unit => clientType = "CloudFormationClient";
module UpdateTerminationProtection = {
  type t;
  type request = {
@as("StackName") stackName: option<stackNameOrId>,
@as("EnableTerminationProtection") enableTerminationProtection: option<enableTerminationProtection>
}
  type response = {
@as("StackId") stackId: stackId
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "UpdateTerminationProtectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopStackSetOperation = {
  type t;
  type request = {
@as("CallAs") callAs: callAs,
@as("OperationId") operationId: option<clientRequestToken>,
@as("StackSetName") stackSetName: option<stackSetName>
}
  type response = unit
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "StopStackSetOperationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SignalResource = {
  type t;
  type request = {
@as("Status") status: option<resourceSignalStatus>,
@as("UniqueId") uniqueId: option<resourceSignalUniqueId>,
@as("LogicalResourceId") logicalResourceId: option<logicalResourceId>,
@as("StackName") stackName: option<stackNameOrId>
}
  
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "SignalResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SetTypeDefaultVersion = {
  type t;
  type request = {
@as("VersionId") versionId: typeVersionId,
@as("TypeName") typeName: typeName,
@as("Type") type_: registryType,
@as("Arn") arn: privateTypeArn
}
  type response = unit
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "SetTypeDefaultVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetStackPolicy = {
  type t;
  type request = {
@as("StackPolicyURL") stackPolicyURL: stackPolicyURL,
@as("StackPolicyBody") stackPolicyBody: stackPolicyBody,
@as("StackName") stackName: option<stackName>
}
  
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "SetStackPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RecordHandlerProgress = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("ResourceModel") resourceModel: resourceModel,
@as("ErrorCode") errorCode: handlerErrorCode,
@as("StatusMessage") statusMessage: statusMessage,
@as("CurrentOperationStatus") currentOperationStatus: operationStatus,
@as("OperationStatus") operationStatus: option<operationStatus>,
@as("BearerToken") bearerToken: option<clientToken>
}
  type response = unit
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "RecordHandlerProgressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStackPolicy = {
  type t;
  type request = {
@as("StackName") stackName: option<stackName>
}
  type response = {
@as("StackPolicyBody") stackPolicyBody: stackPolicyBody
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "GetStackPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExecuteChangeSet = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("StackName") stackName: stackNameOrId,
@as("ChangeSetName") changeSetName: option<changeSetNameOrId>
}
  type response = unit
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "ExecuteChangeSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTypeRegistration = {
  type t;
  type request = {
@as("RegistrationToken") registrationToken: option<registrationToken>
}
  type response = {
@as("TypeVersionArn") typeVersionArn: typeArn,
@as("TypeArn") typeArn: typeArn,
@as("Description") description: description,
@as("ProgressStatus") progressStatus: registrationStatus
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DescribeTypeRegistrationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStackDriftDetectionStatus = {
  type t;
  type request = {
@as("StackDriftDetectionId") stackDriftDetectionId: option<stackDriftDetectionId>
}
  type response = {
@as("Timestamp") timestamp: option<amazonawsTimestamp>,
@as("DriftedStackResourceCount") driftedStackResourceCount: boxedInteger,
@as("DetectionStatusReason") detectionStatusReason: stackDriftDetectionStatusReason,
@as("DetectionStatus") detectionStatus: option<stackDriftDetectionStatus>,
@as("StackDriftStatus") stackDriftStatus: stackDriftStatus,
@as("StackDriftDetectionId") stackDriftDetectionId: option<stackDriftDetectionId>,
@as("StackId") stackId: option<stackId>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DescribeStackDriftDetectionStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterType = {
  type t;
  type request = {
@as("VersionId") versionId: typeVersionId,
@as("TypeName") typeName: typeName,
@as("Type") type_: registryType,
@as("Arn") arn: privateTypeArn
}
  type response = unit
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DeregisterTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStackSet = {
  type t;
  type request = {
@as("CallAs") callAs: callAs,
@as("StackSetName") stackSetName: option<stackSetName>
}
  type response = unit
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DeleteStackSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteChangeSet = {
  type t;
  type request = {
@as("StackName") stackName: stackNameOrId,
@as("ChangeSetName") changeSetName: option<changeSetNameOrId>
}
  type response = unit
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DeleteChangeSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelUpdateStack = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("StackName") stackName: option<stackName>
}
  
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "CancelUpdateStackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RegisterType = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: requestToken,
@as("ExecutionRoleArn") executionRoleArn: roleARN2,
@as("LoggingConfig") loggingConfig: loggingConfig,
@as("SchemaHandlerPackage") schemaHandlerPackage: option<s3Url>,
@as("TypeName") typeName: option<typeName>,
@as("Type") type_: registryType
}
  type response = {
@as("RegistrationToken") registrationToken: registrationToken
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "RegisterTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTypeRegistrations = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("RegistrationStatusFilter") registrationStatusFilter: registrationStatus,
@as("TypeArn") typeArn: typeArn,
@as("TypeName") typeName: typeName,
@as("Type") type_: registryType
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("RegistrationTokenList") registrationTokenList: registrationTokenList
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "ListTypeRegistrationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListImports = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("ExportName") exportName: option<exportName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Imports") imports: imports
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "ListImportsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTemplate = {
  type t;
  type request = {
@as("TemplateStage") templateStage: templateStage,
@as("ChangeSetName") changeSetName: changeSetNameOrId,
@as("StackName") stackName: stackName
}
  type response = {
@as("StagesAvailable") stagesAvailable: stageList,
@as("TemplateBody") templateBody: templateBody
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "GetTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectStackDrift = {
  type t;
  type request = {
@as("LogicalResourceIds") logicalResourceIds: logicalResourceIds,
@as("StackName") stackName: option<stackNameOrId>
}
  type response = {
@as("StackDriftDetectionId") stackDriftDetectionId: option<stackDriftDetectionId>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DetectStackDriftCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeType = {
  type t;
  type request = {
@as("VersionId") versionId: typeVersionId,
@as("Arn") arn: typeArn,
@as("TypeName") typeName: typeName,
@as("Type") type_: registryType
}
  type response = {
@as("TimeCreated") timeCreated: amazonawsTimestamp,
@as("LastUpdated") lastUpdated: amazonawsTimestamp,
@as("DocumentationUrl") documentationUrl: optionalSecureUrl,
@as("SourceUrl") sourceUrl: optionalSecureUrl,
@as("Visibility") visibility: visibility,
@as("ExecutionRoleArn") executionRoleArn: roleARN2,
@as("LoggingConfig") loggingConfig: loggingConfig,
@as("DeprecatedStatus") deprecatedStatus: deprecatedStatus,
@as("ProvisioningType") provisioningType: provisioningType,
@as("Schema") schema: typeSchema,
@as("Description") description: description,
@as("IsDefaultVersion") isDefaultVersion: isDefaultVersion,
@as("DefaultVersionId") defaultVersionId: typeVersionId,
@as("TypeName") typeName: typeName,
@as("Type") type_: registryType,
@as("Arn") arn: typeArn
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DescribeTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStack = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("RoleARN") roleARN: roleARN,
@as("RetainResources") retainResources: retainResources,
@as("StackName") stackName: option<stackName>
}
  
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DeleteStackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ContinueUpdateRollback = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("ResourcesToSkip") resourcesToSkip: resourcesToSkip,
@as("RoleARN") roleARN: roleARN,
@as("StackName") stackName: option<stackNameOrId>
}
  type response = unit
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "ContinueUpdateRollbackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ValidateTemplate = {
  type t;
  type request = {
@as("TemplateURL") templateURL: templateURL,
@as("TemplateBody") templateBody: templateBody
}
  type response = {
@as("DeclaredTransforms") declaredTransforms: transformsList,
@as("CapabilitiesReason") capabilitiesReason: capabilitiesReason,
@as("Capabilities") capabilities: capabilities,
@as("Description") description: description,
@as("Parameters") parameters: templateParameters
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "ValidateTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateStackSet = {
  type t;
  type request = {
@as("CallAs") callAs: callAs,
@as("Regions") regions: regionList,
@as("Accounts") accounts: accountList,
@as("OperationId") operationId: clientRequestToken,
@as("AutoDeployment") autoDeployment: autoDeployment,
@as("PermissionModel") permissionModel: permissionModels,
@as("DeploymentTargets") deploymentTargets: deploymentTargets,
@as("ExecutionRoleName") executionRoleName: executionRoleName,
@as("AdministrationRoleARN") administrationRoleARN: roleARN,
@as("OperationPreferences") operationPreferences: stackSetOperationPreferences,
@as("Tags") tags: tags,
@as("Capabilities") capabilities: capabilities,
@as("Parameters") parameters: parameters,
@as("UsePreviousTemplate") usePreviousTemplate: usePreviousTemplate,
@as("TemplateURL") templateURL: templateURL,
@as("TemplateBody") templateBody: templateBody,
@as("Description") description: description,
@as("StackSetName") stackSetName: option<stackSetName>
}
  type response = {
@as("OperationId") operationId: clientRequestToken
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "UpdateStackSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateStackInstances = {
  type t;
  type request = {
@as("CallAs") callAs: callAs,
@as("OperationId") operationId: clientRequestToken,
@as("OperationPreferences") operationPreferences: stackSetOperationPreferences,
@as("ParameterOverrides") parameterOverrides: parameters,
@as("Regions") regions: option<regionList>,
@as("DeploymentTargets") deploymentTargets: deploymentTargets,
@as("Accounts") accounts: accountList,
@as("StackSetName") stackSetName: option<stackSetNameOrId>
}
  type response = {
@as("OperationId") operationId: clientRequestToken
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "UpdateStackInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTypes = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("Type") type_: registryType,
@as("DeprecatedStatus") deprecatedStatus: deprecatedStatus,
@as("ProvisioningType") provisioningType: provisioningType,
@as("Visibility") visibility: visibility
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("TypeSummaries") typeSummaries: typeSummaries
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "ListTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTypeVersions = {
  type t;
  type request = {
@as("DeprecatedStatus") deprecatedStatus: deprecatedStatus,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("Arn") arn: privateTypeArn,
@as("TypeName") typeName: typeName,
@as("Type") type_: registryType
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("TypeVersionSummaries") typeVersionSummaries: typeVersionSummaries
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "ListTypeVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStackSetOperations = {
  type t;
  type request = {
@as("CallAs") callAs: callAs,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("StackSetName") stackSetName: option<stackSetName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Summaries") summaries: stackSetOperationSummaries
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "ListStackSetOperationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListExports = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Exports") exports: exports
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "ListExportsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListChangeSets = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("StackName") stackName: option<stackNameOrId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Summaries") summaries: changeSetSummaries
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "ListChangeSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EstimateTemplateCost = {
  type t;
  type request = {
@as("Parameters") parameters: parameters,
@as("TemplateURL") templateURL: templateURL,
@as("TemplateBody") templateBody: templateBody
}
  type response = {
@as("Url") url: url
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "EstimateTemplateCostCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectStackSetDrift = {
  type t;
  type request = {
@as("CallAs") callAs: callAs,
@as("OperationId") operationId: clientRequestToken,
@as("OperationPreferences") operationPreferences: stackSetOperationPreferences,
@as("StackSetName") stackSetName: option<stackSetNameOrId>
}
  type response = {
@as("OperationId") operationId: clientRequestToken
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DetectStackSetDriftCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStackResource = {
  type t;
  type request = {
@as("LogicalResourceId") logicalResourceId: option<logicalResourceId>,
@as("StackName") stackName: option<stackName>
}
  type response = {
@as("StackResourceDetail") stackResourceDetail: stackResourceDetail
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DescribeStackResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStackEvents = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("StackName") stackName: stackName
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("StackEvents") stackEvents: stackEvents
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DescribeStackEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountLimits = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AccountLimits") accountLimits: accountLimitList
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DescribeAccountLimitsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStackInstances = {
  type t;
  type request = {
@as("CallAs") callAs: callAs,
@as("OperationId") operationId: clientRequestToken,
@as("RetainStacks") retainStacks: option<retainStacks>,
@as("OperationPreferences") operationPreferences: stackSetOperationPreferences,
@as("Regions") regions: option<regionList>,
@as("DeploymentTargets") deploymentTargets: deploymentTargets,
@as("Accounts") accounts: accountList,
@as("StackSetName") stackSetName: option<stackSetName>
}
  type response = {
@as("OperationId") operationId: clientRequestToken
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DeleteStackInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStackSet = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("CallAs") callAs: callAs,
@as("AutoDeployment") autoDeployment: autoDeployment,
@as("PermissionModel") permissionModel: permissionModels,
@as("ExecutionRoleName") executionRoleName: executionRoleName,
@as("AdministrationRoleARN") administrationRoleARN: roleARN,
@as("Tags") tags: tags,
@as("Capabilities") capabilities: capabilities,
@as("Parameters") parameters: parameters,
@as("TemplateURL") templateURL: templateURL,
@as("TemplateBody") templateBody: templateBody,
@as("Description") description: description,
@as("StackSetName") stackSetName: option<stackSetName>
}
  type response = {
@as("StackSetId") stackSetId: stackSetId
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "CreateStackSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStackInstances = {
  type t;
  type request = {
@as("CallAs") callAs: callAs,
@as("OperationId") operationId: clientRequestToken,
@as("OperationPreferences") operationPreferences: stackSetOperationPreferences,
@as("ParameterOverrides") parameterOverrides: parameters,
@as("Regions") regions: option<regionList>,
@as("DeploymentTargets") deploymentTargets: deploymentTargets,
@as("Accounts") accounts: accountList,
@as("StackSetName") stackSetName: option<stackSetName>
}
  type response = {
@as("OperationId") operationId: clientRequestToken
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "CreateStackInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateStack = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Tags") tags: tags,
@as("NotificationARNs") notificationARNs: notificationARNs,
@as("StackPolicyURL") stackPolicyURL: stackPolicyURL,
@as("StackPolicyBody") stackPolicyBody: stackPolicyBody,
@as("RollbackConfiguration") rollbackConfiguration: rollbackConfiguration,
@as("RoleARN") roleARN: roleARN,
@as("ResourceTypes") resourceTypes: resourceTypes,
@as("Capabilities") capabilities: capabilities,
@as("Parameters") parameters: parameters,
@as("StackPolicyDuringUpdateURL") stackPolicyDuringUpdateURL: stackPolicyDuringUpdateURL,
@as("StackPolicyDuringUpdateBody") stackPolicyDuringUpdateBody: stackPolicyDuringUpdateBody,
@as("UsePreviousTemplate") usePreviousTemplate: usePreviousTemplate,
@as("TemplateURL") templateURL: templateURL,
@as("TemplateBody") templateBody: templateBody,
@as("StackName") stackName: option<stackName>
}
  type response = {
@as("StackId") stackId: stackId
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "UpdateStackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStacks = {
  type t;
  type request = {
@as("StackStatusFilter") stackStatusFilter: stackStatusFilter,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("StackSummaries") stackSummaries: stackSummaries
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "ListStacksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStackSets = {
  type t;
  type request = {
@as("CallAs") callAs: callAs,
@as("Status") status: stackSetStatus,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Summaries") summaries: stackSetSummaries
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "ListStackSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStackSetOperationResults = {
  type t;
  type request = {
@as("CallAs") callAs: callAs,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("OperationId") operationId: option<clientRequestToken>,
@as("StackSetName") stackSetName: option<stackSetName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Summaries") summaries: stackSetOperationResultSummaries
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "ListStackSetOperationResultsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStackResources = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("StackName") stackName: option<stackName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("StackResourceSummaries") stackResourceSummaries: stackResourceSummaries
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "ListStackResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStackInstances = {
  type t;
  type request = {
@as("CallAs") callAs: callAs,
@as("StackInstanceRegion") stackInstanceRegion: region,
@as("StackInstanceAccount") stackInstanceAccount: account,
@as("Filters") filters: stackInstanceFilters,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("StackSetName") stackSetName: option<stackSetName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Summaries") summaries: stackInstanceSummaries
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "ListStackInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectStackResourceDrift = {
  type t;
  type request = {
@as("LogicalResourceId") logicalResourceId: option<logicalResourceId>,
@as("StackName") stackName: option<stackNameOrId>
}
  type response = {
@as("StackResourceDrift") stackResourceDrift: option<stackResourceDrift>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DetectStackResourceDriftCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStackSetOperation = {
  type t;
  type request = {
@as("CallAs") callAs: callAs,
@as("OperationId") operationId: option<clientRequestToken>,
@as("StackSetName") stackSetName: option<stackSetName>
}
  type response = {
@as("StackSetOperation") stackSetOperation: stackSetOperation
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DescribeStackSetOperationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStackSet = {
  type t;
  type request = {
@as("CallAs") callAs: callAs,
@as("StackSetName") stackSetName: option<stackSetName>
}
  type response = {
@as("StackSet") stackSet: stackSet
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DescribeStackSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStackResources = {
  type t;
  type request = {
@as("PhysicalResourceId") physicalResourceId: physicalResourceId,
@as("LogicalResourceId") logicalResourceId: logicalResourceId,
@as("StackName") stackName: stackName
}
  type response = {
@as("StackResources") stackResources: stackResources
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DescribeStackResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStackInstance = {
  type t;
  type request = {
@as("CallAs") callAs: callAs,
@as("StackInstanceRegion") stackInstanceRegion: option<region>,
@as("StackInstanceAccount") stackInstanceAccount: option<account>,
@as("StackSetName") stackSetName: option<stackSetName>
}
  type response = {
@as("StackInstance") stackInstance: stackInstance
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DescribeStackInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStack = {
  type t;
  type request = {
@as("EnableTerminationProtection") enableTerminationProtection: enableTerminationProtection,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Tags") tags: tags,
@as("StackPolicyURL") stackPolicyURL: stackPolicyURL,
@as("StackPolicyBody") stackPolicyBody: stackPolicyBody,
@as("OnFailure") onFailure: onFailure,
@as("RoleARN") roleARN: roleARN,
@as("ResourceTypes") resourceTypes: resourceTypes,
@as("Capabilities") capabilities: capabilities,
@as("NotificationARNs") notificationARNs: notificationARNs,
@as("TimeoutInMinutes") timeoutInMinutes: timeoutMinutes,
@as("RollbackConfiguration") rollbackConfiguration: rollbackConfiguration,
@as("DisableRollback") disableRollback: disableRollback,
@as("Parameters") parameters: parameters,
@as("TemplateURL") templateURL: templateURL,
@as("TemplateBody") templateBody: templateBody,
@as("StackName") stackName: option<stackName>
}
  type response = {
@as("StackId") stackId: stackId
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "CreateStackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateChangeSet = {
  type t;
  type request = {
@as("IncludeNestedStacks") includeNestedStacks: includeNestedStacks,
@as("ResourcesToImport") resourcesToImport: resourcesToImport,
@as("ChangeSetType") changeSetType: changeSetType,
@as("Description") description: description,
@as("ClientToken") clientToken: clientToken,
@as("ChangeSetName") changeSetName: option<changeSetName>,
@as("Tags") tags: tags,
@as("NotificationARNs") notificationARNs: notificationARNs,
@as("RollbackConfiguration") rollbackConfiguration: rollbackConfiguration,
@as("RoleARN") roleARN: roleARN,
@as("ResourceTypes") resourceTypes: resourceTypes,
@as("Capabilities") capabilities: capabilities,
@as("Parameters") parameters: parameters,
@as("UsePreviousTemplate") usePreviousTemplate: usePreviousTemplate,
@as("TemplateURL") templateURL: templateURL,
@as("TemplateBody") templateBody: templateBody,
@as("StackName") stackName: option<stackNameOrId>
}
  type response = {
@as("StackId") stackId: stackId,
@as("Id") id: changeSetId
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "CreateChangeSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTemplateSummary = {
  type t;
  type request = {
@as("CallAs") callAs: callAs,
@as("StackSetName") stackSetName: stackSetNameOrId,
@as("StackName") stackName: stackNameOrId,
@as("TemplateURL") templateURL: templateURL,
@as("TemplateBody") templateBody: templateBody
}
  type response = {
@as("ResourceIdentifierSummaries") resourceIdentifierSummaries: resourceIdentifierSummaries,
@as("DeclaredTransforms") declaredTransforms: transformsList,
@as("Metadata") metadata: metadata,
@as("Version") version: version,
@as("ResourceTypes") resourceTypes: resourceTypes,
@as("CapabilitiesReason") capabilitiesReason: capabilitiesReason,
@as("Capabilities") capabilities: capabilities,
@as("Description") description: description,
@as("Parameters") parameters: parameterDeclarations
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "GetTemplateSummaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStackResourceDrifts = {
  type t;
  type request = {
@as("MaxResults") maxResults: boxedMaxResults,
@as("NextToken") nextToken: nextToken,
@as("StackResourceDriftStatusFilters") stackResourceDriftStatusFilters: stackResourceDriftStatusFilters,
@as("StackName") stackName: option<stackNameOrId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("StackResourceDrifts") stackResourceDrifts: option<stackResourceDrifts>
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DescribeStackResourceDriftsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStacks = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("StackName") stackName: stackName
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Stacks") stacks: stacks
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DescribeStacksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeChangeSet = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("StackName") stackName: stackNameOrId,
@as("ChangeSetName") changeSetName: option<changeSetNameOrId>
}
  type response = {
@as("RootChangeSetId") rootChangeSetId: changeSetId,
@as("ParentChangeSetId") parentChangeSetId: changeSetId,
@as("IncludeNestedStacks") includeNestedStacks: includeNestedStacks,
@as("NextToken") nextToken: nextToken,
@as("Changes") changes: changes,
@as("Tags") tags: tags,
@as("Capabilities") capabilities: capabilities,
@as("RollbackConfiguration") rollbackConfiguration: rollbackConfiguration,
@as("NotificationARNs") notificationARNs: notificationARNs,
@as("StatusReason") statusReason: changeSetStatusReason,
@as("Status") status: changeSetStatus,
@as("ExecutionStatus") executionStatus: executionStatus,
@as("CreationTime") creationTime: creationTime,
@as("Parameters") parameters: parameters,
@as("Description") description: description,
@as("StackName") stackName: stackName,
@as("StackId") stackId: stackId,
@as("ChangeSetId") changeSetId: changeSetId,
@as("ChangeSetName") changeSetName: changeSetName
}
  @module("@aws-sdk/client-cloudformation") @new external new_: (Js.Promise.t<request>) => t = "DescribeChangeSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
